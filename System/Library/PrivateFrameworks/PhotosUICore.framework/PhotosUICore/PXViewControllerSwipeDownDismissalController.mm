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
  selfCopy = self;
  sub_1A420F1A8();
}

- (void)updateInitialPlacement
{
  selfCopy = self;
  sub_1A420F4DC();
}

- (void)updateSwipeDownTracker
{
  selfCopy = self;
  sub_1A420F654();
}

- (void)updateCurrentPlacement
{
  selfCopy = self;
  sub_1A42103C4();
}

- (PXViewControllerSwipeDownDismissalController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end