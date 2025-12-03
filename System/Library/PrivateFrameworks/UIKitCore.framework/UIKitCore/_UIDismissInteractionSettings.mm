@interface _UIDismissInteractionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
- (void)setEdgePan:(id)pan;
- (void)setPinch:(id)pinch;
- (void)setScroll:(id)scroll;
- (void)setSwipeDown:(id)down;
@end

@implementation _UIDismissInteractionSettings

- (void)setDefaultValues
{
  selfCopy = self;
  sub_188C8632C();
}

- (void)setEdgePan:(id)pan
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_edgePan);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_edgePan) = pan;
  panCopy = pan;
}

- (void)setScroll:(id)scroll
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_scroll);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_scroll) = scroll;
  scrollCopy = scroll;
}

- (void)setSwipeDown:(id)down
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_swipeDown) = down;
  downCopy = down;
}

- (void)setPinch:(id)pinch
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_pinch);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_pinch) = pinch;
  pinchCopy = pinch;
}

+ (id)settingsControllerModule
{
  sub_188F0EFC4();

  return v2;
}

@end