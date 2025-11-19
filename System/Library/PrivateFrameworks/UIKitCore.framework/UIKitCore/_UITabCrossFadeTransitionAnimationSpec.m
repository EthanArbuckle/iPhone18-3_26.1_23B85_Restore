@interface _UITabCrossFadeTransitionAnimationSpec
+ (id)settingsControllerModule;
- (void)setFadeIn:(id)a3;
- (void)setFadeOut:(id)a3;
- (void)setScaleIn:(id)a3;
- (void)setScaleOut:(id)a3;
@end

@implementation _UITabCrossFadeTransitionAnimationSpec

- (void)setFadeOut:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeOut);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeOut) = a3;
  v3 = a3;
}

- (void)setScaleOut:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleOut);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleOut) = a3;
  v3 = a3;
}

- (void)setFadeIn:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeIn);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeIn) = a3;
  v3 = a3;
}

- (void)setScaleIn:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleIn);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleIn) = a3;
  v3 = a3;
}

+ (id)settingsControllerModule
{
  sub_188E8030C();

  return v2;
}

@end