@interface _UISplitViewControllerBaseImpl
- (BOOL)_disableAutomaticKeyboardBehavior;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersInterfaceOrientationLocked;
- (BOOL)prefersPointerLocked;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CGRect)_frameForChildContentContainer:(id)container;
- (CGSize)_contentSizeForChildViewController:(id)controller inPopoverController:(id)popoverController;
- (CGSize)_preferredContentSize;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (NSArray)_childViewControllersToSendViewWillTransitionToSize;
- (NSArray)_multitaskingDragExclusionRects;
- (NSArray)preferredFocusEnvironments;
- (UIActivityItemsConfigurationReading)_effectiveActivityItemsConfiguration;
- (UIEdgeInsets)_additionalSidebarSafeAreaInsets;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UIEdgeInsets)_tvOSColumnStyleExtraInsetsForChildViewController:(id)controller;
- (UIFocusEnvironment)_overridingPreferredFocusEnvironment;
- (UIResponder)_deepestActionResponder;
- (UISplitViewController)splitViewController;
- (UISplitViewControllerDelegate)delegate;
- (UIView)preferredFocusedView;
- (UIViewController)_viewControllerForObservableScrollView;
- (UIViewController)childViewControllerForStatusBarStyle;
- (_UISplitViewControllerBaseImpl)initWithSplitViewController:(id)controller;
- (_UITabContainerView)tabBarHostedView;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (unint64_t)supportedInterfaceOrientations;
- (void)_didUpdateFocusInContext:(id)context;
- (void)removeChildViewController:(id)controller;
- (void)setView:(id)view;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
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
  _super_supportedInterfaceOrientations = [WeakRetained _super_supportedInterfaceOrientations];

  return _super_supportedInterfaceOrientations;
}

- (UISplitViewController)splitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);

  return WeakRetained;
}

- (BOOL)_disableAutomaticKeyboardBehavior
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _super_disableAutomaticKeyboardBehavior = [WeakRetained _super_disableAutomaticKeyboardBehavior];

  return _super_disableAutomaticKeyboardBehavior;
}

- (_UISplitViewControllerBaseImpl)initWithSplitViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = _UISplitViewControllerBaseImpl;
  v4 = [(_UISplitViewControllerBaseImpl *)&v8 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_splitViewController, controller);
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
  _super_childViewControllerForStatusBarStyle = [WeakRetained _super_childViewControllerForStatusBarStyle];

  return _super_childViewControllerForStatusBarStyle;
}

- (UIResponder)_deepestActionResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _super_deepestActionResponder = [WeakRetained _super_deepestActionResponder];

  return _super_deepestActionResponder;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _super_preferredInterfaceOrientationForPresentation = [WeakRetained _super_preferredInterfaceOrientationForPresentation];

  return _super_preferredInterfaceOrientationForPresentation;
}

- (NSArray)_multitaskingDragExclusionRects
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _super_multitaskingDragExclusionRects = [WeakRetained _super_multitaskingDragExclusionRects];

  return _super_multitaskingDragExclusionRects;
}

- (NSArray)_childViewControllersToSendViewWillTransitionToSize
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _super_childViewControllersToSendViewWillTransitionToSize = [WeakRetained _super_childViewControllersToSendViewWillTransitionToSize];

  return _super_childViewControllersToSendViewWillTransitionToSize;
}

- (BOOL)prefersPointerLocked
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _super_prefersPointerLocked = [WeakRetained _super_prefersPointerLocked];

  return _super_prefersPointerLocked;
}

- (BOOL)prefersInterfaceOrientationLocked
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _super_prefersInterfaceOrientationLocked = [WeakRetained _super_prefersInterfaceOrientationLocked];

  return _super_prefersInterfaceOrientationLocked;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _super_prefersHomeIndicatorAutoHidden = [WeakRetained _super_prefersHomeIndicatorAutoHidden];

  return _super_prefersHomeIndicatorAutoHidden;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _super_preferredScreenEdgesDeferringSystemGestures = [WeakRetained _super_preferredScreenEdgesDeferringSystemGestures];

  return _super_preferredScreenEdgesDeferringSystemGestures;
}

- (UIActivityItemsConfigurationReading)_effectiveActivityItemsConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _super_effectiveActivityItemsConfiguration = [WeakRetained _super_effectiveActivityItemsConfiguration];

  return _super_effectiveActivityItemsConfiguration;
}

- (UIEdgeInsets)_tvOSColumnStyleExtraInsetsForChildViewController:(id)controller
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

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  [WeakRetained _super_sizeForChildContentContainer:container withParentContainerSize:{width, height}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGRect)_frameForChildContentContainer:(id)container
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

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
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

- (void)setView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  [WeakRetained _super_setView:view];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  [WeakRetained _super_willTransitionToTraitCollection:collection withTransitionCoordinator:coordinator];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  [WeakRetained _super_viewWillTransitionToSize:coordinator withTransitionCoordinator:{width, height}];
}

- (CGSize)_contentSizeForChildViewController:(id)controller inPopoverController:(id)popoverController
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)removeChildViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  [WeakRetained _super_removeChildViewController:controller];
}

- (UIView)preferredFocusedView
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _super_preferredFocusedView = [WeakRetained _super_preferredFocusedView];

  return _super_preferredFocusedView;
}

- (NSArray)preferredFocusEnvironments
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _super_preferredFocusEnvironments = [WeakRetained _super_preferredFocusEnvironments];

  return _super_preferredFocusEnvironments;
}

- (UIFocusEnvironment)_overridingPreferredFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  _super_overridingPreferredFocusEnvironment = [WeakRetained _super_overridingPreferredFocusEnvironment];

  return _super_overridingPreferredFocusEnvironment;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  LOBYTE(context) = [WeakRetained _super_shouldUpdateFocusInContext:context];

  return context;
}

- (void)_didUpdateFocusInContext:(id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);
  [WeakRetained _super_didUpdateFocusInContext:context];
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