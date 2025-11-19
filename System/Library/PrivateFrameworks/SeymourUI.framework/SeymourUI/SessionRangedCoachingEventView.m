@interface SessionRangedCoachingEventView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation SessionRangedCoachingEventView

- (void)layoutSubviews
{
  v2 = self;
  sub_20B831A6C();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_20B831D90();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SessionRangedCoachingEventView *)self intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

@end