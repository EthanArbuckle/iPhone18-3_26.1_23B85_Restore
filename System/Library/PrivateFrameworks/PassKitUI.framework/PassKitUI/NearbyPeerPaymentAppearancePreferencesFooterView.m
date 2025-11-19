@interface NearbyPeerPaymentAppearancePreferencesFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView)initWithCoder:(id)a3;
- (_TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation NearbyPeerPaymentAppearancePreferencesFooterView

- (_TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView_label;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1BD4FFC48();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView_label) sizeThatFits_];
  v5 = v4 + 16.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (_TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end