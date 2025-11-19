@interface SBSwitcherAppSuggestionViewController
- (CGRect)_idleOnscreenRectForBottomBanner;
- (CGRect)_offscreenRectForBottomBanner;
- (SBSwitcherAppSuggestionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SBSwitcherAppSuggestionViewControllerDelegate)delegate;
- (unint64_t)_bannerStyle;
- (void)_activateBestAppSuggestion;
- (void)_activateCurrentSuggestion;
- (void)_animateOutAndRemoveCurrentBottomBannerWithCompletion:(id)a3;
- (void)_evaluateSuggestionQueueSuspension;
- (void)_handleBannerTap:(id)a3;
- (void)_handleLongPress:(id)a3;
- (void)_insertAndAnimateInBottomBannerForSuggestion:(id)a3 completion:(id)a4;
- (void)_setBestAppSuggestion:(id)a3 animationCompletion:(id)a4;
- (void)_setSuggestionQueueSuspended:(BOOL)a3;
- (void)_updateBottomBannerWithCompletion:(id)a3;
- (void)beginPausingSuggestionUpdatesForReason:(id)a3;
- (void)dealloc;
- (void)endPausingSuggestionUpdatesForReason:(id)a3;
- (void)loadView;
- (void)setShowSuggestions:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
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
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1)
    {
      return 1;
    }
  }

  v5 = [(SBSwitcherAppSuggestionViewController *)self delegate];
  v6 = [v5 orientationForSuggestionViewController:self];

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
      v4 = [MEMORY[0x277D75418] currentDevice];
      v3 = 14.0;
      if (![v4 userInterfaceIdiom])
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

  v5 = [(SBSwitcherAppSuggestionViewController *)self _bannerStyle];
  v6 = __sb__runningInSpringBoard();
  if (v5)
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

    v8 = [MEMORY[0x277D75418] currentDevice];
    v7 = 14.0;
    if (![v8 userInterfaceIdiom])
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
    v8 = [MEMORY[0x277D75418] currentDevice];
    v7 = 14.0;
    if (![v8 userInterfaceIdiom])
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
  v9 = [(SBSwitcherAppSuggestionViewController *)self view];
  [v9 bounds];
  v10 = CGRectGetMaxY(v17) + -40.0 - v3;
  v11 = [(SBSwitcherAppSuggestionViewController *)self view];
  [v11 bounds];
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
  v9 = [(SBSwitcherAppSuggestionViewController *)self view];
  [v9 bounds];
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

- (void)beginPausingSuggestionUpdatesForReason:(id)a3
{
  [(NSMutableSet *)self->_pauseSuggestionUpdateReasons addObject:a3];

  [(SBSwitcherAppSuggestionViewController *)self _evaluateSuggestionQueueSuspension];
}

- (void)endPausingSuggestionUpdatesForReason:(id)a3
{
  [(NSMutableSet *)self->_pauseSuggestionUpdateReasons removeObject:a3];

  [(SBSwitcherAppSuggestionViewController *)self _evaluateSuggestionQueueSuspension];
}

- (void)_setSuggestionQueueSuspended:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_suggestionQueueSuspended != a3)
  {
    self->_suggestionQueueSuspended = a3;
    setSuggestionQueue = self->_setSuggestionQueue;
    if (a3)
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

- (void)_setBestAppSuggestion:(id)a3 animationCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_initWeak(&location, self);
    setSuggestionQueue = self->_setSuggestionQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__SBSwitcherAppSuggestionViewController__setBestAppSuggestion_animationCompletion___block_invoke;
    v9[3] = &unk_2783AACB8;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
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

- (void)setShowSuggestions:(BOOL)a3
{
  if (self->_showSuggestions != a3)
  {
    self->_showSuggestions = a3;
    [(SBSwitcherAppSuggestionViewController *)self _updateBottomBannerWithCompletion:0];
  }
}

- (SBSwitcherAppSuggestionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBSwitcherAppSuggestionViewController;
  v4 = [(SBSwitcherAppSuggestionViewController *)&v10 initWithNibName:a3 bundle:a4];
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

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBSwitcherAppSuggestionViewController;
  [(SBSwitcherAppSuggestionViewController *)&v5 willMoveToParentViewController:?];
  if (!a3)
  {
    self->_presentingOrDismissingBanner = 0;
  }
}

- (void)_updateBottomBannerWithCompletion:(id)a3
{
  v4 = a3;
  bannerView = self->_bannerView;
  v11 = v4;
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

    v6 = [(SBSwitcherAppSuggestionBannerView *)bannerView representedAppSuggestion];
    v7 = [v6 isEqual:self->_bestAppSuggestion];

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

    v4 = v11;
  }

  else if (bannerView)
  {
    [(SBSwitcherAppSuggestionViewController *)self _animateOutAndRemoveCurrentBottomBannerWithCompletion:?];
    goto LABEL_16;
  }

  if (v4)
  {
    v4[2](v4, 0);
  }

LABEL_16:

  MEMORY[0x2821F9730]();
}

- (void)_insertAndAnimateInBottomBannerForSuggestion:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
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

  v13 = [[SBSwitcherAppSuggestionBannerView alloc] initWithFrame:v7 appSuggestion:[(SBSwitcherAppSuggestionViewController *)self _bannerStyle] style:v9, v10, v11, v12];
  bannerView = self->_bannerView;
  self->_bannerView = v13;

  [(SBSwitcherAppSuggestionBannerView *)self->_bannerView addGestureRecognizer:self->_tapGestureRecognizer];
  [(SBSwitcherAppSuggestionBannerView *)self->_bannerView addGestureRecognizer:self->_longPressGestureRecognizer];
  v15 = [(SBSwitcherAppSuggestionViewController *)self view];
  [v15 addSubview:self->_bannerView];

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
  v19 = v8;
  v17 = v8;
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

- (void)_animateOutAndRemoveCurrentBottomBannerWithCompletion:(id)a3
{
  v4 = a3;
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
  v12 = self;
  v13 = v4;
  v7 = v4;
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

- (void)_handleBannerTap:(id)a3
{
  if ([a3 state] == 3)
  {

    [(SBSwitcherAppSuggestionViewController *)self _activateBestAppSuggestion];
  }
}

- (void)_handleLongPress:(id)a3
{
  v15 = a3;
  [(SBSwitcherAppSuggestionBannerView *)self->_bannerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v15 locationInView:self->_bannerView];
  v17.x = v12;
  v17.y = v13;
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  v14 = CGRectContainsPoint(v18, v17);
  if ([v15 state] == 1)
  {
    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:0];
    v14 = 1;
    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:1];
    goto LABEL_10;
  }

  if ([v15 state] == 3)
  {
    if (!v14)
    {
      goto LABEL_10;
    }

    [(SBSwitcherAppSuggestionViewController *)self _activateBestAppSuggestion];
  }

  else if ([v15 state] != 4)
  {
    if ([v15 state] == 2)
    {
      goto LABEL_10;
    }

    [v15 state];
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