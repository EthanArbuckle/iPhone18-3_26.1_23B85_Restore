@interface _UIMorphAnimationSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
- (void)setLiquidMorph:(id)a3;
- (void)setLiquidMorphReduceMotion:(id)a3;
- (void)setLiquidMorphShrink:(id)a3;
@end

@implementation _UIMorphAnimationSettings

- (void)setLiquidMorph:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorph);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorph) = a3;
  v3 = a3;
}

- (void)setLiquidMorphShrink:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphShrink);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphShrink) = a3;
  v3 = a3;
}

- (void)setLiquidMorphReduceMotion:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphReduceMotion);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphReduceMotion) = a3;
  v3 = a3;
}

- (void)setDefaultValues
{
  v2 = self;
  sub_188F5B1B4();
}

+ (id)settingsControllerModule
{
  sub_188F5C570();

  return v2;
}

@end