class CouponsController < ApplicationController
  # before_action :set_coupon, only: :show

  def index
    @coupons = Coupon.all
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    @coupon.save
    redirect_to (@coupon)
  end

  def show
    @coupon = Coupon.find_by(:id => params[:id])
  end

  def new
  end

end
