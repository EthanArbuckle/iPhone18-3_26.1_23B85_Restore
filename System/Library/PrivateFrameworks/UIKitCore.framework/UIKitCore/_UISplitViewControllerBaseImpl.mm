@interface _UISplitViewControllerBaseImpl
- (BOOL)_disableAutomaticKeyboardBehavior;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersInterfaceOrientationLocked;
- (BOOL)prefersPointerLocked;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CGRect)_frameForChildContentContainer:(id)a3;
- (CGSize)_contentSizeForChildViewController:(id)a3 inPopoverController:(id)a4;
- (CGSize)_preferredContentSize;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NSArray)_childViewControllersToSendViewWillTransitionToSize;
- (NSArray)_multitaskingDragExclusionRects;
- (NSArray)preferredFocusEnvironments;
- (UIActivityItemsConfigurationReading)_effectiveActivityItemsConfiguration;
- (UIEdgeInsets)_additionalSidebarSafeAreaInsets;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIEdgeInsets)_tvOSColumnStyleExtraInsetsForChildViewController:(id)a3;
- (UIFocusEnvironment)_overridingPreferredFocusEnvironment;
- (UIResponder)_deepestActionResponder;
- (UISplitViewController)splitViewController;
- (UISplitViewControllerDelegate)delegate;
- (UIView)preferredFocusedView;
- (UIViewController)_viewControllerForObservableScrollView;
- (UIViewController)childViewControllerForStatusBarStyle;
- (_UISplitViewControllerBaseImpl)initWithSplitViewController:(id)a3;
- (_UITabContainerView)tabBarHostedView;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (unint64_t)supportedInterfaceOrientations;
- (void)_didUpdateFocusInContext:(id)a3;
- (void)removeChildViewController:(id)a3;
- (void)setView:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _UISplitViewControllerBaseImpl

- (UIViewController)_viewControllerForObservableScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);

  return WeakRetained;
}

- (unint64_t)supportedInterfaceOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_supportedInterfaceOrientations];

  return v3;
}

- (UISplitViewController)splitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);

  return WeakRetained;
}

- (BOOL)_disableAutomaticKeyboardBehavior
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_disableAutomaticKeyboardBehavior];

  return v3;
}

- (_UISplitViewControllerBaseImpl)initWithSplitViewController:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UISplitViewControllerBaseImpl;
  v4 = [(_UISplitViewControllerBaseImpl *)&v8 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_splitViewController, a3);
    viewControllers = v5->_viewControllers;
    v5->_viewControllers = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (CGSize)_preferredContentSize
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  [WeakRetained _super_preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_childViewControllerForStatusBarStyle];

  return v3;
}

- (UIResponder)_deepestActionResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_deepestActionResponder];

  return v3;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_preferredInterfaceOrientationForPresentation];

  return v3;
}

- (NSArray)_multitaskingDragExclusionRects
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_multitaskingDragExclusionRects];

  return v3;
}

- (NSArray)_childViewControllersToSendViewWillTransitionToSize
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_childViewControllersToSendViewWillTransitionToSize];

  return v3;
}

- (BOOL)prefersPointerLocked
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_prefersPointerLocked];

  return v3;
}

- (BOOL)prefersInterfaceOrientationLocked
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_prefersInterfaceOrientationLocked];

  return v3;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_prefersHomeIndicatorAutoHidden];

  return v3;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_preferredScreenEdgesDeferringSystemGestures];

  return v3;
}

- (UIActivityItemsConfigurationReading)_effectiveActivityItemsConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_effectiveActivityItemsConfiguration];

  return v3;
}

- (UIEdgeInsets)_tvOSColumnStyleExtraInsetsForChildViewController:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  [WeakRetained _super_sizeForChildContentContainer:a3 withParentContainerSize:{width, height}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGRect)_frameForChildContentContainer:(id)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)setView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  [WeakRetained _super_setView:a3];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  [WeakRetained _super_willTransitionToTraitCollection:a3 withTransitionCoordinator:a4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  [WeakRetained _super_viewWillTransitionToSize:a4 withTransitionCoordinator:{width, height}];
}

- (CGSize)_contentSizeForChildViewController:(id)a3 inPopoverController:(id)a4
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)removeChildViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  [WeakRetained _super_removeChildViewController:a3];
}

- (UIView)preferredFocusedView
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_preferredFocusedView];

  return v3;
}

- (NSArray)preferredFocusEnvironments
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_preferredFocusEnvironments];

  return v3;
}

- (UIFocusEnvironment)_overridingPreferredFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  v3 = [WeakRetained _super_overridingPreferredFocusEnvironment];

  return v3;
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  LOBYTE(a3) = [WeakRetained _super_shouldUpdateFocusInContext:a3];

  return a3;
}

- (void)_didUpdateFocusInContext:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  [WeakRetained _super_didUpdateFocusInContext:a3];
}

- (UISplitViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UITabContainerView)tabBarHostedView
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarHostedView);

  return WeakRetained;
}

- (UIEdgeInsets)_additionalSidebarSafeAreaInsets
{
  top = self->_additionalSidebarSafeAreaInsets.top;
  left = self->_additionalSidebarSafeAreaInsets.left;
  bottom = self->_additionalSidebarSafeAreaInsets.bottom;
  right = self->_additionalSidebarSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end