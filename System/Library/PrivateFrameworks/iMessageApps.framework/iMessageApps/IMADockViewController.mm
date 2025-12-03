@interface IMADockViewController
- (IMADockViewController)init;
- (IMADockViewControllerDelegate)delegate;
- (double)minimizedDockHeight;
- (id)imageViewForSticker:(id)sticker;
- (void)cleanupRunningApps;
- (void)setDelegate:(id)delegate;
- (void)setShowIconBorders:(BOOL)borders;
- (void)switcherView:(id)view didSelectPluginAtIndex:(id)index;
- (void)updateAppStripFrame;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation IMADockViewController

- (IMADockViewController)init
{
  v6.receiver = self;
  v6.super_class = IMADockViewController;
  v2 = [(IMADockViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(IMAAppPresenter);
    appPresenter = v2->_appPresenter;
    v2->_appPresenter = v3;

    v2->_showIconBorders = 1;
  }

  return v2;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = IMADockViewController;
  [(IMADockViewController *)&v9 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277CF97A0]);
  appStripDataSource = self->_appStripDataSource;
  self->_appStripDataSource = v3;

  v5 = objc_alloc(MEMORY[0x277CF9798]);
  v6 = [v5 initWithFrame:0 toggleBordersOnInterfaceStyle:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  appStrip = self->_appStrip;
  self->_appStrip = v6;

  [(CKBrowserSwitcherFooterView *)self->_appStrip setAutoresizingMask:2];
  [(CKBrowserSwitcherFooterView *)self->_appStrip setDelegate:self];
  [(CKBrowserSwitcherFooterView *)self->_appStrip setDataSource:self->_appStripDataSource];
  [(CKBrowserSwitcherFooterView *)self->_appStrip setScrollsLastUsedAppIconIntoView:0];
  [(CKBrowserSwitcherFooterView *)self->_appStrip setShowBorders:[(IMADockViewController *)self showIconBorders]];
  view = [(IMADockViewController *)self view];
  [view addSubview:self->_appStrip];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = IMADockViewController;
  [(IMADockViewController *)&v3 viewDidLayoutSubviews];
  [(IMADockViewController *)self updateAppStripFrame];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = IMADockViewController;
  coordinatorCopy = coordinator;
  [(IMADockViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__IMADockViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_27A66DED0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(IMAAppPresenter *)self->_appPresenter setDelegate:obj];
  }
}

- (void)setShowIconBorders:(BOOL)borders
{
  if (self->_showIconBorders != borders)
  {
    self->_showIconBorders = borders;
    [(CKBrowserSwitcherFooterView *)self->_appStrip setShowBorders:?];
  }
}

- (double)minimizedDockHeight
{
  v2 = CKIsRunningInCameraAppsClient();
  mEMORY[0x277CF97E0] = [MEMORY[0x277CF97E0] sharedBehaviors];
  v4 = mEMORY[0x277CF97E0];
  if (v2)
  {
    [mEMORY[0x277CF97E0] cameraAppsMinimizedDockHeight];
  }

  else
  {
    [mEMORY[0x277CF97E0] chatChromeBottomInset];
  }

  v6 = v5;

  return v6;
}

- (id)imageViewForSticker:(id)sticker
{
  stickerCopy = sticker;
  v4 = objc_alloc(MEMORY[0x277CF97C8]);
  fileURL = [stickerCopy fileURL];
  v6 = [v4 initWithURL:fileURL];

  v7 = [v6 durationsWithMaxCount:0x7FFFFFFFLL];
  array = [MEMORY[0x277CBEB18] array];
  if ([v6 count])
  {
    v9 = 0;
    do
    {
      v10 = [v6 thumbnailAtIndex:v9 fillToSize:0x7FFFFFFFLL maxCount:{1.79769313e308, 1.79769313e308}];
      if (v10)
      {
        [array addObject:v10];
      }

      ++v9;
    }

    while (v9 < [v6 count]);
  }

  v11 = [objc_alloc(MEMORY[0x277CF9768]) initWithImages:array durations:v7];
  v12 = objc_alloc_init(MEMORY[0x277CF9770]);
  [v12 setAnimatedImage:v11];
  [v12 setAutomaticallyObserveWindowForAnimationTimer:1];

  return v12;
}

- (void)cleanupRunningApps
{
  mEMORY[0x277CF9788] = [MEMORY[0x277CF9788] sharedInstance];
  [mEMORY[0x277CF9788] invalidateAllActivePlugins];

  mEMORY[0x277CF9788]2 = [MEMORY[0x277CF9788] sharedInstance];
  [mEMORY[0x277CF9788]2 forceKillRemoteExtensionsWithDelay:1];
}

- (void)updateAppStripFrame
{
  [(CKBrowserSwitcherFooterView *)self->_appStrip contentHeight];
  v4 = v3;
  view = [(IMADockViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v18.origin.x = v7;
  v18.origin.y = v9;
  v18.size.width = v11;
  v18.size.height = v13;
  v14 = CGRectGetMaxY(v18) - v4;
  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  Width = CGRectGetWidth(v19);
  appStrip = self->_appStrip;

  [(CKBrowserSwitcherFooterView *)appStrip setFrame:0.0, v14, Width, v4];
}

- (void)switcherView:(id)view didSelectPluginAtIndex:(id)index
{
  v5 = MEMORY[0x277CF9788];
  indexCopy = index;
  sharedInstance = [v5 sharedInstance];
  visibleDrawerPlugins = [sharedInstance visibleDrawerPlugins];
  item = [indexCopy item];

  v10 = [visibleDrawerPlugins objectAtIndexedSubscript:item];

  appPresenter = self->_appPresenter;
  identifier = [v10 identifier];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__IMADockViewController_switcherView_didSelectPluginAtIndex___block_invoke;
  v13[3] = &unk_27A66DEF8;
  v13[4] = self;
  [(IMAAppPresenter *)appPresenter presentAppWithBundleIdentifier:identifier completion:v13];
}

- (IMADockViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end