@interface MapContinuousScaleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation MapContinuousScaleView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_220ED1010();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_220ED1320();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end