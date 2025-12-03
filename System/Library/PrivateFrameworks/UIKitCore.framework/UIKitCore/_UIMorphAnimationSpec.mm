@interface _UIMorphAnimationSpec
+ (id)settingsControllerModule;
- (_TtC5UIKit21_UIMorphAnimationSpec)initWithSpring:(id)spring;
- (void)setContentMorph:(id)morph;
- (void)setDefaultValues;
- (void)setHeight:(id)height;
- (void)setKick:(id)kick;
- (void)setPositionX:(id)x;
- (void)setPositionY:(id)y;
- (void)setSettle:(id)settle;
- (void)setTransform:(id)transform;
- (void)setWidth:(id)width;
@end

@implementation _UIMorphAnimationSpec

- (void)setContentMorph:(id)morph
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) = morph;
  morphCopy = morph;
}

- (void)setPositionX:(id)x
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX) = x;
  xCopy = x;
}

- (void)setPositionY:(id)y
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY) = y;
  yCopy = y;
}

- (void)setWidth:(id)width
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width) = width;
  widthCopy = width;
}

- (void)setHeight:(id)height
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height) = height;
  heightCopy = height;
}

- (void)setTransform:(id)transform
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform) = transform;
  transformCopy = transform;
}

- (void)setKick:(id)kick
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_kick);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_kick) = kick;
  kickCopy = kick;
}

- (void)setSettle:(id)settle
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_settle);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_settle) = settle;
  settleCopy = settle;
}

- (void)setDefaultValues
{
  selfCopy = self;
  sub_188F5BEA0();
}

+ (id)settingsControllerModule
{
  sub_188F5D304();

  return v2;
}

- (_TtC5UIKit21_UIMorphAnimationSpec)initWithSpring:(id)spring
{
  springCopy = spring;
  v4 = sub_188F5C484(springCopy);

  return v4;
}

@end