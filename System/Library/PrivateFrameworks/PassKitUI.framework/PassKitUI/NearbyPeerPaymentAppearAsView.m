@interface NearbyPeerPaymentAppearAsView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9PassKitUI29NearbyPeerPaymentAppearAsView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation NearbyPeerPaymentAppearAsView

- (void)layoutSubviews
{
  v2 = self;
  sub_1BD374178();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1BD374624(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC9PassKitUI29NearbyPeerPaymentAppearAsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end