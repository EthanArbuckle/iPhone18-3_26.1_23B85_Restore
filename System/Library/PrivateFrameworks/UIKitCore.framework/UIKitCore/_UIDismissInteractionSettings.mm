@interface _UIDismissInteractionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
- (void)setEdgePan:(id)a3;
- (void)setPinch:(id)a3;
- (void)setScroll:(id)a3;
- (void)setSwipeDown:(id)a3;
@end

@implementation _UIDismissInteractionSettings

- (void)setDefaultValues
{
  v2 = self;
  sub_188C8632C();
}

- (void)setEdgePan:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_edgePan);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_edgePan) = a3;
  v3 = a3;
}

- (void)setScroll:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_scroll);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_scroll) = a3;
  v3 = a3;
}

- (void)setSwipeDown:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown) = a3;
  v3 = a3;
}

- (void)setPinch:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_pinch);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_pinch) = a3;
  v3 = a3;
}

+ (id)settingsControllerModule
{
  sub_188F0EFC4();

  return v2;
}

@end