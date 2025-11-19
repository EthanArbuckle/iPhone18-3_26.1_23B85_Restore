@interface _UITabBarAnimationSettings
+ (id)settingsControllerModule;
- (void)setCollapseFinalSpring:(id)a3;
- (void)setCollapseIntermediateSpring:(id)a3;
- (void)setDefaultValues;
- (void)setExpandFinalSpring:(id)a3;
- (void)setExpandIntermediateSpring:(id)a3;
- (void)setScrollAwayHintResetSpring:(id)a3;
- (void)setScrollAwayProgressSpring:(id)a3;
- (void)setScrollAwayTrackingProgressSpring:(id)a3;
@end

@implementation _UITabBarAnimationSettings

- (void)setCollapseIntermediateSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseIntermediateSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseIntermediateSpring) = a3;
  v3 = a3;
}

- (void)setCollapseFinalSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseFinalSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseFinalSpring) = a3;
  v3 = a3;
}

- (void)setExpandIntermediateSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandIntermediateSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandIntermediateSpring) = a3;
  v3 = a3;
}

- (void)setExpandFinalSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandFinalSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandFinalSpring) = a3;
  v3 = a3;
}

- (void)setScrollAwayHintResetSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayHintResetSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayHintResetSpring) = a3;
  v3 = a3;
}

- (void)setScrollAwayProgressSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayProgressSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayProgressSpring) = a3;
  v3 = a3;
}

- (void)setScrollAwayTrackingProgressSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayTrackingProgressSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayTrackingProgressSpring) = a3;
  v3 = a3;
}

- (void)setDefaultValues
{
  v2 = self;
  sub_1891C7680();
}

+ (id)settingsControllerModule
{
  sub_1891C7B34();

  return v2;
}

@end