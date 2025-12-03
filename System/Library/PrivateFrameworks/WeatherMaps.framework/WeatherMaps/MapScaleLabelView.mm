@interface MapScaleLabelView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation MapScaleLabelView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_220F7CBB0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_220F7C40C();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end