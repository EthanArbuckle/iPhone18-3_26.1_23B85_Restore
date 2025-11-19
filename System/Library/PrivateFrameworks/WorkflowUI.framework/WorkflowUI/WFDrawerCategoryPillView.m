@interface WFDrawerCategoryPillView
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
@end

@implementation WFDrawerCategoryPillView

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_27484D178();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_27484D190();
}

@end