@interface UIPanelController
+ (id)_withDisabledAppearanceTransitions:(BOOL)a3 forVisibleDescendantsOf:(id)a4 perform:(id)a5;
- (BOOL)_animateCustomTransitionIfNeededWithAnimationState:(id)a3 possiblePublicStates:(id)a4 newPublicState:(id)a5 estimatedDuration:(double)a6 needsInitialLayout:(BOOL)a7;
- (BOOL)_willCollapseWithNewTraitCollection:(id)a3 oldTraitCollection:(id)a4;
- (BOOL)_willExpandWithNewTraitCollection:(id)a3 oldTraitCollection:(id)a4;
- (BOOL)isAnimating;
- (BOOL)isCollapsed;
- (BOOL)isLeadingViewControllerVisibleAfterAnimation;
- (BOOL)isSupplementaryViewControllerVisibleAfterAnimation;
- (BOOL)isTrailingViewControllerVisibleAfterAnimation;
- (CGSize)_expectedSecondaryColumnSizeAfterAnimatingToState:(id)a3 getLeadingColumnSize:(CGSize *)a4 trailingColumnSize:(CGSize *)a5 supplementaryColumnSize:(CGSize *)a6;
- (CGSize)_lastViewSize;
- (NSArray)uncachedPossibleStates;
- (NSString)description;
- (UILayoutContainerView)view;
- (UIPanelController)initWithOwningViewController:(id)a3;
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
- (double)interpolatedMarginForPrimaryNavigationBar:(id)a3 supplementaryOrSecondaryNavbar:(id)a4 getInterpolatedAlpha:(double *)a5;
- (id)_createBorderView;
- (id)_createOverlayEdgeShadowViewForEdge:(unint64_t)a3;
- (id)_createOverlayShadowView;
- (id)allViewControllers;
- (id)gatherMultitaskingDragExclusionRectsFromVisibleColumns;
- (id)uncachedPossibleStatesForSize:(CGSize)a3;
- (int64_t)collapsedState;
- (void)__viewWillLayoutSubviews;
- (void)_addIdentifiedChildViewController:(id)a3;
- (void)_adjustForKeyboardInfo:(id)a3;
- (void)_adjustNonOverlayLeadingScrollViewsForKeyboardInfo:(id)a3;
- (void)_animateFromRequest:(id)a3 toRequest:(id)a4 withAffectedSides:(int64_t)a5 forceOverlay:(BOOL)a6 velocity:(double)a7;
- (void)_collapseWithTransitionCoordinator:(id)a3;
- (void)_expandWithTransitionCoordinator:(id)a3;
- (void)_layoutContainerViewDidMoveToWindow:(id)a3;
- (void)_layoutContainerViewWillMoveToWindow:(id)a3;
- (void)_observeKeyboardNotificationsOnScreen:(id)a3;
- (void)_performDeferredUpdate;
- (void)_performSingleDeferredUpdatePass;
- (void)_performWrappedUpdate:(id)a3;
- (void)_removeIdentifiedChildViewController:(id)a3;
- (void)_setBorderViewsObserveViewBackgroundColor:(BOOL)a3;
- (void)_setNeedsDeferredUpdate;
- (void)_setNeedsLayoutAndPerformImmediately:(BOOL)a3;
- (void)_stopAnimationsBeginningInteraction:(BOOL)a3;
- (void)_stopObservingKeyboardNotifications;
- (void)_storeSuspendedConfiguration;
- (void)_unspecifiedUpdateToNewPublicState:(id)a3 withSize:(CGSize)a4;
- (void)_updateBorderViewsBackgroundColor:(id)a3;
- (void)_updateForTraitCollection:(id)a3 oldTraitCollection:(id)a4 withTransitionCoordinator:(id)a5;
- (void)_updateToNewPublicState:(id)a3 withSize:(CGSize)a4;
- (void)_withDisabledAppearanceTransitionsPerform:(id)a3;
- (void)addWrapperBlockForNextUpdate:(id)a3;
- (void)animateToRequest:(id)a3 forceOverlay:(BOOL)a4 withVelocity:(double)a5;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeChildViewController:(id)a3;
- (void)setClippingViewsUnnecessary:(BOOL)a3;
- (void)setCollapsedViewController:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDimmingView:(id)a3;
- (void)setInteractiveStateRequest:(id)a3;
- (void)setLeadingTrailingWrapsNavigationController:(BOOL)a3;
- (void)setLeadingViewController:(id)a3 changingParentage:(BOOL)a4;
- (void)setMainViewController:(id)a3 changingParentage:(BOOL)a4 animateTransition:(BOOL)a5;
- (void)setPresentationGestureActive:(BOOL)a3;
- (void)setPreservedDetailController:(id)a3;
- (void)setRunExpandScheduled:(BOOL)a3;
- (void)setStateRequest:(id)a3;
- (void)setSupplementaryViewController:(id)a3 changingParentage:(BOOL)a4;
- (void)setTrailingViewController:(id)a3 changingParentage:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3 toNewTraits:(id)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4 superBlock:(id)a5;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4 superBlock:(id)a5;
@end

@implementation UIPanelController

- (void)setPresentationGestureActive:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_panelControllerFlags = (*&self->_panelControllerFlags & 0xFFFFFFEF | v3);
}

- (void)setClippingViewsUnnecessary:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_panelControllerFlags = (*&self->_panelControllerFlags & 0xFFFFFFDF | v3);
}

- (void)setRunExpandScheduled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_panelControllerFlags = (*&self->_panelControllerFlags & 0xFFFEFFFF | v3);
}

- (UIPanelController)initWithOwningViewController:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UIPanelController;
  v5 = [(UIPanelController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(UIPanelController *)v5 setOwningViewController:v4];
    v7 = objc_alloc_init(_UIPanelInternalState);
    [(UIPanelController *)v6 _setInternalState:v7];

    v8 = objc_alloc_init(UISlidingBarConfiguration);
    v9 = [(UIPanelController *)v6 _internalState];
    [v9 setConfiguration:v8];

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

- (void)setLeadingTrailingWrapsNavigationController:(BOOL)a3
{
  if (a3)
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
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 mainViewController];

  return v3;
}

- (void)setMainViewController:(id)a3 changingParentage:(BOOL)a4 animateTransition:(BOOL)a5
{
  v5 = a4;
  v10 = a3;
  v7 = [(UIPanelController *)self _internalState];
  v8 = [v7 mainViewController];

  if (v8 != v10)
  {
    if (v5)
    {
      [(UIPanelController *)self _removeIdentifiedChildViewController:v8];
    }

    v9 = [(UIPanelController *)self _internalState];
    [v9 setMainViewController:v10];
  }

  if (v5)
  {
    [(UIPanelController *)self _addIdentifiedChildViewController:v10];
  }
}

- (UIViewController)leadingViewController
{
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 leadingViewController];

  return v3;
}

- (void)setLeadingViewController:(id)a3 changingParentage:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(UIPanelController *)self _internalState];
  v7 = [v6 leadingViewController];

  if (v7 != v9)
  {
    if (v4)
    {
      [(UIPanelController *)self _removeIdentifiedChildViewController:v7];
    }

    v8 = [(UIPanelController *)self _internalState];
    [v8 setLeadingViewController:v9];
  }

  if (v4)
  {
    [(UIPanelController *)self _addIdentifiedChildViewController:v9];
  }
}

- (UIViewController)trailingViewController
{
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 trailingViewController];

  return v3;
}

- (void)setTrailingViewController:(id)a3 changingParentage:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(UIPanelController *)self _internalState];
  v7 = [v6 trailingViewController];

  if (v7 != v9)
  {
    if (v4)
    {
      [(UIPanelController *)self _removeIdentifiedChildViewController:v7];
    }

    v8 = [(UIPanelController *)self _internalState];
    [v8 setTrailingViewController:v9];
  }

  if (v4)
  {
    [(UIPanelController *)self _addIdentifiedChildViewController:v9];
  }
}

- (UIViewController)supplementaryViewController
{
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 supplementaryViewController];

  return v3;
}

- (void)setSupplementaryViewController:(id)a3 changingParentage:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(UIPanelController *)self _internalState];
  v7 = [v6 supplementaryViewController];

  if (v7 != v9)
  {
    if (v4)
    {
      [(UIPanelController *)self _removeIdentifiedChildViewController:v7];
    }

    v8 = [(UIPanelController *)self _internalState];
    [v8 setSupplementaryViewController:v9];
  }

  if (v4)
  {
    [(UIPanelController *)self _addIdentifiedChildViewController:v9];
  }
}

- (void)setPreservedDetailController:(id)a3
{
  v4 = a3;
  v5 = [(UIPanelController *)self _internalState];
  [v5 setPreservedDetailController:v4];
}

- (UIViewController)preservedDetailController
{
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 preservedDetailController];

  return v3;
}

- (void)setCollapsedViewController:(id)a3
{
  v4 = a3;
  v5 = [(UIPanelController *)self _internalState];
  [v5 setCollapsedViewController:v4];
}

- (UIViewController)collapsedViewController
{
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 collapsedViewController];

  return v3;
}

- (UIPanelControllerDelegate)delegate
{
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v8 = a3;
  v4 = [(UIPanelController *)self _internalState];
  v5 = [v4 delegate];

  if (v5 != v8)
  {
    v6 = [(UIPanelController *)self _internalState];
    [v6 setDelegate:v8];

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
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 configuration];
  v4 = [v3 copy];

  return v4;
}

- (void)setConfiguration:(id)a3
{
  v8 = a3;
  v4 = [(UIPanelController *)self _internalState];
  v5 = [v4 configuration];
  v6 = [v8 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(UIPanelController *)self _internalState];
    [v7 setConfiguration:v8];

    [(UIPanelController *)self _setNeedsDeferredUpdate];
  }
}

- (UISlidingBarStateRequest)stateRequest
{
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 stateRequest];
  v4 = [v3 copy];

  return v4;
}

- (void)setStateRequest:(id)a3
{
  v7 = a3;
  v4 = [(UIPanelController *)self _internalState];
  v5 = [v4 stateRequest];

  if (v5 != v7)
  {
    v6 = [(UIPanelController *)self _internalState];
    [v6 setStateRequest:v7];

    if (!v7 || !v5 || ([v5 isEqual:v7] & 1) == 0)
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
  v3 = [(UIPanelController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UIPanelController *)self delegate];
    v5 = [v4 viewClassForPanelController:self];
  }

  else
  {
    v5 = objc_opt_class();
  }

  v6 = [(UIPanelController *)self owningViewController];
  [v6 _defaultInitialViewFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [[v5 alloc] initWithFrame:{v8, v10, v12, v14}];
  if (dyld_program_sdk_at_least())
  {
    v16 = [(UIPanelController *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(UIPanelController *)self delegate];
      v19 = [v18 primaryBackgroundColor];
      [(UILayoutContainerView *)v15 setDefaultBackgroundColor:v19];

      goto LABEL_10;
    }

    v20 = +[UIColor _splitViewBorderColor];
  }

  else
  {
    v20 = +[UIColor systemGrayColor];
  }

  v18 = v20;
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

- (void)_addIdentifiedChildViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v21 = v4;
    v5 = [v4 parentViewController];
    v6 = [(UIPanelController *)self owningViewController];
    v7 = v6;
    if (v5 == v6)
    {

LABEL_15:
      goto LABEL_16;
    }

    v8 = [(UIPanelController *)self owningViewController];
    v9 = [v8 childViewControllers];
    v10 = [v9 indexOfObjectIdenticalTo:v21];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_16:
      [(UIPanelController *)self _setNeedsDeferredUpdate];
      v4 = v21;
      goto LABEL_17;
    }

    v11 = [(UIPanelController *)self owningViewController];
    [v11 addChildViewController:v21];

    if (![(UIPanelController *)self style])
    {
      v12 = [(UIPanelController *)self leadingViewController];
      if (v12 == v21)
      {
      }

      else
      {
        v13 = [(UIPanelController *)self trailingViewController];

        if (v13 != v21)
        {
          goto LABEL_11;
        }
      }

      v14 = [UITraitCollection traitCollectionWithHorizontalSizeClass:1];
      v15 = [(UIPanelController *)self owningViewController];
      [v15 setOverrideTraitCollection:v14 forChildViewController:v21];
    }

LABEL_11:
    v16 = [(UIPanelController *)self _contentView];
    if (v16)
    {
      v17 = v16;
      v18 = [(UIPanelController *)self style];

      if (!v18)
      {
        v19 = [(UIPanelController *)self _contentView];
        v20 = [v21 view];
        [v19 addSubview:v20];
      }
    }

    v5 = [(UIPanelController *)self owningViewController];
    [v21 didMoveToParentViewController:v5];
    goto LABEL_15;
  }

LABEL_17:
}

- (void)_removeIdentifiedChildViewController:(id)a3
{
  v10 = a3;
  v4 = [v10 parentViewController];
  v5 = [(UIPanelController *)self owningViewController];

  if (v4 == v5)
  {
    [v10 willMoveToParentViewController:0];
    v6 = [v10 _existingView];
    v7 = v6;
    if (self->_view)
    {
      v8 = [v6 superview];
      view = self->_view;

      if (v8 == view)
      {
        [v7 removeFromSuperview];
      }
    }

    [v10 removeFromParentViewController];
  }
}

- (void)removeChildViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v20 = v4;
    if (![(UIPanelController *)self _changingViewControllerParentage])
    {
      v5 = [(UIPanelController *)self _internalState];
      v6 = [v5 leadingViewController];

      if (v6 == v20)
      {
        v7 = [(UIPanelController *)self _internalState];
        [v7 setLeadingViewController:0];
      }

      v8 = [(UIPanelController *)self _internalState];
      v9 = [v8 mainViewController];

      if (v9 == v20)
      {
        v10 = [(UIPanelController *)self _internalState];
        [v10 setMainViewController:0];
      }

      v11 = [(UIPanelController *)self _internalState];
      v12 = [v11 trailingViewController];

      if (v12 == v20)
      {
        v13 = [(UIPanelController *)self _internalState];
        [v13 setTrailingViewController:0];
      }

      v14 = [(UIPanelController *)self _internalState];
      v15 = [v14 collapsedViewController];

      if (v15 == v20)
      {
        v16 = [(UIPanelController *)self _internalState];
        [v16 setCollapsedViewController:0];
      }

      v17 = [(UIPanelController *)self _internalState];
      v18 = [v17 preservedDetailController];

      if (v18 == v20)
      {
        v19 = [(UIPanelController *)self _internalState];
        [v19 setPreservedDetailController:0];
      }
    }

    [(UIPanelController *)self _setNeedsDeferredUpdate];
    v4 = v20;
  }
}

- (id)allViewControllers
{
  v3 = objc_opt_new();
  v4 = [(UIPanelController *)self mainViewController];

  if (v4)
  {
    v5 = [(UIPanelController *)self mainViewController];
    [v3 addObject:v5];
  }

  v6 = [(UIPanelController *)self leadingViewController];

  if (v6)
  {
    v7 = [(UIPanelController *)self leadingViewController];
    [v3 addObject:v7];
  }

  v8 = [(UIPanelController *)self trailingViewController];

  if (v8)
  {
    v9 = [(UIPanelController *)self trailingViewController];
    [v3 addObject:v9];
  }

  v10 = [(UIPanelController *)self collapsedViewController];
  if (v10)
  {
    v11 = [v3 indexOfObjectIdenticalTo:v10];
    if (v11)
    {
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v3 removeObjectAtIndex:v11];
      }

      [v3 insertObject:v10 atIndex:0];
    }
  }

  return v3;
}

- (BOOL)isAnimating
{
  v3 = [(UIPanelController *)self _internalState];
  v4 = [v3 animationState];
  if (v4)
  {
    v5 = [(UIPanelController *)self _internalState];
    v6 = [v5 animationState];
    [v6 progress];
    if (v7 >= 1.0)
    {
      v9 = [(UIPanelController *)self _internalState];
      v10 = [v9 animationState];
      v8 = [v10 isFinishingAnimation];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setDimmingView:(id)a3
{
  v5 = a3;
  if (self->_dimmingView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_dimmingView, a3);
    [(UIPanelController *)self _setNeedsDeferredUpdate];
    v5 = v6;
  }
}

- (int64_t)collapsedState
{
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 collapsedState];

  return v3;
}

- (BOOL)isCollapsed
{
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 collapsedState];

  return (v3 - 1) < 2;
}

- (void)addWrapperBlockForNextUpdate:(id)a3
{
  v4 = a3;
  wrapperBlocksForNextUpdate = self->_wrapperBlocksForNextUpdate;
  aBlock = v4;
  if (!wrapperBlocksForNextUpdate)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_wrapperBlocksForNextUpdate;
    self->_wrapperBlocksForNextUpdate = v6;

    v4 = aBlock;
    wrapperBlocksForNextUpdate = self->_wrapperBlocksForNextUpdate;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)wrapperBlocksForNextUpdate addObject:v8];
}

- (id)gatherMultitaskingDragExclusionRectsFromVisibleColumns
{
  v3 = [(UIPanelController *)self _internalState];
  v4 = [v3 leadingViewController];

  v5 = [(UIPanelController *)self _internalState];
  v6 = [v5 mainViewController];

  v7 = [(UIPanelController *)self _internalState];
  v8 = [v7 trailingViewController];

  v9 = [(UIPanelController *)self _internalState];
  v10 = [v9 supplementaryViewController];

  v11 = [(UIPanelController *)self _lastComputedPublicState];
  v12 = [v11 _collapsedState];

  v13 = [(UIPanelController *)self _internalState];
  v14 = [v13 collapsedViewController];

  v15 = [(UIPanelController *)self owningViewController];
  v16 = [v15 viewIfLoaded];

  if (v16)
  {
    v17 = v12 - 1;
    v18 = [MEMORY[0x1E695DF70] array];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __75__UIPanelController_gatherMultitaskingDragExclusionRectsFromVisibleColumns__block_invoke;
    v33 = &unk_1E7102F90;
    v34 = v16;
    v35 = v18;
    v19 = v18;
    v20 = _Block_copy(&v30);
    v25 = v20;
    v26 = *(v20 + 2);
    if (v17 > 1)
    {
      v26(v20, v4, v21, v22, v23, v24);
      (v25)[2](v25, v6);
      (v25)[2](v25, v8);
      v26 = v25[2];
      v20 = v25;
      v27 = v10;
    }

    else
    {
      v27 = v14;
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

- (BOOL)_willCollapseWithNewTraitCollection:(id)a3 oldTraitCollection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIPanelController *)self _internalState];
  v9 = [v8 collapsedState];

  v10 = [v6 horizontalSizeClass];
  v11 = [v7 horizontalSizeClass];

  if (v11 != 1)
  {
    return 0;
  }

  v12 = ![(UIPanelController *)self _hasUpdatedForTraitCollection];
  if (v10 == 2)
  {
    LOBYTE(v12) = 1;
  }

  return !v9 || v12;
}

- (BOOL)_willExpandWithNewTraitCollection:(id)a3 oldTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIPanelController *)self _willCollapseWithNewTraitCollection:v6 oldTraitCollection:v7])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(UIPanelController *)self _internalState];
    v10 = [v9 collapsedState];

    v11 = [v7 horizontalSizeClass];
    v12 = [v6 horizontalSizeClass];
    v14 = v11 == 1 || v10 == 2;
    v8 = v12 == 2 && v14;
  }

  return v8;
}

- (void)_updateForTraitCollection:(id)a3 oldTraitCollection:(id)a4 withTransitionCoordinator:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIPanelController *)self _internalState];
  v12 = [v11 leadingViewController];
  if (!v12)
  {
    v12 = [(UIPanelController *)self _internalState];
    v13 = [v12 mainViewController];
    if (!v13)
    {
      v13 = [(UIPanelController *)self _internalState];
      v14 = [v13 trailingViewController];
      if (!v14)
      {
        v15 = [(UIPanelController *)self _internalState];
        v16 = [v15 collapsedViewController];

        if (!v16)
        {
          goto LABEL_13;
        }

        goto LABEL_7;
      }
    }
  }

LABEL_7:
  if ([(UIPanelController *)self _willCollapseWithNewTraitCollection:v8 oldTraitCollection:v9])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v17 = *(__UILogGetCategoryCachedImpl("UIPanelController", &_updateForTraitCollection_oldTraitCollection_withTransitionCoordinator____s_category) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [(UIPanelController *)self _internalState];
        v20 = [v19 collapsedState];
        v21 = [(UIPanelController *)self owningViewController];
        v22 = [v21 traitCollection];
        v23 = 134284035;
        v24 = v20;
        v25 = 2113;
        v26 = v22;
        v27 = 2113;
        v28 = v8;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "About to collapse, current collapsedState : %{private}ld, current traitCollection: %{private}@ new traitCollection: %{private}@", &v23, 0x20u);
      }
    }

    [(UIPanelController *)self _collapseWithTransitionCoordinator:v10];
  }

  else if ([(UIPanelController *)self _willExpandWithNewTraitCollection:v8 oldTraitCollection:v9])
  {
    [(UIPanelController *)self _expandWithTransitionCoordinator:v10];
  }

  [(UIPanelController *)self _setHasUpdatedForTraitCollection:1];
LABEL_13:
}

- (void)_collapseWithTransitionCoordinator:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v5 = [(UIPanelController *)self _internalState];
  v6 = [v5 collapsedState];

  if ((v6 - 1) <= 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = *(__UILogGetCategoryCachedImpl("UIPanelController", &_collapseWithTransitionCoordinator____s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134283521;
        *(&buf + 4) = v6;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring redundant collapse request (non-workaround path): current collapsedState: %{private}ld", &buf, 0xCu);
      }
    }

    goto LABEL_38;
  }

  v8 = [(UIPanelController *)self _internalState];
  [v8 setCollapsedState:1];

  [(UIPanelController *)self setRunExpandScheduled:0];
  v9 = [(UIPanelController *)self delegate];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__56;
  v79 = __Block_byref_object_dispose__56;
  v80 = 0;
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 primaryViewControllerForCollapsingPanelController:self];
    v11 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v10;
  }

  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__56;
  v74 = __Block_byref_object_dispose__56;
  v12 = [(UIPanelController *)self _internalState];
  v75 = [v12 supplementaryViewController];

  if (*(*(&buf + 1) + 40))
  {
    v13 = 0;
  }

  else
  {
    v14 = [(UIPanelController *)self leadingViewController];
    v15 = v14;
    if (v14)
    {
      v16 = 0;
      v17 = v14;
    }

    else
    {
      v18 = [(UIPanelController *)self trailingViewController];
      v3 = v18;
      if (v18)
      {
        v16 = 0;
        v17 = v18;
      }

      else
      {
        v17 = v71[5];
        if (v17)
        {
          v16 = 0;
          v3 = 0;
        }

        else
        {
          v17 = [(UIPanelController *)self mainViewController];
          v3 = 0;
          v16 = 1;
        }
      }
    }

    objc_storeStrong((*(&buf + 1) + 40), v17);
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
  v69 = [(UIPanelController *)self mainViewController];
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

  v21 = [v9 topColumnForCollapsingPanelController:self];
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
      v23 = [v9 viewControllerForColumn:3];
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
  v27 = v9;
  v57 = v27;
  v28 = v45;
  v58 = v28;
  v29 = _Block_copy(aBlock);
  v30 = [(UIPanelController *)self style];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v53 = __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke_387;
  v54 = &__block_descriptor_33_e24___UIView_16__0__UIView_8l;
  v55 = v30 != 0;
  v31 = [(UIPanelController *)self leadingViewController];
  v32 = [v31 _existingView];
  v33 = __56__UIPanelController__collapseWithTransitionCoordinator___block_invoke_387(v52, v32);

  v34 = [(UIPanelController *)self supplementaryViewController];
  v35 = [v34 _existingView];
  v36 = v53(v52, v35);

  v37 = [(UIPanelController *)self trailingViewController];
  v38 = [v37 _existingView];
  v39 = v53(v52, v38);

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
  v50 = self;
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

- (void)_expandWithTransitionCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(UIPanelController *)self _internalState];
  [v5 setCollapsedState:3];

  v6 = [(UIPanelController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0 || (-[UIPanelController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), [v8 primaryViewControllerForExpandingPanelController:self], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = [(UIPanelController *)self _internalState];
    v9 = [v10 collapsedViewController];
  }

  v11 = [(UIPanelController *)self delegate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__UIPanelController__expandWithTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E7101978;
  aBlock[4] = self;
  v12 = v9;
  v30 = v12;
  v13 = v11;
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

    v17 = [v12 _window];
    if (!v17)
    {
      goto LABEL_14;
    }

    v18 = [v12 _isNavigationController];

    if (v18)
    {
      v19 = [v12 _transitionConductor];
      v17 = [v19 transitionCoordinator];

      if (v17 && v17 != v4)
      {
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __54__UIPanelController__expandWithTransitionCoordinator___block_invoke_6;
        v23 = &unk_1E7101FE0;
        v24 = self;
        v25 = v14;
        v26 = v16;
        [v17 animateAlongsideTransition:0 completion:&v20];
        [(UIPanelController *)self setRunExpandScheduled:1, v20, v21, v22, v23, v24];

LABEL_19:
        goto LABEL_20;
      }
    }

    else
    {
LABEL_13:
      v17 = 0;
    }

LABEL_14:
    if (![(UIPanelController *)self isRunExpandScheduled])
    {
      if (v4)
      {
        [v4 animateAlongsideTransition:v14 completion:v16];
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

  if (v4)
  {
    [v4 animateAlongsideTransition:v14 completion:v16];
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

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4 superBlock:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(UIPanelController *)self owningViewController];
  v11 = [v10 traitCollection];

  v12 = [(UIView *)self->_view window];
  if (v12)
  {
    if (v8)
    {
      [v8 targetTransform];
    }

    else
    {
      memset(&v17, 0, sizeof(v17));
    }

    if (!CGAffineTransformIsIdentity(&v17))
    {
      if ([(UIPanelController *)self _willCollapseWithNewTraitCollection:v16 oldTraitCollection:v11])
      {
      }

      else
      {
        v13 = [(UIPanelController *)self _willExpandWithNewTraitCollection:v16 oldTraitCollection:v11];

        if (!v13)
        {
          goto LABEL_12;
        }
      }

      v14 = [(UIPanelController *)self _contentView];
      v12 = [v14 snapshotViewAfterScreenUpdates:0];

      if (v12)
      {
        v15 = [[_UIPanelControllerMeshAnimatingTransitionView alloc] initWithView:v12];
        [(UIPanelController *)self _setSourceTransitionView:v15];
      }
    }
  }

LABEL_12:
  *&self->_panelControllerFlags |= 0x40u;
  [(UIPanelController *)self _updateForTraitCollection:v16 oldTraitCollection:v11 withTransitionCoordinator:v8];
  *&self->_panelControllerFlags &= ~0x40u;
  if (v9)
  {
    v9[2](v9);
  }
}

- (void)traitCollectionDidChange:(id)a3 toNewTraits:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(UIPanelController *)self _hasUpdatedForTraitCollection])
  {
    if (dyld_program_sdk_at_least())
    {
      v7 = [v6 horizontalSizeClass] == 1;
      if (v7 != [(UIPanelController *)self isCollapsed])
      {
        [(UIPanelController *)self _updateForTraitCollection:v6 oldTraitCollection:v8 withTransitionCoordinator:0];
      }
    }
  }
}

- (void)_storeSuspendedConfiguration
{
  v4 = [(UIPanelController *)self _internalState];
  v3 = [v4 configuration];
  [(UIPanelController *)self _setSuspendedConfiguration:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4 superBlock:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a4;
  v10 = a5;
  [(UIPanelController *)self _stopAnimationsBeginningInteraction:0];
  *&self->_panelControllerFlags |= 0x80u;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__UIPanelController_viewWillTransitionToSize_withTransitionCoordinator_superBlock___block_invoke;
  aBlock[3] = &unk_1E7103860;
  aBlock[4] = self;
  v67 = width;
  v68 = height;
  v11 = v10;
  v66 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [(UIPanelController *)self _sourceTransitionView];
  v14 = [(UIPanelController *)self _contentView];
  if (v9)
  {
    [v9 targetTransform];
  }

  else
  {
    memset(&v69, 0, sizeof(v69));
  }

  v15 = 0;
  if (!CGAffineTransformIsIdentity(&v69) && !v13)
  {
    if ((*(&self->_panelControllerFlags + 1) & 2) != 0)
    {
      v15 = 0;
    }

    else
    {
      v16 = [v14 autoresizesSubviews];
      *&self->_panelControllerFlags |= 0x200u;
      [v14 setAutoresizesSubviews:0];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __83__UIPanelController_viewWillTransitionToSize_withTransitionCoordinator_superBlock___block_invoke_2;
      v62[3] = &unk_1E70F5AF0;
      v62[4] = self;
      v63 = v14;
      v64 = v16;
      v15 = _Block_copy(v62);
    }
  }

  v69.a = 0.0;
  *&v69.b = &v69;
  *&v69.c = 0x3032000000;
  *&v69.d = __Block_byref_object_copy__56;
  *&v69.tx = __Block_byref_object_dispose__56;
  v69.ty = 0.0;
  [v14 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v14 center];
  v41 = v26;
  v42 = v25;
  WeakRetained = objc_loadWeakRetained(&self->_owningViewController);
  v28 = [(UIPanelController *)self _internalState];
  v29 = _transitionInsetsForViewController(WeakRetained, v28);
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
  v37 = v13;
  v48 = v37;
  v38 = v14;
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
  [v9 animateAlongsideTransition:v47 completion:0];
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
  [v9 animateAlongsideTransition:0 completion:v43];

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

- (void)_withDisabledAppearanceTransitionsPerform:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIPanelController *)self owningViewController];
  v6 = objc_opt_class();
  if (v5)
  {
    v7 = (v5[94] & 3u) - 1 < 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v6 _withDisabledAppearanceTransitions:v7 forVisibleDescendantsOf:v5 perform:{v4, v4}];
  v9 = [MEMORY[0x1E695DF70] array];
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
        v16 = [v15 _existingView];
        v17 = [v16 window];

        if (!v17)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__UIPanelController__withDisabledAppearanceTransitionsPerform___block_invoke;
    v19[3] = &unk_1E7103900;
    v20 = v9;
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

+ (id)_withDisabledAppearanceTransitions:(BOOL)a3 forVisibleDescendantsOf:(id)a4 perform:(id)a5
{
  v6 = a3;
  v41 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (!v6)
  {
    v13 = 0;
    if (!v8)
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
  (*(v12 + 2))(v12, v7);
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
  if (v6)
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

- (void)_layoutContainerViewWillMoveToWindow:(id)a3
{
  if (a3)
  {
    if ([(UIPanelController *)self _needsFirstTimeUpdateForTraitCollection])
    {
      [(UIPanelController *)self _setNeedsFirstTimeUpdateForTraitCollection:0];
      v4 = objc_alloc_init(_UIViewControllerNullAnimationTransitionCoordinator);
      v5 = [(UIPanelController *)self owningViewController];
      v6 = [v5 traitCollection];

      v7 = [UITraitCollection traitCollectionWithHorizontalSizeClass:0];
      [(UIPanelController *)self _updateForTraitCollection:v6 oldTraitCollection:v7 withTransitionCoordinator:v4];

      v8 = [(UIPanelController *)self owningViewController];
      [v8 _setLastNotifiedTraitCollection:v6];

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

- (void)_layoutContainerViewDidMoveToWindow:(id)a3
{
  v8 = a3;
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (v8)
    {
      v6 = [v8 screen];
      [(UIPanelController *)self _observeKeyboardNotificationsOnScreen:v6];

      [(UIPanelController *)self _adjustForKeyboardInfo:0];
    }

    else
    {
      [(UIPanelController *)self _stopObservingKeyboardNotifications];
      v7 = [(UIPanelController *)self _internalState];
      [v7 setKeyboardAdjustment:0.0];
    }
  }
}

- (void)__viewWillLayoutSubviews
{
  v3 = [(UIPanelController *)self _sourceTransitionView];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIPanelController *)self _sourceTransitionView];
    v6 = [v5 superview];
    v7 = [(UIPanelController *)self view];
    if (v6 == v7)
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
      v10 = [(UIPanelController *)self view];
      [v10 bounds];
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

- (void)_setNeedsLayoutAndPerformImmediately:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self->_view setNeedsLayout];
  *&self->_panelControllerFlags |= 0x2000u;
  if (v3)
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
    v7 = [(UIPanelController *)self _internalState];
    v4 = [v7 externallyAnimatingStateRequest];
    if (v4)
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
  v67 = [(UIPanelController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v66 = [v67 panelControllerWillUpdate:self];
  }

  else
  {
    v66 = 0;
  }

  v2 = [(UIPanelController *)self view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v83 = 0;
  v7 = [(UIPanelController *)self _internalState];
  v8 = [v7 configuration];
  v9 = [v8 forceOverlay];

  v10 = [(UIPanelController *)self _internalState];
  v11 = [(UIPanelController *)self view];
  v68 = [v10 computePossibleStatesGivenParentView:v11 withSize:v9 forceOverlay:{v4, v6}];

  if (v66)
  {
    v12 = v66[2]();
    v13 = [(UIPanelController *)self _internalState];
    [v13 setStateRequest:v12];

    if (v83 == 1)
    {
      v14 = [(UIPanelController *)self _suspendedConfiguration];
      v15 = v14 == 0;

      if (!v15)
      {
        v16 = [(UIPanelController *)self _suspendedConfiguration];
        v17 = [(UIPanelController *)self _internalState];
        [v17 setConfiguration:v16];

        v18 = [(UIPanelController *)self _suspendedConfiguration];
        v19 = [v18 forceOverlay];

        v20 = [(UIPanelController *)self _internalState];
        v21 = [(UIPanelController *)self view];
        v22 = [v20 computePossibleStatesGivenParentView:v21 withSize:v19 forceOverlay:{v4, v6}];

        v68 = v22;
      }
    }

    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v23 = [(UIPanelController *)self _internalState];
      [v23 setExternallyAnimatingStateRequest:v12];

      v24 = [(UIPanelController *)self currentState];
      v25 = affectedSidesFromState(v24);
      v26 = [(UIPanelController *)self _internalState];
      [v26 setExternallyAnimatingAffectedSides:v25];

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

  v27 = [(UIPanelController *)self _internalState];
  v69 = [v27 copy];

  v28 = [v69 animationState];

  if (!v28)
  {
    v40 = [v69 externallyAnimatingStateRequest];

    if (v40)
    {
      v41 = [v69 externallyAnimatingStateRequest];
      v42 = [v69 _stateForInteractiveRequest:v41 withAffectedSides:objc_msgSend(v69 inPossibleStates:{"externallyAnimatingAffectedSides"), v68}];
    }

    else
    {
      v47 = [v69 interactiveStateRequest];

      if (v47)
      {
        v41 = [v69 interactiveStateRequest];
        v42 = [v69 _stateForInteractiveRequest:v41 withAffectedSides:0 inPossibleStates:v68];
      }

      else
      {
        v48 = [v69 stateRequest];

        if (!v48)
        {
          goto LABEL_38;
        }

        v41 = [v69 stateRequest];
        v42 = [v41 _matchingState:v68];
      }
    }

    v46 = v42;
    goto LABEL_37;
  }

  v29 = [v69 animationState];
  [v29 progress];
  v31 = v30 == 0.0;

  if (!v31)
  {
    v41 = v68;
    goto LABEL_31;
  }

  v65 = [(UIPanelController *)self possibleStates];
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
    v41 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v65 copyItems:1];

    _updateTreatsHiddenAsOverlapsInStates(v41, v35, v36, v37);
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

  v41 = v65;
LABEL_31:
  v43 = [v69 animationState];
  v44 = [v43 stateRequest];
  v45 = [v69 animationState];
  v46 = [v69 _stateForInteractiveRequest:v44 withAffectedSides:objc_msgSend(v45 inPossibleStates:{"affectedSides"), v41}];

LABEL_37:
  if (!v46)
  {
LABEL_38:
    v46 = [v68 firstObject];
    if (!v46)
    {
      goto LABEL_53;
    }
  }

  v49 = self;
  if ((*&self->_panelControllerFlags & 8) != 0)
  {
    v51 = [(UIPanelController *)self _previousInternalState];
    v52 = v51 == 0;

    if (v52)
    {
      v50 = v46;
    }

    else
    {
      v53 = affectedSidesFromState(v46);
      v54 = [(UIPanelController *)self _previousInternalState];
      v55 = [(UIPanelController *)self _previousInternalState];
      v56 = [v55 stateRequest];
      v57 = [(UIPanelController *)self _lastPossiblePublicStates];
      v50 = [v54 _stateForInteractiveRequest:v56 withAffectedSides:v53 inPossibleStates:v57];

      [(UIPanelController *)self _lastViewSize];
      if (!v50)
      {
        goto LABEL_53;
      }

      v4 = v58;
      v6 = v59;
    }

    v49 = self;
  }

  else
  {
    v50 = v46;
  }

  p_panelControllerFlags = &v49->_panelControllerFlags;
  *&v49->_panelControllerFlags |= 1u;
  v61 = [(UIPanelController *)v49 delegate];
  if (*p_panelControllerFlags & 8) == 0 && (objc_opt_respondsToSelector())
  {
    [v61 panelController:self willChangeToState:v50];
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
  v63 = self;
  if ((*&self->_panelControllerFlags & 8) == 0)
  {
    [(UIPanelController *)self _setLastComputedPublicState:v62];
    [(UIPanelController *)self _setPreviousInternalState:v69];
    [(UIPanelController *)self _setLastPossiblePublicStates:v68];
    [(UIPanelController *)self _setLastViewSize:v4, v6];
    v64 = objc_opt_respondsToSelector();
    v63 = self;
    if (v64)
    {
      [v61 panelController:self didChangeToState:v62 withSize:{v4, v6}];
      v63 = self;
    }
  }

  *&v63->_panelControllerFlags &= ~1u;

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

- (void)_performWrappedUpdate:(id)a3
{
  v4 = a3;
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
  v5 = v4;
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

- (void)_unspecifiedUpdateToNewPublicState:(id)a3 withSize:(CGSize)a4
{
  v183 = *MEMORY[0x1E69E9840];
  v158 = a3;
  v161 = [(UIPanelController *)self _contentView];
  v5 = [(UIPanelController *)self _internalState];
  v146 = [v5 leadingViewController];

  v6 = [(UIPanelController *)self _internalState];
  v138 = [v6 mainViewController];

  v7 = [(UIPanelController *)self _internalState];
  v135 = [v7 trailingViewController];

  v8 = [v158 _collapsedState] == 1 || objc_msgSend(v158, "_collapsedState") == 2;
  v9 = [(UIPanelController *)self _internalState];
  v137 = [v9 collapsedViewController];

  if (v8)
  {
    v134 = v137;
    v10 = [v134 view];
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_35;
  }

  v134 = v138;
  v10 = [v134 view];
  v15 = v158;
  [v158 leadingWidth];
  if (v16 <= 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v146 view];

    v15 = v158;
  }

  [v15 trailingWidth];
  if (v17 <= 0.0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v135 view];

    v15 = v158;
  }

  v18 = [v15 configuration];
  v19 = [v18 borderColor];
  if (v19)
  {
  }

  else if ([(UILayoutContainerView *)self->_view backgroundColorIsDefault])
  {
    v20 = +[UIColor _splitViewBorderColor];
    goto LABEL_17;
  }

  v20 = [v18 borderColor];
  if (!v20)
  {
    v22 = [(UIView *)self->_view backgroundColor];

    v21 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v21 = v20;
  v22 = v21;
LABEL_19:

  if (v14 && ([v158 configuration], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "leadingBorderWidthForScale:", 1.0), v25 = v24, v23, v25 > 0.0))
  {
    v26 = [(UIPanelController *)self _leadingBorderView];

    if (!v26)
    {
      v27 = [(UIPanelController *)self _createBorderView];
      [(UIPanelController *)self _setLeadingBorderView:v27];
    }

    v12 = [(UIPanelController *)self _leadingBorderView];
    [v12 setBackgroundColor:v22];
    [v12 setNeedsLayout];
    if (!v13)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v12 = 0;
    if (!v13)
    {
      goto LABEL_30;
    }
  }

  v28 = [v158 configuration];
  [v28 trailingBorderWidthForScale:1.0];
  v30 = v29;

  if (v30 > 0.0)
  {
    v31 = [(UIPanelController *)self _trailingBorderView];

    if (!v31)
    {
      v32 = [(UIPanelController *)self _createBorderView];
      [(UIPanelController *)self _setTrailingBorderView:v32];
    }

    v11 = [(UIPanelController *)self _trailingBorderView];
    [v11 setBackgroundColor:v22];
    [v11 setNeedsLayout];
    goto LABEL_31;
  }

LABEL_30:
  v11 = 0;
LABEL_31:
  if (v12 | v11)
  {
    v33 = [v158 configuration];
    v34 = [v33 borderColor];
    [(UIPanelController *)self _setBorderViewsObserveViewBackgroundColor:v34 == 0];
  }

  else
  {
    [(UIPanelController *)self _setBorderViewsObserveViewBackgroundColor:0];
  }

LABEL_35:
  v173 = 0;
  v174 = v10;
  v172 = 0;
  __65__UIPanelController__unspecifiedUpdateToNewPublicState_withSize___block_invoke(&v174, &v173, &v172);
  v155 = v174;

  v151 = v173;
  v141 = v172;
  v170 = 0;
  v171 = v14;
  v169 = 0;
  __65__UIPanelController__unspecifiedUpdateToNewPublicState_withSize___block_invoke(&v171, &v170, &v169);
  v35 = v171;

  v153 = v170;
  v140 = v169;
  v167 = 0;
  v168 = v13;
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
  if ((!v35 || ([v158 leadingOverlapsMain] & 1) == 0) && (!v36 || !objc_msgSend(v158, "trailingOverlapsMain")))
  {
    v40 = 0;
    if (!v35)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  v40 = [(UIPanelController *)self dimmingView];
  if (v40)
  {
    [v38 addObject:v40];
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
    if (v12)
    {
      [v38 addObject:v12];
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
    if (v11)
    {
      [v38 addObject:v11];
    }
  }

  v150 = v40;
  v41 = [v161 subviews];
  v42 = [v38 array];
  v43 = [v41 isEqualToArray:v42];

  if ((v43 & 1) == 0)
  {
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v44 = [v161 subviews];
    v45 = [v44 countByEnumeratingWithState:&v162 objects:v182 count:16];
    if (v45)
    {
      v46 = *v163;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v163 != v46)
          {
            objc_enumerationMutation(v44);
          }

          v48 = *(*(&v162 + 1) + 8 * i);
          if (([v38 containsObject:v48] & 1) == 0)
          {
            [v48 removeFromSuperview];
          }
        }

        v45 = [v44 countByEnumeratingWithState:&v162 objects:v182 count:16];
      }

      while (v45);
    }

    if (v155)
    {
      [v161 insertSubview:v155 atIndex:0];
      v49 = 1;
    }

    else
    {
      v49 = 0;
    }

    if (v151)
    {
      [v161 insertSubview:v151 atIndex:v49++];
    }

    if (v150)
    {
      [v161 insertSubview:v150 atIndex:v49++];
    }

    v50 = dyld_program_sdk_at_least();
    if (!((v12 == 0) | v50 & 1))
    {
      [v161 insertSubview:v12 atIndex:v49++];
    }

    if (v35)
    {
      [v161 insertSubview:v35 atIndex:v49++];
    }

    if (v153)
    {
      [v161 insertSubview:v153 atIndex:v49++];
    }

    if (!((v11 == 0) | v50 & 1))
    {
      [v161 insertSubview:v11 atIndex:v49++];
    }

    if (v157)
    {
      [v161 insertSubview:v157 atIndex:v49++];
    }

    if (v142)
    {
      [v161 insertSubview:v142 atIndex:v49++];
    }

    v51 = v50 ^ 1;
    if (v12 && (v51 & 1) == 0)
    {
      [v161 insertSubview:v12 atIndex:v49++];
    }

    if (!((v11 == 0) | v51 & 1))
    {
      [v161 insertSubview:v11 atIndex:v49];
    }
  }

  if ((*&self->_panelControllerFlags & 8) != 0)
  {
    v55 = *MEMORY[0x1E695EFF8];
    v57 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    [v161 bounds];
    a4.width = v52;
    a4.height = v53;
    v55 = v54;
    v57 = v56;
  }

  v58 = [(UIPanelController *)self view];
  v154 = [v58 _shouldReverseLayoutDirection];

  [v161 _currentScreenScale];
  v60 = v59;
  [v150 setFrame:{v55, v57, a4.width, a4.height}];
  v143 = v35;
  v61 = v12;
  v152 = v155;
  v62 = v11;
  v144 = v157;
  v63 = v158;
  v64 = v148;
  v149 = v146;
  v159 = v134;
  v147 = v135;
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
    v184.size.width = a4.width;
    v184.size.height = a4.height;
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
        v88 = [v63 configuration];
        [v88 leadingBorderWidthForScale:v60];
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
        v92 = [v63 configuration];
        [v92 trailingBorderWidthForScale:v60];
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
  v185.size.width = a4.width;
  v185.size.height = a4.height;
  Height = CGRectGetHeight(v185);
  v181[0] = 0;
  v181[1] = v181;
  v181[2] = 0x2020000000;
  if (v154)
  {
    v186.origin.x = v55;
    v186.origin.y = v57;
    v186.size.width = a4.width;
    v186.size.height = a4.height;
    v83 = CGRectGetWidth(v186) - v83;
  }

  *&v181[3] = v83;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __unspecifiedLayoutSideBySideViews_block_invoke;
  aBlock[3] = &unk_1E7103A58;
  v180 = v154 ^ 1;
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
    v100 = [v97 configuration];
    [v100 leadingBorderWidthForScale:v60];
    (v99)[2](v99, v61, 0, 0);
  }

  (v99[2])(v99, v152, 0, v159, Width);
  if (v66)
  {
    v101 = [v97 configuration];
    [v101 trailingBorderWidthForScale:v60];
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
    v109 = 0;
  }

  else
  {
    v109 = [v105 leadingOverlapsMain];
  }

  if (v157)
  {
    v110 = [v105 trailingOverlapsMain];
  }

  else
  {
    v110 = 0;
  }

  [v105 leadingDragOffset];
  v112 = v111;
  v113 = [v105 trailingOverlapsMain];
  if (v109)
  {
    [v105 leadingWidth];
    v115 = v114;
    v187.origin.x = v55;
    v187.origin.y = v57;
    v187.size.width = a4.width;
    v187.size.height = a4.height;
    v116 = CGRectGetHeight(v187);
    if (v154)
    {
      v188.origin.x = v55;
      v188.origin.y = v57;
      v188.size.width = a4.width;
      v188.size.height = a4.height;
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
      v120 = [v105 configuration];
      [v120 leadingBorderWidthForScale:v60];
      v122 = v121;

      if (v154)
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

  if (v110)
  {
    [v105 trailingWidth];
    v125 = v124;
    v193.origin.x = v55;
    v193.origin.y = v57;
    v193.size.width = a4.width;
    v193.size.height = a4.height;
    v126 = CGRectGetHeight(v193);
    v127 = v113;
    if ((v154 & 1) == 0)
    {
      v194.origin.x = v55;
      v194.origin.y = v57;
      v194.size.width = a4.width;
      v194.size.height = a4.height;
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
      v130 = [v105 configuration];
      [v130 trailingBorderWidthForScale:v60];
      v132 = v131;

      if (v154)
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

  layoutPresentationViews(v161, v159, v141);
  layoutPresentationViews(v161, v107, v140);
  layoutPresentationViews(v161, v108, v139);
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

- (void)_updateToNewPublicState:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v665 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (![(UIPanelController *)self style])
  {
    [(UIPanelController *)self _unspecifiedUpdateToNewPublicState:v7 withSize:width, height];
    goto LABEL_745;
  }

  r1_24 = width;
  v590 = height;
  v598 = v7;
  v602 = self;
  v8 = [(UIPanelController *)self _contentView];
  v9 = [(UIPanelController *)v602 _internalState];
  v582 = [v9 leadingViewController];

  v10 = [(UIPanelController *)v602 _internalState];
  v519 = [v10 mainViewController];

  v11 = [(UIPanelController *)v602 _internalState];
  v581 = [v11 trailingViewController];

  v12 = [(UIPanelController *)v602 _internalState];
  v566 = [v12 supplementaryViewController];

  v13 = [v598 _collapsedState] == 1 || objc_msgSend(v598, "_collapsedState") == 2;
  v14 = [(UIPanelController *)v602 _internalState];
  v518 = [v14 collapsedViewController];

  v15 = [(UIPanelController *)v602 configuration];
  v532 = [v15 supplementaryEdge];

  v580 = [v598 configuration];
  if (!v13)
  {
    v563 = v519;
    v16 = [v563 view];
    v19 = v598;
    [v598 leadingWidth];
    if (v20 <= 0.0 && ([v598 leadingOffscreenWidth], v21 <= 0.0))
    {
      v17 = 0;
    }

    else
    {
      v17 = [v582 view];

      v19 = v598;
    }

    [v19 trailingWidth];
    if (v22 <= 0.0 && ([v19 trailingOffscreenWidth], v23 <= 0.0))
    {
      v24 = 0;
    }

    else
    {
      v24 = [v581 view];

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
      v27 = [v566 view];

      v592 = 0;
      v28 = v27 != 0;
      r1_16 = v27;
      if (v27 && !v17 && !v24)
      {
        v29 = v27;
        v17 = v29;
        if (v532)
        {
          v18 = 0;
          v28 = 1;
          r1_16 = v29;
          v592 = 1;
          v30 = 1;
          if ([v580 forceOverlay])
          {
            goto LABEL_38;
          }

          goto LABEL_32;
        }

        v24 = 0;
        v592 = 1;
        v28 = 1;
        r1_16 = v29;
      }
    }

    if ([v580 forceOverlay] & 1) != 0 || v17 && (objc_msgSend(v598, "leadingOverlapsMain"))
    {
      v30 = 1;
      v18 = v17;
      v17 = v24;
      goto LABEL_38;
    }

    v18 = v17;
    if (!v24)
    {
      v17 = 0;
LABEL_35:
      if (r1_16)
      {
        v30 = [v598 supplementaryOverlapsMain];
      }

      else
      {
        r1_16 = 0;
        v30 = 0;
      }

LABEL_38:
      v31 = [v580 borderColor];
      if (v31)
      {
      }

      else if ([(UILayoutContainerView *)v602->_view backgroundColorIsDefault])
      {
        v32 = +[UIColor _splitViewBorderColor];

        if (v30)
        {
          v594 = 0;
          v33 = v602;
          if (!v18)
          {
            goto LABEL_64;
          }

          goto LABEL_49;
        }

        v33 = v602;
        if ([v580 borderAbuttingMainRendersAsShadow])
        {
          if (v18 | v17)
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
        [v580 leadingBorderWidthForScale:1.0];
        if (v36 > 0.0)
        {
          v37 = [(UIPanelController *)v33 _leadingBorderView];

          v38 = v602;
          if (!v37)
          {
            v39 = [(UIPanelController *)v602 _createBorderView];
            v38 = v602;
            [(UIPanelController *)v602 _setLeadingBorderView:v39];
          }

          v584 = [(UIPanelController *)v38 _leadingBorderView];
          [v584 setRenderAsShadow:0];
          [v584 setBackgroundColor:v32];
          [v584 setNeedsLayout];
          if (v592 & 1 | (r1_16 == 0 || v532 != 0))
          {
            v547 = 0;
          }

          else
          {
            v40 = [(UIPanelController *)v602 _supplementaryBorderView];

            v41 = v602;
            if (!v40)
            {
              v42 = [(UIPanelController *)v602 _createBorderView];
              v41 = v602;
              [(UIPanelController *)v602 _setSupplementaryBorderView:v42];
            }

            v547 = [(UIPanelController *)v41 _supplementaryBorderView];
            [v547 setRenderAsShadow:0];
            v43 = [v584 backgroundColor];
            [v547 setBackgroundColor:v43];

            [v547 setNeedsLayout];
          }

          v33 = v602;
          if (!v17)
          {
            goto LABEL_72;
          }

LABEL_65:
          [v580 trailingBorderWidthForScale:1.0];
          if (v45 > 0.0)
          {
            v46 = [(UIPanelController *)v33 _trailingBorderView];

            v47 = v602;
            if (!v46)
            {
              v48 = [(UIPanelController *)v602 _createBorderView];
              v47 = v602;
              [(UIPanelController *)v602 _setTrailingBorderView:v48];
            }

            v49 = [(UIPanelController *)v47 _trailingBorderView];
            [v49 setRenderAsShadow:0];
            [v49 setBackgroundColor:v32];
            [v49 setNeedsLayout];
            if (!(v592 & 1 | (r1_16 == 0) | (v532 == 0)))
            {
              v50 = [(UIPanelController *)v602 _supplementaryBorderView];

              v51 = v602;
              if (!v50)
              {
                v52 = [(UIPanelController *)v602 _createBorderView];
                v51 = v602;
                [(UIPanelController *)v602 _setSupplementaryBorderView:v52];
              }

              v53 = [(UIPanelController *)v51 _supplementaryBorderView];

              [v53 setRenderAsShadow:0];
              v54 = [v49 backgroundColor];
              [v53 setBackgroundColor:v54];

              [v53 setNeedsLayout];
              v547 = v53;
            }

LABEL_73:
            if (v18 | v17)
            {
              v55 = v592 ^ 1;
            }

            else
            {
              v55 = 0;
            }

            v543 = v49;
            if (v584 | v49)
            {
              v56 = [v580 borderColor];
              [(UIPanelController *)v602 _setBorderViewsObserveViewBackgroundColor:v56 == 0];

              if (!v30)
              {
LABEL_78:
                v534 = 0;
                goto LABEL_84;
              }
            }

            else
            {
              [(UIPanelController *)v602 _setBorderViewsObserveViewBackgroundColor:0];
              if (!v30)
              {
                goto LABEL_78;
              }
            }

            v57 = v602;
            if ([(UIPanelController *)v602 showShadowViews])
            {
              v58 = [(UIPanelController *)v602 _overlayEdgeShadowView];

              v57 = v602;
              if (!v58)
              {
                v59 = [(UIPanelController *)v602 _createOverlayShadowView];
                v57 = v602;
                [(UIPanelController *)v602 _setOverlayEdgeShadowView:v59];
              }
            }

            v534 = [(UIPanelController *)v57 _overlayEdgeShadowView];
LABEL_84:
            v599 = v28 & v55;
            if ((v28 & v55) != 0)
            {
              v60 = v602;
              if (![(UIPanelController *)v602 isAnimating])
              {
                [v598 supplementaryDragOffset];
                if (v61 == 0.0)
                {
                  v533 = 0;
                  v558 = 0;
                  goto LABEL_98;
                }
              }

              v62 = [(UIPanelController *)v602 _supplementaryParallaxShadowView];

              v63 = v602;
              if (!v62)
              {
                v64 = [(UIPanelController *)v602 _createOverlayShadowView];
                v63 = v602;
                [(UIPanelController *)v602 _setSupplementaryParallaxShadowView:v64];
              }

              v558 = [(UIPanelController *)v63 _supplementaryParallaxShadowView];
              v65 = [(UIPanelController *)v602 _primaryParallaxDimmingView];

              if (!v65)
              {
                v66 = [UIDimmingView alloc];
                if (v18)
                {
                  v67 = v18;
                }

                else
                {
                  v67 = v17;
                }

                [v67 frame];
                v68 = [(UIDimmingView *)v66 initWithFrame:?];
                [(UIPanelController *)v602 _setPrimaryParallaxDimmingView:v68];
              }

              v533 = [(UIPanelController *)v602 _primaryParallaxDimmingView];
            }

            else
            {
              v533 = 0;
              v558 = 0;
            }

            v60 = v602;
LABEL_98:
            if (((v30 | ((*&v60->_panelControllerFlags & 0x20) >> 5)) & 1) == 0 && ([v580 allowTotalWidthGreaterThanParent] & 1) == 0 && (panelControllerFlags = v60->_panelControllerFlags, (*&panelControllerFlags & 0x80) == 0) && ((*&panelControllerFlags & 8) != 0 || -[UIPanelController isAnimating](v60, "isAnimating") || (*&v60->_panelControllerFlags & 0x10) != 0))
            {
              v552 = [(UIPanelController *)v60 leadingBarContentClippingView];
              v551 = [(UIPanelController *)v602 trailingBarContentClippingView];
              v201 = [(UIPanelController *)v602 style];
              v202 = v592 ^ 1;
              if (v201 != 2)
              {
                v202 = 1;
              }

              if (v202)
              {
                v550 = 0;
              }

              else
              {
                v550 = [(UIPanelController *)v602 supplementaryBarContentClippingView];
              }
            }

            else
            {
              v550 = 0;
              v551 = 0;
              v552 = 0;
            }

            goto LABEL_106;
          }

LABEL_72:
          v49 = 0;
          goto LABEL_73;
        }

LABEL_64:
        v547 = 0;
        v584 = 0;
        if (!v17)
        {
          goto LABEL_72;
        }

        goto LABEL_65;
      }

      v34 = [v580 borderColor];
      v35 = v34;
      if (v34)
      {
        v32 = v34;
      }

      else
      {
        v32 = [(UIView *)v602->_view backgroundColor];
      }

      v33 = v602;

      goto LABEL_48;
    }

    v17 = v24;
LABEL_32:
    if ([v598 trailingOverlapsMain])
    {
      v30 = 1;
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v563 = v518;
  v16 = [v563 view];
  v594 = 0;
  v599 = 0;
  v550 = 0;
  v551 = 0;
  v552 = 0;
  v533 = 0;
  v534 = 0;
  v558 = 0;
  v547 = 0;
  v543 = 0;
  v584 = 0;
  r1_16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_106:
  v646 = v16;
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
  v640 = v17;
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
  v76 = v602;
  v77 = r1_8;
  v78 = v584;
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
      v77 = 1;
    }

    else if (r1_16 == r1_8)
    {
      v77 = [v598 supplementaryOverlapsMain];
    }

    else
    {
      v77 = 0;
    }
  }

  if (!v591)
  {
    goto LABEL_123;
  }

  if ([v598 trailingOverlapsMain])
  {
    [v580 allowTotalWidthGreaterThanParent];
    goto LABEL_125;
  }

  if (r1_16 == v591)
  {
    v80 = [v598 supplementaryOverlapsMain];
  }

  else
  {
LABEL_123:
    v80 = 0;
  }

  v81 = [v580 allowTotalWidthGreaterThanParent];
  if (((v77 | v80) & 1) == 0)
  {
    v576 = 0;
    v577 = 0;
    if ((v599 & v81) != 1)
    {
      goto LABEL_133;
    }

    goto LABEL_129;
  }

LABEL_125:
  [(UIPanelController *)v602 _captureView];
  v82 = v76 = v602;
  if (!v82)
  {
    v82 = objc_alloc_init(_UIMTCaptureView);
    [(UIPanelController *)v602 _setMaterialThemesCaptureView:v82];
  }

  v576 = v82;
  [v75 addObject:v82];
LABEL_129:
  v577 = [(UIPanelController *)v76 dimmingView];
  if (v577)
  {
    [v75 addObject:?];
  }

  else
  {
    v577 = 0;
  }

  v78 = v584;
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
    if (v547)
    {
      [v75 addObject:v547];
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

  if (v534 && v577)
  {
    [v75 insertObject:v534 atIndex:{objc_msgSend(v75, "indexOfObject:", v577) + 1}];
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

    if (v547)
    {
      v86 = v547;
    }

    v87 = v86;
    [v87 setRenderAsShadow:1];
  }

  if (r1_8 | v591)
  {
    v88 = v533 != 0;
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

    [v75 insertObject:v533 atIndex:{objc_msgSend(v75, "indexOfObject:", v89) + 1}];
  }

  if (v558)
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

    [v75 insertObject:v558 atIndex:v90];
  }

  v521 = (r1_8 | v591) != 0;
  v93 = [v8 subviews];
  v94 = [v75 array];
  v95 = [v93 isEqualToArray:v94];

  v96 = [0 contentView];
  if (v96)
  {
    v97 = v96;

LABEL_185:
    v98 = [v97 subviews];
    v99 = [v73 array];
    v595 = [v98 isEqualToArray:v99] ^ 1;

    goto LABEL_186;
  }

  v97 = [0 contentView];

  if (v97)
  {
    goto LABEL_185;
  }

  v595 = 0;
LABEL_186:
  if (v95)
  {
    [v8 setNeedsLayout];
  }

  else
  {
    v633 = 0u;
    v634 = 0u;
    v631 = 0u;
    v632 = 0u;
    v100 = [v8 subviews];
    v101 = [v100 countByEnumeratingWithState:&v631 objects:v664 count:16];
    if (v101)
    {
      v102 = *v632;
      do
      {
        for (i = 0; i != v101; ++i)
        {
          if (*v632 != v102)
          {
            objc_enumerationMutation(v100);
          }

          v104 = *(*(&v631 + 1) + 8 * i);
          if (([v75 containsObject:v104] & 1) == 0 && (objc_msgSend(v73, "containsObject:", v104) & 1) == 0)
          {
            [v104 removeFromSuperview];
          }
        }

        v101 = [v100 countByEnumeratingWithState:&v631 objects:v664 count:16];
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

          [v8 insertSubview:*(*(&v627 + 1) + 8 * j) atIndex:v107++];
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
    v110 = [v97 subviews];
    v111 = [v110 countByEnumeratingWithState:&v623 objects:v662 count:16];
    if (v111)
    {
      v112 = *v624;
      do
      {
        for (k = 0; k != v111; ++k)
        {
          if (*v624 != v112)
          {
            objc_enumerationMutation(v110);
          }

          v114 = *(*(&v623 + 1) + 8 * k);
          if (([v75 containsObject:v114] & 1) == 0 && (objc_msgSend(v73, "containsObject:", v114) & 1) == 0)
          {
            [v114 removeFromSuperview];
          }
        }

        v111 = [v110 countByEnumeratingWithState:&v623 objects:v662 count:16];
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

          [v97 insertSubview:*(*(&v619 + 1) + 8 * m) atIndex:v117++];
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
  v618 = v602;
  v611[0] = MEMORY[0x1E69E9820];
  v611[1] = 3221225472;
  v612 = __54__UIPanelController__updateToNewPublicState_withSize___block_invoke_426;
  v613 = &__block_descriptor_40_e37_B24__0__UIView_8__UIViewController_16lu32l8;
  v614 = v615;
  if (__54__UIPanelController__updateToNewPublicState_withSize___block_invoke_426(v611, v552))
  {
    v120 = [(UIPanelController *)v602 leadingBarContentClippingView];
    v121 = [v120 subviews];
    v122 = [v121 count] == 0;

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

    v123 = [(UIPanelController *)v602 leadingBarContentClippingView];
    [v123 removeFromSuperview];
  }

  if ((v612)(v611, v551, v581))
  {
    v124 = [(UIPanelController *)v602 trailingBarContentClippingView];
    v125 = [v124 subviews];
    v126 = [v125 count] == 0;

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

    v127 = [(UIPanelController *)v602 trailingBarContentClippingView];
    [v127 removeFromSuperview];
  }

  if ((v612)(v611, v550, v566))
  {
    v128 = [(UIPanelController *)v602 supplementaryBarContentClippingView];
    v129 = [v128 subviews];
    v130 = [v129 count] == 0;

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

    v131 = [(UIPanelController *)v602 supplementaryBarContentClippingView];
    [v131 removeFromSuperview];
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

    v133 = [(UIPanelController *)v602 leadingViewController];
    [v133 _setOverrideUserInterfaceRenderingMode:v132];

    if ([v598 trailingOverlapsMain])
    {
      v134 = 2;
    }

    else
    {
      v134 = 0;
    }

    v135 = [(UIPanelController *)v602 trailingViewController];
    [v135 _setOverrideUserInterfaceRenderingMode:v134];

    if ([v598 supplementaryOverlapsMain])
    {
      v136 = 2;
    }

    else
    {
      v136 = 0;
    }

    v137 = [(UIPanelController *)v602 supplementaryViewController];
    [v137 _setOverrideUserInterfaceRenderingMode:v136];
  }

  v138 = v602;
  if ((*&v602->_panelControllerFlags & 8) != 0)
  {
    r1 = *MEMORY[0x1E695EFF8];
    rect = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    [v8 bounds];
    r1 = v139;
    rect = v140;
    r1_24 = v141;
    v590 = v142;
    v138 = v602;
  }

  v143 = [(UIPanelController *)v138 view];
  v593 = [v143 _shouldReverseLayoutDirection];

  [v8 _currentScreenScale];
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

    v570 = v547;
    v154 = r1_16;
  }

  else
  {
    v570 = 0;
    v154 = 0;
    v516 = 0;
  }

  v155 = [(UIPanelController *)v602 wantsFloatingSidebar];
  v572 = v577;
  v156 = v598;
  v157 = v155 | dyld_program_sdk_at_least() ^ 1;
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
    if (((r1_8 == 0) | v593) == 1)
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

      v173 = v593 ^ 1;
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
  v178 = [v156 configuration];
  v179 = [v178 allowTotalWidthGreaterThanParent];

  v181 = 1.0;
  if (!(v179 & 1 | !v516))
  {
    goto LABEL_292;
  }

  if ((r1_16 == 0) | v179 & 1)
  {
    v181 = 0.0;
    if (!(r1_8 | v591))
    {
      goto LABEL_292;
    }

    if ((v516 & v179) == 1)
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

    if (v179)
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
    if (v179)
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

  if (v532)
  {
    v212 = 0;
  }

  else
  {
    v212 = v566;
  }

  if (v532)
  {
    v213 = v566;
  }

  else
  {
    v213 = 0;
  }

  if (v582)
  {
    v212 = v582;
  }

  v214 = v212;
  v215 = v581;
  if (!v581)
  {
    v215 = v213;
  }

  v216 = v215;
  v512 = [v580 _supplementaryAdoptsPrimaryBackgroundStyle];
  v217 = v599 ^ 1;
  if (!r1_16)
  {
    v217 = 0;
  }

  v600 = v217;
  v529 = r1_8;
  v553 = v584;
  v218 = v154;
  v578 = v570;
  v541 = v558;
  v571 = v539;
  v556 = v543;
  v531 = v591;
  v219 = v156;
  v513 = v573;
  v574 = v214;
  v560 = v566;
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
    v499 = [MEMORY[0x1E696AAA8] currentHandler];
    v500 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void layoutSideBySideViewsColumnStyle(UIView *__strong, UIView *__strong, UIPanelBorderView *__strong, UIView *__strong, BOOL, UIPanelBorderView *__strong, UIView *__strong, UIView *__strong, UIPanelBorderView *__strong, UIView *__strong, UIView *__strong, BOOL, UISlidingBarState *__strong, BOOL, CGRect, NSMutableSet *__strong, CGFloat, UIViewController *__strong, UIViewController *__strong, UIViewController *__strong, UIViewController *__strong)"}];
    [v499 handleFailureInFunction:v500 file:@"UIPanelController.m" lineNumber:3094 description:{@"Side-by-side layout not supported for all non-nil leading, trailing, and supplementary views. This is an internal UIKit problem."}];
  }

  v221 = [v219 supplementaryOverlapsMain];
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
    v224 = v222 & v221;
    v225 = v574 == 0;
    if (v600 & 1 | (v574 != 0))
    {
      v564 = v222 | v221;
      v226 = v225 | v221;
      v227 = v225 & v221;
    }

    else
    {
      v564 = [v219 trailingOverlapsMain];
      v226 = 1;
      v227 = v564;
    }
  }

  else
  {
    v224 = [v219 leadingOverlapsMain];
    v227 = 0;
    v564 = 1;
    v226 = v224;
  }

  v228 = v553;
  if (!v584)
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
    v230 = [v219 configuration];
    [v230 rubberBandExtension];
    v545 = v231;

    [v219 _rubberBandInset];
    UIRoundToScale(v232, v596);
    v229 = v233;
  }

LABEL_327:
  if (v584)
  {
    v234 = [v219 configuration];
    [v234 leadingBorderWidthForScale:v596];
    v548 = v235;
LABEL_331:

    goto LABEL_332;
  }

  if (v556)
  {
    v234 = [v219 configuration];
    [v234 trailingBorderWidthForScale:v596];
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

  if (v226 & v564)
  {
    v264 = 0;
  }

  else
  {
    v264 = [v219 _supplementaryEntirelyOverlapsMain];
  }

  v265 = 0.0;
  v266 = 0.0;
  if ((v226 & 1) == 0)
  {
    if (v600)
    {
      [v219 supplementaryDragOffset];
      v268 = v267;
      v269 = v264;
      if (v267 == 0.0 && v241 > 0.0)
      {
        [v219 supplementaryWidth];
        if (v270 == 0.0)
        {
          v268 = v241;
        }

        v269 = v264;
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

      v269 = [v219 _leadingEntirelyOverlapsMain];
    }

    v273 = 0.0 - v268;
    if (v269)
    {
      v274 = 0;
    }

    else
    {
      v274 = v224;
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

  if ((v564 & 1) == 0)
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

      v264 = [v219 _trailingEntirelyOverlapsMain];
    }

    v282 = v278 + 0.0;
    if (v264)
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
    if ((v564 & 1) == 0)
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
        if (v584)
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

      if ((v564 & 1) == 0)
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
  if (v593)
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
      if (v564)
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

  if (v564)
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
  v656 = v593 ^ 1;
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
    if (v600 | v512 ^ 1)
    {
      v323 = 0.0;
    }

    v322.n128_f64[0] = -v323;
    if (!v593)
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
        if (!v593)
        {
          v325 = -(v548 + v291);
        }

        v658[3] = v325 + v658[3];
      }

      v326 = [v553 renderAsShadow];
      v650(buf, v553, 0, 0, v548, 0.0, v326);
      v327 = v528;
      if (v558)
      {
        v328 = -1.0;
        if (v593)
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
      v330 = [v578 renderAsShadow];
      v650(buf, v578, 0, 0, v548, 0.0, v330);
    }

    else
    {
      v331 = [v553 renderAsShadow];
      v650(buf, v553, 0, 0, v548, 0.0, v331);
    }
  }

  v650(buf, v571, 0, v555, v298, 0.0, 0.0);
  if ((v564 & 1) == 0)
  {
    if (v512)
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
      v332 = [v578 renderAsShadow];
      v650(buf, v578, 0, 0, v548, 0.0, v332);
      v650(buf, v567, 0, v560, v528, 0.0, 0.0);
    }

    v333 = [v556 renderAsShadow];
    v650(buf, v556, 0, 0, v548, 0.0, v333);
    v335 = v658;
    if (v558)
    {
      v336 = -v548;
      if (v593)
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
      v339 = v593;
      if (!v593)
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
      v339 = v593;
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
  v565 = v534;
  v557 = v541;
  v343 = v320;
  v544 = v319;
  v579 = v574;
  v575 = v537;
  v585 = v560;
  v344 = [v343 supplementaryOverlapsMain];
  v345 = v344;
  if (v600 & 1 | (r1_8 == 0))
  {
    v346 = (r1_8 != 0) & v344;
  }

  else
  {
    v346 = [v343 leadingOverlapsMain];
  }

  v347 = v600;
  if (!v591)
  {
    v347 = 1;
  }

  if (v347)
  {
    v348 = (v591 != 0) & v345;
  }

  else
  {
    v348 = [v343 trailingOverlapsMain];
  }

  v349 = v567 != 0;
  if (!v346)
  {
    if ((v348 & 1) == 0)
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
    if ((v348 & 1) == 0)
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
  if (v348)
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
    v362 = [v343 configuration];
    [v362 rubberBandExtension];
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
  if (!v346)
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
  if (v593)
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
    v393 = [v343 configuration];
    [v393 leadingBorderWidthForScale:v596];
    v395 = v394;

    if (v561 <= 0.0)
    {
      if (v593)
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

    LOBYTE(v396) = v593;
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

    if (v593)
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
    v396 = v593;
    goto LABEL_590;
  }

  v395 = 0.0;
  y = 0.0;
  v396 = v593;
  if (v561 > 0.0)
  {
    goto LABEL_576;
  }

LABEL_590:
  if (v558)
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
    v396 = v593;
    if ((v593 & 1) == 0)
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
      v396 = v593;
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
      if (v593)
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
    if (v593)
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
  if (!v348)
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
  if (v593)
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
    v429 = [v343 configuration];
    [v429 trailingBorderWidthForScale:v596];
    v431 = v430;

    if (v561 <= 0.0)
    {
      if (v593)
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

  if (v593)
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
    if (v593)
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
  if (v558)
  {
    if (v593)
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
    v438 = v593;
    if (!v593)
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

  v438 = v593;
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
      if (v593)
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
    if ((v593 & 1) == 0)
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

  v569 = v533;
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

  layoutPresentationViews(v8, v555, v525);
  layoutPresentationViews(v8, v582, v524);
  layoutPresentationViews(v8, v581, v523);
  layoutPresentationViews(v8, v585, v522);
  [v8 bounds];
  [(UIView *)v576 setFrame:?];
  v457 = [(_UIMTCaptureView *)v576 mt_captureGroupName];
  v458 = [v582 _existingView];
  [v458 mt_setCaptureGroupName:v457];

  v459 = [(_UIMTCaptureView *)v576 mt_captureGroupName];
  v460 = [v581 _existingView];
  [v460 mt_setCaptureGroupName:v459];

  v461 = [(_UIMTCaptureView *)v576 mt_captureGroupName];
  v462 = [v585 _existingView];
  [v462 mt_setCaptureGroupName:v461];

  v601 = [(UIPanelController *)v602 floatingBarButtonItem];
  if ([v601 _isFloatable])
  {
    v463 = (v552 | v551 | v550) != 0;
    if (v463 != [v601 _isFloating])
    {
      [v601 _setFloating:v463];
      v607[0] = MEMORY[0x1E69E9820];
      v607[1] = 3221225472;
      v608 = __54__UIPanelController__updateToNewPublicState_withSize___block_invoke_431;
      v609 = &__block_descriptor_40_e26_v16__0__UIViewController_8lu32l8;
      v610 = v615;
      v464 = v616(v615, v582);
      [v464 _setNeedsStaticNavBarButtonUpdate];

      (__54__UIPanelController__updateToNewPublicState_withSize___block_invoke_431)(v607, v581);
      (v608)(v607, v585);
      (v608)(v607, v555);
    }
  }

  if (v593)
  {
    v465 = v591 != 0;
  }

  else
  {
    v465 = r1_8 != 0;
  }

  layoutClippingView(v552, v601, v465);
  layoutClippingView(v550, v601, v465);
  layoutClippingView(v551, v601, v465);
  v466 = [(UIPanelController *)v602 style];
  if (v532)
  {
    v467 = v575;
  }

  else
  {
    v467 = v579;
  }

  v597 = [(UIPanelController *)v602 navigationBarForContentLayoutGuideAnimation];
  v468 = [v597 window];
  if (v468)
  {
    v469 = [v597 _isAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange];

    if ((v469 & 1) == 0)
    {
      [v597 layoutIfNeeded];
      [v597 _beginAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange];
    }
  }

  v470 = [(UIPanelController *)v602 navigationBarForContentLayoutGuideAnimation];
  v471 = v442;
  v472 = [v471 configuration];
  v473 = [v472 allowTotalWidthGreaterThanParent];

  if ([v471 leadingOverlapsMain] & 1) != 0 || (objc_msgSend(v471, "trailingOverlapsMain"))
  {
    v474 = 1;
  }

  else
  {
    v474 = [v471 supplementaryOverlapsMain];
  }

  v475 = v467 == v585 || v466 == 1;
  v603 = v474;
  v476 = v474 | v473;
  if (v475 && ((v474 | v473) & 1) != 0)
  {
    if (v473)
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

  if ([v470 _isAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange])
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

    else if (v466 == 1)
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

    [v470 _navItemContentLayoutGuideAnimationDistance];
    UIRoundToViewScale(v470);
    v486 = [v470 _updateNavItemContentLayoutGuideAnimationConstraintConstant:?];
    if (v603 & 1 | ((v486 & 1) == 0) | v473 & 1)
    {
      if (!v486)
      {
        goto LABEL_736;
      }
    }

    else
    {
      v487 = [v470 _staticNavBarButtonItem];
      v488 = v487 == 0;

      if (!v488)
      {
LABEL_736:
        [v470 layoutIfNeeded];
        goto LABEL_737;
      }
    }

    [v470 _setNeedsStaticNavBarButtonUpdate];
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

  v7 = v598;
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

- (double)interpolatedMarginForPrimaryNavigationBar:(id)a3 supplementaryOrSecondaryNavbar:(id)a4 getInterpolatedAlpha:(double *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(UIPanelController *)self currentState];
  [v10 supplementaryWidth];
  v12 = v11;
  v13 = v10;
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
  if (v8)
  {
    v31 = [v8 _isContentViewHidden] ^ 1;
    if (v9)
    {
LABEL_9:
      v32 = [v9 _isContentViewHidden];
      v33 = 0.0;
      if (v31)
      {
        v34 = 1.0;
      }

      else
      {
        v34 = 0.0;
      }

      if (v32)
      {
        v35 = v8;
      }

      else
      {
        v33 = 1.0;
        v35 = v9;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v31 = 0;
    if (v9)
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

  v35 = v8;
LABEL_19:
  v36 = 1.0 - v19;
  if (a5)
  {
    v34 = v36 * v34;
    v33 = v34 + v19 * v33;
    *a5 = v33;
  }

  if (v31)
  {
    v37 = v8;
  }

  else
  {
    v37 = v9;
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

- (id)_createOverlayEdgeShadowViewForEdge:(unint64_t)a3
{
  v3 = [[_UIVerticalEdgeShadowView alloc] initWithWidth:a3 edge:9.0];

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

- (void)_setBorderViewsObserveViewBackgroundColor:(BOOL)a3
{
  if (((((*(&self->_panelControllerFlags + 1) & 0x10) == 0) ^ a3) & 1) == 0)
  {
    view = self->_view;
    if (a3)
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

- (void)_updateBorderViewsBackgroundColor:(id)a3
{
  v11 = a3;
  v4 = [(UIPanelController *)self _leadingBorderView];

  if (v4)
  {
    v5 = [(UIPanelController *)self _leadingBorderView];
    [v5 setBackgroundColor:v11];
  }

  v6 = [(UIPanelController *)self _trailingBorderView];

  if (v6)
  {
    v7 = [(UIPanelController *)self _trailingBorderView];
    [v7 setBackgroundColor:v11];
  }

  v8 = [(UIPanelController *)self _supplementaryBorderView];

  v9 = v11;
  if (v8)
  {
    v10 = [(UIPanelController *)self _supplementaryBorderView];
    [v10 setBackgroundColor:v11];

    v9 = v11;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (self->_view == a4 && [a3 isEqualToString:@"backgroundColor"])
  {
    v7 = [(UIView *)self->_view backgroundColor];
    [(UIPanelController *)self _updateBorderViewsBackgroundColor:v7];
  }
}

- (void)_stopAnimationsBeginningInteraction:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIPanelController *)self _internalState];
  v6 = [v5 animationState];
  v50 = [v6 animator];

  v7 = [v50 isRunning];
  [v50 stopAnimation:0];
  [v50 finishAnimationAtPosition:2];
  v8 = [(UIPanelController *)self navigationBarForContentLayoutGuideAnimation];
  v9 = v8;
  if (v8)
  {
    [v8 _endAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange];
    [v9 _setShouldFadeStaticNavBarButton:0];
    [(UIPanelController *)self setNavigationBarForContentLayoutGuideAnimation:0];
  }

  if (v3)
  {
    v10 = [(UIPanelController *)self currentState];
    v11 = [v10 stateRequest];

    v12 = [v11 copy];
    if (v7)
    {
      v13 = [(UIPanelController *)self _internalState];
      v14 = [v13 configuration];

      v49 = v14;
      v15 = [v14 supplementaryEdge];
      v16 = [(UIPanelController *)self view];
      v17 = (v15 == 0) ^ [v16 _shouldReverseLayoutDirection];
      if (v15)
      {
        [(UIPanelController *)self trailingViewController];
      }

      else
      {
        [(UIPanelController *)self leadingViewController];
      }
      v18 = ;
      v19 = [v18 view];

      if (v17)
      {
        MaxX = *MEMORY[0x1E695F058];
        v21 = *(MEMORY[0x1E695F058] + 8);
        v23 = *(MEMORY[0x1E695F058] + 16);
        v22 = *(MEMORY[0x1E695F058] + 24);
      }

      else
      {
        [v16 bounds];
        MaxX = CGRectGetMaxX(v52);
        v22 = 0.0;
        v23 = 0.0;
        v21 = 0.0;
      }

      v24 = [v19 window];

      if (v24)
      {
        [v19 frame];
        MaxX = v25;
        v21 = v26;
        v23 = v27;
        v22 = v28;
      }

      v29 = [(UIPanelController *)self supplementaryViewController];
      v30 = [v29 view];
      [v30 frame];
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
        [v16 bounds];
        v40 = CGRectGetMaxX(v54);
        v41 = MaxX;
        v42 = v40;
        v55.origin.x = v41;
        v55.origin.y = v21;
        v55.size.width = v23;
        v55.size.height = v22;
        v39 = v42 - CGRectGetMinX(v55);
      }

      if (v15)
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
        [v16 bounds];
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

    if (![v12 isEqual:v11] || (objc_msgSend(v12, "leadingWidth"), v46 != 0.0) || (objc_msgSend(v12, "supplementaryWidth"), v47 != 0.0) || (objc_msgSend(v12, "trailingWidth"), v48 != 0.0))
    {
      [(UIPanelController *)self setInteractiveStateRequest:v12];
    }
  }
}

- (CGSize)_expectedSecondaryColumnSizeAfterAnimatingToState:(id)a3 getLeadingColumnSize:(CGSize *)a4 trailingColumnSize:(CGSize *)a5 supplementaryColumnSize:(CGSize *)a6
{
  v9 = a3;
  if (![(UIPanelController *)self style])
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    [v55 handleFailureInMethod:a2 object:self file:@"UIPanelController.m" lineNumber:4890 description:@"Unsupported code path for unspecified-style UISplitViewController"];
  }

  [v9 leadingWidth];
  v11 = v10;
  [v9 trailingWidth];
  v13 = v12;
  [v9 supplementaryWidth];
  v15 = v14;
  if (v11 <= 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v9 leadingOverlapsMain] ^ 1;
  }

  if (v13 <= 0.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = [v9 trailingOverlapsMain] ^ 1;
  }

  if (v15 <= 0.0)
  {
    v18 = 0;
  }

  else
  {
    v18 = [v9 supplementaryOverlapsMain] ^ 1;
  }

  v19 = [v9 configuration];
  v20 = [(UIPanelController *)self _contentView];
  [v20 bounds];
  v22 = v21;
  v23 = [(UIPanelController *)self mainViewController];
  v24 = [v23 view];
  [v24 bounds];
  v59 = v25;
  v60 = v26;

  v27 = [(UIPanelController *)self leadingViewController];
  v28 = [v27 view];
  [v28 bounds];
  v30 = v29;
  v58 = v31;

  v32 = [(UIPanelController *)self trailingViewController];
  v33 = [v32 view];
  [v33 bounds];
  v35 = v34;
  v57 = v36;

  v37 = [(UIPanelController *)self supplementaryViewController];
  v38 = [v37 view];
  [v38 bounds];
  v40 = v39;
  v56 = v41;

  [v20 _currentScreenScale];
  [v19 leadingBorderWidthForScale:?];
  v43 = v42;
  [v9 mainWidth];
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
    [v9 leadingOffscreenWidth];
    v11 = v46;
  }

  if (v13 == 0.0)
  {
    [v9 trailingOffscreenWidth];
    v13 = v47;
  }

  if (v11 > 0.0)
  {
    [v19 rubberBandExtension];
    v30 = v11 + v48;
  }

  if (v13 > 0.0)
  {
    [v19 rubberBandExtension];
    v35 = v13 + v49;
  }

  if (v15 == 0.0)
  {
    [v9 supplementaryOffscreenWidth];
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

  if (a4)
  {
    a4->width = v30;
    a4->height = v58;
  }

  if (a5)
  {
    a5->width = v35;
    a5->height = v57;
  }

  if (a6)
  {
    a6->width = v51;
    a6->height = v56;
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

- (void)_animateFromRequest:(id)a3 toRequest:(id)a4 withAffectedSides:(int64_t)a5 forceOverlay:(BOOL)a6 velocity:(double)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v12 && v13)
  {
    v15 = [(UIPanelController *)self _internalState];
    v16 = [v15 animationState];

    if (v16)
    {
      v17 = [(UIPanelController *)self _internalState];
      v18 = [v17 animationState];
      v19 = [v18 toRequest];
      v20 = [v19 isEqual:v14];

      if (v20)
      {
        goto LABEL_25;
      }

      v21 = [(UIPanelController *)self _internalState];
      v22 = [v21 animationState];
      v23 = [v22 animator];
      [v23 stopAnimation:1];
    }

    v24 = [(UIPanelController *)self currentState];
    v25 = [v24 _interactiveStateRequest];
    v26 = [v14 isEqual:v25];

    if (v26)
    {
      v27 = [(UIPanelController *)self _internalState];
      [v27 setStateRequest:v14];

      v28 = [(UIPanelController *)self _internalState];
      v29 = [v28 animationState];

      if (!v29)
      {
        v30 = [(UIPanelController *)self navigationBarForContentLayoutGuideAnimation];
        [v30 _endAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange];

        [(UIPanelController *)self setNavigationBarForContentLayoutGuideAnimation:0];
      }
    }

    else
    {
      v75 = [(UIPanelController *)self delegate];
      v31 = [(UIPanelController *)self view];
      v32 = [(UIPanelController *)self _internalState];
      v33 = [v32 copy];

      [v31 bounds];
      v74 = v31;
      v36 = [v33 computePossibleStatesGivenParentView:v31 withSize:v8 forceOverlay:{v34, v35}];
      v73 = v33;
      v37 = [v33 _stateForInteractiveRequest:v14 withAffectedSides:a5 inPossibleStates:v36];
      +[_UIPanelAnimationState defaultDuration];
      v39 = v38;
      v40 = objc_alloc_init(_UIPanelAnimationState);
      [(_UIPanelAnimationState *)v40 setToRequest:v14];
      [(_UIPanelAnimationState *)v40 setFromRequest:v12];
      [(_UIPanelAnimationState *)v40 setAffectedSides:a5];
      v71 = [(UIPanelController *)self style];
      [(_UIPanelAnimationState *)v40 setShouldAssignOffscreenWidthsToStateRequest:v71 != 0];
      [(_UIPanelAnimationState *)v40 setAnimatorShouldCoordinate:[(UIPanelController *)self animationRequestShouldCoordinate]];
      [(UIPanelController *)self setAnimationRequestShouldCoordinate:0];
      v41 = [(UIPanelController *)self _internalState];
      [v41 setAnimationState:v40];

      v72 = v36;
      if (![(UIPanelController *)self _animateCustomTransitionIfNeededWithAnimationState:v40 possiblePublicStates:v36 newPublicState:v37 estimatedDuration:v16 == 0 needsInitialLayout:*&v39])
      {
        v70 = [(UIPanelController *)self navigationBarForContentLayoutGuideAnimation];
        objc_initWeak(location, self);
        objc_initWeak(&from, v40);
        v42 = [_UIPanelCoordinatingAnimator alloc];
        v43 = [_UIPanelAnimationState timingCurveProviderWithVelocity:a7];
        v44 = [(UIViewPropertyAnimator *)v42 initWithDuration:v43 timingParameters:*&v39];
        [(_UIPanelAnimationState *)v40 setAnimator:v44];

        v45 = [(_UIPanelAnimationState *)v40 animator];
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __91__UIPanelController__animateFromRequest_toRequest_withAffectedSides_forceOverlay_velocity___block_invoke;
        v92[3] = &unk_1E71039E0;
        objc_copyWeak(&v95, location);
        objc_copyWeak(v96, &from);
        v97 = v71 != 0;
        v46 = v14;
        v93 = v46;
        v47 = v37;
        v94 = v47;
        v96[1] = v39;
        [v45 addAnimations:v92];
        v69 = v47;

        v48 = [(_UIPanelAnimationState *)v40 animator];
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __91__UIPanelController__animateFromRequest_toRequest_withAffectedSides_forceOverlay_velocity___block_invoke_3;
        v88[3] = &unk_1E7103A08;
        objc_copyWeak(&v91, location);
        v89 = v46;
        v49 = v70;
        v90 = v49;
        [v48 addCompletion:v88];

        v50 = [(UIPanelController *)self configuration];
        v51 = v49;
        [v49 _setShouldFadeStaticNavBarButton:{objc_msgSend(v50, "shouldFadeStaticNavBarButton")}];

        if (v16)
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
          v87 = v71 != 0;
          v84 = v40;
          v85 = self;
          v86 = v49;
          [UIView performWithoutAnimation:v83];
        }

        v52 = [(UIPanelController *)self _contentView];
        v53 = [(_UIPanelAnimationState *)v40 animator];
        [v53 setContainerView:v52];

        if (v71)
        {
          if ([(_UIPanelAnimationState *)v40 animatorShouldCoordinate])
          {
            v54 = [(UIPanelController *)self delegate];
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
              v64 = [(UIPanelController *)self delegate];
              v65 = v64;
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

              [v64 panelController:self willBeginAnimationToPrimarySize:v67 supplementarySize:v66 secondarySize:{v76, v77, v57, v59}];
            }
          }
        }

        v68 = [(_UIPanelAnimationState *)v40 animator];
        [v68 startAnimation];

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

- (BOOL)_animateCustomTransitionIfNeededWithAnimationState:(id)a3 possiblePublicStates:(id)a4 newPublicState:(id)a5 estimatedDuration:(double)a6 needsInitialLayout:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(UIPanelController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(UIPanelController *)self delegate];
    v18 = [v12 toRequest];
    v19 = [v17 panelController:self willBeginAnimatedTransitionToStateRequest:v18 predictedEndState:v14 predictedDuration:a6];

    if (v19)
    {
      v20 = [(_UIViewControllerTransitionContext *)_UIViewControllerOneToOneTransitionContext _associatedTransitionContextForAnimationController:v19];

      if (!v20)
      {
        v69 = v7;
        v21 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
        [(_UIViewControllerTransitionContext *)v21 _setIsAnimated:+[UIView areAnimationsEnabled]];
        v22 = [(UIPanelController *)self _contentView];
        [(_UIViewControllerTransitionContext *)v21 _setContainerView:v22];

        [(_UIViewControllerTransitionContext *)v21 _setAnimator:v19];
        [(_UIViewControllerTransitionContext *)v21 _setDuration:a6];
        [(_UIViewControllerOneToOneTransitionContext *)v21 _setFromView:0];
        [(_UIViewControllerOneToOneTransitionContext *)v21 _setFromViewController:0];
        v23 = [(UIPanelController *)self _internalState];
        v24 = [v23 leadingViewController];
        v25 = [v24 view];
        [(_UIViewControllerOneToOneTransitionContext *)v21 _setToView:v25];

        v26 = [(UIPanelController *)self _internalState];
        v27 = [v26 leadingViewController];
        v71 = v21;
        [(_UIViewControllerOneToOneTransitionContext *)v21 _setToViewController:v27];

        v28 = [(UIPanelController *)self view];
        v29 = [v12 fromRequest];
        v70 = [v12 toRequest];
        v30 = [(UIPanelController *)self _internalState];
        v31 = [v30 copy];

        v32 = [v12 affectedSides];
        v33 = [(UIPanelController *)self possibleStates];
        v34 = [v31 _stateForInteractiveRequest:v29 withAffectedSides:v32 inPossibleStates:v33];

        [v29 leadingWidth];
        v36 = v35;
        v68 = v29;
        [v29 leadingOffscreenWidth];
        if (v36 < v37)
        {
          v36 = v37;
        }

        v67 = v34;
        [v34 leadingDragOffset];
        v39 = v38;
        [v28 _currentScreenScale];
        UIRoundToScale(v39, v40);
        v42 = v41;
        v72 = v28;
        [v28 bounds];
        Height = CGRectGetHeight(v84);
        v44 = [(UIPanelController *)self view];
        v45 = [v44 _shouldReverseLayoutDirection];

        if (v45)
        {
          v46 = [(UIPanelController *)self view];
          [v46 bounds];
          v49 = v47 + v48 - (v36 - v42);
        }

        else
        {
          v49 = -v42;
        }

        v51 = 0.0;
        [(_UIViewControllerOneToOneTransitionContext *)v71 _setToStartFrame:v49, 0.0, v36, Height];
        [v70 leadingWidth];
        v53 = v52;
        [v70 leadingOffscreenWidth];
        if (v53 < v54)
        {
          v53 = v54;
        }

        [v14 leadingDragOffset];
        v56 = v55;
        [v28 _currentScreenScale];
        UIRoundToScale(v56, v57);
        v59 = v58;
        [v28 bounds];
        v60 = CGRectGetHeight(v85);
        if (v45)
        {
          v61 = [(UIPanelController *)self view];
          [v61 bounds];
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
        v62 = v70;
        v78 = v62;
        v79 = v14;
        v63 = v31;
        v80 = v63;
        v81 = v13;
        [(_UIViewControllerTransitionContext *)v71 _setCompletionHandler:v77];
        if (v69)
        {
          v64 = [(UIPanelController *)self navigationBarForContentLayoutGuideAnimation];
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __145__UIPanelController__animateCustomTransitionIfNeededWithAnimationState_possiblePublicStates_newPublicState_estimatedDuration_needsInitialLayout___block_invoke_2;
          v73[3] = &unk_1E70F6228;
          v74 = v12;
          v75 = self;
          v65 = v64;
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
  v3 = [(UIPanelController *)self _internalState];
  v4 = [v3 animationState];
  if ([v4 animatorShouldCoordinate])
  {
    v5 = [(UIPanelController *)self _internalState];
    v6 = [v5 animationState];
    v7 = [v6 animator];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isLeadingViewControllerVisibleAfterAnimation
{
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 animationState];
  v4 = [v3 toRequest];
  [v4 leadingWidth];
  v6 = v5 > 0.0;

  return v6;
}

- (BOOL)isTrailingViewControllerVisibleAfterAnimation
{
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 animationState];
  v4 = [v3 toRequest];
  [v4 trailingWidth];
  v6 = v5 > 0.0;

  return v6;
}

- (BOOL)isSupplementaryViewControllerVisibleAfterAnimation
{
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 animationState];
  v4 = [v3 toRequest];
  [v4 supplementaryWidth];
  v6 = v5 > 0.0;

  return v6;
}

- (void)animateToRequest:(id)a3 forceOverlay:(BOOL)a4 withVelocity:(double)a5
{
  v6 = a4;
  v29 = a3;
  v8 = [(UIPanelController *)self interactiveStateRequest];
  [(UIPanelController *)self setInteractiveStateRequest:0];
  v9 = v8;
  v10 = v9;
  if (!v9)
  {
    v11 = [(UIPanelController *)self currentState];
    v10 = [v11 stateRequest];
    if ([v29 isEqual:v10])
    {
      v12 = [(UIPanelController *)self delegate];
      v13 = [v12 primaryEdge];

      if (v13)
      {
        [v11 trailingDragOffset];
        v15 = v14;
        [v11 supplementaryDragOffset];
        v17 = v15 + v16;
        if (v17 > 0.0)
        {
          [v10 trailingWidth];
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

          [v10 supplementaryWidth];
          if (v26 < v28)
          {
            v25 = v28 - v26;
          }

          if (v13)
          {
            [v10 setTrailingWidth:v27];
          }

          else
          {
            [v10 setLeadingWidth:v27];
          }

          [v10 setSupplementaryWidth:v25];
        }
      }

      else
      {
        [v11 leadingDragOffset];
        v20 = v19;
        [v11 supplementaryDragOffset];
        v17 = v20 + v21;
        if (v17 > 0.0)
        {
          [v10 leadingWidth];
          goto LABEL_8;
        }
      }
    }
  }

  [(UIPanelController *)self _animateFromRequest:v10 toRequest:v29 withAffectedSides:0 forceOverlay:v6 velocity:a5];
}

- (UISlidingBarStateRequest)interactiveStateRequest
{
  v2 = [(UIPanelController *)self _internalState];
  v3 = [v2 interactiveStateRequest];

  return v3;
}

- (void)setInteractiveStateRequest:(id)a3
{
  v4 = a3;
  v5 = [(UIPanelController *)self _internalState];
  [v5 setInteractiveStateRequest:v4];

  [(UIPanelController *)self _setNeedsLayoutAndPerformImmediately:0];
}

- (NSArray)uncachedPossibleStates
{
  v3 = [(UIPanelController *)self view];
  v4 = [(UIPanelController *)self _internalState];
  [v3 bounds];
  v7 = [v4 computePossibleStatesGivenParentView:v3 withSize:{v5, v6}];

  return v7;
}

- (id)uncachedPossibleStatesForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIPanelController *)self _internalState];
  v7 = [(UIPanelController *)self view];
  v8 = [v6 computePossibleStatesGivenParentView:v7 withSize:{width, height}];

  return v8;
}

- (void)_observeKeyboardNotificationsOnScreen:(id)a3
{
  v4 = a3;
  if (v4 && (*(&self->_panelControllerFlags + 1) & 8) == 0)
  {
    v6 = v4;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__adjustForKeyboardInfo_ name:@"UIKeyboardPrivateWillShowNotification" object:v6];
    [v5 addObserver:self selector:sel__adjustForKeyboardInfo_ name:@"UIKeyboardPrivateWillHideNotification" object:v6];
    [v5 addObserver:self selector:sel__adjustForKeyboardInfo_ name:@"UIKeyboardPrivateDidChangeFrameNotification" object:v6];
    *&self->_panelControllerFlags |= 0x800u;

    v4 = v6;
  }
}

- (void)_stopObservingKeyboardNotifications
{
  if ((*(&self->_panelControllerFlags + 1) & 8) != 0)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:@"UIKeyboardPrivateWillShowNotification" object:0];
    [v4 removeObserver:self name:@"UIKeyboardPrivateWillHideNotification" object:0];
    [v4 removeObserver:self name:@"UIKeyboardPrivateDidChangeFrameNotification" object:0];
    *&self->_panelControllerFlags &= ~0x800u;
  }
}

- (void)_adjustForKeyboardInfo:(id)a3
{
  v4 = a3;
  if (self->_view && ![(UIPanelController *)self isCollapsed])
  {
    if (![(UIPanelController *)self supportsColumnStyle])
    {
      v5 = [(UIPanelController *)self owningViewController];
      v6 = [(UIViewController *)v5 _keyboardSceneDelegate];
      view = self->_view;
      v8 = [v4 userInfo];
      [v6 verticalOverlapForView:view usingKeyboardInfo:v8];
      v10 = v9;

      v11 = [(UIPanelController *)self _internalState];
      [v11 keyboardAdjustment];
      v13 = v12;

      if (v13 != v10)
      {
        v14 = [(UIPanelController *)self owningViewController];
        v15 = findTransitioningChildNavigationController(v14);

        if (v15)
        {
          v16 = [v15 transitionCoordinator];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __44__UIPanelController__adjustForKeyboardInfo___block_invoke;
          v29[3] = &unk_1E70F3B98;
          v29[4] = self;
          [v16 animateAlongsideTransition:0 completion:v29];
        }

        else
        {
          v17 = [(UIPanelController *)self _internalState];
          [v17 setKeyboardAdjustment:v10];

          v18 = [(UIPanelController *)self currentState];
          v19 = [v18 leadingOverlapsMain];

          if (v19)
          {
            [(UIPanelController *)self _setNeedsDeferredUpdate];
          }
        }
      }
    }

    v20 = [(UIPanelController *)self currentState];
    v21 = [v20 leadingOverlapsMain];

    if ((v21 & 1) == 0)
    {
      v22 = [v4 name];
      if ([v22 isEqualToString:@"UIKeyboardPrivateWillShowNotification"])
      {

LABEL_14:
        v25 = [v4 userInfo];
        [(UIPanelController *)self _adjustNonOverlayLeadingScrollViewsForKeyboardInfo:v25];

        [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__adjustNonOverlayLeadingScrollViewsForKeyboardInfo_ object:0];
        goto LABEL_15;
      }

      v23 = [v4 name];
      v24 = [v23 isEqualToString:@"UIKeyboardPrivateDidChangeFrameNotification"];

      if (v24)
      {
        goto LABEL_14;
      }

      v26 = [v4 name];
      v27 = [v26 isEqualToString:@"UIKeyboardPrivateWillHideNotification"];

      if (v27)
      {
        v28 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695DA28]];
        [(UIPanelController *)self performSelector:sel__adjustNonOverlayLeadingScrollViewsForKeyboardInfo_ withObject:0 afterDelay:v28 inModes:0.0];
      }
    }
  }

LABEL_15:
}

- (void)_adjustNonOverlayLeadingScrollViewsForKeyboardInfo:(id)a3
{
  v7 = a3;
  v4 = [(UIPanelController *)self delegate];
  v5 = [(UIPanelController *)self leadingViewController];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 panelController:self adjustLeadingViewController:v5 forKeyboardInfo:v7];
  }

  v6 = [(UIPanelController *)self trailingViewController];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 panelController:self adjustTrailingViewController:v6 forKeyboardInfo:v7];
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