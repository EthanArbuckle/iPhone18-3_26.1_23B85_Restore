@interface NearbyPeerPaymentStateLabelsView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC9PassKitUI32NearbyPeerPaymentStateLabelsView)init;
- (_TtC9PassKitUI32NearbyPeerPaymentStateLabelsView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation NearbyPeerPaymentStateLabelsView

- (_TtC9PassKitUI32NearbyPeerPaymentStateLabelsView)init
{
  v3 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7.receiver = self;
  v7.super_class = type metadata accessor for NearbyPeerPaymentStateLabelsView();
  v5 = [(NearbyPeerPaymentStateLabelsView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_1BD9AECEC();

  return v5;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1BD9AEEF0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel);
  selfCopy = self;
  [v5 sizeThatFits_];
  v8 = v7;
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel) sizeThatFits_];
  v10 = v9;

  v11 = v8 + v10 + 4.0;
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (_TtC9PassKitUI32NearbyPeerPaymentStateLabelsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end