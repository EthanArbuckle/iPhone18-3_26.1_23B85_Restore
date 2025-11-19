@interface SBActivityViewController
- (CGSize)preferredActivityContentSize;
- (NSSet)audioCategoriesDisablingVolumeHUD;
- (SBActivityViewController)initWithActivityItem:(id)a3;
- (SBActivityViewController)initWithActivityItem:(id)a3 sceneType:(int64_t)a4 payloadID:(id)a5 targetBundleIdentifier:(id)a6;
- (SBActivityViewController)initWithActivityItem:(id)a3 viewController:(id)a4;
- (SBActivityViewControllerDelegate)delegate;
- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3;
- (void)_unlockAndLaunchAppIfPossible:(id)a3 withAction:(id)a4;
- (void)_viewWillLayoutSubviews;
- (void)activityHostViewController:(id)a3 didSetIdleTimerDisabled:(BOOL)a4;
- (void)activityHostViewController:(id)a3 requestsLaunchWithAction:(id)a4;
- (void)activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChange:(id)a3;
- (void)activityHostViewControllerHostShouldCancelTouches:(id)a3;
- (void)dealloc;
- (void)setPresentationMode:(unint64_t)a3;
- (void)setVisibility:(unint64_t)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SBActivityViewController

- (SBActivityViewController)initWithActivityItem:(id)a3 sceneType:(int64_t)a4 payloadID:(id)a5 targetBundleIdentifier:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [v12 descriptor];
  v14 = [v13 contentType];
  if (a4 == 3)
  {
    if (v14 == 1)
    {
      v17 = [MEMORY[0x277D67D08] ambientCompactDefaultMetrics];
      goto LABEL_17;
    }

    if (!v14)
    {
      v16 = MEMORY[0x277D67D08];
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (a4 == 2)
  {
    if (v14 == 1)
    {
      v16 = MEMORY[0x277D67D08];
LABEL_15:
      v17 = [v16 ambientDefaultMetrics];
      goto LABEL_17;
    }

    if (!v14)
    {
      v15 = [v11 isEqualToString:@"com.apple.chrono.WidgetRenderer-Activities"];
      v16 = MEMORY[0x277D67D08];
      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_10:
      v17 = [v16 ambientWidgetMetrics];
LABEL_17:
      v18 = v17;
      goto LABEL_18;
    }

LABEL_13:
    v18 = 0;
    goto LABEL_18;
  }

  v18 = [MEMORY[0x277D67D08] defaultMetrics];
  if (a4 != 1)
  {
LABEL_18:
    v19 = [MEMORY[0x277CE9570] activityHostViewControllerWithDescriptor:v13 sceneType:a4 metricsRequest:v18 targetBundleIdentifier:v11];
    goto LABEL_19;
  }

  v19 = [MEMORY[0x277CE9570] activityHostViewControllerWithDescriptor:v13 metricsRequest:v18 payloadID:v10 targetBundleIdentifier:v11];
LABEL_19:
  v20 = v19;
  v21 = [(SBActivityViewController *)self initWithActivityItem:v12 viewController:v19];

  return v21;
}

- (SBActivityViewController)initWithActivityItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBActivityViewController;
  v6 = [(SBActivityViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityItem, a3);
  }

  return v7;
}

- (SBActivityViewController)initWithActivityItem:(id)a3 viewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBActivityViewController;
  v9 = [(SBActivityViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityItem, a3);
    objc_storeStrong(&v10->_activityHostViewController, a4);
  }

  return v10;
}

- (void)dealloc
{
  [(SBActivityViewController *)self bs_removeChildViewController:self->_activityHostViewController];
  [(ACUISActivityHostViewController *)self->_activityHostViewController invalidate];
  activityHostViewController = self->_activityHostViewController;
  self->_activityHostViewController = 0;

  [(BSInvalidatable *)self->_activeIdleTimerAssertion invalidate];
  activeIdleTimerAssertion = self->_activeIdleTimerAssertion;
  self->_activeIdleTimerAssertion = 0;

  v5.receiver = self;
  v5.super_class = SBActivityViewController;
  [(SBActivityViewController *)&v5 dealloc];
}

- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBActivityViewController;
  v4 = a3;
  [(SBActivityViewController *)&v7 _preferredContentSizeDidChangeForChildViewController:v4];
  activityHostViewController = self->_activityHostViewController;

  if (activityHostViewController == v4)
  {
    [(ACUISActivityHostViewController *)activityHostViewController preferredContentSize:v7.receiver];
    [(SBActivityViewController *)self setPreferredContentSize:?];
    v6 = [(SBActivityViewController *)self view];
    [v6 layoutIfNeeded];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SBActivityViewController;
  [(SBActivityViewController *)&v5 viewDidLoad];
  v3 = [(SBActivityViewController *)self activityHostViewController];
  [v3 setDelegate:self];

  v4 = [(SBActivityViewController *)self activityHostViewController];
  [(SBActivityViewController *)self bs_addChildViewController:v4];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBActivityViewController;
  [(SBActivityViewController *)&v3 viewWillLayoutSubviews];
  [(SBActivityViewController *)self _viewWillLayoutSubviews];
}

- (void)_viewWillLayoutSubviews
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(SBActivityViewController *)self view];
  [v3 bounds];
  v5 = v4;

  [(SBActivityViewController *)self preferredActivityContentSize];
  v7 = v6;
  v9 = v8;
  v10 = [(SBActivityViewController *)self traitCollection];
  [v10 displayScale];

  BSFloatRoundForScale();
  v12 = v11;
  BSFloatRoundForScale();
  v14 = v13;
  if (v7 < v5)
  {
    v5 = v7;
  }

  v15 = SBLogActivity();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(ACUISActivityHostViewController *)self->_activityHostViewController activityIdentifier];
    v24.origin.x = v12;
    v24.origin.y = v14;
    v24.size.width = v5;
    v24.size.height = v9;
    v17 = NSStringFromCGRect(v24);
    v19 = 138543618;
    v20 = v16;
    v21 = 2112;
    v22 = v17;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Activity[%{public}@] Setting host view controller frame: %@", &v19, 0x16u);
  }

  v18 = [(ACUISActivityHostViewController *)self->_activityHostViewController view];
  [v18 setFrame:{v12, v14, v5, v9}];
}

- (CGSize)preferredActivityContentSize
{
  [(ACUISActivityHostViewController *)self->_activityHostViewController preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBActivityViewController;
  [(SBActivityViewController *)&v4 viewWillAppear:a3];
  [(ACUISActivityHostViewController *)self->_activityHostViewController setVisibility:1];
  [(ACUISActivityHostViewController *)self->_activityHostViewController setPresentationMode:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBActivityViewController;
  [(SBActivityViewController *)&v4 viewDidDisappear:a3];
  [(ACUISActivityHostViewController *)self->_activityHostViewController setVisibility:0];
  [(ACUISActivityHostViewController *)self->_activityHostViewController setPresentationMode:0];
}

- (void)setPresentationMode:(unint64_t)a3
{
  if (self->_presentationMode != a3)
  {
    self->_presentationMode = a3;
    [(ACUISActivityHostViewController *)self->_activityHostViewController setPresentationMode:?];
  }
}

- (void)setVisibility:(unint64_t)a3
{
  if (self->_visibility != a3)
  {
    self->_visibility = a3;
    [(ACUISActivityHostViewController *)self->_activityHostViewController setVisibility:?];
  }
}

- (NSSet)audioCategoriesDisablingVolumeHUD
{
  v2 = [(ACUISActivityHostViewController *)self->_activityHostViewController audioCategoriesDisablingVolumeHUD];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_unlockAndLaunchAppIfPossible:(id)a3 withAction:(id)a4
{
  v27[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = [v6 activityIdentifier];
  v8 = [v6 activitySceneDescriptor];

  v9 = [v8 activityDescriptor];
  v10 = [v9 platterTargetBundleIdentifier];

  if (v10)
  {
    v11 = MEMORY[0x277D0AD60];
    v26[0] = *MEMORY[0x277D0ABD0];
    if (v5)
    {
      v25 = v5;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }

    v14 = *MEMORY[0x277D0AC58];
    v27[0] = v12;
    v27[1] = MEMORY[0x277CBEC38];
    v15 = *MEMORY[0x277D0AC70];
    v26[1] = v14;
    v26[2] = v15;
    v27[2] = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v13 = [v11 optionsWithDictionary:v16];

    if (v5)
    {
    }

    v17 = SBLogActivity();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v22 = v7;
      v23 = 2113;
      v24 = v5;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Activity[%{public}@] Sending open application request for %{private}@", buf, 0x16u);
    }

    v18 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __69__SBActivityViewController__unlockAndLaunchAppIfPossible_withAction___block_invoke;
    v19[3] = &unk_2783B49B8;
    v20 = v7;
    [v18 openApplication:v10 withOptions:v13 completion:v19];
  }

  else
  {
    v13 = SBLogActivity();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [SBActivityViewController _unlockAndLaunchAppIfPossible:v7 withAction:v13];
    }
  }
}

void __69__SBActivityViewController__unlockAndLaunchAppIfPossible_withAction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogActivity();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __69__SBActivityViewController__unlockAndLaunchAppIfPossible_withAction___block_invoke_cold_1(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Activity[%{public}@] Open application from banner succeeded.", &v8, 0xCu);
  }
}

- (void)activityHostViewController:(id)a3 requestsLaunchWithAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SBActivityViewController_activityHostViewController_requestsLaunchWithAction___block_invoke;
  block[3] = &unk_2783A8ED8;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)activityHostViewControllerHostShouldCancelTouches:(id)a3
{
  v4 = [(SBActivityViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 activityViewControllerContentRequestsCancellingGesture:self];
  }
}

- (void)activityHostViewController:(id)a3 didSetIdleTimerDisabled:(BOOL)a4
{
  v4 = a4;
  v13 = [(SBActivityViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v13 activityViewController:self didSetIdleTimerDisabled:v4];
  }

  else
  {
    v6 = [(SBActivityViewController *)self activeIdleTimerAssertion];

    if (v4)
    {
      if (!v6)
      {
        v7 = +[SBIdleTimerGlobalCoordinator sharedInstance];
        v8 = MEMORY[0x277CCACA8];
        v9 = [(SBActivityViewController *)self activityItem];
        v10 = [v8 stringWithFormat:@"requested by %@", v9];
        v11 = [v7 acquireIdleTimerDisableAssertionForReason:v10];

        [(SBActivityViewController *)self setActiveIdleTimerAssertion:v11];
      }
    }

    else if (v6)
    {
      v12 = [(SBActivityViewController *)self activeIdleTimerAssertion];
      [v12 invalidate];

      [(SBActivityViewController *)self setActiveIdleTimerAssertion:0];
    }
  }
}

- (void)activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChange:(id)a3
{
  v4 = [(SBActivityViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 activityViewControllerDidUpdateAudioCategoriesDisablingVolumeHUD:self];
  }
}

- (SBActivityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_unlockAndLaunchAppIfPossible:(uint64_t)a1 withAction:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_FAULT, "Activity[%{public}@] Unable to resolve container bundle identifier", &v2, 0xCu);
}

void __69__SBActivityViewController__unlockAndLaunchAppIfPossible_withAction___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Activity[%{public}@] Open application from banner failed: %{public}@", &v4, 0x16u);
}

@end