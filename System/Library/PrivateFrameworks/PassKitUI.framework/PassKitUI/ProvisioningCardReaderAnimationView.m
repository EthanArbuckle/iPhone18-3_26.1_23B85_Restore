@interface ProvisioningCardReaderAnimationView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9PassKitUI35ProvisioningCardReaderAnimationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ProvisioningCardReaderAnimationView

- (void)layoutSubviews
{
  v2 = self;
  ProvisioningCardReaderAnimationView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  PKFloatRoundToPixel();
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (_TtC9PassKitUI35ProvisioningCardReaderAnimationView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end