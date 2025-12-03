@interface PXViewControllerDismissalInteractionController
- (BOOL)screenEdgeSwipeAllowed;
- (BOOL)swipeDownAllowed;
- (BOOL)swipeUpAllowed;
- (BOOL)wantsChromeVisible;
- (PXViewControllerDismissalInteractionController)init;
- (PXViewControllerDismissalInteractionController)initWithViewController:(id)controller;
- (void)containedViewControllerModalStateChanged;
- (void)handleSwipeDownOrEdgeSwipe:(id)swipe;
- (void)handleSwipeUp:(id)up;
- (void)handleTapOnGrabAffordance:(id)affordance;
- (void)setScreenEdgeSwipeAllowed:(BOOL)allowed;
- (void)setSwipeDownAllowed:(BOOL)allowed;
- (void)setSwipeUpAllowed:(BOOL)allowed;
- (void)setWantsChromeVisible:(BOOL)visible;
- (void)viewControllerViewWillLayoutSubviews;
@end

@implementation PXViewControllerDismissalInteractionController

- (PXViewControllerDismissalInteractionController)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_1A482EFF4();

  return v4;
}

- (void)viewControllerViewWillLayoutSubviews
{
  selfCopy = self;
  sub_1A482C470();
  sub_1A482CFF4();
}

- (void)containedViewControllerModalStateChanged
{
  selfCopy = self;
  sub_1A482ADD4();
}

- (BOOL)swipeDownAllowed
{
  v3 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSwipeDownAllowed:(BOOL)allowed
{
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = allowed;
  selfCopy = self;
  sub_1A482B18C(v6);
}

- (BOOL)swipeUpAllowed
{
  v3 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpAllowed;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSwipeUpAllowed:(BOOL)allowed
{
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpAllowed;
  swift_beginAccess();
  *(&self->super.isa + v5) = allowed;
}

- (BOOL)screenEdgeSwipeAllowed
{
  v3 = OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgeSwipeAllowed;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScreenEdgeSwipeAllowed:(BOOL)allowed
{
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgeSwipeAllowed;
  swift_beginAccess();
  *(&self->super.isa + v5) = allowed;
}

- (BOOL)wantsChromeVisible
{
  v3 = OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsChromeVisible;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWantsChromeVisible:(BOOL)visible
{
  selfCopy = self;
  sub_1A482B83C(visible);
}

- (void)handleSwipeUp:(id)up
{
  upCopy = up;
  selfCopy = self;
  sub_1A482D3F0(upCopy);
}

- (void)handleSwipeDownOrEdgeSwipe:(id)swipe
{
  swipeCopy = swipe;
  selfCopy = self;
  sub_1A482D5B4(swipeCopy);
}

- (void)handleTapOnGrabAffordance:(id)affordance
{
  affordanceCopy = affordance;
  selfCopy = self;
  if ([affordanceCopy state] == 3)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

- (PXViewControllerDismissalInteractionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end