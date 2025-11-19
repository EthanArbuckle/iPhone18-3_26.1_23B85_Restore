@interface IMAAppPresenter
+ (id)logHandle;
+ (void)loadAppWithIdentifierIfNeeded:(id)a3;
- (BOOL)addSwitcher;
- (BOOL)browserTransitionCoordinatorShouldDismissOnDragSuccess:(id)a3;
- (BOOL)isSwitcherOffscreen;
- (BOOL)presentsStickerPickerInPopover;
- (CGRect)alwaysExpandedAppViewControllerFrame;
- (CGSize)browserTransitionCoordinator:(id)a3 preferredSizeForBrowser:(id)a4;
- (CKAppCardPresentationOverseer)appCardPresentationOverseer;
- (CKBrowserSwitcherViewController)switcherViewController;
- (IMAAppPresenter)init;
- (IMAAppPresenterDelegate)delegate;
- (UIViewController)currentAppViewController;
- (double)switcherHeight;
- (id)appViewControllerPresenter;
- (id)convertStickerToIMASticker:(id)a3;
- (id)currentStickerViewController;
- (id)logHandle;
- (id)transitionsPresentationViewController;
- (int)dragManager:(id)a3 dropAreaForDragTarget:(id)a4;
- (void)_hideCompactBrowserAnimated:(BOOL)a3 completion:(id)a4;
- (void)_presentAppCardWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)_presentAppCardWithBundleIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5;
- (void)animateSwitcherOffscreen:(BOOL)a3 completion:(id)a4;
- (void)appCardOverseerDidDismissAppCard;
- (void)appPresenterDidSelectAppWithIdentifier:(id)a3;
- (void)appPresenterDidSelectAppWithIdentifier:(id)a3 type:(id)a4;
- (void)commitSticker:(id)a3 stickerFrame:(CGRect)a4;
- (void)commitSticker:(id)a3 withDragTarget:(id)a4 draggedSticker:(id)a5;
- (void)convertIMSticker:(id)a3 bakeInEffect:(BOOL)a4 completion:(id)a5;
- (void)dealloc;
- (void)dragManager:(id)a3 draggedItemWithTarget:(id)a4;
- (void)dragManager:(id)a3 overrideDropPointForTarget:(id)a4 completion:(id)a5;
- (void)dragManagerDidBeginDragging:(id)a3;
- (void)dragManagerDidEndDragging:(id)a3;
- (void)notifyDelegateOfSelectedPlugin:(id)a3 type:(id)a4;
- (void)positionSwitcherOffscreen:(BOOL)a3;
- (void)presentAppWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)presentFullScreenModalAppWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)presentPopoverAppWithBundleIdentifier:(id)a3 sourceRect:(CGRect)a4 inView:(id)a5 completion:(id)a6;
- (void)requestPresentationStyleExpanded:(BOOL)a3;
- (void)requestPresentationStyleFullScreenModalForPlugin:(id)a3 preferredContentSize:(CGSize)a4;
- (void)showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5;
- (void)startEditingPayload:(id)a3 dismiss:(BOOL)a4;
- (void)stickerDruidDragEndedWithIMSticker:(id)a3;
- (void)stickerDruidDragStarted;
- (void)switcherViewControllerDidFinishSwitching:(id)a3 toViewController:(id)a4;
- (void)updateAppFrameForRotation;
- (void)updatePopoverWindowLocation:(CGRect)a3 inView:(id)a4 completion:(id)a5;
- (void)updateSwitcherViewFrame;
@end

@implementation IMAAppPresenter

+ (id)logHandle
{
  if (logHandle_onceToken != -1)
  {
    +[IMAAppPresenter logHandle];
  }

  v3 = logHandle_sLogHandle;

  return v3;
}

uint64_t __28__IMAAppPresenter_logHandle__block_invoke()
{
  logHandle_sLogHandle = os_log_create("com.apple.Messages", "iMessageAppsViewService");

  return MEMORY[0x2821F96F8]();
}

- (id)logHandle
{
  v2 = objc_opt_class();

  return [v2 logHandle];
}

- (IMAAppPresenter)init
{
  v8.receiver = self;
  v8.super_class = IMAAppPresenter;
  v2 = [(IMAAppPresenter *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CF9788] sharedInstance];
    v4 = MEMORY[0x277C8A910](@"CKPluginExtensionStateObserver", @"ChatKit");
    if (v4)
    {
      v5 = v4;
      if (objc_opt_respondsToSelector())
      {
        v6 = [v5 sharedInstance];
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CF9788] sharedInstance];
  [v3 invalidateAllActivePlugins];

  v4 = [MEMORY[0x277CF9788] sharedInstance];
  [v4 forceKillRemoteExtensionsWithDelay:0];

  v5.receiver = self;
  v5.super_class = IMAAppPresenter;
  [(IMAAppPresenter *)&v5 dealloc];
}

- (void)appPresenterDidSelectAppWithIdentifier:(id)a3 type:(id)a4
{
  v6 = MEMORY[0x277D18D38];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedInstance];
  v10 = [v9 balloonPluginForBundleID:v8];

  [(IMAAppPresenter *)self notifyDelegateOfSelectedPlugin:v10 type:v7];
}

- (void)appPresenterDidSelectAppWithIdentifier:(id)a3
{
  v4 = MEMORY[0x277D18D38];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 balloonPluginForBundleID:v5];

  [(IMAAppPresenter *)self notifyDelegateOfSelectedPlugin:v7];
}

- (void)notifyDelegateOfSelectedPlugin:(id)a3 type:(id)a4
{
  v12 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v12 extension];
    if (v7)
    {
      if (_os_feature_enabled_impl())
      {
        v8 = v12;
      }

      else
      {
        v8 = v7;
      }

      v9 = [v8 identifier];
    }

    else
    {
      v10 = [v12 appBundle];
      v9 = [v10 bundleIdentifier];
    }
  }

  else
  {
    v9 = [v12 identifier];
  }

  v11 = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 didSelectAppWithBundleIdentifier:v9 type:v6];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v11 didSelectAppWithBundleIdentifier:v9];
  }
}

- (void)presentAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IMAAppPresenter *)self isAppCardsEnabled])
  {
    [(IMAAppPresenter *)self _presentAppCardWithBundleIdentifier:v6 completion:v7];
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [IMAAppPresenter presentAppWithBundleIdentifier:completion:];
    }
  }
}

- (void)_presentAppCardWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(IMAAppPresenter *)self _presentAppCardWithBundleIdentifier:v7 style:[(IMAAppPresenter *)self alwaysPresentAppsExpanded] completion:v6];
}

- (void)_presentAppCardWithBundleIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(IMAAppPresenter *)self appCardPresentationOverseer];
  v11 = [MEMORY[0x277D18D38] sharedInstance];
  v12 = [v11 balloonPluginForBundleID:v9];

  v13 = [v10 updateCurrentBrowserForPlugin:v12 dataSource:0 pluginContext:0];
  v14 = [v13 view];
  [v14 setNeedsLayout];
  [v14 layoutIfNeeded];
  objc_storeStrong(&self->_currentBalloonPlugin, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__IMAAppPresenter__presentAppCardWithBundleIdentifier_style_completion___block_invoke;
  v17[3] = &unk_27A66DD38;
  v17[4] = self;
  v18 = v12;
  v19 = v8;
  v15 = v8;
  v16 = v12;
  [v10 presentCardWithStyle:a4 animated:1 completion:v17];
}

uint64_t __72__IMAAppPresenter__presentAppCardWithBundleIdentifier_style_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) notifyDelegateOfSelectedPlugin:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)presentFullScreenModalAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x277D18D38];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedInstance];
  v12 = [v9 balloonPluginForBundleID:v8];

  v10 = objc_alloc_init(MEMORY[0x277CF97B0]);
  transitionCoordinator = self->_transitionCoordinator;
  self->_transitionCoordinator = v10;

  [(CKBrowserTransitionCoordinator *)self->_transitionCoordinator setSendDelegate:self];
  [(CKBrowserTransitionCoordinator *)self->_transitionCoordinator setDelegate:self];
  [(CKBrowserTransitionCoordinator *)self->_transitionCoordinator presentPluginFullScreenModal:v12 preferredContentSize:1 animated:v7 completion:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
}

- (void)presentPopoverAppWithBundleIdentifier:(id)a3 sourceRect:(CGRect)a4 inView:(id)a5 completion:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [(IMAAppPresenter *)self appCardPresentationOverseer];
  v17 = [MEMORY[0x277D18D38] sharedInstance];
  v18 = [v17 balloonPluginForBundleID:v15];

  v19 = [v16 updateCurrentBrowserForPlugin:v18 dataSource:0 pluginContext:0];
  v20 = [v19 view];
  [v20 setNeedsLayout];
  [v20 layoutIfNeeded];
  objc_storeStrong(&self->_currentBalloonPlugin, v18);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __86__IMAAppPresenter_presentPopoverAppWithBundleIdentifier_sourceRect_inView_completion___block_invoke;
  v23[3] = &unk_27A66DD38;
  v23[4] = self;
  v24 = v18;
  v25 = v13;
  v21 = v13;
  v22 = v18;
  [v16 presentPopoverFromView:v14 sourceRect:v23 completion:{x, y, width, height}];
}

uint64_t __86__IMAAppPresenter_presentPopoverAppWithBundleIdentifier_sourceRect_inView_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) notifyDelegateOfSelectedPlugin:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)updatePopoverWindowLocation:(CGRect)a3 inView:(id)a4 completion:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a5;
  v11 = [(IMAAppPresenter *)self appCardPresentationOverseer];
  [v11 updatePopoverLocation:v10 completion:{x, y, width, height}];
}

- (UIViewController)currentAppViewController
{
  v2 = self->_currentBalloonPlugin;
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([(IMBalloonPlugin *)v2 extension], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v6 = [MEMORY[0x277CF9788] sharedInstance];
    v7 = [(IMBalloonPlugin *)v2 identifier];
    v8 = [v6 existingViewControllerForPluginIdentifier:v7];

    if (objc_opt_respondsToSelector())
    {
      v4 = [v8 remoteViewController];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __60__IMAAppPresenter_hideAppViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  [*(a1 + 32) notifyDelegateOfSelectedPlugin:*(*(a1 + 32) + 16)];
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_hideCompactBrowserAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(IMAAppPresenter *)self switcherViewController];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __58__IMAAppPresenter__hideCompactBrowserAnimated_completion___block_invoke;
  v15 = &unk_27A66DD88;
  v16 = v7;
  v17 = v6;
  v8 = v6;
  v9 = v7;
  v10 = MEMORY[0x277C8AB80](&v12);
  v11 = v10;
  if (v4)
  {
    [(IMAAppPresenter *)self animateSwitcherOffscreen:1 completion:v10, v12, v13, v14, v15, v16, v17];
  }

  else
  {
    (*(v10 + 16))(v10, 1);
  }
}

void __58__IMAAppPresenter__hideCompactBrowserAnimated_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  [v3 setNeedsLayout];
  [*(a1 + 32) willMoveToParentViewController:0];
  [v3 removeFromSuperview];
  [*(a1 + 32) removeFromParentViewController];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (void)updateAppFrameForRotation
{
  [(IMAAppPresenter *)self updateSwitcherViewFrame];
  v4 = [(IMAAppPresenter *)self switcherViewController];
  v3 = [v4 view];
  [v3 layoutIfNeeded];
}

- (id)appViewControllerPresenter
{
  v2 = [(IMAAppPresenter *)self delegate];
  v3 = [v2 dockPresentationViewController];

  return v3;
}

- (double)switcherHeight
{
  [(IMAAppPresenter *)self compactHeight];
  if (v3 != 0.0)
  {
    return v3;
  }

  v4 = [MEMORY[0x277CF97E0] sharedBehaviors];
  [v4 browserSwitcherExpandedGrabberHeaderHeight];
  v6 = v5 + 159.0;

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 _referenceBounds];
  v9 = v8;
  v11 = v10;

  v12 = v9 == 414.0 && v11 == 896.0;
  if (v12 || v9 == 428.0 && v11 == 926.0)
  {
    v6 = v6 + 23.0;
  }

  if ([(IMAAppPresenter *)self isAppCardsEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = [WeakRetained dockPresentationViewController];
    v15 = [v14 view];
    [v15 safeAreaInsets];
    v6 = v6 - v16;
  }

  return v6;
}

- (CKBrowserSwitcherViewController)switcherViewController
{
  switcherViewController = self->_switcherViewController;
  if (!switcherViewController)
  {
    v4 = objc_alloc(MEMORY[0x277CF97A8]);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained dockPresentationViewController];
    v7 = [v4 initWithConversation:0 sendDelegate:self presentingViewController:v6];
    v8 = self->_switcherViewController;
    self->_switcherViewController = v7;

    [(CKBrowserSwitcherViewController *)self->_switcherViewController setDelegate:self];
    v9 = [(CKBrowserSwitcherViewController *)self->_switcherViewController transitionCoordinator];
    transitionCoordinator = self->_transitionCoordinator;
    self->_transitionCoordinator = v9;

    switcherViewController = self->_switcherViewController;
  }

  return switcherViewController;
}

- (CKAppCardPresentationOverseer)appCardPresentationOverseer
{
  appCardPresentationOverseer = self->_appCardPresentationOverseer;
  if (!appCardPresentationOverseer)
  {
    v4 = objc_alloc(MEMORY[0x277CF9778]);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained dockPresentationViewController];
    v7 = [v4 initWithPresentingViewController:v6 sendDelegate:self];
    v8 = self->_appCardPresentationOverseer;
    self->_appCardPresentationOverseer = v7;

    [(CKAppCardPresentationOverseer *)self->_appCardPresentationOverseer setDelegate:self];
    appCardPresentationOverseer = self->_appCardPresentationOverseer;
  }

  return appCardPresentationOverseer;
}

- (BOOL)addSwitcher
{
  v3 = [(IMAAppPresenter *)self switcherViewController];
  v4 = [v3 parentViewController];

  if (!v4)
  {
    v5 = [(IMAAppPresenter *)self appViewControllerPresenter];
    [v5 addChildViewController:v3];

    v6 = [v3 view];
    [v6 setBackgroundColor:0];

    v7 = [v3 contentView];
    [v7 setBackgroundColor:0];

    v8 = [v3 view];
    v9 = [(IMAAppPresenter *)self appViewControllerPresenter];
    v10 = [v9 view];
    [v10 addSubview:v8];

    [(IMAAppPresenter *)self updateSwitcherViewFrame];
    v11 = [(IMAAppPresenter *)self appViewControllerPresenter];
    [v3 didMoveToParentViewController:v11];
  }

  return v4 == 0;
}

- (void)updateSwitcherViewFrame
{
  if (![(IMAAppPresenter *)self isAppCardsEnabled])
  {
    v3 = [(IMAAppPresenter *)self appViewControllerPresenter];
    v4 = [v3 view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(IMAAppPresenter *)self switcherHeight];
    v14 = v13;
    v20.origin.x = v6;
    v20.origin.y = v8;
    v20.size.width = v10;
    v20.size.height = v12;
    v15 = CGRectGetMaxY(v20) - v14;
    v21.origin.x = v6;
    v21.origin.y = v8;
    v21.size.width = v10;
    v21.size.height = v12;
    Width = CGRectGetWidth(v21);
    v18 = [(IMAAppPresenter *)self switcherViewController];
    v17 = [v18 view];
    [v17 setFrame:{0.0, v15, Width, v14}];
  }
}

- (void)animateSwitcherOffscreen:(BOOL)a3 completion:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__IMAAppPresenter_animateSwitcherOffscreen_completion___block_invoke;
  v4[3] = &unk_27A66DDB0;
  v4[4] = self;
  v5 = a3;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v4 usingSpringWithDamping:a4 initialSpringVelocity:0.3 options:0.3 animations:1.0 completion:0.0];
}

- (void)positionSwitcherOffscreen:(BOOL)a3
{
  v4 = 0.0;
  if (!a3)
  {
    [(IMAAppPresenter *)self switcherHeight];
    v4 = v5;
  }

  v6 = [(IMAAppPresenter *)self switcherViewController];
  v7 = [v6 view];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(IMAAppPresenter *)self appViewControllerPresenter];
  v15 = [v14 view];
  [v15 bounds];
  v16 = CGRectGetMaxY(v20) - v4;

  v18 = [(IMAAppPresenter *)self switcherViewController];
  v17 = [v18 view];
  [v17 setFrame:{v9, v16, v11, v13}];
}

- (BOOL)isSwitcherOffscreen
{
  if (![(IMAAppPresenter *)self isAppCompact])
  {
    return 0;
  }

  v3 = [(IMAAppPresenter *)self switcherViewController];
  v4 = [v3 view];
  [v4 frame];
  MinY = CGRectGetMinY(v10);
  v6 = [(IMAAppPresenter *)self appViewControllerPresenter];
  v7 = [v6 view];
  [v7 bounds];
  v8 = MinY >= CGRectGetMaxY(v11);

  return v8;
}

- (void)startEditingPayload:(id)a3 dismiss:(BOOL)a4
{
  v5 = [a3 fileURL];
  if (v5)
  {
    v8 = v5;
    v6 = [[IMASticker alloc] initWithFileURL:v5 stickerName:0 accessibilityLabel:0 representations:0];
    v7 = [(IMAAppPresenter *)self delegate];
    [v7 addSticker:v6];

    v5 = v8;
  }
}

void __56__IMAAppPresenter_dismissAndReloadInputViews_forPlugin___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 appPresenterCardDidDismiss:*(a1 + 32)];
  }
}

void __56__IMAAppPresenter_dismissAndReloadInputViews_forPlugin___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) delegate];
    [v2 appPresenterDidDismissFullscreenModal:*(a1 + 32)];
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = 0;
}

- (void)requestPresentationStyleExpanded:(BOOL)a3
{
  v3 = a3;
  if (![(IMAAppPresenter *)self alwaysPresentAppsExpanded])
  {
    if ([(IMAAppPresenter *)self isAppCardsEnabled])
    {
      v6 = [(IMAAppPresenter *)self appCardPresentationOverseer];
      [v6 requestPresentationStyle:v3];
    }

    else
    {
      v5 = [(IMAAppPresenter *)self logHandle];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [IMAAppPresenter requestPresentationStyleExpanded:];
      }
    }
  }
}

- (void)requestPresentationStyleFullScreenModalForPlugin:(id)a3 preferredContentSize:(CGSize)a4
{
  v5 = MEMORY[0x277D18D38];
  v6 = a3;
  v7 = [v5 sharedInstance];
  v9 = [v7 balloonPluginForBundleID:v6];

  v8 = [(IMAAppPresenter *)self switcherViewController];
  [v8 showBrowserFullscreenModalForPlugin:v9 datasource:0 preferredContentSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
}

- (void)commitSticker:(id)a3 stickerFrame:(CGRect)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__IMAAppPresenter_commitSticker_stickerFrame___block_invoke;
  v4[3] = &unk_27A66DDD8;
  v4[4] = self;
  [(IMAAppPresenter *)self convertIMSticker:a3 bakeInEffect:1 completion:v4];
}

void __46__IMAAppPresenter_commitSticker_stickerFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 delegate];
  [v4 addSticker:v3];
}

- (void)commitSticker:(id)a3 withDragTarget:(id)a4 draggedSticker:(id)a5
{
  v7 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__IMAAppPresenter_commitSticker_withDragTarget_draggedSticker___block_invoke;
  v9[3] = &unk_27A66DE00;
  v10 = v7;
  v11 = self;
  v8 = v7;
  [(IMAAppPresenter *)self convertIMSticker:a3 bakeInEffect:0 completion:v9];
}

void __63__IMAAppPresenter_commitSticker_withDragTarget_draggedSticker___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMADropTarget alloc];
  [*(a1 + 32) screenCoordinate];
  v6 = v5;
  v8 = v7;
  [*(a1 + 32) initialSize];
  v10 = v9;
  v12 = v11;
  [*(a1 + 32) scale];
  v14 = v13;
  [*(a1 + 32) meshScaleFactor];
  v16 = v15;
  [*(a1 + 32) rotation];
  v19 = [(IMADropTarget *)v4 initWithScreenCoordinate:v6 initialSize:v8 scale:v10 meshScaleFactor:v12 rotation:v14, v16, v17];
  v18 = [*(a1 + 40) delegate];
  [v18 addSticker:v3 atDropTarget:v19];
}

- (void)convertIMSticker:(id)a3 bakeInEffect:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 representations];
  v11 = dispatch_group_create();
  v12 = dispatch_get_global_queue(2, 0);
  v13 = [v8 stickerEffectType];
  if (v13)
  {
    v14 = [MEMORY[0x277D78530] effectWithType:v13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__IMAAppPresenter_convertIMSticker_bakeInEffect_completion___block_invoke;
    block[3] = &unk_27A66DE78;
    v23 = a4;
    v17 = v10;
    v18 = v11;
    v19 = v14;
    v20 = self;
    v21 = v8;
    v22 = v9;
    v15 = v14;
    dispatch_async(v12, block);
  }

  else
  {
    v15 = [(IMAAppPresenter *)self convertStickerToIMASticker:v8];
    (*(v9 + 2))(v9, v15);
  }
}

void __60__IMAAppPresenter_convertIMSticker_bakeInEffect_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__IMAAppPresenter_convertIMSticker_bakeInEffect_completion___block_invoke_2;
    v8[3] = &unk_27A66DE50;
    v2 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v2 enumerateObjectsUsingBlock:v8];
  }

  v3 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__IMAAppPresenter_convertIMSticker_bakeInEffect_completion___block_invoke_4;
  block[3] = &unk_27A66DD38;
  v4 = *(a1 + 64);
  block[4] = *(a1 + 56);
  v6 = v4;
  v7 = *(a1 + 72);
  dispatch_group_notify(v3, MEMORY[0x277D85CD0], block);
}

void __60__IMAAppPresenter_convertIMSticker_bakeInEffect_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 role];
  v5 = [v4 isEqualToString:@"com.apple.stickers.role.still"];

  if (v5)
  {
    dispatch_group_enter(*(a1 + 32));
    v6 = objc_alloc(MEMORY[0x277D755B8]);
    v7 = [v3 data];
    v8 = [v6 initWithData:v7];

    v9 = [v3 type];
    v10 = [*MEMORY[0x277CE1E10] identifier];
    v11 = [v9 isEqualToString:v10];

    v12 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__IMAAppPresenter_convertIMSticker_bakeInEffect_completion___block_invoke_3;
    v13[3] = &unk_27A66DE28;
    v14 = v3;
    v16 = v11;
    v15 = *(a1 + 32);
    [v12 applyToImage:v8 completion:v13];
  }
}

void __60__IMAAppPresenter_convertIMSticker_bakeInEffect_completion___block_invoke_3(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    [a2 __ck_pngImageData];
  }

  else
  {
    [a2 __ck_heicsImageData];
  }
  v3 = ;
  [*(a1 + 32) setData:v3];

  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

void __60__IMAAppPresenter_convertIMSticker_bakeInEffect_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) convertStickerToIMASticker:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (id)convertStickerToIMASticker:(id)a3
{
  v3 = a3;
  v4 = [IMASticker alloc];
  v19 = [v3 stickerGUID];
  v18 = [v3 fileURL];
  v17 = [v3 representations];
  v15 = [v3 stickerEffectType];
  if (v15 == -1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "stickerEffectType")}];
  }

  v5 = [v3 externalURI];
  v6 = [v3 stickerName];
  v7 = [v3 accessibilityLabel];
  v8 = [v3 accessibilityName];
  v9 = [v3 searchText];
  v10 = [v3 sanitizedPrompt];
  v11 = [v3 metadata];
  v12 = [v3 attributionInfo];
  v13 = [(IMASticker *)v4 initWithStickerIdentifier:v19 fileURL:v18 representations:v17 effectType:v16 externalURI:v5 stickerName:v6 accessibilityLabel:v7 accessibilityName:v8 searchText:v9 sanitizedPrompt:v10 metadata:v11 ckAttributionInfo:v12];

  if (v15 != -1)
  {
  }

  return v13;
}

- (BOOL)presentsStickerPickerInPopover
{
  v3 = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(IMAAppPresenter *)self delegate];
  }

  else
  {
    [MEMORY[0x277D759A0] mainScreen];
  }
  v4 = ;
  v5 = [v4 traitCollection];

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = (v7 & 0xFFFFFFFFFFFFFFFBLL) == 1 && [v5 horizontalSizeClass] != 1;
  return v8;
}

- (void)stickerDruidDragStarted
{
  v3 = *MEMORY[0x277C8A920]("CKPluginExtensionStateObserverStickerDragStarted", @"ChatKit");
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:v3 object:self];
  }

  else
  {
    v4 = [(IMAAppPresenter *)self logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [IMAAppPresenter stickerDruidDragStarted];
    }
  }

  v5 = objc_alloc_init(IMAStickerPickerPresentationContext);
  [(IMAAppPresenter *)self setSavedStickerPresentationContext:v5];

  v6 = [(IMAAppPresenter *)self appCardPresentationOverseer];
  v7 = [v6 containerViewController];
  v8 = [(IMAAppPresenter *)self savedStickerPresentationContext];
  [v8 setStickerPickerContainer:v7];

  if ([(IMAAppPresenter *)self presentsStickerPickerInPopover])
  {
    v9 = [(IMAAppPresenter *)self appCardPresentationOverseer];
    v10 = [v9 containerViewController];
    v11 = [v10 popoverPresentationController];
    v12 = [v11 sourceView];
    v13 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [v13 setSourceView:v12];

    v14 = [(IMAAppPresenter *)self appCardPresentationOverseer];
    v15 = [v14 containerViewController];
    v16 = [v15 popoverPresentationController];
    [v16 sourceRect];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [v25 setSourceRect:{v18, v20, v22, v24}];

    v26 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [v26 setStyle:1];
    v27 = &__block_literal_global_289;
  }

  else
  {
    v28 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [v28 setSourceView:0];

    v29 = *MEMORY[0x277CBF3A0];
    v30 = *(MEMORY[0x277CBF3A0] + 8);
    v31 = *(MEMORY[0x277CBF3A0] + 16);
    v32 = *(MEMORY[0x277CBF3A0] + 24);
    v33 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [v33 setSourceRect:{v29, v30, v31, v32}];

    v26 = [(IMAAppPresenter *)self appCardPresentationOverseer];
    v34 = [v26 isExpanded];
    v35 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [v35 setStyle:v34];

    v27 = &__block_literal_global_291;
  }

  v36 = [(IMAAppPresenter *)self appCardPresentationOverseer];
  [v36 dismissCardAnimated:1 completion:v27];
}

- (void)stickerDruidDragEndedWithIMSticker:(id)a3
{
  v4 = a3;
  v5 = [(IMAAppPresenter *)self appCardPresentationOverseer];
  if ([v5 isPresentingCard])
  {
    v6 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [v6 setStickerForDeferredRePresentation:v4];

    v7 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [v7 setDeferredPresentation:1];

    goto LABEL_15;
  }

  [MEMORY[0x277CF97B8] donateStickerToRecents:v4];
  v8 = IMStickersExtensionIdentifier();
  v9 = IMBalloonExtensionIDWithSuffix();

  v10 = [(IMAAppPresenter *)self savedStickerPresentationContext];
  [v10 setStickerPickerContainer:0];

  v11 = [(IMAAppPresenter *)self presentsStickerPickerInPopover];
  v12 = [(IMAAppPresenter *)self savedStickerPresentationContext];
  v13 = v12;
  if (!v11)
  {
    [(IMAAppPresenter *)self _presentAppCardWithBundleIdentifier:v9 style:[v12 style] completion:&__block_literal_global_296];
LABEL_9:

    goto LABEL_10;
  }

  v14 = [v12 sourceView];

  if (!v14)
  {
    v13 = [(IMAAppPresenter *)self logHandle];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [IMAAppPresenter stickerDruidDragEndedWithIMSticker:];
    }

    goto LABEL_9;
  }

  v15 = [(IMAAppPresenter *)self savedStickerPresentationContext];
  v16 = [v15 sourceView];

  v17 = [(IMAAppPresenter *)self savedStickerPresentationContext];
  [v17 sourceRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [(IMAAppPresenter *)self presentPopoverAppWithBundleIdentifier:v9 sourceRect:v16 inView:&__block_literal_global_294 completion:v19, v21, v23, v25];
LABEL_10:
  v26 = *MEMORY[0x277C8A920]("CKPluginExtensionStateObserverStickerDragEnded", @"ChatKit");
  if (v26)
  {
    v27 = [MEMORY[0x277CCAB98] defaultCenter];
    [v27 postNotificationName:v26 object:self];
  }

  else
  {
    v27 = [(IMAAppPresenter *)self logHandle];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [IMAAppPresenter stickerDruidDragEndedWithIMSticker:];
    }
  }

LABEL_15:
}

- (void)showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5
{
  v9 = a5;
  if ([a3 isEqualToString:*MEMORY[0x277D19718]])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"itms-appss://apps.apple.com/genre/ios-stickers/id6025"];
    v7 = [MEMORY[0x277D75128] sharedApplication];
    [v7 openURL:v6];
  }

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
    v8 = v9;
  }
}

- (void)dragManagerDidBeginDragging:(id)a3
{
  v4 = [MEMORY[0x277CF97C0] sharedTimer];
  [v4 setShouldStopWhenBackgrounded:0];

  if ([(IMAAppPresenter *)self hidesCompactAppForStickerDrag]&& [(IMAAppPresenter *)self isAppCompact])
  {
    [(IMAAppPresenter *)self animateSwitcherOffscreen:1 completion:0];
  }

  v5 = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 didBeginDraggingSticker];
  }
}

- (void)dragManager:(id)a3 draggedItemWithTarget:(id)a4
{
  v36 = a3;
  v6 = a4;
  v7 = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [IMADropTarget alloc];
    [v6 screenCoordinate];
    v10 = v9;
    v12 = v11;
    [v6 initialSize];
    v14 = v13;
    v16 = v15;
    [v6 scale];
    v18 = v17;
    [v6 meshScaleFactor];
    v20 = v19;
    [v6 rotation];
    v22 = [(IMADropTarget *)v8 initWithScreenCoordinate:v10 initialSize:v12 scale:v14 meshScaleFactor:v16 rotation:v18, v20, v21];
    v23 = [(IMAAppPresenter *)self switcherViewController];
    v24 = [v23 view];
    [v24 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [v6 screenCoordinate];
    v38.x = v33;
    v38.y = v34;
    v39.origin.x = v26;
    v39.origin.y = v28;
    v39.size.width = v30;
    v39.size.height = v32;
    v35 = CGRectContainsPoint(v39, v38);

    [v7 didDragStickerToTarget:v22 outsideSwitcher:v35 ^ 1];
    [v36 setPlusButtonHidden:v35];
  }
}

- (void)dragManagerDidEndDragging:(id)a3
{
  v4 = [MEMORY[0x277CF97C0] sharedTimer];
  [v4 setShouldStopWhenBackgrounded:1];

  if ([(IMAAppPresenter *)self hidesCompactAppForStickerDrag]&& [(IMAAppPresenter *)self isSwitcherOffscreen])
  {
    [(IMAAppPresenter *)self animateSwitcherOffscreen:0 completion:0];
  }

  v5 = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 didEndDraggingSticker];
  }
}

- (int)dragManager:(id)a3 dropAreaForDragTarget:(id)a4
{
  v5 = a4;
  if (![(IMAAppPresenter *)self isAppCompact])
  {
    goto LABEL_5;
  }

  if ([(IMAAppPresenter *)self isSwitcherOffscreen])
  {
    goto LABEL_5;
  }

  v6 = [(IMAAppPresenter *)self switcherViewController];
  v7 = [v6 view];

  v8 = [v7 superview];
  [v7 frame];
  [v8 convertRect:0 toView:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v5 screenCoordinate];
  v37.x = v17;
  v37.y = v18;
  v38.origin.x = v10;
  v38.origin.y = v12;
  v38.size.width = v14;
  v38.size.height = v16;
  LOBYTE(v8) = CGRectContainsPoint(v38, v37);

  if (v8)
  {
    v19 = 3;
  }

  else
  {
LABEL_5:
    v20 = [IMADropTarget alloc];
    [v5 screenCoordinate];
    v22 = v21;
    v24 = v23;
    [v5 initialSize];
    v26 = v25;
    v28 = v27;
    [v5 scale];
    v30 = v29;
    [v5 meshScaleFactor];
    v32 = v31;
    [v5 rotation];
    v34 = [(IMADropTarget *)v20 initWithScreenCoordinate:v22 initialSize:v24 scale:v26 meshScaleFactor:v28 rotation:v30, v32, v33];
    v35 = [(IMAAppPresenter *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v35 isDropTargetValid:v34] & 1) == 0)
    {
      if ([(IMAAppPresenter *)self hidesCompactAppForStickerDrag]&& [(IMAAppPresenter *)self isAppCompact])
      {
        [(IMAAppPresenter *)self animateSwitcherOffscreen:0 completion:0];
      }

      v19 = 1;
    }

    else
    {
      v19 = 5;
    }
  }

  return v19;
}

- (void)dragManager:(id)a3 overrideDropPointForTarget:(id)a4 completion:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 overrideDropPointWithCompletion:v7];
  }

  else
  {
    [v9 screenCoordinate];
    v7[2](v7);
  }
}

- (CGSize)browserTransitionCoordinator:(id)a3 preferredSizeForBrowser:(id)a4
{
  if ([(IMAAppPresenter *)self alwaysPresentAppsExpanded:a3])
  {
    [(IMAAppPresenter *)self alwaysExpandedAppViewControllerFrame];
    v6 = v5;
    v8 = v7;
    v9 = [MEMORY[0x277CF97E0] sharedBehaviors];
    [v9 browserSwitcherExpandedGrabberHeaderHeight];
    v11 = v8 - v10;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v12 = v6;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (BOOL)browserTransitionCoordinatorShouldDismissOnDragSuccess:(id)a3
{
  v3 = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 expandedAppShouldDismissOnDragSuccess];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)transitionsPresentationViewController
{
  v2 = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 dockPresentationViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)appCardOverseerDidDismissAppCard
{
  v3 = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 appPresenterCardDidDismiss:self];
  }

  v4 = [(IMAAppPresenter *)self savedStickerPresentationContext];
  v5 = [v4 stickerForDeferredRePresentation];

  v6 = [(IMAAppPresenter *)self savedStickerPresentationContext];
  v7 = [v6 deferredPresentation];

  if (v7)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __51__IMAAppPresenter_appCardOverseerDidDismissAppCard__block_invoke;
    v13 = &unk_27A66DEA0;
    v14 = self;
    v15 = v5;
    dispatch_async(MEMORY[0x277D85CD0], &v10);
    v8 = [(IMAAppPresenter *)self savedStickerPresentationContext:v10];
    [v8 setStickerForDeferredRePresentation:0];

    v9 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [v9 setDeferredPresentation:0];
  }
}

- (CGRect)alwaysExpandedAppViewControllerFrame
{
  if (![(IMAAppPresenter *)self alwaysPresentAppsExpanded])
  {
    goto LABEL_5;
  }

  v3 = [(IMAAppPresenter *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_5:
    v9 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v7 = *(MEMORY[0x277CBF3A0] + 24);
    goto LABEL_6;
  }

  [v3 expandedAppViewControllerSize];
  v5 = v4;
  v7 = v6;

  v8 = 0.0;
  v9 = 0.0;
LABEL_6:
  v10 = v5;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

- (void)switcherViewControllerDidFinishSwitching:(id)a3 toViewController:(id)a4
{
  p_currentBalloonPlugin = [a4 balloonPlugin];
  v6 = p_currentBalloonPlugin;
  if (!self->_isTransitioningPresentationStyles)
  {
    p_currentBalloonPlugin = &self->_currentBalloonPlugin;
    if (self->_currentBalloonPlugin != v6)
    {
      v7 = v6;
      objc_storeStrong(p_currentBalloonPlugin, v6);
      p_currentBalloonPlugin = [(IMAAppPresenter *)self notifyDelegateOfSelectedPlugin:self->_currentBalloonPlugin];
      v6 = v7;
    }
  }

  MEMORY[0x2821F96F8](p_currentBalloonPlugin, v6);
}

- (IMAAppPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)loadAppWithIdentifierIfNeeded:(id)a3
{
  v3 = MEMORY[0x277D18D38];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 loadExtensionWithIdentifierIfNeeded:v4];
}

- (id)currentStickerViewController
{
  if ([(IMAAppPresenter *)self isAppCardsEnabled])
  {
    v3 = [(IMAAppPresenter *)self appCardPresentationOverseer];
    v4 = [v3 browserViewController];
LABEL_8:
    v6 = v4;

    goto LABEL_9;
  }

  if (![(IMAAppPresenter *)self alwaysPresentAppsExpanded])
  {
    v3 = [(IMAAppPresenter *)self switcherViewController];
    v4 = [v3 currentViewController];
    goto LABEL_8;
  }

  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [IMAAppPresenter(Stickers) currentStickerViewController];
  }

  v6 = 0;
LABEL_9:

  return v6;
}

@end