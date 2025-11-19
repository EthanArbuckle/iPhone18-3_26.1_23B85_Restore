@interface SBRingerHUDViewController
- (SBRingerHUDViewController)initWithActivatedForPreviewing:(BOOL)a3;
- (SBRingerHUDViewControllerDelegate)delegate;
- (void)_dismiss;
- (void)_extendDismissalTimer;
- (void)_layoutPillView;
- (void)_updateStateAnimated:(BOOL)a3 invert:(BOOL)a4;
- (void)_updateVolumeSliderAnimated:(BOOL)a3;
- (void)nudgeUp:(BOOL)a3;
- (void)presentForMuteChange:(BOOL)a3;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)setRingerSilent:(BOOL)a3;
- (void)setVolume:(float)a3 animated:(BOOL)a4 forKeyPress:(BOOL)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SBRingerHUDViewController

- (SBRingerHUDViewController)initWithActivatedForPreviewing:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = SBRingerHUDViewController;
  v4 = [(SBRingerHUDViewController *)&v12 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_activatedForPreviewing = v3;
    v6 = [(SBRingerHUDViewController *)v4 transitioningDelegate];

    if (!v6 && v3)
    {
      customTransitioningDelegate = v5->_customTransitioningDelegate;
      if (!customTransitioningDelegate)
      {
        v9 = objc_alloc_init(SBBannerCustomTransitioningDelegate);
        v10 = v5->_customTransitioningDelegate;
        v5->_customTransitioningDelegate = v9;

        customTransitioningDelegate = v5->_customTransitioningDelegate;
      }

      [(SBRingerHUDViewController *)v5 setTransitioningDelegate:customTransitioningDelegate];
    }
  }

  return v5;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SBRingerHUDViewController;
  [(SBRingerHUDViewController *)&v8 viewDidLoad];
  v3 = [[SBRingerPillView alloc] initWithActivatedForPreviewing:self->_activatedForPreviewing];
  pillView = self->_pillView;
  self->_pillView = v3;

  [(SBRingerPillView *)self->_pillView _setTouchInsets:0.0, 0.0, -30.0, 0.0];
  [(SBRingerPillView *)self->_pillView sizeToFit];
  v5 = [(SBRingerHUDViewController *)self view];
  [v5 addSubview:self->_pillView];

  [(SBRingerHUDViewController *)self _layoutPillView];
  [(SBRingerPillView *)self->_pillView bounds];
  [(SBRingerHUDViewController *)self setPreferredContentSize:v6, v7];
  [(SBRingerHUDViewController *)self _updateVolumeSliderAnimated:0];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBRingerHUDViewController;
  [(SBRingerHUDViewController *)&v3 viewDidLayoutSubviews];
  [(SBRingerHUDViewController *)self _layoutPillView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBRingerHUDViewController;
  [(SBRingerHUDViewController *)&v4 viewWillAppear:a3];
  [(SBRingerHUDViewController *)self _updateVolumeSliderAnimated:0];
}

- (void)setRingerSilent:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x277D85DE8];
  v5 = SBLogRingerHUD();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBRingerHUDViewController setRingerSilent: %{BOOL}d", v6, 8u);
  }

  if (self->_ringerSilent != v3)
  {
    self->_ringerSilent = v3;
    self->_lastEventIsAVolumeChange = 0;
    [(SBRingerHUDViewController *)self _updateStateAnimated:1 invert:0];
  }
}

- (void)nudgeUp:(BOOL)a3
{
  if (a3)
  {
    if ((BSFloatIsOne() & 1) == 0)
    {
      return;
    }

    v4 = 0.0625;
  }

  else
  {
    if (!BSFloatLessThanOrEqualToFloat())
    {
      return;
    }

    v4 = -0.0625;
  }

  self->_overshoot = self->_overshoot + v4;

  [(SBRingerHUDViewController *)self _updateVolumeSliderAnimated:1];
}

- (void)setVolume:(float)a3 animated:(BOOL)a4 forKeyPress:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v9 = SBLogRingerHUD();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218496;
    v11 = a3;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBRingerHUDViewController setVolume:%.2f animated:%{BOOL}d forKeyPress:%{BOOL}d", &v10, 0x18u);
  }

  [(SBRingerHUDViewController *)self _extendDismissalTimer];
  if (v5)
  {
    self->_lastEventIsAVolumeChange = 1;
  }

  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_volume = a3;
    [(SBRingerHUDViewController *)self _updateVolumeSliderAnimated:v6];
  }

  if (v5)
  {
    [(SBRingerHUDViewController *)self _updateStateAnimated:1 invert:0];
  }
}

- (void)_layoutPillView
{
  v4 = [(SBRingerHUDViewController *)self view];
  [v4 bounds];
  pillView = self->_pillView;
  UIRectGetCenter();
  [(SBRingerPillView *)pillView setCenter:?];
}

- (void)_updateVolumeSliderAnimated:(BOOL)a3
{
  v3 = a3;
  v8 = *MEMORY[0x277D85DE8];
  v5 = SBLogRingerHUD();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBRingerHUDViewController _updateVolumeSliderAnimated:%{BOOL}d", v7, 8u);
  }

  v6 = self->_overshoot + self->_volume;
  [(SBRingerPillView *)self->_pillView setSliderValue:v3 animated:v6];
}

- (void)_updateStateAnimated:(BOOL)a3 invert:(BOOL)a4
{
  v5 = a3;
  if ([(SBRingerHUDViewController *)self isViewLoaded])
  {
    v7 = +[SBDefaults externalDefaults];
    v8 = [v7 soundDefaults];

    v9 = [v8 buttonsCanChangeRingerVolume];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __57__SBRingerHUDViewController__updateStateAnimated_invert___block_invoke;
    v20[3] = &unk_2783AC158;
    v21 = v9;
    v20[4] = self;
    v22 = a4;
    v10 = MEMORY[0x223D6F7F0](v20);
    v11 = v10;
    if (v5)
    {
      if (self->_activatedForPreviewing)
      {
        if (self->_ringerSilent)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        v13 = [(SBRingerHUDViewController *)self view];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __57__SBRingerHUDViewController__updateStateAnimated_invert___block_invoke_3;
        v16[3] = &unk_2783A9348;
        v17 = v11;
        [v13 sb_animateStateChangeWithBlock:v16 style:v12];

        v14 = v17;
      }

      else
      {
        v15 = MEMORY[0x277D75D18];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __57__SBRingerHUDViewController__updateStateAnimated_invert___block_invoke_2;
        v18[3] = &unk_2783A9348;
        v19 = v10;
        [v15 animateWithDuration:4 delay:v18 options:0 animations:0.3 completion:0.0];
        v14 = v19;
      }
    }

    else
    {
      v10[2](v10);
    }
  }
}

uint64_t __57__SBRingerHUDViewController__updateStateAnimated_invert___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v3 = 4;
    if (!*(v2 + 1010))
    {
      v3 = 1;
    }

    v4 = 3;
  }

  else
  {
    v3 = 1;
    v4 = 2;
  }

  if (*(v2 + 1008) == *(a1 + 41))
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  [*(v2 + 1024) setState:v5];
  v6 = *(*(a1 + 32) + 1024);

  return [v6 layoutIfNeeded];
}

- (void)presentForMuteChange:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = SBLogRingerHUD();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBRingerHUDViewController presentForMuteChange: %{BOOL}d", buf, 8u);
  }

  v6 = [(SBBannerBasePresentableViewController *)self isPresentableAppearingOrAppeared];
  [(SBRingerHUDViewController *)self _extendDismissalTimer];
  if (!v6)
  {
    v7 = [(SBRingerHUDViewController *)self delegate];
    [v7 ringerHUDViewControllerWantsToBePresented:self];

    [(SBRingerHUDViewController *)self setShouldExtendDismissalTimerUponDidAppear:1];
    if (v3)
    {
      [(SBRingerHUDViewController *)self _updateStateAnimated:0 invert:1];
      v8 = [(SBRingerHUDViewController *)self view];
      v9 = [v8 window];
      [v9 safeAreaInsets];
      v11 = v10;

      if (v11 != 0.0)
      {
        v12 = dispatch_time(0, 200000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__SBRingerHUDViewController_presentForMuteChange___block_invoke;
        block[3] = &unk_2783A8C18;
        block[4] = self;
        dispatch_after(v12, MEMORY[0x277D85CD0], block);
        return;
      }

      v13 = self;
      v14 = 1;
    }

    else
    {
      v13 = self;
      v14 = 0;
    }

    [(SBRingerHUDViewController *)v13 _updateStateAnimated:v14 invert:0];
  }
}

- (void)_dismiss
{
  v3 = SBLogRingerHUD();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "SBRingerHUDViewController dismiss", v5, 2u);
  }

  v4 = [(SBRingerHUDViewController *)self delegate];
  [v4 ringerHUDViewControllerWantsToBeDismissed:self];
}

- (void)_extendDismissalTimer
{
  v3 = SBLogRingerHUD();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "SBRingerHUDViewController _extendDismissalTimer", buf, 2u);
  }

  [(NSTimer *)self->_dismissalTimer invalidate];
  dismissalTimer = self->_dismissalTimer;
  self->_dismissalTimer = 0;

  if (!self->_dismissalTimer)
  {
    objc_initWeak(buf, self);
    v5 = MEMORY[0x277CBEBB8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__SBRingerHUDViewController__extendDismissalTimer__block_invoke;
    v8[3] = &unk_2783AA438;
    objc_copyWeak(&v9, buf);
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:1.5];
    v7 = self->_dismissalTimer;
    self->_dismissalTimer = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

void __50__SBRingerHUDViewController__extendDismissalTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
  [v3 invalidate];

  [WeakRetained setDismissalTimer:0];
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  if ([(SBRingerHUDViewController *)self shouldExtendDismissalTimerUponDidAppear])
  {
    [(SBRingerHUDViewController *)self setShouldExtendDismissalTimerUponDidAppear:0];

    [(SBRingerHUDViewController *)self _extendDismissalTimer];
  }
}

- (SBRingerHUDViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end