@interface NearbyPeerPaymentMetadataView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC9PassKitUI29NearbyPeerPaymentMetadataView)init;
- (_TtC9PassKitUI29NearbyPeerPaymentMetadataView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation NearbyPeerPaymentMetadataView

- (_TtC9PassKitUI29NearbyPeerPaymentMetadataView)init
{
  v3 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_memoLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentMetadataView_senderMetadataView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentSenderMetadataView()) init];
  v7.receiver = self;
  v7.super_class = type metadata accessor for NearbyPeerPaymentMetadataView();
  v5 = [(NearbyPeerPaymentMetadataView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_1BD28D864();

  return v5;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1BD28D934();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_1BD28DC7C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC9PassKitUI29NearbyPeerPaymentMetadataView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end