@interface _UITabBarAnimationSettings
+ (id)settingsControllerModule;
- (void)setCollapseFinalSpring:(id)spring;
- (void)setCollapseIntermediateSpring:(id)spring;
- (void)setDefaultValues;
- (void)setExpandFinalSpring:(id)spring;
- (void)setExpandIntermediateSpring:(id)spring;
- (void)setScrollAwayHintResetSpring:(id)spring;
- (void)setScrollAwayProgressSpring:(id)spring;
- (void)setScrollAwayTrackingProgressSpring:(id)spring;
@end

@implementation _UITabBarAnimationSettings

- (void)setCollapseIntermediateSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseIntermediateSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseIntermediateSpring) = spring;
  springCopy = spring;
}

- (void)setCollapseFinalSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseFinalSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseFinalSpring) = spring;
  springCopy = spring;
}

- (void)setExpandIntermediateSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandIntermediateSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandIntermediateSpring) = spring;
  springCopy = spring;
}

- (void)setExpandFinalSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandFinalSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandFinalSpring) = spring;
  springCopy = spring;
}

- (void)setScrollAwayHintResetSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayHintResetSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayHintResetSpring) = spring;
  springCopy = spring;
}

- (void)setScrollAwayProgressSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayProgressSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayProgressSpring) = spring;
  springCopy = spring;
}

- (void)setScrollAwayTrackingProgressSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayTrackingProgressSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayTrackingProgressSpring) = spring;
  springCopy = spring;
}

- (void)setDefaultValues
{
  selfCopy = self;
  sub_1891C7680();
}

+ (id)settingsControllerModule
{
  sub_1891C7B34();

  return v2;
}

@end