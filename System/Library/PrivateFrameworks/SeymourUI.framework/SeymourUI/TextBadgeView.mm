@interface TextBadgeView
- (CGSize)intrinsicContentSize;
- (NSLayoutYAxisAnchor)firstBaselineAnchor;
@end

@implementation TextBadgeView

- (NSLayoutYAxisAnchor)firstBaselineAnchor
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13TextBadgeView_textLabel) firstBaselineAnchor];

  return v2;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_20B623454();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

@end