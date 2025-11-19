@interface PXViewControllerDismissalInteractionController
- (BOOL)screenEdgeSwipeAllowed;
- (BOOL)swipeDownAllowed;
- (BOOL)swipeUpAllowed;
- (BOOL)wantsChromeVisible;
- (PXViewControllerDismissalInteractionController)init;
- (PXViewControllerDismissalInteractionController)initWithViewController:(id)a3;
- (void)containedViewControllerModalStateChanged;
- (void)handleSwipeDownOrEdgeSwipe:(id)a3;
- (void)handleSwipeUp:(id)a3;
- (void)handleTapOnGrabAffordance:(id)a3;
- (void)setScreenEdgeSwipeAllowed:(BOOL)a3;
- (void)setSwipeDownAllowed:(BOOL)a3;
- (void)setSwipeUpAllowed:(BOOL)a3;
- (void)setWantsChromeVisible:(BOOL)a3;
- (void)viewControllerViewWillLayoutSubviews;
@end

@implementation PXViewControllerDismissalInteractionController

- (PXViewControllerDismissalInteractionController)initWithViewController:(id)a3
{
  v3 = a3;
  v4 = sub_1A482EFF4();

  return v4;
}

- (void)viewControllerViewWillLayoutSubviews
{
  v2 = self;
  sub_1A482C470();
  sub_1A482CFF4();
}

- (void)containedViewControllerModalStateChanged
{
  v2 = self;
  sub_1A482ADD4();
}

- (BOOL)swipeDownAllowed
{
  v3 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSwipeDownAllowed:(BOOL)a3
{
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = self;
  sub_1A482B18C(v6);
}

- (BOOL)swipeUpAllowed
{
  v3 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpAllowed;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSwipeUpAllowed:(BOOL)a3
{
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpAllowed;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)screenEdgeSwipeAllowed
{
  v3 = OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgeSwipeAllowed;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScreenEdgeSwipeAllowed:(BOOL)a3
{
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgeSwipeAllowed;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)wantsChromeVisible
{
  v3 = OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsChromeVisible;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWantsChromeVisible:(BOOL)a3
{
  v4 = self;
  sub_1A482B83C(a3);
}

- (void)handleSwipeUp:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A482D3F0(v4);
}

- (void)handleSwipeDownOrEdgeSwipe:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A482D5B4(v4);
}

- (void)handleTapOnGrabAffordance:(id)a3
{
  v4 = a3;
  v6 = self;
  if ([v4 state] == 3)
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