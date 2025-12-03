@interface SBSStatusBarStyleOverridesCoordinator
- (SBSStatusBarStyleOverridesCoordinatorDelegate)delegate;
- (unint64_t)styleOverrides;
- (void)setDelegate:(id)delegate;
- (void)setRegisteredStyleOverrides:(unint64_t)overrides reply:(id)reply;
@end

@implementation SBSStatusBarStyleOverridesCoordinator

- (void)setRegisteredStyleOverrides:(unint64_t)overrides reply:(id)reply
{
  v4.receiver = self;
  v4.super_class = SBSStatusBarStyleOverridesCoordinator;
  [(SBSBackgroundActivityCoordinator *)&v4 setRegisteredStyleOverrides:overrides reply:reply];
}

- (unint64_t)styleOverrides
{
  v3.receiver = self;
  v3.super_class = SBSStatusBarStyleOverridesCoordinator;
  return [(SBSBackgroundActivityCoordinator *)&v3 styleOverrides];
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = SBSStatusBarStyleOverridesCoordinator;
  [(SBSBackgroundActivityCoordinator *)&v3 setDelegate:delegate];
}

- (SBSStatusBarStyleOverridesCoordinatorDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = SBSStatusBarStyleOverridesCoordinator;
  delegate = [(SBSBackgroundActivityCoordinator *)&v4 delegate];

  return delegate;
}

@end