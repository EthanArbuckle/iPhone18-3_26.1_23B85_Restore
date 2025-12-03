@interface SBHModalLibraryPresenter
- (BOOL)_dismissLibraryIfNecessaryForTranslation:(double)translation velocity:(double)velocity;
- (BOOL)_isPanGestureQuantityTowardDismissalDirection:(double)direction;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isLibraryContainedInForeground;
- (BOOL)isPresentingLibrary;
- (BOOL)isPresentingLibraryInMostForegroundState:(id)state;
- (SBHLibraryIconViewController)libraryIconViewController;
- (SBHModalLibraryPresentationDelegate)presentationDelegate;
- (SBHModalLibraryPresenter)initWithContainerViewController:(id)controller libraryViewController:(id)viewController;
- (SBHModalLibraryPresenterContextProviding)contextProvider;
- (SBHSearchBar)searchBar;
- (SBIconListView)iconListView;
- (SBIconView)libraryPodIconView;
- (UIScrollView)podScrollView;
- (UIView)containerView;
- (UIView)libraryView;
- (UIView)sourceContainerView;
- (UIViewController)containerViewController;
- (UIViewController)overrideContainerViewController;
- (id)acquireOrderPresentationSourceContainerViewBeforeLibraryViewAssertionForReason:(id)reason;
- (id)acquireUseSnapshotAsBackgroundViewAssertionForReason:(id)reason;
- (id)animatorForTransition:(id)transition;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_fireDismissCompletionsWithResult:(BOOL)result;
- (void)_firePresentCompletionWithResult:(BOOL)result;
- (void)_handlePanGestureRecognizerUpdated:(id)updated;
- (void)_updateBackgroundViewSnapshotted;
- (void)_updateLibraryTranslation:(double)translation withVelocity:(double)velocity animated:(BOOL)animated;
- (void)addObserver:(id)observer;
- (void)dismissLibraryWithTransition:(unint64_t)transition animated:(BOOL)animated completion:(id)completion;
- (void)noteWillAnimateToEndpoint:(int64_t)endpoint withAnimationDuration:(double)duration;
- (void)prepareTransition:(id)transition;
- (void)presentLibraryWithAnimation:(BOOL)animation completion:(id)completion;
- (void)setOverrideContainerViewController:(id)controller;
- (void)toggleLibraryPresentedInForegroundWithAnimation:(BOOL)animation completion:(id)completion;
- (void)transitionDidProgressToEndState:(id)state;
- (void)transitionDidReturnToBeginningState:(id)state;
- (void)transitionWillProgressToEndState:(id)state;
- (void)transitionWillReturnToBeginningState:(id)state;
@end

@implementation SBHModalLibraryPresenter

- (SBHModalLibraryPresenter)initWithContainerViewController:(id)controller libraryViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v19.receiver = self;
  v19.super_class = SBHModalLibraryPresenter;
  v8 = [(SBHModalLibraryPresenter *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_containerViewController, controllerCopy);
    objc_storeStrong(&v9->_libraryViewController, viewController);
    v10 = objc_alloc_init(SBHViewControllerTransition);
    transition = v9->_transition;
    v9->_transition = v10;

    v9->_preferredTransitionStyle = 0;
    v12 = +[SBHHomeScreenDomain rootSettings];
    appLibrarySettings = [v12 appLibrarySettings];
    librarySettings = v9->_librarySettings;
    v9->_librarySettings = appLibrarySettings;

    v9->_targetingPresentingLibrary = 0x7FFFFFFFFFFFFFFFLL;
    [(SBHViewControllerTransition *)v9->_transition setDelegate:v9];
    v15 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v9 action:sel__handlePanGestureRecognizerUpdated_];
    [(UIPanGestureRecognizer *)v15 setAllowedScrollTypesMask:3];
    [(UIPanGestureRecognizer *)v15 _setCanPanVertically:0];
    [(UIPanGestureRecognizer *)v15 setDelegate:v9];
    view = [viewControllerCopy view];
    [view addGestureRecognizer:v15];

    dismissPanGestureRecognizer = v9->_dismissPanGestureRecognizer;
    v9->_dismissPanGestureRecognizer = v15;
  }

  return v9;
}

- (UIViewController)overrideContainerViewController
{
  libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
  parentViewController = [libraryViewController parentViewController];

  containerViewController = [(SBHModalLibraryPresenter *)self containerViewController];
  if (parentViewController == containerViewController)
  {
    v6 = 0;
  }

  else
  {
    v6 = parentViewController;
  }

  v7 = v6;

  return v6;
}

- (void)setOverrideContainerViewController:(id)controller
{
  controllerCopy = controller;
  containerViewController = [(SBHModalLibraryPresenter *)self containerViewController];
  if (controllerCopy)
  {
    v5 = controllerCopy;
  }

  else
  {
    v5 = containerViewController;
  }

  v6 = v5;
  libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
  parentViewController = [libraryViewController parentViewController];
  view = [libraryViewController view];
  view2 = [v6 view];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v6 containerViewForModalLibraryPresenter:self];

    view2 = v11;
  }

  backgroundView = [(SBHModalLibraryPresenter *)self backgroundView];
  if (v6 == parentViewController)
  {
    if (v6 == containerViewController)
    {
      [view2 bringSubviewToFront:view];
      subviews = [view2 subviews];
      v23 = [subviews indexOfObject:backgroundView];
      if (v23 != [subviews indexOfObject:view] - 1)
      {
        [view2 insertSubview:backgroundView belowSubview:view];
      }
    }

    else
    {
      [view2 sendSubviewToBack:backgroundView];
      subviews = [view2 subviews];
      v22 = [subviews indexOfObject:backgroundView];
      if (v22 != [subviews indexOfObject:view] - 1)
      {
        [view2 insertSubview:view aboveSubview:backgroundView];
      }
    }
  }

  else
  {
    [v6 addChildViewController:libraryViewController];
    [view2 addSubview:view];
    [view2 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [view setFrame:?];
    [libraryViewController didMoveToParentViewController:v6];
    [view2 insertSubview:backgroundView belowSubview:view];
    [backgroundView setFrame:{v14, v16, v18, v20}];
    [view layoutIfNeeded];
  }
}

- (BOOL)isPresentingLibrary
{
  if (self->_targetingPresentingLibrary == 0x7FFFFFFFFFFFFFFFLL)
  {
    transition = [(SBHModalLibraryPresenter *)self transition];
    v4 = [transition targetEndpoint] == 1;

    return v4;
  }

  else
  {
    targetingPresentingLibrary = self->_targetingPresentingLibrary;

    return MEMORY[0x1EEDF0330](targetingPresentingLibrary, a2);
  }
}

- (BOOL)isLibraryContainedInForeground
{
  contextProvider = [(SBHModalLibraryPresenter *)self contextProvider];
  v4 = contextProvider;
  if (contextProvider)
  {
    v5 = [contextProvider isDefaultContainerForegroundForPresenter:self] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  overrideContainerViewController = [(SBHModalLibraryPresenter *)self overrideContainerViewController];

  if (overrideContainerViewController)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 ^ 1;
  if (overrideContainerViewController)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (void)presentLibraryWithAnimation:(BOOL)animation completion:(id)completion
{
  animationCopy = animation;
  completionCopy = completion;
  [(SBHModalLibraryPresenter *)self _fireDismissCompletionsWithResult:0];
  if (completionCopy)
  {
    transition = [(SBHModalLibraryPresenter *)self transition];
    if ([transition isTransitioning])
    {
    }

    else
    {
      isPresentingLibrary = [(SBHModalLibraryPresenter *)self isPresentingLibrary];

      if (isPresentingLibrary)
      {
        completionCopy[2](completionCopy, 1);
        goto LABEL_9;
      }
    }

    didPresentCompletions = self->_didPresentCompletions;
    v9 = completionCopy;
    if (!didPresentCompletions)
    {
      array = [MEMORY[0x1E695DF70] array];
      v11 = self->_didPresentCompletions;
      self->_didPresentCompletions = array;

      v9 = completionCopy;
      didPresentCompletions = self->_didPresentCompletions;
    }

    v12 = [v9 copy];
    v13 = _Block_copy(v12);
    [(NSMutableArray *)didPresentCompletions addObject:v13];
  }

LABEL_9:
  [(SBHModalLibraryPresenter *)self setPreferredTransitionStyle:0];
  transition2 = [(SBHModalLibraryPresenter *)self transition];
  [transition2 progressToEndStateWithAnimation:animationCopy];
}

- (void)dismissLibraryWithTransition:(unint64_t)transition animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(SBHModalLibraryPresenter *)self _firePresentCompletionWithResult:0];
  if (completionCopy)
  {
    transition = [(SBHModalLibraryPresenter *)self transition];
    if ([transition isTransitioning])
    {
    }

    else
    {
      isPresentingLibrary = [(SBHModalLibraryPresenter *)self isPresentingLibrary];

      if (!isPresentingLibrary)
      {
        completionCopy[2](completionCopy, 1);
        goto LABEL_9;
      }
    }

    didDismissCompletions = self->_didDismissCompletions;
    v11 = completionCopy;
    if (!didDismissCompletions)
    {
      array = [MEMORY[0x1E695DF70] array];
      v13 = self->_didDismissCompletions;
      self->_didDismissCompletions = array;

      v11 = completionCopy;
      didDismissCompletions = self->_didDismissCompletions;
    }

    v14 = [v11 copy];
    v15 = _Block_copy(v14);
    [(NSMutableArray *)didDismissCompletions addObject:v15];
  }

LABEL_9:
  [(SBHModalLibraryPresenter *)self setPreferredTransitionStyle:transition];
  transition2 = [(SBHModalLibraryPresenter *)self transition];
  [transition2 returnToBeginningStateWithAnimation:animatedCopy];
}

- (void)toggleLibraryPresentedInForegroundWithAnimation:(BOOL)animation completion:(id)completion
{
  animationCopy = animation;
  completionCopy = completion;
  if ([(SBHModalLibraryPresenter *)self isPresentingLibrary])
  {
    if ([(SBHModalLibraryPresenter *)self isLibraryContainedInForeground])
    {
      [(SBHModalLibraryPresenter *)self dismissLibraryWithAnimation:animationCopy completion:completionCopy];
      goto LABEL_6;
    }

    [(SBHModalLibraryPresenter *)self dismissLibraryWithAnimation:0 completion:0];
  }

  [(SBHModalLibraryPresenter *)self presentLibraryWithAnimation:animationCopy completion:completionCopy];
LABEL_6:
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (BOOL)isPresentingLibraryInMostForegroundState:(id)state
{
  isPresentingLibrary = [(SBHModalLibraryPresenter *)self isPresentingLibrary];
  if (isPresentingLibrary)
  {

    LOBYTE(isPresentingLibrary) = [(SBHModalLibraryPresenter *)self isLibraryContainedInForeground];
  }

  return isPresentingLibrary;
}

- (id)acquireUseSnapshotAsBackgroundViewAssertionForReason:(id)reason
{
  reasonCopy = reason;
  reasonsToSnapshotBackgroundView = self->_reasonsToSnapshotBackgroundView;
  if (!reasonsToSnapshotBackgroundView)
  {
    v6 = [MEMORY[0x1E696AB50] set];
    v7 = self->_reasonsToSnapshotBackgroundView;
    self->_reasonsToSnapshotBackgroundView = v6;

    reasonsToSnapshotBackgroundView = self->_reasonsToSnapshotBackgroundView;
  }

  v8 = reasonsToSnapshotBackgroundView;
  [(NSCountedSet *)v8 addObject:reasonCopy];
  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x1E698E778]);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __81__SBHModalLibraryPresenter_acquireUseSnapshotAsBackgroundViewAssertionForReason___block_invoke;
  v17 = &unk_1E808BC70;
  v10 = v8;
  v18 = v10;
  v11 = reasonCopy;
  v19 = v11;
  objc_copyWeak(&v20, &location);
  v12 = [v9 initWithIdentifier:@"SBHModalLibraryPresenter" forReason:v11 invalidationBlock:&v14];
  [(SBHModalLibraryPresenter *)self _updateBackgroundViewSnapshotted:v14];
  objc_destroyWeak(&v20);

  objc_destroyWeak(&location);

  return v12;
}

void __81__SBHModalLibraryPresenter_acquireUseSnapshotAsBackgroundViewAssertionForReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateBackgroundViewSnapshotted];
}

- (void)_updateBackgroundViewSnapshotted
{
  transition = [(SBHModalLibraryPresenter *)self transition];
  v4 = ([transition isTransitioning] & 1) == 0 && -[SBHModalLibraryPresenter isPresentingLibrary](self, "isPresentingLibrary") && -[NSCountedSet count](self->_reasonsToSnapshotBackgroundView, "count") != 0;

  isContentReplacedWithSnapshot = [(MTMaterialView *)self->_backgroundView isContentReplacedWithSnapshot];
  if (!v4 || (isContentReplacedWithSnapshot & 1) != 0)
  {
    if (!v4 && (isContentReplacedWithSnapshot & 1) != 0)
    {
      v7 = SBLogLibrary();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_INFO, "[SBHModalLibraryPresenter] Returning background to live blur", v8, 2u);
      }

      [(MTMaterialView *)self->_backgroundView setContentReplacedWithSnapshot:0];
      [(MTMaterialView *)self->_backgroundView layoutIfNeeded];
    }
  }

  else
  {
    v6 = SBLogLibrary();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "[SBHModalLibraryPresenter] Replacing background with snapshot", buf, 2u);
    }

    [(MTMaterialView *)self->_backgroundView setContentReplacedWithSnapshot:1];
  }
}

- (UIView)containerView
{
  iconListView = [(SBHModalLibraryPresenter *)self iconListView];
  superview = [iconListView superview];

  return superview;
}

- (UIView)libraryView
{
  libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
  view = [libraryViewController view];

  return view;
}

- (SBHSearchBar)searchBar
{
  libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
  containerViewController = [libraryViewController containerViewController];
  searchBar = [containerViewController searchBar];

  return searchBar;
}

- (UIScrollView)podScrollView
{
  libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
  folderController = [libraryViewController folderController];
  contentScrollView = [folderController contentScrollView];

  return contentScrollView;
}

- (SBIconListView)iconListView
{
  libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
  folderController = [libraryViewController folderController];
  iconListViews = [folderController iconListViews];
  firstObject = [iconListViews firstObject];

  return firstObject;
}

- (UIView)sourceContainerView
{
  contextProvider = [(SBHModalLibraryPresenter *)self contextProvider];
  v4 = [contextProvider sourceContainerViewForPresenter:self];

  return v4;
}

- (SBIconView)libraryPodIconView
{
  contextProvider = [(SBHModalLibraryPresenter *)self contextProvider];
  v4 = [contextProvider libraryIconViewForPresenter:self];

  return v4;
}

- (SBHLibraryIconViewController)libraryIconViewController
{
  contextProvider = [(SBHModalLibraryPresenter *)self contextProvider];
  v4 = [contextProvider libraryIconViewControllerForPresenter:self];

  return v4;
}

- (id)acquireOrderPresentationSourceContainerViewBeforeLibraryViewAssertionForReason:(id)reason
{
  reasonCopy = reason;
  contextProvider = [(SBHModalLibraryPresenter *)self contextProvider];
  v6 = [contextProvider acquireOrderSourceContainerViewBeforeLibraryViewAssertionForReason:reasonCopy];

  return v6;
}

- (void)noteWillAnimateToEndpoint:(int64_t)endpoint withAnimationDuration:(double)duration
{
  v30 = *MEMORY[0x1E69E9840];
  if (endpoint)
  {
    [(NSTimer *)self->_criticalDismissalNotifyTimer invalidate];
    criticalDismissalNotifyTimer = self->_criticalDismissalNotifyTimer;
    self->_criticalDismissalNotifyTimer = 0;
  }

  else
  {
    [(SBHAppLibrarySettings *)self->_librarySettings criticalDismissalThresholdDurationFactor];
    v8 = v7 * duration;
    if (BSFloatIsZero())
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      allObjects = [(NSHashTable *)self->_observers allObjects];
      v10 = [allObjects countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = *v26;
        do
        {
          v12 = 0;
          do
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(allObjects);
            }

            v13 = *(*(&v25 + 1) + 8 * v12);
            libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
            [v13 modalLibraryPresenter:self didPassCriticalDismissalPoint:libraryViewController];

            ++v12;
          }

          while (v10 != v12);
          v10 = [allObjects countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v10);
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v15 = MEMORY[0x1E695DFF0];
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __76__SBHModalLibraryPresenter_noteWillAnimateToEndpoint_withAnimationDuration___block_invoke;
      v22 = &unk_1E808BC98;
      objc_copyWeak(&v23, &location);
      v16 = [v15 timerWithTimeInterval:0 repeats:&v19 block:v8];
      v17 = self->_criticalDismissalNotifyTimer;
      self->_criticalDismissalNotifyTimer = v16;

      [(NSTimer *)self->_criticalDismissalNotifyTimer setTolerance:v8 * 0.15, v19, v20, v21, v22];
      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      [currentRunLoop addTimer:self->_criticalDismissalNotifyTimer forMode:*MEMORY[0x1E695DA28]];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }
}

void __76__SBHModalLibraryPresenter_noteWillAnimateToEndpoint_withAnimationDuration___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [*(WeakRetained + 1) allObjects];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          v9 = [v2 libraryViewController];
          [v8 modalLibraryPresenter:v2 didPassCriticalDismissalPoint:v9];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v10 = v2[8];
    v2[8] = 0;
  }
}

- (void)prepareTransition:(id)transition
{
  v4 = MEMORY[0x1E6979518];
  transitionCopy = transition;
  [v4 setFrameStallSkipRequest:1];
  [transitionCopy setUserInfo:self];

  libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
  backgroundView = [(SBHModalLibraryPresenter *)self backgroundView];
  if (!backgroundView)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v9 = @"homeScreenOverlayLibrary-iPad";
    }

    else
    {
      v9 = @"homeScreenOverlay";
    }

    v10 = MEMORY[0x1E69AE158];
    v11 = v9;
    v12 = SBHBundle();
    backgroundView = [v10 materialViewWithRecipeNamed:v11 inBundle:v12 options:0 initialWeighting:0 scaleAdjustment:0.0];

    [backgroundView setAutoresizingMask:18];
    v13 = SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice();
    [backgroundView setBackdropScaleAdjustment:v13];

    [backgroundView setGroupNameBase:@"Modal-App-Library"];
    layer = [backgroundView layer];
    [layer setContentsOpaque:1];
    v15 = objc_opt_class();
    v16 = layer;
    if (v15)
    {
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    [v18 setPreallocatesScreenArea:1];
    [(SBHModalLibraryPresenter *)self setBackgroundView:backgroundView];
    [libraryViewController setExternalBackgroundView:backgroundView];
  }

  view = [libraryViewController view];
  [view setAutoresizingMask:18];
  contextProvider = [(SBHModalLibraryPresenter *)self contextProvider];
  if ([contextProvider isDefaultContainerForegroundForPresenter:self])
  {
    v21 = 0;
  }

  else
  {
    v21 = [contextProvider containerViewControllerForPresentingInForeground:self];
  }

  [(SBHModalLibraryPresenter *)self setOverrideContainerViewController:v21];
  [view setHidden:0];
  [backgroundView setHidden:0];
  [view layoutIfNeeded];
  [libraryViewController setContentVisibility:0];
}

- (id)animatorForTransition:(id)transition
{
  preferredTransitionStyle = [(SBHModalLibraryPresenter *)self preferredTransitionStyle];
  if (preferredTransitionStyle == 2)
  {
    v8 = SBHLibraryFadeAnimator;
    goto LABEL_9;
  }

  if (preferredTransitionStyle == 1)
  {
    v8 = SBHLibraryZoomAnimator;
LABEL_9:
    v4 = objc_alloc_init(v8);
    goto LABEL_12;
  }

  if (preferredTransitionStyle)
  {
    goto LABEL_12;
  }

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  if (IsReduceMotionEnabled || ([(SBHModalLibraryPresenter *)self libraryViewController], v3 = objc_claimAutoreleasedReturnValue(), ![SBHLibraryZoomAnimator validateWithLibrary:v3 context:self]))
  {
    v4 = objc_alloc_init(SBHLibraryFadeAnimator);
    if (IsReduceMotionEnabled)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = objc_alloc_init(SBHLibraryZoomAnimator);
  }

LABEL_12:

  return v4;
}

- (void)transitionWillProgressToEndState:(id)state
{
  v18 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  self->_targetingPresentingLibrary = 1;
  libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
  [(SBHModalLibraryPresenter *)self _updateLibraryTranslation:1 withVelocity:0.0 animated:0.0];
  [libraryViewController bs_beginAppearanceTransition:1 animated:{objc_msgSend(stateCopy, "wantsAnimation")}];
  libraryView = [(SBHModalLibraryPresenter *)self libraryView];
  [libraryView bs_setHitTestingDisabled:0];

  backgroundView = [(SBHModalLibraryPresenter *)self backgroundView];
  [backgroundView bs_setHitTestingDisabled:0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v13 + 1) + 8 * v12++) modalLibraryPresenter:self willPresentLibrary:libraryViewController];
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [(SBHModalLibraryPresenter *)self _updateBackgroundViewSnapshotted];
  self->_targetingPresentingLibrary = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)transitionDidProgressToEndState:(id)state
{
  v17 = *MEMORY[0x1E69E9840];
  libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
  [libraryViewController bs_endAppearanceTransition];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v12 + 1) + 8 * v9++) modalLibraryPresenter:self didPresentLibrary:libraryViewController];
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (!self->_librarySearchPrewarmAssertion)
  {
    v10 = [libraryViewController acquireLibrarySearchPrewarmAssertionForReason:@"SBHModalLibraryPresenter"];
    librarySearchPrewarmAssertion = self->_librarySearchPrewarmAssertion;
    self->_librarySearchPrewarmAssertion = v10;
  }

  [(SBHModalLibraryPresenter *)self _firePresentCompletionWithResult:1];
  [(SBHModalLibraryPresenter *)self _updateBackgroundViewSnapshotted];
}

- (void)transitionWillReturnToBeginningState:(id)state
{
  v18 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  self->_targetingPresentingLibrary = 0;
  libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
  [libraryViewController bs_beginAppearanceTransition:0 animated:{objc_msgSend(stateCopy, "wantsAnimation")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v13 + 1) + 8 * v10++) modalLibraryPresenter:self willDismissLibrary:libraryViewController];
      }

      while (v8 != v10);
      v8 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  libraryView = [(SBHModalLibraryPresenter *)self libraryView];
  [libraryView endEditing:0];
  [libraryView bs_setHitTestingDisabled:1];
  backgroundView = [(SBHModalLibraryPresenter *)self backgroundView];
  [backgroundView bs_setHitTestingDisabled:1];

  [(SBHModalLibraryPresenter *)self _updateBackgroundViewSnapshotted];
  self->_targetingPresentingLibrary = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)transitionDidReturnToBeginningState:(id)state
{
  v20 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
  [stateCopy setUserInfo:0];
  [(SBHModalLibraryPresenter *)self _updateLibraryTranslation:0 withVelocity:0.0 animated:0.0];
  view = [libraryViewController view];
  [view setHidden:1];

  [libraryViewController _dismissExpandedPods:0 completion:0];
  backgroundView = [(SBHModalLibraryPresenter *)self backgroundView];
  [backgroundView setHidden:1];

  [libraryViewController bs_endAppearanceTransition];
  [libraryViewController setContentVisibility:2];
  [(BSInvalidatable *)self->_librarySearchPrewarmAssertion invalidate];
  librarySearchPrewarmAssertion = self->_librarySearchPrewarmAssertion;
  self->_librarySearchPrewarmAssertion = 0;

  v9 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:libraryViewController];
  [v9 setNeedsFocusUpdate];

  [(SBHModalLibraryPresenter *)self _updateBackgroundViewSnapshotted];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v11 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v15 + 1) + 8 * v14++) modalLibraryPresenter:self didDismissLibrary:libraryViewController];
      }

      while (v12 != v14);
      v12 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  [(SBHModalLibraryPresenter *)self _fireDismissCompletionsWithResult:1];
}

- (void)_fireDismissCompletionsWithResult:(BOOL)result
{
  didDismissCompletions = self->_didDismissCompletions;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SBHModalLibraryPresenter__fireDismissCompletionsWithResult___block_invoke;
  v6[3] = &__block_descriptor_33_e22_v32__0___v__B_8Q16_B24l;
  resultCopy = result;
  [(NSMutableArray *)didDismissCompletions enumerateObjectsUsingBlock:v6];
  v5 = self->_didDismissCompletions;
  self->_didDismissCompletions = 0;
}

- (void)_firePresentCompletionWithResult:(BOOL)result
{
  didPresentCompletions = self->_didPresentCompletions;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SBHModalLibraryPresenter__firePresentCompletionWithResult___block_invoke;
  v6[3] = &__block_descriptor_33_e22_v32__0___v__B_8Q16_B24l;
  resultCopy = result;
  [(NSMutableArray *)didPresentCompletions enumerateObjectsUsingBlock:v6];
  v5 = self->_didPresentCompletions;
  self->_didPresentCompletions = 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  presentationDelegate = [(SBHModalLibraryPresenter *)self presentationDelegate];
  v5 = presentationDelegate;
  if (presentationDelegate && [presentationDelegate modalLibraryPresenterShouldAllowSwipeToDismissGesture:self])
  {
    libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
    isPresentingFolder = [libraryViewController isPresentingFolder];

    v8 = isPresentingFolder ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)_handlePanGestureRecognizerUpdated:(id)updated
{
  updatedCopy = updated;
  state = [updatedCopy state];
  if ((state - 3) < 3)
  {
    view = [updatedCopy view];
    [updatedCopy velocityInView:view];
    v7 = v6;

    view2 = [updatedCopy view];
    [updatedCopy translationInView:view2];
    v10 = v9;

    v11 = 0.0;
    if (state == 3 && [(SBHModalLibraryPresenter *)self _dismissLibraryIfNecessaryForTranslation:v10 velocity:v7])
    {
      userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
      libraryView = [(SBHModalLibraryPresenter *)self libraryView];
      [libraryView frame];
      if (userInterfaceLayoutDirection == 1)
      {
        v11 = -v14;
      }

      else
      {
        v11 = v14;
      }
    }

    selfCopy2 = self;
    v16 = v11;
    v17 = v7 * 0.0625;
    v18 = 1;
LABEL_19:
    [(SBHModalLibraryPresenter *)selfCopy2 _updateLibraryTranslation:v18 withVelocity:v16 animated:v17];
    goto LABEL_20;
  }

  if (state == 2)
  {
    view3 = [updatedCopy view];
    [updatedCopy translationInView:view3];
    v22 = v21;

    if (![(SBHModalLibraryPresenter *)self _isPanGestureQuantityTowardDismissalDirection:v22])
    {
      BSUIConstrainValueWithRubberBand();
      if (v22 >= 0.0)
      {
        v22 = v23;
      }

      else
      {
        v22 = -v23;
      }
    }

    v17 = 0.0;
    selfCopy2 = self;
    v16 = v22;
    v18 = 0;
    goto LABEL_19;
  }

  if (state == 1)
  {
    libraryViewController = [(SBHModalLibraryPresenter *)self libraryViewController];
    if ([libraryViewController isPresentingSearch])
    {
      [libraryViewController dismissSearch];
    }
  }

LABEL_20:
}

- (BOOL)_isPanGestureQuantityTowardDismissalDirection:(double)direction
{
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    return direction < 0.0;
  }

  else
  {
    return direction > 0.0;
  }
}

- (void)_updateLibraryTranslation:(double)translation withVelocity:(double)velocity animated:(BOOL)animated
{
  animatedCopy = animated;
  libraryView = [(SBHModalLibraryPresenter *)self libraryView];
  [libraryView frame];
  if (v10 != translation || v9 != 0.0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__SBHModalLibraryPresenter__updateLibraryTranslation_withVelocity_animated___block_invoke;
    aBlock[3] = &unk_1E808BCE0;
    v11 = libraryView;
    v18 = v11;
    translationCopy = translation;
    v20 = 0;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (animatedCopy)
    {
      [v11 frame];
      v15 = translation - v14;
      if (BSFloatIsZero())
      {
        v16 = 0.0;
      }

      else
      {
        v16 = velocity / v15;
      }

      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v13 usingSpringWithDamping:0 initialSpringVelocity:0.67 options:0.0 animations:1.0 completion:v16];
    }

    else
    {
      (*(v12 + 2))(v12);
    }
  }
}

uint64_t __76__SBHModalLibraryPresenter__updateLibraryTranslation_withVelocity_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 setFrame:{v2, v3}];
}

- (BOOL)_dismissLibraryIfNecessaryForTranslation:(double)translation velocity:(double)velocity
{
  libraryView = [(SBHModalLibraryPresenter *)self libraryView];
  if (![(SBHModalLibraryPresenter *)self _isPanGestureQuantityTowardDismissalDirection:translation])
  {
    if (![(SBHModalLibraryPresenter *)self _isPanGestureQuantityTowardDismissalDirection:velocity])
    {
      goto LABEL_13;
    }

    [(SBHAppLibrarySettings *)self->_librarySettings minimumVelocityForSwipeToDismiss];
LABEL_7:
    if (fabs(velocity) > v13)
    {
      goto LABEL_11;
    }

LABEL_13:
    v18 = 0;
    goto LABEL_16;
  }

  v8 = fabs(translation);
  [libraryView frame];
  v10 = v9;
  [(SBHAppLibrarySettings *)self->_librarySettings minimumTranslationFractionForSwipeToDismiss];
  v12 = v10 * v11;
  if ([(SBHModalLibraryPresenter *)self _isPanGestureQuantityTowardDismissalDirection:velocity])
  {
    [(SBHAppLibrarySettings *)self->_librarySettings minimumVelocityForSwipeToDismiss];
    if (v8 > v12)
    {
      BSFloatIsZero();
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v8 <= v12 || (BSFloatIsZero() & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  layer = [libraryView layer];
  presentationLayer = [layer presentationLayer];
  v16 = presentationLayer;
  if (presentationLayer)
  {
    layer2 = presentationLayer;
  }

  else
  {
    layer2 = [libraryView layer];
  }

  v19 = layer2;

  [libraryView frame];
  [v19 frame];
  [libraryView setFrame:?];
  v18 = 1;
  [(SBHModalLibraryPresenter *)self setShouldUseTranslatingAnimationBehavior:1];
  [(SBHModalLibraryPresenter *)self dismissLibraryWithAnimation:1 completion:0];
  [(SBHModalLibraryPresenter *)self setShouldUseTranslatingAnimationBehavior:0];

LABEL_16:
  return v18;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHModalLibraryPresenter *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHModalLibraryPresenter *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBHModalLibraryPresenter *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__SBHModalLibraryPresenter_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E8088F18;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __66__SBHModalLibraryPresenter_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isPresentingLibrary"), @"isPresentingLibrary"}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isLibraryContainedInForeground"), @"isLibraryContainedInForeground"}];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) overrideContainerViewController];
  v6 = [v4 appendObject:v5 withName:@"overrideContainerViewController" skipIfNil:1];

  v7 = *(a1 + 32);
  v8 = [*(*(a1 + 40) + 32) allObjects];
  [v7 appendArraySection:v8 withName:@"reasonsToSnapshotBackgroundView" skipIfEmpty:1];

  v9 = *(a1 + 32);
  v11 = [*(a1 + 40) transition];
  v10 = [v9 appendObject:v11 withName:@"transition"];
}

- (SBHModalLibraryPresenterContextProviding)contextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_contextProvider);

  return WeakRetained;
}

- (SBHModalLibraryPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (UIViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

@end