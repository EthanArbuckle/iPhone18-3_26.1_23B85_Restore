@interface SectionSelectorView
- (CGSize)intrinsicContentSize;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation SectionSelectorView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D7F83194();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_1D7F823E8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_1D7F8399C(selfCopy, &offset->x);
}

- (void)accessibilityIncrement
{
  selfCopy = self;
  sub_1D7F83C08();
}

- (void)accessibilityDecrement
{
  selfCopy = self;
  sub_1D7F83D5C();
}

@end