@interface ProvisioningCardReaderCardView
- (CGSize)sizeThatFits:(CGSize)result;
- (_TtC9PassKitUI30ProvisioningCardReaderCardView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ProvisioningCardReaderCardView

- (CGSize)sizeThatFits:(CGSize)result
{
  width = result.width;
  result.height = width;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1BD787E2C();
}

- (_TtC9PassKitUI30ProvisioningCardReaderCardView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end