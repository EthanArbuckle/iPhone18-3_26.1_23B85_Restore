@interface SBSwitcherAppSuggestionViewController
- (CGRect)_idleOnscreenRectForBottomBanner;
- (CGRect)_offscreenRectForBottomBanner;
- (SBSwitcherAppSuggestionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SBSwitcherAppSuggestionViewControllerDelegate)delegate;
- (unint64_t)_bannerStyle;
- (void)_activateBestAppSuggestion;
- (void)_activateCurrentSuggestion;
- (void)_animateOutAndRemoveCurrentBottomBannerWithCompletion:(id)completion;
- (void)_evaluateSuggestionQueueSuspension;
- (void)_handleBannerTap:(id)tap;
- (void)_handleLongPress:(id)press;
- (void)_insertAndAnimateInBottomBannerForSuggestion:(id)suggestion completion:(id)completion;
- (void)_setBestAppSuggestion:(id)suggestion animationCompletion:(id)completion;
- (void)_setSuggestionQueueSuspended:(BOOL)suspended;
- (void)_updateBottomBannerWithCompletion:(id)completion;
- (void)beginPausingSuggestionUpdatesForReason:(id)reason;
- (void)dealloc;
- (void)endPausingSuggestionUpdatesForReason:(id)reason;
- (void)loadView;
- (void)setShowSuggestions:(BOOL)suggestions;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation SBSwitcherAppSuggestionViewController

- (void)_evaluateSuggestionQueueSuspension
{
  v3 = [(NSMutableSet *)self->_pauseSuggestionUpdateReasons count]!= 0;

  [(SBSwitcherAppSuggestionViewController *)self _setSuggestionQueueSuspended:v3];
}

- (unint64_t)_bannerStyle
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      return 1;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      return 1;
    }
  }

  delegate = [(SBSwitcherAppSuggestionViewController *)self delegate];
  v6 = [delegate orientationForSuggestionViewController:self];

  return (v6 - 5) <= 0xFFFFFFFFFFFFFFFDLL;
}

- (CGRect)_idleOnscreenRectForBottomBanner
{
  if ([(SBSwitcherAppSuggestionViewController *)self _bannerStyle])
  {
    if (__sb__runningInSpringBoard())
    {
      if (!SBFEffectiveDeviceClass() || (v3 = 14.0, SBFEffectiveDeviceClass() == 1))
      {
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v3 = 21.0;
        }

        else
        {
          v3 = 14.0;
        }
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      v3 = 14.0;
      if (![currentDevice userInterfaceIdiom])
      {
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v3 = 21.0;
        }

        else
        {
          v3 = 14.0;
        }
      }
    }
  }

  else
  {
    v3 = 7.0;
  }

  _bannerStyle = [(SBSwitcherAppSuggestionViewController *)self _bannerStyle];
  v6 = __sb__runningInSpringBoard();
  if (_bannerStyle)
  {
    if (v6)
    {
      if (!SBFEffectiveDeviceClass() || (v7 = 14.0, SBFEffectiveDeviceClass() == 1))
      {
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v7 = 21.0;
        }

        else
        {
          v7 = 14.0;
        }
      }

      goto LABEL_36;
    }

    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    v7 = 14.0;
    if (![currentDevice2 userInterfaceIdiom])
    {
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v7 = 21.0;
      }

      else
      {
        v7 = 14.0;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (!v6)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    v7 = 14.0;
    if (![currentDevice2 userInterfaceIdiom])
    {
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v7 = 58.0;
      }

      else
      {
        v7 = 14.0;
      }
    }

    goto LABEL_35;
  }

  if (!SBFEffectiveDeviceClass() || (v7 = 14.0, SBFEffectiveDeviceClass() == 1))
  {
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v7 = 58.0;
    }

    else
    {
      v7 = 14.0;
    }
  }

LABEL_36:
  view = [(SBSwitcherAppSuggestionViewController *)self view];
  [view bounds];
  v10 = CGRectGetMaxY(v17) + -40.0 - v3;
  view2 = [(SBSwitcherAppSuggestionViewController *)self view];
  [view2 bounds];
  v12 = CGRectGetWidth(v18) + v7 * -2.0;

  v13 = 40.0;
  v14 = v7;
  v15 = v10;
  v16 = v12;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_offscreenRectForBottomBanner
{
  [(SBSwitcherAppSuggestionViewController *)self _idleOnscreenRectForBottomBanner];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  view = [(SBSwitcherAppSuggestionViewController *)self view];
  [view bounds];
  MaxY = CGRectGetMaxY(v15);

  v11 = v4;
  v12 = MaxY;
  v13 = v6;
  v14 = v8;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (SBSwitcherAppSuggestionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewWillLayoutSubviews
{
  if (!self->_presentingOrDismissingBanner)
  {
    v7 = v2;
    if (self->_showSuggestions && self->_bestAppSuggestion)
    {
      bannerView = self->_bannerView;
      [(SBSwitcherAppSuggestionViewController *)self _idleOnscreenRectForBottomBanner];
    }

    else
    {
      bannerView = self->_bannerView;
      [(SBSwitcherAppSuggestionViewController *)self _offscreenRectForBottomBanner:v3];
    }

    [(SBSwitcherAppSuggestionBannerView *)bannerView setFrame:?];
  }
}

- (void)dealloc
{
  [(NSMutableSet *)self->_pauseSuggestionUpdateReasons removeAllObjects];
  [(SBSwitcherAppSuggestionViewController *)self _evaluateSuggestionQueueSuspension];
  v3.receiver = self;
  v3.super_class = SBSwitcherAppSuggestionViewController;
  [(SBSwitcherAppSuggestionViewController *)&v3 dealloc];
}

- (void)beginPausingSuggestionUpdatesForReason:(id)reason
{
  [(NSMutableSet *)self->_pauseSuggestionUpdateReasons addObject:reason];

  [(SBSwitcherAppSuggestionViewController *)self _evaluateSuggestionQueueSuspension];
}

- (void)endPausingSuggestionUpdatesForReason:(id)reason
{
  [(NSMutableSet *)self->_pauseSuggestionUpdateReasons removeObject:reason];

  [(SBSwitcherAppSuggestionViewController *)self _evaluateSuggestionQueueSuspension];
}

- (void)_setSuggestionQueueSuspended:(BOOL)suspended
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_suggestionQueueSuspended != suspended)
  {
    self->_suggestionQueueSuspended = suspended;
    setSuggestionQueue = self->_setSuggestionQueue;
    if (suspended)
    {
      dispatch_suspend(setSuggestionQueue);
      v5 = SBLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        pauseSuggestionUpdateReasons = self->_pauseSuggestionUpdateReasons;
        v10 = 138412290;
        v11 = pauseSuggestionUpdateReasons;
        v7 = "App suggestion queue is now suspended for reasons: %@";
        v8 = v5;
        v9 = 12;
LABEL_7:
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
      }
    }

    else
    {
      dispatch_resume(setSuggestionQueue);
      v5 = SBLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        v7 = "App suggestion queue is no longer suspended";
        v8 = v5;
        v9 = 2;
        goto LABEL_7;
      }
    }
  }
}

- (void)_setBestAppSuggestion:(id)suggestion animationCompletion:(id)completion
{
  suggestionCopy = suggestion;
  completionCopy = completion;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_initWeak(&location, self);
    setSuggestionQueue = self->_setSuggestionQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__SBSwitcherAppSuggestionViewController__setBestAppSuggestion_animationCompletion___block_invoke;
    v9[3] = &unk_2783AACB8;
    objc_copyWeak(&v12, &location);
    v10 = suggestionCopy;
    v11 = completionCopy;
    dispatch_async(setSuggestionQueue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __83__SBSwitcherAppSuggestionViewController__setBestAppSuggestion_animationCompletion___block_invoke(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SBSwitcherAppSuggestionViewController__setBestAppSuggestion_animationCompletion___block_invoke_2;
  block[3] = &unk_2783AACB8;
  objc_copyWeak(&v5, a1 + 6);
  v3 = a1[4];
  v4 = a1[5];
  dispatch_sync(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v5);
}

void __83__SBSwitcherAppSuggestionViewController__setBestAppSuggestion_animationCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 124, *(a1 + 32));
    [v3 _updateBottomBannerWithCompletion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)setShowSuggestions:(BOOL)suggestions
{
  if (self->_showSuggestions != suggestions)
  {
    self->_showSuggestions = suggestions;
    [(SBSwitcherAppSuggestionViewController *)self _updateBottomBannerWithCompletion:0];
  }
}

- (SBSwitcherAppSuggestionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = SBSwitcherAppSuggestionViewController;
  v4 = [(SBSwitcherAppSuggestionViewController *)&v10 initWithNibName:name bundle:bundle];
  if (v4)
  {
    Serial = BSDispatchQueueCreateSerial();
    setSuggestionQueue = v4->_setSuggestionQueue;
    v4->_setSuggestionQueue = Serial;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pauseSuggestionUpdateReasons = v4->_pauseSuggestionUpdateReasons;
    v4->_pauseSuggestionUpdateReasons = v7;
  }

  return v4;
}

- (void)loadView
{
  v3 = [SBSwitcherAppSuggestionContentView alloc];
  v4 = [(SBSwitcherAppSuggestionContentView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SBSwitcherAppSuggestionViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SBSwitcherAppSuggestionViewController;
  [(SBSwitcherAppSuggestionViewController *)&v7 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleBannerTap_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v3;

  v5 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handleLongPress_];
  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  self->_longPressGestureRecognizer = v5;

  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setMinimumPressDuration:0.12];
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = SBSwitcherAppSuggestionViewController;
  [(SBSwitcherAppSuggestionViewController *)&v5 willMoveToParentViewController:?];
  if (!controller)
  {
    self->_presentingOrDismissingBanner = 0;
  }
}

- (void)_updateBottomBannerWithCompletion:(id)completion
{
  completionCopy = completion;
  bannerView = self->_bannerView;
  v11 = completionCopy;
  if (self->_showSuggestions)
  {
    if (!bannerView)
    {
      bestAppSuggestion = self->_bestAppSuggestion;
      if (bestAppSuggestion)
      {
LABEL_15:
        [(SBSwitcherAppSuggestionViewController *)self _insertAndAnimateInBottomBannerForSuggestion:bestAppSuggestion completion:v11];
        goto LABEL_16;
      }
    }

    representedAppSuggestion = [(SBSwitcherAppSuggestionBannerView *)bannerView representedAppSuggestion];
    v7 = [representedAppSuggestion isEqual:self->_bestAppSuggestion];

    if ((v7 & 1) == 0)
    {
      v8 = self->_bestAppSuggestion;
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = v11;
      }

      [(SBSwitcherAppSuggestionViewController *)self _animateOutAndRemoveCurrentBottomBannerWithCompletion:v9];
      if (!v8)
      {
        goto LABEL_16;
      }

      bestAppSuggestion = self->_bestAppSuggestion;
      goto LABEL_15;
    }

    completionCopy = v11;
  }

  else if (bannerView)
  {
    [(SBSwitcherAppSuggestionViewController *)self _animateOutAndRemoveCurrentBottomBannerWithCompletion:?];
    goto LABEL_16;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_16:

  MEMORY[0x2821F9730]();
}

- (void)_insertAndAnimateInBottomBannerForSuggestion:(id)suggestion completion:(id)completion
{
  suggestionCopy = suggestion;
  completionCopy = completion;
  if (self->_bannerView)
  {
    [SBSwitcherAppSuggestionViewController _insertAndAnimateInBottomBannerForSuggestion:a2 completion:self];
  }

  self->_presentingOrDismissingBanner = 1;
  if (SBReduceMotion())
  {
    [(SBSwitcherAppSuggestionViewController *)self _idleOnscreenRectForBottomBanner];
  }

  else
  {
    [(SBSwitcherAppSuggestionViewController *)self _offscreenRectForBottomBanner];
  }

  v13 = [[SBSwitcherAppSuggestionBannerView alloc] initWithFrame:suggestionCopy appSuggestion:[(SBSwitcherAppSuggestionViewController *)self _bannerStyle] style:v9, v10, v11, v12];
  bannerView = self->_bannerView;
  self->_bannerView = v13;

  [(SBSwitcherAppSuggestionBannerView *)self->_bannerView addGestureRecognizer:self->_tapGestureRecognizer];
  [(SBSwitcherAppSuggestionBannerView *)self->_bannerView addGestureRecognizer:self->_longPressGestureRecognizer];
  view = [(SBSwitcherAppSuggestionViewController *)self view];
  [view addSubview:self->_bannerView];

  [(SBSwitcherAppSuggestionBannerView *)self->_bannerView layoutIfNeeded];
  if (SBReduceMotion())
  {
    [(SBSwitcherAppSuggestionBannerView *)self->_bannerView setAlpha:0.0];
  }

  v16 = MEMORY[0x277D75D18];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __97__SBSwitcherAppSuggestionViewController__insertAndAnimateInBottomBannerForSuggestion_completion___block_invoke;
  v20[3] = &unk_2783A8C18;
  v20[4] = self;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __97__SBSwitcherAppSuggestionViewController__insertAndAnimateInBottomBannerForSuggestion_completion___block_invoke_3;
  v18[3] = &unk_2783A9C98;
  v18[4] = self;
  v19 = completionCopy;
  v17 = completionCopy;
  [v16 _animateUsingDefaultTimingWithOptions:0 animations:v20 completion:v18];
}

uint64_t __97__SBSwitcherAppSuggestionViewController__insertAndAnimateInBottomBannerForSuggestion_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __97__SBSwitcherAppSuggestionViewController__insertAndAnimateInBottomBannerForSuggestion_completion___block_invoke_2;
  v4[3] = &unk_2783A8C18;
  v4[4] = *(a1 + 32);
  return [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114118 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

uint64_t __97__SBSwitcherAppSuggestionViewController__insertAndAnimateInBottomBannerForSuggestion_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[126];
  [v2 _idleOnscreenRectForBottomBanner];
  [v3 setFrame:?];
  v4 = *(*(a1 + 32) + 1008);

  return [v4 setAlpha:1.0];
}

uint64_t __97__SBSwitcherAppSuggestionViewController__insertAndAnimateInBottomBannerForSuggestion_completion___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 1032) = 0;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_animateOutAndRemoveCurrentBottomBannerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = self->_bannerView;
  [(SBSwitcherAppSuggestionBannerView *)v5 removeGestureRecognizer:self->_tapGestureRecognizer];
  [(SBSwitcherAppSuggestionBannerView *)v5 removeGestureRecognizer:self->_longPressGestureRecognizer];
  self->_presentingOrDismissingBanner = 1;
  v6 = MEMORY[0x277D75D18];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__SBSwitcherAppSuggestionViewController__animateOutAndRemoveCurrentBottomBannerWithCompletion___block_invoke;
  v14[3] = &unk_2783A92D8;
  v14[4] = self;
  v15 = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__SBSwitcherAppSuggestionViewController__animateOutAndRemoveCurrentBottomBannerWithCompletion___block_invoke_3;
  v10[3] = &unk_2783AE5A0;
  v11 = v15;
  selfCopy = self;
  v13 = completionCopy;
  v7 = completionCopy;
  v8 = v15;
  [v6 _animateUsingDefaultTimingWithOptions:4 animations:v14 completion:v10];
  bannerView = self->_bannerView;
  self->_bannerView = 0;
}

void __95__SBSwitcherAppSuggestionViewController__animateOutAndRemoveCurrentBottomBannerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v12 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v12.minimum;
  maximum = v12.maximum;
  preferred = v12.preferred;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__SBSwitcherAppSuggestionViewController__animateOutAndRemoveCurrentBottomBannerWithCompletion___block_invoke_2;
  v10[3] = &unk_2783A92D8;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  *&v7 = minimum;
  *&v8 = maximum;
  *&v9 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114118 updateReason:v10 animations:{v7, v8, v9}];
}

uint64_t __95__SBSwitcherAppSuggestionViewController__animateOutAndRemoveCurrentBottomBannerWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = SBReduceMotion();
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _idleOnscreenRectForBottomBanner];
  }

  else
  {
    [v3 _offscreenRectForBottomBanner];
  }

  [*(a1 + 40) setFrame:?];
  result = SBReduceMotion();
  if (result)
  {
    v5 = *(a1 + 40);

    return [v5 setAlpha:0.0];
  }

  return result;
}

uint64_t __95__SBSwitcherAppSuggestionViewController__animateOutAndRemoveCurrentBottomBannerWithCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  *(*(a1 + 40) + 1032) = 0;
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_handleBannerTap:(id)tap
{
  if ([tap state] == 3)
  {

    [(SBSwitcherAppSuggestionViewController *)self _activateBestAppSuggestion];
  }
}

- (void)_handleLongPress:(id)press
{
  pressCopy = press;
  [(SBSwitcherAppSuggestionBannerView *)self->_bannerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [pressCopy locationInView:self->_bannerView];
  v17.x = v12;
  v17.y = v13;
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  v14 = CGRectContainsPoint(v18, v17);
  if ([pressCopy state] == 1)
  {
    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:0];
    v14 = 1;
    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:1];
    goto LABEL_10;
  }

  if ([pressCopy state] == 3)
  {
    if (!v14)
    {
      goto LABEL_10;
    }

    [(SBSwitcherAppSuggestionViewController *)self _activateBestAppSuggestion];
  }

  else if ([pressCopy state] != 4)
  {
    if ([pressCopy state] == 2)
    {
      goto LABEL_10;
    }

    [pressCopy state];
  }

  v14 = 0;
LABEL_10:
  [(SBSwitcherAppSuggestionBannerView *)self->_bannerView setHighlighted:v14];
}

- (void)_activateBestAppSuggestion
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained suggestionViewController:self activatedSuggestion:self->_bestAppSuggestion];
}

- (void)_activateCurrentSuggestion
{
  if (self->_bannerView)
  {
    [(SBSwitcherAppSuggestionViewController *)self _activateBestAppSuggestion];
  }
}

- (void)_insertAndAnimateInBottomBannerForSuggestion:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherAppSuggestionViewController.m" lineNumber:211 description:@"Can't insert app suggestion banner if we already have one"];
}

@end