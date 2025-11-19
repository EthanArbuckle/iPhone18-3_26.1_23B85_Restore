@interface SectionSelectorView
- (CGSize)intrinsicContentSize;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation SectionSelectorView

- (void)layoutSubviews
{
  v2 = self;
  sub_1D7F83194();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_1D7F823E8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = a3;
  v8 = self;
  sub_1D7F8399C(v8, &a5->x);
}

- (void)accessibilityIncrement
{
  v2 = self;
  sub_1D7F83C08();
}

- (void)accessibilityDecrement
{
  v2 = self;
  sub_1D7F83D5C();
}

@end