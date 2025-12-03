@interface _UIMorphAnimationSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
- (void)setLiquidMorph:(id)morph;
- (void)setLiquidMorphReduceMotion:(id)motion;
- (void)setLiquidMorphShrink:(id)shrink;
@end

@implementation _UIMorphAnimationSettings

- (void)setLiquidMorph:(id)morph
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorph);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorph) = morph;
  morphCopy = morph;
}

- (void)setLiquidMorphShrink:(id)shrink
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphShrink);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphShrink) = shrink;
  shrinkCopy = shrink;
}

- (void)setLiquidMorphReduceMotion:(id)motion
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphReduceMotion);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphReduceMotion) = motion;
  motionCopy = motion;
}

- (void)setDefaultValues
{
  selfCopy = self;
  sub_188F5B1B4();
}

+ (id)settingsControllerModule
{
  sub_188F5C570();

  return v2;
}

@end