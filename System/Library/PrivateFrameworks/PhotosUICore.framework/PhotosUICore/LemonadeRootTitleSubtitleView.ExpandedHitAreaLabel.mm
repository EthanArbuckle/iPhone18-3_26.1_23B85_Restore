@interface LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel)initWithCoder:(id)a3;
- (_TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel)initWithFrame:(CGRect)a3;
@end

@implementation LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel *)v6 bounds];
  v11 = CGRectInset(v10, -*(&v6->super.super.super.super.isa + OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_horizontalHitAreaExpansion), -*(&v6->super.super.super.super.isa + OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_verticalHitAreaExpansion));
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v11, v9);

  return v7;
}

- (_TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_horizontalHitAreaExpansion) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_verticalHitAreaExpansion) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel();
  return [(LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_horizontalHitAreaExpansion) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_verticalHitAreaExpansion) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel();
  v4 = a3;
  v5 = [(LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end