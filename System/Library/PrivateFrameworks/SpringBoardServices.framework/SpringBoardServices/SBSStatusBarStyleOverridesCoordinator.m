@interface SBSStatusBarStyleOverridesCoordinator
- (SBSStatusBarStyleOverridesCoordinatorDelegate)delegate;
- (unint64_t)styleOverrides;
- (void)setDelegate:(id)a3;
- (void)setRegisteredStyleOverrides:(unint64_t)a3 reply:(id)a4;
@end

@implementation SBSStatusBarStyleOverridesCoordinator

- (void)setRegisteredStyleOverrides:(unint64_t)a3 reply:(id)a4
{
  v4.receiver = self;
  v4.super_class = SBSStatusBarStyleOverridesCoordinator;
  [(SBSBackgroundActivityCoordinator *)&v4 setRegisteredStyleOverrides:a3 reply:a4];
}

- (unint64_t)styleOverrides
{
  v3.receiver = self;
  v3.super_class = SBSStatusBarStyleOverridesCoordinator;
  return [(SBSBackgroundActivityCoordinator *)&v3 styleOverrides];
}

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBSStatusBarStyleOverridesCoordinator;
  [(SBSBackgroundActivityCoordinator *)&v3 setDelegate:a3];
}

- (SBSStatusBarStyleOverridesCoordinatorDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = SBSStatusBarStyleOverridesCoordinator;
  v2 = [(SBSBackgroundActivityCoordinator *)&v4 delegate];

  return v2;
}

@end