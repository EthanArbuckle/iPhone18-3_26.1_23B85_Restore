@interface PXViewControllerSwipeDownDismissalController
- (PXViewControllerSwipeDownDismissalController)init;
- (void)setNeedsUpdate;
- (void)updateCurrentPlacement;
- (void)updateInitialPlacement;
- (void)updateSwipeDownTracker;
@end

@implementation PXViewControllerSwipeDownDismissalController

- (void)setNeedsUpdate
{
  v2 = self;
  sub_1A420F1A8();
}

- (void)updateInitialPlacement
{
  v2 = self;
  sub_1A420F4DC();
}

- (void)updateSwipeDownTracker
{
  v2 = self;
  sub_1A420F654();
}

- (void)updateCurrentPlacement
{
  v2 = self;
  sub_1A42103C4();
}

- (PXViewControllerSwipeDownDismissalController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end