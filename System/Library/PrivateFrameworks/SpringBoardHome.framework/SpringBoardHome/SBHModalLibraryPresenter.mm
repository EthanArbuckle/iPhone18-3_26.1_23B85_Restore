@interface SBHModalLibraryPresenter
- (BOOL)_dismissLibraryIfNecessaryForTranslation:(double)a3 velocity:(double)a4;
- (BOOL)_isPanGestureQuantityTowardDismissalDirection:(double)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isLibraryContainedInForeground;
- (BOOL)isPresentingLibrary;
- (BOOL)isPresentingLibraryInMostForegroundState:(id)a3;
- (SBHLibraryIconViewController)libraryIconViewController;
- (SBHModalLibraryPresentationDelegate)presentationDelegate;
- (SBHModalLibraryPresenter)initWithContainerViewController:(id)a3 libraryViewController:(id)a4;
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
- (id)acquireOrderPresentationSourceContainerViewBeforeLibraryViewAssertionForReason:(id)a3;
- (id)acquireUseSnapshotAsBackgroundViewAssertionForReason:(id)a3;
- (id)animatorForTransition:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_fireDismissCompletionsWithResult:(BOOL)a3;
- (void)_firePresentCompletionWithResult:(BOOL)a3;
- (void)_handlePanGestureRecognizerUpdated:(id)a3;
- (void)_updateBackgroundViewSnapshotted;
- (void)_updateLibraryTranslation:(double)a3 withVelocity:(double)a4 animated:(BOOL)a5;
- (void)addObserver:(id)a3;
- (void)dismissLibraryWithTransition:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)noteWillAnimateToEndpoint:(int64_t)a3 withAnimationDuration:(double)a4;
- (void)prepareTransition:(id)a3;
- (void)presentLibraryWithAnimation:(BOOL)a3 completion:(id)a4;
- (void)setOverrideContainerViewController:(id)a3;
- (void)toggleLibraryPresentedInForegroundWithAnimation:(BOOL)a3 completion:(id)a4;
- (void)transitionDidProgressToEndState:(id)a3;
- (void)transitionDidReturnToBeginningState:(id)a3;
- (void)transitionWillProgressToEndState:(id)a3;
- (void)transitionWillReturnToBeginningState:(id)a3;
@end

@implementation SBHModalLibraryPresenter

- (SBHModalLibraryPresenter)initWithContainerViewController:(id)a3 libraryViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SBHModalLibraryPresenter;
  v8 = [(SBHModalLibraryPresenter *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_containerViewController, v6);
    objc_storeStrong(&v9->_libraryViewController, a4);
    v10 = objc_alloc_init(SBHViewControllerTransition);
    transition = v9->_transition;
    v9->_transition = v10;

    v9->_preferredTransitionStyle = 0;
    v12 = +[SBHHomeScreenDomain rootSettings];
    v13 = [v12 appLibrarySettings];
    librarySettings = v9->_librarySettings;
    v9->_librarySettings = v13;

    v9->_targetingPresentingLibrary = 0x7FFFFFFFFFFFFFFFLL;
    [(SBHViewControllerTransition *)v9->_transition setDelegate:v9];
    v15 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v9 action:sel__handlePanGestureRecognizerUpdated_];
    [(UIPanGestureRecognizer *)v15 setAllowedScrollTypesMask:3];
    [(UIPanGestureRecognizer *)v15 _setCanPanVertically:0];
    [(UIPanGestureRecognizer *)v15 setDelegate:v9];
    v16 = [v7 view];
    [v16 addGestureRecognizer:v15];

    dismissPanGestureRecognizer = v9->_dismissPanGestureRecognizer;
    v9->_dismissPanGestureRecognizer = v15;
  }

  return v9;
}

- (UIViewController)overrideContainerViewController
{
  v3 = [(SBHModalLibraryPresenter *)self libraryViewController];
  v4 = [v3 parentViewController];

  v5 = [(SBHModalLibraryPresenter *)self containerViewController];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

- (void)setOverrideContainerViewController:(id)a3
{
  v24 = a3;
  v4 = [(SBHModalLibraryPresenter *)self containerViewController];
  if (v24)
  {
    v5 = v24;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = [(SBHModalLibraryPresenter *)self libraryViewController];
  v8 = [v7 parentViewController];
  v9 = [v7 view];
  v10 = [v6 view];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v6 containerViewForModalLibraryPresenter:self];

    v10 = v11;
  }

  v12 = [(SBHModalLibraryPresenter *)self backgroundView];
  if (v6 == v8)
  {
    if (v6 == v4)
    {
      [v10 bringSubviewToFront:v9];
      v21 = [v10 subviews];
      v23 = [v21 indexOfObject:v12];
      if (v23 != [v21 indexOfObject:v9] - 1)
      {
        [v10 insertSubview:v12 belowSubview:v9];
      }
    }

    else
    {
      [v10 sendSubviewToBack:v12];
      v21 = [v10 subviews];
      v22 = [v21 indexOfObject:v12];
      if (v22 != [v21 indexOfObject:v9] - 1)
      {
        [v10 insertSubview:v9 aboveSubview:v12];
      }
    }
  }

  else
  {
    [v6 addChildViewController:v7];
    [v10 addSubview:v9];
    [v10 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v9 setFrame:?];
    [v7 didMoveToParentViewController:v6];
    [v10 insertSubview:v12 belowSubview:v9];
    [v12 setFrame:{v14, v16, v18, v20}];
    [v9 layoutIfNeeded];
  }
}

- (BOOL)isPresentingLibrary
{
  if (self->_targetingPresentingLibrary == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [(SBHModalLibraryPresenter *)self transition];
    v4 = [v3 targetEndpoint] == 1;

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
  v3 = [(SBHModalLibraryPresenter *)self contextProvider];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isDefaultContainerForegroundForPresenter:self] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v6 = [(SBHModalLibraryPresenter *)self overrideContainerViewController];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 ^ 1;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (void)presentLibraryWithAnimation:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v15 = a4;
  [(SBHModalLibraryPresenter *)self _fireDismissCompletionsWithResult:0];
  if (v15)
  {
    v6 = [(SBHModalLibraryPresenter *)self transition];
    if ([v6 isTransitioning])
    {
    }

    else
    {
      v7 = [(SBHModalLibraryPresenter *)self isPresentingLibrary];

      if (v7)
      {
        v15[2](v15, 1);
        goto LABEL_9;
      }
    }

    didPresentCompletions = self->_didPresentCompletions;
    v9 = v15;
    if (!didPresentCompletions)
    {
      v10 = [MEMORY[0x1E695DF70] array];
      v11 = self->_didPresentCompletions;
      self->_didPresentCompletions = v10;

      v9 = v15;
      didPresentCompletions = self->_didPresentCompletions;
    }

    v12 = [v9 copy];
    v13 = _Block_copy(v12);
    [(NSMutableArray *)didPresentCompletions addObject:v13];
  }

LABEL_9:
  [(SBHModalLibraryPresenter *)self setPreferredTransitionStyle:0];
  v14 = [(SBHModalLibraryPresenter *)self transition];
  [v14 progressToEndStateWithAnimation:v4];
}

- (void)dismissLibraryWithTransition:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v17 = a5;
  [(SBHModalLibraryPresenter *)self _firePresentCompletionWithResult:0];
  if (v17)
  {
    v8 = [(SBHModalLibraryPresenter *)self transition];
    if ([v8 isTransitioning])
    {
    }

    else
    {
      v9 = [(SBHModalLibraryPresenter *)self isPresentingLibrary];

      if (!v9)
      {
        v17[2](v17, 1);
        goto LABEL_9;
      }
    }

    didDismissCompletions = self->_didDismissCompletions;
    v11 = v17;
    if (!didDismissCompletions)
    {
      v12 = [MEMORY[0x1E695DF70] array];
      v13 = self->_didDismissCompletions;
      self->_didDismissCompletions = v12;

      v11 = v17;
      didDismissCompletions = self->_didDismissCompletions;
    }

    v14 = [v11 copy];
    v15 = _Block_copy(v14);
    [(NSMutableArray *)didDismissCompletions addObject:v15];
  }

LABEL_9:
  [(SBHModalLibraryPresenter *)self setPreferredTransitionStyle:a3];
  v16 = [(SBHModalLibraryPresenter *)self transition];
  [v16 returnToBeginningStateWithAnimation:v5];
}

- (void)toggleLibraryPresentedInForegroundWithAnimation:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(SBHModalLibraryPresenter *)self isPresentingLibrary])
  {
    if ([(SBHModalLibraryPresenter *)self isLibraryContainedInForeground])
    {
      [(SBHModalLibraryPresenter *)self dismissLibraryWithAnimation:v4 completion:v6];
      goto LABEL_6;
    }

    [(SBHModalLibraryPresenter *)self dismissLibraryWithAnimation:0 completion:0];
  }

  [(SBHModalLibraryPresenter *)self presentLibraryWithAnimation:v4 completion:v6];
LABEL_6:
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (BOOL)isPresentingLibraryInMostForegroundState:(id)a3
{
  v4 = [(SBHModalLibraryPresenter *)self isPresentingLibrary];
  if (v4)
  {

    LOBYTE(v4) = [(SBHModalLibraryPresenter *)self isLibraryContainedInForeground];
  }

  return v4;
}

- (id)acquireUseSnapshotAsBackgroundViewAssertionForReason:(id)a3
{
  v4 = a3;
  reasonsToSnapshotBackgroundView = self->_reasonsToSnapshotBackgroundView;
  if (!reasonsToSnapshotBackgroundView)
  {
    v6 = [MEMORY[0x1E696AB50] set];
    v7 = self->_reasonsToSnapshotBackgroundView;
    self->_reasonsToSnapshotBackgroundView = v6;

    reasonsToSnapshotBackgroundView = self->_reasonsToSnapshotBackgroundView;
  }

  v8 = reasonsToSnapshotBackgroundView;
  [(NSCountedSet *)v8 addObject:v4];
  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x1E698E778]);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __81__SBHModalLibraryPresenter_acquireUseSnapshotAsBackgroundViewAssertionForReason___block_invoke;
  v17 = &unk_1E808BC70;
  v10 = v8;
  v18 = v10;
  v11 = v4;
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
  v3 = [(SBHModalLibraryPresenter *)self transition];
  v4 = ([v3 isTransitioning] & 1) == 0 && -[SBHModalLibraryPresenter isPresentingLibrary](self, "isPresentingLibrary") && -[NSCountedSet count](self->_reasonsToSnapshotBackgroundView, "count") != 0;

  v5 = [(MTMaterialView *)self->_backgroundView isContentReplacedWithSnapshot];
  if (!v4 || (v5 & 1) != 0)
  {
    if (!v4 && (v5 & 1) != 0)
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
  v2 = [(SBHModalLibraryPresenter *)self iconListView];
  v3 = [v2 superview];

  return v3;
}

- (UIView)libraryView
{
  v2 = [(SBHModalLibraryPresenter *)self libraryViewController];
  v3 = [v2 view];

  return v3;
}

- (SBHSearchBar)searchBar
{
  v2 = [(SBHModalLibraryPresenter *)self libraryViewController];
  v3 = [v2 containerViewController];
  v4 = [v3 searchBar];

  return v4;
}

- (UIScrollView)podScrollView
{
  v2 = [(SBHModalLibraryPresenter *)self libraryViewController];
  v3 = [v2 folderController];
  v4 = [v3 contentScrollView];

  return v4;
}

- (SBIconListView)iconListView
{
  v2 = [(SBHModalLibraryPresenter *)self libraryViewController];
  v3 = [v2 folderController];
  v4 = [v3 iconListViews];
  v5 = [v4 firstObject];

  return v5;
}

- (UIView)sourceContainerView
{
  v3 = [(SBHModalLibraryPresenter *)self contextProvider];
  v4 = [v3 sourceContainerViewForPresenter:self];

  return v4;
}

- (SBIconView)libraryPodIconView
{
  v3 = [(SBHModalLibraryPresenter *)self contextProvider];
  v4 = [v3 libraryIconViewForPresenter:self];

  return v4;
}

- (SBHLibraryIconViewController)libraryIconViewController
{
  v3 = [(SBHModalLibraryPresenter *)self contextProvider];
  v4 = [v3 libraryIconViewControllerForPresenter:self];

  return v4;
}

- (id)acquireOrderPresentationSourceContainerViewBeforeLibraryViewAssertionForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBHModalLibraryPresenter *)self contextProvider];
  v6 = [v5 acquireOrderSourceContainerViewBeforeLibraryViewAssertionForReason:v4];

  return v6;
}

- (void)noteWillAnimateToEndpoint:(int64_t)a3 withAnimationDuration:(double)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [(NSTimer *)self->_criticalDismissalNotifyTimer invalidate];
    criticalDismissalNotifyTimer = self->_criticalDismissalNotifyTimer;
    self->_criticalDismissalNotifyTimer = 0;
  }

  else
  {
    [(SBHAppLibrarySettings *)self->_librarySettings criticalDismissalThresholdDurationFactor];
    v8 = v7 * a4;
    if (BSFloatIsZero())
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = [(NSHashTable *)self->_observers allObjects];
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v25 + 1) + 8 * v12);
            v14 = [(SBHModalLibraryPresenter *)self libraryViewController];
            [v13 modalLibraryPresenter:self didPassCriticalDismissalPoint:v14];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
      v18 = [MEMORY[0x1E695DFD0] currentRunLoop];
      [v18 addTimer:self->_criticalDismissalNotifyTimer forMode:*MEMORY[0x1E695DA28]];

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

- (void)prepareTransition:(id)a3
{
  v4 = MEMORY[0x1E6979518];
  v5 = a3;
  [v4 setFrameStallSkipRequest:1];
  [v5 setUserInfo:self];

  v22 = [(SBHModalLibraryPresenter *)self libraryViewController];
  v6 = [(SBHModalLibraryPresenter *)self backgroundView];
  if (!v6)
  {
    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
    v6 = [v10 materialViewWithRecipeNamed:v11 inBundle:v12 options:0 initialWeighting:0 scaleAdjustment:0.0];

    [v6 setAutoresizingMask:18];
    v13 = SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice();
    [v6 setBackdropScaleAdjustment:v13];

    [v6 setGroupNameBase:@"Modal-App-Library"];
    v14 = [v6 layer];
    [v14 setContentsOpaque:1];
    v15 = objc_opt_class();
    v16 = v14;
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
    [(SBHModalLibraryPresenter *)self setBackgroundView:v6];
    [v22 setExternalBackgroundView:v6];
  }

  v19 = [v22 view];
  [v19 setAutoresizingMask:18];
  v20 = [(SBHModalLibraryPresenter *)self contextProvider];
  if ([v20 isDefaultContainerForegroundForPresenter:self])
  {
    v21 = 0;
  }

  else
  {
    v21 = [v20 containerViewControllerForPresentingInForeground:self];
  }

  [(SBHModalLibraryPresenter *)self setOverrideContainerViewController:v21];
  [v19 setHidden:0];
  [v6 setHidden:0];
  [v19 layoutIfNeeded];
  [v22 setContentVisibility:0];
}

- (id)animatorForTransition:(id)a3
{
  v6 = [(SBHModalLibraryPresenter *)self preferredTransitionStyle];
  if (v6 == 2)
  {
    v8 = SBHLibraryFadeAnimator;
    goto LABEL_9;
  }

  if (v6 == 1)
  {
    v8 = SBHLibraryZoomAnimator;
LABEL_9:
    v4 = objc_alloc_init(v8);
    goto LABEL_12;
  }

  if (v6)
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

- (void)transitionWillProgressToEndState:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_targetingPresentingLibrary = 1;
  v5 = [(SBHModalLibraryPresenter *)self libraryViewController];
  [(SBHModalLibraryPresenter *)self _updateLibraryTranslation:1 withVelocity:0.0 animated:0.0];
  [v5 bs_beginAppearanceTransition:1 animated:{objc_msgSend(v4, "wantsAnimation")}];
  v6 = [(SBHModalLibraryPresenter *)self libraryView];
  [v6 bs_setHitTestingDisabled:0];

  v7 = [(SBHModalLibraryPresenter *)self backgroundView];
  [v7 bs_setHitTestingDisabled:0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(NSHashTable *)self->_observers allObjects];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) modalLibraryPresenter:self willPresentLibrary:v5];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [(SBHModalLibraryPresenter *)self _updateBackgroundViewSnapshotted];
  self->_targetingPresentingLibrary = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)transitionDidProgressToEndState:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(SBHModalLibraryPresenter *)self libraryViewController];
  [v4 bs_endAppearanceTransition];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSHashTable *)self->_observers allObjects];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9++) modalLibraryPresenter:self didPresentLibrary:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (!self->_librarySearchPrewarmAssertion)
  {
    v10 = [v4 acquireLibrarySearchPrewarmAssertionForReason:@"SBHModalLibraryPresenter"];
    librarySearchPrewarmAssertion = self->_librarySearchPrewarmAssertion;
    self->_librarySearchPrewarmAssertion = v10;
  }

  [(SBHModalLibraryPresenter *)self _firePresentCompletionWithResult:1];
  [(SBHModalLibraryPresenter *)self _updateBackgroundViewSnapshotted];
}

- (void)transitionWillReturnToBeginningState:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_targetingPresentingLibrary = 0;
  v5 = [(SBHModalLibraryPresenter *)self libraryViewController];
  [v5 bs_beginAppearanceTransition:0 animated:{objc_msgSend(v4, "wantsAnimation")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSHashTable *)self->_observers allObjects];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * v10++) modalLibraryPresenter:self willDismissLibrary:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [(SBHModalLibraryPresenter *)self libraryView];
  [v11 endEditing:0];
  [v11 bs_setHitTestingDisabled:1];
  v12 = [(SBHModalLibraryPresenter *)self backgroundView];
  [v12 bs_setHitTestingDisabled:1];

  [(SBHModalLibraryPresenter *)self _updateBackgroundViewSnapshotted];
  self->_targetingPresentingLibrary = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)transitionDidReturnToBeginningState:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHModalLibraryPresenter *)self libraryViewController];
  [v4 setUserInfo:0];
  [(SBHModalLibraryPresenter *)self _updateLibraryTranslation:0 withVelocity:0.0 animated:0.0];
  v6 = [v5 view];
  [v6 setHidden:1];

  [v5 _dismissExpandedPods:0 completion:0];
  v7 = [(SBHModalLibraryPresenter *)self backgroundView];
  [v7 setHidden:1];

  [v5 bs_endAppearanceTransition];
  [v5 setContentVisibility:2];
  [(BSInvalidatable *)self->_librarySearchPrewarmAssertion invalidate];
  librarySearchPrewarmAssertion = self->_librarySearchPrewarmAssertion;
  self->_librarySearchPrewarmAssertion = 0;

  v9 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:v5];
  [v9 setNeedsFocusUpdate];

  [(SBHModalLibraryPresenter *)self _updateBackgroundViewSnapshotted];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(NSHashTable *)self->_observers allObjects];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) modalLibraryPresenter:self didDismissLibrary:v5];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  [(SBHModalLibraryPresenter *)self _fireDismissCompletionsWithResult:1];
}

- (void)_fireDismissCompletionsWithResult:(BOOL)a3
{
  didDismissCompletions = self->_didDismissCompletions;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SBHModalLibraryPresenter__fireDismissCompletionsWithResult___block_invoke;
  v6[3] = &__block_descriptor_33_e22_v32__0___v__B_8Q16_B24l;
  v7 = a3;
  [(NSMutableArray *)didDismissCompletions enumerateObjectsUsingBlock:v6];
  v5 = self->_didDismissCompletions;
  self->_didDismissCompletions = 0;
}

- (void)_firePresentCompletionWithResult:(BOOL)a3
{
  didPresentCompletions = self->_didPresentCompletions;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SBHModalLibraryPresenter__firePresentCompletionWithResult___block_invoke;
  v6[3] = &__block_descriptor_33_e22_v32__0___v__B_8Q16_B24l;
  v7 = a3;
  [(NSMutableArray *)didPresentCompletions enumerateObjectsUsingBlock:v6];
  v5 = self->_didPresentCompletions;
  self->_didPresentCompletions = 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [(SBHModalLibraryPresenter *)self presentationDelegate];
  v5 = v4;
  if (v4 && [v4 modalLibraryPresenterShouldAllowSwipeToDismissGesture:self])
  {
    v6 = [(SBHModalLibraryPresenter *)self libraryViewController];
    v7 = [v6 isPresentingFolder];

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)_handlePanGestureRecognizerUpdated:(id)a3
{
  v24 = a3;
  v4 = [v24 state];
  if ((v4 - 3) < 3)
  {
    v5 = [v24 view];
    [v24 velocityInView:v5];
    v7 = v6;

    v8 = [v24 view];
    [v24 translationInView:v8];
    v10 = v9;

    v11 = 0.0;
    if (v4 == 3 && [(SBHModalLibraryPresenter *)self _dismissLibraryIfNecessaryForTranslation:v10 velocity:v7])
    {
      v12 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
      v13 = [(SBHModalLibraryPresenter *)self libraryView];
      [v13 frame];
      if (v12 == 1)
      {
        v11 = -v14;
      }

      else
      {
        v11 = v14;
      }
    }

    v15 = self;
    v16 = v11;
    v17 = v7 * 0.0625;
    v18 = 1;
LABEL_19:
    [(SBHModalLibraryPresenter *)v15 _updateLibraryTranslation:v18 withVelocity:v16 animated:v17];
    goto LABEL_20;
  }

  if (v4 == 2)
  {
    v20 = [v24 view];
    [v24 translationInView:v20];
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
    v15 = self;
    v16 = v22;
    v18 = 0;
    goto LABEL_19;
  }

  if (v4 == 1)
  {
    v19 = [(SBHModalLibraryPresenter *)self libraryViewController];
    if ([v19 isPresentingSearch])
    {
      [v19 dismissSearch];
    }
  }

LABEL_20:
}

- (BOOL)_isPanGestureQuantityTowardDismissalDirection:(double)a3
{
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    return a3 < 0.0;
  }

  else
  {
    return a3 > 0.0;
  }
}

- (void)_updateLibraryTranslation:(double)a3 withVelocity:(double)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = [(SBHModalLibraryPresenter *)self libraryView];
  [v8 frame];
  if (v10 != a3 || v9 != 0.0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__SBHModalLibraryPresenter__updateLibraryTranslation_withVelocity_animated___block_invoke;
    aBlock[3] = &unk_1E808BCE0;
    v11 = v8;
    v18 = v11;
    v19 = a3;
    v20 = 0;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (v5)
    {
      [v11 frame];
      v15 = a3 - v14;
      if (BSFloatIsZero())
      {
        v16 = 0.0;
      }

      else
      {
        v16 = a4 / v15;
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

- (BOOL)_dismissLibraryIfNecessaryForTranslation:(double)a3 velocity:(double)a4
{
  v7 = [(SBHModalLibraryPresenter *)self libraryView];
  if (![(SBHModalLibraryPresenter *)self _isPanGestureQuantityTowardDismissalDirection:a3])
  {
    if (![(SBHModalLibraryPresenter *)self _isPanGestureQuantityTowardDismissalDirection:a4])
    {
      goto LABEL_13;
    }

    [(SBHAppLibrarySettings *)self->_librarySettings minimumVelocityForSwipeToDismiss];
LABEL_7:
    if (fabs(a4) > v13)
    {
      goto LABEL_11;
    }

LABEL_13:
    v18 = 0;
    goto LABEL_16;
  }

  v8 = fabs(a3);
  [v7 frame];
  v10 = v9;
  [(SBHAppLibrarySettings *)self->_librarySettings minimumTranslationFractionForSwipeToDismiss];
  v12 = v10 * v11;
  if ([(SBHModalLibraryPresenter *)self _isPanGestureQuantityTowardDismissalDirection:a4])
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
  v14 = [v7 layer];
  v15 = [v14 presentationLayer];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [v7 layer];
  }

  v19 = v17;

  [v7 frame];
  [v19 frame];
  [v7 setFrame:?];
  v18 = 1;
  [(SBHModalLibraryPresenter *)self setShouldUseTranslatingAnimationBehavior:1];
  [(SBHModalLibraryPresenter *)self dismissLibraryWithAnimation:1 completion:0];
  [(SBHModalLibraryPresenter *)self setShouldUseTranslatingAnimationBehavior:0];

LABEL_16:
  return v18;
}

- (id)succinctDescription
{
  v2 = [(SBHModalLibraryPresenter *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHModalLibraryPresenter *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBHModalLibraryPresenter *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__SBHModalLibraryPresenter_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E8088F18;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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