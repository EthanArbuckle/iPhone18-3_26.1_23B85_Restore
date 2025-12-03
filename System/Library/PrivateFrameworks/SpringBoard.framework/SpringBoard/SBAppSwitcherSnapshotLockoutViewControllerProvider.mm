@interface SBAppSwitcherSnapshotLockoutViewControllerProvider
- (SBAppSwitcherSnapshotLockoutViewControllerProvider)init;
- (id)blockingViewControllerForBundleIdentifier:(id)identifier screenTimePolicy:(int64_t)policy;
- (void)dealloc;
@end

@implementation SBAppSwitcherSnapshotLockoutViewControllerProvider

- (SBAppSwitcherSnapshotLockoutViewControllerProvider)init
{
  v7.receiver = self;
  v7.super_class = SBAppSwitcherSnapshotLockoutViewControllerProvider;
  v2 = [(SBAppSwitcherSnapshotLockoutViewControllerProvider *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    availableControllers = v2->_availableControllers;
    v2->_availableControllers = v3;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__receivedMemoryWarning_ name:*MEMORY[0x277D76670] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76670] object:0];

  v4.receiver = self;
  v4.super_class = SBAppSwitcherSnapshotLockoutViewControllerProvider;
  [(SBAppSwitcherSnapshotLockoutViewControllerProvider *)&v4 dealloc];
}

- (id)blockingViewControllerForBundleIdentifier:(id)identifier screenTimePolicy:(int64_t)policy
{
  identifierCopy = identifier;
  _sb_dequeue = [(NSMutableArray *)self->_availableControllers _sb_dequeue];
  if (!_sb_dequeue)
  {
    _sb_dequeue = [MEMORY[0x277D4BD90] newTranslucentBlockingViewController];
    closeApplicationHandler = [MEMORY[0x277D4BD90] closeApplicationHandler];
    [_sb_dequeue setOkButtonHandler:closeApplicationHandler];

    [_sb_dequeue _setIgnoresWrapperViewForContentOverlayInsets:1];
  }

  [_sb_dequeue updateAppearanceUsingPolicy:policy forBundleIdentifier:identifierCopy];

  return _sb_dequeue;
}

@end