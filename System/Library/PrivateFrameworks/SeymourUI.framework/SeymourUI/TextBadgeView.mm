@interface TextBadgeView
- (CGSize)intrinsicContentSize;
- (NSLayoutYAxisAnchor)firstBaselineAnchor;
@end

@implementation TextBadgeView

- (NSLayoutYAxisAnchor)firstBaselineAnchor
{
  firstBaselineAnchor = [*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13TextBadgeView_textLabel) firstBaselineAnchor];

  return firstBaselineAnchor;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_20B623454();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

@end