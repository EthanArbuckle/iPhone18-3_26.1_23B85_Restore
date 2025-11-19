@interface _UIMorphAnimationSpec
+ (id)settingsControllerModule;
- (_TtC5UIKit21_UIMorphAnimationSpec)initWithSpring:(id)a3;
- (void)setContentMorph:(id)a3;
- (void)setDefaultValues;
- (void)setHeight:(id)a3;
- (void)setKick:(id)a3;
- (void)setPositionX:(id)a3;
- (void)setPositionY:(id)a3;
- (void)setSettle:(id)a3;
- (void)setTransform:(id)a3;
- (void)setWidth:(id)a3;
@end

@implementation _UIMorphAnimationSpec

- (void)setContentMorph:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) = a3;
  v3 = a3;
}

- (void)setPositionX:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX) = a3;
  v3 = a3;
}

- (void)setPositionY:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY) = a3;
  v3 = a3;
}

- (void)setWidth:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width) = a3;
  v3 = a3;
}

- (void)setHeight:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height) = a3;
  v3 = a3;
}

- (void)setTransform:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform) = a3;
  v3 = a3;
}

- (void)setKick:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_kick);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_kick) = a3;
  v3 = a3;
}

- (void)setSettle:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_settle);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_settle) = a3;
  v3 = a3;
}

- (void)setDefaultValues
{
  v2 = self;
  sub_188F5BEA0();
}

+ (id)settingsControllerModule
{
  sub_188F5D304();

  return v2;
}

- (_TtC5UIKit21_UIMorphAnimationSpec)initWithSpring:(id)a3
{
  v3 = a3;
  v4 = sub_188F5C484(v3);

  return v4;
}

@end