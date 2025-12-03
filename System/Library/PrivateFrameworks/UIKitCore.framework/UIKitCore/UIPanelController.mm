@interface UIPanelController
+ (id)_withDisabledAppearanceTransitions:(BOOL)transitions forVisibleDescendantsOf:(id)of perform:(id)perform;
- (BOOL)_animateCustomTransitionIfNeededWithAnimationState:(id)state possiblePublicStates:(id)states newPublicState:(id)publicState estimatedDuration:(double)duration needsInitialLayout:(BOOL)layout;
- (BOOL)_willCollapseWithNewTraitCollection:(id)collection oldTraitCollection:(id)traitCollection;
- (BOOL)_willExpandWithNewTraitCollection:(id)collection oldTraitCollection:(id)traitCollection;
- (BOOL)isAnimating;
- (BOOL)isCollapsed;
- (BOOL)isLeadingViewControllerVisibleAfterAnimation;
- (BOOL)isSupplementaryViewControllerVisibleAfterAnimation;
- (BOOL)isTrailingViewControllerVisibleAfterAnimation;
- (CGSize)_expectedSecondaryColumnSizeAfterAnimatingToState:(id)state getLeadingColumnSize:(CGSize *)size trailingColumnSize:(CGSize *)columnSize supplementaryColumnSize:(CGSize *)supplementaryColumnSize;
- (CGSize)_lastViewSize;
- (NSArray)uncachedPossibleStates;
- (NSString)description;
- (UILayoutContainerView)view;
- (UIPanelController)initWithOwningViewController:(id)controller;
- (UIPanelControllerDelegate)delegate;
- (UISlidingBarConfiguration)configuration;
- (UISlidingBarStateRequest)interactiveStateRequest;
- (UISlidingBarStateRequest)stateRequest;
- (UIViewController)collapsedViewController;
- (UIViewController)leadingViewController;
- (UIViewController)mainViewController;
- (UIViewController)owningViewController;
- (UIViewController)preservedDetailController;
- (UIViewController)supplementaryViewController;
- (UIViewController)trailingViewController;
- (UIViewControllerTransitionCoordinator)transitionCoordinator;
- (double)interpolatedMarginForPrimaryNavigationBar:(id)bar supplementaryOrSecondaryNavbar:(id)navbar getInterpolatedAlpha:(double *)alpha;
- (id)_createBorderView;
- (id)_createOverlayEdgeShadowViewForEdge:(unint64_t)edge;
- (id)_createOverlayShadowView;
- (id)allViewControllers;
- (id)gatherMultitaskingDragExclusionRectsFromVisibleColumns;
- (id)uncachedPossibleStatesForSize:(CGSize)size;
- (int64_t)collapsedState;
- (void)__viewWillLayoutSubviews;
- (void)_addIdentifiedChildViewController:(id)controller;
- (void)_adjustForKeyboardInfo:(id)info;
- (void)_adjustNonOverlayLeadingScrollViewsForKeyboardInfo:(id)info;
- (void)_animateFromRequest:(id)request toRequest:(id)toRequest withAffectedSides:(int64_t)sides forceOverlay:(BOOL)overlay velocity:(double)velocity;
- (void)_collapseWithTransitionCoordinator:(id)coordinator;
- (void)_expandWithTransitionCoordinator:(id)coordinator;
- (void)_layoutContainerViewDidMoveToWindow:(id)window;
- (void)_layoutContainerViewWillMoveToWindow:(id)window;
- (void)_observeKeyboardNotificationsOnScreen:(id)screen;
- (void)_performDeferredUpdate;
- (void)_performSingleDeferredUpdatePass;
- (void)_performWrappedUpdate:(id)update;
- (void)_removeIdentifiedChildViewController:(id)controller;
- (void)_setBorderViewsObserveViewBackgroundColor:(BOOL)color;
- (void)_setNeedsDeferredUpdate;
- (void)_setNeedsLayoutAndPerformImmediately:(BOOL)immediately;
- (void)_stopAnimationsBeginningInteraction:(BOOL)interaction;
- (void)_stopObservingKeyboardNotifications;
- (void)_storeSuspendedConfiguration;
- (void)_unspecifiedUpdateToNewPublicState:(id)state withSize:(CGSize)size;
- (void)_updateBorderViewsBackgroundColor:(id)color;
- (void)_updateForTraitCollection:(id)collection oldTraitCollection:(id)traitCollection withTransitionCoordinator:(id)coordinator;
- (void)_updateToNewPublicState:(id)state withSize:(CGSize)size;
- (void)_withDisabledAppearanceTransitionsPerform:(id)perform;
- (void)addWrapperBlockForNextUpdate:(id)update;
- (void)animateToRequest:(id)request forceOverlay:(BOOL)overlay withVelocity:(double)velocity;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeChildViewController:(id)controller;
- (void)setClippingViewsUnnecessary:(BOOL)unnecessary;
- (void)setCollapsedViewController:(id)controller;
- (void)setConfiguration:(id)configuration;
- (void)setDelegate:(id)delegate;
- (void)setDimmingView:(id)view;
- (void)setInteractiveStateRequest:(id)request;
- (void)setLeadingTrailingWrapsNavigationController:(BOOL)controller;
- (void)setLeadingViewController:(id)controller changingParentage:(BOOL)parentage;
- (void)setMainViewController:(id)controller changingParentage:(BOOL)parentage animateTransition:(BOOL)transition;
- (void)setPresentationGestureActive:(BOOL)active;
- (void)setPreservedDetailController:(id)controller;
- (void)setRunExpandScheduled:(BOOL)scheduled;
- (void)setStateRequest:(id)request;
- (void)setSupplementaryViewController:(id)controller changingParentage:(BOOL)parentage;
- (void)setTrailingViewController:(id)controller changingParentage:(BOOL)parentage;
- (void)traitCollectionDidChange:(id)change toNewTraits:(id)traits;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator superBlock:(id)block;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator superBlock:(id)block;
@end

@implementation UIPanelController

- (void)setPresentationGestureActive:(BOOL)active
{
  if (active)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_panelControllerFlags = (*&self->_panelControllerFlags & 0xFFFFFFEF | v3);
}

- (void)setClippingViewsUnnecessary:(BOOL)unnecessary
{
  if (unnecessary)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_panelControllerFlags = (*&self->_panelControllerFlags & 0xFFFFFFDF | v3);
}

- (void)setRunExpandScheduled:(BOOL)scheduled
{
  if (scheduled)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_panelControllerFlags = (*&self->_panelControllerFlags & 0xFFFEFFFF | v3);
}

- (UIPanelController)initWithOwningViewController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = UIPanelController;
  v5 = [(UIPanelController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(UIPanelController *)v5 setOwningViewController:controllerCopy];
    v7 = objc_alloc_init(_UIPanelInternalState);
    [(UIPanelController *)v6 _setInternalState:v7];

    v8 = objc_alloc_init(UISlidingBarConfiguration);
    _internalState = [(UIPanelController *)v6 _internalState];
    [_internalState setConfiguration:v8];

    [(UIPanelController *)v6 _setNeedsFirstTimeUpdateForTraitCollection:1];
  }

  return v6;
}

- (void)dealloc
{
  [(UIPanelController *)self _stopObservingKeyboardNotifications];
  [(UIPanelController *)self _setBorderViewsObserveViewBackgroundColor:0];
  v3.receiver = self;
  v3.super_class = UIPanelController;
  [(UIPanelController *)&v3 dealloc];
}

- (void)setLeadingTrailingWrapsNavigationController:(BOOL)controller
{
  if (controller)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_panelControllerFlags = (*&self->_panelControllerFlags & 0xFFFFBFFF | v3);
}

- (UIViewController)mainViewController
{
  _internalState = [(UIPanelController *)self _internalState];
  mainViewController = [_internalState mainViewController];

  return mainViewController;
}

- (void)setMainViewController:(id)controller changingParentage:(BOOL)parentage animateTransition:(BOOL)transition
{
  parentageCopy = parentage;
  controllerCopy = controller;
  _internalState = [(UIPanelController *)self _internalState];
  mainViewController = [_internalState mainViewController];

  if (mainViewController != controllerCopy)
  {
    if (parentageCopy)
    {
      [(UIPanelController *)self _removeIdentifiedChildViewController:mainViewController];
    }

    _internalState2 = [(UIPanelController *)self _internalState];
    [_internalState2 setMainViewController:controllerCopy];
  }

  if (parentageCopy)
  {
    [(UIPanelController *)self _addIdentifiedChildViewController:controllerCopy];
  }
}

- (UIViewController)leadingViewController
{
  _internalState = [(UIPanelController *)self _internalState];
  leadingViewController = [_internalState leadingViewController];

  return leadingViewController;
}

- (void)setLeadingViewController:(id)controller changingParentage:(BOOL)parentage
{
  parentageCopy = parentage;
  controllerCopy = controller;
  _internalState = [(UIPanelController *)self _internalState];
  leadingViewController = [_internalState leadingViewController];

  if (leadingViewController != controllerCopy)
  {
    if (parentageCopy)
    {
      [(UIPanelController *)self _removeIdentifiedChildViewController:leadingViewController];
    }

    _internalState2 = [(UIPanelController *)self _internalState];
    [_internalState2 setLeadingViewController:controllerCopy];
  }

  if (parentageCopy)
  {
    [(UIPanelController *)self _addIdentifiedChildViewController:controllerCopy];
  }
}

- (UIViewController)trailingViewController
{
  _internalState = [(UIPanelController *)self _internalState];
  trailingViewController = [_internalState trailingViewController];

  return trailingViewController;
}

- (void)setTrailingViewController:(id)controller changingParentage:(BOOL)parentage
{
  parentageCopy = parentage;
  controllerCopy = controller;
  _internalState = [(UIPanelController *)self _internalState];
  trailingViewController = [_internalState trailingViewController];

  if (trailingViewController != controllerCopy)
  {
    if (parentageCopy)
    {
      [(UIPanelController *)self _removeIdentifiedChildViewController:trailingViewController];
    }

    _internalState2 = [(UIPanelController *)self _internalState];
    [_internalState2 setTrailingViewController:controllerCopy];
  }

  if (parentageCopy)
  {
    [(UIPanelController *)self _addIdentifiedChildViewController:controllerCopy];
  }
}

- (UIViewController)supplementaryViewController
{
  _internalState = [(UIPanelController *)self _internalState];
  supplementaryViewController = [_internalState supplementaryViewController];

  return supplementaryViewController;
}

- (void)setSupplementaryViewController:(id)controller changingParentage:(BOOL)parentage
{
  parentageCopy = parentage;
  controllerCopy = controller;
  _internalState = [(UIPanelController *)self _internalState];
  supplementaryViewController = [_internalState supplementaryViewController];

  if (supplementaryViewController != controllerCopy)
  {
    if (parentageCopy)
    {
      [(UIPanelController *)self _removeIdentifiedChildViewController:supplementaryViewController];
    }

    _internalState2 = [(UIPanelController *)self _internalState];
    [_internalState2 setSupplementaryViewController:controllerCopy];
  }

  if (parentageCopy)
  {
    [(UIPanelController *)self _addIdentifiedChildViewController:controllerCopy];
  }
}

- (void)setPreservedDetailController:(id)controller
{
  controllerCopy = controller;
  _internalState = [(UIPanelController *)self _internalState];
  [_internalState setPreservedDetailController:controllerCopy];
}

- (UIViewController)preservedDetailController
{
  _internalState = [(UIPanelController *)self _internalState];
  preservedDetailController = [_internalState preservedDetailController];

  return preservedDetailController;
}

- (void)setCollapsedViewController:(id)controller
{
  controllerCopy = controller;
  _internalState = [(UIPanelController *)self _internalState];
  [_internalState setCollapsedViewController:controllerCopy];
}

- (UIViewController)collapsedViewController
{
  _internalState = [(UIPanelController *)self _internalState];
  collapsedViewController = [_internalState collapsedViewController];

  return collapsedViewController;
}

- (UIPanelControllerDelegate)delegate
{
  _internalState = [(UIPanelController *)self _internalState];
  delegate = [_internalState delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  _internalState = [(UIPanelController *)self _internalState];
  delegate = [_internalState delegate];

  if (delegate != delegateCopy)
  {
    _internalState2 = [(UIPanelController *)self _internalState];
    [_internalState2 setDelegate:delegateCopy];

    if (objc_opt_respondsToSelector())
    {
      v7 = 0x8000;
    }

    else
    {
      v7 = 0;
    }

    self->_panelControllerFlags = (*&self->_panelControllerFlags & 0xFFFF7FFF | v7);
  }
}

- (UISlidingBarConfiguration)configuration
{
  _internalState = [(UIPanelController *)self _internalState];
  configuration = [_internalState configuration];
  v4 = [configuration copy];

  return v4;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _internalState = [(UIPanelController *)self _internalState];
  configuration = [_internalState configuration];
  v6 = [configurationCopy isEqual:configuration];

  if ((v6 & 1) == 0)
  {
    _internalState2 = [(UIPanelController *)self _internalState];
    [_internalState2 setConfiguration:configurationCopy];

    [(UIPanelController *)self _setNeedsDeferredUpdate];
  }
}

- (UISlidingBarStateRequest)stateRequest
{
  _internalState = [(UIPanelController *)self _internalState];
  stateRequest = [_internalState stateRequest];
  v4 = [stateRequest copy];

  return v4;
}

- (void)setStateRequest:(id)request
{
  requestCopy = request;
  _internalState = [(UIPanelController *)self _internalState];
  stateRequest = [_internalState stateRequest];

  if (stateRequest != requestCopy)
  {
    _internalState2 = [(UIPanelController *)self _internalState];
    [_internalState2 setStateRequest:requestCopy];

    if (!requestCopy || !stateRequest || ([stateRequest isEqual:requestCopy] & 1) == 0)
    {
      [(UIPanelController *)self _setNeedsDeferredUpdate];
    }
  }
}

- (UILayoutContainerView)view
{
  view = self->_view;
  if (!view)
  {
    [(UIPanelController *)self loadView];
    view = self->_view;
  }

  return view;
}

- (void)loadView
{
  delegate = [(UIPanelController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(UIPanelController *)self delegate];
    v5 = [delegate2 viewClassForPanelController:self];
  }

  else
  {
    v5 = objc_opt_class();
  }

  owningViewController = [(UIPanelController *)self owningViewController];
  [owningViewController _defaultInitialViewFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [[v5 alloc] initWithFrame:{v8, v10, v12, v14}];
  if (dyld_program_sdk_at_least())
  {
    delegate3 = [(UIPanelController *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegate4 = [(UIPanelController *)self delegate];
      primaryBackgroundColor = [delegate4 primaryBackgroundColor];
      [(UILayoutContainerView *)v15 setDefaultBackgroundColor:primaryBackgroundColor];

      goto LABEL_10;
    }

    v20 = +[UIColor _splitViewBorderColor];
  }

  else
  {
    v20 = +[UIColor systemGrayColor];
  }

  delegate4 = v20;
  [(UILayoutContainerView *)v15 setDefaultBackgroundColor:v20];
LABEL_10:

  [(UIView *)v15 setAutoresizingMask:18];
  [(UILayoutContainerView *)v15 setDelegate:self];
  v21 = [_UIPanelControllerContentView alloc];
  [(UIView *)v15 bounds];
  v23 = [(UIView *)v21 initWithFrame:?];
  [(_UIPanelControllerContentView *)v23 _setPanelController:self];
  [(UIView *)v23 setAutoresizingMask:18];
  [(UILayoutContainerView *)v15 addSubview:v23];
  [(UIPanelController *)self _setContentView:v23];
  view = self->_view;
  self->_view = v15;
}

- (void)_addIdentifiedChildViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v21 = controllerCopy;
    parentViewController = [controllerCopy parentViewController];
    owningViewController = [(UIPanelController *)self owningViewController];
    v7 = owningViewController;
    if (parentViewController == owningViewController)
    {

LABEL_15:
      goto LABEL_16;
    }

    owningViewController2 = [(UIPanelController *)self owningViewController];
    childViewControllers = [owningViewController2 childViewControllers];
    v10 = [childViewControllers indexOfObjectIdenticalTo:v21];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_16:
      [(UIPanelController *)self _setNeedsDeferredUpdate];
      controllerCopy = v21;
      goto LABEL_17;
    }

    owningViewController3 = [(UIPanelController *)self owningViewController];
    [owningViewController3 addChildViewController:v21];

    if (![(UIPanelController *)self style])
    {
      leadingViewController = [(UIPanelController *)self leadingViewController];
      if (leadingViewController == v21)
      {
      }

      else
      {
        trailingViewController = [(UIPanelController *)self trailingViewController];

        if (trailingViewController != v21)
        {
          goto LABEL_11;
        }
      }

      v14 = [UITraitCollection traitCollectionWithHorizontalSizeClass:1];
      owningViewController4 = [(UIPanelController *)self owningViewController];
      [owningViewController4 setOverrideTraitCollection:v14 forChildViewController:v21];
    }

LABEL_11:
    _contentView = [(UIPanelController *)self _contentView];
    if (_contentView)
    {
      v17 = _contentView;
      style = [(UIPanelController *)self style];

      if (!style)
      {
        _contentView2 = [(UIPanelController *)self _contentView];
        view = [v21 view];
        [_contentView2 addSubview:view];
      }
    }

    parentViewController = [(UIPanelController *)self owningViewController];
    [v21 didMoveToParentViewController:parentViewController];
    goto LABEL_15;
  }

LABEL_17:
}

- (void)_removeIdentifiedChildViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];
  owningViewController = [(UIPanelController *)self owningViewController];

  if (parentViewController == owningViewController)
  {
    [controllerCopy willMoveToParentViewController:0];
    _existingView = [controllerCopy _existingView];
    v7 = _existingView;
    if (self->_view)
    {
      superview = [_existingView superview];
      view = self->_view;

      if (superview == view)
      {
        [v7 removeFromSuperview];
      }
    }

    [controllerCopy removeFromParentViewController];
  }
}

- (void)removeChildViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v20 = controllerCopy;
    if (![(UIPanelController *)self _changingViewControllerParentage])
    {
      _internalState = [(UIPanelController *)self _internalState];
      leadingViewController = [_internalState leadingViewController];

      if (leadingViewController == v20)
      {
        _internalState2 = [(UIPanelController *)self _internalState];
        [_internalState2 setLeadingViewController:0];
      }

      _internalState3 = [(UIPanelController *)self _internalState];
      mainViewController = [_internalState3 mainViewController];

      if (mainViewController == v20)
      {
        _internalState4 = [(UIPanelController *)self _internalState];
        [_internalState4 setMainViewController:0];
      }

      _internalState5 = [(UIPanelController *)self _internalState];
      trailingViewController = [_internalState5 trailingViewController];

      if (trailingViewController == v20)
      {
        _internalState6 = [(UIPanelController *)self _internalState];
        [_internalState6 setTrailingViewController:0];
      }

      _internalState7 = [(UIPanelController *)self _internalState];
      collapsedViewController = [_internalState7 collapsedViewController];

      if (collapsedViewController == v20)
      {
        _internalState8 = [(UIPanelController *)self _internalState];
        [_internalState8 setCollapsedViewController:0];
      }

      _internalState9 = [(UIPanelController *)self _internalState];
      preservedDetailController = [_internalState9 preservedDetailController];

      if (preservedDetailController == v20)
      {
        _internalState10 = [(UIPanelController *)self _internalState];
        [_internalState10 setPreservedDetailController:0];
      }
    }

    [(UIPanelController *)self _setNeedsDeferredUpdate];
    controllerCopy = v20;
  }
}

- (id)allViewControllers
{
  v3 = objc_opt_new();
  mainViewController = [(UIPanelController *)self mainViewController];

  if (mainViewController)
  {
    mainViewController2 = [(UIPanelController *)self mainViewController];
    [v3 addObject:mainViewController2];
  }

  leadingViewController = [(UIPanelController *)self leadingViewController];

  if (leadingViewController)
  {
    leadingViewController2 = [(UIPanelController *)self leadingViewController];
    [v3 addObject:leadingViewController2];
  }

  trailingViewController = [(UIPanelController *)self trailingViewController];

  if (trailingViewController)
  {
    trailingViewController2 = [(UIPanelController *)self trailingViewController];
    [v3 addObject:trailingViewController2];
  }

  collapsedViewController = [(UIPanelController *)self collapsedViewController];
  if (collapsedViewController)
  {
    v11 = [v3 indexOfObjectIdenticalTo:collapsedViewController];
    if (v11)
    {
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v3 removeObjectAtIndex:v11];
      }

      [v3 insertObject:collapsedViewController atIndex:0];
    }
  }

  return v3;
}

- (BOOL)isAnimating
{
  _internalState = [(UIPanelController *)self _internalState];
  animationState = [_internalState animationState];
  if (animationState)
  {
    _internalState2 = [(UIPanelController *)self _internalState];
    animationState2 = [_internalState2 animationState];
    [animationState2 progress];
    if (v7 >= 1.0)
    {
      _internalState3 = [(UIPanelController *)self _internalState];
      animationState3 = [_internalState3 animationState];
      isFinishingAnimation = [animationState3 isFinishingAnimation];
    }

    else
    {
      isFinishingAnimation = 1;
    }
  }

  else
  {
    isFinishingAnimation = 0;
  }

  return isFinishingAnimation;
}

- (void)setDimmingView:(id)view
{
  viewCopy = view;
  if (self->_dimmingView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_dimmingView, view);
    [(UIPanelController *)self _setNeedsDeferredUpdate];
    viewCopy = v6;
  }
}

- (int64_t)collapsedState
{
  _internalState = [(UIPanelController *)self _internalState];
  collapsedState = [_internalState collapsedState];

  return collapsedState;
}

- (BOOL)isCollapsed
{
  _internalState = [(UIPanelController *)self _internalState];
  collapsedState = [_internalState collapsedState];

  return (collapsedState - 1) < 2;
}

- (void)addWrapperBlockForNextUpdate:(id)update
{
  updateCopy = update;
  wrapperBlocksForNextUpdate = self->_wrapperBlocksForNextUpdate;
  aBlock = updateCopy;
  if (!wrapperBlocksForNextUpdate)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_wrapperBlocksForNextUpdate;
    self->_wrapperBlocksForNextUpdate = array;

    updateCopy = aBlock;
    wrapperBlocksForNextUpdate = self->_wrapperBlocksForNextUpdate;
  }

  v8 = _Block_copy(updateCopy);
  [(NSMutableArray *)wrapperBlocksForNextUpdate addObject:v8];
}

- (id)gatherMultitaskingDragExclusionRectsFromVisibleColumns
{
  _internalState = [(UIPanelController *)self _internalState];
  leadingViewController = [_internalState leadingViewController];

  _internalState2 = [(UIPanelController *)self _internalState];
  mainViewController = [_internalState2 mainViewController];

  _internalState3 = [(UIPanelController *)self _internalState];
  trailingViewController = [_internalState3 trailingViewController];

  _internalState4 = [(UIPanelController *)self _internalState];
  supplementaryViewController = [_internalState4 supplementaryViewController];

  _lastComputedPublicState = [(UIPanelController *)self _lastComputedPublicState];
  _collapsedState = [_lastComputedPublicState _collapsedState];

  _internalState5 = [(UIPanelController *)self _internalState];
  collapsedViewController = [_internalState5 collapsedViewController];

  owningViewController = [(UIPanelController *)self owningViewController];
  viewIfLoaded = [owningViewController viewIfLoaded];

  if (viewIfLoaded)
  {
    v17 = _collapsedState - 1;
    array = [MEMORY[0x1E695DF70] array];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __75__UIPanelController_gatherMultitaskingDragExclusionRectsFromVisibleColumns__block_invoke;
    v33 = &unk_1E7102F90;
    v34 = viewIfLoaded;
    v35 = array;
    v19 = array;
    v20 = _Block_copy(&v30);
    v25 = v20;
    v26 = *(v20 + 2);
    if (v17 > 1)
    {
      v26(v20, leadingViewController, v21, v22, v23, v24);
      (v25)[2](v25, mainViewController);
      (v25)[2](v25, trailingViewController);
      v26 = v25[2];
      v20 = v25;
      v27 = supplementaryViewController;
    }

    else
    {
      v27 = collapsedViewController;
    }

    (v26)(v20, v27);
    v28 = [v19 copy];
  }

  else
  {
    v28 = MEMORY[0x1E695E0F0];
  }

  return v28;
}

void __75__UIPanelController_gatherMultitaskingDragExclusionRectsFromVisibleColumns__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _effectiveViewControllerForMultitaskingDragExclusionRects];
    v6 = [v4 _effectiveViewControllerForMultitaskingDragExclusionRects];
    v7 = [v6 viewIfLoaded];

    if (v7)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v16 = v5;
      v8 = [v5 _multitaskingDragExclusionRects];
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          v12 = 0;
          do
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(a1 + 32);
            [*(*(&v17 + 1) + 8 * v12) CGRectValue];
            [v13 convertRect:v7 fromView:?];
            v14 = *(a1 + 40);
            v15 = [MEMORY[0x1E696B098] valueWithCGRect:?];
            [v14 addObject:v15];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }

      v5 = v16;
    }
  }
}

- (BOOL)_willCollapseWithNewTraitCollection:(id)collection oldTraitCollection:(id)traitCollection
{
  traitCollectionCopy = traitCollection;
  collectionCopy = collection;
  _internalState = [(UIPanelController *)self _internalState];
  collapsedState = [_internalState collapsedState];

  horizontalSizeClass = [traitCollectionCopy horizontalSizeClass];
  horizontalSizeClass2 = [collectionCopy horizontalSizeClass];

  if (horizontalSizeClass2 != 1)
  {
    return 0;
  }

  v12 = ![(UIPanelController *)self _hasUpdatedForTraitCollection];
  if (horizontalSizeClass == 2)
  {
    LOBYTE(v12) = 1;
  }

  return !collapsedState || v12;
}

- (BOOL)_willExpandWithNewTraitCollection:(id)collection oldTraitCollection:(id)traitCollection
{
  collectionCopy = collection;
  traitCollectionCopy = traitCollection;
  if ([(UIPanelController *)self _willCollapseWithNewTraitCollection:collectionCopy oldTraitCollection:traitCollectionCopy])
  {
    v8 = 0;
  }

  else
  {
    _internalState = [(UIPanelController *)self _internalState];
    collapsedState = [_internalState collapsedState];

    horizontalSizeClass = [traitCollectionCopy horizontalSizeClass];
    horizontalSizeClass2 = [collectionCopy horizontalSizeClass];
    v14 = horizontalSizeClass == 1 || collapsedState == 2;
    v8 = horizontalSizeClass2 == 2 && v14;
  }

  return v8;
}

- (void)_updateForTraitCollection:(id)collection oldTraitCollection:(id)traitCollection withTransitionCoordinator:(id)coordinator
{
  v29 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  traitCollectionCopy = traitCollection;
  coordinatorCopy = coordinator;
  _internalState = [(UIPanelController *)self _internalState];
  leadingViewController = [_internalState leadingViewController];
  if (!leadingViewController)
  {
    leadingViewController = [(UIPanelController *)self _internalState];
    mainViewController = [leadingViewController mainViewController];
    if (!mainViewController)
    {
      mainViewController = [(UIPanelController *)self _internalState];
      trailingViewController = [mainViewController trailingViewController];
      if (!trailingViewController)
      {
        _internalState2 = [(UIPanelController *)self _internalState];
        collapsedViewController = [_internalState2 collapsedViewController];

        if (!collapsedViewController)
        {
          goto LABEL_13;
        }

        goto LABEL_7;
      }
    }
  }

LABEL_7:
  if ([(UIPanelController *)self _willCollapseWithNewTraitCollection:collectionCopy oldTraitCollection:traitCollectionCopy])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v17 = *(__UILogGetCategoryCachedImpl("UIPanelController", &_updateForTraitCollection_oldTraitCollection_withTransitionCoordinator____s_category) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        _internalState3 = [(UIPanelController *)self _internalState];
        collapsedState = [_internalState3 collapsedState];
        owningViewController = [(UIPanelController *)self owningViewController];
        traitCollection = [owningViewController traitCollection];
        v23 = 134284035;
        v24 = collapsedState;
        v25 = 2113;
        v26 = traitCollection;
        v27 = 2113;
        v28 = collectionCopy;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "About to collapse, current collapsedState : %{private}ld, current traitCollection: %{private}@ new traitCollection: %{private}@", &v23, 0x20u);
      }
    }

    [(UIPanelController *)self _collapseWithTransitionCoordinator:coordinatorCopy];
  }

  else if ([(UIPanelController *)self _willExpandWithNewTraitCollection:collectionCopy oldTraitCollection:traitCollectionCopy])
  {
    [(UIPanelController *)self _expandWithTransitionCoordinator:coordinatorCopy];
  }

  [(UIPanelController *)self _setHasUpdatedForTraitCollection:1];
LABEL_13:
}

- (void)_collapseWithTransitionCoordinator:(id)coordinator
{
  v81 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  _internalState = [(UIPanelController *)self _internalState];
  collapsedState = [_internalState collapsedState];

  if ((collapsedState - 1) <= 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = *(__UILogGetCategoryCachedImpl("UIPanelController", &_collapseWithTransitionCoordinator____s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134283521;
        *(&buf + 4) = collapsedState;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring redundant collapse request (non-workaround path): current collapsedState: %{private}ld", &buf, 0xCu);
      }
    }

    goto LABEL_38;
  }

  _internalState2 = [(UIPanelController *)self _internalState];
  [_internalState2 setCollapsedState:1];

  [(UIPanelController *)self setRunExpandScheduled:0];
  delegate = [(UIPanelController *)self delegate];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__56;
  v79 = __Block_byref_object_dispose__56;
  v80 = 0;
  if (objc_opt_respondsToSelector())
  {
    v10 = [delegate primaryViewControllerForCollapsingPanelController:self];
    v11 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v10;
  }

  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__56;
  v74 = __Block_byref_object_dispose__56;
  _internalState3 = [(UIPanelController *)self _internalState];
  supplementaryViewController = [_internalState3 supplementaryViewController];

  if (*(*(&buf + 1) + 40))
  {
    v13 = 0;
  }

  else
  {
    leadingViewController = [(UIPanelController *)self leadingViewController];
    v15 = leadingViewController;
    if (leadingViewController)
    {
      v16 = 0;
      mainViewController = leadingViewController;
    }

    else
    {
      trailingViewController = [(UIPanelController *)self trailingViewController];
      v3 = trailingViewController;
      if (trailingViewController)
      {
        v16 = 0;
        mainViewController = trailingViewController;
      }

      else
      {
        mainViewController = v71[5];
        if (mainViewController)
        {
          v16 = 0;
          v3 = 0;
        }

        else
        {
          mainViewController = [(UIPanelController *)self mainViewController];
          v3 = 0;
          v16 = 1;
        }
      }
    }

    objc_storeStrong((*(&buf + 1) + 40), mainViewController);
    if (v16)
    {
    }

    if (!v15)
    {
    }

    v13 = *(*(&buf + 1) + 40) == v71[5];
  }

  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__56;
  v68 = __Block_byref_object_dispose__56;
  mainViewController2 = [(UIPanelController *)self mainViewController];
  v19 = v65;
  if (v65[5])
  {
    [(UIPanelController *)self setPreservedDetailController:?];
    v19 = v65;
    v20 = v65[5];
  }

  else
  {
    v20 = 0;
  }

  if (v20 == *(*(&buf + 1) + 40))
  {
    v19[5] = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v22 = 2;
    goto LABEL_34;
  }

  v21 = [delegate topColumnForCollapsingPanelController:self];
  v22 = v21;
  switch(v21)
  {
    case 0:
      goto LABEL_31;
    case 1:
LABEL_32:
      v26 = v65[5];
      v65[5] = 0;

      break;
    case 3:
      v23 = [delegate viewControllerForColumn:3];
      v24 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v23;

LABEL_31:
      v25 = v71[5];
      v71[5] = 0;

      goto LABEL_32;
  }

LABEL_34:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E71037F0;
  aBlock[4] = self;
  p_buf = &buf;
  v63 = v13;
  v60 = &v70;
  v61 = &v64;
  v62 = v22;
  v27 = delegate;
  v57 = v27;
  v28 = coordinatorCopy;
  v58 = v28;
  v29 = _Block_copy(aBlock);
  style = [(UIPanelController *)self style];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v53 = __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke_387;
  v54 = &__block_descriptor_33_e24___UIView_16__0__UIView_8l;
  v55 = style != 0;
  leadingViewController2 = [(UIPanelController *)self leadingViewController];
  _existingView = [leadingViewController2 _existingView];
  v33 = __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke_387(v52, _existingView);

  supplementaryViewController2 = [(UIPanelController *)self supplementaryViewController];
  _existingView2 = [supplementaryViewController2 _existingView];
  v36 = v53(v52, _existingView2);

  trailingViewController2 = [(UIPanelController *)self trailingViewController];
  _existingView3 = [trailingViewController2 _existingView];
  v39 = v53(v52, _existingView3);

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke_2_390;
  v46[3] = &unk_1E7103838;
  v40 = v33;
  v47 = v40;
  v41 = v36;
  v48 = v41;
  v42 = v39;
  v49 = v42;
  selfCopy = self;
  v43 = v27;
  v51 = v43;
  v44 = _Block_copy(v46);
  if (v28)
  {
    [v28 animateAlongsideTransition:v29 completion:v44];
  }

  else
  {
    v29[2](v29, 0);
    v44[2](v44, 0);
  }

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v70, 8);

  _Block_object_dispose(&buf, 8);
LABEL_38:
}

void __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalState];
  v3 = [v2 collapsedState];

  if (v3 == 1)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke_2;
    v6[3] = &unk_1E71037C8;
    v4 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v12 = *(a1 + 88);
    v9 = *(a1 + 56);
    v5 = *(a1 + 80);
    v10 = *(a1 + 72);
    v11 = v5;
    v7 = v4;
    v8 = *(a1 + 48);
    [UIView performWithoutAnimation:v6];
  }
}

void __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke_3;
  v4[3] = &unk_1E71037C8;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v10 = *(a1 + 88);
  v7 = *(a1 + 56);
  v3 = *(a1 + 80);
  v8 = *(a1 + 72);
  v9 = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  [UIViewController _performWithoutDeferringTransitions:v4];
}

void __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke_4;
  v4[3] = &unk_1E71037C8;
  v4[4] = v2;
  v10 = *(a1 + 88);
  v7 = *(a1 + 56);
  v3 = *(a1 + 80);
  v8 = *(a1 + 72);
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 _withDisabledAppearanceTransitionsPerform:v4];
}

uint64_t __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _setChangingViewControllerParentage:1];
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = [*(a1 + 32) _internalState];
  [v3 setCollapsedViewController:v2];

  v4 = *(*(*(a1 + 56) + 8) + 40);
  if (v4)
  {
    v5 = *(a1 + 80);
    if (v5 == 3)
    {
      v6 = 0;
    }

    else
    {
      if ([*(a1 + 32) leadingTrailingWrapsNavigationController] && (*(a1 + 88) & 1) == 0)
      {
        v7 = [*(*(*(a1 + 56) + 8) + 40) childViewControllers];
        v6 = [v7 firstObject];
      }

      else
      {
        v6 = *(*(*(a1 + 56) + 8) + 40);
      }

      [v6 _setAllowNestedNavigationControllers:1];
      v4 = *(*(*(a1 + 56) + 8) + 40);
    }

    [v4 _setOverrideUserInterfaceRenderingMode:0];
    [*(*(*(a1 + 64) + 8) + 40) _setOverrideUserInterfaceRenderingMode:0];
    [*(*(*(a1 + 72) + 8) + 40) _setOverrideUserInterfaceRenderingMode:0];
    [*(a1 + 32) _addIdentifiedChildViewController:*(*(*(a1 + 56) + 8) + 40)];
    if (v5 != 3 && ((objc_opt_respondsToSelector() & 1) == 0 || ([*(a1 + 40) panelController:*(a1 + 32) collapseOntoPrimaryViewController:*(*(*(a1 + 56) + 8) + 40)] & 1) == 0))
    {
      v9 = *(*(*(a1 + 72) + 8) + 40);
      if (v9 || *(*(*(a1 + 64) + 8) + 40))
      {
        if (![v9 _isNavigationController] || (objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "viewControllers"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
        {
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([*(a1 + 40) panelController:*(a1 + 32) collapsePrimaryViewController:v6 withFallbackSecondaryViewController:*(*(*(a1 + 72) + 8) + 40) onTopOfSupplementaryViewController:*(*(*(a1 + 64) + 8) + 40) transitionCoordinator:*(a1 + 48)] & 1) == 0)
          {
            if (!*(*(*(a1 + 72) + 8) + 40))
            {
              if (os_variant_has_internal_diagnostics())
              {
                v13 = __UIFaultDebugAssertLog();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Incomplete collapse because of unexpectedly nil secondary view controller.", buf, 2u);
                }
              }

              else
              {
                v12 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_VisualizeMaterials_block_invoke___s_category) + 8);
                if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                {
                  *v14 = 0;
                  _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Incomplete collapse because of unexpectedly nil secondary view controller.", v14, 2u);
                }
              }
            }

            if (*(*(*(a1 + 72) + 8) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [*(a1 + 40) panelController:*(a1 + 32) collapsePrimaryViewController:v6 withFallbackSecondaryViewController:*(*(*(a1 + 72) + 8) + 40) transitionCoordinator:*(a1 + 48)];
            }
          }
        }
      }
    }
  }

  return [*(a1 + 32) _setChangingViewControllerParentage:0];
}

id __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke_387(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != 1)
  {
    goto LABEL_4;
  }

  v5 = [v3 window];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 autoresizingMask];
  if ((v6 & 2) != 0)
  {
    [v4 setAutoresizingMask:v6 & 0xFFFFFFFD];
    v5 = v4;
  }

  else
  {
LABEL_4:
    v5 = 0;
  }

LABEL_5:

  return v5;
}

void __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke_2_390(id *a1, void *a2)
{
  v9 = a2;
  v3 = a1[4];
  if (v3)
  {
    [a1[4] setAutoresizingMask:{objc_msgSend(v3, "autoresizingMask") | 2}];
  }

  v4 = a1[5];
  if (v4)
  {
    [a1[5] setAutoresizingMask:{objc_msgSend(v4, "autoresizingMask") | 2}];
  }

  v5 = a1[6];
  if (v5)
  {
    [a1[6] setAutoresizingMask:{objc_msgSend(v5, "autoresizingMask") | 2}];
  }

  v6 = [a1[7] _internalState];
  v7 = [v6 collapsedState];

  if (v7 == 1)
  {
    v8 = [a1[7] _internalState];
    [v8 setCollapsedState:2];

    [a1[7] _setNeedsDeferredUpdate];
    if (objc_opt_respondsToSelector())
    {
      [a1[8] panelControllerDidCollapse:a1[7]];
    }
  }
}

- (void)_expandWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  _internalState = [(UIPanelController *)self _internalState];
  [_internalState setCollapsedState:3];

  delegate = [(UIPanelController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0 || (-[UIPanelController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), [v8 primaryViewControllerForExpandingPanelController:self], collapsedViewController = objc_claimAutoreleasedReturnValue(), v8, !collapsedViewController))
  {
    _internalState2 = [(UIPanelController *)self _internalState];
    collapsedViewController = [_internalState2 collapsedViewController];
  }

  delegate2 = [(UIPanelController *)self delegate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__UIPanelController__expandWithTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E7101978;
  aBlock[4] = self;
  v12 = collapsedViewController;
  v30 = v12;
  v13 = delegate2;
  v31 = v13;
  v14 = _Block_copy(aBlock);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __54__UIPanelController__expandWithTransitionCoordinator___block_invoke_5;
  v27[3] = &unk_1E70F4990;
  v27[4] = self;
  v15 = v13;
  v28 = v15;
  v16 = _Block_copy(v27);
  if (UIApp)
  {
    if (![(UIPanelController *)self style])
    {
      goto LABEL_13;
    }

    _window = [v12 _window];
    if (!_window)
    {
      goto LABEL_14;
    }

    _isNavigationController = [v12 _isNavigationController];

    if (_isNavigationController)
    {
      _transitionConductor = [v12 _transitionConductor];
      _window = [_transitionConductor transitionCoordinator];

      if (_window && _window != coordinatorCopy)
      {
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __54__UIPanelController__expandWithTransitionCoordinator___block_invoke_6;
        v23 = &unk_1E7101FE0;
        selfCopy = self;
        v25 = v14;
        v26 = v16;
        [_window animateAlongsideTransition:0 completion:&v20];
        [(UIPanelController *)self setRunExpandScheduled:1, v20, v21, v22, v23, selfCopy];

LABEL_19:
        goto LABEL_20;
      }
    }

    else
    {
LABEL_13:
      _window = 0;
    }

LABEL_14:
    if (![(UIPanelController *)self isRunExpandScheduled])
    {
      if (coordinatorCopy)
      {
        [coordinatorCopy animateAlongsideTransition:v14 completion:v16];
        [(UIPanelController *)self setRunExpandScheduled:1];
      }

      else
      {
        (*(v14 + 2))(v14, 0);
        (*(v16 + 2))(v16, 0);
      }
    }

    goto LABEL_19;
  }

  if (coordinatorCopy)
  {
    [coordinatorCopy animateAlongsideTransition:v14 completion:v16];
  }

  else
  {
    (*(v14 + 2))(v14, 0);
    (*(v16 + 2))(v16, 0);
  }

LABEL_20:
}

void __54__UIPanelController__expandWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalState];
  v3 = [v2 collapsedState];

  if (v3 == 3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__UIPanelController__expandWithTransitionCoordinator___block_invoke_2;
    v5[3] = &unk_1E70F6228;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    v7 = *(a1 + 48);
    [UIView performWithoutAnimation:v5];
  }
}

void __54__UIPanelController__expandWithTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__UIPanelController__expandWithTransitionCoordinator___block_invoke_3;
  v3[3] = &unk_1E70F6228;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  [UIViewController _performWithoutDeferringTransitions:v3];
}

void __54__UIPanelController__expandWithTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__UIPanelController__expandWithTransitionCoordinator___block_invoke_4;
  v3[3] = &unk_1E70F6228;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _withDisabledAppearanceTransitionsPerform:v3];
}

void __54__UIPanelController__expandWithTransitionCoordinator___block_invoke_4(id *a1)
{
  [a1[4] _setChangingViewControllerParentage:1];
  if (!a1[5])
  {
    v3 = 0;
    v17 = 0;
    goto LABEL_26;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1[6] panelController:a1[4] separateSecondaryViewControllerFromPrimaryViewController:a1[5]];
  }

  else
  {
    v2 = 0;
  }

  v17 = v2;
  if (a1[5])
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [a1[6] panelController:a1[4] separateSupplementaryViewControllerFromPrimaryViewController:a1[5]];
      if (v3)
      {
        [a1[4] _addIdentifiedChildViewController:v3];
      }
    }

    else
    {
      v3 = 0;
    }

    if (v17)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if (v2)
    {
LABEL_14:
      [a1[4] _addIdentifiedChildViewController:v17];
    }
  }

  v4 = a1[5];
  if (!v4)
  {
    goto LABEL_26;
  }

  v5 = [v4 parentViewController];
  v6 = [a1[4] owningViewController];
  if (v5 != v6)
  {
    goto LABEL_25;
  }

  v7 = a1[5];
  v8 = [a1[4] mainViewController];
  if (v7 == v8)
  {
LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  v9 = a1[5];
  v10 = [a1[4] leadingViewController];
  if (v9 == v10)
  {
LABEL_23:

    goto LABEL_24;
  }

  v11 = a1[5];
  v12 = [a1[4] trailingViewController];
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_23;
  }

  v14 = a1[5];
  v15 = [a1[4] supplementaryViewController];

  if (v14 != v15)
  {
    [a1[4] _removeIdentifiedChildViewController:a1[5]];
  }

LABEL_26:
  [a1[4] _setChangingViewControllerParentage:0];
  [a1[5] _setAllowNestedNavigationControllers:0];
  v16 = [a1[4] _internalState];
  [v16 setCollapsedViewController:0];
}

uint64_t __54__UIPanelController__expandWithTransitionCoordinator___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalState];
  v3 = [v2 collapsedState];

  if (v3 == 3)
  {
    v4 = [*(a1 + 32) _internalState];
    [v4 setCollapsedState:0];

    [*(a1 + 32) setPreservedDetailController:0];
    [*(a1 + 32) _setNeedsDeferredUpdate];
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) panelControllerDidExpand:*(a1 + 32)];
    }
  }

  v5 = *(a1 + 32);

  return [v5 setRunExpandScheduled:0];
}

uint64_t __54__UIPanelController__expandWithTransitionCoordinator___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalState];
  v3 = [v2 collapsedState];

  if (v3 == 3)
  {
    (*(*(a1 + 40) + 16))();
    (*(*(a1 + 48) + 16))();
  }

  v4 = *(a1 + 32);

  return [v4 setRunExpandScheduled:0];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator superBlock:(id)block
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  blockCopy = block;
  owningViewController = [(UIPanelController *)self owningViewController];
  traitCollection = [owningViewController traitCollection];

  window = [(UIView *)self->_view window];
  if (window)
  {
    if (coordinatorCopy)
    {
      [coordinatorCopy targetTransform];
    }

    else
    {
      memset(&v17, 0, sizeof(v17));
    }

    if (!CGAffineTransformIsIdentity(&v17))
    {
      if ([(UIPanelController *)self _willCollapseWithNewTraitCollection:collectionCopy oldTraitCollection:traitCollection])
      {
      }

      else
      {
        v13 = [(UIPanelController *)self _willExpandWithNewTraitCollection:collectionCopy oldTraitCollection:traitCollection];

        if (!v13)
        {
          goto LABEL_12;
        }
      }

      _contentView = [(UIPanelController *)self _contentView];
      window = [_contentView snapshotViewAfterScreenUpdates:0];

      if (window)
      {
        v15 = [[_UIPanelControllerMeshAnimatingTransitionView alloc] initWithView:window];
        [(UIPanelController *)self _setSourceTransitionView:v15];
      }
    }
  }

LABEL_12:
  *&self->_panelControllerFlags |= 0x40u;
  [(UIPanelController *)self _updateForTraitCollection:collectionCopy oldTraitCollection:traitCollection withTransitionCoordinator:coordinatorCopy];
  *&self->_panelControllerFlags &= ~0x40u;
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (void)traitCollectionDidChange:(id)change toNewTraits:(id)traits
{
  changeCopy = change;
  traitsCopy = traits;
  if ([(UIPanelController *)self _hasUpdatedForTraitCollection])
  {
    if (dyld_program_sdk_at_least())
    {
      v7 = [traitsCopy horizontalSizeClass] == 1;
      if (v7 != [(UIPanelController *)self isCollapsed])
      {
        [(UIPanelController *)self _updateForTraitCollection:traitsCopy oldTraitCollection:changeCopy withTransitionCoordinator:0];
      }
    }
  }
}

- (void)_storeSuspendedConfiguration
{
  _internalState = [(UIPanelController *)self _internalState];
  configuration = [_internalState configuration];
  [(UIPanelController *)self _setSuspendedConfiguration:configuration];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator superBlock:(id)block
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  blockCopy = block;
  [(UIPanelController *)self _stopAnimationsBeginningInteraction:0];
  *&self->_panelControllerFlags |= 0x80u;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__UIPanelController_viewWillTransitionToSize_withTransitionCoordinator_superBlock___block_invoke;
  aBlock[3] = &unk_1E7103860;
  aBlock[4] = self;
  v67 = width;
  v68 = height;
  v11 = blockCopy;
  v66 = v11;
  v12 = _Block_copy(aBlock);
  _sourceTransitionView = [(UIPanelController *)self _sourceTransitionView];
  _contentView = [(UIPanelController *)self _contentView];
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&v69, 0, sizeof(v69));
  }

  v15 = 0;
  if (!CGAffineTransformIsIdentity(&v69) && !_sourceTransitionView)
  {
    if ((*(&self->_panelControllerFlags + 1) & 2) != 0)
    {
      v15 = 0;
    }

    else
    {
      autoresizesSubviews = [_contentView autoresizesSubviews];
      *&self->_panelControllerFlags |= 0x200u;
      [_contentView setAutoresizesSubviews:0];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __83__UIPanelController_viewWillTransitionToSize_withTransitionCoordinator_superBlock___block_invoke_2;
      v62[3] = &unk_1E70F5AF0;
      v62[4] = self;
      v63 = _contentView;
      v64 = autoresizesSubviews;
      v15 = _Block_copy(v62);
    }
  }

  v69.a = 0.0;
  *&v69.b = &v69;
  *&v69.c = 0x3032000000;
  *&v69.d = __Block_byref_object_copy__56;
  *&v69.tx = __Block_byref_object_dispose__56;
  v69.ty = 0.0;
  [_contentView bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [_contentView center];
  v41 = v26;
  v42 = v25;
  WeakRetained = objc_loadWeakRetained(&self->_owningViewController);
  _internalState = [(UIPanelController *)self _internalState];
  v29 = _transitionInsetsForViewController(WeakRetained, _internalState);
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __83__UIPanelController_viewWillTransitionToSize_withTransitionCoordinator_superBlock___block_invoke_3;
  v47[3] = &unk_1E71038B0;
  v47[4] = self;
  v36 = v15;
  v50 = v36;
  v37 = _sourceTransitionView;
  v48 = v37;
  v38 = _contentView;
  v49 = v38;
  v51 = &v69;
  v52 = v24;
  v53 = v22;
  v54 = v20;
  v55 = v18;
  v56 = v29;
  v57 = v31;
  v58 = v33;
  v59 = v35;
  v60 = v42;
  v61 = v41;
  [coordinatorCopy animateAlongsideTransition:v47 completion:0];
  v12[2](v12);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __83__UIPanelController_viewWillTransitionToSize_withTransitionCoordinator_superBlock___block_invoke_6;
  v43[3] = &unk_1E71038D8;
  v43[4] = self;
  v39 = v37;
  v44 = v39;
  v46 = &v69;
  v40 = v38;
  v45 = v40;
  [coordinatorCopy animateAlongsideTransition:0 completion:v43];

  _Block_object_dispose(&v69, 8);
}

void __83__UIPanelController_viewWillTransitionToSize_withTransitionCoordinator_superBlock___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) |= 0x100u;
  v14 = [*(a1 + 32) _internalState];
  v2 = [*(a1 + 32) _lastComputedPublicState];
  v3 = [*(a1 + 32) _lastPossiblePublicStates];
  v4 = [v14 copy];
  [*(a1 + 32) _setInternalState:v4];
  v5 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 panelControllerWillUpdate:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 32) view];
  v8 = [v4 computePossibleStatesGivenParentView:v7 withSize:{*(a1 + 48), *(a1 + 56)}];

  if (v6)
  {
    v9 = (v6)[2](v6, v8, 0);
    [*(a1 + 32) setStateRequest:v9];
  }

  v10 = [v4 stateRequest];

  if (!v10 || ([v4 stateRequest], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "_matchingState:", v8), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    v12 = [v8 firstObject];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 panelController:*(a1 + 32) willChangeToState:v12];
  }

  [*(a1 + 32) _setLastComputedPublicState:v12];
  [*(a1 + 32) _setLastPossiblePublicStates:v8];
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))();
  }

  [*(a1 + 32) _setInternalState:v14];
  [*(a1 + 32) _setLastComputedPublicState:v2];
  [*(a1 + 32) _setLastPossiblePublicStates:v3];
  *(*(a1 + 32) + 8) &= ~0x100u;
}

void __83__UIPanelController_viewWillTransitionToSize_withTransitionCoordinator_superBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v6 = [v5 _destTransitionView];

    if (!v6)
    {
      *(*(a1 + 32) + 8) |= 0x400u;
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __83__UIPanelController_viewWillTransitionToSize_withTransitionCoordinator_superBlock___block_invoke_4;
      v85[3] = &unk_1E70F3590;
      v85[4] = *(a1 + 32);
      [UIView performWithoutAnimation:v85];
      [*(a1 + 48) _removeAllAnimationsIncludingSubviewsTrackingForAnimationRestoration];
      v7 = [_UIPortalView alloc];
      [*(a1 + 48) bounds];
      v8 = [(_UIPortalView *)v7 initWithFrame:?];
      [(_UIPortalView *)v8 setSourceView:*(a1 + 48)];
      [(_UIPortalView *)v8 setHidesSourceView:1];
      v9 = [[_UIPanelControllerMeshAnimatingTransitionView alloc] initWithView:v8];
      v10 = *(*(a1 + 64) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      [*(a1 + 32) _setDestinationTransitionView:*(*(*(a1 + 64) + 8) + 40)];
      *(*(a1 + 32) + 8) &= ~0x400u;
      [*(a1 + 48) bounds];
      v13 = v12;
      v15 = v14;
      v62 = v17;
      v63 = v16;
      v18 = v16 * 0.5;
      v19 = v17 * 0.5;
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
      v21 = [*(a1 + 32) _internalState];
      v22 = _transitionInsetsForViewController(WeakRetained, v21);
      v58 = v23;
      v59 = v22;
      v56 = v25;
      v57 = v24;

      Width = CGRectGetWidth(*(a1 + 72));
      v27 = 1.0;
      v28 = 1.0;
      if (Width > 0.0)
      {
        v29 = Width;
        v86.origin.x = v13;
        v86.origin.y = v15;
        v86.size.height = v62;
        v86.size.width = v63;
        v28 = CGRectGetWidth(v86) / v29;
      }

      v60 = v15 + v19;
      v61 = v13 + v18;
      Height = CGRectGetHeight(*(a1 + 72));
      if (Height > 0.0)
      {
        v31 = Height;
        v87.origin.x = v13;
        v87.origin.y = v15;
        v87.size.width = v63;
        v87.size.height = v62;
        v27 = CGRectGetHeight(v87) / v31;
      }

      memset(&v84, 0, sizeof(v84));
      CGAffineTransformMakeScale(&v84, v28, v27);
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __83__UIPanelController_viewWillTransitionToSize_withTransitionCoordinator_superBlock___block_invoke_5;
      v65[3] = &unk_1E7103888;
      v66 = *(a1 + 48);
      v32 = *(a1 + 40);
      v33 = *(a1 + 88);
      v70 = *(a1 + 72);
      v71 = v33;
      v34 = *(a1 + 120);
      v72 = *(a1 + 104);
      v73 = v34;
      v69 = *(a1 + 64);
      v74 = *(a1 + 136);
      v75 = v84;
      v76 = v13;
      v77 = v15;
      v78 = v63;
      v79 = v62;
      v80 = v59;
      v81 = v58;
      v82 = v57;
      v83 = v56;
      v35 = *(a1 + 32);
      v67 = v32;
      v68 = v35;
      [UIView performWithoutAnimation:v65];
      [*(a1 + 40) setCenter:{v61, v60}];
      v64 = v84;
      [*(a1 + 40) setTransform:&v64];
      v54 = *(a1 + 88);
      v55 = *(a1 + 80);
      v52 = *(a1 + 104);
      v53 = *(a1 + 96);
      v50 = *(a1 + 120);
      v51 = *(a1 + 112);
      v48 = *(a1 + 72);
      v49 = *(a1 + 128);
      v36 = +[UIDevice currentDevice];
      v37 = [v36 _deviceInfoForKey:@"ProductType"];
      v38 = [v37 isEqualToString:{@"iPhone7, 1"}];

      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = _UISplitViewControllerResizeMeshTransform(v48, v55, v54, v53, v52, v51, v50, v49, v13, v15, v63, v62, v59, v58, v57, v56);
      }

      v40 = [*(a1 + 40) layer];
      [v40 setMeshTransform:v39];

      [*(*(*(a1 + 64) + 8) + 40) setAlpha:1.0];
      [*(*(*(a1 + 64) + 8) + 40) setCenter:{v61, v60}];
      v41 = *(*(*(a1 + 64) + 8) + 40);
      v42 = *(MEMORY[0x1E695EFD0] + 16);
      *&v64.a = *MEMORY[0x1E695EFD0];
      *&v64.c = v42;
      *&v64.tx = *(MEMORY[0x1E695EFD0] + 32);
      [v41 setTransform:&v64];
      v43 = +[UIDevice currentDevice];
      v44 = [v43 _deviceInfoForKey:@"ProductType"];
      v45 = [v44 isEqualToString:{@"iPhone7, 1"}];

      if (v45)
      {
        v46 = 0;
      }

      else
      {
        v46 = _UISplitViewControllerResizeMeshTransform(v13, v15, v63, v62, v59, v58, v57, v56, v13, v15, v63, v62, v59, v58, v57, v56);
      }

      v47 = [*(*(*(a1 + 64) + 8) + 40) layer];
      [v47 setMeshTransform:v46];
    }
  }

  else
  {
    [v5 _setNeedsDeferredUpdate];
  }
}

void __83__UIPanelController_viewWillTransitionToSize_withTransitionCoordinator_superBlock___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  [v2 displayScale];
  v44 = v3;

  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  v11 = *(a1 + 120);
  v12 = +[UIDevice currentDevice];
  v13 = [v12 _deviceInfoForKey:@"ProductType"];
  v14 = [v13 isEqualToString:{@"iPhone7, 1"}];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = _UISplitViewControllerResizeMeshTransform(v4, v5, v6, v7, v8, v9, v10, v11, v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v16 = [*(a1 + 40) layer];
  [v16 setMeshTransform:v15];

  v17 = [*(a1 + 40) layer];
  [v17 setRasterizationScale:v44];

  [*(*(*(a1 + 56) + 8) + 40) setAlpha:0.0];
  [*(*(*(a1 + 56) + 8) + 40) setCenter:{*(a1 + 128), *(a1 + 136)}];
  v18 = *(a1 + 160);
  *&v45.a = *(a1 + 144);
  *&v45.c = v18;
  *&v45.tx = *(a1 + 176);
  CGAffineTransformInvert(&v46, &v45);
  v19 = *(*(*(a1 + 56) + 8) + 40);
  v45 = v46;
  [v19 setTransform:&v45];
  v42 = *(a1 + 200);
  v43 = *(a1 + 192);
  v40 = *(a1 + 216);
  v41 = *(a1 + 208);
  v38 = *(a1 + 232);
  v39 = *(a1 + 224);
  v36 = *(a1 + 248);
  v37 = *(a1 + 240);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v23 = *(a1 + 88);
  v24 = *(a1 + 96);
  v25 = *(a1 + 104);
  v26 = *(a1 + 112);
  v27 = *(a1 + 120);
  v28 = +[UIDevice currentDevice];
  v29 = [v28 _deviceInfoForKey:@"ProductType"];
  v30 = [v29 isEqualToString:{@"iPhone7, 1"}];

  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = _UISplitViewControllerResizeMeshTransform(v43, v42, v41, v40, v39, v38, v37, v36, v20, v21, v22, v23, v24, v25, v26, v27);
  }

  v32 = [*(*(*(a1 + 56) + 8) + 40) layer];
  [v32 setMeshTransform:v31];

  v33 = [*(*(*(a1 + 56) + 8) + 40) layer];
  [v33 setRasterizationScale:v44];

  v34 = [*(a1 + 48) view];
  [v34 insertSubview:*(a1 + 40) aboveSubview:*(a1 + 32)];

  v35 = [*(a1 + 48) view];
  [v35 insertSubview:*(*(*(a1 + 56) + 8) + 40) aboveSubview:*(a1 + 40)];
}

void *__83__UIPanelController_viewWillTransitionToSize_withTransitionCoordinator_superBlock___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 40);
  if (result && *(*(*(a1 + 56) + 8) + 40))
  {
    [result removeFromSuperview];
    [*(*(*(a1 + 56) + 8) + 40) removeFromSuperview];
    [*(a1 + 32) _setSourceTransitionView:0];
    [*(a1 + 32) _setDestinationTransitionView:0];
    result = [*(a1 + 48) _finishTrackingForAnimationRestoration];
  }

  *(*(a1 + 32) + 8) &= ~0x80u;
  return result;
}

- (void)_withDisabledAppearanceTransitionsPerform:(id)perform
{
  v26 = *MEMORY[0x1E69E9840];
  performCopy = perform;
  owningViewController = [(UIPanelController *)self owningViewController];
  v6 = objc_opt_class();
  if (owningViewController)
  {
    v7 = (owningViewController[94] & 3u) - 1 < 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v6 _withDisabledAppearanceTransitions:v7 forVisibleDescendantsOf:owningViewController perform:{performCopy, performCopy}];
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        _existingView = [v15 _existingView];
        window = [_existingView window];

        if (!window)
        {
          [array addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  if ([array count])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__UIPanelController__withDisabledAppearanceTransitionsPerform___block_invoke;
    v19[3] = &unk_1E7103900;
    v20 = array;
    [(UIPanelController *)self addWrapperBlockForNextUpdate:v19];
  }
}

void __63__UIPanelController__withDisabledAppearanceTransitionsPerform___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v30 + 1) + 8 * v8++) setAppearanceTransitionsAreDisabled:1];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  if (v3)
  {
    v3[2](v3);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v26 + 1) + 8 * v13++) setAppearanceTransitionsAreDisabled:0];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v11);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = *(a1 + 32);
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        if (v19)
        {
          if ((*(v19 + 376) & 3u) - 1 <= 1)
          {
            v20 = [*(*(&v22 + 1) + 8 * v18) _existingView];
            v21 = [v20 window];

            if (!v21)
            {
              [(UIViewController *)v19 __viewWillDisappear:?];
              [(UIViewController *)v19 __viewDidDisappear:?];
            }
          }
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v16);
  }
}

+ (id)_withDisabledAppearanceTransitions:(BOOL)transitions forVisibleDescendantsOf:(id)of perform:(id)perform
{
  transitionsCopy = transitions;
  v41 = *MEMORY[0x1E69E9840];
  ofCopy = of;
  performCopy = perform;
  v9 = performCopy;
  if (!transitionsCopy)
  {
    v13 = 0;
    if (!performCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3042000000;
  v36 = __Block_byref_object_copy__408;
  v37 = __Block_byref_object_dispose__409;
  v38 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__UIPanelController__withDisabledAppearanceTransitions_forVisibleDescendantsOf_perform___block_invoke;
  aBlock[3] = &unk_1E7103928;
  v11 = v10;
  v31 = v11;
  v32 = &v33;
  v12 = _Block_copy(aBlock);
  objc_storeWeak(v34 + 5, v12);
  (*(v12 + 2))(v12, ofCopy);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v14)
  {
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v26 + 1) + 8 * i) setAppearanceTransitionsAreDisabled:1];
      }

      v14 = [v13 countByEnumeratingWithState:&v26 objects:v40 count:16];
    }

    while (v14);
  }

  _Block_object_dispose(&v33, 8);
  objc_destroyWeak(&v38);
  if (v9)
  {
LABEL_12:
    v9[2](v9);
  }

LABEL_13:
  if (transitionsCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = v13;
    v18 = [v17 countByEnumeratingWithState:&v22 objects:v39 count:16];
    if (v18)
    {
      v19 = *v23;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v22 + 1) + 8 * j) setAppearanceTransitionsAreDisabled:{0, v22}];
        }

        v18 = [v17 countByEnumeratingWithState:&v22 objects:v39 count:16];
      }

      while (v18);
    }
  }

  return v13;
}

void __88__UIPanelController__withDisabledAppearanceTransitions_forVisibleDescendantsOf_perform___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 _existingView];
  v5 = v4;
  if (v4)
  {
    if (([v4 isHidden] & 1) == 0)
    {
      v6 = [v5 window];
      if (v6)
      {
        v7 = v6;
        v8 = [v3 appearanceTransitionsAreDisabled];

        if ((v8 & 1) == 0)
        {
          [*(a1 + 32) addObject:v3];
        }
      }
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v3 mutableChildViewControllers];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [v14 _existingView];
          v16 = [v15 isDescendantOfView:v5];

          if (v16)
          {
            WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
            WeakRetained[2](WeakRetained, v14);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }
}

- (void)_layoutContainerViewWillMoveToWindow:(id)window
{
  if (window)
  {
    if ([(UIPanelController *)self _needsFirstTimeUpdateForTraitCollection])
    {
      [(UIPanelController *)self _setNeedsFirstTimeUpdateForTraitCollection:0];
      v4 = objc_alloc_init(_UIViewControllerNullAnimationTransitionCoordinator);
      owningViewController = [(UIPanelController *)self owningViewController];
      traitCollection = [owningViewController traitCollection];

      v7 = [UITraitCollection traitCollectionWithHorizontalSizeClass:0];
      [(UIPanelController *)self _updateForTraitCollection:traitCollection oldTraitCollection:v7 withTransitionCoordinator:v4];

      owningViewController2 = [(UIPanelController *)self owningViewController];
      [owningViewController2 _setLastNotifiedTraitCollection:traitCollection];

      [(_UIViewControllerNullAnimationTransitionCoordinator *)v4 _runAlongsideAnimations];
      [(_UIViewControllerNullAnimationTransitionCoordinator *)v4 _runAlongsideCompletionsAfterCommit];
    }

    [(UIPanelController *)self _setNeedsDeferredUpdate];
  }

  else
  {

    [(UIPanelController *)self _setNeedsFirstTimeUpdateForTraitCollection:1];
  }
}

- (void)_layoutContainerViewDidMoveToWindow:(id)window
{
  windowCopy = window;
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (windowCopy)
    {
      screen = [windowCopy screen];
      [(UIPanelController *)self _observeKeyboardNotificationsOnScreen:screen];

      [(UIPanelController *)self _adjustForKeyboardInfo:0];
    }

    else
    {
      [(UIPanelController *)self _stopObservingKeyboardNotifications];
      _internalState = [(UIPanelController *)self _internalState];
      [_internalState setKeyboardAdjustment:0.0];
    }
  }
}

- (void)__viewWillLayoutSubviews
{
  _sourceTransitionView = [(UIPanelController *)self _sourceTransitionView];
  if (_sourceTransitionView)
  {
    v4 = _sourceTransitionView;
    _sourceTransitionView2 = [(UIPanelController *)self _sourceTransitionView];
    superview = [_sourceTransitionView2 superview];
    view = [(UIPanelController *)self view];
    if (superview == view)
    {
      panelControllerFlags = self->_panelControllerFlags;

      if ((*&panelControllerFlags & 0x400) == 0)
      {
        return;
      }
    }

    else
    {
    }
  }

  v9 = self->_panelControllerFlags;
  if ((*&v9 & 0x200) == 0)
  {
    if ((*&v9 & 0x2000) != 0)
    {
      self->_panelControllerFlags = (*&v9 & 0xFFFFDDFF);
    }

    else
    {
      view2 = [(UIPanelController *)self view];
      [view2 bounds];
      v12 = v11;
      v14 = v13;
      [(UIPanelController *)self _lastViewSize];
      v16 = v15;
      v18 = v17;

      if (v12 == v16 && v14 == v18)
      {
        return;
      }

      v19 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
      v20 = self->_panelControllerFlags;
      if ((((*&v20 & 8) == 0) & ~v19) == 0 && (*&v20 & 0x80) != 0)
      {
        return;
      }
    }

    [(UIPanelController *)self _performDeferredUpdate];
  }
}

- (void)_setNeedsLayoutAndPerformImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  [(UIView *)self->_view setNeedsLayout];
  *&self->_panelControllerFlags |= 0x2000u;
  if (immediatelyCopy)
  {
    view = self->_view;

    [(UIView *)view layoutIfNeeded];
  }
}

- (void)_setNeedsDeferredUpdate
{
  panelControllerFlags = self->_panelControllerFlags;
  if ((*&panelControllerFlags & 0x144) != 0)
  {
    if (*&panelControllerFlags)
    {
      self->_panelControllerFlags = (*&panelControllerFlags | 2);
    }
  }

  else
  {
    _internalState = [(UIPanelController *)self _internalState];
    externallyAnimatingStateRequest = [_internalState externallyAnimatingStateRequest];
    if (externallyAnimatingStateRequest)
    {
    }

    else
    {
      v5 = self->_panelControllerFlags;

      if ((*&v5 & 8) == 0)
      {
        if (+[UIView _isInAnimationBlockWithAnimationsEnabled]&& ([(UIView *)self->_view window], v6 = objc_claimAutoreleasedReturnValue(), v6, v6) && ([(UIPanelController *)self collapsedState]& 0xFFFFFFFFFFFFFFFDLL) != 1)
        {
          v8[0] = MEMORY[0x1E69E9820];
          v8[1] = 3221225472;
          v8[2] = __44__UIPanelController__setNeedsDeferredUpdate__block_invoke;
          v8[3] = &unk_1E70F3590;
          v8[4] = self;
          [UIView performWithoutAnimation:v8];
          *&self->_panelControllerFlags &= ~8u;
          [(UIPanelController *)self _setNeedsLayoutAndPerformImmediately:1];
        }

        else
        {

          [(UIPanelController *)self _setNeedsLayoutAndPerformImmediately:0];
        }
      }
    }
  }
}

- (void)_performDeferredUpdate
{
  panelControllerFlags = *&self->_panelControllerFlags | 4;
  v4 = 1;
  do
  {
    self->_panelControllerFlags = (panelControllerFlags & 0xFFFFFFFD);
    [(UIPanelController *)self _performSingleDeferredUpdatePass];
    panelControllerFlags = self->_panelControllerFlags;
    if ((v4 & 1) == 0)
    {
      break;
    }

    v4 = 0;
  }

  while ((panelControllerFlags & 2) != 0);
  self->_panelControllerFlags = (panelControllerFlags & 0xFFFFFFF9);
}

- (void)_performSingleDeferredUpdatePass
{
  v85 = *MEMORY[0x1E69E9840];
  delegate = [(UIPanelController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v66 = [delegate panelControllerWillUpdate:self];
  }

  else
  {
    v66 = 0;
  }

  view = [(UIPanelController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;

  v83 = 0;
  _internalState = [(UIPanelController *)self _internalState];
  configuration = [_internalState configuration];
  forceOverlay = [configuration forceOverlay];

  _internalState2 = [(UIPanelController *)self _internalState];
  view2 = [(UIPanelController *)self view];
  v68 = [_internalState2 computePossibleStatesGivenParentView:view2 withSize:forceOverlay forceOverlay:{v4, v6}];

  if (v66)
  {
    v12 = v66[2]();
    _internalState3 = [(UIPanelController *)self _internalState];
    [_internalState3 setStateRequest:v12];

    if (v83 == 1)
    {
      _suspendedConfiguration = [(UIPanelController *)self _suspendedConfiguration];
      v15 = _suspendedConfiguration == 0;

      if (!v15)
      {
        _suspendedConfiguration2 = [(UIPanelController *)self _suspendedConfiguration];
        _internalState4 = [(UIPanelController *)self _internalState];
        [_internalState4 setConfiguration:_suspendedConfiguration2];

        _suspendedConfiguration3 = [(UIPanelController *)self _suspendedConfiguration];
        forceOverlay2 = [_suspendedConfiguration3 forceOverlay];

        _internalState5 = [(UIPanelController *)self _internalState];
        view3 = [(UIPanelController *)self view];
        v22 = [_internalState5 computePossibleStatesGivenParentView:view3 withSize:forceOverlay2 forceOverlay:{v4, v6}];

        v68 = v22;
      }
    }

    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      _internalState6 = [(UIPanelController *)self _internalState];
      [_internalState6 setExternallyAnimatingStateRequest:v12];

      currentState = [(UIPanelController *)self currentState];
      v25 = affectedSidesFromState(currentState);
      _internalState7 = [(UIPanelController *)self _internalState];
      [_internalState7 setExternallyAnimatingAffectedSides:v25];

      objc_initWeak(&location, self);
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __53__UIPanelController__performSingleDeferredUpdatePass__block_invoke;
      v79[3] = &unk_1E70F8958;
      objc_copyWeak(&v81, &location);
      v80 = v12;
      [UIView _addCompletion:v79];

      objc_destroyWeak(&v81);
      objc_destroyWeak(&location);
    }
  }

  _internalState8 = [(UIPanelController *)self _internalState];
  v69 = [_internalState8 copy];

  animationState = [v69 animationState];

  if (!animationState)
  {
    externallyAnimatingStateRequest = [v69 externallyAnimatingStateRequest];

    if (externallyAnimatingStateRequest)
    {
      externallyAnimatingStateRequest2 = [v69 externallyAnimatingStateRequest];
      v42 = [v69 _stateForInteractiveRequest:externallyAnimatingStateRequest2 withAffectedSides:objc_msgSend(v69 inPossibleStates:{"externallyAnimatingAffectedSides"), v68}];
    }

    else
    {
      interactiveStateRequest = [v69 interactiveStateRequest];

      if (interactiveStateRequest)
      {
        externallyAnimatingStateRequest2 = [v69 interactiveStateRequest];
        v42 = [v69 _stateForInteractiveRequest:externallyAnimatingStateRequest2 withAffectedSides:0 inPossibleStates:v68];
      }

      else
      {
        stateRequest = [v69 stateRequest];

        if (!stateRequest)
        {
          goto LABEL_38;
        }

        externallyAnimatingStateRequest2 = [v69 stateRequest];
        v42 = [externallyAnimatingStateRequest2 _matchingState:v68];
      }
    }

    firstObject = v42;
    goto LABEL_37;
  }

  animationState2 = [v69 animationState];
  [animationState2 progress];
  v31 = v30 == 0.0;

  if (!v31)
  {
    externallyAnimatingStateRequest2 = v68;
    goto LABEL_31;
  }

  possibleStates = [(UIPanelController *)self possibleStates];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v32 = v68;
  v33 = [v32 countByEnumeratingWithState:&v75 objects:v84 count:16];
  if (!v33)
  {

    v37 = 1;
    v36 = 1;
    v35 = 1;
LABEL_30:
    externallyAnimatingStateRequest2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:possibleStates copyItems:1];

    _updateTreatsHiddenAsOverlapsInStates(externallyAnimatingStateRequest2, v35, v36, v37);
    goto LABEL_31;
  }

  v34 = *v76;
  v35 = 1;
  v36 = 1;
  v37 = 1;
  while (2)
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v76 != v34)
      {
        objc_enumerationMutation(v32);
      }

      v39 = *(*(&v75 + 1) + 8 * i);
      v35 &= [v39 leadingOverlapsMain];
      v36 &= [v39 trailingOverlapsMain];
      v37 &= [v39 supplementaryOverlapsMain];
      if (((v35 | v36) & 1) == 0 && !v37)
      {
        v35 = 0;
        v36 = 0;
        goto LABEL_26;
      }
    }

    v33 = [v32 countByEnumeratingWithState:&v75 objects:v84 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_26:

  if ((v35 | v36 | v37))
  {
    goto LABEL_30;
  }

  externallyAnimatingStateRequest2 = possibleStates;
LABEL_31:
  animationState3 = [v69 animationState];
  stateRequest2 = [animationState3 stateRequest];
  animationState4 = [v69 animationState];
  firstObject = [v69 _stateForInteractiveRequest:stateRequest2 withAffectedSides:objc_msgSend(animationState4 inPossibleStates:{"affectedSides"), externallyAnimatingStateRequest2}];

LABEL_37:
  if (!firstObject)
  {
LABEL_38:
    firstObject = [v68 firstObject];
    if (!firstObject)
    {
      goto LABEL_53;
    }
  }

  selfCopy2 = self;
  if ((*&self->_panelControllerFlags & 8) != 0)
  {
    _previousInternalState = [(UIPanelController *)self _previousInternalState];
    v52 = _previousInternalState == 0;

    if (v52)
    {
      v50 = firstObject;
    }

    else
    {
      v53 = affectedSidesFromState(firstObject);
      _previousInternalState2 = [(UIPanelController *)self _previousInternalState];
      _previousInternalState3 = [(UIPanelController *)self _previousInternalState];
      stateRequest3 = [_previousInternalState3 stateRequest];
      _lastPossiblePublicStates = [(UIPanelController *)self _lastPossiblePublicStates];
      v50 = [_previousInternalState2 _stateForInteractiveRequest:stateRequest3 withAffectedSides:v53 inPossibleStates:_lastPossiblePublicStates];

      [(UIPanelController *)self _lastViewSize];
      if (!v50)
      {
        goto LABEL_53;
      }

      v4 = v58;
      v6 = v59;
    }

    selfCopy2 = self;
  }

  else
  {
    v50 = firstObject;
  }

  p_panelControllerFlags = &selfCopy2->_panelControllerFlags;
  *&selfCopy2->_panelControllerFlags |= 1u;
  delegate2 = [(UIPanelController *)selfCopy2 delegate];
  if (*p_panelControllerFlags & 8) == 0 && (objc_opt_respondsToSelector())
  {
    [delegate2 panelController:self willChangeToState:v50];
  }

  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __53__UIPanelController__performSingleDeferredUpdatePass__block_invoke_2;
  v71[3] = &unk_1E70F9780;
  v71[4] = self;
  v62 = v50;
  v72 = v62;
  v73 = v4;
  v74 = v6;
  [(UIPanelController *)self _performWrappedUpdate:v71];
  selfCopy5 = self;
  if ((*&self->_panelControllerFlags & 8) == 0)
  {
    [(UIPanelController *)self _setLastComputedPublicState:v62];
    [(UIPanelController *)self _setPreviousInternalState:v69];
    [(UIPanelController *)self _setLastPossiblePublicStates:v68];
    [(UIPanelController *)self _setLastViewSize:v4, v6];
    v64 = objc_opt_respondsToSelector();
    selfCopy5 = self;
    if (v64)
    {
      [delegate2 panelController:self didChangeToState:v62 withSize:{v4, v6}];
      selfCopy5 = self;
    }
  }

  *&selfCopy5->_panelControllerFlags &= ~1u;

LABEL_53:
}

void __53__UIPanelController__performSingleDeferredUpdatePass__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v8 = WeakRetained;
    v4 = [WeakRetained _internalState];
    v5 = [v4 externallyAnimatingStateRequest];
    LODWORD(v3) = [v3 isEqual:v5];

    WeakRetained = v8;
    if (v3)
    {
      v6 = [v8 _internalState];
      [v6 setExternallyAnimatingStateRequest:0];

      v7 = [v8 _internalState];
      [v7 setExternallyAnimatingAffectedSides:0];

      [v8 setNeedsUpdate];
      WeakRetained = v8;
    }
  }
}

- (void)_performWrappedUpdate:(id)update
{
  updateCopy = update;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3042000000;
  v15 = __Block_byref_object_copy__408;
  v16 = __Block_byref_object_dispose__409;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__UIPanelController__performWrappedUpdate___block_invoke;
  v9[3] = &unk_1E7103950;
  v11 = &v12;
  v5 = updateCopy;
  v10 = v5;
  v6 = _Block_copy(v9);
  objc_storeWeak(v13 + 5, v6);
  v7 = self->_wrapperBlocksForNextUpdate;
  wrapperBlocksForNextUpdate = self->_wrapperBlocksForNextUpdate;
  self->_wrapperBlocksForNextUpdate = 0;

  (*(v6 + 2))(v6, v7);
  _Block_object_dispose(&v12, 8);
  objc_destroyWeak(&v17);
}

void __43__UIPanelController__performWrappedUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 firstObject];
  if (v4)
  {
    v5 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__UIPanelController__performWrappedUpdate___block_invoke_2;
    v10[3] = &unk_1E70FCDA0;
    v6 = *(a1 + 40);
    v11 = v5;
    v12 = v6;
    v7 = v4[2];
    v8 = v5;
    v7(v4, v10);
  }

  else
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))();
    }
  }
}

void __43__UIPanelController__performWrappedUpdate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  WeakRetained[2](WeakRetained, *(a1 + 32));
}

- (void)_unspecifiedUpdateToNewPublicState:(id)state withSize:(CGSize)size
{
  v183 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  _contentView = [(UIPanelController *)self _contentView];
  _internalState = [(UIPanelController *)self _internalState];
  leadingViewController = [_internalState leadingViewController];

  _internalState2 = [(UIPanelController *)self _internalState];
  mainViewController = [_internalState2 mainViewController];

  _internalState3 = [(UIPanelController *)self _internalState];
  trailingViewController = [_internalState3 trailingViewController];

  v8 = [stateCopy _collapsedState] == 1 || objc_msgSend(stateCopy, "_collapsedState") == 2;
  _internalState4 = [(UIPanelController *)self _internalState];
  collapsedViewController = [_internalState4 collapsedViewController];

  if (v8)
  {
    v134 = collapsedViewController;
    view = [v134 view];
    _trailingBorderView2 = 0;
    _leadingBorderView2 = 0;
    view3 = 0;
    view2 = 0;
    goto LABEL_35;
  }

  v134 = mainViewController;
  view = [v134 view];
  v15 = stateCopy;
  [stateCopy leadingWidth];
  if (v16 <= 0.0)
  {
    view2 = 0;
  }

  else
  {
    view2 = [leadingViewController view];

    v15 = stateCopy;
  }

  [v15 trailingWidth];
  if (v17 <= 0.0)
  {
    view3 = 0;
  }

  else
  {
    view3 = [trailingViewController view];

    v15 = stateCopy;
  }

  configuration = [v15 configuration];
  borderColor = [configuration borderColor];
  if (borderColor)
  {
  }

  else if ([(UILayoutContainerView *)self->_view backgroundColorIsDefault])
  {
    borderColor2 = +[UIColor _splitViewBorderColor];
    goto LABEL_17;
  }

  borderColor2 = [configuration borderColor];
  if (!borderColor2)
  {
    backgroundColor = [(UIView *)self->_view backgroundColor];

    v21 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v21 = borderColor2;
  backgroundColor = v21;
LABEL_19:

  if (view2 && ([stateCopy configuration], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "leadingBorderWidthForScale:", 1.0), v25 = v24, v23, v25 > 0.0))
  {
    _leadingBorderView = [(UIPanelController *)self _leadingBorderView];

    if (!_leadingBorderView)
    {
      _createBorderView = [(UIPanelController *)self _createBorderView];
      [(UIPanelController *)self _setLeadingBorderView:_createBorderView];
    }

    _leadingBorderView2 = [(UIPanelController *)self _leadingBorderView];
    [_leadingBorderView2 setBackgroundColor:backgroundColor];
    [_leadingBorderView2 setNeedsLayout];
    if (!view3)
    {
      goto LABEL_30;
    }
  }

  else
  {
    _leadingBorderView2 = 0;
    if (!view3)
    {
      goto LABEL_30;
    }
  }

  configuration2 = [stateCopy configuration];
  [configuration2 trailingBorderWidthForScale:1.0];
  v30 = v29;

  if (v30 > 0.0)
  {
    _trailingBorderView = [(UIPanelController *)self _trailingBorderView];

    if (!_trailingBorderView)
    {
      _createBorderView2 = [(UIPanelController *)self _createBorderView];
      [(UIPanelController *)self _setTrailingBorderView:_createBorderView2];
    }

    _trailingBorderView2 = [(UIPanelController *)self _trailingBorderView];
    [_trailingBorderView2 setBackgroundColor:backgroundColor];
    [_trailingBorderView2 setNeedsLayout];
    goto LABEL_31;
  }

LABEL_30:
  _trailingBorderView2 = 0;
LABEL_31:
  if (_leadingBorderView2 | _trailingBorderView2)
  {
    configuration3 = [stateCopy configuration];
    borderColor3 = [configuration3 borderColor];
    [(UIPanelController *)self _setBorderViewsObserveViewBackgroundColor:borderColor3 == 0];
  }

  else
  {
    [(UIPanelController *)self _setBorderViewsObserveViewBackgroundColor:0];
  }

LABEL_35:
  v173 = 0;
  v174 = view;
  v172 = 0;
  __65__UIPanelController__unspecifiedUpdateToNewPublicState_withSize___block_invoke(&v174, &v173, &v172);
  v155 = v174;

  v151 = v173;
  v141 = v172;
  v170 = 0;
  v171 = view2;
  v169 = 0;
  __65__UIPanelController__unspecifiedUpdateToNewPublicState_withSize___block_invoke(&v171, &v170, &v169);
  v35 = v171;

  v153 = v170;
  v140 = v169;
  v167 = 0;
  v168 = view3;
  v166 = 0;
  __65__UIPanelController__unspecifiedUpdateToNewPublicState_withSize___block_invoke(&v168, &v167, &v166);
  v36 = v168;

  v37 = v167;
  v139 = v166;
  v38 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:5];
  v148 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:5];
  if (v155)
  {
    [v38 addObject:?];
  }

  v39 = v153;
  if (v151)
  {
    [v38 addObject:?];
  }

  v142 = v37;
  v157 = v36;
  if ((!v35 || ([stateCopy leadingOverlapsMain] & 1) == 0) && (!v36 || !objc_msgSend(stateCopy, "trailingOverlapsMain")))
  {
    dimmingView = 0;
    if (!v35)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  dimmingView = [(UIPanelController *)self dimmingView];
  if (dimmingView)
  {
    [v38 addObject:dimmingView];
  }

  v39 = v153;
  if (v35)
  {
LABEL_48:
    [v38 addObject:v35];
    if (v39)
    {
      [v38 addObject:v39];
    }

    [v148 addObject:v35];
    if (_leadingBorderView2)
    {
      [v38 addObject:_leadingBorderView2];
    }
  }

LABEL_52:
  if (v36)
  {
    [v38 addObject:v36];
    if (v37)
    {
      [v38 addObject:v37];
    }

    [v148 addObject:v36];
    if (_trailingBorderView2)
    {
      [v38 addObject:_trailingBorderView2];
    }
  }

  v150 = dimmingView;
  subviews = [_contentView subviews];
  array = [v38 array];
  v43 = [subviews isEqualToArray:array];

  if ((v43 & 1) == 0)
  {
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    subviews2 = [_contentView subviews];
    v45 = [subviews2 countByEnumeratingWithState:&v162 objects:v182 count:16];
    if (v45)
    {
      v46 = *v163;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v163 != v46)
          {
            objc_enumerationMutation(subviews2);
          }

          v48 = *(*(&v162 + 1) + 8 * i);
          if (([v38 containsObject:v48] & 1) == 0)
          {
            [v48 removeFromSuperview];
          }
        }

        v45 = [subviews2 countByEnumeratingWithState:&v162 objects:v182 count:16];
      }

      while (v45);
    }

    if (v155)
    {
      [_contentView insertSubview:v155 atIndex:0];
      v49 = 1;
    }

    else
    {
      v49 = 0;
    }

    if (v151)
    {
      [_contentView insertSubview:v151 atIndex:v49++];
    }

    if (v150)
    {
      [_contentView insertSubview:v150 atIndex:v49++];
    }

    v50 = dyld_program_sdk_at_least();
    if (!((_leadingBorderView2 == 0) | v50 & 1))
    {
      [_contentView insertSubview:_leadingBorderView2 atIndex:v49++];
    }

    if (v35)
    {
      [_contentView insertSubview:v35 atIndex:v49++];
    }

    if (v153)
    {
      [_contentView insertSubview:v153 atIndex:v49++];
    }

    if (!((_trailingBorderView2 == 0) | v50 & 1))
    {
      [_contentView insertSubview:_trailingBorderView2 atIndex:v49++];
    }

    if (v157)
    {
      [_contentView insertSubview:v157 atIndex:v49++];
    }

    if (v142)
    {
      [_contentView insertSubview:v142 atIndex:v49++];
    }

    v51 = v50 ^ 1;
    if (_leadingBorderView2 && (v51 & 1) == 0)
    {
      [_contentView insertSubview:_leadingBorderView2 atIndex:v49++];
    }

    if (!((_trailingBorderView2 == 0) | v51 & 1))
    {
      [_contentView insertSubview:_trailingBorderView2 atIndex:v49];
    }
  }

  if ((*&self->_panelControllerFlags & 8) != 0)
  {
    v55 = *MEMORY[0x1E695EFF8];
    v57 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    [_contentView bounds];
    size.width = v52;
    size.height = v53;
    v55 = v54;
    v57 = v56;
  }

  view4 = [(UIPanelController *)self view];
  _shouldReverseLayoutDirection = [view4 _shouldReverseLayoutDirection];

  [_contentView _currentScreenScale];
  v60 = v59;
  [v150 setFrame:{v55, v57, size.width, size.height}];
  v143 = v35;
  v61 = _leadingBorderView2;
  v152 = v155;
  v62 = _trailingBorderView2;
  v144 = v157;
  v63 = stateCopy;
  v64 = v148;
  v149 = leadingViewController;
  v159 = v134;
  v147 = trailingViewController;
  if (v35)
  {
    v65 = [v63 leadingOverlapsMain] ^ 1;
  }

  else
  {
    v65 = 0;
  }

  if (v157)
  {
    v66 = [v63 trailingOverlapsMain] ^ 1;
  }

  else
  {
    v66 = 0;
  }

  [v63 leadingWidth];
  UIRoundToScale(v67, v60);
  v69 = v68;
  [v63 trailingWidth];
  UIRoundToScale(v70, v60);
  v136 = v71;
  v72 = 0.0;
  if (([v63 leadingOverlapsMain] & 1) == 0)
  {
    [v63 leadingDragOffset];
    if (v73 > 0.0)
    {
      [v63 leadingDragOffset];
      v72 = 0.0 - v74;
    }
  }

  if ([v63 leadingOverlapsMain] && (objc_msgSend(v63, "_leadingEntirelyOverlapsMain") & 1) == 0)
  {
    [v63 _leadingOverlayWidth];
    v72 = v72 + v69 - v75;
  }

  v76 = 0.0;
  if (([v63 trailingOverlapsMain] & 1) == 0)
  {
    [v63 trailingDragOffset];
    if (v77 > 0.0)
    {
      [v63 trailingDragOffset];
      v76 = v78 + 0.0;
    }
  }

  if ([v63 trailingOverlapsMain] && (objc_msgSend(v63, "_trailingEntirelyOverlapsMain") & 1) == 0)
  {
    [v63 trailingWidth];
    v80 = v79;
    [v63 _trailingOverlayWidth];
    v76 = v76 + v81 - v80;
  }

  UIRoundToScale(v72, v60);
  v83 = v82;
  UIRoundToScale(v76, v60);
  if (v155)
  {
    v85 = v84;
    v184.origin.x = v55;
    v184.origin.y = v57;
    v184.size.width = size.width;
    v184.size.height = size.height;
    Width = CGRectGetWidth(v184);
    if (v65)
    {
      v87 = -v83;
      if (v83 >= 0.0)
      {
        v87 = v83;
      }

      Width = Width - (v69 - v87);
      if (v61)
      {
        configuration4 = [v63 configuration];
        [configuration4 leadingBorderWidthForScale:v60];
        v90 = v89;

        Width = Width - v90;
      }
    }

    if (v66)
    {
      v91 = -v85;
      if (v85 >= 0.0)
      {
        v91 = v85;
      }

      Width = Width - (v136 - v91);
      if (v62)
      {
        configuration5 = [v63 configuration];
        [configuration5 trailingBorderWidthForScale:v60];
        v94 = v93;

        Width = Width - v94;
      }
    }
  }

  else
  {
    Width = 0.0;
  }

  v185.origin.x = v55;
  v185.origin.y = v57;
  v185.size.width = size.width;
  v185.size.height = size.height;
  Height = CGRectGetHeight(v185);
  v181[0] = 0;
  v181[1] = v181;
  v181[2] = 0x2020000000;
  if (_shouldReverseLayoutDirection)
  {
    v186.origin.x = v55;
    v186.origin.y = v57;
    v186.size.width = size.width;
    v186.size.height = size.height;
    v83 = CGRectGetWidth(v186) - v83;
  }

  *&v181[3] = v83;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __unspecifiedLayoutSideBySideViews_block_invoke;
  aBlock[3] = &unk_1E7103A58;
  v180 = _shouldReverseLayoutDirection ^ 1;
  v178 = v181;
  v179 = Height;
  v96 = v64;
  v176 = v96;
  v97 = v63;
  v177 = v97;
  v98 = _Block_copy(aBlock);
  v99 = v98;
  if (v65)
  {
    (*(v98 + 2))(v98, v143, 0, v149, v69);
    configuration6 = [v97 configuration];
    [configuration6 leadingBorderWidthForScale:v60];
    (v99)[2](v99, v61, 0, 0);
  }

  (v99[2])(v99, v152, 0, v159, Width);
  if (v66)
  {
    configuration7 = [v97 configuration];
    [configuration7 trailingBorderWidthForScale:v60];
    (v99)[2](v99, v62, 0, 0);

    (v99[2])(v99, v144, 0, v147, v136);
  }

  v102 = v35 == 0;

  _Block_object_dispose(v181, 8);
  v103 = v143;
  v156 = v61;
  v145 = v144;
  v104 = v62;
  v105 = v97;
  v106 = v96;
  v107 = v149;
  v108 = v147;
  if (v102)
  {
    leadingOverlapsMain = 0;
  }

  else
  {
    leadingOverlapsMain = [v105 leadingOverlapsMain];
  }

  if (v157)
  {
    trailingOverlapsMain = [v105 trailingOverlapsMain];
  }

  else
  {
    trailingOverlapsMain = 0;
  }

  [v105 leadingDragOffset];
  v112 = v111;
  trailingOverlapsMain2 = [v105 trailingOverlapsMain];
  if (leadingOverlapsMain)
  {
    [v105 leadingWidth];
    v115 = v114;
    v187.origin.x = v55;
    v187.origin.y = v57;
    v187.size.width = size.width;
    v187.size.height = size.height;
    v116 = CGRectGetHeight(v187);
    if (_shouldReverseLayoutDirection)
    {
      v188.origin.x = v55;
      v188.origin.y = v57;
      v188.size.width = size.width;
      v188.size.height = size.height;
      v117 = CGRectGetWidth(v188);
      v189.origin.x = 0.0;
      v189.origin.y = 0.0;
      v189.size.width = v115;
      v189.size.height = v116;
      v118 = v112 + v117 - CGRectGetWidth(v189);
    }

    else
    {
      v118 = -v112;
    }

    if ([v106 containsObject:v103])
    {
      [v105 _keyboardAdjustment];
      v116 = v116 - v119;
    }

    if (v107)
    {
      [v107 _updateControlledViewsToFrame:{v118, 0.0, v115, v116}];
    }

    else
    {
      [v103 setFrame:{v118, 0.0, v115, v116}];
    }

    if (v156)
    {
      configuration8 = [v105 configuration];
      [configuration8 leadingBorderWidthForScale:v60];
      v122 = v121;

      if (_shouldReverseLayoutDirection)
      {
        v123 = -v122;
      }

      else
      {
        v190.origin.y = 0.0;
        v190.origin.x = v118;
        v190.size.width = v115;
        v190.size.height = v116;
        v123 = CGRectGetWidth(v190);
      }

      v191.origin.y = 0.0;
      v191.origin.x = v118;
      v191.size.width = v115;
      v191.size.height = v116;
      v192 = CGRectOffset(v191, v123, 0.0);
      [v156 setFrame:{v192.origin.x, v192.origin.y, v122, v192.size.height}];
    }
  }

  if (trailingOverlapsMain)
  {
    [v105 trailingWidth];
    v125 = v124;
    v193.origin.x = v55;
    v193.origin.y = v57;
    v193.size.width = size.width;
    v193.size.height = size.height;
    v126 = CGRectGetHeight(v193);
    v127 = trailingOverlapsMain2;
    if ((_shouldReverseLayoutDirection & 1) == 0)
    {
      v194.origin.x = v55;
      v194.origin.y = v57;
      v194.size.width = size.width;
      v194.size.height = size.height;
      v128 = CGRectGetWidth(v194);
      v195.origin.x = 0.0;
      v195.origin.y = 0.0;
      v195.size.width = v125;
      v195.size.height = v126;
      v127 = v128 - CGRectGetWidth(v195) - v127;
    }

    if ([v106 containsObject:v103])
    {
      [v105 _keyboardAdjustment];
      v126 = v126 - v129;
    }

    if (v108)
    {
      [v108 _updateControlledViewsToFrame:{v127, 0.0, v125, v126}];
    }

    else
    {
      [v145 setFrame:{v127, 0.0, v125, v126}];
    }

    if (v104)
    {
      configuration9 = [v105 configuration];
      [configuration9 trailingBorderWidthForScale:v60];
      v132 = v131;

      if (_shouldReverseLayoutDirection)
      {
        v196.origin.y = 0.0;
        v196.origin.x = v127;
        v196.size.width = v125;
        v196.size.height = v126;
        v133 = CGRectGetWidth(v196);
      }

      else
      {
        v133 = -v132;
      }

      v197.origin.y = 0.0;
      v197.origin.x = v127;
      v197.size.width = v125;
      v197.size.height = v126;
      v198 = CGRectOffset(v197, v133, 0.0);
      [v104 setFrame:{v198.origin.x, v198.origin.y, v132, v198.size.height}];
    }
  }

  layoutPresentationViews(_contentView, v159, v141);
  layoutPresentationViews(_contentView, v107, v140);
  layoutPresentationViews(_contentView, v108, v139);
}

void __65__UIPanelController__unspecifiedUpdateToNewPublicState_withSize___block_invoke(id *a1, void *a2, void *a3)
{
  v12 = *a1;
  v6 = [(UIView *)v12 __viewDelegate];
  v7 = [v6 _presentationController];

  if (v7 && ([v7 shouldPresentInFullscreen] & 1) == 0 && (objc_msgSend(v7, "containerView"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v7 shouldRemovePresentersView];
    v10 = [v7 containerView];
    if (v9)
    {
      *a1 = v10;
      *a2 = 0;
    }

    else
    {
      *a2 = v10;
    }

    v11 = [v7 containerView];
  }

  else
  {
    v11 = 0;
    *a2 = 0;
  }

  *a3 = v11;
}

- (void)_updateToNewPublicState:(id)state withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v665 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (![(UIPanelController *)self style])
  {
    [(UIPanelController *)self _unspecifiedUpdateToNewPublicState:stateCopy withSize:width, height];
    goto LABEL_745;
  }

  r1_24 = width;
  v590 = height;
  v598 = stateCopy;
  selfCopy = self;
  _contentView = [(UIPanelController *)self _contentView];
  _internalState = [(UIPanelController *)selfCopy _internalState];
  leadingViewController = [_internalState leadingViewController];

  _internalState2 = [(UIPanelController *)selfCopy _internalState];
  mainViewController = [_internalState2 mainViewController];

  _internalState3 = [(UIPanelController *)selfCopy _internalState];
  trailingViewController = [_internalState3 trailingViewController];

  _internalState4 = [(UIPanelController *)selfCopy _internalState];
  supplementaryViewController = [_internalState4 supplementaryViewController];

  v13 = [v598 _collapsedState] == 1 || objc_msgSend(v598, "_collapsedState") == 2;
  _internalState5 = [(UIPanelController *)selfCopy _internalState];
  collapsedViewController = [_internalState5 collapsedViewController];

  configuration = [(UIPanelController *)selfCopy configuration];
  supplementaryEdge = [configuration supplementaryEdge];

  configuration2 = [v598 configuration];
  if (!v13)
  {
    v563 = mainViewController;
    view = [v563 view];
    v19 = v598;
    [v598 leadingWidth];
    if (v20 <= 0.0 && ([v598 leadingOffscreenWidth], v21 <= 0.0))
    {
      view2 = 0;
    }

    else
    {
      view2 = [leadingViewController view];

      v19 = v598;
    }

    [v19 trailingWidth];
    if (v22 <= 0.0 && ([v19 trailingOffscreenWidth], v23 <= 0.0))
    {
      view3 = 0;
    }

    else
    {
      view3 = [trailingViewController view];

      v19 = v598;
    }

    [v19 supplementaryWidth];
    if (v25 <= 0.0 && ([v19 supplementaryOffscreenWidth], v26 <= 0.0))
    {
      v592 = 0;
      v28 = 0;
      r1_16 = 0;
    }

    else
    {
      view4 = [supplementaryViewController view];

      v592 = 0;
      v28 = view4 != 0;
      r1_16 = view4;
      if (view4 && !view2 && !view3)
      {
        v29 = view4;
        view2 = v29;
        if (supplementaryEdge)
        {
          v18 = 0;
          v28 = 1;
          r1_16 = v29;
          v592 = 1;
          supplementaryOverlapsMain = 1;
          if ([configuration2 forceOverlay])
          {
            goto LABEL_38;
          }

          goto LABEL_32;
        }

        view3 = 0;
        v592 = 1;
        v28 = 1;
        r1_16 = v29;
      }
    }

    if ([configuration2 forceOverlay] & 1) != 0 || view2 && (objc_msgSend(v598, "leadingOverlapsMain"))
    {
      supplementaryOverlapsMain = 1;
      v18 = view2;
      view2 = view3;
      goto LABEL_38;
    }

    v18 = view2;
    if (!view3)
    {
      view2 = 0;
LABEL_35:
      if (r1_16)
      {
        supplementaryOverlapsMain = [v598 supplementaryOverlapsMain];
      }

      else
      {
        r1_16 = 0;
        supplementaryOverlapsMain = 0;
      }

LABEL_38:
      borderColor = [configuration2 borderColor];
      if (borderColor)
      {
      }

      else if ([(UILayoutContainerView *)selfCopy->_view backgroundColorIsDefault])
      {
        backgroundColor3 = +[UIColor _splitViewBorderColor];

        if (supplementaryOverlapsMain)
        {
          v594 = 0;
          v33 = selfCopy;
          if (!v18)
          {
            goto LABEL_64;
          }

          goto LABEL_49;
        }

        v33 = selfCopy;
        if ([configuration2 borderAbuttingMainRendersAsShadow])
        {
          if (v18 | view2)
          {
            v44 = 1;
          }

          else
          {
            v44 = v28;
          }

          v594 = v44;
          if (!v18)
          {
            goto LABEL_64;
          }

          goto LABEL_49;
        }

LABEL_48:
        v594 = 0;
        if (!v18)
        {
          goto LABEL_64;
        }

LABEL_49:
        [configuration2 leadingBorderWidthForScale:1.0];
        if (v36 > 0.0)
        {
          _leadingBorderView = [(UIPanelController *)v33 _leadingBorderView];

          v38 = selfCopy;
          if (!_leadingBorderView)
          {
            _createBorderView = [(UIPanelController *)selfCopy _createBorderView];
            v38 = selfCopy;
            [(UIPanelController *)selfCopy _setLeadingBorderView:_createBorderView];
          }

          _leadingBorderView2 = [(UIPanelController *)v38 _leadingBorderView];
          [_leadingBorderView2 setRenderAsShadow:0];
          [_leadingBorderView2 setBackgroundColor:backgroundColor3];
          [_leadingBorderView2 setNeedsLayout];
          if (v592 & 1 | (r1_16 == 0 || supplementaryEdge != 0))
          {
            _supplementaryBorderView2 = 0;
          }

          else
          {
            _supplementaryBorderView = [(UIPanelController *)selfCopy _supplementaryBorderView];

            v41 = selfCopy;
            if (!_supplementaryBorderView)
            {
              _createBorderView2 = [(UIPanelController *)selfCopy _createBorderView];
              v41 = selfCopy;
              [(UIPanelController *)selfCopy _setSupplementaryBorderView:_createBorderView2];
            }

            _supplementaryBorderView2 = [(UIPanelController *)v41 _supplementaryBorderView];
            [_supplementaryBorderView2 setRenderAsShadow:0];
            backgroundColor = [_leadingBorderView2 backgroundColor];
            [_supplementaryBorderView2 setBackgroundColor:backgroundColor];

            [_supplementaryBorderView2 setNeedsLayout];
          }

          v33 = selfCopy;
          if (!view2)
          {
            goto LABEL_72;
          }

LABEL_65:
          [configuration2 trailingBorderWidthForScale:1.0];
          if (v45 > 0.0)
          {
            _trailingBorderView = [(UIPanelController *)v33 _trailingBorderView];

            v47 = selfCopy;
            if (!_trailingBorderView)
            {
              _createBorderView3 = [(UIPanelController *)selfCopy _createBorderView];
              v47 = selfCopy;
              [(UIPanelController *)selfCopy _setTrailingBorderView:_createBorderView3];
            }

            _trailingBorderView2 = [(UIPanelController *)v47 _trailingBorderView];
            [_trailingBorderView2 setRenderAsShadow:0];
            [_trailingBorderView2 setBackgroundColor:backgroundColor3];
            [_trailingBorderView2 setNeedsLayout];
            if (!(v592 & 1 | (r1_16 == 0) | (supplementaryEdge == 0)))
            {
              _supplementaryBorderView3 = [(UIPanelController *)selfCopy _supplementaryBorderView];

              v51 = selfCopy;
              if (!_supplementaryBorderView3)
              {
                _createBorderView4 = [(UIPanelController *)selfCopy _createBorderView];
                v51 = selfCopy;
                [(UIPanelController *)selfCopy _setSupplementaryBorderView:_createBorderView4];
              }

              _supplementaryBorderView4 = [(UIPanelController *)v51 _supplementaryBorderView];

              [_supplementaryBorderView4 setRenderAsShadow:0];
              backgroundColor2 = [_trailingBorderView2 backgroundColor];
              [_supplementaryBorderView4 setBackgroundColor:backgroundColor2];

              [_supplementaryBorderView4 setNeedsLayout];
              _supplementaryBorderView2 = _supplementaryBorderView4;
            }

LABEL_73:
            if (v18 | view2)
            {
              v55 = v592 ^ 1;
            }

            else
            {
              v55 = 0;
            }

            v543 = _trailingBorderView2;
            if (_leadingBorderView2 | _trailingBorderView2)
            {
              borderColor2 = [configuration2 borderColor];
              [(UIPanelController *)selfCopy _setBorderViewsObserveViewBackgroundColor:borderColor2 == 0];

              if (!supplementaryOverlapsMain)
              {
LABEL_78:
                _overlayEdgeShadowView2 = 0;
                goto LABEL_84;
              }
            }

            else
            {
              [(UIPanelController *)selfCopy _setBorderViewsObserveViewBackgroundColor:0];
              if (!supplementaryOverlapsMain)
              {
                goto LABEL_78;
              }
            }

            v57 = selfCopy;
            if ([(UIPanelController *)selfCopy showShadowViews])
            {
              _overlayEdgeShadowView = [(UIPanelController *)selfCopy _overlayEdgeShadowView];

              v57 = selfCopy;
              if (!_overlayEdgeShadowView)
              {
                _createOverlayShadowView = [(UIPanelController *)selfCopy _createOverlayShadowView];
                v57 = selfCopy;
                [(UIPanelController *)selfCopy _setOverlayEdgeShadowView:_createOverlayShadowView];
              }
            }

            _overlayEdgeShadowView2 = [(UIPanelController *)v57 _overlayEdgeShadowView];
LABEL_84:
            v599 = v28 & v55;
            if ((v28 & v55) != 0)
            {
              v60 = selfCopy;
              if (![(UIPanelController *)selfCopy isAnimating])
              {
                [v598 supplementaryDragOffset];
                if (v61 == 0.0)
                {
                  _primaryParallaxDimmingView2 = 0;
                  _supplementaryParallaxShadowView2 = 0;
                  goto LABEL_98;
                }
              }

              _supplementaryParallaxShadowView = [(UIPanelController *)selfCopy _supplementaryParallaxShadowView];

              v63 = selfCopy;
              if (!_supplementaryParallaxShadowView)
              {
                _createOverlayShadowView2 = [(UIPanelController *)selfCopy _createOverlayShadowView];
                v63 = selfCopy;
                [(UIPanelController *)selfCopy _setSupplementaryParallaxShadowView:_createOverlayShadowView2];
              }

              _supplementaryParallaxShadowView2 = [(UIPanelController *)v63 _supplementaryParallaxShadowView];
              _primaryParallaxDimmingView = [(UIPanelController *)selfCopy _primaryParallaxDimmingView];

              if (!_primaryParallaxDimmingView)
              {
                v66 = [UIDimmingView alloc];
                if (v18)
                {
                  v67 = v18;
                }

                else
                {
                  v67 = view2;
                }

                [v67 frame];
                v68 = [(UIDimmingView *)v66 initWithFrame:?];
                [(UIPanelController *)selfCopy _setPrimaryParallaxDimmingView:v68];
              }

              _primaryParallaxDimmingView2 = [(UIPanelController *)selfCopy _primaryParallaxDimmingView];
            }

            else
            {
              _primaryParallaxDimmingView2 = 0;
              _supplementaryParallaxShadowView2 = 0;
            }

            v60 = selfCopy;
LABEL_98:
            if (((supplementaryOverlapsMain | ((*&v60->_panelControllerFlags & 0x20) >> 5)) & 1) == 0 && ([configuration2 allowTotalWidthGreaterThanParent] & 1) == 0 && (panelControllerFlags = v60->_panelControllerFlags, (*&panelControllerFlags & 0x80) == 0) && ((*&panelControllerFlags & 8) != 0 || -[UIPanelController isAnimating](v60, "isAnimating") || (*&v60->_panelControllerFlags & 0x10) != 0))
            {
              leadingBarContentClippingView = [(UIPanelController *)v60 leadingBarContentClippingView];
              trailingBarContentClippingView = [(UIPanelController *)selfCopy trailingBarContentClippingView];
              style = [(UIPanelController *)selfCopy style];
              v202 = v592 ^ 1;
              if (style != 2)
              {
                v202 = 1;
              }

              if (v202)
              {
                supplementaryBarContentClippingView = 0;
              }

              else
              {
                supplementaryBarContentClippingView = [(UIPanelController *)selfCopy supplementaryBarContentClippingView];
              }
            }

            else
            {
              supplementaryBarContentClippingView = 0;
              trailingBarContentClippingView = 0;
              leadingBarContentClippingView = 0;
            }

            goto LABEL_106;
          }

LABEL_72:
          _trailingBorderView2 = 0;
          goto LABEL_73;
        }

LABEL_64:
        _supplementaryBorderView2 = 0;
        _leadingBorderView2 = 0;
        if (!view2)
        {
          goto LABEL_72;
        }

        goto LABEL_65;
      }

      borderColor3 = [configuration2 borderColor];
      v35 = borderColor3;
      if (borderColor3)
      {
        backgroundColor3 = borderColor3;
      }

      else
      {
        backgroundColor3 = [(UIView *)selfCopy->_view backgroundColor];
      }

      v33 = selfCopy;

      goto LABEL_48;
    }

    view2 = view3;
LABEL_32:
    if ([v598 trailingOverlapsMain])
    {
      supplementaryOverlapsMain = 1;
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v563 = collapsedViewController;
  view = [v563 view];
  v594 = 0;
  v599 = 0;
  supplementaryBarContentClippingView = 0;
  trailingBarContentClippingView = 0;
  leadingBarContentClippingView = 0;
  _primaryParallaxDimmingView2 = 0;
  _overlayEdgeShadowView2 = 0;
  _supplementaryParallaxShadowView2 = 0;
  _supplementaryBorderView2 = 0;
  v543 = 0;
  _leadingBorderView2 = 0;
  r1_16 = 0;
  view2 = 0;
  v18 = 0;
LABEL_106:
  v646 = view;
  v645 = 0;
  v644 = 0;
  __65__UIPanelController__unspecifiedUpdateToNewPublicState_withSize___block_invoke(&v646, &v645, &v644);
  v539 = v646;

  v527 = v645;
  v525 = v644;
  v643 = v18;
  v642 = 0;
  v641 = 0;
  __65__UIPanelController__unspecifiedUpdateToNewPublicState_withSize___block_invoke(&v643, &v642, &v641);
  r1_8 = v643;

  v526 = v642;
  v524 = v641;
  v640 = view2;
  v639 = 0;
  v638 = 0;
  __65__UIPanelController__unspecifiedUpdateToNewPublicState_withSize___block_invoke(&v640, &v639, &v638);
  v591 = v640;

  v520 = v639;
  v523 = v638;
  if (v599)
  {
    v637 = r1_16;
    v636 = 0;
    v635 = 0;
    __65__UIPanelController__unspecifiedUpdateToNewPublicState_withSize___block_invoke(&v637, &v636, &v635);
    v70 = v637;

    v517 = v636;
    v522 = v635;
    v71 = 7;
    r1_16 = v70;
  }

  else
  {
    v522 = 0;
    v517 = 0;
    v71 = 5;
  }

  v72 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v71];
  v573 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v71];
  v73 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:2];
  v74 = v72;
  v75 = v74;
  v76 = selfCopy;
  supplementaryOverlapsMain2 = r1_8;
  v78 = _leadingBorderView2;
  v79 = v543;
  if (v539)
  {
    [v74 addObject:?];
  }

  if (v527)
  {
    [v75 addObject:?];
  }

  if (r1_8)
  {
    if ([v598 leadingOverlapsMain])
    {
      supplementaryOverlapsMain2 = 1;
    }

    else if (r1_16 == r1_8)
    {
      supplementaryOverlapsMain2 = [v598 supplementaryOverlapsMain];
    }

    else
    {
      supplementaryOverlapsMain2 = 0;
    }
  }

  if (!v591)
  {
    goto LABEL_123;
  }

  if ([v598 trailingOverlapsMain])
  {
    [configuration2 allowTotalWidthGreaterThanParent];
    goto LABEL_125;
  }

  if (r1_16 == v591)
  {
    supplementaryOverlapsMain3 = [v598 supplementaryOverlapsMain];
  }

  else
  {
LABEL_123:
    supplementaryOverlapsMain3 = 0;
  }

  allowTotalWidthGreaterThanParent = [configuration2 allowTotalWidthGreaterThanParent];
  if (((supplementaryOverlapsMain2 | supplementaryOverlapsMain3) & 1) == 0)
  {
    v576 = 0;
    dimmingView = 0;
    if ((v599 & allowTotalWidthGreaterThanParent) != 1)
    {
      goto LABEL_133;
    }

    goto LABEL_129;
  }

LABEL_125:
  [(UIPanelController *)selfCopy _captureView];
  v82 = v76 = selfCopy;
  if (!v82)
  {
    v82 = objc_alloc_init(_UIMTCaptureView);
    [(UIPanelController *)selfCopy _setMaterialThemesCaptureView:v82];
  }

  v576 = v82;
  [v75 addObject:v82];
LABEL_129:
  dimmingView = [(UIPanelController *)v76 dimmingView];
  if (dimmingView)
  {
    [v75 addObject:?];
  }

  else
  {
    dimmingView = 0;
  }

  v78 = _leadingBorderView2;
  v79 = v543;
LABEL_133:
  v83 = dyld_program_sdk_at_least();
  v84 = v83;
  if (v78 && (v83 & 1) == 0)
  {
    [v75 addObject:v78];
  }

  if (r1_8)
  {
    [v75 addObject:r1_8];
    if (v526)
    {
      [v75 addObject:v526];
    }

    [v573 addObject:r1_8];
  }

  if (!((v79 == 0) | v84 & 1))
  {
    [v75 addObject:v79];
  }

  if (v591)
  {
    [v75 addObject:v591];
    if (v520)
    {
      [v75 addObject:?];
    }

    [v573 addObject:v591];
    if (v79)
    {
      [v75 addObject:v79];
    }
  }

  if (v599)
  {
    [v75 addObject:r1_16];
    if (v517)
    {
      [v75 addObject:?];
    }

    [v573 addObject:r1_16];
    if (_supplementaryBorderView2)
    {
      [v75 addObject:_supplementaryBorderView2];
    }
  }

  v85 = v84 ^ 1;
  if (!((v78 == 0) | v85 & 1))
  {
    [v75 addObject:v78];
  }

  if (!((v79 == 0) | v85 & 1))
  {
    [v75 addObject:v79];
  }

  if (_overlayEdgeShadowView2 && dimmingView)
  {
    [v75 insertObject:_overlayEdgeShadowView2 atIndex:{objc_msgSend(v75, "indexOfObject:", dimmingView) + 1}];
  }

  if (v594)
  {
    if (v78)
    {
      v86 = v78;
    }

    else
    {
      v86 = v79;
    }

    if (_supplementaryBorderView2)
    {
      v86 = _supplementaryBorderView2;
    }

    v87 = v86;
    [v87 setRenderAsShadow:1];
  }

  if (r1_8 | v591)
  {
    v88 = _primaryParallaxDimmingView2 != 0;
  }

  else
  {
    v88 = 0;
  }

  v514 = v88;
  if (v88)
  {
    if (r1_8)
    {
      v89 = r1_8;
    }

    else
    {
      v89 = v591;
    }

    [v75 insertObject:_primaryParallaxDimmingView2 atIndex:{objc_msgSend(v75, "indexOfObject:", v89) + 1}];
  }

  if (_supplementaryParallaxShadowView2)
  {
    v90 = [v75 indexOfObject:r1_16];
    if (v79 | v78)
    {
      if (v78)
      {
        [v75 insertObject:v78 atIndex:v90];
        v91 = v75;
        v92 = v78;
      }

      else
      {
        [v75 insertObject:v79 atIndex:v90];
        v91 = v75;
        v92 = v79;
      }

      v90 = [v91 indexOfObject:v92];
    }

    [v75 insertObject:_supplementaryParallaxShadowView2 atIndex:v90];
  }

  v521 = (r1_8 | v591) != 0;
  subviews = [_contentView subviews];
  array = [v75 array];
  v95 = [subviews isEqualToArray:array];

  contentView = [0 contentView];
  if (contentView)
  {
    contentView2 = contentView;

LABEL_185:
    subviews2 = [contentView2 subviews];
    array2 = [v73 array];
    v595 = [subviews2 isEqualToArray:array2] ^ 1;

    goto LABEL_186;
  }

  contentView2 = [0 contentView];

  if (contentView2)
  {
    goto LABEL_185;
  }

  v595 = 0;
LABEL_186:
  if (v95)
  {
    [_contentView setNeedsLayout];
  }

  else
  {
    v633 = 0u;
    v634 = 0u;
    v631 = 0u;
    v632 = 0u;
    subviews3 = [_contentView subviews];
    v101 = [subviews3 countByEnumeratingWithState:&v631 objects:v664 count:16];
    if (v101)
    {
      v102 = *v632;
      do
      {
        for (i = 0; i != v101; ++i)
        {
          if (*v632 != v102)
          {
            objc_enumerationMutation(subviews3);
          }

          v104 = *(*(&v631 + 1) + 8 * i);
          if (([v75 containsObject:v104] & 1) == 0 && (objc_msgSend(v73, "containsObject:", v104) & 1) == 0)
          {
            [v104 removeFromSuperview];
          }
        }

        v101 = [subviews3 countByEnumeratingWithState:&v631 objects:v664 count:16];
      }

      while (v101);
    }

    v629 = 0u;
    v630 = 0u;
    v627 = 0u;
    v628 = 0u;
    v105 = v75;
    v106 = [v105 countByEnumeratingWithState:&v627 objects:v663 count:16];
    if (v106)
    {
      v107 = 0;
      v108 = *v628;
      do
      {
        for (j = 0; j != v106; ++j)
        {
          if (*v628 != v108)
          {
            objc_enumerationMutation(v105);
          }

          [_contentView insertSubview:*(*(&v627 + 1) + 8 * j) atIndex:v107++];
        }

        v106 = [v105 countByEnumeratingWithState:&v627 objects:v663 count:16];
      }

      while (v106);
    }
  }

  if (v595)
  {
    v625 = 0u;
    v626 = 0u;
    v623 = 0u;
    v624 = 0u;
    subviews4 = [contentView2 subviews];
    v111 = [subviews4 countByEnumeratingWithState:&v623 objects:v662 count:16];
    if (v111)
    {
      v112 = *v624;
      do
      {
        for (k = 0; k != v111; ++k)
        {
          if (*v624 != v112)
          {
            objc_enumerationMutation(subviews4);
          }

          v114 = *(*(&v623 + 1) + 8 * k);
          if (([v75 containsObject:v114] & 1) == 0 && (objc_msgSend(v73, "containsObject:", v114) & 1) == 0)
          {
            [v114 removeFromSuperview];
          }
        }

        v111 = [subviews4 countByEnumeratingWithState:&v623 objects:v662 count:16];
      }

      while (v111);
    }

    v621 = 0u;
    v622 = 0u;
    v619 = 0u;
    v620 = 0u;
    v115 = v73;
    v116 = [v115 countByEnumeratingWithState:&v619 objects:v661 count:16];
    if (v116)
    {
      v117 = 0;
      v118 = *v620;
      do
      {
        for (m = 0; m != v116; ++m)
        {
          if (*v620 != v118)
          {
            objc_enumerationMutation(v115);
          }

          [contentView2 insertSubview:*(*(&v619 + 1) + 8 * m) atIndex:v117++];
        }

        v116 = [v115 countByEnumeratingWithState:&v619 objects:v661 count:16];
      }

      while (v116);
    }
  }

  v615[0] = MEMORY[0x1E69E9820];
  v615[1] = 3221225472;
  v616 = __54__UIPanelController__updateToNewPublicState_withSize___block_invoke_2;
  v617 = &unk_1E7103978;
  v618 = selfCopy;
  v611[0] = MEMORY[0x1E69E9820];
  v611[1] = 3221225472;
  v612 = __54__UIPanelController__updateToNewPublicState_withSize___block_invoke_426;
  v613 = &__block_descriptor_40_e37_B24__0__UIView_8__UIViewController_16lu32l8;
  v614 = v615;
  if (__54__UIPanelController__updateToNewPublicState_withSize___block_invoke_426(v611, leadingBarContentClippingView))
  {
    leadingBarContentClippingView2 = [(UIPanelController *)selfCopy leadingBarContentClippingView];
    subviews5 = [leadingBarContentClippingView2 subviews];
    v122 = [subviews5 count] == 0;

    if (!v122)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v501 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v501, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v501, OS_LOG_TYPE_FAULT, "Removing nonempty clipping view. UINavigationBar content may be missing", buf, 2u);
        }
      }

      else
      {
        v501 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED491CD0) + 8);
        if (os_log_type_enabled(v501, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v501, OS_LOG_TYPE_ERROR, "Removing nonempty clipping view. UINavigationBar content may be missing", buf, 2u);
        }
      }
    }

    leadingBarContentClippingView3 = [(UIPanelController *)selfCopy leadingBarContentClippingView];
    [leadingBarContentClippingView3 removeFromSuperview];
  }

  if ((v612)(v611, trailingBarContentClippingView, trailingViewController))
  {
    trailingBarContentClippingView2 = [(UIPanelController *)selfCopy trailingBarContentClippingView];
    subviews6 = [trailingBarContentClippingView2 subviews];
    v126 = [subviews6 count] == 0;

    if (!v126)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v502 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v502, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v502, OS_LOG_TYPE_FAULT, "Removing nonempty clipping view. UINavigationBar content may be missing", buf, 2u);
        }
      }

      else
      {
        v502 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED491CD8) + 8);
        if (os_log_type_enabled(v502, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v502, OS_LOG_TYPE_ERROR, "Removing nonempty clipping view. UINavigationBar content may be missing", buf, 2u);
        }
      }
    }

    trailingBarContentClippingView3 = [(UIPanelController *)selfCopy trailingBarContentClippingView];
    [trailingBarContentClippingView3 removeFromSuperview];
  }

  if ((v612)(v611, supplementaryBarContentClippingView, supplementaryViewController))
  {
    supplementaryBarContentClippingView2 = [(UIPanelController *)selfCopy supplementaryBarContentClippingView];
    subviews7 = [supplementaryBarContentClippingView2 subviews];
    v130 = [subviews7 count] == 0;

    if (!v130)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v503 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v503, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v503, OS_LOG_TYPE_FAULT, "Removing nonempty clipping view. UINavigationBar content may be missing", buf, 2u);
        }
      }

      else
      {
        v503 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED491CE0) + 8);
        if (os_log_type_enabled(v503, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v503, OS_LOG_TYPE_ERROR, "Removing nonempty clipping view. UINavigationBar content may be missing", buf, 2u);
        }
      }
    }

    supplementaryBarContentClippingView3 = [(UIPanelController *)selfCopy supplementaryBarContentClippingView];
    [supplementaryBarContentClippingView3 removeFromSuperview];
  }

  if (+[UIView _materialSidebarsEnabled])
  {
    if ([v598 leadingOverlapsMain])
    {
      v132 = 2;
    }

    else
    {
      v132 = 0;
    }

    leadingViewController2 = [(UIPanelController *)selfCopy leadingViewController];
    [leadingViewController2 _setOverrideUserInterfaceRenderingMode:v132];

    if ([v598 trailingOverlapsMain])
    {
      v134 = 2;
    }

    else
    {
      v134 = 0;
    }

    trailingViewController2 = [(UIPanelController *)selfCopy trailingViewController];
    [trailingViewController2 _setOverrideUserInterfaceRenderingMode:v134];

    if ([v598 supplementaryOverlapsMain])
    {
      v136 = 2;
    }

    else
    {
      v136 = 0;
    }

    supplementaryViewController2 = [(UIPanelController *)selfCopy supplementaryViewController];
    [supplementaryViewController2 _setOverrideUserInterfaceRenderingMode:v136];
  }

  v138 = selfCopy;
  if ((*&selfCopy->_panelControllerFlags & 8) != 0)
  {
    r1 = *MEMORY[0x1E695EFF8];
    rect = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    [_contentView bounds];
    r1 = v139;
    rect = v140;
    r1_24 = v141;
    v590 = v142;
    v138 = selfCopy;
  }

  view5 = [(UIPanelController *)v138 view];
  _shouldReverseLayoutDirection = [view5 _shouldReverseLayoutDirection];

  [_contentView _currentScreenScale];
  v596 = v144;
  if (v599)
  {
    [v598 leadingWidth];
    v146 = v145;
    [v598 leadingDragOffset];
    if (v146 <= v147 && ([v598 trailingWidth], v149 = v148, objc_msgSend(v598, "trailingDragOffset"), v149 <= v150))
    {
      v516 = 0;
    }

    else
    {
      [v598 supplementaryWidth];
      v152 = v151;
      [v598 supplementaryDragOffset];
      v516 = v152 > v153;
    }

    v570 = _supplementaryBorderView2;
    v154 = r1_16;
  }

  else
  {
    v570 = 0;
    v154 = 0;
    v516 = 0;
  }

  wantsFloatingSidebar = [(UIPanelController *)selfCopy wantsFloatingSidebar];
  v572 = dimmingView;
  v156 = v598;
  v157 = wantsFloatingSidebar | dyld_program_sdk_at_least() ^ 1;
  v158 = r1;
  v159 = r1_24;
  v160 = v590;
  if ((v157 & 1) == 0)
  {
    if (r1_8)
    {
      [v156 leadingWidth];
      v162 = v161;
      [v156 leadingDragOffset];
    }

    else
    {
      [v156 trailingWidth];
      v162 = v164;
      [v156 trailingDragOffset];
    }

    v165 = v163;
    [v156 supplementaryWidth];
    v167 = v166;
    [v156 supplementaryDragOffset];
    v169 = v162 + v167 - v165 - v168;
    if (((r1_8 == 0) | _shouldReverseLayoutDirection) == 1)
    {
      v170 = r1;
      v158 = r1;
      v172 = r1_24;
      v171 = v590;
      v159 = r1_24;
      v160 = v590;
      if (v169 <= 0.0)
      {
        goto LABEL_269;
      }

      v173 = _shouldReverseLayoutDirection ^ 1;
      if (!v591)
      {
        v173 = 1;
      }

      if (v173)
      {
        v158 = r1;
LABEL_268:
        v174 = rect;
        v175 = v172;
        v176 = v171;
        v177 = CGRectGetWidth(*&v170);
        v666.origin.x = r1;
        v666.origin.y = rect;
        v666.size.width = r1_24;
        v666.size.height = v590;
        v160 = CGRectGetHeight(v666);
        v159 = v177 - v169;
        goto LABEL_269;
      }
    }

    else
    {
      v170 = r1;
      v158 = r1;
      v172 = r1_24;
      v171 = v590;
      v159 = r1_24;
      v160 = v590;
      if (v169 <= 0.0)
      {
        goto LABEL_269;
      }
    }

    v158 = v170 + v169;
    goto LABEL_268;
  }

LABEL_269:
  [v572 setFrame:{v158, rect, v159, v160}];
  configuration3 = [v156 configuration];
  allowTotalWidthGreaterThanParent2 = [configuration3 allowTotalWidthGreaterThanParent];

  v181 = 1.0;
  if (!(allowTotalWidthGreaterThanParent2 & 1 | !v516))
  {
    goto LABEL_292;
  }

  if ((r1_16 == 0) | allowTotalWidthGreaterThanParent2 & 1)
  {
    v181 = 0.0;
    if (!(r1_8 | v591))
    {
      goto LABEL_292;
    }

    if ((v516 & allowTotalWidthGreaterThanParent2) == 1)
    {
      [v156 leadingDragOffset];
      v183 = v182;
      [v156 trailingDragOffset];
      v181 = v183 + v184;
      v180 = 1.0;
      if (v181 == 0.0)
      {
        goto LABEL_289;
      }
    }

    if (allowTotalWidthGreaterThanParent2)
    {
      v185 = v156;
      [v185 leadingWidth];
      v187 = v186;
      [v185 trailingWidth];
      v189 = v188;

      v190 = v185;
      [v190 leadingDragOffset];
      v192 = v191;
      [v190 trailingDragOffset];
      v194 = v193;
      [v190 supplementaryDragOffset];
      v196 = v195;

      v180 = 0.0;
      if (v187 + v189 > 0.0)
      {
        v197 = (v187 + v189 - (v192 + v194 + v196)) / (v187 + v189);
        goto LABEL_287;
      }
    }

    else
    {
      [v156 leadingWidth];
      v204 = v203;
      [v156 trailingWidth];
      v206 = v205;
      [v156 leadingDragOffset];
      v208 = v207;
      [v156 trailingDragOffset];
      v180 = 0.0;
      if (v204 + v206 > 0.0)
      {
        v197 = (v204 + v206 - (v208 + v209)) / (v204 + v206);
LABEL_287:
        v210 = fmax(v197, 0.0);
        v180 = 1.0;
        if (v210 <= 1.0)
        {
          v180 = v210;
        }
      }
    }

LABEL_289:
    v211 = 1.0;
    if (allowTotalWidthGreaterThanParent2)
    {
      v211 = 0.5;
    }

    v181 = v211 * v180;
    goto LABEL_292;
  }

  [v156 supplementaryWidth];
  v199 = v198;
  [v156 supplementaryDragOffset];
  v180 = v200;
  v181 = 0.0;
  if (v199 > 0.0)
  {
    v181 = fmax((v199 - v180) / v199, 0.0);
    v180 = 1.0;
    if (v181 > 1.0)
    {
      v181 = 1.0;
    }
  }

LABEL_292:
  [v572 setPercentDisplayed:{v181, v180}];

  if (supplementaryEdge)
  {
    v212 = 0;
  }

  else
  {
    v212 = supplementaryViewController;
  }

  if (supplementaryEdge)
  {
    v213 = supplementaryViewController;
  }

  else
  {
    v213 = 0;
  }

  if (leadingViewController)
  {
    v212 = leadingViewController;
  }

  v214 = v212;
  v215 = trailingViewController;
  if (!trailingViewController)
  {
    v215 = v213;
  }

  v216 = v215;
  _supplementaryAdoptsPrimaryBackgroundStyle = [configuration2 _supplementaryAdoptsPrimaryBackgroundStyle];
  v217 = v599 ^ 1;
  if (!r1_16)
  {
    v217 = 0;
  }

  v600 = v217;
  v529 = r1_8;
  v553 = _leadingBorderView2;
  v218 = v154;
  v578 = v570;
  v541 = _supplementaryParallaxShadowView2;
  v571 = v539;
  v556 = v543;
  v531 = v591;
  v219 = v156;
  v513 = v573;
  v574 = v214;
  v560 = supplementaryViewController;
  v555 = v563;
  v537 = v216;
  v567 = v218;
  if (v218)
  {
    v220 = r1_8 != 0;
  }

  else
  {
    v220 = 0;
  }

  if (v591 != 0 && v220)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v500 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void layoutSideBySideViewsColumnStyle(UIView *__strong, UIView *__strong, UIPanelBorderView *__strong, UIView *__strong, BOOL, UIPanelBorderView *__strong, UIView *__strong, UIView *__strong, UIPanelBorderView *__strong, UIView *__strong, UIView *__strong, BOOL, UISlidingBarState *__strong, BOOL, CGRect, NSMutableSet *__strong, CGFloat, UIViewController *__strong, UIViewController *__strong, UIViewController *__strong, UIViewController *__strong)"}];
    [currentHandler handleFailureInFunction:v500 file:@"UIPanelController.m" lineNumber:3094 description:{@"Side-by-side layout not supported for all non-nil leading, trailing, and supplementary views. This is an internal UIKit problem."}];
  }

  supplementaryOverlapsMain4 = [v219 supplementaryOverlapsMain];
  v222 = v574 != 0;
  if (v574)
  {
    v223 = v600;
  }

  else
  {
    v223 = 1;
  }

  if (v223)
  {
    leadingOverlapsMain = v222 & supplementaryOverlapsMain4;
    v225 = v574 == 0;
    if (v600 & 1 | (v574 != 0))
    {
      trailingOverlapsMain = v222 | supplementaryOverlapsMain4;
      v226 = v225 | supplementaryOverlapsMain4;
      v227 = v225 & supplementaryOverlapsMain4;
    }

    else
    {
      trailingOverlapsMain = [v219 trailingOverlapsMain];
      v226 = 1;
      v227 = trailingOverlapsMain;
    }
  }

  else
  {
    leadingOverlapsMain = [v219 leadingOverlapsMain];
    v227 = 0;
    trailingOverlapsMain = 1;
    v226 = leadingOverlapsMain;
  }

  v228 = v553;
  if (!_leadingBorderView2)
  {
    v228 = v556;
  }

  if (v578)
  {
    v228 = v578;
  }

  v511 = v228;
  [v511 renderAsShadow];
  if ((v521 & v600) != 1)
  {
    v545 = 0.0;
    v229 = 0.0;
    if (!(r1_8 | v591))
    {
      goto LABEL_327;
    }

    goto LABEL_326;
  }

  if (v574 == v560 || (v545 = 0.0, v229 = 0.0, v537 == v560))
  {
LABEL_326:
    configuration4 = [v219 configuration];
    [configuration4 rubberBandExtension];
    v545 = v231;

    [v219 _rubberBandInset];
    UIRoundToScale(v232, v596);
    v229 = v233;
  }

LABEL_327:
  if (_leadingBorderView2)
  {
    configuration5 = [v219 configuration];
    [configuration5 leadingBorderWidthForScale:v596];
    v548 = v235;
LABEL_331:

    goto LABEL_332;
  }

  if (v556)
  {
    configuration5 = [v219 configuration];
    [configuration5 trailingBorderWidthForScale:v596];
    v548 = v236;
    goto LABEL_331;
  }

  v548 = 0.0;
LABEL_332:
  [v219 supplementaryWidth];
  v238 = v237;
  [v219 supplementaryOffscreenWidth];
  if (v238 >= v239)
  {
    v239 = v238;
  }

  UIRoundToScale(v239, v596);
  v241 = v240;
  if (v574)
  {
    [v219 leadingOffscreenWidth];
    if (v242 > 0.0)
    {
      [v219 leadingWidth];
      if (v243 != 0.0)
      {
        [v219 leadingWidth];
        [v219 leadingOffscreenWidth];
      }
    }
  }

  else
  {
    [v219 trailingOffscreenWidth];
    if (v244 > 0.0)
    {
      [v219 trailingWidth];
      if (v245 != 0.0)
      {
        [v219 trailingWidth];
        [v219 trailingOffscreenWidth];
      }
    }
  }

  [v219 supplementaryOffscreenWidth];
  v247 = v246;
  [v219 _supplementaryOverlayWidth];
  v249 = v248;
  if (v600)
  {
    v528 = 0.0;
    v515 = 0.0;
    v510 = v247;
    v535 = v241;
    v250 = 0.0;
  }

  else
  {
    [v219 leadingWidth];
    v252 = v251;
    [v219 leadingOffscreenWidth];
    if (v252 >= v253)
    {
      v253 = v252;
    }

    UIRoundToScale(v253, v596);
    v255 = v254;
    [v219 leadingOffscreenWidth];
    v510 = v256;
    [v219 trailingWidth];
    v258 = v257;
    [v219 trailingOffscreenWidth];
    if (v258 >= v259)
    {
      v259 = v258;
    }

    UIRoundToScale(v259, v596);
    v535 = v260;
    [v219 trailingOffscreenWidth];
    v262 = v261;
    [v219 supplementaryDragOffset];
    v250 = v263;
    v528 = v241;
    v515 = v247;
    v247 = v262;
    v241 = v255;
  }

  if (v226 & trailingOverlapsMain)
  {
    _supplementaryEntirelyOverlapsMain = 0;
  }

  else
  {
    _supplementaryEntirelyOverlapsMain = [v219 _supplementaryEntirelyOverlapsMain];
  }

  v265 = 0.0;
  v266 = 0.0;
  if ((v226 & 1) == 0)
  {
    if (v600)
    {
      [v219 supplementaryDragOffset];
      v268 = v267;
      _leadingEntirelyOverlapsMain = _supplementaryEntirelyOverlapsMain;
      if (v267 == 0.0 && v241 > 0.0)
      {
        [v219 supplementaryWidth];
        if (v270 == 0.0)
        {
          v268 = v241;
        }

        _leadingEntirelyOverlapsMain = _supplementaryEntirelyOverlapsMain;
      }
    }

    else
    {
      [v219 leadingDragOffset];
      v268 = v271;
      if (v271 == 0.0 && v241 > 0.0)
      {
        [v219 leadingWidth];
        if (v272 == 0.0)
        {
          v268 = v241;
        }
      }

      _leadingEntirelyOverlapsMain = [v219 _leadingEntirelyOverlapsMain];
    }

    v273 = 0.0 - v268;
    if (_leadingEntirelyOverlapsMain)
    {
      v274 = 0;
    }

    else
    {
      v274 = leadingOverlapsMain;
    }

    if (v274 == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v275 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v275, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v275, OS_LOG_TYPE_FAULT, "Unexpected overlay and side-by-side combination", buf, 2u);
        }
      }

      else
      {
        v275 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED491CE8) + 8);
        if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v275, OS_LOG_TYPE_ERROR, "Unexpected overlay and side-by-side combination", buf, 2u);
        }
      }

      v276 = v249;
      if ((v600 & 1) == 0)
      {
        [v219 _leadingOverlayWidth];
      }

      v273 = v273 + v241 - v276;
    }

    v266 = v229 - v545 + v273;
  }

  if ((trailingOverlapsMain & 1) == 0)
  {
    if (v600)
    {
      [v219 supplementaryDragOffset];
      v278 = v277;
      if (v277 == 0.0 && v535 > 0.0)
      {
        [v219 supplementaryWidth];
        if (v279 == 0.0)
        {
          v278 = v535;
        }
      }
    }

    else
    {
      [v219 trailingDragOffset];
      v278 = v280;
      if (v280 == 0.0 && v535 > 0.0)
      {
        [v219 trailingWidth];
        if (v281 == 0.0)
        {
          v278 = v535;
        }
      }

      _supplementaryEntirelyOverlapsMain = [v219 _trailingEntirelyOverlapsMain];
    }

    v282 = v278 + 0.0;
    if (_supplementaryEntirelyOverlapsMain)
    {
      v283 = 0;
    }

    else
    {
      v283 = v227;
    }

    if (v283 == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v284 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v284, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v284, OS_LOG_TYPE_FAULT, "Unexpected overlay and side-by-side combination", buf, 2u);
        }
      }

      else
      {
        v284 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED491CF0) + 8);
        if (os_log_type_enabled(v284, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v284, OS_LOG_TYPE_ERROR, "Unexpected overlay and side-by-side combination", buf, 2u);
        }
      }

      if ((v600 & 1) == 0)
      {
        [v219 _trailingOverlayWidth];
        v249 = v285;
      }

      v282 = v282 + v535 - v249;
    }

    v265 = v545 - v229 + v282;
  }

  UIRoundToScale(v266, v596);
  v287 = v286;
  UIRoundToScale(v265, v596);
  v289 = v288;
  UIRoundToScale(v250, v596);
  v291 = v290;
  [v219 mainWidth];
  v293 = v292;
  if (v226)
  {
    v294 = 0.0;
    v295 = v539;
    if ((trailingOverlapsMain & 1) == 0)
    {
      v294 = v545 - v229 + v528 + v535 - v289 - v291;
    }
  }

  else
  {
    v294 = v545 - v229 + v528 + v241 + v287 - v291;
    v295 = v539;
    if (v287 == 0.0 || v241 + v287 != 0.0)
    {
      goto LABEL_402;
    }

    v296 = v600;
    if (!v567)
    {
      v296 = 1;
    }

    if ((v296 & 1) != 0 || v515 == 0.0)
    {
      v287 = v287 - v548;
    }

    else
    {
LABEL_402:
      v297 = v515 != v241 - v287 - v291 || v515 == 0.0;
      if (!v297)
      {
        v287 = v287 - v548;
      }
    }
  }

  if (v295)
  {
    v298 = v292;
    if (v292 == 0.0)
    {
      v667.origin.x = r1;
      v667.origin.y = rect;
      v667.size.width = r1_24;
      v667.size.height = v590;
      v298 = CGRectGetWidth(v667);
      if ((v226 & 1) == 0)
      {
        v299 = 0;
        if (_leadingBorderView2)
        {
          if (v241 > 0.0)
          {
            v299 = 0;
            if (v510 < v241 && v291 == 0.0)
            {
              v299 = [v553 renderAsShadow] ^ 1;
            }
          }
        }

        v300 = 0;
        v301 = v600;
        if (!v578)
        {
          v301 = 1;
        }

        if ((v301 & 1) == 0 && v528 > 0.0 && v515 < v528)
        {
          v300 = [v578 renderAsShadow] ^ 1;
        }

        v302 = 1.0;
        if ((v299 & v300) != 0)
        {
          v302 = 2.0;
        }

        v303 = v298 - v294 - v548 * v302;
        if ((v299 | v300))
        {
          v298 = v303;
        }

        else
        {
          v298 = v298 - v294;
        }
      }

      if ((trailingOverlapsMain & 1) == 0)
      {
        v304 = 0;
        if (v543)
        {
          if (v535 > 0.0)
          {
            v304 = 0;
            if (v247 < v535 && v291 == 0.0)
            {
              v304 = [v556 renderAsShadow] ^ 1;
            }
          }
        }

        v305 = 0;
        v306 = v600;
        if (!v578)
        {
          v306 = 1;
        }

        if ((v306 & 1) == 0 && v528 > 0.0 && v515 < v528)
        {
          v305 = [v578 renderAsShadow] ^ 1;
        }

        v307 = 1.0;
        if ((v304 & v305) != 0)
        {
          v307 = 2.0;
        }

        v308 = v298 - v294 - v548 * v307;
        if ((v304 | v305))
        {
          v298 = v308;
        }

        else
        {
          v298 = v298 - v294;
        }
      }
    }
  }

  else
  {
    v298 = v292;
  }

  v668.origin.x = r1;
  v668.origin.y = rect;
  v668.size.width = r1_24;
  v668.size.height = v590;
  v309 = CGRectGetHeight(v668);
  v657 = 0;
  v658 = &v657;
  v659 = 0x2020000000;
  v660 = 0.0;
  if (_shouldReverseLayoutDirection)
  {
    v669.origin.x = r1;
    v669.origin.y = rect;
    v669.size.width = r1_24;
    v669.size.height = v590;
    MaxX = CGRectGetMaxX(v669);
    v311 = v658;
    v658[3] = MaxX;
    if (v226)
    {
      if (trailingOverlapsMain)
      {
        goto LABEL_473;
      }

      if (v293 == 0.0)
      {
        v315 = v229 + MaxX;
      }

      else
      {
        v312 = v229 + v294 + v298;
        v311[3] = v312;
        if (v294 <= 0.0)
        {
          goto LABEL_473;
        }

        v313 = v600 ^ 1;
        if (!v578)
        {
          v313 = 0;
        }

        if (v528 <= 0.0)
        {
          v313 = 0;
        }

        v314 = 1.0;
        if ((v313 & (v515 < v528)) != 0)
        {
          v314 = 2.0;
        }

        v315 = v548 * v314 + v312;
      }
    }

    else
    {
      v315 = MaxX - v287;
    }

LABEL_472:
    v311[3] = v315;
    goto LABEL_473;
  }

  if ((v226 & 1) == 0)
  {
    v660 = v287;
    goto LABEL_473;
  }

  if (trailingOverlapsMain)
  {
    goto LABEL_473;
  }

  if (v293 != 0.0)
  {
    v670.origin.x = r1;
    v670.origin.y = rect;
    v670.size.width = r1_24;
    v670.size.height = v590;
    v316 = CGRectGetMaxX(v670) - v294 - v298;
    v311 = v658;
    v658[3] = v316;
    if (v294 <= 0.0)
    {
      goto LABEL_473;
    }

    v317 = v600 ^ 1;
    if (!v578)
    {
      v317 = 0;
    }

    if (v528 <= 0.0)
    {
      v317 = 0;
    }

    v318 = 1.0;
    if ((v317 & (v515 < v528)) != 0)
    {
      v318 = 2.0;
    }

    v315 = v316 - v548 * v318;
    goto LABEL_472;
  }

  v660 = -v229;
LABEL_473:
  *buf = MEMORY[0x1E69E9820];
  v649 = 3221225472;
  v650 = __layoutSideBySideViewsColumnStyle_block_invoke;
  v651 = &unk_1E7103A80;
  v656 = _shouldReverseLayoutDirection ^ 1;
  v654 = &v657;
  v655 = v309;
  v319 = v513;
  v652 = v319;
  v320 = v219;
  v653 = v320;
  v671.origin.x = r1;
  v671.origin.y = rect;
  v671.size.width = r1_24;
  v671.size.height = v590;
  v321.n128_f64[0] = CGRectGetWidth(v671);
  if ((v226 & 1) == 0)
  {
    v323 = v321.n128_f64[0] - v298 - (v545 + v241 + v287);
    if (v600 | _supplementaryAdoptsPrimaryBackgroundStyle ^ 1)
    {
      v323 = 0.0;
    }

    v322.n128_f64[0] = -v323;
    if (!_shouldReverseLayoutDirection)
    {
      v322.n128_f64[0] = v323;
    }

    if (v600)
    {
      v324 = v560;
    }

    else
    {
      v324 = v574;
    }

    v321.n128_f64[0] = v545 + v241;
    (v650)(buf, v529, 0, v324, v321, v322, 0.0);
    if (v567)
    {
      if (v291 > 0.0)
      {
        v325 = v548 + v291;
        if (!_shouldReverseLayoutDirection)
        {
          v325 = -(v548 + v291);
        }

        v658[3] = v325 + v658[3];
      }

      renderAsShadow = [v553 renderAsShadow];
      v650(buf, v553, 0, 0, v548, 0.0, renderAsShadow);
      v327 = v528;
      if (_supplementaryParallaxShadowView2)
      {
        v328 = -1.0;
        if (_shouldReverseLayoutDirection)
        {
          v328 = 1.0;
        }

        v658[3] = v328 + v658[3];
        v650(buf, v541, 0, 0, 1.0, 0.0, 0.0);
        if (v241 <= 0.0 || v528 <= 0.0)
        {
          if (os_variant_has_internal_diagnostics())
          {
            v508 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v508, OS_LOG_TYPE_FAULT))
            {
              *v647 = 0;
              _os_log_fault_impl(&dword_188A29000, v508, OS_LOG_TYPE_FAULT, "parallaxShadowView is unnecessarily present in sidebar layout", v647, 2u);
            }
          }

          else
          {
            v508 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED491CF8) + 8);
            if (os_log_type_enabled(v508, OS_LOG_TYPE_ERROR))
            {
              *v647 = 0;
              _os_log_impl(&dword_188A29000, v508, OS_LOG_TYPE_ERROR, "parallaxShadowView is unnecessarily present in sidebar layout", v647, 2u);
            }
          }

          v327 = v528;
        }

        v329 = 0.0;
        if (v241 > 0.0)
        {
          v329 = v291 / (v241 * -0.5) + 1.0;
        }

        [v541 setAlpha:1.0 - v329];
      }

      v650(buf, v567, 0, v560, v327, 0.0, 0.0);
      renderAsShadow2 = [v578 renderAsShadow];
      v650(buf, v578, 0, 0, v548, 0.0, renderAsShadow2);
    }

    else
    {
      renderAsShadow3 = [v553 renderAsShadow];
      v650(buf, v553, 0, 0, v548, 0.0, renderAsShadow3);
    }
  }

  v650(buf, v571, 0, v555, v298, 0.0, 0.0);
  if ((trailingOverlapsMain & 1) == 0)
  {
    if (_supplementaryAdoptsPrimaryBackgroundStyle)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v504 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v504, OS_LOG_TYPE_FAULT))
        {
          *v647 = 0;
          _os_log_fault_impl(&dword_188A29000, v504, OS_LOG_TYPE_FAULT, "SPI to put supplementary col in background view not implemented for trailing primary", v647, 2u);
        }
      }

      else
      {
        v504 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED491D00) + 8);
        if (os_log_type_enabled(v504, OS_LOG_TYPE_ERROR))
        {
          *v647 = 0;
          _os_log_impl(&dword_188A29000, v504, OS_LOG_TYPE_ERROR, "SPI to put supplementary col in background view not implemented for trailing primary", v647, 2u);
        }
      }
    }

    if (v567)
    {
      renderAsShadow4 = [v578 renderAsShadow];
      v650(buf, v578, 0, 0, v548, 0.0, renderAsShadow4);
      v650(buf, v567, 0, v560, v528, 0.0, 0.0);
    }

    renderAsShadow5 = [v556 renderAsShadow];
    v650(buf, v556, 0, 0, v548, 0.0, renderAsShadow5);
    v335 = v658;
    if (_supplementaryParallaxShadowView2)
    {
      v336 = -v548;
      if (_shouldReverseLayoutDirection)
      {
        v336 = v548;
      }

      v658[3] = v336 + v658[3];
      v650(buf, v541, 0, 0, 1.0, 0.0, 0.0);
      if (v535 <= 0.0 || v528 <= 0.0)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v505 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v505, OS_LOG_TYPE_FAULT))
          {
            *v647 = 0;
            _os_log_fault_impl(&dword_188A29000, v505, OS_LOG_TYPE_FAULT, "parallaxShadowView is unnecessarily present in sidebar layout", v647, 2u);
          }
        }

        else
        {
          v505 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED491D08) + 8);
          if (os_log_type_enabled(v505, OS_LOG_TYPE_ERROR))
          {
            *v647 = 0;
            _os_log_impl(&dword_188A29000, v505, OS_LOG_TYPE_ERROR, "parallaxShadowView is unnecessarily present in sidebar layout", v647, 2u);
          }
        }
      }

      v337 = 0.0;
      if (v535 > 0.0)
      {
        v337 = v291 / (v535 * -0.5) + 1.0;
      }

      [v541 setAlpha:1.0 - v337];
      v338 = v600;
      v334.n128_f64[0] = 1.0 - v548;
      v339 = _shouldReverseLayoutDirection;
      if (!_shouldReverseLayoutDirection)
      {
        v334.n128_f64[0] = -(1.0 - v548);
      }

      v335 = v658;
      v340 = v334.n128_f64[0] + v658[3];
      v658[3] = v340;
    }

    else
    {
      v340 = v658[3];
      v339 = _shouldReverseLayoutDirection;
      v338 = v600;
    }

    v341 = -v291;
    if (v339)
    {
      v341 = v291;
    }

    v335[3] = v341 + v340;
    if (v338)
    {
      v342 = v560;
    }

    else
    {
      v342 = v537;
    }

    v334.n128_f64[0] = v545 + v535;
    (v650)(buf, v531, 0, v342, v334, 0.0, 0.0);
  }

  _Block_object_dispose(&v657, 8);
  v549 = v529;
  v554 = v553;
  v530 = v567;
  v536 = v578;
  v540 = v531;
  v546 = v556;
  v565 = _overlayEdgeShadowView2;
  v557 = v541;
  v343 = v320;
  v544 = v319;
  v579 = v574;
  v575 = v537;
  v585 = v560;
  supplementaryOverlapsMain5 = [v343 supplementaryOverlapsMain];
  v345 = supplementaryOverlapsMain5;
  if (v600 & 1 | (r1_8 == 0))
  {
    leadingOverlapsMain2 = (r1_8 != 0) & supplementaryOverlapsMain5;
  }

  else
  {
    leadingOverlapsMain2 = [v343 leadingOverlapsMain];
  }

  v347 = v600;
  if (!v591)
  {
    v347 = 1;
  }

  if (v347)
  {
    trailingOverlapsMain2 = (v591 != 0) & v345;
  }

  else
  {
    trailingOverlapsMain2 = [v343 trailingOverlapsMain];
  }

  v349 = v567 != 0;
  if (!leadingOverlapsMain2)
  {
    if ((trailingOverlapsMain2 & 1) == 0)
    {
      v352 = 0.0;
      v351 = 0.0;
      v353 = 0.0;
      if (v600)
      {
        goto LABEL_536;
      }

      goto LABEL_535;
    }

    v351 = 0.0;
    if (v600)
    {
      goto LABEL_531;
    }

    goto LABEL_533;
  }

  if ((v600 & 1) == 0)
  {
    [v343 leadingDragOffset];
    v351 = -v355;
    v352 = 0.0;
    if ((trailingOverlapsMain2 & 1) == 0)
    {
LABEL_535:
      [v343 supplementaryDragOffset];
      v353 = v357;
      goto LABEL_536;
    }

LABEL_533:
    [v343 trailingDragOffset];
    v352 = v356;
    goto LABEL_535;
  }

  [v343 supplementaryDragOffset];
  v351 = -v350;
  v352 = 0.0;
  v353 = 0.0;
  if (trailingOverlapsMain2)
  {
LABEL_531:
    [v343 supplementaryDragOffset];
    v352 = v354;
    v353 = 0.0;
  }

LABEL_536:
  [v343 supplementaryWidth];
  v359 = v358;
  [v343 supplementaryOffscreenWidth];
  if (v359 >= v360)
  {
    v360 = v359;
  }

  v568 = v360;
  if ((v521 & v600) == 0)
  {
    v361 = 0.0;
    v542 = 0.0;
    if (!(r1_8 | v591))
    {
      goto LABEL_544;
    }

    goto LABEL_543;
  }

  if (v579 == v585 || (v361 = 0.0, v542 = 0.0, v575 == v585))
  {
LABEL_543:
    configuration6 = [v343 configuration];
    [configuration6 rubberBandExtension];
    v361 = v363;

    [v343 _rubberBandInset];
    UIRoundToScale(v364, v596);
    v542 = v365;
  }

LABEL_544:
  UIRoundToScale(v351, v596);
  v367 = v366;
  UIRoundToScale(v352, v596);
  v538 = v368;
  UIRoundToScale(v353, v596);
  v561 = v369;
  v370 = v349 & v345 & (v600 ^ 1);
  if (!leadingOverlapsMain2)
  {
    goto LABEL_614;
  }

  if (!v600)
  {
    [v343 leadingWidth];
    v377 = v376;
    [v343 leadingOffscreenWidth];
    if (v377 >= v378)
    {
      v374 = v377;
    }

    else
    {
      v374 = v378;
    }

    if (v374 > 0.0)
    {
      [v343 leadingWidth];
      goto LABEL_557;
    }

LABEL_555:
    v379 = 1;
    v380 = r1_24;
    v381 = v590;
    v382 = r1;
    goto LABEL_561;
  }

  [v343 supplementaryWidth];
  v372 = v371;
  [v343 supplementaryOffscreenWidth];
  if (v372 >= v373)
  {
    v374 = v372;
  }

  else
  {
    v374 = v373;
  }

  if (v374 <= 0.0)
  {
    goto LABEL_555;
  }

  [v343 supplementaryWidth];
LABEL_557:
  v297 = v375 == 0.0;
  v380 = r1_24;
  v381 = v590;
  v382 = r1;
  v379 = 0;
  if (v297 && v367 > -v374)
  {
    v367 = -v374;
  }

LABEL_561:
  v383 = rect;
  v384 = CGRectGetHeight(*&v382);
  v385 = v361 + v374;
  if (_shouldReverseLayoutDirection)
  {
    v672.origin.x = r1;
    v672.origin.y = rect;
    v672.size.width = r1_24;
    v672.size.height = v590;
    v386 = CGRectGetWidth(v672);
    v673.origin.x = 0.0;
    v673.origin.y = 0.0;
    v673.size.width = v361 + v374;
    v673.size.height = v384;
    x = v361 - v542 + v386 - CGRectGetWidth(v673) - v367;
  }

  else
  {
    x = v367 - (v361 - v542);
  }

  if ([v544 containsObject:v549])
  {
    [v343 _keyboardAdjustment];
    v384 = v384 - v388;
  }

  if (v600)
  {
    v389 = v585;
  }

  else
  {
    v389 = v579;
  }

  v390 = v549;
  v391 = v389;
  v392 = v391;
  if (v391)
  {
    [v391 _updateControlledViewsToFrame:{x, 0.0, v361 + v374, v384}];
  }

  else
  {
    [v390 setFrame:{x, 0.0, v361 + v374, v384}];
  }

  if (v554)
  {
    configuration7 = [v343 configuration];
    [configuration7 leadingBorderWidthForScale:v596];
    v395 = v394;

    if (v561 <= 0.0)
    {
      if (_shouldReverseLayoutDirection)
      {
        v399 = -v395;
      }

      else
      {
        v678.origin.y = 0.0;
        v678.origin.x = x;
        v678.size.width = v361 + v374;
        v678.size.height = v384;
        v399 = CGRectGetWidth(v678);
      }

      v679.origin.y = 0.0;
      v679.origin.x = x;
      v679.size.width = v361 + v374;
      v679.size.height = v384;
      v677 = CGRectOffset(v679, v399, 0.0);
      goto LABEL_588;
    }

    LOBYTE(v396) = _shouldReverseLayoutDirection;
LABEL_576:
    if (v396)
    {
      v398 = -(v568 - v561);
    }

    else
    {
      v674.origin.y = 0.0;
      v674.origin.x = x;
      v674.size.width = v361 + v374;
      v674.size.height = v384;
      v398 = CGRectGetWidth(v674) - v561;
    }

    v675.origin.y = 0.0;
    v675.origin.x = x;
    v675.size.width = v361 + v374;
    v675.size.height = v384;
    v676 = CGRectOffset(v675, v398, 0.0);
    x = v676.origin.x;
    y = v676.origin.y;
    v385 = v676.size.width;
    v384 = v676.size.height;
    if (!v554)
    {
      goto LABEL_589;
    }

    if (_shouldReverseLayoutDirection)
    {
      v400 = v568;
    }

    else
    {
      v400 = -v395;
    }

    v677 = CGRectOffset(v676, v400, 0.0);
LABEL_588:
    x = v677.origin.x;
    y = v677.origin.y;
    v384 = v677.size.height;
    [v554 setFrame:?];
    v385 = v395;
LABEL_589:
    v396 = _shouldReverseLayoutDirection;
    goto LABEL_590;
  }

  v395 = 0.0;
  y = 0.0;
  v396 = _shouldReverseLayoutDirection;
  if (v561 > 0.0)
  {
    goto LABEL_576;
  }

LABEL_590:
  if (_supplementaryParallaxShadowView2)
  {
    if ((v396 & 1) == 0)
    {
      v680.origin.x = x;
      v680.origin.y = y;
      v680.size.width = v385;
      v680.size.height = v384;
      v681 = CGRectOffset(v680, -(1.0 - v395), 0.0);
      x = v681.origin.x;
      y = v681.origin.y;
      v384 = v681.size.height;
    }

    [v557 setFrame:{x, y, 1.0, v384}];
    if (v568 <= 0.0)
    {
      v401 = 1;
    }

    else
    {
      v401 = v379;
    }

    if (v401 == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v506 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v506, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v506, OS_LOG_TYPE_FAULT, "parallaxShadowView is unnecessarily present in sidebar layout", buf, 2u);
        }
      }

      else
      {
        v506 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED491D10) + 8);
        if (os_log_type_enabled(v506, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v506, OS_LOG_TYPE_ERROR, "parallaxShadowView is unnecessarily present in sidebar layout", buf, 2u);
        }
      }
    }

    v402 = 0.0;
    if ((v379 & 1) == 0)
    {
      v402 = v561 / (v374 * -0.5) + 1.0;
    }

    v385 = 1.0;
    [v557 setAlpha:1.0 - v402];
    v396 = _shouldReverseLayoutDirection;
    if ((_shouldReverseLayoutDirection & 1) == 0)
    {
      v682.size.width = 1.0;
      v682.origin.x = x;
      v682.origin.y = y;
      v682.size.height = v384;
      v683 = CGRectOffset(v682, 1.0 - v395, 0.0);
      x = v683.origin.x;
      y = v683.origin.y;
      v385 = v683.size.width;
      v384 = v683.size.height;
      v396 = _shouldReverseLayoutDirection;
    }
  }

  if (v370)
  {
    v403 = v396 ? -v568 : v395;
    v684.origin.x = x;
    v684.origin.y = y;
    v684.size.width = v385;
    v684.size.height = v384;
    v685 = CGRectOffset(v684, v403, 0.0);
    x = v685.origin.x;
    y = v685.origin.y;
    v384 = v685.size.height;
    [v530 setFrame:?];
    if (v536)
    {
      if (_shouldReverseLayoutDirection)
      {
        v404 = -v395;
      }

      else
      {
        v686.origin.x = x;
        v686.origin.y = y;
        v686.size.width = v568;
        v686.size.height = v384;
        v404 = CGRectGetWidth(v686);
      }

      v687.origin.x = x;
      v687.origin.y = y;
      v687.size.width = v568;
      v687.size.height = v384;
      v688 = CGRectOffset(v687, v404, 0.0);
      x = v688.origin.x;
      y = v688.origin.y;
      v384 = v688.size.height;
      [v536 setFrame:?];
    }
  }

  if (v565)
  {
    v405 = 0.0;
    if (_shouldReverseLayoutDirection)
    {
      v689.size.width = 1.0;
      v689.origin.x = x;
      v689.origin.y = y;
      v689.size.height = v384;
      v405 = -CGRectGetWidth(v689);
    }

    v690.size.width = 1.0;
    v690.origin.x = x;
    v690.origin.y = y;
    v690.size.height = v384;
    v691 = CGRectOffset(v690, v405, 0.0);
    [v565 setFrame:{v691.origin.x, v691.origin.y, v691.size.width, v691.size.height}];
  }

LABEL_614:
  if (!trailingOverlapsMain2)
  {
    goto LABEL_684;
  }

  if (v600)
  {
    [v343 supplementaryWidth];
    v407 = v406;
    [v343 supplementaryOffscreenWidth];
    if (v407 >= v408)
    {
      v409 = v407;
    }

    else
    {
      v409 = v408;
    }

    if (v409 > 0.0)
    {
      [v343 supplementaryWidth];
      goto LABEL_627;
    }

LABEL_625:
    v414 = 1;
    v415 = r1_24;
    v416 = v590;
    v417 = r1;
    goto LABEL_632;
  }

  [v343 trailingWidth];
  v412 = v411;
  [v343 trailingOffscreenWidth];
  if (v412 >= v413)
  {
    v409 = v412;
  }

  else
  {
    v409 = v413;
  }

  if (v409 <= 0.0)
  {
    goto LABEL_625;
  }

  [v343 trailingWidth];
LABEL_627:
  v297 = v410 == 0.0;
  v415 = r1_24;
  v416 = v590;
  v417 = r1;
  v414 = 0;
  if (v297)
  {
    v418 = v538;
    if (v409 >= v538)
    {
      v418 = v409;
    }

    v538 = v418;
  }

LABEL_632:
  v419 = rect;
  v420 = CGRectGetHeight(*&v417);
  v421 = v361 + v409;
  if (_shouldReverseLayoutDirection)
  {
    v422 = -v538 - (v361 - v542);
  }

  else
  {
    v692.origin.x = r1;
    v692.origin.y = rect;
    v692.size.width = r1_24;
    v692.size.height = v590;
    v423 = CGRectGetWidth(v692);
    v693.origin.x = 0.0;
    v693.origin.y = 0.0;
    v693.size.width = v361 + v409;
    v693.size.height = v420;
    v422 = v361 - v542 + v538 + v423 - CGRectGetWidth(v693);
  }

  if ([v544 containsObject:v549])
  {
    [v343 _keyboardAdjustment];
    v420 = v420 - v424;
  }

  if (v600)
  {
    v425 = v585;
  }

  else
  {
    v425 = v575;
  }

  v426 = v540;
  v427 = v425;
  v428 = v427;
  if (v427)
  {
    [v427 _updateControlledViewsToFrame:{v422, 0.0, v361 + v409, v420}];
  }

  else
  {
    [v426 setFrame:{v422, 0.0, v361 + v409, v420}];
  }

  if (v546)
  {
    configuration8 = [v343 configuration];
    [configuration8 trailingBorderWidthForScale:v596];
    v431 = v430;

    if (v561 <= 0.0)
    {
      if (_shouldReverseLayoutDirection)
      {
        v694.origin.y = 0.0;
        v694.origin.x = v422;
        v694.size.width = v361 + v409;
        v694.size.height = v420;
        v432 = CGRectGetWidth(v694);
      }

      else
      {
        v432 = -v431;
      }

      v698.origin.y = 0.0;
      v698.origin.x = v422;
      v698.size.width = v361 + v409;
      v698.size.height = v420;
      v697 = CGRectOffset(v698, v432, 0.0);
LABEL_658:
      v422 = v697.origin.x;
      v433 = v697.origin.y;
      v420 = v697.size.height;
      [v546 setFrame:?];
      v421 = v431;
      goto LABEL_659;
    }
  }

  else
  {
    v431 = 0.0;
    v433 = 0.0;
    if (v561 <= 0.0)
    {
      goto LABEL_659;
    }
  }

  if (_shouldReverseLayoutDirection)
  {
    v434 = v361 - v542 + v409 - v561;
  }

  else
  {
    v434 = -(v568 - v561);
  }

  v695.origin.y = 0.0;
  v695.origin.x = v422;
  v695.size.width = v361 + v409;
  v695.size.height = v420;
  v696 = CGRectOffset(v695, v434, 0.0);
  v422 = v696.origin.x;
  v433 = v696.origin.y;
  v421 = v696.size.width;
  v420 = v696.size.height;
  if (v546)
  {
    if (_shouldReverseLayoutDirection)
    {
      v435 = -v431;
    }

    else
    {
      v435 = v568;
    }

    v697 = CGRectOffset(v696, v435, 0.0);
    goto LABEL_658;
  }

LABEL_659:
  if (_supplementaryParallaxShadowView2)
  {
    if (_shouldReverseLayoutDirection)
    {
      v699.origin.x = v422;
      v699.origin.y = v433;
      v699.size.width = v421;
      v699.size.height = v420;
      v700 = CGRectOffset(v699, -(1.0 - v431), 0.0);
      v422 = v700.origin.x;
      v433 = v700.origin.y;
      v420 = v700.size.height;
    }

    [v557 setFrame:{v422, v433, 1.0, v420}];
    if (v568 <= 0.0)
    {
      v436 = 1;
    }

    else
    {
      v436 = v414;
    }

    if (v436 == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v507 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v507, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v507, OS_LOG_TYPE_FAULT, "parallaxShadowView is unnecessarily present in sidebar layout", buf, 2u);
        }
      }

      else
      {
        v507 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED491D18) + 8);
        if (os_log_type_enabled(v507, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v507, OS_LOG_TYPE_ERROR, "parallaxShadowView is unnecessarily present in sidebar layout", buf, 2u);
        }
      }
    }

    v437 = 0.0;
    if ((v414 & 1) == 0)
    {
      v437 = v561 / (v409 * -0.5) + 1.0;
    }

    v421 = 1.0;
    [v557 setAlpha:1.0 - v437];
    v438 = _shouldReverseLayoutDirection;
    if (!_shouldReverseLayoutDirection)
    {
      goto LABEL_671;
    }

    v701.size.width = 1.0;
    v701.origin.x = v422;
    v701.origin.y = v433;
    v701.size.height = v420;
    v702 = CGRectOffset(v701, 1.0 - v431, 0.0);
    v422 = v702.origin.x;
    v433 = v702.origin.y;
    v421 = v702.size.width;
    v420 = v702.size.height;
  }

  v438 = _shouldReverseLayoutDirection;
LABEL_671:
  if (v370)
  {
    v439 = v438 ? v431 : -v568;
    v703.origin.x = v422;
    v703.origin.y = v433;
    v703.size.width = v421;
    v703.size.height = v420;
    v704 = CGRectOffset(v703, v439, 0.0);
    v422 = v704.origin.x;
    v433 = v704.origin.y;
    v420 = v704.size.height;
    [v530 setFrame:?];
    if (v536)
    {
      if (_shouldReverseLayoutDirection)
      {
        v705.origin.x = v422;
        v705.origin.y = v433;
        v705.size.width = v568;
        v705.size.height = v420;
        v440 = CGRectGetWidth(v705);
      }

      else
      {
        v440 = -v431;
      }

      v706.origin.x = v422;
      v706.origin.y = v433;
      v706.size.width = v568;
      v706.size.height = v420;
      v707 = CGRectOffset(v706, v440, 0.0);
      v422 = v707.origin.x;
      v433 = v707.origin.y;
      v420 = v707.size.height;
      [v536 setFrame:?];
    }
  }

  if (v565)
  {
    v441 = 0.0;
    if ((_shouldReverseLayoutDirection & 1) == 0)
    {
      v708.size.width = 1.0;
      v708.origin.x = v422;
      v708.origin.y = v433;
      v708.size.height = v420;
      v441 = -CGRectGetWidth(v708);
    }

    v709.size.width = 1.0;
    v709.origin.x = v422;
    v709.origin.y = v433;
    v709.size.height = v420;
    v710 = CGRectOffset(v709, v441, 0.0);
    [v565 setFrame:{v710.origin.x, v710.origin.y, v710.size.width, v710.size.height}];
  }

LABEL_684:

  v569 = _primaryParallaxDimmingView2;
  v562 = v549;
  v559 = v540;
  v442 = v343;
  if (v514)
  {
    if (r1_8)
    {
      [v562 frame];
    }

    else
    {
      [v559 frame];
    }

    [v569 setFrame:?];
    v443 = v442;
    [v443 leadingWidth];
    v445 = v444;
    [v443 trailingWidth];
    v447 = v446;

    v448 = v443;
    [v448 leadingDragOffset];
    v450 = v449;
    [v448 trailingDragOffset];
    v452 = v451;
    [v448 supplementaryDragOffset];
    v454 = v453;

    v455 = 0.0;
    if (v445 + v447 > 0.0)
    {
      v456 = fmax((v445 + v447 - (v450 + v452 + v454)) / (v445 + v447), 0.0);
      v455 = 1.0;
      if (v456 <= 1.0)
      {
        v455 = v456;
      }
    }

    [v569 setPercentDisplayed:(1.0 - v455) * 0.5];
  }

  layoutPresentationViews(_contentView, v555, v525);
  layoutPresentationViews(_contentView, leadingViewController, v524);
  layoutPresentationViews(_contentView, trailingViewController, v523);
  layoutPresentationViews(_contentView, v585, v522);
  [_contentView bounds];
  [(UIView *)v576 setFrame:?];
  mt_captureGroupName = [(_UIMTCaptureView *)v576 mt_captureGroupName];
  _existingView = [leadingViewController _existingView];
  [_existingView mt_setCaptureGroupName:mt_captureGroupName];

  mt_captureGroupName2 = [(_UIMTCaptureView *)v576 mt_captureGroupName];
  _existingView2 = [trailingViewController _existingView];
  [_existingView2 mt_setCaptureGroupName:mt_captureGroupName2];

  mt_captureGroupName3 = [(_UIMTCaptureView *)v576 mt_captureGroupName];
  _existingView3 = [v585 _existingView];
  [_existingView3 mt_setCaptureGroupName:mt_captureGroupName3];

  floatingBarButtonItem = [(UIPanelController *)selfCopy floatingBarButtonItem];
  if ([floatingBarButtonItem _isFloatable])
  {
    v463 = (leadingBarContentClippingView | trailingBarContentClippingView | supplementaryBarContentClippingView) != 0;
    if (v463 != [floatingBarButtonItem _isFloating])
    {
      [floatingBarButtonItem _setFloating:v463];
      v607[0] = MEMORY[0x1E69E9820];
      v607[1] = 3221225472;
      v608 = __54__UIPanelController__updateToNewPublicState_withSize___block_invoke_431;
      v609 = &__block_descriptor_40_e26_v16__0__UIViewController_8lu32l8;
      v610 = v615;
      v464 = v616(v615, leadingViewController);
      [v464 _setNeedsStaticNavBarButtonUpdate];

      (__54__UIPanelController__updateToNewPublicState_withSize___block_invoke_431)(v607, trailingViewController);
      (v608)(v607, v585);
      (v608)(v607, v555);
    }
  }

  if (_shouldReverseLayoutDirection)
  {
    v465 = v591 != 0;
  }

  else
  {
    v465 = r1_8 != 0;
  }

  layoutClippingView(leadingBarContentClippingView, floatingBarButtonItem, v465);
  layoutClippingView(supplementaryBarContentClippingView, floatingBarButtonItem, v465);
  layoutClippingView(trailingBarContentClippingView, floatingBarButtonItem, v465);
  style2 = [(UIPanelController *)selfCopy style];
  if (supplementaryEdge)
  {
    v467 = v575;
  }

  else
  {
    v467 = v579;
  }

  navigationBarForContentLayoutGuideAnimation = [(UIPanelController *)selfCopy navigationBarForContentLayoutGuideAnimation];
  window = [navigationBarForContentLayoutGuideAnimation window];
  if (window)
  {
    _isAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange = [navigationBarForContentLayoutGuideAnimation _isAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange];

    if ((_isAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange & 1) == 0)
    {
      [navigationBarForContentLayoutGuideAnimation layoutIfNeeded];
      [navigationBarForContentLayoutGuideAnimation _beginAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange];
    }
  }

  navigationBarForContentLayoutGuideAnimation2 = [(UIPanelController *)selfCopy navigationBarForContentLayoutGuideAnimation];
  v471 = v442;
  configuration9 = [v471 configuration];
  allowTotalWidthGreaterThanParent3 = [configuration9 allowTotalWidthGreaterThanParent];

  if ([v471 leadingOverlapsMain] & 1) != 0 || (objc_msgSend(v471, "trailingOverlapsMain"))
  {
    supplementaryOverlapsMain6 = 1;
  }

  else
  {
    supplementaryOverlapsMain6 = [v471 supplementaryOverlapsMain];
  }

  v475 = v467 == v585 || style2 == 1;
  v603 = supplementaryOverlapsMain6;
  v476 = supplementaryOverlapsMain6 | allowTotalWidthGreaterThanParent3;
  if (v475 && ((supplementaryOverlapsMain6 | allowTotalWidthGreaterThanParent3) & 1) != 0)
  {
    if (allowTotalWidthGreaterThanParent3)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v509 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v509, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v509, OS_LOG_TYPE_FAULT, "Unexpected attempt to layout for Displace behavior in double-column UISVC", buf, 2u);
        }
      }

      else
      {
        v477 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED491D20) + 8);
        if (os_log_type_enabled(v477, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v477, OS_LOG_TYPE_ERROR, "Unexpected attempt to layout for Displace behavior in double-column UISVC", buf, 2u);
        }
      }
    }

    goto LABEL_737;
  }

  if ([navigationBarForContentLayoutGuideAnimation2 _isAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange])
  {
    if (v476)
    {
      if (v516)
      {
        v478 = v471;
        [v478 leadingWidth];
        [v478 trailingWidth];

        v479 = v478;
        [v479 leadingDragOffset];
        [v479 trailingDragOffset];
        [v479 supplementaryDragOffset];
      }
    }

    else if (style2 == 1)
    {
      v480 = v471;
      [v480 leadingWidth];
      [v480 trailingWidth];

      [v480 leadingDragOffset];
      [v480 trailingDragOffset];
    }

    else if (v467 == v585)
    {
      [v471 supplementaryWidth];
      [v471 supplementaryDragOffset];
    }

    else
    {
      v481 = v471;
      [v481 leadingWidth];
      v483 = v482;
      [v481 trailingWidth];
      v485 = v484;

      if (v483 + v485 > 0.0)
      {
        totalObscuredPrimaryWidthForState(v481);
      }
    }

    [navigationBarForContentLayoutGuideAnimation2 _navItemContentLayoutGuideAnimationDistance];
    UIRoundToViewScale(navigationBarForContentLayoutGuideAnimation2);
    v486 = [navigationBarForContentLayoutGuideAnimation2 _updateNavItemContentLayoutGuideAnimationConstraintConstant:?];
    if (v603 & 1 | ((v486 & 1) == 0) | allowTotalWidthGreaterThanParent3 & 1)
    {
      if (!v486)
      {
        goto LABEL_736;
      }
    }

    else
    {
      _staticNavBarButtonItem = [navigationBarForContentLayoutGuideAnimation2 _staticNavBarButtonItem];
      v488 = _staticNavBarButtonItem == 0;

      if (!v488)
      {
LABEL_736:
        [navigationBarForContentLayoutGuideAnimation2 layoutIfNeeded];
        goto LABEL_737;
      }
    }

    [navigationBarForContentLayoutGuideAnimation2 _setNeedsStaticNavBarButtonUpdate];
    goto LABEL_736;
  }

LABEL_737:

  [v571 frame];
  v715.origin.x = v489;
  v715.origin.y = v490;
  v715.size.width = v491;
  v715.size.height = v492;
  v711.origin.x = r1;
  v711.origin.y = rect;
  v711.size.width = r1_24;
  v711.size.height = v590;
  v712 = CGRectIntersection(v711, v715);
  v493 = v712.origin.x;
  v494 = v712.origin.y;
  v495 = v712.size.width;
  v496 = v712.size.height;
  if (CGRectGetWidth(v712) == 0.0 || (v713.origin.x = v493, v713.origin.y = v494, v713.size.width = v495, v713.size.height = v496, CGRectGetHeight(v713) == 0.0) || (v714.origin.x = v493, v714.origin.y = v494, v714.size.width = v495, v714.size.height = v496, CGRectEqualToRect(v714, *MEMORY[0x1E695F050])))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__UIPanelController__updateToNewPublicState_withSize___block_invoke_2_433;
    aBlock[3] = &unk_1E70F3C60;
    v605 = v572;
    v606 = v571;
    v497 = _Block_copy(aBlock);
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v498 = +[UIView _currentViewAnimationState];
      [v498 _addCompletion:v497];
    }

    else
    {
      v497[2](v497, 1);
    }
  }

  stateCopy = v598;
LABEL_745:
}

id __54__UIPanelController__updateToNewPublicState_withSize___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if ((v4[9] & 0x80) != 0)
    {
      v10 = [v4 delegate];
      v16 = [v10 panelController:*(a1 + 32) navigationBarForViewController:v3];
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v18 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Fallback for finding a navigation bar is unreliable", buf, 2u);
        }
      }

      else
      {
        v5 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_VisualizeMaterials_block_invoke_2___s_category) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Fallback for finding a navigation bar is unreliable", v19, 2u);
        }
      }

      v6 = [v3 _isNavigationController];
      v7 = v6;
      if (v6)
      {
        v8 = v3;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      v10 = v3;
      if ((v7 & 1) == 0)
      {
        v11 = [v3 childViewControllers];
        v12 = [v11 firstObject];
        v13 = [v12 _isNavigationController];

        if (v13)
        {
          v14 = [v3 childViewControllers];
          v10 = [v14 firstObject];
        }

        else
        {
          v10 = 0;
        }
      }

      v16 = [v10 navigationBar];
    }

    v15 = v16;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

BOOL __54__UIPanelController__updateToNewPublicState_withSize___block_invoke_426(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  v5 = v4;
  if (v4)
  {
    if (v3)
    {
      v6 = [v3 superview];

      if (!v6)
      {
        [v5 _installContentClippingView:v3];
      }
    }

    else
    {
      [v4 _removeContentClippingView];
    }
  }

  return v3 == 0;
}

void __54__UIPanelController__updateToNewPublicState_withSize___block_invoke_431(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  [v1 _setNeedsStaticNavBarButtonUpdate];
}

uint64_t __54__UIPanelController__updateToNewPublicState_withSize___block_invoke_2_433(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) removeFromSuperview];
    v3 = *(v2 + 40);

    return [v3 removeFromSuperview];
  }

  return result;
}

- (double)interpolatedMarginForPrimaryNavigationBar:(id)bar supplementaryOrSecondaryNavbar:(id)navbar getInterpolatedAlpha:(double *)alpha
{
  barCopy = bar;
  navbarCopy = navbar;
  currentState = [(UIPanelController *)self currentState];
  [currentState supplementaryWidth];
  v12 = v11;
  v13 = currentState;
  [v13 leadingWidth];
  v15 = v14;
  [v13 trailingWidth];
  v17 = v16;

  v18 = v15 + v17;
  if (v12 <= 0.0)
  {
    [v13 leadingDragOffset];
    v29 = v28;
    [v13 trailingDragOffset];
    v19 = 1.0;
    if (v18 <= 0.0)
    {
      goto LABEL_7;
    }

    v27 = v29 + v30;
  }

  else
  {
    v19 = 1.0;
    if (v18 <= 0.0)
    {
      goto LABEL_7;
    }

    v20 = v13;
    [v20 leadingDragOffset];
    v22 = v21;
    [v20 trailingDragOffset];
    v24 = v22 + v23;
    [v20 supplementaryDragOffset];
    v26 = v25;

    v27 = v24 + v26;
  }

  v19 = v27 / v18;
LABEL_7:
  if (barCopy)
  {
    v31 = [barCopy _isContentViewHidden] ^ 1;
    if (navbarCopy)
    {
LABEL_9:
      _isContentViewHidden = [navbarCopy _isContentViewHidden];
      v33 = 0.0;
      if (v31)
      {
        v34 = 1.0;
      }

      else
      {
        v34 = 0.0;
      }

      if (_isContentViewHidden)
      {
        v35 = barCopy;
      }

      else
      {
        v33 = 1.0;
        v35 = navbarCopy;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v31 = 0;
    if (navbarCopy)
    {
      goto LABEL_9;
    }
  }

  v33 = 0.0;
  v34 = 1.0;
  if (!v31)
  {
    v34 = 0.0;
  }

  v35 = barCopy;
LABEL_19:
  v36 = 1.0 - v19;
  if (alpha)
  {
    v34 = v36 * v34;
    v33 = v34 + v19 * v33;
    *alpha = v33;
  }

  if (v31)
  {
    v37 = barCopy;
  }

  else
  {
    v37 = navbarCopy;
  }

  [v37 _contentMargin];
  v39 = v38;
  [v35 _contentMargin];
  v41 = v36 * v39 + v19 * v40;

  return v41;
}

- (id)_createBorderView
{
  v2 = [UIPanelBorderView alloc];
  v3 = [(UIPanelBorderView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

- (id)_createOverlayEdgeShadowViewForEdge:(unint64_t)edge
{
  v3 = [[_UIVerticalEdgeShadowView alloc] initWithWidth:edge edge:9.0];

  return v3;
}

- (id)_createOverlayShadowView
{
  v2 = objc_opt_new();
  [v2 setRadius:1.0];
  [v2 setOpacity:0.16];
  v3 = objc_opt_new();
  [v3 setRadius:4.0];
  [v3 setOpacity:0.1];
  v4 = objc_alloc_init(_UIDuoShadowView);
  [(_UIDuoShadowView *)v4 setPrimaryShadow:v2];
  [(_UIDuoShadowView *)v4 setSecondaryShadow:v3];

  return v4;
}

- (void)_setBorderViewsObserveViewBackgroundColor:(BOOL)color
{
  if (((((*(&self->_panelControllerFlags + 1) & 0x10) == 0) ^ color) & 1) == 0)
  {
    view = self->_view;
    if (color)
    {
      [(UILayoutContainerView *)view addObserver:self forKeyPath:@"backgroundColor" options:1 context:0];
      v5 = 4096;
    }

    else
    {
      [(UILayoutContainerView *)view removeObserver:self forKeyPath:@"backgroundColor"];
      v5 = 0;
    }

    self->_panelControllerFlags = (*&self->_panelControllerFlags & 0xFFFFEFFF | v5);
  }
}

- (void)_updateBorderViewsBackgroundColor:(id)color
{
  colorCopy = color;
  _leadingBorderView = [(UIPanelController *)self _leadingBorderView];

  if (_leadingBorderView)
  {
    _leadingBorderView2 = [(UIPanelController *)self _leadingBorderView];
    [_leadingBorderView2 setBackgroundColor:colorCopy];
  }

  _trailingBorderView = [(UIPanelController *)self _trailingBorderView];

  if (_trailingBorderView)
  {
    _trailingBorderView2 = [(UIPanelController *)self _trailingBorderView];
    [_trailingBorderView2 setBackgroundColor:colorCopy];
  }

  _supplementaryBorderView = [(UIPanelController *)self _supplementaryBorderView];

  v9 = colorCopy;
  if (_supplementaryBorderView)
  {
    _supplementaryBorderView2 = [(UIPanelController *)self _supplementaryBorderView];
    [_supplementaryBorderView2 setBackgroundColor:colorCopy];

    v9 = colorCopy;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (self->_view == object && [path isEqualToString:@"backgroundColor"])
  {
    backgroundColor = [(UIView *)self->_view backgroundColor];
    [(UIPanelController *)self _updateBorderViewsBackgroundColor:backgroundColor];
  }
}

- (void)_stopAnimationsBeginningInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  _internalState = [(UIPanelController *)self _internalState];
  animationState = [_internalState animationState];
  animator = [animationState animator];

  isRunning = [animator isRunning];
  [animator stopAnimation:0];
  [animator finishAnimationAtPosition:2];
  navigationBarForContentLayoutGuideAnimation = [(UIPanelController *)self navigationBarForContentLayoutGuideAnimation];
  v9 = navigationBarForContentLayoutGuideAnimation;
  if (navigationBarForContentLayoutGuideAnimation)
  {
    [navigationBarForContentLayoutGuideAnimation _endAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange];
    [v9 _setShouldFadeStaticNavBarButton:0];
    [(UIPanelController *)self setNavigationBarForContentLayoutGuideAnimation:0];
  }

  if (interactionCopy)
  {
    currentState = [(UIPanelController *)self currentState];
    stateRequest = [currentState stateRequest];

    v12 = [stateRequest copy];
    if (isRunning)
    {
      _internalState2 = [(UIPanelController *)self _internalState];
      configuration = [_internalState2 configuration];

      v49 = configuration;
      supplementaryEdge = [configuration supplementaryEdge];
      view = [(UIPanelController *)self view];
      v17 = (supplementaryEdge == 0) ^ [view _shouldReverseLayoutDirection];
      if (supplementaryEdge)
      {
        [(UIPanelController *)self trailingViewController];
      }

      else
      {
        [(UIPanelController *)self leadingViewController];
      }
      v18 = ;
      view2 = [v18 view];

      if (v17)
      {
        MaxX = *MEMORY[0x1E695F058];
        v21 = *(MEMORY[0x1E695F058] + 8);
        v23 = *(MEMORY[0x1E695F058] + 16);
        v22 = *(MEMORY[0x1E695F058] + 24);
      }

      else
      {
        [view bounds];
        MaxX = CGRectGetMaxX(v52);
        v22 = 0.0;
        v23 = 0.0;
        v21 = 0.0;
      }

      window = [view2 window];

      if (window)
      {
        [view2 frame];
        MaxX = v25;
        v21 = v26;
        v23 = v27;
        v22 = v28;
      }

      supplementaryViewController = [(UIPanelController *)self supplementaryViewController];
      view3 = [supplementaryViewController view];
      [view3 frame];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      if (v17)
      {
        v53.origin.x = MaxX;
        v53.origin.y = v21;
        v53.size.width = v23;
        v53.size.height = v22;
        v39 = CGRectGetMaxX(v53);
      }

      else
      {
        [view bounds];
        v40 = CGRectGetMaxX(v54);
        v41 = MaxX;
        v42 = v40;
        v55.origin.x = v41;
        v55.origin.y = v21;
        v55.size.width = v23;
        v55.size.height = v22;
        v39 = v42 - CGRectGetMinX(v55);
      }

      if (supplementaryEdge)
      {
        [v12 setTrailingWidth:v39];
      }

      else
      {
        [v12 setLeadingWidth:v39];
      }

      v56.origin.x = v32;
      v56.origin.y = v34;
      v56.size.width = v36;
      v56.size.height = v38;
      Width = CGRectGetWidth(v56);
      if (v17)
      {
        v57.origin.x = v32;
        v57.origin.y = v34;
        v57.size.width = v36;
        v57.size.height = v38;
        v44 = CGRectGetMaxX(v57);
      }

      else
      {
        [view bounds];
        v45 = CGRectGetMaxX(v58);
        v59.origin.x = v32;
        v59.origin.y = v34;
        v59.size.width = v36;
        v59.size.height = v38;
        v44 = v45 - CGRectGetMinX(v59);
      }

      if (Width < v44)
      {
        v44 = Width;
      }

      [v12 setSupplementaryWidth:v44];
    }

    if (![v12 isEqual:stateRequest] || (objc_msgSend(v12, "leadingWidth"), v46 != 0.0) || (objc_msgSend(v12, "supplementaryWidth"), v47 != 0.0) || (objc_msgSend(v12, "trailingWidth"), v48 != 0.0))
    {
      [(UIPanelController *)self setInteractiveStateRequest:v12];
    }
  }
}

- (CGSize)_expectedSecondaryColumnSizeAfterAnimatingToState:(id)state getLeadingColumnSize:(CGSize *)size trailingColumnSize:(CGSize *)columnSize supplementaryColumnSize:(CGSize *)supplementaryColumnSize
{
  stateCopy = state;
  if (![(UIPanelController *)self style])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPanelController.m" lineNumber:4890 description:@"Unsupported code path for unspecified-style UISplitViewController"];
  }

  [stateCopy leadingWidth];
  v11 = v10;
  [stateCopy trailingWidth];
  v13 = v12;
  [stateCopy supplementaryWidth];
  v15 = v14;
  if (v11 <= 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = [stateCopy leadingOverlapsMain] ^ 1;
  }

  if (v13 <= 0.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = [stateCopy trailingOverlapsMain] ^ 1;
  }

  if (v15 <= 0.0)
  {
    v18 = 0;
  }

  else
  {
    v18 = [stateCopy supplementaryOverlapsMain] ^ 1;
  }

  configuration = [stateCopy configuration];
  _contentView = [(UIPanelController *)self _contentView];
  [_contentView bounds];
  v22 = v21;
  mainViewController = [(UIPanelController *)self mainViewController];
  view = [mainViewController view];
  [view bounds];
  v59 = v25;
  v60 = v26;

  leadingViewController = [(UIPanelController *)self leadingViewController];
  view2 = [leadingViewController view];
  [view2 bounds];
  v30 = v29;
  v58 = v31;

  trailingViewController = [(UIPanelController *)self trailingViewController];
  view3 = [trailingViewController view];
  [view3 bounds];
  v35 = v34;
  v57 = v36;

  supplementaryViewController = [(UIPanelController *)self supplementaryViewController];
  view4 = [supplementaryViewController view];
  [view4 bounds];
  v40 = v39;
  v56 = v41;

  [_contentView _currentScreenScale];
  [configuration leadingBorderWidthForScale:?];
  v43 = v42;
  [stateCopy mainWidth];
  if (v44 == 0.0)
  {
    if ((v16 | v17 | v18))
    {
      v45 = v22 - (v11 + v43);
      if (!v16)
      {
        v45 = v22;
      }

      if (v17)
      {
        v22 = v45 - (v13 + v43);
      }

      else
      {
        v22 = v45;
      }

      if (v18)
      {
        v22 = v22 - (v15 + v43);
      }
    }
  }

  else
  {
    v22 = v44;
  }

  if (v11 == 0.0)
  {
    [stateCopy leadingOffscreenWidth];
    v11 = v46;
  }

  if (v13 == 0.0)
  {
    [stateCopy trailingOffscreenWidth];
    v13 = v47;
  }

  if (v11 > 0.0)
  {
    [configuration rubberBandExtension];
    v30 = v11 + v48;
  }

  if (v13 > 0.0)
  {
    [configuration rubberBandExtension];
    v35 = v13 + v49;
  }

  if (v15 == 0.0)
  {
    [stateCopy supplementaryOffscreenWidth];
    v15 = v50;
  }

  if (v15 <= 0.0)
  {
    v51 = v40;
  }

  else
  {
    v51 = v15;
  }

  if (size)
  {
    size->width = v30;
    size->height = v58;
  }

  if (columnSize)
  {
    columnSize->width = v35;
    columnSize->height = v57;
  }

  if (supplementaryColumnSize)
  {
    supplementaryColumnSize->width = v51;
    supplementaryColumnSize->height = v56;
  }

  if (v22 <= 0.0)
  {
    v52 = v59;
  }

  else
  {
    v52 = v22;
  }

  v53 = v52;
  v54 = v60;
  result.height = v54;
  result.width = v53;
  return result;
}

- (void)_animateFromRequest:(id)request toRequest:(id)toRequest withAffectedSides:(int64_t)sides forceOverlay:(BOOL)overlay velocity:(double)velocity
{
  overlayCopy = overlay;
  requestCopy = request;
  toRequestCopy = toRequest;
  v14 = toRequestCopy;
  if (requestCopy && toRequestCopy)
  {
    _internalState = [(UIPanelController *)self _internalState];
    animationState = [_internalState animationState];

    if (animationState)
    {
      _internalState2 = [(UIPanelController *)self _internalState];
      animationState2 = [_internalState2 animationState];
      toRequest = [animationState2 toRequest];
      v20 = [toRequest isEqual:v14];

      if (v20)
      {
        goto LABEL_25;
      }

      _internalState3 = [(UIPanelController *)self _internalState];
      animationState3 = [_internalState3 animationState];
      animator = [animationState3 animator];
      [animator stopAnimation:1];
    }

    currentState = [(UIPanelController *)self currentState];
    _interactiveStateRequest = [currentState _interactiveStateRequest];
    v26 = [v14 isEqual:_interactiveStateRequest];

    if (v26)
    {
      _internalState4 = [(UIPanelController *)self _internalState];
      [_internalState4 setStateRequest:v14];

      _internalState5 = [(UIPanelController *)self _internalState];
      animationState4 = [_internalState5 animationState];

      if (!animationState4)
      {
        navigationBarForContentLayoutGuideAnimation = [(UIPanelController *)self navigationBarForContentLayoutGuideAnimation];
        [navigationBarForContentLayoutGuideAnimation _endAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange];

        [(UIPanelController *)self setNavigationBarForContentLayoutGuideAnimation:0];
      }
    }

    else
    {
      delegate = [(UIPanelController *)self delegate];
      view = [(UIPanelController *)self view];
      _internalState6 = [(UIPanelController *)self _internalState];
      v33 = [_internalState6 copy];

      [view bounds];
      v74 = view;
      v36 = [v33 computePossibleStatesGivenParentView:view withSize:overlayCopy forceOverlay:{v34, v35}];
      v73 = v33;
      v37 = [v33 _stateForInteractiveRequest:v14 withAffectedSides:sides inPossibleStates:v36];
      +[_UIPanelAnimationState defaultDuration];
      v39 = v38;
      v40 = objc_alloc_init(_UIPanelAnimationState);
      [(_UIPanelAnimationState *)v40 setToRequest:v14];
      [(_UIPanelAnimationState *)v40 setFromRequest:requestCopy];
      [(_UIPanelAnimationState *)v40 setAffectedSides:sides];
      style = [(UIPanelController *)self style];
      [(_UIPanelAnimationState *)v40 setShouldAssignOffscreenWidthsToStateRequest:style != 0];
      [(_UIPanelAnimationState *)v40 setAnimatorShouldCoordinate:[(UIPanelController *)self animationRequestShouldCoordinate]];
      [(UIPanelController *)self setAnimationRequestShouldCoordinate:0];
      _internalState7 = [(UIPanelController *)self _internalState];
      [_internalState7 setAnimationState:v40];

      v72 = v36;
      if (![(UIPanelController *)self _animateCustomTransitionIfNeededWithAnimationState:v40 possiblePublicStates:v36 newPublicState:v37 estimatedDuration:animationState == 0 needsInitialLayout:*&v39])
      {
        navigationBarForContentLayoutGuideAnimation2 = [(UIPanelController *)self navigationBarForContentLayoutGuideAnimation];
        objc_initWeak(location, self);
        objc_initWeak(&from, v40);
        v42 = [_UIPanelCoordinatingAnimator alloc];
        v43 = [_UIPanelAnimationState timingCurveProviderWithVelocity:velocity];
        v44 = [(UIViewPropertyAnimator *)v42 initWithDuration:v43 timingParameters:*&v39];
        [(_UIPanelAnimationState *)v40 setAnimator:v44];

        animator2 = [(_UIPanelAnimationState *)v40 animator];
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __91__UIPanelController__animateFromRequest_toRequest_withAffectedSides_forceOverlay_velocity___block_invoke;
        v92[3] = &unk_1E71039E0;
        objc_copyWeak(&v95, location);
        objc_copyWeak(v96, &from);
        v97 = style != 0;
        v46 = v14;
        v93 = v46;
        v47 = v37;
        v94 = v47;
        v96[1] = v39;
        [animator2 addAnimations:v92];
        v69 = v47;

        animator3 = [(_UIPanelAnimationState *)v40 animator];
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __91__UIPanelController__animateFromRequest_toRequest_withAffectedSides_forceOverlay_velocity___block_invoke_3;
        v88[3] = &unk_1E7103A08;
        objc_copyWeak(&v91, location);
        v89 = v46;
        v49 = navigationBarForContentLayoutGuideAnimation2;
        v90 = v49;
        [animator3 addCompletion:v88];

        configuration = [(UIPanelController *)self configuration];
        v51 = v49;
        [v49 _setShouldFadeStaticNavBarButton:{objc_msgSend(configuration, "shouldFadeStaticNavBarButton")}];

        if (animationState)
        {
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = __91__UIPanelController__animateFromRequest_toRequest_withAffectedSides_forceOverlay_velocity___block_invoke_5;
          v82[3] = &unk_1E70F3590;
          v82[4] = self;
          [UIView performWithoutAnimation:v82];
        }

        else
        {
          v83[0] = MEMORY[0x1E69E9820];
          v83[1] = 3221225472;
          v83[2] = __91__UIPanelController__animateFromRequest_toRequest_withAffectedSides_forceOverlay_velocity___block_invoke_4;
          v83[3] = &unk_1E70F5B18;
          v87 = style != 0;
          v84 = v40;
          selfCopy = self;
          v86 = v49;
          [UIView performWithoutAnimation:v83];
        }

        _contentView = [(UIPanelController *)self _contentView];
        animator4 = [(_UIPanelAnimationState *)v40 animator];
        [animator4 setContainerView:_contentView];

        if (style)
        {
          if ([(_UIPanelAnimationState *)v40 animatorShouldCoordinate])
          {
            delegate2 = [(UIPanelController *)self delegate];
            v55 = objc_opt_respondsToSelector();

            if (v55)
            {
              v80 = 0.0;
              v81 = 0.0;
              v78 = 0.0;
              v79 = 0.0;
              v76 = 0.0;
              v77 = 0.0;
              [(UIPanelController *)self _expectedSecondaryColumnSizeAfterAnimatingToState:v69 getLeadingColumnSize:&v80 trailingColumnSize:&v78 supplementaryColumnSize:&v76];
              v57 = v56;
              v59 = v58;
              v60 = v80;
              v61 = v81;
              v62 = v78;
              v63 = v79;
              delegate3 = [(UIPanelController *)self delegate];
              v65 = delegate3;
              if (v62 <= 0.0)
              {
                v66 = v61;
              }

              else
              {
                v66 = v63;
              }

              if (v62 <= 0.0)
              {
                v67 = v60;
              }

              else
              {
                v67 = v62;
              }

              [delegate3 panelController:self willBeginAnimationToPrimarySize:v67 supplementarySize:v66 secondarySize:{v76, v77, v57, v59}];
            }
          }
        }

        animator5 = [(_UIPanelAnimationState *)v40 animator];
        [animator5 startAnimation];

        objc_destroyWeak(&v91);
        objc_destroyWeak(v96);
        objc_destroyWeak(&v95);
        objc_destroyWeak(&from);
        objc_destroyWeak(location);
      }
    }
  }

LABEL_25:
}

void __91__UIPanelController__animateFromRequest_toRequest_withAffectedSides_forceOverlay_velocity___block_invoke(uint64_t a1)
{
  v14 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v14.minimum;
  maximum = v14.maximum;
  preferred = v14.preferred;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__UIPanelController__animateFromRequest_toRequest_withAffectedSides_forceOverlay_velocity___block_invoke_2;
  v7[3] = &unk_1E71039E0;
  objc_copyWeak(&v10, (a1 + 48));
  objc_copyWeak(&v11, (a1 + 56));
  v13 = *(a1 + 72);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = *(a1 + 64);
  *&v5 = maximum;
  *&v6 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048622 updateReason:v7 animations:COERCE_DOUBLE(__PAIR64__(HIDWORD(v12), LODWORD(minimum))), v5, v6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
}

void __91__UIPanelController__animateFromRequest_toRequest_withAffectedSides_forceOverlay_velocity___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  v3 = v2;
  if (*(a1 + 72) == 1)
  {
    [v2 setProgress:1.0];
    [v3 setFinishingAnimation:1];
  }

  else
  {
    [v2 setProgress:0.999];
  }

  [WeakRetained _setNeedsLayoutAndPerformImmediately:1];
  v4 = [WeakRetained delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [WeakRetained delegate];
    [v6 panelController:WeakRetained animateTransitionToStateRequest:*(a1 + 32) predictedEndState:*(a1 + 40) predictedDuration:*(a1 + 64)];
  }
}

void __91__UIPanelController__animateFromRequest_toRequest_withAffectedSides_forceOverlay_velocity___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!a2)
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained _internalState];
    [v5 setStateRequest:v4];
  }

  v6 = [WeakRetained _internalState];
  [v6 setAnimationState:0];

  v7 = [WeakRetained delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [WeakRetained delegate];
    [v9 panelController:WeakRetained didEndAnimatedTransitionToStateRequest:*(a1 + 32)];
  }

  [*(a1 + 40) _endAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange];
  [*(a1 + 40) _setShouldFadeStaticNavBarButton:0];
  [WeakRetained setNavigationBarForContentLayoutGuideAnimation:0];
  [WeakRetained _setNeedsLayoutAndPerformImmediately:0];
}

uint64_t __91__UIPanelController__animateFromRequest_toRequest_withAffectedSides_forceOverlay_velocity___block_invoke_4(uint64_t a1)
{
  v2 = 0.001;
  if (*(a1 + 56))
  {
    v2 = 0.0;
  }

  [*(a1 + 32) setProgress:v2];
  [*(a1 + 40) setNavigationBarForContentLayoutGuideAnimation:0];
  [*(a1 + 40) _setNeedsLayoutAndPerformImmediately:1];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 setNavigationBarForContentLayoutGuideAnimation:v4];
}

void __91__UIPanelController__animateFromRequest_toRequest_withAffectedSides_forceOverlay_velocity___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) leadingViewController];
  v3 = [v2 _existingView];
  [v3 layoutIfNeeded];

  v4 = [*(a1 + 32) supplementaryViewController];
  v5 = [v4 _existingView];
  [v5 layoutIfNeeded];

  v6 = [*(a1 + 32) trailingViewController];
  v7 = [v6 _existingView];
  [v7 layoutIfNeeded];

  v9 = [*(a1 + 32) mainViewController];
  v8 = [v9 _existingView];
  [v8 layoutIfNeeded];
}

- (BOOL)_animateCustomTransitionIfNeededWithAnimationState:(id)state possiblePublicStates:(id)states newPublicState:(id)publicState estimatedDuration:(double)duration needsInitialLayout:(BOOL)layout
{
  layoutCopy = layout;
  stateCopy = state;
  statesCopy = states;
  publicStateCopy = publicState;
  delegate = [(UIPanelController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate2 = [(UIPanelController *)self delegate];
    toRequest = [stateCopy toRequest];
    v19 = [delegate2 panelController:self willBeginAnimatedTransitionToStateRequest:toRequest predictedEndState:publicStateCopy predictedDuration:duration];

    if (v19)
    {
      v20 = [(_UIViewControllerTransitionContext *)_UIViewControllerOneToOneTransitionContext _associatedTransitionContextForAnimationController:v19];

      if (!v20)
      {
        v69 = layoutCopy;
        v21 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
        [(_UIViewControllerTransitionContext *)v21 _setIsAnimated:+[UIView areAnimationsEnabled]];
        _contentView = [(UIPanelController *)self _contentView];
        [(_UIViewControllerTransitionContext *)v21 _setContainerView:_contentView];

        [(_UIViewControllerTransitionContext *)v21 _setAnimator:v19];
        [(_UIViewControllerTransitionContext *)v21 _setDuration:duration];
        [(_UIViewControllerOneToOneTransitionContext *)v21 _setFromView:0];
        [(_UIViewControllerOneToOneTransitionContext *)v21 _setFromViewController:0];
        _internalState = [(UIPanelController *)self _internalState];
        leadingViewController = [_internalState leadingViewController];
        view = [leadingViewController view];
        [(_UIViewControllerOneToOneTransitionContext *)v21 _setToView:view];

        _internalState2 = [(UIPanelController *)self _internalState];
        leadingViewController2 = [_internalState2 leadingViewController];
        v71 = v21;
        [(_UIViewControllerOneToOneTransitionContext *)v21 _setToViewController:leadingViewController2];

        view2 = [(UIPanelController *)self view];
        fromRequest = [stateCopy fromRequest];
        toRequest2 = [stateCopy toRequest];
        _internalState3 = [(UIPanelController *)self _internalState];
        v31 = [_internalState3 copy];

        affectedSides = [stateCopy affectedSides];
        possibleStates = [(UIPanelController *)self possibleStates];
        v34 = [v31 _stateForInteractiveRequest:fromRequest withAffectedSides:affectedSides inPossibleStates:possibleStates];

        [fromRequest leadingWidth];
        v36 = v35;
        v68 = fromRequest;
        [fromRequest leadingOffscreenWidth];
        if (v36 < v37)
        {
          v36 = v37;
        }

        v67 = v34;
        [v34 leadingDragOffset];
        v39 = v38;
        [view2 _currentScreenScale];
        UIRoundToScale(v39, v40);
        v42 = v41;
        v72 = view2;
        [view2 bounds];
        Height = CGRectGetHeight(v84);
        view3 = [(UIPanelController *)self view];
        _shouldReverseLayoutDirection = [view3 _shouldReverseLayoutDirection];

        if (_shouldReverseLayoutDirection)
        {
          view4 = [(UIPanelController *)self view];
          [view4 bounds];
          v49 = v47 + v48 - (v36 - v42);
        }

        else
        {
          v49 = -v42;
        }

        v51 = 0.0;
        [(_UIViewControllerOneToOneTransitionContext *)v71 _setToStartFrame:v49, 0.0, v36, Height];
        [toRequest2 leadingWidth];
        v53 = v52;
        [toRequest2 leadingOffscreenWidth];
        if (v53 < v54)
        {
          v53 = v54;
        }

        [publicStateCopy leadingDragOffset];
        v56 = v55;
        [view2 _currentScreenScale];
        UIRoundToScale(v56, v57);
        v59 = v58;
        [view2 bounds];
        v60 = CGRectGetHeight(v85);
        if (_shouldReverseLayoutDirection)
        {
          view5 = [(UIPanelController *)self view];
          [view5 bounds];
        }

        else
        {
          v51 = -v59;
        }

        [(_UIViewControllerOneToOneTransitionContext *)v71 _setToEndFrame:v51, 0.0, v53, v60];
        objc_initWeak(location, self);
        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 3221225472;
        v77[2] = __145__UIPanelController__animateCustomTransitionIfNeededWithAnimationState_possiblePublicStates_newPublicState_estimatedDuration_needsInitialLayout___block_invoke;
        v77[3] = &unk_1E7103A30;
        objc_copyWeak(&v82, location);
        v62 = toRequest2;
        v78 = v62;
        v79 = publicStateCopy;
        v63 = v31;
        v80 = v63;
        v81 = statesCopy;
        [(_UIViewControllerTransitionContext *)v71 _setCompletionHandler:v77];
        if (v69)
        {
          navigationBarForContentLayoutGuideAnimation = [(UIPanelController *)self navigationBarForContentLayoutGuideAnimation];
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __145__UIPanelController__animateCustomTransitionIfNeededWithAnimationState_possiblePublicStates_newPublicState_estimatedDuration_needsInitialLayout___block_invoke_2;
          v73[3] = &unk_1E70F6228;
          v74 = stateCopy;
          selfCopy = self;
          v65 = navigationBarForContentLayoutGuideAnimation;
          v76 = v65;
          [UIView performWithoutAnimation:v73];
        }

        [v19 animateTransition:v71];

        objc_destroyWeak(&v82);
        objc_destroyWeak(location);
      }

      v50 = 1;
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v50 = 0;
    v19 = 0;
  }

  return v50;
}

void __145__UIPanelController__animateCustomTransitionIfNeededWithAnimationState_possiblePublicStates_newPublicState_estimatedDuration_needsInitialLayout___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v22 = WeakRetained;
    if (a3)
    {
      v6 = *(a1 + 32);
      v7 = [WeakRetained _internalState];
      [v7 setStateRequest:v6];

      WeakRetained = v22;
    }

    v8 = [WeakRetained _internalState];
    [v8 setAnimationState:0];

    v9 = [v22 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [v22 delegate];
      [v11 panelController:v22 didEndAnimatedTransitionToStateRequest:*(a1 + 32)];
    }

    [v22 _setLastComputedPublicState:*(a1 + 40)];
    [v22 _setPreviousInternalState:*(a1 + 48)];
    [v22 _setLastPossiblePublicStates:*(a1 + 56)];
    v12 = [v22 view];
    [v12 bounds];
    [v22 _setLastViewSize:{v13, v14}];

    v15 = [v22 delegate];
    v16 = objc_opt_respondsToSelector();

    WeakRetained = v22;
    if (v16)
    {
      v17 = [v22 delegate];
      v18 = *(a1 + 40);
      v19 = [v22 view];
      [v19 bounds];
      [v17 panelController:v22 didChangeToState:v18 withSize:{v20, v21}];

      WeakRetained = v22;
    }
  }
}

uint64_t __145__UIPanelController__animateCustomTransitionIfNeededWithAnimationState_possiblePublicStates_newPublicState_estimatedDuration_needsInitialLayout___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProgress:0.0];
  [*(a1 + 40) setNavigationBarForContentLayoutGuideAnimation:0];
  [*(a1 + 40) _setNeedsLayoutAndPerformImmediately:1];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 setNavigationBarForContentLayoutGuideAnimation:v3];
}

- (UIViewControllerTransitionCoordinator)transitionCoordinator
{
  _internalState = [(UIPanelController *)self _internalState];
  animationState = [_internalState animationState];
  if ([animationState animatorShouldCoordinate])
  {
    _internalState2 = [(UIPanelController *)self _internalState];
    animationState2 = [_internalState2 animationState];
    animator = [animationState2 animator];
  }

  else
  {
    animator = 0;
  }

  return animator;
}

- (BOOL)isLeadingViewControllerVisibleAfterAnimation
{
  _internalState = [(UIPanelController *)self _internalState];
  animationState = [_internalState animationState];
  toRequest = [animationState toRequest];
  [toRequest leadingWidth];
  v6 = v5 > 0.0;

  return v6;
}

- (BOOL)isTrailingViewControllerVisibleAfterAnimation
{
  _internalState = [(UIPanelController *)self _internalState];
  animationState = [_internalState animationState];
  toRequest = [animationState toRequest];
  [toRequest trailingWidth];
  v6 = v5 > 0.0;

  return v6;
}

- (BOOL)isSupplementaryViewControllerVisibleAfterAnimation
{
  _internalState = [(UIPanelController *)self _internalState];
  animationState = [_internalState animationState];
  toRequest = [animationState toRequest];
  [toRequest supplementaryWidth];
  v6 = v5 > 0.0;

  return v6;
}

- (void)animateToRequest:(id)request forceOverlay:(BOOL)overlay withVelocity:(double)velocity
{
  overlayCopy = overlay;
  requestCopy = request;
  interactiveStateRequest = [(UIPanelController *)self interactiveStateRequest];
  [(UIPanelController *)self setInteractiveStateRequest:0];
  v9 = interactiveStateRequest;
  stateRequest = v9;
  if (!v9)
  {
    currentState = [(UIPanelController *)self currentState];
    stateRequest = [currentState stateRequest];
    if ([requestCopy isEqual:stateRequest])
    {
      delegate = [(UIPanelController *)self delegate];
      primaryEdge = [delegate primaryEdge];

      if (primaryEdge)
      {
        [currentState trailingDragOffset];
        v15 = v14;
        [currentState supplementaryDragOffset];
        v17 = v15 + v16;
        if (v17 > 0.0)
        {
          [stateRequest trailingWidth];
LABEL_8:
          v22 = v17 - v18;
          v23 = v18 - v17;
          v24 = v17 < v18;
          v25 = 0.0;
          if (v24)
          {
            v26 = 0.0;
          }

          else
          {
            v26 = v22;
          }

          if (v24)
          {
            v27 = v23;
          }

          else
          {
            v27 = 0.0;
          }

          [stateRequest supplementaryWidth];
          if (v26 < v28)
          {
            v25 = v28 - v26;
          }

          if (primaryEdge)
          {
            [stateRequest setTrailingWidth:v27];
          }

          else
          {
            [stateRequest setLeadingWidth:v27];
          }

          [stateRequest setSupplementaryWidth:v25];
        }
      }

      else
      {
        [currentState leadingDragOffset];
        v20 = v19;
        [currentState supplementaryDragOffset];
        v17 = v20 + v21;
        if (v17 > 0.0)
        {
          [stateRequest leadingWidth];
          goto LABEL_8;
        }
      }
    }
  }

  [(UIPanelController *)self _animateFromRequest:stateRequest toRequest:requestCopy withAffectedSides:0 forceOverlay:overlayCopy velocity:velocity];
}

- (UISlidingBarStateRequest)interactiveStateRequest
{
  _internalState = [(UIPanelController *)self _internalState];
  interactiveStateRequest = [_internalState interactiveStateRequest];

  return interactiveStateRequest;
}

- (void)setInteractiveStateRequest:(id)request
{
  requestCopy = request;
  _internalState = [(UIPanelController *)self _internalState];
  [_internalState setInteractiveStateRequest:requestCopy];

  [(UIPanelController *)self _setNeedsLayoutAndPerformImmediately:0];
}

- (NSArray)uncachedPossibleStates
{
  view = [(UIPanelController *)self view];
  _internalState = [(UIPanelController *)self _internalState];
  [view bounds];
  v7 = [_internalState computePossibleStatesGivenParentView:view withSize:{v5, v6}];

  return v7;
}

- (id)uncachedPossibleStatesForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _internalState = [(UIPanelController *)self _internalState];
  view = [(UIPanelController *)self view];
  v8 = [_internalState computePossibleStatesGivenParentView:view withSize:{width, height}];

  return v8;
}

- (void)_observeKeyboardNotificationsOnScreen:(id)screen
{
  screenCopy = screen;
  if (screenCopy && (*(&self->_panelControllerFlags + 1) & 8) == 0)
  {
    v6 = screenCopy;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__adjustForKeyboardInfo_ name:@"UIKeyboardPrivateWillShowNotification" object:v6];
    [defaultCenter addObserver:self selector:sel__adjustForKeyboardInfo_ name:@"UIKeyboardPrivateWillHideNotification" object:v6];
    [defaultCenter addObserver:self selector:sel__adjustForKeyboardInfo_ name:@"UIKeyboardPrivateDidChangeFrameNotification" object:v6];
    *&self->_panelControllerFlags |= 0x800u;

    screenCopy = v6;
  }
}

- (void)_stopObservingKeyboardNotifications
{
  if ((*(&self->_panelControllerFlags + 1) & 8) != 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UIKeyboardPrivateWillShowNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIKeyboardPrivateWillHideNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIKeyboardPrivateDidChangeFrameNotification" object:0];
    *&self->_panelControllerFlags &= ~0x800u;
  }
}

- (void)_adjustForKeyboardInfo:(id)info
{
  infoCopy = info;
  if (self->_view && ![(UIPanelController *)self isCollapsed])
  {
    if (![(UIPanelController *)self supportsColumnStyle])
    {
      owningViewController = [(UIPanelController *)self owningViewController];
      _keyboardSceneDelegate = [(UIViewController *)owningViewController _keyboardSceneDelegate];
      view = self->_view;
      userInfo = [infoCopy userInfo];
      [_keyboardSceneDelegate verticalOverlapForView:view usingKeyboardInfo:userInfo];
      v10 = v9;

      _internalState = [(UIPanelController *)self _internalState];
      [_internalState keyboardAdjustment];
      v13 = v12;

      if (v13 != v10)
      {
        owningViewController2 = [(UIPanelController *)self owningViewController];
        v15 = findTransitioningChildNavigationController(owningViewController2);

        if (v15)
        {
          transitionCoordinator = [v15 transitionCoordinator];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __44__UIPanelController__adjustForKeyboardInfo___block_invoke;
          v29[3] = &unk_1E70F3B98;
          v29[4] = self;
          [transitionCoordinator animateAlongsideTransition:0 completion:v29];
        }

        else
        {
          _internalState2 = [(UIPanelController *)self _internalState];
          [_internalState2 setKeyboardAdjustment:v10];

          currentState = [(UIPanelController *)self currentState];
          leadingOverlapsMain = [currentState leadingOverlapsMain];

          if (leadingOverlapsMain)
          {
            [(UIPanelController *)self _setNeedsDeferredUpdate];
          }
        }
      }
    }

    currentState2 = [(UIPanelController *)self currentState];
    leadingOverlapsMain2 = [currentState2 leadingOverlapsMain];

    if ((leadingOverlapsMain2 & 1) == 0)
    {
      name = [infoCopy name];
      if ([name isEqualToString:@"UIKeyboardPrivateWillShowNotification"])
      {

LABEL_14:
        userInfo2 = [infoCopy userInfo];
        [(UIPanelController *)self _adjustNonOverlayLeadingScrollViewsForKeyboardInfo:userInfo2];

        [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__adjustNonOverlayLeadingScrollViewsForKeyboardInfo_ object:0];
        goto LABEL_15;
      }

      name2 = [infoCopy name];
      v24 = [name2 isEqualToString:@"UIKeyboardPrivateDidChangeFrameNotification"];

      if (v24)
      {
        goto LABEL_14;
      }

      name3 = [infoCopy name];
      v27 = [name3 isEqualToString:@"UIKeyboardPrivateWillHideNotification"];

      if (v27)
      {
        v28 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695DA28]];
        [(UIPanelController *)self performSelector:sel__adjustNonOverlayLeadingScrollViewsForKeyboardInfo_ withObject:0 afterDelay:v28 inModes:0.0];
      }
    }
  }

LABEL_15:
}

- (void)_adjustNonOverlayLeadingScrollViewsForKeyboardInfo:(id)info
{
  infoCopy = info;
  delegate = [(UIPanelController *)self delegate];
  leadingViewController = [(UIPanelController *)self leadingViewController];
  if (leadingViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate panelController:self adjustLeadingViewController:leadingViewController forKeyboardInfo:infoCopy];
  }

  trailingViewController = [(UIPanelController *)self trailingViewController];
  if (trailingViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate panelController:self adjustTrailingViewController:trailingViewController forKeyboardInfo:infoCopy];
  }
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = UIPanelController;
  v3 = [(UIPanelController *)&v8 description];
  v4 = [v3 mutableCopy];

  if (os_variant_has_internal_diagnostics())
  {
    WeakRetained = objc_loadWeakRetained(&self->_owningViewController);
    [v4 appendFormat:@" svc=%p state=%p", WeakRetained, self->__internalState];

    if (self->__previousInternalState)
    {
      [v4 appendFormat:@" prevState=%p", self->__previousInternalState];
    }

    if (self->__lastComputedPublicState)
    {
      [v4 appendFormat:@" publicState=%p", self->__lastComputedPublicState];
    }

    if ([(NSArray *)self->__lastPossiblePublicStates count])
    {
      [v4 appendFormat:@" possibleStates=%p", self->__lastPossiblePublicStates];
    }

    v7 = _UISplitViewControllerStyleDescription(self->_style);
    [v4 appendFormat:@" style=%@", v7];
  }

  return v4;
}

- (UIViewController)owningViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_owningViewController);

  return WeakRetained;
}

- (CGSize)_lastViewSize
{
  width = self->__lastViewSize.width;
  height = self->__lastViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end