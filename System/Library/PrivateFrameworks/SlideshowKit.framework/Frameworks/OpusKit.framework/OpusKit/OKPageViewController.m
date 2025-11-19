@interface OKPageViewController
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (BOOL)canPerformAction:(id)a3;
- (BOOL)hasWidgetFocused;
- (BOOL)interactivityEnabled;
- (BOOL)isReady:(BOOL)a3;
- (BOOL)performActionScript:(id)a3 withAction:(id)a4;
- (BOOL)prepareForDisplay;
- (BOOL)prepareForUnload;
- (BOOL)prepareForWarmup;
- (BOOL)sendAction:(id)a3 toTarget:(id)a4;
- (CGSize)parentLayoutFactor;
- (NSString)description;
- (OKPageViewController)initWithPage:(id)a3;
- (UIEdgeInsets)eventsInset;
- (UIEdgeInsets)settingEventsInset;
- (double)readyProgress:(BOOL)a3;
- (id)actionBindingForAction:(id)a3 isTouchCountAgnostic:(BOOL)a4;
- (id)actionBindings;
- (id)allActionBindings;
- (id)allKeysForDictionaryProxy:(id)a3;
- (id)deepestDisplayedPageViewController;
- (id)dictionaryProxy:(id)a3 objectForKey:(id)a4;
- (id)displayedPageViewControllers;
- (id)mediaURLs;
- (id)valueForUndefinedKey:(id)a3;
- (id)visibleWidgets;
- (unint64_t)countOfDictionaryProxy:(id)a3;
- (void)addActionBinding:(id)a3 scope:(unint64_t)a4;
- (void)applyLayoutSettings;
- (void)applySettingsIfNeeded;
- (void)becomeReady;
- (void)cancelCouchPotatoPlayback;
- (void)commonInit;
- (void)dealloc;
- (void)evaluateScript:(id)a3 withInfoDictionary:(id)a4 andCompletionBlock:(id)a5 forWidgetView:(id)a6;
- (void)instantPause;
- (void)instantResume;
- (void)layoutDidChange;
- (void)networkStatusDidChange:(int64_t)a3;
- (void)notifyWhenBecomesReady:(id)a3;
- (void)pageAppearingWithProgress:(float)a3 animated:(BOOL)a4;
- (void)pageDidAppear:(BOOL)a3;
- (void)pageDidDisappear:(BOOL)a3;
- (void)pageDisappearingWithProgress:(float)a3 animated:(BOOL)a4;
- (void)pageWillAppear:(BOOL)a3;
- (void)pageWillDisappear:(BOOL)a3;
- (void)prepareAllWidgets;
- (void)prepareForMode:(unint64_t)a3;
- (void)prepareForRefresh;
- (void)prepareForReload;
- (void)prepareWidgetsInRect:(CGRect)a3;
- (void)readinessDidChange:(BOOL)a3;
- (void)removeActionBinding:(id)a3;
- (void)removeAllActionBindings;
- (void)removeAllReadyNotifications;
- (void)resignReady;
- (void)resolutionDidChange;
- (void)setSettingActionBindings:(id)a3;
- (void)setSettingAppearingActionScript:(id)a3;
- (void)setSettingCanPerformActionScript:(id)a3;
- (void)setSettingDidAppearActionScript:(id)a3;
- (void)setSettingDidDisappearActionScript:(id)a3;
- (void)setSettingDisappearingActionScript:(id)a3;
- (void)setSettingEventsInset:(UIEdgeInsets)a3;
- (void)setSettingLayoutChangedActionScript:(id)a3;
- (void)setSettingLayoutSteps:(id)a3;
- (void)setSettingMotionEnabled:(BOOL)a3;
- (void)setSettingMotionTiltXEnabled:(BOOL)a3;
- (void)setSettingMotionTiltYEnabled:(BOOL)a3;
- (void)setSettingMotionTiltZEnabled:(BOOL)a3;
- (void)setSettingMotionXMinMax:(CGSize)a3;
- (void)setSettingMotionYMinMax:(CGSize)a3;
- (void)setSettingMotionZMinMax:(CGSize)a3;
- (void)setSettingMusic:(id)a3;
- (void)setSettingPerspective:(double)a3;
- (void)setSettingPrepareActionScript:(id)a3;
- (void)setSettingWillAppearActionScript:(id)a3;
- (void)setSettingWillDisappearActionScript:(id)a3;
- (void)setUserSettingObject:(id)a3 forKey:(id)a4;
- (void)updateLayoutSteps;
@end

@implementation OKPageViewController

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = OKPageViewController;
  [(OFUIViewController *)&v3 commonInit];
  self->_needsApplySettings = 1;
  self->_hasSettingsApplied = 0;
  self->_prepareWidgetsManually = 0;
  self->_page = 0;
  self->_layoutSteps = 0;
  self->_prepareMode = 0;
  self->_subNavigatorViewController = 0;
  objc_storeWeak(&self->_presentationViewController, 0);
  objc_storeWeak(&self->_navigatorViewController, 0);
  self->_perspective = 0.0;
  self->_motionEnabled = 0;
  self->_motionTiltXEnabled = 0;
  *&self->_motionTiltYEnabled = 1;
  self->_motionXMinMax = xmmword_269F6AFD0;
  self->_motionYMinMax = xmmword_269F6AFD0;
  self->_motionZMinMax = xmmword_269F6AFD0;
  self->_lastMotionRotationX = 0.0;
  self->_lastMotionRotationY = 0.0;
  self->_lastMotionRotationZ = 0.0;
  self->_musicURLs = 0;
  self->_prepareActionScript = 0;
  self->_willAppearActionScript = 0;
  self->_appearingActionScript = 0;
  self->_didAppearActionScript = 0;
  self->_willDisappearActionScript = 0;
  self->_disappearingActionScript = 0;
  self->_didDisappearActionScript = 0;
  self->_layoutChangedActionScript = 0;
  self->_actionBindings = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_isReady = 0;
  self->_readyNotificationBlocks = objc_opt_new();
  self->_readyRecursiveLock = objc_alloc_init(MEMORY[0x277CCAC60]);
  [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
}

- (OKPageViewController)initWithPage:(id)a3
{
  v4 = [(OFUIViewController *)self init];
  if (v4)
  {
    v4->_page = a3;
  }

  return v4;
}

- (void)dealloc
{
  if (*MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageViewController.m" line:190 andFormat:@"Deallocing %@", self];
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  page = self->_page;
  if (page)
  {

    self->_page = 0;
  }

  layoutSteps = self->_layoutSteps;
  if (layoutSteps)
  {

    self->_layoutSteps = 0;
  }

  musicURLs = self->_musicURLs;
  if (musicURLs)
  {

    self->_musicURLs = 0;
  }

  subNavigatorViewController = self->_subNavigatorViewController;
  if (subNavigatorViewController)
  {

    self->_subNavigatorViewController = 0;
  }

  objc_storeWeak(&self->_presentationViewController, 0);
  objc_storeWeak(&self->_navigatorViewController, 0);
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

  appearingActionScript = self->_appearingActionScript;
  if (appearingActionScript)
  {

    self->_appearingActionScript = 0;
  }

  willDisappearActionScript = self->_willDisappearActionScript;
  if (willDisappearActionScript)
  {

    self->_willDisappearActionScript = 0;
  }

  disappearingActionScript = self->_disappearingActionScript;
  if (disappearingActionScript)
  {

    self->_disappearingActionScript = 0;
  }

  didDisappearActionScript = self->_didDisappearActionScript;
  if (didDisappearActionScript)
  {

    self->_didDisappearActionScript = 0;
  }

  layoutChangedActionScript = self->_layoutChangedActionScript;
  if (layoutChangedActionScript)
  {

    self->_layoutChangedActionScript = 0;
  }

  [(OKPageViewController *)self removeAllActionBindings];
  actionBindings = self->_actionBindings;
  if (actionBindings)
  {

    self->_actionBindings = 0;
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
  v19.receiver = self;
  v19.super_class = OKPageViewController;
  [(OFUIViewController *)&v19 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(OKPresentationCanvas *)self->_page name];
  v8.receiver = self;
  v8.super_class = OKPageViewController;
  return [v3 stringWithFormat:@"PAGE %@ %@: %@", v5, v6, -[OKPageViewController description](&v8, sel_description)];
}

- (void)networkStatusDidChange:(int64_t)a3
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageViewController.m" line:270 andFormat:@"networkStatusDidChange must be implemented by subclass"];
  }
}

- (void)resolutionDidChange
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageViewController.m" line:275 andFormat:@"layoutDidChange must be implemented by subclass"];
  }
}

- (void)layoutDidChange
{
  layoutChangedActionScript = self->_layoutChangedActionScript;
  if (layoutChangedActionScript)
  {
    [(OKPageViewController *)self evaluateScript:layoutChangedActionScript withInfoDictionary:0 andCompletionBlock:0 forWidgetView:0];
  }
}

- (CGSize)parentLayoutFactor
{
  if ([(OKPageViewController *)self navigatorViewController])
  {
    v3 = [(OKPageViewController *)self navigatorViewController];
  }

  else
  {
    v3 = [(OKPageViewController *)self presentationViewController];
  }

  [(OKNavigatorViewControllerProxy *)v3 layoutFactor];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)applySettingsIfNeeded
{
  if (self->_needsApplySettings || !self->_hasSettingsApplied)
  {
    [-[OKPageViewController view](self "view")];

    [(OKPageViewController *)self applySettings];
  }
}

- (void)applyLayoutSettings
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(OKPageViewController *)self layoutSettingsKeys];
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
        v9 = [(OKPresentationCanvas *)self->_page mergedSettings];
        v10 = [v9 objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"@%@", v8)}];
        if (v10)
        {
          v11 = v10;
          v12 = @"@%@";
        }

        else
        {
          v13 = [(OKPresentationCanvas *)self->_page mergedSettings];
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
  [OKSettings applySettings:v3 toObject:self withResolution:[(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] resolution]];
  +[OKSettings commitApplyingSettings];
}

+ (id)supportedSettings
{
  v46[20] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v45[0] = @"actionBindings";
  v44[0] = &unk_287AF0788;
  v43[0] = @"type";
  v43[1] = @"class";
  v44[1] = objc_opt_class();
  v43[2] = @"default";
  v44[2] = [MEMORY[0x277CBEB68] null];
  v46[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];
  v45[1] = @"perspective";
  v41[0] = @"type";
  v41[1] = @"default";
  v42[0] = &unk_287AF07A0;
  v42[1] = &unk_287AF07B8;
  v41[2] = @"priority";
  v42[2] = &unk_287AF07D0;
  v46[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
  v45[2] = @"motionEnabled";
  v39[0] = @"type";
  v39[1] = @"default";
  v3 = MEMORY[0x277CBEC28];
  v40[0] = &unk_287AF07E8;
  v40[1] = MEMORY[0x277CBEC28];
  v39[2] = @"priority";
  v40[2] = &unk_287AF0800;
  v46[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
  v45[3] = @"motionTiltXEnabled";
  v37[0] = @"type";
  v37[1] = @"default";
  v38[0] = &unk_287AF07E8;
  v38[1] = v3;
  v37[2] = @"priority";
  v38[2] = &unk_287AF0818;
  v46[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
  v45[4] = @"motionTiltYEnabled";
  v35[0] = @"type";
  v35[1] = @"default";
  v36[0] = &unk_287AF07E8;
  v36[1] = MEMORY[0x277CBEC38];
  v35[2] = @"priority";
  v36[2] = &unk_287AF0818;
  v46[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
  v45[5] = @"motionTiltZEnabled";
  v33[0] = @"type";
  v33[1] = @"default";
  v34[0] = &unk_287AF07E8;
  v34[1] = v3;
  v33[2] = @"priority";
  v34[2] = &unk_287AF0818;
  v46[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v45[6] = @"motionXMinMax";
  v32[0] = &unk_287AF0830;
  v31[0] = @"type";
  v31[1] = @"default";
  v31[2] = @"priority";
  v32[1] = [MEMORY[0x277CCAE60] valueWithCGSize:{-0.785398163, 0.785398163}];
  v32[2] = &unk_287AF0818;
  v46[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v45[7] = @"motionYMinMax";
  v30[0] = &unk_287AF0830;
  v29[0] = @"type";
  v29[1] = @"default";
  v29[2] = @"priority";
  v30[1] = [MEMORY[0x277CCAE60] valueWithCGSize:{-0.785398163, 0.785398163}];
  v30[2] = &unk_287AF0818;
  v46[7] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v45[8] = @"motionZMinMax";
  v28[0] = &unk_287AF0830;
  v27[0] = @"type";
  v27[1] = @"default";
  v27[2] = @"priority";
  v28[1] = [MEMORY[0x277CCAE60] valueWithCGSize:{-0.785398163, 0.785398163}];
  v28[2] = &unk_287AF0818;
  v46[8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v45[9] = @"prepareActionScript";
  v25[1] = @"default";
  v26[0] = &unk_287AF0848;
  v25[0] = @"type";
  v26[1] = [MEMORY[0x277CBEB68] null];
  v46[9] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v45[10] = @"canPerformActionScript";
  v23[1] = @"default";
  v24[0] = &unk_287AF0848;
  v23[0] = @"type";
  v24[1] = [MEMORY[0x277CBEB68] null];
  v46[10] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v45[11] = @"willAppearActionScript";
  v21[1] = @"default";
  v22[0] = &unk_287AF0848;
  v21[0] = @"type";
  v22[1] = [MEMORY[0x277CBEB68] null];
  v46[11] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v45[12] = @"appearingActionScript";
  v19[1] = @"default";
  v20[0] = &unk_287AF0848;
  v19[0] = @"type";
  v20[1] = [MEMORY[0x277CBEB68] null];
  v46[12] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v45[13] = @"didAppearActionScript";
  v17[1] = @"default";
  v18[0] = &unk_287AF0848;
  v17[0] = @"type";
  v18[1] = [MEMORY[0x277CBEB68] null];
  v46[13] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v45[14] = @"willDisappearActionScript";
  v15[1] = @"default";
  v16[0] = &unk_287AF0848;
  v15[0] = @"type";
  v16[1] = [MEMORY[0x277CBEB68] null];
  v46[14] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v45[15] = @"disappearingActionScript";
  v13[1] = @"default";
  v14[0] = &unk_287AF0848;
  v13[0] = @"type";
  v14[1] = [MEMORY[0x277CBEB68] null];
  v46[15] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v45[16] = @"didDisappearActionScript";
  v11[1] = @"default";
  v12[0] = &unk_287AF0848;
  v11[0] = @"type";
  v12[1] = [MEMORY[0x277CBEB68] null];
  v46[16] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v45[17] = @"layoutChangedActionScript";
  v9[1] = @"default";
  v10[0] = &unk_287AF0848;
  v9[0] = @"type";
  v10[1] = [MEMORY[0x277CBEB68] null];
  v46[17] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v45[18] = @"layoutSteps";
  v7[1] = @"default";
  v8[0] = &unk_287AF0860;
  v7[0] = @"type";
  v8[1] = [MEMORY[0x277CBEB68] null];
  v46[18] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v45[19] = @"eventsInset";
  v5[1] = @"default";
  v6[0] = &unk_287AF0878;
  v5[0] = @"type";
  v6[1] = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v46[19] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v46, v45, 20)}];
  return v2;
}

- (void)setUserSettingObject:(id)a3 forKey:(id)a4
{
  v6 = [(OKPresentationCanvas *)self->_page userSettings];

  [(NSMutableDictionary *)v6 setObject:a3 forKey:a4];
}

- (unint64_t)countOfDictionaryProxy:(id)a3
{
  if ([a3 tag] != 2)
  {
    return 0;
  }

  v4 = [(OKPresentationCanvas *)[(OKPageViewController *)self page] userData];

  return [(NSMutableDictionary *)v4 count];
}

- (id)allKeysForDictionaryProxy:(id)a3
{
  if ([a3 tag] != 2)
  {
    return 0;
  }

  v4 = [(OKPresentationCanvas *)[(OKPageViewController *)self page] userData];

  return [(NSMutableDictionary *)v4 allKeys];
}

- (id)dictionaryProxy:(id)a3 objectForKey:(id)a4
{
  if ([a3 tag] != 2)
  {
    return 0;
  }

  v6 = [(OKPresentationCanvas *)[(OKPageViewController *)self page] userData];

  return [(NSMutableDictionary *)v6 objectForKey:a4];
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 isEqualToString:@"userData"])
  {
    v5 = objc_opt_new();
    [v5 setTag:2];
    [v5 setDataSource:self];

    return v5;
  }

  else if ([a3 isEqualToString:@"subNavigator"])
  {
    return self->_subNavigatorViewController;
  }

  else if ([a3 isEqualToString:@"parentNavigator"])
  {

    return [(OKPageViewController *)self navigatorViewController];
  }

  else if ([a3 isEqualToString:@"displayedPages"])
  {

    return [(OKPageViewController *)self displayedPageViewControllers];
  }

  else if ([a3 isEqualToString:@"deepestDisplayedPage"])
  {

    return [(OKPageViewController *)self deepestDisplayedPageViewController];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = OKPageViewController;
    return [(OKPageViewController *)&v7 valueForUndefinedKey:a3];
  }
}

- (id)actionBindings
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->_actionBindings allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_actionBindings objectForKey:v9];
        if ([v10 tag] == 1)
        {
          [v3 setObject:v10 forKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setSettingActionBindings:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [-[OKPageViewController actionBindings](self "actionBindings")];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(OKPageViewController *)self removeActionBinding:*(*(&v21 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [a3 allKeys];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * j);
        v16 = [a3 objectForKey:v15];
        [v16 setName:v15];
        [v16 setTag:1];
        [(OKPageViewController *)self addActionBinding:v16 scope:3];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }
}

- (void)setSettingPerspective:(double)a3
{
  if (self->_perspective != a3)
  {
    self->_perspective = a3;
    v4 = *(MEMORY[0x277CD9DE8] + 48);
    v8[2] = *(MEMORY[0x277CD9DE8] + 32);
    v8[3] = v4;
    v8[4] = *(MEMORY[0x277CD9DE8] + 64);
    v9 = *(MEMORY[0x277CD9DE8] + 80);
    v5 = *(MEMORY[0x277CD9DE8] + 16);
    v8[0] = *MEMORY[0x277CD9DE8];
    v8[1] = v5;
    v6 = *(MEMORY[0x277CD9DE8] + 112);
    v11 = *(MEMORY[0x277CD9DE8] + 96);
    v12 = v6;
    v10 = a3;
    [objc_msgSend(-[OKPageViewController view](self "view")];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__OKPageViewController_setSettingPerspective___block_invoke;
    v7[3] = &unk_279C8E818;
    v7[4] = self;
    [OKSettings applyUpdateBlockOnce:v7 forKey:@"updateMotion"];
  }
}

- (void)setSettingMotionEnabled:(BOOL)a3
{
  if (self->_motionEnabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_motionEnabled = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__OKPageViewController_setSettingMotionEnabled___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateMotion"];
  }
}

- (void)setSettingMotionTiltXEnabled:(BOOL)a3
{
  if (self->_motionTiltXEnabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_motionTiltXEnabled = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__OKPageViewController_setSettingMotionTiltXEnabled___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateMotion"];
  }
}

- (void)setSettingMotionTiltYEnabled:(BOOL)a3
{
  if (self->_motionTiltYEnabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_motionTiltYEnabled = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__OKPageViewController_setSettingMotionTiltYEnabled___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateMotion"];
  }
}

- (void)setSettingMotionTiltZEnabled:(BOOL)a3
{
  if (self->_motionTiltZEnabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_motionTiltZEnabled = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__OKPageViewController_setSettingMotionTiltZEnabled___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateMotion"];
  }
}

- (void)setSettingMotionXMinMax:(CGSize)a3
{
  if (self->_motionXMinMax.width != a3.width || self->_motionXMinMax.height != a3.height)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_motionXMinMax = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__OKPageViewController_setSettingMotionXMinMax___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateMotion"];
  }
}

- (void)setSettingMotionYMinMax:(CGSize)a3
{
  if (self->_motionYMinMax.width != a3.width || self->_motionYMinMax.height != a3.height)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_motionYMinMax = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__OKPageViewController_setSettingMotionYMinMax___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateMotion"];
  }
}

- (void)setSettingMotionZMinMax:(CGSize)a3
{
  if (self->_motionZMinMax.width != a3.width || self->_motionZMinMax.height != a3.height)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_motionZMinMax = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__OKPageViewController_setSettingMotionZMinMax___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateMotion"];
  }
}

- (void)setSettingMusic:(id)a3
{
  musicURLs = self->_musicURLs;
  if (musicURLs)
  {

    self->_musicURLs = 0;
  }

  self->_musicURLs = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:a3];
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

- (void)setSettingAppearingActionScript:(id)a3
{
  appearingActionScript = self->_appearingActionScript;
  if (appearingActionScript)
  {

    self->_appearingActionScript = 0;
  }

  self->_appearingActionScript = [a3 copy];
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

- (void)setSettingDisappearingActionScript:(id)a3
{
  disappearingActionScript = self->_disappearingActionScript;
  if (disappearingActionScript)
  {

    self->_disappearingActionScript = 0;
  }

  self->_disappearingActionScript = [a3 copy];
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

- (void)setSettingLayoutChangedActionScript:(id)a3
{
  layoutChangedActionScript = self->_layoutChangedActionScript;
  if (layoutChangedActionScript)
  {

    self->_layoutChangedActionScript = 0;
  }

  self->_layoutChangedActionScript = [a3 copy];
}

- (void)setSettingLayoutSteps:(id)a3
{
  if (![(NSArray *)self->_layoutSteps isEqualToArray:?])
  {
    layoutSteps = self->_layoutSteps;
    if (layoutSteps)
    {

      self->_layoutSteps = 0;
    }

    self->_layoutSteps = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:a3 copyItems:1];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__OKPageViewController_setSettingLayoutSteps___block_invoke;
    v6[3] = &unk_279C8E818;
    v6[4] = self;
    [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateLayoutSteps"];
  }
}

- (UIEdgeInsets)settingEventsInset
{
  [(OKPageViewController *)self layoutFactor];
  v4 = self->_eventsInset.top / v3;
  v5 = self->_eventsInset.bottom / v3;
  v7 = self->_eventsInset.left / v6;
  v8 = self->_eventsInset.right / v6;
  v9 = v4;
  result.right = v8;
  result.bottom = v5;
  result.left = v7;
  result.top = v9;
  return result;
}

- (void)setSettingEventsInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(OKPageViewController *)self layoutFactor];
  self->_eventsInset.top = top * v8;
  self->_eventsInset.left = left * v9;
  self->_eventsInset.bottom = bottom * v8;
  self->_eventsInset.right = right * v9;
}

- (void)pageWillAppear:(BOOL)a3
{
  v3 = a3;
  v7[1] = *MEMORY[0x277D85DE8];
  willAppearActionScript = self->_willAppearActionScript;
  if (willAppearActionScript)
  {
    v6 = @"animated";
    v7[0] = [MEMORY[0x277CCABB0] numberWithBool:a3];
    -[OKPageViewController evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", willAppearActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0);
  }

  [(OKNavigatorViewControllerProxy *)self->_subNavigatorViewController navigatorWillAppear:v3];
}

- (void)pageAppearingWithProgress:(float)a3 animated:(BOOL)a4
{
  v9[2] = *MEMORY[0x277D85DE8];
  appearingActionScript = self->_appearingActionScript;
  if (appearingActionScript)
  {
    v8[0] = @"animated";
    v8[1] = @"progress";
    v9[0] = [MEMORY[0x277CCABB0] numberWithBool:a4];
    *&v7 = a3;
    v9[1] = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    -[OKPageViewController evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", appearingActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2], 0, 0);
  }
}

- (void)pageDidAppear:(BOOL)a3
{
  v3 = a3;
  v7[1] = *MEMORY[0x277D85DE8];
  didAppearActionScript = self->_didAppearActionScript;
  if (didAppearActionScript)
  {
    v6 = @"animated";
    v7[0] = [MEMORY[0x277CCABB0] numberWithBool:a3];
    -[OKPageViewController evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", didAppearActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0);
  }

  [(OKNavigatorViewControllerProxy *)self->_subNavigatorViewController navigatorDidAppear:v3];
}

- (void)pageWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7[1] = *MEMORY[0x277D85DE8];
  willDisappearActionScript = self->_willDisappearActionScript;
  if (willDisappearActionScript)
  {
    v6 = @"animated";
    v7[0] = [MEMORY[0x277CCABB0] numberWithBool:a3];
    -[OKPageViewController evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", willDisappearActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0);
  }

  [(OKNavigatorViewControllerProxy *)self->_subNavigatorViewController navigatorWillDisappear:v3];
}

- (void)pageDisappearingWithProgress:(float)a3 animated:(BOOL)a4
{
  v9[2] = *MEMORY[0x277D85DE8];
  disappearingActionScript = self->_disappearingActionScript;
  if (disappearingActionScript)
  {
    v8[0] = @"animated";
    v8[1] = @"progress";
    v9[0] = [MEMORY[0x277CCABB0] numberWithBool:a4];
    *&v7 = a3;
    v9[1] = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    -[OKPageViewController evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", disappearingActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2], 0, 0);
  }
}

- (void)pageDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7[1] = *MEMORY[0x277D85DE8];
  didDisappearActionScript = self->_didDisappearActionScript;
  if (didDisappearActionScript)
  {
    v6 = @"animated";
    v7[0] = [MEMORY[0x277CCABB0] numberWithBool:a3];
    -[OKPageViewController evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", didDisappearActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0);
  }

  [(OKNavigatorViewControllerProxy *)self->_subNavigatorViewController navigatorDidDisappear:v3];
}

- (BOOL)prepareForDisplay
{
  v7[1] = *MEMORY[0x277D85DE8];
  [(OKPageViewController *)self applySettingsIfNeeded];
  prepareMode = self->_prepareMode;
  if (prepareMode != 1)
  {
    self->_prepareMode = 1;
    prepareActionScript = self->_prepareActionScript;
    if (prepareActionScript)
    {
      v6 = @"prepareMode";
      v7[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      -[OKPageViewController evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", prepareActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0);
    }
  }

  return prepareMode != 1;
}

- (BOOL)prepareForWarmup
{
  v7[1] = *MEMORY[0x277D85DE8];
  [(OKPageViewController *)self applySettingsIfNeeded];
  prepareMode = self->_prepareMode;
  if (prepareMode != 2)
  {
    self->_prepareMode = 2;
    prepareActionScript = self->_prepareActionScript;
    if (prepareActionScript)
    {
      v6 = @"prepareMode";
      v7[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
      -[OKPageViewController evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", prepareActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0);
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
    prepareActionScript = self->_prepareActionScript;
    if (prepareActionScript)
    {
      v6 = @"prepareMode";
      v7[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
      -[OKPageViewController evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", prepareActionScript, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1], 0, 0);
    }
  }

  return prepareMode != 3;
}

- (void)prepareForMode:(unint64_t)a3
{
  switch(a3)
  {
    case 3uLL:
      [(OKPageViewController *)self prepareForUnload];
      break;
    case 2uLL:
      [(OKPageViewController *)self prepareForWarmup];
      break;
    case 1uLL:
      [(OKPageViewController *)self prepareForDisplay];
      break;
  }
}

- (void)prepareForReload
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageViewController.m" line:966 andFormat:@"prepareForReload must be implemented by subclass"];
  }
}

- (void)prepareForRefresh
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageViewController.m" line:971 andFormat:@"prepareForRefresh must be implemented by subclass"];
  }
}

- (void)prepareAllWidgets
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageViewController.m" line:976 andFormat:@"prepareAllWidgets must be implemented by subclass"];
  }
}

- (void)prepareWidgetsInRect:(CGRect)a3
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageViewController.m" line:981 andFormat:@"prepareWidgetsInRect must be implemented by subclass", a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }
}

- (void)instantPause
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageViewController.m" line:986 andFormat:@"instantPause must be implemented by subclass"];
  }
}

- (void)instantResume
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageViewController.m" line:991 andFormat:@"instantResume must be implemented by subclass"];
  }
}

- (id)mediaURLs
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageViewController.m" line:1018 andFormat:@"mediaURLs must be implemented by subclass", v2, v3];
  }

  return 0;
}

- (void)updateLayoutSteps
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageViewController.m" line:1029 andFormat:@"updateLayoutSteps must be implemented by subclass"];
  }
}

- (id)displayedPageViewControllers
{
  v3 = [MEMORY[0x277CBEB18] arrayWithObject:self];
  subNavigatorViewController = self->_subNavigatorViewController;
  if (subNavigatorViewController)
  {
    [v3 addObjectsFromArray:{-[OKNavigatorViewControllerProxy displayedPageViewControllers](subNavigatorViewController, "displayedPageViewControllers")}];
  }

  return v3;
}

- (id)deepestDisplayedPageViewController
{
  v2 = [(OKPageViewController *)self displayedPageViewControllers];

  return [v2 lastObject];
}

- (BOOL)sendAction:(id)a3 toTarget:(id)a4
{
  [(OKPresentationViewControllerProxy *)[(OKPageViewController *)self presentationViewController] cancelCouchPotatoIfNeededWithAction:a3];
  if (!a4 || (v7 = [(OKPageViewController *)self valueForKeyPath:a4]) == 0)
  {
    v10 = [(OKPageViewController *)self actionBindingForAction:a3 isTouchCountAgnostic:0];
    if (v10)
    {
      v11 = v10;
      [a3 shouldPropagate];
    }

    else
    {
      v11 = [(OKPageViewController *)self actionBindingForAction:a3 isTouchCountAgnostic:1];
      v12 = [a3 shouldPropagate];
      if (!v11)
      {
        if (!v12)
        {
          return 1;
        }

        goto LABEL_10;
      }
    }

    if ([v11 performAction:a3])
    {
      [a3 setShouldPropagate:0];
      return 1;
    }

    if (([a3 shouldPropagate] & 1) == 0)
    {
      return 1;
    }

LABEL_10:
    [a3 convertFromResponder:self toResponder:self->_navigatorViewController];
    [a3 setShouldPropagate:1];
    navigatorViewController = self->_navigatorViewController;
    goto LABEL_11;
  }

  v8 = v7;
  [a3 convertFromResponder:self toResponder:v7];
  navigatorViewController = v8;
LABEL_11:

  return [(OKNavigatorViewControllerProxy *)navigatorViewController sendAction:a3 toTarget:0];
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
    v8[2] = __41__OKPageViewController_canPerformAction___block_invoke;
    v8[3] = &unk_279C905A8;
    v8[4] = &v9;
    [(OKPageViewController *)self evaluateScript:canPerformActionScript withInfoDictionary:v6 andCompletionBlock:v8 forWidgetView:self];
    v4 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  return v4 & 1;
}

uint64_t __41__OKPageViewController_canPerformAction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 intValue];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

- (BOOL)interactivityEnabled
{
  v2 = [(OKPageViewController *)self presentationViewController];

  return [(OKPresentationViewControllerProxy *)v2 interactivityEnabled];
}

- (BOOL)performActionScript:(id)a3 withAction:(id)a4
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"action";
  v6[0] = a4;
  -[OKPageViewController evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forWidgetView:", a3, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1], 0, 0);
  return 1;
}

- (void)addActionBinding:(id)a3 scope:(unint64_t)a4
{
  [a3 loadForResponder:self scope:a4];
  actionBindings = self->_actionBindings;
  v7 = [a3 name];

  [(NSMutableDictionary *)actionBindings setObject:a3 forKey:v7];
}

- (void)removeActionBinding:(id)a3
{
  [a3 unload];
  actionBindings = self->_actionBindings;
  v6 = [a3 name];

  [(NSMutableDictionary *)actionBindings removeObjectForKey:v6];
}

- (void)removeAllActionBindings
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(OKPageViewController *)self allActionBindings];
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

        [(OKPageViewController *)self removeActionBinding:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)allActionBindings
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSMutableDictionary *)self->_actionBindings allValues];

  return [v2 setWithArray:v3];
}

- (id)actionBindingForAction:(id)a3 isTouchCountAgnostic:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableDictionary *)self->_actionBindings allValues];
  result = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if ([v11 respondsToAction:a3 isTouchCountAgnostic:v4])
        {
          return v11;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)cancelCouchPotatoPlayback
{
  if ([(OKPageViewController *)self subNavigatorViewController])
  {
    v3 = [(OKPageViewController *)self subNavigatorViewController];

    [(OKNavigatorViewControllerProxy *)v3 cancelCouchPotatoPlayback];
  }
}

- (void)evaluateScript:(id)a3 withInfoDictionary:(id)a4 andCompletionBlock:(id)a5 forWidgetView:(id)a6
{
  v11 = [(OKPageViewController *)self navigatorViewController];

  [(OKNavigatorViewControllerProxy *)v11 evaluateScript:a3 withInfoDictionary:a4 andCompletionBlock:a5 forPageViewController:self andWidgetView:a6];
}

+ (void)setupJavascriptContext:(id)a3
{
  v52[3] = *MEMORY[0x277D85DE8];
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKPageViewController"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:a3];
  v4 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageViewController", "objectForKeyedSubscript:", @"prototype"}];
  v6 = *MEMORY[0x277CD4618];
  v50[0] = *MEMORY[0x277CD4620];
  v5 = v50[0];
  v50[1] = v6;
  v52[0] = &__block_literal_global_21;
  v52[1] = MEMORY[0x277CBEC28];
  v7 = MEMORY[0x277CBEC28];
  v51 = *MEMORY[0x277CD4610];
  v8 = v51;
  v52[2] = MEMORY[0x277CBEC38];
  v9 = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"name" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v52, v50, 3)}];
  v10 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageViewController", "objectForKeyedSubscript:", @"prototype"}];
  v48[0] = v5;
  v48[1] = v6;
  v49[0] = &__block_literal_global_194;
  v49[1] = v7;
  v48[2] = v8;
  v49[2] = v9;
  [v10 defineProperty:@"widgets" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v49, v48, 3)}];
  v11 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageViewController", "objectForKeyedSubscript:", @"prototype"}];
  v46[0] = v5;
  v46[1] = v6;
  v47[0] = &__block_literal_global_196;
  v47[1] = v7;
  v46[2] = v8;
  v47[2] = v9;
  [v11 defineProperty:@"userData" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v47, v46, 3)}];
  v12 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageViewController", "objectForKeyedSubscript:", @"prototype"}];
  v44[0] = v5;
  v44[1] = v6;
  v45[0] = &__block_literal_global_199;
  v45[1] = v7;
  v44[2] = v8;
  v45[2] = v9;
  [v12 defineProperty:@"subNavigator" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v45, v44, 3)}];
  v13 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageViewController", "objectForKeyedSubscript:", @"prototype"}];
  v42[0] = v5;
  v42[1] = v6;
  v43[0] = &__block_literal_global_201;
  v43[1] = v7;
  v42[2] = v8;
  v43[2] = v9;
  [v13 defineProperty:@"parentNavigator" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v43, v42, 3)}];
  v14 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageViewController", "objectForKeyedSubscript:", @"prototype"}];
  v40[0] = v5;
  v40[1] = v6;
  v41[0] = &__block_literal_global_204;
  v41[1] = v7;
  v40[2] = v8;
  v41[2] = v9;
  [v14 defineProperty:@"displayedPages" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v41, v40, 3)}];
  v15 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageViewController", "objectForKeyedSubscript:", @"prototype"}];
  v38[0] = v5;
  v38[1] = v6;
  v39[0] = &__block_literal_global_207;
  v39[1] = v7;
  v38[2] = v8;
  v39[2] = v9;
  [v15 defineProperty:@"deepestDisplayedPage" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v39, v38, 3)}];
  v16 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageViewController", "objectForKeyedSubscript:", @"prototype"}];
  v36[0] = v5;
  v36[1] = v6;
  v37[0] = &__block_literal_global_213;
  v37[1] = v7;
  v36[2] = v8;
  v37[2] = v9;
  [v16 defineProperty:@"prepareMode" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v37, v36, 3)}];
  v17 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageViewController", "objectForKeyedSubscript:", @"prototype"}];
  v34[0] = v5;
  v34[1] = v6;
  v35[0] = &__block_literal_global_219;
  v35[1] = v7;
  v34[2] = v8;
  v35[2] = v9;
  [v17 defineProperty:@"layoutFactor" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v35, v34, 3)}];
  v18 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageViewController", "objectForKeyedSubscript:", @"prototype"}];
  v20 = *MEMORY[0x277CD4638];
  v32[0] = *MEMORY[0x277CD4630];
  v19 = v32[0];
  v32[1] = v20;
  v33[0] = &__block_literal_global_224;
  v21 = MEMORY[0x277CBEC38];
  v33[1] = MEMORY[0x277CBEC38];
  v32[2] = v6;
  v32[3] = v8;
  v22 = MEMORY[0x277CBEC28];
  v33[2] = MEMORY[0x277CBEC28];
  v33[3] = MEMORY[0x277CBEC38];
  [v18 defineProperty:@"reload" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v33, v32, 4)}];
  v23 = [objc_msgSend(a3 "objectForKeyedSubscript:"objectForKeyedSubscript:"")];
  v30[0] = v19;
  v30[1] = v20;
  v31[0] = &__block_literal_global_229;
  v31[1] = v21;
  v30[2] = v6;
  v30[3] = v8;
  v31[2] = v22;
  v31[3] = v21;
  [v23 defineProperty:@"refresh" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v31, v30, 4)}];
  v24 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageViewController", "objectForKeyedSubscript:", @"prototype"}];
  v28[0] = v19;
  v28[1] = v20;
  v29[0] = &__block_literal_global_235;
  v29[1] = v21;
  v28[2] = v6;
  v28[3] = v8;
  v29[2] = MEMORY[0x277CBEC28];
  v29[3] = v21;
  [v24 defineProperty:@"moveWidgetBelowWidget" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v29, v28, 4)}];
  v25 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKPageViewController", "objectForKeyedSubscript:", @"prototype"}];
  v26[0] = v19;
  v26[1] = v20;
  v27[0] = &__block_literal_global_240_0;
  v27[1] = v21;
  v26[2] = v6;
  v26[3] = v8;
  v27[2] = MEMORY[0x277CBEC28];
  v27[3] = v21;
  [v25 defineProperty:@"moveWidgetAboveWidget" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v27, v26, 4)}];
}

uint64_t __47__OKPageViewController_setupJavascriptContext___block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 name];
}

id __47__OKPageViewController_setupJavascriptContext___block_invoke_2()
{
  v0 = objc_opt_new();
  [v0 setTag:1];
  [v0 setDataSource:{objc_msgSend(objc_msgSend(MEMORY[0x277CD4640], "currentThis"), "toObject")}];

  return v0;
}

id __47__OKPageViewController_setupJavascriptContext___block_invoke_3()
{
  v0 = objc_opt_new();
  [v0 setTag:2];
  [v0 setDataSource:{objc_msgSend(objc_msgSend(MEMORY[0x277CD4640], "currentThis"), "toObject")}];

  return v0;
}

uint64_t __47__OKPageViewController_setupJavascriptContext___block_invoke_4()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 subNavigatorViewController];
}

uint64_t __47__OKPageViewController_setupJavascriptContext___block_invoke_5()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 navigatorViewController];
}

uint64_t __47__OKPageViewController_setupJavascriptContext___block_invoke_6()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 displayedPageViewControllers];
}

uint64_t __47__OKPageViewController_setupJavascriptContext___block_invoke_7()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 deepestDisplayedPageViewController];
}

uint64_t __47__OKPageViewController_setupJavascriptContext___block_invoke_8()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 prepareMode];
}

uint64_t __47__OKPageViewController_setupJavascriptContext___block_invoke_9()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 layoutFactor];
}

uint64_t __47__OKPageViewController_setupJavascriptContext___block_invoke_10()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 prepareForReload];
}

uint64_t __47__OKPageViewController_setupJavascriptContext___block_invoke_11()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 prepareForRefresh];
}

uint64_t __47__OKPageViewController_setupJavascriptContext___block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v5 insertSubview:a2 belowSubview:a3];
}

uint64_t __47__OKPageViewController_setupJavascriptContext___block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v5 insertSubview:a2 aboveSubview:a3];
}

- (id)visibleWidgets
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageViewController.m" line:1351 andFormat:@"%s must be implemented", "-[OKPageViewController visibleWidgets]"];
  }

  return 0;
}

- (BOOL)hasWidgetFocused
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Pages/OKPageViewController.m" line:1357 andFormat:@"%s must be implemented", "-[OKPageViewController hasWidgetFocused]"];
  }

  return 0;
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
    if ([(OKPageViewController *)self isReady:1])
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
  v17 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_readyRecursiveLock lock];
  if (self->_isReady || !-[OKPageViewController supportsReadiness](self, "supportsReadiness") || [-[OKPageViewController view](self "view")])
  {
    if (!v3 || ([-[OKPageViewController view](self "view")] & 1) != 0)
    {
      goto LABEL_6;
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(OKPageViewController *)self visibleWidgets];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
LABEL_9:
      v10 = 0;
      while (1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(*(&v12 + 1) + 8 * v10) isReady:1])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v8)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      subNavigatorViewController = self->_subNavigatorViewController;
      if (!subNavigatorViewController || [(OKNavigatorViewControllerProxy *)subNavigatorViewController isReady:1])
      {
LABEL_6:
        [(NSRecursiveLock *)self->_readyRecursiveLock unlock];
        return 1;
      }
    }
  }

  [(NSRecursiveLock *)self->_readyRecursiveLock unlock];
  return 0;
}

- (double)readyProgress:(BOOL)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = 1.0;
  if (([-[OKPageViewController view](self "view")] & 1) == 0)
  {
    [(NSRecursiveLock *)self->_readyRecursiveLock lock];
    if (a3)
    {
      v6 = [(OKPageViewController *)self supportsReadiness];
      v7 = [-[OKPageViewController visibleWidgets](self "visibleWidgets")] + v6;
      if (self->_subNavigatorViewController)
      {
        ++v7;
      }

      if (v7)
      {
        v8 = v7;
        v5 = 0.0;
        if ([(OKPageViewController *)self supportsReadiness])
        {
          if (self->_isReady)
          {
            v5 = 1.0 / v8;
          }

          else
          {
            v5 = 0.0;
          }
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [(OKPageViewController *)self visibleWidgets];
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v18 + 1) + 8 * i) readyProgress:1];
              v5 = v5 + v14 / v8;
            }

            v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v11);
        }

        subNavigatorViewController = self->_subNavigatorViewController;
        if (subNavigatorViewController)
        {
          [(OKNavigatorViewControllerProxy *)subNavigatorViewController readyProgress:1];
          v5 = v5 + v16 / v8;
        }
      }
    }

    else if (!self->_isReady)
    {
      if ([(OKPageViewController *)self supportsReadiness])
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
    [(OKPageViewController *)self readinessDidChange:1];
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
    [(OKPageViewController *)self readinessDidChange:0];
  }

  readyRecursiveLock = self->_readyRecursiveLock;

  [(NSRecursiveLock *)readyRecursiveLock unlock];
}

- (void)readinessDidChange:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_readyRecursiveLock lock];
  if ([(OKPageViewController *)self isReady:1]== v3)
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
    if ([(OKPageViewController *)self navigatorViewController])
    {
      [(OKNavigatorViewControllerProxy *)[(OKPageViewController *)self navigatorViewController] readinessDidChange:v3];
    }
  }

  [(NSRecursiveLock *)self->_readyRecursiveLock unlock];
}

- (UIEdgeInsets)eventsInset
{
  top = self->_eventsInset.top;
  left = self->_eventsInset.left;
  bottom = self->_eventsInset.bottom;
  right = self->_eventsInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end