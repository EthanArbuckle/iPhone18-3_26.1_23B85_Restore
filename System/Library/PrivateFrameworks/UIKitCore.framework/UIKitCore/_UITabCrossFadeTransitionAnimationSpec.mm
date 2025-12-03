@interface _UITabCrossFadeTransitionAnimationSpec
+ (id)settingsControllerModule;
- (void)setFadeIn:(id)in;
- (void)setFadeOut:(id)out;
- (void)setScaleIn:(id)in;
- (void)setScaleOut:(id)out;
@end

@implementation _UITabCrossFadeTransitionAnimationSpec

- (void)setFadeOut:(id)out
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeOut);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeOut) = out;
  outCopy = out;
}

- (void)setScaleOut:(id)out
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleOut);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleOut) = out;
  outCopy = out;
}

- (void)setFadeIn:(id)in
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeIn);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeIn) = in;
  inCopy = in;
}

- (void)setScaleIn:(id)in
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleIn);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleIn) = in;
  inCopy = in;
}

+ (id)settingsControllerModule
{
  sub_188E8030C();

  return v2;
}

@end