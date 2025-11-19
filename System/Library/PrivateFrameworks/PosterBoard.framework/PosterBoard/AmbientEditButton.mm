@interface AmbientEditButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (_TtC11PosterBoard17AmbientEditButton)initWithCoder:(id)a3;
@end

@implementation AmbientEditButton

- (_TtC11PosterBoard17AmbientEditButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyleCoordinator) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyleItemView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyle) = 0;
  result = sub_21B6C95D4();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(AmbientEditButton *)self intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = 50.0;
  v3 = 50.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = 10.0;
  v3 = 10.0;
  v4 = 10.0;
  v5 = 10.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end