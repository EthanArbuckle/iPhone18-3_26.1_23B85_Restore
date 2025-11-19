@interface OKNavigatorViewControllerProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (BOOL)canPerformAction:(id)a3;
- (BOOL)interactivityEnabled;
- (BOOL)isReady:(BOOL)a3;
- (BOOL)performActionScript:(id)a3 withAction:(id)a4;
- (BOOL)prepareForDisplay;
- (BOOL)prepareForUnload;
- (BOOL)prepareForWarmup;
- (BOOL)sendAction:(id)a3 toTarget:(id)a4;
- (CGRect)settingFrame;
- (CGRect)visiblePageRect;
- (CGSize)parentLayoutFactor;
- (NSString)description;
- (OKNavigatorViewControllerProxy)initWithNavigator:(id)a3;
- (double)readyProgress:(BOOL)a3;
- (float)settingAudioVolume;
- (id)actionBindingForAction:(id)a3 isTouchCountAgnostic:(BOOL)a4;
- (id)allKeysForDictionaryProxy:(id)a3;
- (id)cachedPageViewControllerForPageWithNames:(id)a3;
- (id)cachedPageViewControllers;
- (id)deepestDisplayedPageViewController;
- (id)dictionaryProxy:(id)a3 objectForKey:(id)a4;
- (id)displayedPageViewControllers;
- (id)pageViewControllerForPageWithName:(id)a3 createIfNeeded:(BOOL)a4;
- (id)settingBackgroundColor;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)countOfDictionaryProxy:(id)a3;
- (void)_playAudioPlaylist;
- (void)_setAudioURLs:(id)a3;
- (void)_stopAudioPlaylist;
- (void)addActionBinding:(id)a3 scope:(unint64_t)a4;
- (void)applyLayoutSettings;
- (void)applySettings;
- (void)applySettingsIfNeeded;
- (void)audioStartedPlayingWithAVAsset:(id)a3;
- (void)becomeReady;
- (void)cancelCouchPotatoPlayback;
- (void)commonInit;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)gotoPageWithName:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)instantPause;
- (void)instantResume;
- (void)layoutDidChange;
- (void)navigateToItemAtKeyPath:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)navigateToPageWithName:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)navigatorDidAppear:(BOOL)a3;
- (void)navigatorDidDisappear:(BOOL)a3;
- (void)navigatorWillAppear:(BOOL)a3;
- (void)navigatorWillDisappear:(BOOL)a3;
- (void)networkStatusDidChange:(int64_t)a3;
- (void)notifyWhenBecomesReady:(id)a3;
- (void)prepareForMode:(unint64_t)a3;
- (void)prepareForRefresh;
- (void)prepareForReload;
- (void)readinessDidChange:(BOOL)a3;
- (void)removeActionBinding:(id)a3;
- (void)removeAllActionBindings;
- (void)removeAllReadyNotifications;
- (void)resignReady;
- (void)resolutionDidChange;
- (void)rewindAudioPlaylist;
- (void)setAudioPlaylistEnabled:(BOOL)a3;
- (void)setPlaybackAudioVolume:(double)a3;
- (void)setSettingAudioPlaylist:(id)a3;
- (void)setSettingBackgroundColor:(id)a3;
- (void)setSettingCanPerformActionScript:(id)a3;
- (void)setSettingDidAppearActionScript:(id)a3;
- (void)setSettingDidDisappearActionScript:(id)a3;
- (void)setSettingFrame:(CGRect)a3;
- (void)setSettingNavigationScript:(id)a3;
- (void)setSettingPrepareActionScript:(id)a3;
- (void)setSettingWillAppearActionScript:(id)a3;
- (void)setSettingWillDisappearActionScript:(id)a3;
- (void)setUserSettingObject:(id)a3 forKey:(id)a4;
- (void)uncachePageViewControllerForPageWithNames:(id)a3;
- (void)updateWithMotionTiltRotationX:(double)a3 tiltRotationY:(double)a4 tiltRotationZ:(double)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation OKNavigatorViewControllerProxy

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = OKNavigatorViewControllerProxy;
  [(OFUIViewController *)&v3 commonInit];
  self->_needsApplySettings = 1;
  self->_hasSettingsApplied = 0;
  self->_navigator = 0;
  self->_prepareMode = 0;
  self->_pageViewControllers = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_storeWeak(&self->_presentationViewController, 0);
  objc_storeWeak(&self->_parentPageViewController, 0);
  self->_currentPageViewController = 0;
  self->_prepareActionScript = 0;
  self->_willAppearActionScript = 0;
  self->_didAppearActionScript = 0;
  self->_willDisappearActionScript = 0;
  self->_didDisappearActionScript = 0;
  self->_actionBindings = objc_alloc_init(MEMORY[0x277CBEB58]);
  self->_audioPlaylistEnabled = 1;
  self->_audioVolume = 1.0;
  *&self->_audioPlaylistLoops = 1;
  self->_readyNotificationBlocks = objc_opt_new();
  self->_readyRecursiveLock = objc_alloc_init(MEMORY[0x277CCAC60]);
  [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
}

- (OKNavigatorViewControllerProxy)initWithNavigator:(id)a3
{
  v4 = [(OFUIViewController *)self init];
  if (v4)
  {
    v4->_navigator = a3;
  }

  return v4;
}

- (void)dealloc
{
  if (*MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Navigators/OKNavigatorViewController.m" line:161 andFormat:@"Deallocing %@", self];
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  navigator = self->_navigator;
  if (navigator)
  {

    self->_navigator = 0;
  }

  pageViewControllers = self->_pageViewControllers;
  if (pageViewControllers)
  {

    self->_pageViewControllers = 0;
  }

  objc_storeWeak(&self->_presentationViewController, 0);
  objc_storeWeak(&self->_parentPageViewController, 0);
  currentPageViewController = self->_currentPageViewController;
  if (currentPageViewController)
  {

    self->_currentPageViewController = 0;
  }

  prepareActionScript = self->_prepareActionScript;
  if (prepareActionScript)
  {

    self->_prepareActionScript = 0;
  }

  canPerformActionScript = self->_canPerformActionScript;
  if (canPerformActionScript)
  {

    self->_canPerformActionScript = 0;
  }

  willAppearActionScript = self->_willAppearActionScript;
  if (willAppearActionScript)
  {

    self->_willAppearActionScript = 0;
  }

  didAppearActionScript = self->_didAppearActionScript;
  if (didAppearActionScript)
  {

    self->_didAppearActionScript = 0;
  }

  willDisappearActionScript = self->_willDisappearActionScript;
  if (willDisappearActionScript)
  {

    self->_willDisappearActionScript = 0;
  }

  didDisappearActionScript = self->_didDisappearActionScript;
  if (didDisappearActionScript)
  {

    self->_didDisappearActionScript = 0;
  }

  navigationScript = self->_navigationScript;
  if (navigationScript)
  {

    self->_navigationScript = 0;
  }

  [(OKNavigatorViewControllerProxy *)self removeAllActionBindings];
  actionBindings = self->_actionBindings;
  if (actionBindings)
  {

    self->_actionBindings = 0;
  }

  [(OKAudioPlaylist *)self->_audioPlaylist stop];
  audioPlaylist = self->_audioPlaylist;
  if (audioPlaylist)
  {

    self->_audioPlaylist = 0;
  }

  readyNotificationBlocks = self->_readyNotificationBlocks;
  if (readyNotificationBlocks)
  {

    self->_readyNotificationBlocks = 0;
  }

  readyRecursiveLock = self->_readyRecursiveLock;
  if (readyRecursiveLock)
  {

    self->_readyRecursiveLock = 0;
  }

  [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  v17.receiver = self;
  v17.super_class = OKNavigatorViewControllerProxy;
  [(OFUIViewController *)&v17 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(OKPresentationCanvas *)self->_navigator name];
  v6.receiver = self;
  v6.super_class = OKNavigatorViewControllerProxy;
  return [v3 stringWithFormat:@"NAVIGATOR %@: %@", v4, -[OKNavigatorViewControllerProxy description](&v6, sel_description)];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = OKNavigatorViewControllerProxy;
  [(OFUIViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = OKNavigatorViewControllerProxy;
  [(OFUIViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OKNavigatorViewControllerProxy;
  [(OFUIViewController *)&v3 viewWillAppear:[(OKPresentationViewControllerProxy *)[(OKNavigatorViewControllerProxy *)self presentationViewController] hasBeenHidden]^ 1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OKNavigatorViewControllerProxy;
  [(OFUIViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OKNavigatorViewControllerProxy;
  [(OFUIViewController *)&v3 viewWillDisappear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = OKNavigatorViewControllerProxy;
  [(OFUIViewController *)&v3 viewDidDisappear:a3];
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = OKNavigatorViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v2 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = OKNavigatorViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 viewDidLayoutSubviews];
  [(OKNavigatorViewControllerProxy *)self applyLayoutSettings];
}

- (void)networkStatusDidChange:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(OKNavigatorViewControllerProxy *)self cachedPageViewControllers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) networkStatusDidChange:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)resolutionDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  [(OKNavigatorViewControllerProxy *)self setNeedsApplySettings];
  if ([(OKNavigatorViewControllerProxy *)self prepareMode]== 1 || [(OKNavigatorViewControllerProxy *)self prepareMode]== 2)
  {
    [(OKNavigatorViewControllerProxy *)self applySettingsIfNeeded];
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(OKNavigatorViewControllerProxy *)self cachedPageViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) resolutionDidChange];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)layoutDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_hasSettingsApplied)
  {
    if ([(OKNavigatorViewControllerProxy *)self prepareMode]== 1 || [(OKNavigatorViewControllerProxy *)self prepareMode]== 2)
    {
      [(OKNavigatorViewControllerProxy *)self applyLayoutSettings];
    }

    else
    {
      [(OKNavigatorViewControllerProxy *)self setNeedsApplySettings];
    }
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(OKNavigatorViewControllerProxy *)self cachedPageViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) layoutDidChange];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (CGSize)parentLayoutFactor
{
  if ([(OKNavigatorViewControllerProxy *)self parentPageViewController])
  {
    v3 = [(OKNavigatorViewControllerProxy *)self parentPageViewController];
  }

  else
  {
    v3 = [(OKNavigatorViewControllerProxy *)self presentationViewController];
  }

  [(OKPageViewController *)v3 layoutFactor];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)willMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = OKNavigatorViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 willMoveToParentViewController:a3];
}

- (void)didMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = OKNavigatorViewControllerProxy;
  [(OKNavigatorViewControllerProxy *)&v3 didMoveToParentViewController:a3];
}

- (void)applySettingsIfNeeded
{
  if (self->_needsApplySettings || !self->_hasSettingsApplied)
  {
    [-[OKNavigatorViewControllerProxy view](self "view")];

    [(OKNavigatorViewControllerProxy *)self applySettings];
  }
}

- (void)applySettings
{
  [(OKNavigatorViewControllerProxy *)self removeAllActionBindings];
  [OKSettings resetAndApplySettings:[(OKPresentationCanvas *)self->_navigator settings] toObject:self withResolution:[(OKPresentationViewControllerProxy *)self->_presentationViewController resolution]];
  self->_needsApplySettings = 0;
  self->_hasSettingsApplied = 1;
}

- (void)applyLayoutSettings
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(OKNavigatorViewControllerProxy *)self layoutSettingsKeys];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [(OKPresentationCanvas *)self->_navigator mergedSettings];
        v10 = [v9 objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"@%@", v8)}];
        if (v10)
        {
          v11 = v10;
          v12 = @"@%@";
        }

        else
        {
          v13 = [(OKPresentationCanvas *)self->_navigator mergedSettings];
          v14 = [v13 objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@", v8)}];
          if (!v14)
          {
            goto LABEL_11;
          }

          v11 = v14;
          v12 = @"%@";
        }

        [v3 setObject:v11 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", v12, v8)}];
LABEL_11:
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  +[OKSettings beginApplyingSettings];
  [OKSettings applySettings:v3 toObject:self withResolution:[(OKPresentationViewControllerProxy *)self->_presentationViewController resolution]];
  +[OKSettings commitApplyingSettings];
}

+ (id)supportedSettings
{
  v31[13] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v30[0] = @"prepareActionScript";
  v28[0] = @"type";
  v28[1] = @"defaultBlock";
  v29[0] = &unk_287AF02F0;
  v29[1] = &__block_literal_global_16;
  v31[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v30[1] = @"canPerformActionScript";
  v26[0] = @"type";
  v26[1] = @"default";
  v27[0] = &unk_287AF02F0;
  v27[1] = [MEMORY[0x277CBEB68] null];
  v31[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v30[2] = @"willAppearActionScript";
  v24[1] = @"default";
  v25[0] = &unk_287AF02F0;
  v24[0] = @"type";
  v25[1] = [MEMORY[0x277CBEB68] null];
  v31[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v30[3] = @"didAppearActionScript";
  v22[1] = @"default";
  v23[0] = &unk_287AF02F0;
  v22[0] = @"type";
  v23[1] = [MEMORY[0x277CBEB68] null];
  v31[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v30[4] = @"willDisappearActionScript";
  v20[1] = @"default";
  v21[0] = &unk_287AF02F0;
  v20[0] = @"type";
  v21[1] = [MEMORY[0x277CBEB68] null];
  v31[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v30[5] = @"didDisappearActionScript";
  v18[1] = @"default";
  v19[0] = &unk_287AF02F0;
  v18[0] = @"type";
  v19[1] = [MEMORY[0x277CBEB68] null];
  v31[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v30[6] = @"navigationScript";
  v16[1] = @"default";
  v17[0] = &unk_287AF02F0;
  v16[0] = @"type";
  v17[1] = [MEMORY[0x277CBEB68] null];
  v31[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v30[7] = @"audioPlaylist";
  v15[0] = &unk_287AF0308;
  v14[0] = @"type";
  v14[1] = @"class";
  v15[1] = objc_opt_class();
  v14[2] = @"default";
  v15[2] = [MEMORY[0x277CBEB68] null];
  v31[7] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v30[8] = @"audioVolume";
  v12[0] = @"type";
  v12[1] = @"default";
  v13[0] = &unk_287AF0320;
  v13[1] = &unk_287AF2278;
  v12[2] = @"priority";
  v12[3] = @"jsExport";
  v13[2] = &unk_287AF0338;
  v13[3] = @"readwrite";
  v31[8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v30[9] = @"audioRequiredDuckLevel";
  v10[0] = @"type";
  v10[1] = @"default";
  v11[0] = &unk_287AF0320;
  v11[1] = &unk_287AF2288;
  v31[9] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v30[10] = @"audioPlaylistLoops";
  v8[0] = @"type";
  v8[1] = @"default";
  v9[0] = &unk_287AF0350;
  v9[1] = MEMORY[0x277CBEC38];
  v8[2] = @"priority";
  v9[2] = &unk_287AF0368;
  v31[10] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v30[11] = @"frame";
  v6[0] = @"type";
  v6[1] = @"priority";
  v7[0] = &unk_287AF0380;
  v7[1] = &unk_287AF0398;
  v6[2] = @"jsExport";
  v7[2] = @"readonly";
  v31[11] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v30[12] = @"backgroundColor";
  v5[0] = &unk_287AF03B0;
  v4[0] = @"type";
  v4[1] = @"default";
  v4[2] = @"jsExport";
  v5[1] = [MEMORY[0x277CBEB68] null];
  v5[2] = @"readwrite";
  v31[12] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v31, v30, 13)}];
  return v2;
}

- (void)setUserSettingObject:(id)a3 forKey:(id)a4
{
  v6 = [(OKPresentationCanvas *)self->_navigator userSettings];

  [(NSMutableDictionary *)v6 setObject:a3 forKey:a4];
}

- (CGRect)settingFrame
{
  [(OKNavigatorViewControllerProxy *)self layoutFactor];
  v4 = v3;
  v6 = v5;
  [-[OKNavigatorViewControllerProxy view](self "view")];
  v8 = v7 / v4;
  [-[OKNavigatorViewControllerProxy view](self "view")];
  v10 = v9 / v6;
  [-[OKNavigatorViewControllerProxy view](self "view")];
  v12 = v11 / v4;
  [-[OKNavigatorViewControllerProxy view](self "view")];
  v14 = v13 / v6;
  v15 = v8;
  v16 = v10;
  v17 = v12;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)setSettingFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [-[OKNavigatorViewControllerProxy view](self "view")];
  v9 = *(MEMORY[0x277CD9DE8] + 80);
  v15[4] = *(MEMORY[0x277CD9DE8] + 64);
  v15[5] = v9;
  v10 = *(MEMORY[0x277CD9DE8] + 112);
  v15[6] = *(MEMORY[0x277CD9DE8] + 96);
  v15[7] = v10;
  v11 = *(MEMORY[0x277CD9DE8] + 16);
  v15[0] = *MEMORY[0x277CD9DE8];
  v15[1] = v11;
  v12 = *(MEMORY[0x277CD9DE8] + 48);
  v15[2] = *(MEMORY[0x277CD9DE8] + 32);
  v15[3] = v12;
  [v8 setTransform:v15];
  [(OKNavigatorViewControllerProxy *)self layoutFactor];
  v16.size.width = width * v13;
  v16.size.height = height * v14;
  v16.origin.x = x * v13;
  v16.origin.y = y * v14;
  v17 = CGRectIntegral(v16);
  [-[OKNavigatorViewControllerProxy view](self "view")];
}

- (void)setSettingPrepareActionScript:(id)a3
{
  prepareActionScript = self->_prepareActionScript;
  if (prepareActionScript)
  {

    self->_prepareActionScript = 0;
  }

  self->_prepareActionScript = [a3 copy];
}

- (void)setSettingCanPerformActionScript:(id)a3
{
  canPerformActionScript = self->_canPerformActionScript;
  if (canPerformActionScript)
  {

    self->_canPerformActionScript = 0;
  }

  self->_canPerformActionScript = [a3 copy];
}

- (void)setSettingWillAppearActionScript:(id)a3
{
  willAppearActionScript = self->_willAppearActionScript;
  if (willAppearActionScript)
  {

    self->_willAppearActionScript = 0;
  }

  self->_willAppearActionScript = [a3 copy];
}

- (void)setSettingDidAppearActionScript:(id)a3
{
  didAppearActionScript = self->_didAppearActionScript;
  if (didAppearActionScript)
  {

    self->_didAppearActionScript = 0;
  }

  self->_didAppearActionScript = [a3 copy];
}

- (void)setSettingWillDisappearActionScript:(id)a3
{
  willDisappearActionScript = self->_willDisappearActionScript;
  if (willDisappearActionScript)
  {

    self->_willDisappearActionScript = 0;
  }

  self->_willDisappearActionScript = [a3 copy];
}

- (void)setSettingDidDisappearActionScript:(id)a3
{
  didDisappearActionScript = self->_didDisappearActionScript;
  if (didDisappearActionScript)
  {

    self->_didDisappearActionScript = 0;
  }

  self->_didDisappearActionScript = [a3 copy];
}

- (void)setSettingNavigationScript:(id)a3
{
  navigationScript = self->_navigationScript;
  if (navigationScript)
  {

    self->_navigationScript = 0;
  }

  self->_navigationScript = [a3 copy];
}

- (void)setSettingAudioPlaylist:(id)a3
{
  if (![(NSArray *)[(OKPresentationViewControllerProxy *)[(OKNavigatorViewControllerProxy *)self presentationViewController] audioURLs] count])
  {
    audioPlaylist = self->_audioPlaylist;
    if (audioPlaylist)
    {
      [(OKAudioPlaylist *)audioPlaylist stop];
      v6 = self->_audioPlaylist;
      if (v6)
      {

        self->_audioPlaylist = 0;
      }
    }

    if (a3)
    {
      v7 = [[OKAudioPlaylist alloc] initWithAudioItems:a3 presentation:[(OKPresentationCanvas *)self->_navigator presentation]];
      self->_audioPlaylist = v7;
      [(OKAudioPlaylist *)v7 setDelegate:self];
      [(OKAudioPlaylist *)self->_audioPlaylist setVolume:0.0];
      audioPlaylistLoops = self->_audioPlaylistLoops;
      v9 = self->_audioPlaylist;

      [(OKAudioPlaylist *)v9 setLoops:audioPlaylistLoops];
    }
  }
}

- (float)settingAudioVolume
{
  audioPlaylist = self->_audioPlaylist;
  if (!audioPlaylist)
  {
    return 0.0;
  }

  [(OKAudioPlaylist *)audioPlaylist volume];
  return result;
}

- (id)settingBackgroundColor
{
  v2 = [(OKNavigatorViewControllerProxy *)self view];

  return [v2 backgroundColor];
}

- (void)setSettingBackgroundColor:(id)a3
{
  v4 = [(OKNavigatorViewControllerProxy *)self view];

  [v4 setBackgroundColor:a3];
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 isEqualToString:@"pages"])
  {
    v5 = objc_opt_new();
    v6 = v5;
    v7 = 1;
LABEL_5:
    [v5 setTag:v7];
    [v6 setDataSource:self];

    return v6;
  }

  if ([a3 isEqualToString:@"userData"])
  {
    v5 = objc_opt_new();
    v6 = v5;
    v7 = 2;
    goto LABEL_5;
  }

  if ([a3 isEqualToString:@"parentPage"])
  {

    return [(OKNavigatorViewControllerProxy *)self parentPageViewController];
  }

  else if ([a3 isEqualToString:@"displayedPages"])
  {

    return [(OKNavigatorViewControllerProxy *)self displayedPageViewControllers];
  }

  else if ([a3 isEqualToString:@"deepestDisplayedPage"])
  {

    return [(OKNavigatorViewControllerProxy *)self deepestDisplayedPageViewController];
  }

  else if ([a3 isEqualToString:@"currentPage"])
  {
    return self->_currentPageViewController;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = OKNavigatorViewControllerProxy;
    return [(OKNavigatorViewControllerProxy *)&v9 valueForUndefinedKey:a3];
  }
}

- (void)navigatorWillAppear:(BOOL)a3
{
  v3 = a3;
  v7[1] = *MEMORY[0x277D85DE8];
  willAppearActionScript = self->_willAppearActionScript;
  if (willAppearActionScript)
  {
    v6 = @"animated";
    v7[0] = [MEMORY[0x277CCABB0] numberWithBool:a3];
    -[OKNavigatorViewControllerProxy evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:", willAppearActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0, 0);
  }

  [(OKPageViewController *)self->_currentPageViewController pageWillAppear:v3];
}

- (void)navigatorDidAppear:(BOOL)a3
{
  v3 = a3;
  v7[1] = *MEMORY[0x277D85DE8];
  didAppearActionScript = self->_didAppearActionScript;
  if (didAppearActionScript)
  {
    v6 = @"animated";
    v7[0] = [MEMORY[0x277CCABB0] numberWithBool:a3];
    -[OKNavigatorViewControllerProxy evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:", didAppearActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0, 0);
  }

  [(OKPageViewController *)self->_currentPageViewController pageDidAppear:v3];
}

- (void)navigatorWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7[1] = *MEMORY[0x277D85DE8];
  willDisappearActionScript = self->_willDisappearActionScript;
  if (willDisappearActionScript)
  {
    v6 = @"animated";
    v7[0] = [MEMORY[0x277CCABB0] numberWithBool:a3];
    -[OKNavigatorViewControllerProxy evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:", willDisappearActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0, 0);
  }

  [(OKPageViewController *)self->_currentPageViewController pageWillDisappear:v3];
}

- (void)navigatorDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7[1] = *MEMORY[0x277D85DE8];
  didDisappearActionScript = self->_didDisappearActionScript;
  if (didDisappearActionScript)
  {
    v6 = @"animated";
    v7[0] = [MEMORY[0x277CCABB0] numberWithBool:a3];
    -[OKNavigatorViewControllerProxy evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:", didDisappearActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0, 0);
  }

  [(OKPageViewController *)self->_currentPageViewController pageDidDisappear:v3];
}

- (BOOL)prepareForDisplay
{
  v7[1] = *MEMORY[0x277D85DE8];
  [(OKNavigatorViewControllerProxy *)self applySettingsIfNeeded];
  prepareMode = self->_prepareMode;
  if (prepareMode != 1)
  {
    self->_prepareMode = 1;
    [-[OKNavigatorViewControllerProxy view](self "view")];
    prepareActionScript = self->_prepareActionScript;
    if (prepareActionScript)
    {
      v6 = @"prepareMode";
      v7[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      -[OKNavigatorViewControllerProxy evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:", prepareActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0, 0);
    }

    if (self->_audioPlaylistEnabled)
    {
      [(OKNavigatorViewControllerProxy *)self _playAudioPlaylist];
    }
  }

  return prepareMode != 1;
}

- (BOOL)prepareForWarmup
{
  v7[1] = *MEMORY[0x277D85DE8];
  [(OKNavigatorViewControllerProxy *)self applySettingsIfNeeded];
  prepareMode = self->_prepareMode;
  if (prepareMode != 2)
  {
    if (prepareMode == 1)
    {
      [(OKNavigatorViewControllerProxy *)self _stopAudioPlaylist];
    }

    self->_prepareMode = 2;
    [-[OKNavigatorViewControllerProxy view](self "view")];
    prepareActionScript = self->_prepareActionScript;
    if (prepareActionScript)
    {
      v6 = @"prepareMode";
      v7[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
      -[OKNavigatorViewControllerProxy evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:", prepareActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0, 0);
    }
  }

  return prepareMode != 2;
}

- (BOOL)prepareForUnload
{
  v7[1] = *MEMORY[0x277D85DE8];
  prepareMode = self->_prepareMode;
  if (prepareMode != 3)
  {
    self->_prepareMode = 3;
    [-[OKNavigatorViewControllerProxy view](self "view")];
    prepareActionScript = self->_prepareActionScript;
    if (prepareActionScript)
    {
      v6 = @"prepareMode";
      v7[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
      -[OKNavigatorViewControllerProxy evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:", prepareActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0, 0);
    }

    [(OKNavigatorViewControllerProxy *)self _stopAudioPlaylist];
  }

  return prepareMode != 3;
}

- (void)prepareForMode:(unint64_t)a3
{
  switch(a3)
  {
    case 3uLL:
      [(OKNavigatorViewControllerProxy *)self prepareForUnload];
      break;
    case 2uLL:
      [(OKNavigatorViewControllerProxy *)self prepareForWarmup];
      break;
    case 1uLL:
      [(OKNavigatorViewControllerProxy *)self prepareForDisplay];
      break;
  }
}

- (void)prepareForReload
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(OKNavigatorViewControllerProxy *)self prepareMode];
  [(OKNavigatorViewControllerProxy *)self setNeedsApplySettings];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(OKNavigatorViewControllerProxy *)self cachedPageViewControllers];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v18 + 1) + 8 * v8++) setNeedsApplySettings];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  if (v3 - 1 <= 1)
  {
    [(OKNavigatorViewControllerProxy *)self setNeedsPrepare];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [(OKNavigatorViewControllerProxy *)self cachedPageViewControllers];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13++) setNeedsPrepare];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v11);
    }

    [(OKNavigatorViewControllerProxy *)self prepareForMode:v3];
  }
}

- (void)prepareForRefresh
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(OKNavigatorViewControllerProxy *)self prepareMode]== 1 || [(OKNavigatorViewControllerProxy *)self prepareMode]== 2)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(OKNavigatorViewControllerProxy *)self cachedPageViewControllers];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) prepareForRefresh];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (id)pageViewControllerForPageWithName:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  pageViewControllers = self->_pageViewControllers;
  objc_sync_enter(pageViewControllers);
  v8 = [(NSMutableDictionary *)self->_pageViewControllers objectForKey:a3];
  if (v8)
  {
    v9 = v8;
    objc_sync_exit(pageViewControllers);
    return v9;
  }

  objc_sync_exit(pageViewControllers);
  if (!v4)
  {
    return 0;
  }

  v10 = [[(OKPresentationCanvas *)self->_navigator presentation] pageWithName:a3];
  if (v10)
  {
    v11 = [(OKPageViewController *)[OKPageUXViewController alloc] initWithPage:v10];
    [(OKPageViewController *)v11 setPresentationViewController:self->_presentationViewController];
    [(OKPageViewController *)v11 setNavigatorViewController:self];
    v12 = self->_pageViewControllers;
    objc_sync_enter(v12);
    [(NSMutableDictionary *)self->_pageViewControllers setObject:v11 forKey:a3];
    objc_sync_exit(v12);
  }

  else
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Navigators/OKNavigatorViewController.m" line:955 andFormat:@"Page name %@ does not exist", a3];
    }

    v11 = 0;
  }

  return v11;
}

- (id)cachedPageViewControllerForPageWithNames:(id)a3
{
  pageViewControllers = self->_pageViewControllers;
  objc_sync_enter(pageViewControllers);
  v6 = -[NSMutableDictionary objectsForKeys:notFoundMarker:](self->_pageViewControllers, "objectsForKeys:notFoundMarker:", a3, [MEMORY[0x277CBEB68] null]);
  objc_sync_exit(pageViewControllers);
  return v6;
}

- (id)cachedPageViewControllers
{
  pageViewControllers = self->_pageViewControllers;
  objc_sync_enter(pageViewControllers);
  v4 = [MEMORY[0x277CBEB98] setWithArray:{-[NSMutableDictionary allValues](self->_pageViewControllers, "allValues")}];
  objc_sync_exit(pageViewControllers);
  return v4;
}

- (void)uncachePageViewControllerForPageWithNames:(id)a3
{
  pageViewControllers = self->_pageViewControllers;
  objc_sync_enter(pageViewControllers);
  [(NSMutableDictionary *)self->_pageViewControllers removeObjectsForKeys:a3];

  objc_sync_exit(pageViewControllers);
}

- (id)displayedPageViewControllers
{
  result = [(OKNavigatorViewControllerProxy *)self currentPageViewController];
  if (result)
  {
    v4 = [(OKNavigatorViewControllerProxy *)self currentPageViewController];

    return [(OKPageViewController *)v4 displayedPageViewControllers];
  }

  return result;
}

- (id)deepestDisplayedPageViewController
{
  v2 = [(OKNavigatorViewControllerProxy *)self displayedPageViewControllers];

  return [v2 lastObject];
}

- (BOOL)sendAction:(id)a3 toTarget:(id)a4
{
  [(OKPresentationViewControllerProxy *)[(OKNavigatorViewControllerProxy *)self presentationViewController] cancelCouchPotatoIfNeededWithAction:a3];
  if (!a4 || (v7 = [(OKNavigatorViewControllerProxy *)self valueForKeyPath:a4]) == 0)
  {
    v10 = [(OKNavigatorViewControllerProxy *)self actionBindingForAction:a3 isTouchCountAgnostic:0];
    if (v10)
    {
      v11 = v10;
      [a3 shouldPropagate];
    }

    else
    {
      v11 = [(OKNavigatorViewControllerProxy *)self actionBindingForAction:a3 isTouchCountAgnostic:1];
      v12 = [a3 shouldPropagate];
      if (!v11)
      {
        if (!v12)
        {
          return v12;
        }

LABEL_12:
        [a3 convertFromResponder:self toResponder:self->_parentPageViewController];
        [a3 setShouldPropagate:1];
        parentPageViewController = self->_parentPageViewController;
        goto LABEL_13;
      }
    }

    if ([v11 performAction:a3])
    {
      [a3 setShouldPropagate:0];
      LOBYTE(v12) = 1;
      return v12;
    }

    if (([a3 shouldPropagate] & 1) == 0)
    {
      LOBYTE(v12) = 0;
      return v12;
    }

    goto LABEL_12;
  }

  v8 = v7;
  [a3 convertFromResponder:self toResponder:v7];
  parentPageViewController = v8;
LABEL_13:

  LOBYTE(v12) = [(OKPageViewController *)parentPageViewController sendAction:a3 toTarget:0];
  return v12;
}

- (BOOL)canPerformAction:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  canPerformActionScript = self->_canPerformActionScript;
  v4 = 1;
  if (canPerformActionScript)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 1;
    v13 = @"action";
    v14[0] = a3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__OKNavigatorViewControllerProxy_canPerformAction___block_invoke;
    v8[3] = &unk_279C905A8;
    v8[4] = &v9;
    [(OKNavigatorViewControllerProxy *)self evaluateScript:canPerformActionScript withInfoDictionary:v6 andCompletionBlock:v8 forPageViewController:0 andWidgetView:0];
    v4 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  return v4 & 1;
}

uint64_t __51__OKNavigatorViewControllerProxy_canPerformAction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 intValue];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

- (BOOL)interactivityEnabled
{
  v2 = [(OKNavigatorViewControllerProxy *)self presentationViewController];

  return [(OKPresentationViewControllerProxy *)v2 interactivityEnabled];
}

- (BOOL)performActionScript:(id)a3 withAction:(id)a4
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"action";
  v6[0] = a4;
  -[OKNavigatorViewControllerProxy evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forPageViewController:andWidgetView:", a3, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1], 0, 0, 0);
  return 1;
}

- (void)addActionBinding:(id)a3 scope:(unint64_t)a4
{
  [a3 loadForResponder:self scope:a4];
  actionBindings = self->_actionBindings;

  [(NSMutableSet *)actionBindings addObject:a3];
}

- (void)removeActionBinding:(id)a3
{
  [a3 unload];
  actionBindings = self->_actionBindings;

  [(NSMutableSet *)actionBindings removeObject:a3];
}

- (void)removeAllActionBindings
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(OKNavigatorViewControllerProxy *)self allActionBindings];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(OKNavigatorViewControllerProxy *)self removeActionBinding:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)actionBindingForAction:(id)a3 isTouchCountAgnostic:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  actionBindings = self->_actionBindings;
  result = [(NSMutableSet *)actionBindings countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(actionBindings);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if ([v11 respondsToAction:a3 isTouchCountAgnostic:v4])
        {
          return v11;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [(NSMutableSet *)actionBindings countByEnumeratingWithState:&v12 objects:v16 count:16];
      v8 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)instantPause
{
  [(OKNavigatorViewControllerProxy *)self _stopAudioPlaylist];
  currentPageViewController = self->_currentPageViewController;

  [(OKPageViewController *)currentPageViewController instantPause];
}

- (void)instantResume
{
  [(OKNavigatorViewControllerProxy *)self _playAudioPlaylist];
  currentPageViewController = self->_currentPageViewController;

  [(OKPageViewController *)currentPageViewController instantResume];
}

- (void)navigateToItemAtKeyPath:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (self->_navigationScript)
  {
    v10[0] = @"keyPath";
    v10[1] = @"animated";
    v11[0] = a3;
    v11[1] = [MEMORY[0x277CCABB0] numberWithBool:a4];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    navigationScript = self->_navigationScript;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __85__OKNavigatorViewControllerProxy_navigateToItemAtKeyPath_animated_completionHandler___block_invoke;
    v9[3] = &unk_279C8F890;
    v9[4] = a5;
    [(OKNavigatorViewControllerProxy *)self evaluateScript:navigationScript withInfoDictionary:v7 andCompletionBlock:v9 forPageViewController:0 andWidgetView:0];
  }

  else
  {
    NSLog(&cfstr_NoDefaultKeyPa.isa, a2, a3, a4, a5);
  }
}

uint64_t __85__OKNavigatorViewControllerProxy_navigateToItemAtKeyPath_animated_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateWithMotionTiltRotationX:(double)a3 tiltRotationY:(double)a4 tiltRotationZ:(double)a5
{
  if ([(OKNavigatorViewControllerProxy *)self prepareMode]== 1 || [(OKNavigatorViewControllerProxy *)self prepareMode]== 2)
  {
    v9 = [(OKNavigatorViewControllerProxy *)self currentPageViewController];

    [(OKPageViewController *)v9 updateWithMotionTiltRotationX:a3 tiltRotationY:a4 tiltRotationZ:a5];
  }
}

- (void)cancelCouchPotatoPlayback
{
  v2 = [(OKNavigatorViewControllerProxy *)self currentPageViewController];

  [(OKPageViewController *)v2 cancelCouchPotatoPlayback];
}

- (void)gotoPageWithName:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v6 = MEMORY[0x277D627B8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Navigators/OKNavigatorViewController.m" line:1220 andFormat:@"%@ %@ MUST be subclassed", v8, NSStringFromSelector(a2)];
  }
}

- (void)navigateToPageWithName:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v6 = MEMORY[0x277D627B8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Navigators/OKNavigatorViewController.m" line:1225 andFormat:@"%@ %@ MUST be subclassed", v8, NSStringFromSelector(a2)];
  }
}

+ (void)setupJavascriptContext:(id)a3
{
  v58[3] = *MEMORY[0x277D85DE8];
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKNavigatorViewController"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:a3];
  v4 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v6 = *MEMORY[0x277CD4618];
  v56[0] = *MEMORY[0x277CD4620];
  v5 = v56[0];
  v56[1] = v6;
  v58[0] = &__block_literal_global_163;
  v58[1] = MEMORY[0x277CBEC28];
  v7 = MEMORY[0x277CBEC28];
  v57 = *MEMORY[0x277CD4610];
  v8 = v57;
  v9 = MEMORY[0x277CBEC38];
  v58[2] = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"name" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v58, v56, 3)}];
  v10 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v54[0] = v5;
  v54[1] = v6;
  v55[0] = &__block_literal_global_167;
  v55[1] = v7;
  v54[2] = v8;
  v55[2] = v9;
  [v10 defineProperty:@"pages" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v55, v54, 3)}];
  v11 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v52[0] = v5;
  v52[1] = v6;
  v53[0] = &__block_literal_global_169;
  v53[1] = v7;
  v52[2] = v8;
  v53[2] = v9;
  [v11 defineProperty:@"userData" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v53, v52, 3)}];
  v12 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v50[0] = v5;
  v50[1] = v6;
  v51[0] = &__block_literal_global_175;
  v51[1] = v7;
  v50[2] = v8;
  v51[2] = v9;
  [v12 defineProperty:@"prepareMode" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v51, v50, 3)}];
  v13 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v48[0] = v5;
  v48[1] = v6;
  v49[0] = &__block_literal_global_178;
  v49[1] = v7;
  v48[2] = v8;
  v49[2] = v9;
  [v13 defineProperty:@"parentPage" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v49, v48, 3)}];
  v14 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v46[0] = v5;
  v46[1] = v6;
  v47[0] = &__block_literal_global_181;
  v47[1] = v7;
  v46[2] = v8;
  v47[2] = v9;
  [v14 defineProperty:@"displayedPages" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v47, v46, 3)}];
  v15 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v44[0] = v5;
  v44[1] = v6;
  v45[0] = &__block_literal_global_183;
  v45[1] = v7;
  v44[2] = v8;
  v45[2] = v9;
  [v15 defineProperty:@"deepestDisplayedPage" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v45, v44, 3)}];
  v16 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v42[0] = v5;
  v42[1] = v6;
  v43[0] = &__block_literal_global_185;
  v43[1] = v7;
  v42[2] = v8;
  v43[2] = v9;
  [v16 defineProperty:@"currentPage" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v43, v42, 3)}];
  v17 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v40[0] = v5;
  v40[1] = v6;
  v41[0] = &__block_literal_global_191;
  v41[1] = v7;
  v40[2] = v8;
  v41[2] = v9;
  [v17 defineProperty:@"layoutFactor" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v41, v40, 3)}];
  v18 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v20 = *MEMORY[0x277CD4638];
  v38[0] = *MEMORY[0x277CD4630];
  v19 = v38[0];
  v38[1] = v20;
  v39[0] = &__block_literal_global_197;
  v39[1] = v9;
  v21 = v9;
  v38[2] = v6;
  v38[3] = v8;
  v22 = MEMORY[0x277CBEC28];
  v39[2] = MEMORY[0x277CBEC28];
  v39[3] = v21;
  [v18 defineProperty:@"reload" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v39, v38, 4)}];
  v23 = [objc_msgSend(a3 "objectForKeyedSubscript:{"objectForKeyedSubscript:", @"prototype"}")];
  v36[0] = v19;
  v36[1] = v20;
  v37[0] = &__block_literal_global_202;
  v37[1] = v21;
  v36[2] = v6;
  v36[3] = v8;
  v37[2] = v22;
  v37[3] = v21;
  [v23 defineProperty:@"refresh" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v37, v36, 4)}];
  v24 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v34[0] = v19;
  v34[1] = v20;
  v35[0] = &__block_literal_global_208;
  v35[1] = v21;
  v34[2] = v6;
  v34[3] = v8;
  v35[2] = v22;
  v35[3] = v21;
  [v24 defineProperty:@"navigateToPage" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v35, v34, 4)}];
  v25 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v32[0] = v19;
  v32[1] = v20;
  v33[0] = &__block_literal_global_216;
  v33[1] = v21;
  v32[2] = v6;
  v32[3] = v8;
  v33[2] = v22;
  v33[3] = v21;
  [v25 defineProperty:@"beginDucking" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v33, v32, 4)}];
  v26 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v30[0] = v19;
  v30[1] = v20;
  v31[0] = &__block_literal_global_221;
  v31[1] = v21;
  v30[2] = v6;
  v30[3] = v8;
  v31[2] = v22;
  v31[3] = v21;
  [v26 defineProperty:@"endDucking" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v31, v30, 4)}];
  v27 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKNavigatorViewController", "objectForKeyedSubscript:", @"prototype"}];
  v28[0] = v19;
  v28[1] = v20;
  v29[0] = &__block_literal_global_226;
  v29[1] = v21;
  v28[2] = v6;
  v28[3] = v8;
  v29[2] = v22;
  v29[3] = v21;
  [v27 defineProperty:@"gotoPage" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v29, v28, 4)}];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 name];
}

id __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_2()
{
  v0 = objc_opt_new();
  [v0 setTag:1];
  [v0 setDataSource:{objc_msgSend(objc_msgSend(MEMORY[0x277CD4640], "currentThis"), "toObject")}];

  return v0;
}

id __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_3()
{
  v0 = objc_opt_new();
  [v0 setTag:2];
  [v0 setDataSource:{objc_msgSend(objc_msgSend(MEMORY[0x277CD4640], "currentThis"), "toObject")}];

  return v0;
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_4()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 prepareMode];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_5()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 parentPageViewController];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_6()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 displayedPageViewControllers];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_7()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 deepestDisplayedPageViewController];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_8()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 currentPageViewController];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_9()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 layoutFactor];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_10()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 prepareForReload];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_11()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 prepareForRefresh];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_13;
  v9[3] = &unk_279C8FA38;
  v9[4] = a4;
  return [v7 navigateToPageWithName:a2 animated:a3 completion:v9];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4[0] = [MEMORY[0x277CCABB0] numberWithBool:a2];
  return [v2 callWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v4, 1)}];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_14(double a1, double a2)
{
  v4 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v4 beginDuckingToLevel:a1 fadeDuration:a2];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_15()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 endDucking];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_17;
  v9[3] = &unk_279C8FA38;
  v9[4] = a4;
  return [v7 gotoPageWithName:a2 animated:a3 completion:v9];
}

uint64_t __57__OKNavigatorViewControllerProxy_setupJavascriptContext___block_invoke_17(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4[0] = [MEMORY[0x277CCABB0] numberWithBool:a2];
  return [v2 callWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v4, 1)}];
}

- (unint64_t)countOfDictionaryProxy:(id)a3
{
  if ([a3 tag] == 1)
  {
    v5 = [(OKPresentationNavigator *)[(OKNavigatorViewControllerProxy *)self navigator] pagesNames];
  }

  else
  {
    if ([a3 tag] != 2)
    {
      return 0;
    }

    v5 = [(OKPresentationCanvas *)[(OKNavigatorViewControllerProxy *)self navigator] userData];
  }

  return [(NSMutableArray *)v5 count];
}

- (id)allKeysForDictionaryProxy:(id)a3
{
  if ([a3 tag] == 1)
  {
    v5 = [(OKNavigatorViewControllerProxy *)self navigator];

    return [(OKPresentationNavigator *)v5 pagesNames];
  }

  else if ([a3 tag] == 2)
  {
    v7 = [(OKPresentationCanvas *)[(OKNavigatorViewControllerProxy *)self navigator] userData];

    return [(NSMutableDictionary *)v7 allKeys];
  }

  else
  {
    return 0;
  }
}

- (id)dictionaryProxy:(id)a3 objectForKey:(id)a4
{
  if ([a3 tag] == 1)
  {

    return [(OKNavigatorViewControllerProxy *)self pageViewControllerForPageWithName:a4 createIfNeeded:1];
  }

  else if ([a3 tag] == 2)
  {
    v8 = [(OKPresentationCanvas *)[(OKNavigatorViewControllerProxy *)self navigator] userData];

    return [(NSMutableDictionary *)v8 objectForKey:a4];
  }

  else
  {
    return 0;
  }
}

- (void)setAudioPlaylistEnabled:(BOOL)a3
{
  self->_audioPlaylistEnabled = a3;
  if (a3 && [(OKNavigatorViewControllerProxy *)self prepareMode]== 1)
  {

    [(OKNavigatorViewControllerProxy *)self _playAudioPlaylist];
  }

  else
  {

    [(OKNavigatorViewControllerProxy *)self _stopAudioPlaylist];
  }
}

- (void)rewindAudioPlaylist
{
  [(OKAudioPlaylist *)self->_audioPlaylist rewind];
  if (self->_playlistTrackID)
  {
    [(OKPresentationViewControllerProxy *)self->_presentationViewController endAudioForController:self andTrackID:?];
    self->_playlistTrackID = 0;
  }

  if (self->_audioPlaylistEnabled && [(OKNavigatorViewControllerProxy *)self prepareMode]== 1 && ![(OKPresentationViewControllerProxy *)[(OKNavigatorViewControllerProxy *)self presentationViewController] isPaused])
  {

    [(OKNavigatorViewControllerProxy *)self _playAudioPlaylist];
  }
}

- (void)_playAudioPlaylist
{
  if (![(OKPresentationViewControllerProxy *)[(OKNavigatorViewControllerProxy *)self presentationViewController] isPaused]&& !self->_playlistTrackID && self->_audioPlaylist)
  {
    audioVolume = self->_audioVolume;
    *&audioVolume = audioVolume;
    self->_playlistTrackID = [(OKPresentationViewControllerProxy *)self->_presentationViewController beginAudioForController:self withAVAsset:0 andVolume:audioVolume];
    audioPlaylist = self->_audioPlaylist;

    [(OKAudioPlaylist *)audioPlaylist play];
  }
}

- (void)_stopAudioPlaylist
{
  if (self->_playlistTrackID)
  {
    audioPlaylist = self->_audioPlaylist;
    if (audioPlaylist)
    {
      [(OKAudioPlaylist *)audioPlaylist stop];
      [(OKPresentationViewControllerProxy *)self->_presentationViewController endAudioForController:self andTrackID:self->_playlistTrackID];
      self->_playlistTrackID = 0;
    }
  }
}

- (void)_setAudioURLs:(id)a3
{
  if ([(OKAudioPlaylist *)self->_audioPlaylist isPlaying])
  {
    v5 = 1;
  }

  else
  {
    v5 = ![(OKPresentationViewControllerProxy *)[(OKNavigatorViewControllerProxy *)self presentationViewController] isPaused]&& [(OKPresentationViewControllerProxy *)[(OKNavigatorViewControllerProxy *)self presentationViewController] _hasAppeared];
  }

  if (self->_audioPlaylist)
  {
    [(OKNavigatorViewControllerProxy *)self _stopAudioPlaylist];
    audioPlaylist = self->_audioPlaylist;
    if (audioPlaylist)
    {

      self->_audioPlaylist = 0;
    }
  }

  if (a3)
  {
    v7 = [[OKAudioPlaylist alloc] initWithAudioURLs:a3 presentation:[(OKPresentationCanvas *)self->_navigator presentation]];
    self->_audioPlaylist = v7;
    [(OKAudioPlaylist *)v7 setDelegate:self];
    [(OKAudioPlaylist *)self->_audioPlaylist setVolume:0.0];
    [(OKAudioPlaylist *)self->_audioPlaylist setLoops:self->_audioPlaylistLoops];
    if (v5)
    {

      [(OKNavigatorViewControllerProxy *)self _playAudioPlaylist];
    }
  }
}

- (void)setPlaybackAudioVolume:(double)a3
{
  v3 = self->_audioVolume * a3;
  *&v3 = v3;
  [(OKAudioPlaylist *)self->_audioPlaylist setVolume:v3];
}

- (void)audioStartedPlayingWithAVAsset:(id)a3
{
  audioVolume = self->_audioVolume;
  *&audioVolume = audioVolume;
  [(OKPresentationViewControllerProxy *)self->_presentationViewController audioStartedPlayingForTrackID:self->_playlistTrackID withAVAsset:a3 andVolume:audioVolume];
}

- (CGRect)visiblePageRect
{
  v2 = [(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self currentPageViewController] view];

  [v2 frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)removeAllReadyNotifications
{
  [(NSRecursiveLock *)self->_readyRecursiveLock lock];
  [(NSMutableArray *)self->_readyNotificationBlocks removeAllObjects];
  readyRecursiveLock = self->_readyRecursiveLock;

  [(NSRecursiveLock *)readyRecursiveLock unlock];
}

- (void)notifyWhenBecomesReady:(id)a3
{
  if (a3)
  {
    [(NSRecursiveLock *)self->_readyRecursiveLock lock];
    if ([(OKNavigatorViewControllerProxy *)self isReady:1])
    {
      (*(a3 + 2))(a3);
    }

    else
    {
      -[NSMutableArray addObject:](self->_readyNotificationBlocks, "addObject:", [a3 copy]);
    }

    readyRecursiveLock = self->_readyRecursiveLock;

    [(NSRecursiveLock *)readyRecursiveLock unlock];
  }
}

- (BOOL)isReady:(BOOL)a3
{
  v3 = a3;
  [(NSRecursiveLock *)self->_readyRecursiveLock lock];
  v6 = 0;
  if ((self->_isReady || !-[OKNavigatorViewControllerProxy supportsReadiness](self, "supportsReadiness") || [-[OKNavigatorViewControllerProxy view](self "view")]) && (!v3 || (objc_msgSend(-[OKNavigatorViewControllerProxy view](self, "view"), "isHidden") & 1) != 0 || (currentPageViewController = self->_currentPageViewController) == 0 || -[OKPageViewController isReady:](currentPageViewController, "isReady:", 1)))
  {
    v6 = 1;
  }

  [(NSRecursiveLock *)self->_readyRecursiveLock unlock];
  return v6;
}

- (double)readyProgress:(BOOL)a3
{
  v5 = 1.0;
  if (([-[OKNavigatorViewControllerProxy view](self "view")] & 1) == 0)
  {
    [(NSRecursiveLock *)self->_readyRecursiveLock lock];
    if (a3)
    {
      if ([(OKNavigatorViewControllerProxy *)self supportsReadiness])
      {
        v6 = 2.0;
      }

      else
      {
        v6 = 1.0;
      }

      v7 = 0.0;
      if ([(OKNavigatorViewControllerProxy *)self supportsReadiness])
      {
        if (self->_isReady)
        {
          v7 = 1.0 / v6;
        }

        else
        {
          v7 = 0.0;
        }
      }

      [(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self currentPageViewController] readyProgress:1];
      v5 = v7 + v8 / v6;
    }

    else if (!self->_isReady)
    {
      if ([(OKNavigatorViewControllerProxy *)self supportsReadiness])
      {
        v5 = 0.0;
      }

      else
      {
        v5 = 1.0;
      }
    }

    [(NSRecursiveLock *)self->_readyRecursiveLock unlock];
  }

  return v5;
}

- (void)becomeReady
{
  [(NSRecursiveLock *)self->_readyRecursiveLock lock];
  if (!self->_isReady)
  {
    self->_isReady = 1;
    [(OKNavigatorViewControllerProxy *)self readinessDidChange:1];
  }

  readyRecursiveLock = self->_readyRecursiveLock;

  [(NSRecursiveLock *)readyRecursiveLock unlock];
}

- (void)resignReady
{
  [(NSRecursiveLock *)self->_readyRecursiveLock lock];
  if (self->_isReady)
  {
    self->_isReady = 0;
    [(OKNavigatorViewControllerProxy *)self readinessDidChange:0];
  }

  readyRecursiveLock = self->_readyRecursiveLock;

  [(NSRecursiveLock *)readyRecursiveLock unlock];
}

- (void)readinessDidChange:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_readyRecursiveLock lock];
  if ([(OKNavigatorViewControllerProxy *)self isReady:1]== v3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    readyNotificationBlocks = self->_readyNotificationBlocks;
    v6 = [(NSMutableArray *)readyNotificationBlocks countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(readyNotificationBlocks);
          }

          (*(*(*(&v10 + 1) + 8 * i) + 16))();
        }

        v7 = [(NSMutableArray *)readyNotificationBlocks countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_readyNotificationBlocks removeAllObjects];
    if ([(OKNavigatorViewControllerProxy *)self parentPageViewController])
    {
      [(OKPageViewController *)[(OKNavigatorViewControllerProxy *)self parentPageViewController] readinessDidChange:v3];
    }
  }

  [(NSRecursiveLock *)self->_readyRecursiveLock unlock];
}

@end