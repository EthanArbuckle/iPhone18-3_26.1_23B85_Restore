@interface SessionRangedCoachingEventView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation SessionRangedCoachingEventView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20B831A6C();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_20B831D90();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SessionRangedCoachingEventView *)self intrinsicContentSize:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

@end