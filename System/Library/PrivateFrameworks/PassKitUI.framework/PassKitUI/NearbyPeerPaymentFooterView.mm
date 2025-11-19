@interface NearbyPeerPaymentFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9PassKitUI27NearbyPeerPaymentFooterView)initWithCoder:(id)a3;
- (_TtC9PassKitUI27NearbyPeerPaymentFooterView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation NearbyPeerPaymentFooterView

- (_TtC9PassKitUI27NearbyPeerPaymentFooterView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_stateLabelsView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentStateLabelsView()) init];
  v5 = OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_buttonsView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentButtonsView(0)) init];
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1BD89EBF8();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1BD89EECC(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC9PassKitUI27NearbyPeerPaymentFooterView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end