@interface NearbyPeerPaymentAppearancePreferencesHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView)initWithCoder:(id)a3;
- (_TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView)initWithFrame:(CGRect)a3;
- (void)closeTapped;
- (void)layoutSubviews;
@end

@implementation NearbyPeerPaymentAppearancePreferencesHeaderView

- (_TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_titleLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeButton;
  *(&self->super.super.super.isa + v5) = [objc_opt_self() buttonWithType_];
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeAction);
  *v6 = 0;
  v6[1] = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1BD4FF63C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_titleLabel) sizeThatFits_];
  v5 = v4 + 8.0;
  v6 = 64.0;
  if (v5 > 64.0)
  {
    v6 = v5;
  }

  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)closeTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeAction);
  if (v2)
  {
    v3 = self;
    v4 = sub_1BD0D44B8(v2);
    v2(v4);

    sub_1BD0D4744(v2);
  }
}

- (_TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end