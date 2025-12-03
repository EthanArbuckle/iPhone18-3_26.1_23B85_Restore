@interface LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel)initWithCoder:(id)coder;
- (_TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel)initWithFrame:(CGRect)frame;
@end

@implementation LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel *)selfCopy bounds];
  v11 = CGRectInset(v10, -*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_horizontalHitAreaExpansion), -*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_verticalHitAreaExpansion));
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v11, v9);

  return v7;
}

- (_TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_horizontalHitAreaExpansion) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_verticalHitAreaExpansion) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel();
  return [(LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_horizontalHitAreaExpansion) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_verticalHitAreaExpansion) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel();
  coderCopy = coder;
  v5 = [(LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end