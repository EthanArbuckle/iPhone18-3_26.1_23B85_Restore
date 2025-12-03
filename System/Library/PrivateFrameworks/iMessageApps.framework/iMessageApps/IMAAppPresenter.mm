@interface IMAAppPresenter
+ (id)logHandle;
+ (void)loadAppWithIdentifierIfNeeded:(id)needed;
- (BOOL)addSwitcher;
- (BOOL)browserTransitionCoordinatorShouldDismissOnDragSuccess:(id)success;
- (BOOL)isSwitcherOffscreen;
- (BOOL)presentsStickerPickerInPopover;
- (CGRect)alwaysExpandedAppViewControllerFrame;
- (CGSize)browserTransitionCoordinator:(id)coordinator preferredSizeForBrowser:(id)browser;
- (CKAppCardPresentationOverseer)appCardPresentationOverseer;
- (CKBrowserSwitcherViewController)switcherViewController;
- (IMAAppPresenter)init;
- (IMAAppPresenterDelegate)delegate;
- (UIViewController)currentAppViewController;
- (double)switcherHeight;
- (id)appViewControllerPresenter;
- (id)convertStickerToIMASticker:(id)sticker;
- (id)currentStickerViewController;
- (id)logHandle;
- (id)transitionsPresentationViewController;
- (int)dragManager:(id)manager dropAreaForDragTarget:(id)target;
- (void)_hideCompactBrowserAnimated:(BOOL)animated completion:(id)completion;
- (void)_presentAppCardWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)_presentAppCardWithBundleIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion;
- (void)animateSwitcherOffscreen:(BOOL)offscreen completion:(id)completion;
- (void)appCardOverseerDidDismissAppCard;
- (void)appPresenterDidSelectAppWithIdentifier:(id)identifier;
- (void)appPresenterDidSelectAppWithIdentifier:(id)identifier type:(id)type;
- (void)commitSticker:(id)sticker stickerFrame:(CGRect)frame;
- (void)commitSticker:(id)sticker withDragTarget:(id)target draggedSticker:(id)draggedSticker;
- (void)convertIMSticker:(id)sticker bakeInEffect:(BOOL)effect completion:(id)completion;
- (void)dealloc;
- (void)dragManager:(id)manager draggedItemWithTarget:(id)target;
- (void)dragManager:(id)manager overrideDropPointForTarget:(id)target completion:(id)completion;
- (void)dragManagerDidBeginDragging:(id)dragging;
- (void)dragManagerDidEndDragging:(id)dragging;
- (void)notifyDelegateOfSelectedPlugin:(id)plugin type:(id)type;
- (void)positionSwitcherOffscreen:(BOOL)offscreen;
- (void)presentAppWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)presentFullScreenModalAppWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)presentPopoverAppWithBundleIdentifier:(id)identifier sourceRect:(CGRect)rect inView:(id)view completion:(id)completion;
- (void)requestPresentationStyleExpanded:(BOOL)expanded;
- (void)requestPresentationStyleFullScreenModalForPlugin:(id)plugin preferredContentSize:(CGSize)size;
- (void)showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion;
- (void)startEditingPayload:(id)payload dismiss:(BOOL)dismiss;
- (void)stickerDruidDragEndedWithIMSticker:(id)sticker;
- (void)stickerDruidDragStarted;
- (void)switcherViewControllerDidFinishSwitching:(id)switching toViewController:(id)controller;
- (void)updateAppFrameForRotation;
- (void)updatePopoverWindowLocation:(CGRect)location inView:(id)view completion:(id)completion;
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
    mEMORY[0x277CF9788] = [MEMORY[0x277CF9788] sharedInstance];
    v4 = MEMORY[0x277C8A910](@"CKPluginExtensionStateObserver", @"ChatKit");
    if (v4)
    {
      v5 = v4;
      if (objc_opt_respondsToSelector())
      {
        sharedInstance = [v5 sharedInstance];
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  mEMORY[0x277CF9788] = [MEMORY[0x277CF9788] sharedInstance];
  [mEMORY[0x277CF9788] invalidateAllActivePlugins];

  mEMORY[0x277CF9788]2 = [MEMORY[0x277CF9788] sharedInstance];
  [mEMORY[0x277CF9788]2 forceKillRemoteExtensionsWithDelay:0];

  v5.receiver = self;
  v5.super_class = IMAAppPresenter;
  [(IMAAppPresenter *)&v5 dealloc];
}

- (void)appPresenterDidSelectAppWithIdentifier:(id)identifier type:(id)type
{
  v6 = MEMORY[0x277D18D38];
  typeCopy = type;
  identifierCopy = identifier;
  sharedInstance = [v6 sharedInstance];
  v10 = [sharedInstance balloonPluginForBundleID:identifierCopy];

  [(IMAAppPresenter *)self notifyDelegateOfSelectedPlugin:v10 type:typeCopy];
}

- (void)appPresenterDidSelectAppWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x277D18D38];
  identifierCopy = identifier;
  sharedInstance = [v4 sharedInstance];
  v7 = [sharedInstance balloonPluginForBundleID:identifierCopy];

  [(IMAAppPresenter *)self notifyDelegateOfSelectedPlugin:v7];
}

- (void)notifyDelegateOfSelectedPlugin:(id)plugin type:(id)type
{
  pluginCopy = plugin;
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    extension = [pluginCopy extension];
    if (extension)
    {
      if (_os_feature_enabled_impl())
      {
        v8 = pluginCopy;
      }

      else
      {
        v8 = extension;
      }

      identifier = [v8 identifier];
    }

    else
    {
      appBundle = [pluginCopy appBundle];
      identifier = [appBundle bundleIdentifier];
    }
  }

  else
  {
    identifier = [pluginCopy identifier];
  }

  delegate = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didSelectAppWithBundleIdentifier:identifier type:typeCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate didSelectAppWithBundleIdentifier:identifier];
  }
}

- (void)presentAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(IMAAppPresenter *)self isAppCardsEnabled])
  {
    [(IMAAppPresenter *)self _presentAppCardWithBundleIdentifier:identifierCopy completion:completionCopy];
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

- (void)_presentAppCardWithBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  [(IMAAppPresenter *)self _presentAppCardWithBundleIdentifier:identifierCopy style:[(IMAAppPresenter *)self alwaysPresentAppsExpanded] completion:completionCopy];
}

- (void)_presentAppCardWithBundleIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  appCardPresentationOverseer = [(IMAAppPresenter *)self appCardPresentationOverseer];
  mEMORY[0x277D18D38] = [MEMORY[0x277D18D38] sharedInstance];
  v12 = [mEMORY[0x277D18D38] balloonPluginForBundleID:identifierCopy];

  v13 = [appCardPresentationOverseer updateCurrentBrowserForPlugin:v12 dataSource:0 pluginContext:0];
  view = [v13 view];
  [view setNeedsLayout];
  [view layoutIfNeeded];
  objc_storeStrong(&self->_currentBalloonPlugin, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__IMAAppPresenter__presentAppCardWithBundleIdentifier_style_completion___block_invoke;
  v17[3] = &unk_27A66DD38;
  v17[4] = self;
  v18 = v12;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = v12;
  [appCardPresentationOverseer presentCardWithStyle:style animated:1 completion:v17];
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

- (void)presentFullScreenModalAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v6 = MEMORY[0x277D18D38];
  completionCopy = completion;
  identifierCopy = identifier;
  sharedInstance = [v6 sharedInstance];
  v12 = [sharedInstance balloonPluginForBundleID:identifierCopy];

  v10 = objc_alloc_init(MEMORY[0x277CF97B0]);
  transitionCoordinator = self->_transitionCoordinator;
  self->_transitionCoordinator = v10;

  [(CKBrowserTransitionCoordinator *)self->_transitionCoordinator setSendDelegate:self];
  [(CKBrowserTransitionCoordinator *)self->_transitionCoordinator setDelegate:self];
  [(CKBrowserTransitionCoordinator *)self->_transitionCoordinator presentPluginFullScreenModal:v12 preferredContentSize:1 animated:completionCopy completion:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
}

- (void)presentPopoverAppWithBundleIdentifier:(id)identifier sourceRect:(CGRect)rect inView:(id)view completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  viewCopy = view;
  identifierCopy = identifier;
  appCardPresentationOverseer = [(IMAAppPresenter *)self appCardPresentationOverseer];
  mEMORY[0x277D18D38] = [MEMORY[0x277D18D38] sharedInstance];
  v18 = [mEMORY[0x277D18D38] balloonPluginForBundleID:identifierCopy];

  v19 = [appCardPresentationOverseer updateCurrentBrowserForPlugin:v18 dataSource:0 pluginContext:0];
  view = [v19 view];
  [view setNeedsLayout];
  [view layoutIfNeeded];
  objc_storeStrong(&self->_currentBalloonPlugin, v18);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __86__IMAAppPresenter_presentPopoverAppWithBundleIdentifier_sourceRect_inView_completion___block_invoke;
  v23[3] = &unk_27A66DD38;
  v23[4] = self;
  v24 = v18;
  v25 = completionCopy;
  v21 = completionCopy;
  v22 = v18;
  [appCardPresentationOverseer presentPopoverFromView:viewCopy sourceRect:v23 completion:{x, y, width, height}];
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

- (void)updatePopoverWindowLocation:(CGRect)location inView:(id)view completion:(id)completion
{
  height = location.size.height;
  width = location.size.width;
  y = location.origin.y;
  x = location.origin.x;
  completionCopy = completion;
  appCardPresentationOverseer = [(IMAAppPresenter *)self appCardPresentationOverseer];
  [appCardPresentationOverseer updatePopoverLocation:completionCopy completion:{x, y, width, height}];
}

- (UIViewController)currentAppViewController
{
  v2 = self->_currentBalloonPlugin;
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([(IMBalloonPlugin *)v2 extension], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    mEMORY[0x277CF9788] = [MEMORY[0x277CF9788] sharedInstance];
    identifier = [(IMBalloonPlugin *)v2 identifier];
    v8 = [mEMORY[0x277CF9788] existingViewControllerForPluginIdentifier:identifier];

    if (objc_opt_respondsToSelector())
    {
      remoteViewController = [v8 remoteViewController];
    }

    else
    {
      remoteViewController = 0;
    }
  }

  else
  {
    remoteViewController = 0;
  }

  return remoteViewController;
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

- (void)_hideCompactBrowserAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  switcherViewController = [(IMAAppPresenter *)self switcherViewController];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __58__IMAAppPresenter__hideCompactBrowserAnimated_completion___block_invoke;
  v15 = &unk_27A66DD88;
  v16 = switcherViewController;
  v17 = completionCopy;
  v8 = completionCopy;
  v9 = switcherViewController;
  v10 = MEMORY[0x277C8AB80](&v12);
  v11 = v10;
  if (animatedCopy)
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
  switcherViewController = [(IMAAppPresenter *)self switcherViewController];
  view = [switcherViewController view];
  [view layoutIfNeeded];
}

- (id)appViewControllerPresenter
{
  delegate = [(IMAAppPresenter *)self delegate];
  dockPresentationViewController = [delegate dockPresentationViewController];

  return dockPresentationViewController;
}

- (double)switcherHeight
{
  [(IMAAppPresenter *)self compactHeight];
  if (v3 != 0.0)
  {
    return v3;
  }

  mEMORY[0x277CF97E0] = [MEMORY[0x277CF97E0] sharedBehaviors];
  [mEMORY[0x277CF97E0] browserSwitcherExpandedGrabberHeaderHeight];
  v6 = v5 + 159.0;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
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
    dockPresentationViewController = [WeakRetained dockPresentationViewController];
    view = [dockPresentationViewController view];
    [view safeAreaInsets];
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
    dockPresentationViewController = [WeakRetained dockPresentationViewController];
    v7 = [v4 initWithConversation:0 sendDelegate:self presentingViewController:dockPresentationViewController];
    v8 = self->_switcherViewController;
    self->_switcherViewController = v7;

    [(CKBrowserSwitcherViewController *)self->_switcherViewController setDelegate:self];
    transitionCoordinator = [(CKBrowserSwitcherViewController *)self->_switcherViewController transitionCoordinator];
    transitionCoordinator = self->_transitionCoordinator;
    self->_transitionCoordinator = transitionCoordinator;

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
    dockPresentationViewController = [WeakRetained dockPresentationViewController];
    v7 = [v4 initWithPresentingViewController:dockPresentationViewController sendDelegate:self];
    v8 = self->_appCardPresentationOverseer;
    self->_appCardPresentationOverseer = v7;

    [(CKAppCardPresentationOverseer *)self->_appCardPresentationOverseer setDelegate:self];
    appCardPresentationOverseer = self->_appCardPresentationOverseer;
  }

  return appCardPresentationOverseer;
}

- (BOOL)addSwitcher
{
  switcherViewController = [(IMAAppPresenter *)self switcherViewController];
  parentViewController = [switcherViewController parentViewController];

  if (!parentViewController)
  {
    appViewControllerPresenter = [(IMAAppPresenter *)self appViewControllerPresenter];
    [appViewControllerPresenter addChildViewController:switcherViewController];

    view = [switcherViewController view];
    [view setBackgroundColor:0];

    contentView = [switcherViewController contentView];
    [contentView setBackgroundColor:0];

    view2 = [switcherViewController view];
    appViewControllerPresenter2 = [(IMAAppPresenter *)self appViewControllerPresenter];
    view3 = [appViewControllerPresenter2 view];
    [view3 addSubview:view2];

    [(IMAAppPresenter *)self updateSwitcherViewFrame];
    appViewControllerPresenter3 = [(IMAAppPresenter *)self appViewControllerPresenter];
    [switcherViewController didMoveToParentViewController:appViewControllerPresenter3];
  }

  return parentViewController == 0;
}

- (void)updateSwitcherViewFrame
{
  if (![(IMAAppPresenter *)self isAppCardsEnabled])
  {
    appViewControllerPresenter = [(IMAAppPresenter *)self appViewControllerPresenter];
    view = [appViewControllerPresenter view];
    [view bounds];
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
    switcherViewController = [(IMAAppPresenter *)self switcherViewController];
    view2 = [switcherViewController view];
    [view2 setFrame:{0.0, v15, Width, v14}];
  }
}

- (void)animateSwitcherOffscreen:(BOOL)offscreen completion:(id)completion
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__IMAAppPresenter_animateSwitcherOffscreen_completion___block_invoke;
  v4[3] = &unk_27A66DDB0;
  v4[4] = self;
  offscreenCopy = offscreen;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v4 usingSpringWithDamping:completion initialSpringVelocity:0.3 options:0.3 animations:1.0 completion:0.0];
}

- (void)positionSwitcherOffscreen:(BOOL)offscreen
{
  v4 = 0.0;
  if (!offscreen)
  {
    [(IMAAppPresenter *)self switcherHeight];
    v4 = v5;
  }

  switcherViewController = [(IMAAppPresenter *)self switcherViewController];
  view = [switcherViewController view];
  [view frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  appViewControllerPresenter = [(IMAAppPresenter *)self appViewControllerPresenter];
  view2 = [appViewControllerPresenter view];
  [view2 bounds];
  v16 = CGRectGetMaxY(v20) - v4;

  switcherViewController2 = [(IMAAppPresenter *)self switcherViewController];
  view3 = [switcherViewController2 view];
  [view3 setFrame:{v9, v16, v11, v13}];
}

- (BOOL)isSwitcherOffscreen
{
  if (![(IMAAppPresenter *)self isAppCompact])
  {
    return 0;
  }

  switcherViewController = [(IMAAppPresenter *)self switcherViewController];
  view = [switcherViewController view];
  [view frame];
  MinY = CGRectGetMinY(v10);
  appViewControllerPresenter = [(IMAAppPresenter *)self appViewControllerPresenter];
  view2 = [appViewControllerPresenter view];
  [view2 bounds];
  v8 = MinY >= CGRectGetMaxY(v11);

  return v8;
}

- (void)startEditingPayload:(id)payload dismiss:(BOOL)dismiss
{
  fileURL = [payload fileURL];
  if (fileURL)
  {
    v8 = fileURL;
    v6 = [[IMASticker alloc] initWithFileURL:fileURL stickerName:0 accessibilityLabel:0 representations:0];
    delegate = [(IMAAppPresenter *)self delegate];
    [delegate addSticker:v6];

    fileURL = v8;
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

- (void)requestPresentationStyleExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  if (![(IMAAppPresenter *)self alwaysPresentAppsExpanded])
  {
    if ([(IMAAppPresenter *)self isAppCardsEnabled])
    {
      appCardPresentationOverseer = [(IMAAppPresenter *)self appCardPresentationOverseer];
      [appCardPresentationOverseer requestPresentationStyle:expandedCopy];
    }

    else
    {
      logHandle = [(IMAAppPresenter *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [IMAAppPresenter requestPresentationStyleExpanded:];
      }
    }
  }
}

- (void)requestPresentationStyleFullScreenModalForPlugin:(id)plugin preferredContentSize:(CGSize)size
{
  v5 = MEMORY[0x277D18D38];
  pluginCopy = plugin;
  sharedInstance = [v5 sharedInstance];
  v9 = [sharedInstance balloonPluginForBundleID:pluginCopy];

  switcherViewController = [(IMAAppPresenter *)self switcherViewController];
  [switcherViewController showBrowserFullscreenModalForPlugin:v9 datasource:0 preferredContentSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
}

- (void)commitSticker:(id)sticker stickerFrame:(CGRect)frame
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__IMAAppPresenter_commitSticker_stickerFrame___block_invoke;
  v4[3] = &unk_27A66DDD8;
  v4[4] = self;
  [(IMAAppPresenter *)self convertIMSticker:sticker bakeInEffect:1 completion:v4];
}

void __46__IMAAppPresenter_commitSticker_stickerFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 delegate];
  [v4 addSticker:v3];
}

- (void)commitSticker:(id)sticker withDragTarget:(id)target draggedSticker:(id)draggedSticker
{
  targetCopy = target;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__IMAAppPresenter_commitSticker_withDragTarget_draggedSticker___block_invoke;
  v9[3] = &unk_27A66DE00;
  v10 = targetCopy;
  selfCopy = self;
  v8 = targetCopy;
  [(IMAAppPresenter *)self convertIMSticker:sticker bakeInEffect:0 completion:v9];
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

- (void)convertIMSticker:(id)sticker bakeInEffect:(BOOL)effect completion:(id)completion
{
  stickerCopy = sticker;
  completionCopy = completion;
  representations = [stickerCopy representations];
  v11 = dispatch_group_create();
  v12 = dispatch_get_global_queue(2, 0);
  stickerEffectType = [stickerCopy stickerEffectType];
  if (stickerEffectType)
  {
    v14 = [MEMORY[0x277D78530] effectWithType:stickerEffectType];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__IMAAppPresenter_convertIMSticker_bakeInEffect_completion___block_invoke;
    block[3] = &unk_27A66DE78;
    effectCopy = effect;
    v17 = representations;
    v18 = v11;
    v19 = v14;
    selfCopy = self;
    v21 = stickerCopy;
    v22 = completionCopy;
    v15 = v14;
    dispatch_async(v12, block);
  }

  else
  {
    v15 = [(IMAAppPresenter *)self convertStickerToIMASticker:stickerCopy];
    (*(completionCopy + 2))(completionCopy, v15);
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

- (id)convertStickerToIMASticker:(id)sticker
{
  stickerCopy = sticker;
  v4 = [IMASticker alloc];
  stickerGUID = [stickerCopy stickerGUID];
  fileURL = [stickerCopy fileURL];
  representations = [stickerCopy representations];
  stickerEffectType = [stickerCopy stickerEffectType];
  if (stickerEffectType == -1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(stickerCopy, "stickerEffectType")}];
  }

  externalURI = [stickerCopy externalURI];
  stickerName = [stickerCopy stickerName];
  accessibilityLabel = [stickerCopy accessibilityLabel];
  accessibilityName = [stickerCopy accessibilityName];
  searchText = [stickerCopy searchText];
  sanitizedPrompt = [stickerCopy sanitizedPrompt];
  metadata = [stickerCopy metadata];
  attributionInfo = [stickerCopy attributionInfo];
  v13 = [(IMASticker *)v4 initWithStickerIdentifier:stickerGUID fileURL:fileURL representations:representations effectType:v16 externalURI:externalURI stickerName:stickerName accessibilityLabel:accessibilityLabel accessibilityName:accessibilityName searchText:searchText sanitizedPrompt:sanitizedPrompt metadata:metadata ckAttributionInfo:attributionInfo];

  if (stickerEffectType != -1)
  {
  }

  return v13;
}

- (BOOL)presentsStickerPickerInPopover
{
  delegate = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(IMAAppPresenter *)self delegate];
  }

  else
  {
    [MEMORY[0x277D759A0] mainScreen];
  }
  v4 = ;
  traitCollection = [v4 traitCollection];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v8 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && [traitCollection horizontalSizeClass] != 1;
  return v8;
}

- (void)stickerDruidDragStarted
{
  v3 = *MEMORY[0x277C8A920]("CKPluginExtensionStateObserverStickerDragStarted", @"ChatKit");
  if (v3)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:v3 object:self];
  }

  else
  {
    defaultCenter = [(IMAAppPresenter *)self logHandle];
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
    {
      [IMAAppPresenter stickerDruidDragStarted];
    }
  }

  v5 = objc_alloc_init(IMAStickerPickerPresentationContext);
  [(IMAAppPresenter *)self setSavedStickerPresentationContext:v5];

  appCardPresentationOverseer = [(IMAAppPresenter *)self appCardPresentationOverseer];
  containerViewController = [appCardPresentationOverseer containerViewController];
  savedStickerPresentationContext = [(IMAAppPresenter *)self savedStickerPresentationContext];
  [savedStickerPresentationContext setStickerPickerContainer:containerViewController];

  if ([(IMAAppPresenter *)self presentsStickerPickerInPopover])
  {
    appCardPresentationOverseer2 = [(IMAAppPresenter *)self appCardPresentationOverseer];
    containerViewController2 = [appCardPresentationOverseer2 containerViewController];
    popoverPresentationController = [containerViewController2 popoverPresentationController];
    sourceView = [popoverPresentationController sourceView];
    savedStickerPresentationContext2 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [savedStickerPresentationContext2 setSourceView:sourceView];

    appCardPresentationOverseer3 = [(IMAAppPresenter *)self appCardPresentationOverseer];
    containerViewController3 = [appCardPresentationOverseer3 containerViewController];
    popoverPresentationController2 = [containerViewController3 popoverPresentationController];
    [popoverPresentationController2 sourceRect];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    savedStickerPresentationContext3 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [savedStickerPresentationContext3 setSourceRect:{v18, v20, v22, v24}];

    savedStickerPresentationContext4 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [savedStickerPresentationContext4 setStyle:1];
    v27 = &__block_literal_global_289;
  }

  else
  {
    savedStickerPresentationContext5 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [savedStickerPresentationContext5 setSourceView:0];

    v29 = *MEMORY[0x277CBF3A0];
    v30 = *(MEMORY[0x277CBF3A0] + 8);
    v31 = *(MEMORY[0x277CBF3A0] + 16);
    v32 = *(MEMORY[0x277CBF3A0] + 24);
    savedStickerPresentationContext6 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [savedStickerPresentationContext6 setSourceRect:{v29, v30, v31, v32}];

    savedStickerPresentationContext4 = [(IMAAppPresenter *)self appCardPresentationOverseer];
    isExpanded = [savedStickerPresentationContext4 isExpanded];
    savedStickerPresentationContext7 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [savedStickerPresentationContext7 setStyle:isExpanded];

    v27 = &__block_literal_global_291;
  }

  appCardPresentationOverseer4 = [(IMAAppPresenter *)self appCardPresentationOverseer];
  [appCardPresentationOverseer4 dismissCardAnimated:1 completion:v27];
}

- (void)stickerDruidDragEndedWithIMSticker:(id)sticker
{
  stickerCopy = sticker;
  appCardPresentationOverseer = [(IMAAppPresenter *)self appCardPresentationOverseer];
  if ([appCardPresentationOverseer isPresentingCard])
  {
    savedStickerPresentationContext = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [savedStickerPresentationContext setStickerForDeferredRePresentation:stickerCopy];

    savedStickerPresentationContext2 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [savedStickerPresentationContext2 setDeferredPresentation:1];

    goto LABEL_15;
  }

  [MEMORY[0x277CF97B8] donateStickerToRecents:stickerCopy];
  v8 = IMStickersExtensionIdentifier();
  v9 = IMBalloonExtensionIDWithSuffix();

  savedStickerPresentationContext3 = [(IMAAppPresenter *)self savedStickerPresentationContext];
  [savedStickerPresentationContext3 setStickerPickerContainer:0];

  presentsStickerPickerInPopover = [(IMAAppPresenter *)self presentsStickerPickerInPopover];
  savedStickerPresentationContext4 = [(IMAAppPresenter *)self savedStickerPresentationContext];
  logHandle = savedStickerPresentationContext4;
  if (!presentsStickerPickerInPopover)
  {
    [(IMAAppPresenter *)self _presentAppCardWithBundleIdentifier:v9 style:[savedStickerPresentationContext4 style] completion:&__block_literal_global_296];
LABEL_9:

    goto LABEL_10;
  }

  sourceView = [savedStickerPresentationContext4 sourceView];

  if (!sourceView)
  {
    logHandle = [(IMAAppPresenter *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [IMAAppPresenter stickerDruidDragEndedWithIMSticker:];
    }

    goto LABEL_9;
  }

  savedStickerPresentationContext5 = [(IMAAppPresenter *)self savedStickerPresentationContext];
  sourceView2 = [savedStickerPresentationContext5 sourceView];

  savedStickerPresentationContext6 = [(IMAAppPresenter *)self savedStickerPresentationContext];
  [savedStickerPresentationContext6 sourceRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [(IMAAppPresenter *)self presentPopoverAppWithBundleIdentifier:v9 sourceRect:sourceView2 inView:&__block_literal_global_294 completion:v19, v21, v23, v25];
LABEL_10:
  v26 = *MEMORY[0x277C8A920]("CKPluginExtensionStateObserverStickerDragEnded", @"ChatKit");
  if (v26)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:v26 object:self];
  }

  else
  {
    defaultCenter = [(IMAAppPresenter *)self logHandle];
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
    {
      [IMAAppPresenter stickerDruidDragEndedWithIMSticker:];
    }
  }

LABEL_15:
}

- (void)showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion
{
  completionCopy = completion;
  if ([identifier isEqualToString:*MEMORY[0x277D19718]])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"itms-appss://apps.apple.com/genre/ios-stickers/id6025"];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] openURL:v6];
  }

  v8 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v8 = completionCopy;
  }
}

- (void)dragManagerDidBeginDragging:(id)dragging
{
  mEMORY[0x277CF97C0] = [MEMORY[0x277CF97C0] sharedTimer];
  [mEMORY[0x277CF97C0] setShouldStopWhenBackgrounded:0];

  if ([(IMAAppPresenter *)self hidesCompactAppForStickerDrag]&& [(IMAAppPresenter *)self isAppCompact])
  {
    [(IMAAppPresenter *)self animateSwitcherOffscreen:1 completion:0];
  }

  delegate = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didBeginDraggingSticker];
  }
}

- (void)dragManager:(id)manager draggedItemWithTarget:(id)target
{
  managerCopy = manager;
  targetCopy = target;
  delegate = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [IMADropTarget alloc];
    [targetCopy screenCoordinate];
    v10 = v9;
    v12 = v11;
    [targetCopy initialSize];
    v14 = v13;
    v16 = v15;
    [targetCopy scale];
    v18 = v17;
    [targetCopy meshScaleFactor];
    v20 = v19;
    [targetCopy rotation];
    v22 = [(IMADropTarget *)v8 initWithScreenCoordinate:v10 initialSize:v12 scale:v14 meshScaleFactor:v16 rotation:v18, v20, v21];
    switcherViewController = [(IMAAppPresenter *)self switcherViewController];
    view = [switcherViewController view];
    [view frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [targetCopy screenCoordinate];
    v38.x = v33;
    v38.y = v34;
    v39.origin.x = v26;
    v39.origin.y = v28;
    v39.size.width = v30;
    v39.size.height = v32;
    v35 = CGRectContainsPoint(v39, v38);

    [delegate didDragStickerToTarget:v22 outsideSwitcher:v35 ^ 1];
    [managerCopy setPlusButtonHidden:v35];
  }
}

- (void)dragManagerDidEndDragging:(id)dragging
{
  mEMORY[0x277CF97C0] = [MEMORY[0x277CF97C0] sharedTimer];
  [mEMORY[0x277CF97C0] setShouldStopWhenBackgrounded:1];

  if ([(IMAAppPresenter *)self hidesCompactAppForStickerDrag]&& [(IMAAppPresenter *)self isSwitcherOffscreen])
  {
    [(IMAAppPresenter *)self animateSwitcherOffscreen:0 completion:0];
  }

  delegate = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didEndDraggingSticker];
  }
}

- (int)dragManager:(id)manager dropAreaForDragTarget:(id)target
{
  targetCopy = target;
  if (![(IMAAppPresenter *)self isAppCompact])
  {
    goto LABEL_5;
  }

  if ([(IMAAppPresenter *)self isSwitcherOffscreen])
  {
    goto LABEL_5;
  }

  switcherViewController = [(IMAAppPresenter *)self switcherViewController];
  view = [switcherViewController view];

  superview = [view superview];
  [view frame];
  [superview convertRect:0 toView:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [targetCopy screenCoordinate];
  v37.x = v17;
  v37.y = v18;
  v38.origin.x = v10;
  v38.origin.y = v12;
  v38.size.width = v14;
  v38.size.height = v16;
  LOBYTE(superview) = CGRectContainsPoint(v38, v37);

  if (superview)
  {
    v19 = 3;
  }

  else
  {
LABEL_5:
    v20 = [IMADropTarget alloc];
    [targetCopy screenCoordinate];
    v22 = v21;
    v24 = v23;
    [targetCopy initialSize];
    v26 = v25;
    v28 = v27;
    [targetCopy scale];
    v30 = v29;
    [targetCopy meshScaleFactor];
    v32 = v31;
    [targetCopy rotation];
    v34 = [(IMADropTarget *)v20 initWithScreenCoordinate:v22 initialSize:v24 scale:v26 meshScaleFactor:v28 rotation:v30, v32, v33];
    delegate = [(IMAAppPresenter *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([delegate isDropTargetValid:v34] & 1) == 0)
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

- (void)dragManager:(id)manager overrideDropPointForTarget:(id)target completion:(id)completion
{
  targetCopy = target;
  completionCopy = completion;
  delegate = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate overrideDropPointWithCompletion:completionCopy];
  }

  else
  {
    [targetCopy screenCoordinate];
    completionCopy[2](completionCopy);
  }
}

- (CGSize)browserTransitionCoordinator:(id)coordinator preferredSizeForBrowser:(id)browser
{
  if ([(IMAAppPresenter *)self alwaysPresentAppsExpanded:coordinator])
  {
    [(IMAAppPresenter *)self alwaysExpandedAppViewControllerFrame];
    v6 = v5;
    v8 = v7;
    mEMORY[0x277CF97E0] = [MEMORY[0x277CF97E0] sharedBehaviors];
    [mEMORY[0x277CF97E0] browserSwitcherExpandedGrabberHeaderHeight];
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

- (BOOL)browserTransitionCoordinatorShouldDismissOnDragSuccess:(id)success
{
  delegate = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    expandedAppShouldDismissOnDragSuccess = [delegate expandedAppShouldDismissOnDragSuccess];
  }

  else
  {
    expandedAppShouldDismissOnDragSuccess = 0;
  }

  return expandedAppShouldDismissOnDragSuccess;
}

- (id)transitionsPresentationViewController
{
  delegate = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    dockPresentationViewController = [delegate dockPresentationViewController];
  }

  else
  {
    dockPresentationViewController = 0;
  }

  return dockPresentationViewController;
}

- (void)appCardOverseerDidDismissAppCard
{
  delegate = [(IMAAppPresenter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate appPresenterCardDidDismiss:self];
  }

  savedStickerPresentationContext = [(IMAAppPresenter *)self savedStickerPresentationContext];
  stickerForDeferredRePresentation = [savedStickerPresentationContext stickerForDeferredRePresentation];

  savedStickerPresentationContext2 = [(IMAAppPresenter *)self savedStickerPresentationContext];
  deferredPresentation = [savedStickerPresentationContext2 deferredPresentation];

  if (deferredPresentation)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __51__IMAAppPresenter_appCardOverseerDidDismissAppCard__block_invoke;
    v13 = &unk_27A66DEA0;
    selfCopy = self;
    v15 = stickerForDeferredRePresentation;
    dispatch_async(MEMORY[0x277D85CD0], &v10);
    v8 = [(IMAAppPresenter *)self savedStickerPresentationContext:v10];
    [v8 setStickerForDeferredRePresentation:0];

    savedStickerPresentationContext3 = [(IMAAppPresenter *)self savedStickerPresentationContext];
    [savedStickerPresentationContext3 setDeferredPresentation:0];
  }
}

- (CGRect)alwaysExpandedAppViewControllerFrame
{
  if (![(IMAAppPresenter *)self alwaysPresentAppsExpanded])
  {
    goto LABEL_5;
  }

  delegate = [(IMAAppPresenter *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_5:
    v9 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v7 = *(MEMORY[0x277CBF3A0] + 24);
    goto LABEL_6;
  }

  [delegate expandedAppViewControllerSize];
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

- (void)switcherViewControllerDidFinishSwitching:(id)switching toViewController:(id)controller
{
  p_currentBalloonPlugin = [controller balloonPlugin];
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

+ (void)loadAppWithIdentifierIfNeeded:(id)needed
{
  v3 = MEMORY[0x277D18D38];
  neededCopy = needed;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance loadExtensionWithIdentifierIfNeeded:neededCopy];
}

- (id)currentStickerViewController
{
  if ([(IMAAppPresenter *)self isAppCardsEnabled])
  {
    appCardPresentationOverseer = [(IMAAppPresenter *)self appCardPresentationOverseer];
    browserViewController = [appCardPresentationOverseer browserViewController];
LABEL_8:
    v6 = browserViewController;

    goto LABEL_9;
  }

  if (![(IMAAppPresenter *)self alwaysPresentAppsExpanded])
  {
    appCardPresentationOverseer = [(IMAAppPresenter *)self switcherViewController];
    browserViewController = [appCardPresentationOverseer currentViewController];
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