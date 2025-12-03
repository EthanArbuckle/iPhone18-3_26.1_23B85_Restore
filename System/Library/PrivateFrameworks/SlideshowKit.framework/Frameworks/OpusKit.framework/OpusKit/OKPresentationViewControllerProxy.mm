@interface OKPresentationViewControllerProxy
+ (void)setupJavascriptContext:(id)context;
- (BOOL)_prepareNavigationOffscreenWithProgressBlock:(id)block colorSpace:(id)space error:(id *)error;
- (BOOL)_registerProducerPlugin:(id)plugin;
- (BOOL)canEditTextInWidget:(id)widget;
- (BOOL)canPanMediaInWidget:(id)widget;
- (BOOL)canStartCouchPotatoPlayback;
- (BOOL)couchController:(id)controller thingsAreReadyForNextStep:(id)step withProgress:(double *)progress;
- (BOOL)couchControllerCanStartPlayback:(id)playback;
- (BOOL)sendAction:(id)action toTarget:(id)target;
- (BOOL)thingsAreReadyInCurrentPageForCouchController:(id)controller;
- (BOOL)validateChangingTextInWidget:(id)widget toSettings:(id)settings;
- (BOOL)validatePanningMediaInWidget:(id)widget toState:(id)state;
- (CGPoint)convertLocationInWindow:(CGPoint)window toPage:(id)page;
- (CGPoint)convertLocationInWindow:(CGPoint)window toWidget:(id)widget;
- (CGPoint)convertPointToBackingLayout:(CGPoint)layout fromPage:(id)page;
- (CGPoint)convertPointToBackingLayout:(CGPoint)layout fromWidget:(id)widget;
- (CGSize)_fitDisplaySizeForRenderSize:(CGSize)size;
- (CGSize)displaySize;
- (CGSize)layoutFactor;
- (CGSize)resolutionSize;
- (NSString)description;
- (OKCouchController)couchController;
- (OKJavaScriptContext)jsContext;
- (OKPageViewController)currentPageViewController;
- (OKPresentationViewControllerProxy)initWithPresentation:(id)presentation andMainNavigatorName:(id)name;
- (OKPresentationViewControllerProxy)initWithPreset:(id)preset guidelines:(id)guidelines mediaFeeder:(id)feeder;
- (OKProducer)producer;
- (double)presentationViewScale;
- (id)_registeredProducerPluginWithIdentifier:(id)identifier;
- (id)allKeysForDictionaryProxy:(id)proxy;
- (id)beginAudioForController:(id)controller withAVAsset:(id)asset andVolume:(float)volume;
- (id)cachedNavigatorPageViewControllers;
- (id)colorSpace;
- (id)deepestDisplayedPageViewController;
- (id)evaluateScript:(id)script withInfoDictionary:(id)dictionary andCompletionBlock:(id)block forNavigatorViewController:(id)controller pageViewController:(id)viewController andWidgetView:(id)view;
- (id)navigatorViewControllerForNavigatorWithName:(id)name;
- (id)valueForUndefinedKey:(id)key;
- (id)visibleItemKeyPaths;
- (id)visibleMediaItems;
- (id)visibleMediaObjects;
- (id)visibleWidgets;
- (id)widgetViewFromWidget:(id)widget;
- (unint64_t)countOfDictionaryProxy:(id)proxy;
- (void)_addSubWidgetViewsFromSubWidgets:(id)widgets toWidgetView:(id)view;
- (void)_beginCARenderLogging;
- (void)_cleanupIfNecessary;
- (void)_delayedPrepareForRefresh;
- (void)_doArrowKeyDownForDirection:(unint64_t)direction atTimestamp:(double)timestamp;
- (void)_doArrowKeyUpForDirection:(unint64_t)direction atTimestamp:(double)timestamp;
- (void)_endCARenderLogging;
- (void)_loadMainNavigatorIfNeeded;
- (void)_prepareInitialCouchPotatoPlayback;
- (void)_reachabilityChanged:(id)changed;
- (void)_repeatArrowKeyForDirection:(id)direction;
- (void)_rootNavigatorDidAppear:(BOOL)appear;
- (void)_rootNavigatorPrepareForDisplay;
- (void)_rootNavigatorWillAppear:(BOOL)appear;
- (void)_startPresentation;
- (void)_stopActivityIndicator:(id)indicator;
- (void)_stopActivityIndicatorWithCompletionBlock:(id)block;
- (void)_stopPresentation;
- (void)_unloadContent;
- (void)allowCouchPlayback;
- (void)audioFinishedPlayingForTrackID:(id)d;
- (void)audioStartedPlayingForTrackID:(id)d withAVAsset:(id)asset andVolume:(float)volume;
- (void)beginEditingTextInWidget:(id)widget;
- (void)beginPanningMediaInWidget:(id)widget;
- (void)cancelCouchPotatoIfNeededWithAction:(id)action;
- (void)cancelCouchPotatoPlayback;
- (void)clickWheelViewClosePressed:(id)pressed;
- (void)commonInit;
- (void)couchControllerPlaybackCompleted:(id)completed;
- (void)couchControllerPlaybackLooped:(id)looped;
- (void)couchControllerStartsWaitingForReadiness:(id)readiness;
- (void)couchControllerStopsWaitingForReadiness:(id)readiness;
- (void)couchControllerWaitingForReadiness:(id)readiness withProgress:(double)progress;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)didReceiveMemoryWarning;
- (void)displayPresentation:(BOOL)presentation withCompletionBlock:(id)block;
- (void)endAudioForController:(id)controller andTrackID:(id)d;
- (void)endEditingTextInWidget:(id)widget finalSettings:(id)settings;
- (void)endPanningMediaInWidget:(id)widget finalState:(id)state;
- (void)fadeAllAudioTracksWithDuration:(double)duration;
- (void)fadeMainNavigatorTracksWithDuration:(double)duration;
- (void)forceCleanup;
- (void)initSynopsisView;
- (void)initWheelController;
- (void)instantPause;
- (void)instantPlay;
- (void)instantResume;
- (void)navigateToItemAtKeyPath:(id)path animated:(BOOL)animated completionHandler:(id)handler;
- (void)prepareCouchPotatoPlayback;
- (void)prepareForRefreshWithDelay:(double)delay;
- (void)preventCouchPlayback;
- (void)producer:(id)producer didProcessLiveAuthoringKeyPaths:(id)paths;
- (void)renderingTimeLogMessage:(id)message withTimestamp:(double)timestamp;
- (void)restart;
- (void)setAllowsResizing:(BOOL)resizing;
- (void)setAudioURLs:(id)ls;
- (void)setAudioVolume:(double)volume;
- (void)setCouchModeDefaultStepDuration:(double)duration;
- (void)setCouchModeIsReadySpinnerDelay:(double)delay;
- (void)setCouchModeLoops:(BOOL)loops;
- (void)setInteractiveTransitionProgressThreshold:(double)threshold;
- (void)setInteractiveTransitionProgressThresholdFromNumber:(id)number;
- (void)setInteractiveTransitionTrackingBoxRadius:(double)radius;
- (void)setInteractiveTransitionTrackingBoxRadiusFromNumber:(id)number;
- (void)setInteractiveTransitionVelocityThreshold:(double)threshold;
- (void)setInteractiveTransitionVelocityThresholdFromNumber:(id)number;
- (void)setPropertyWithValue:(id)value forKey:(id)key inJSObject:(OpaqueJSValue *)object;
- (void)startCouchPotatoPlayback;
- (void)synopsisView:(id)view didSelectItem:(id)item;
- (void)synopsisViewDidBegin:(id)begin;
- (void)synopsisViewDidEnd:(id)end;
- (void)synopsisViewUpdated:(id)updated withProgress:(double)progress;
- (void)synopsisViewWillBegin:(id)begin;
- (void)updateDisplayResolution;
- (void)updateTimeLeft;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation OKPresentationViewControllerProxy

- (void)setInteractiveTransitionTrackingBoxRadiusFromNumber:(id)number
{
  [number doubleValue];

  [(OKPresentationViewControllerProxy *)self setInteractiveTransitionTrackingBoxRadius:?];
}

- (void)setInteractiveTransitionProgressThresholdFromNumber:(id)number
{
  [number doubleValue];

  [(OKPresentationViewControllerProxy *)self setInteractiveTransitionProgressThreshold:?];
}

- (void)setInteractiveTransitionVelocityThresholdFromNumber:(id)number
{
  [number doubleValue];

  [(OKPresentationViewControllerProxy *)self setInteractiveTransitionVelocityThreshold:?];
}

- (void)commonInit
{
  v8.receiver = self;
  v8.super_class = OKPresentationViewControllerProxy;
  [(OFUIViewController *)&v8 commonInit];
  self->_presentation = 0;
  self->_producerPlugins = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->_producer = 0;
  self->_mainNavigatorName = 0;
  self->_producerSettings = 0;
  self->_playbackMode = 1;
  self->_highSpeedOperationQueue = objc_alloc_init(MEMORY[0x277D627C8]);
  self->_consumingOperationQueue = objc_alloc_init(MEMORY[0x277D627C8]);
  [MEMORY[0x277D75418] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  -[OFNSOperationQueue setMaxConcurrentOperationCount:](self->_highSpeedOperationQueue, "setMaxConcurrentOperationCount:", [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")] << v3);
  [(OFNSOperationQueue *)self->_consumingOperationQueue setMaxConcurrentOperationCount:v3];
  [(OFNSOperationQueue *)self->_highSpeedOperationQueue setQualityOfService:25];
  [(OFNSOperationQueue *)self->_consumingOperationQueue setQualityOfService:25];
  self->_navigatorViewControllers = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_mainNavigatorViewController = 0;
  self->_resolution = 0;
  v4 = *MEMORY[0x277CBF3A8];
  self->_resolutionSize = *MEMORY[0x277CBF3A8];
  self->_displaySize = v4;
  self->_allowsResizing = 1;
  self->_keepAspectRatio = 1;
  self->_jsEvaluationScriptQueue = dispatch_queue_create("_jsEvaluationScriptQueue", 0);
  self->_jsEvaluationInit = 0;
  self->_jsEvaluationInitRecursiveLock = objc_alloc_init(MEMORY[0x277CCAC60]);
  self->_hasStartedCouchBefore = 0;
  self->_audioDuckingStack = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->_controllerAudioTrackIDs = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_audioVolume = 1.0;
  self->_isPaused = 0;
  self->_isFinished = 0;
  self->_audioFadeOutDuration = 0.5;
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_editingDelegate, 0);
  self->_interactivityEnabled = 1;
  self->_resourceManager = [[OKResourceManager alloc] initWithPresentationViewController:self];
  self->_arrowKeysSendSwipeAndPan = 1;
  self->_arrowKeyMaxPanVelocity = vdupq_n_s64(0x4082C00000000000uLL);
  self->_arrowKeyPanAcceleration = vdupq_n_s64(0x4072C00000000000uLL);
  self->_hasBeenHidden = 0;
  self->_rootNavigatorIsReady = 0;
  *&self->_downloadIndicatorEnabled = 1;
  v5 = objc_opt_new();
  self->_preparationOperationQueue = v5;
  [(NSOperationQueue *)v5 setMaxConcurrentOperationCount:1];
  [(NSOperationQueue *)self->_preparationOperationQueue setQualityOfService:25];
  self->_couchModeIsReadySpinnerDelay = 3.0;
  self->_interactiveTransitionTrackingBoxRadius = -1.0;
  self->_interactiveTransitionProgressThreshold = -1.0;
  self->_interactiveTransitionVelocityThreshold = -1.0;
  v6 = [MEMORY[0x277D627E0] reachabilityWithHostName:@"www.apple.com"];
  self->_reachability = v6;
  self->_reachabilityStatus = [(OFReachability *)v6 currentNetworkStatus];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__reachabilityChanged_ name:*MEMORY[0x277D62810] object:0];
}

- (void)_reachabilityChanged:(id)changed
{
  name = [changed name];
  if ([name isEqualToString:*MEMORY[0x277D62810]])
  {
    v6 = [objc_msgSend(changed "object")];
    if (v6 != -1)
    {
      v7 = v6;
      if (v6 != self->_reachabilityStatus)
      {
        self->_reachabilityStatus = v6;
        mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];

        [(OKNavigatorViewControllerProxy *)mainNavigatorViewController networkStatusDidChange:v7];
      }
    }
  }
}

- (OKPresentationViewControllerProxy)initWithPresentation:(id)presentation andMainNavigatorName:(id)name
{
  v6 = [(OFUIViewController *)self init];
  if (v6)
  {
    v6->_presentation = presentation;
    v6->_couchModeDefaultStepDuration = -1.0;
    v6->_mainNavigatorName = [name copy];
    [objc_msgSend(presentation "info")];
    v6->_couchInitialDelay = v7;
  }

  return v6;
}

- (OKPresentationViewControllerProxy)initWithPreset:(id)preset guidelines:(id)guidelines mediaFeeder:(id)feeder
{
  v8 = [(OKPresentationViewControllerProxy *)self initWithPresentation:0 andMainNavigatorName:0];
  if (v8)
  {
    v9 = objc_alloc_init(OKProducerSettings);
    v8->_producerSettings = v9;
    [(OKProducerSettings *)v9 setPreset:preset];
    [(OKProducerSettings *)v8->_producerSettings setGuidelines:guidelines];
    [(OKProducerSettings *)v8->_producerSettings setMediaFeeder:feeder];
  }

  return v8;
}

- (void)dealloc
{
  v40 = *MEMORY[0x277D85DE8];
  [(OFReachability *)self->_reachability stopNotifier];
  reachability = self->_reachability;
  if (reachability)
  {

    self->_reachability = 0;
  }

  if (*MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presentation/OKPresentationViewController.m" line:382 andFormat:@"Deallocing %@", self];
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  presentation = self->_presentation;
  if (presentation)
  {

    self->_presentation = 0;
  }

  producer = self->_producer;
  if (producer)
  {

    self->_producer = 0;
  }

  mainNavigatorName = self->_mainNavigatorName;
  if (mainNavigatorName)
  {

    self->_mainNavigatorName = 0;
  }

  producerSettings = self->_producerSettings;
  if (producerSettings)
  {

    self->_producerSettings = 0;
  }

  highSpeedOperationQueue = self->_highSpeedOperationQueue;
  if (highSpeedOperationQueue)
  {
    [(OFNSOperationQueue *)highSpeedOperationQueue cancelAllOperations];

    self->_highSpeedOperationQueue = 0;
  }

  consumingOperationQueue = self->_consumingOperationQueue;
  if (consumingOperationQueue)
  {
    [(OFNSOperationQueue *)consumingOperationQueue cancelAllOperations];

    self->_consumingOperationQueue = 0;
  }

  synopsisView = self->_synopsisView;
  if (synopsisView)
  {

    self->_synopsisView = 0;
  }

  clickWheelView = self->_clickWheelView;
  if (clickWheelView)
  {

    self->_clickWheelView = 0;
  }

  presentationView = self->_presentationView;
  if (presentationView)
  {

    self->_presentationView = 0;
  }

  navigatorViewControllers = self->_navigatorViewControllers;
  if (navigatorViewControllers)
  {

    self->_navigatorViewControllers = 0;
  }

  mainNavigatorViewController = self->_mainNavigatorViewController;
  if (mainNavigatorViewController)
  {

    self->_mainNavigatorViewController = 0;
  }

  couchController = self->_couchController;
  if (couchController)
  {

    self->_couchController = 0;
  }

  audioURLs = self->_audioURLs;
  if (audioURLs)
  {

    self->_audioURLs = 0;
  }

  resolution = self->_resolution;
  if (resolution)
  {

    self->_resolution = 0;
  }

  jsContext = self->_jsContext;
  if (jsContext)
  {
    JSGarbageCollect([(OKJavaScriptContext *)jsContext JSGlobalContextRef]);
    v19 = self->_jsContext;
    if (v19)
    {

      self->_jsContext = 0;
    }
  }

  jsEvaluationScriptQueue = self->_jsEvaluationScriptQueue;
  if (jsEvaluationScriptQueue)
  {
    dispatch_release(jsEvaluationScriptQueue);
    self->_jsEvaluationScriptQueue = 0;
  }

  jsEvaluationInitRecursiveLock = self->_jsEvaluationInitRecursiveLock;
  if (jsEvaluationInitRecursiveLock)
  {
    v22 = jsEvaluationInitRecursiveLock;
    [(NSRecursiveLock *)v22 lock];

    self->_jsEvaluationInitRecursiveLock = 0;
    [(NSRecursiveLock *)v22 unlock];
  }

  audioDuckingStack = self->_audioDuckingStack;
  if (audioDuckingStack)
  {

    self->_audioDuckingStack = 0;
  }

  controllerAudioTrackIDs = self->_controllerAudioTrackIDs;
  if (controllerAudioTrackIDs)
  {

    self->_controllerAudioTrackIDs = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_editingDelegate, 0);
  activityLatency = self->_activityLatency;
  if (activityLatency)
  {

    self->_activityLatency = 0;
  }

  resourceManager = self->_resourceManager;
  if (resourceManager)
  {

    self->_resourceManager = 0;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  producerPlugins = self->_producerPlugins;
  v28 = [(NSMutableArray *)producerPlugins countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(producerPlugins);
        }

        [*(*(&v35 + 1) + 8 * i) unloadRelease];
      }

      v29 = [(NSMutableArray *)producerPlugins countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v29);
  }

  v32 = self->_producerPlugins;
  if (v32)
  {

    self->_producerPlugins = 0;
  }

  preparationOperationQueue = self->_preparationOperationQueue;
  if (preparationOperationQueue)
  {
    [(NSOperationQueue *)preparationOperationQueue cancelAllOperations];

    self->_preparationOperationQueue = 0;
  }

  [(OKPresentationViewControllerProxy *)self _endCARenderLogging];
  v34.receiver = self;
  v34.super_class = OKPresentationViewControllerProxy;
  [(OFUIViewController *)&v34 dealloc];
}

- (void)forceCleanup
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v3 = __49__OKPresentationViewControllerProxy_forceCleanup__block_invoke;
  v4 = &unk_279C8E818;
  selfCopy = self;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3(block);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_cleanupIfNecessary
{
  if (self->_shouldCleanup)
  {
    self->_shouldCleanup = 0;
    [(OKPresentationViewControllerProxy *)self _unloadContent];
    jsContext = self->_jsContext;
    if (jsContext)
    {
      JSGarbageCollect([(OKJavaScriptContext *)jsContext JSGlobalContextRef]);
      v4 = self->_jsContext;
      if (v4)
      {

        self->_jsContext = 0;
      }
    }
  }
}

- (void)_unloadContent
{
  [(OKNavigatorViewControllerProxy *)[(OKPresentationViewControllerProxy *)self mainNavigatorViewController] prepareForUnload];
  [(OKSynopsisView *)self->_synopsisView setSynopsisInterpreter:0];
  if (self->_activityLatency)
  {
    [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
    activityLatency = self->_activityLatency;
    if (activityLatency)
    {

      self->_activityLatency = 0;
    }
  }
}

- (void)_stopActivityIndicator:(id)indicator
{
  [(OKPresentationViewControllerProxy *)self setActivityIndicatorVisible:0];
  if (indicator)
  {
    v4 = *(indicator + 2);

    v4(indicator);
  }
}

- (void)_stopActivityIndicatorWithCompletionBlock:(id)block
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__startActivityIndicator object:0];
  if ([(OKPresentationViewControllerProxy *)self isActivityIndicatorVisible])
  {
    v5 = [block copy];

    [(OKPresentationViewControllerProxy *)self performSelector:sel__stopActivityIndicator_ withObject:v5 afterDelay:0.15];
  }

  else if (block)
  {
    v6 = *(block + 2);

    v6(block);
  }
}

- (BOOL)_prepareNavigationOffscreenWithProgressBlock:(id)block colorSpace:(id)space error:(id *)error
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v32 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__5;
  v30 = __Block_byref_object_dispose__5;
  v31 = 0;
  if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info:block] requiresProducer])
  {
    v8 = dispatch_semaphore_create(0);
    v9 = +[OKProducerManager defaultManager];
    producerIdentifier = [(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] producerIdentifier];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __99__OKPresentationViewControllerProxy__prepareNavigationOffscreenWithProgressBlock_colorSpace_error___block_invoke;
    v25[3] = &unk_279C8FEE0;
    v25[4] = block;
    v25[5] = &v33;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __99__OKPresentationViewControllerProxy__prepareNavigationOffscreenWithProgressBlock_colorSpace_error___block_invoke_2;
    v24[3] = &unk_279C90108;
    v24[5] = v8;
    v24[6] = &v26;
    v24[4] = self;
    [v9 pluginWithIdentifier:producerIdentifier progressBlock:v25 completionBlock:v24];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if (v8)
    {
      dispatch_release(v8);
    }

    if (block)
    {
      (*(block + 2))(block, &v32, v34[6]);
    }

    if ((v32 & 1) == 0 && !v27[5])
    {
      v23 = 0;
      producer = [(OKPresentationViewControllerProxy *)self producer];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __99__OKPresentationViewControllerProxy__prepareNavigationOffscreenWithProgressBlock_colorSpace_error___block_invoke_3;
      v22[3] = &unk_279C8FEE0;
      v22[4] = block;
      v22[5] = &v33;
      [(OKProducer *)producer migratePresentation:v22 error:&v23];
      v12 = v23;
      v27[5] = v12;
    }
  }

  else
  {
    v34[6] = 0.4;
  }

  if (block)
  {
    (*(block + 2))(block, &v32, v34[6]);
  }

  if ((v32 & 1) == 0)
  {
    if (!v27[5])
    {
      if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] requiresProducer])
      {
        if ([[(OKPresentationViewControllerProxy *)self presentation] guidelineLiveAuthoringEnabled])
        {
          if ([(OKProducer *)[(OKPresentationViewControllerProxy *)self producer] supportsLiveAuthoring])
          {
            v23 = 0;
            producer2 = [(OKPresentationViewControllerProxy *)self producer];
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __99__OKPresentationViewControllerProxy__prepareNavigationOffscreenWithProgressBlock_colorSpace_error___block_invoke_4;
            v21[3] = &unk_279C8FEE0;
            v21[4] = block;
            v21[5] = &v33;
            if ([(OKProducer *)producer2 prepareLiveAuthoringIfNeeded:v21 error:&v23])
            {
              v14 = v23;
              v27[5] = v14;
            }
          }
        }
      }

      v34[6] = 0.8;
      if (block)
      {
        (*(block + 2))(block, &v32, 0.8);
      }
    }

    if (!v32 && !v27[5])
    {
      rootMediaFeeder = [[(OKPresentationViewControllerProxy *)self presentation] rootMediaFeeder];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __99__OKPresentationViewControllerProxy__prepareNavigationOffscreenWithProgressBlock_colorSpace_error___block_invoke_5;
      v20[3] = &unk_279C90158;
      v20[4] = self;
      v20[5] = block;
      v20[6] = &v33;
      [rootMediaFeeder enumerateObjectsUsingBlock:v20];
      v34[6] = 1.0;
      if (block)
      {
        (*(block + 2))(block, &v32, 1.0);
      }
    }
  }

  v16 = v32;
  if (error)
  {
    if (v32)
    {
      v17 = [OKError errorForCode:-4];
    }

    else
    {
      v17 = v27[5];
    }

    *error = v17;
    v16 = v32;
  }

  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v27[5] == 0;
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v33, 8);
  return v18;
}

uint64_t __99__OKPresentationViewControllerProxy__prepareNavigationOffscreenWithProgressBlock_colorSpace_error___block_invoke(uint64_t result, float a2)
{
  if (*(result + 32))
  {
    *(*(*(result + 40) + 8) + 24) = a2 * 0.3;
    return (*(*(result + 32) + 16))(*(result + 32), *(*(*(result + 40) + 8) + 24));
  }

  return result;
}

intptr_t __99__OKPresentationViewControllerProxy__prepareNavigationOffscreenWithProgressBlock_colorSpace_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) _registerProducerPlugin:?];
  }

  *(*(*(a1 + 48) + 8) + 40) = a2;
  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

uint64_t __99__OKPresentationViewControllerProxy__prepareNavigationOffscreenWithProgressBlock_colorSpace_error___block_invoke_3(uint64_t result, float a2)
{
  if (*(result + 32))
  {
    *(*(*(result + 40) + 8) + 24) = (a2 * 0.1) + 0.3;
    return (*(*(result + 32) + 16))(*(result + 32), *(*(*(result + 40) + 8) + 24));
  }

  return result;
}

uint64_t __99__OKPresentationViewControllerProxy__prepareNavigationOffscreenWithProgressBlock_colorSpace_error___block_invoke_4(uint64_t result, float a2)
{
  if (*(result + 32))
  {
    *(*(*(result + 40) + 8) + 24) = (a2 * 0.4) + 0.4;
    return (*(*(result + 32) + 16))(*(result + 32), *(*(*(result + 40) + 8) + 24));
  }

  return result;
}

void __99__OKPresentationViewControllerProxy__prepareNavigationOffscreenWithProgressBlock_colorSpace_error___block_invoke_5(void *a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v8 = dispatch_semaphore_create(0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__OKPresentationViewControllerProxy__prepareNavigationOffscreenWithProgressBlock_colorSpace_error___block_invoke_6;
  block[3] = &unk_279C90130;
  block[5] = v8;
  block[6] = &v11;
  block[4] = a1[4];
  dispatch_async(MEMORY[0x277D85CD0], block);
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (v8)
  {
    dispatch_release(v8);
  }

  [a2 thumbnailImageForResolution:1 aspectRatio:v12[5] scale:1.0 quality:1.0 colorSpace:1.0];
  if (a1[5])
  {
    v9 = vcvtd_n_f64_u64(a3, 4uLL) * 0.200000003 + 0.800000012;
    *(*(a1[6] + 8) + 24) = v9;
    (*(a1[5] + 16))(*(*(a1[6] + 8) + 24));
  }

  if (a3 >= 0x11)
  {
    *a4 = 1;
  }

  _Block_object_dispose(&v11, 8);
}

intptr_t __99__OKPresentationViewControllerProxy__prepareNavigationOffscreenWithProgressBlock_colorSpace_error___block_invoke_6(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) colorSpace];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

- (void)_loadMainNavigatorIfNeeded
{
  if (![(OKPresentationViewControllerProxy *)self mainNavigatorViewController])
  {
    [(OKPresentationViewControllerProxy *)self updateDisplayResolution];
    mainNavigatorName = self->_mainNavigatorName;
    if (!mainNavigatorName)
    {
      mainNavigatorName = [(OKPresentationInfo *)[[(OKPresentationViewControllerProxy *)self presentation] info] mainNavigatorName];
    }

    [(OKPresentationViewControllerProxy *)self setMainNavigatorViewController:[(OKPresentationViewControllerProxy *)self navigatorViewControllerForNavigatorWithName:mainNavigatorName]];
    if ([(OKPresentationViewControllerProxy *)self mainNavigatorViewController])
    {
      [(OKPresentationViewControllerProxy *)self addChildViewController:[(OKPresentationViewControllerProxy *)self mainNavigatorViewController]];
      [-[OKNavigatorViewController view](-[OKPresentationViewControllerProxy mainNavigatorViewController](self "mainNavigatorViewController")];
      [-[OKNavigatorViewController view](-[OKPresentationViewControllerProxy mainNavigatorViewController](self "mainNavigatorViewController")];
      [-[OKPresentationViewControllerProxy view](self "view")];
      mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];

      [(OKNavigatorViewControllerProxy *)mainNavigatorViewController didMoveToParentViewController:self];
    }
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = OKPresentationViewControllerProxy;
  [(OFUIViewController *)&v7 viewDidLoad];
  self->_rootNavigatorIsReady = 0;
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
  if ([(OKPresentationViewControllerProxy *)self presentation])
  {
    info = [[(OKPresentationViewControllerProxy *)self presentation] info];
  }

  else
  {
    producerSettings = self->_producerSettings;
    if (!producerSettings)
    {
      goto LABEL_7;
    }

    info = [(OKProducerSettings *)producerSettings preset];
  }

  backgroundColor = [(OKPresentationInfo *)info backgroundColor];
  if (backgroundColor)
  {
    v3 = backgroundColor;
  }

LABEL_7:
  [-[OKPresentationViewControllerProxy view](self "view")];
  [-[OKPresentationViewControllerProxy view](self "view")];
  [-[OKPresentationViewControllerProxy view](self "view")];
  [-[OKPresentationViewControllerProxy view](self "view")];
  if ([[(OKPresentationViewControllerProxy *)self presentation] enableDisplayDebugging])
  {
    [objc_msgSend(-[OKPresentationViewControllerProxy view](self "view")];
    [objc_msgSend(-[OKPresentationViewControllerProxy view](self "view")];
    [-[OKPresentationViewControllerProxy view](self "view")];
  }
}

- (void)_rootNavigatorPrepareForDisplay
{
  mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];

  [(OKNavigatorViewControllerProxy *)mainNavigatorViewController prepareForDisplay];
}

- (void)_rootNavigatorWillAppear:(BOOL)appear
{
  appearCopy = appear;
  mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];

  [(OKNavigatorViewControllerProxy *)mainNavigatorViewController navigatorWillAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  hasBeenHidden = self->_hasBeenHidden;
  v5 = !self->_hasBeenHidden;
  v8.receiver = self;
  v8.super_class = OKPresentationViewControllerProxy;
  [(OFUIViewController *)&v8 viewWillAppear:v5];
  self->_shouldCleanup = 1;
  [(NSOperationQueue *)self->_preparationOperationQueue cancelAllOperations];
  self->_activityLatency = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
  [-[OKPresentationViewControllerProxy view](self "view")];
  if (self->_rootNavigatorIsReady)
  {
    producerIdentifier = [(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] producerIdentifier];
    if (producerIdentifier)
    {
      v7 = [(OKPresentationViewControllerProxy *)self _registeredProducerPluginWithIdentifier:producerIdentifier];
      if (v7)
      {
        [v7 setupJavascriptContext:{-[OKPresentationViewControllerProxy jsContext](self, "jsContext")}];
      }
    }

    [(OKPresentationViewControllerProxy *)self _loadMainNavigatorIfNeeded];
    [(OKPresentationViewControllerProxy *)self _rootNavigatorPrepareForDisplay];
    [(OKPresentationViewControllerProxy *)self _rootNavigatorWillAppear:!hasBeenHidden];
  }
}

- (void)_rootNavigatorDidAppear:(BOOL)appear
{
  [(OKNavigatorViewControllerProxy *)[(OKPresentationViewControllerProxy *)self mainNavigatorViewController] navigatorDidAppear:appear];
  if (![(OKAudioPlaylist *)[(OKNavigatorViewControllerProxy *)[(OKPresentationViewControllerProxy *)self mainNavigatorViewController] audioPlaylist] isPlaying])
  {
    if (self->_audioURLs && !self->_hasBeenHidden)
    {
      [(OKNavigatorViewControllerProxy *)[(OKPresentationViewControllerProxy *)self mainNavigatorViewController] _setAudioURLs:self->_audioURLs];
    }

    if (!self->_isPaused)
    {
      [(OKNavigatorViewControllerProxy *)[(OKPresentationViewControllerProxy *)self mainNavigatorViewController] _playAudioPlaylist];
    }
  }

  self->_hasAppeared = 1;
  if (objc_opt_respondsToSelector())
  {
    [(OKPresentationViewControllerDelegate *)self->_delegate presentationViewControllerDidAppear:self];
  }

  [(OKPresentationViewControllerProxy *)self _beginCARenderLogging];
}

- (void)_startPresentation
{
  [(OKPresentationViewControllerProxy *)self _prepareInitialCouchPotatoPlayback];
  if (self->_interactivityEnabled)
  {
    [(OKPresentationViewControllerProxy *)self initWheelController];
    if ([(OKPresentationInfo *)[[(OKPresentationViewControllerProxy *)self presentation] info] overviewSupported])
    {
      [(OKPresentationViewControllerProxy *)self initSynopsisView];
    }
  }

  if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] requiresProducer]&& [[(OKPresentationViewControllerProxy *)self presentation] guidelineLiveAuthoringEnabled]&& [(OKProducer *)[(OKPresentationViewControllerProxy *)self producer] supportsLiveAuthoring])
  {
    producer = [(OKPresentationViewControllerProxy *)self producer];

    [(OKProducer *)producer performSelector:sel_startLiveAuthoringIfNeeded withObject:0 afterDelay:0.5];
  }
}

- (void)_stopPresentation
{
  [(OKPresentationViewControllerProxy *)self cancelCouchPotatoPlayback];
  if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] requiresProducer]&& [[(OKPresentationViewControllerProxy *)self presentation] guidelineLiveAuthoringEnabled]&& [(OKProducer *)[(OKPresentationViewControllerProxy *)self producer] supportsLiveAuthoring])
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:-[OKPresentationViewControllerProxy producer](self selector:"producer") object:{sel_startLiveAuthoringIfNeeded, 0}];
    producer = [(OKPresentationViewControllerProxy *)self producer];

    [(OKProducer *)producer cancelLiveAuthoring:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  hasBeenHidden = self->_hasBeenHidden;
  v5 = !self->_hasBeenHidden;
  v14.receiver = self;
  v14.super_class = OKPresentationViewControllerProxy;
  [(OFUIViewController *)&v14 viewDidAppear:v5];
  if (self->_rootNavigatorIsReady)
  {
    [(OKPresentationViewControllerProxy *)self _rootNavigatorDidAppear:!hasBeenHidden];
    [(OKPresentationViewControllerProxy *)self _startPresentation];
  }

  else
  {
    v6 = !hasBeenHidden;
    if (self->_downloadIndicatorEnabled)
    {
      [(OKPresentationViewControllerProxy *)self _startActivityIndicatorWithDelay];
      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      [currentRunLoop runUntilDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", 0.00999999978)}];
    }

    v8 = objc_alloc_init(MEMORY[0x277CCA8C8]);
    v9 = [MEMORY[0x277D62800] weakReferenceHolderWithObject:v8];
    v10 = [MEMORY[0x277D62800] weakReferenceHolderWithObject:self];
    colorSpace = [(OKPresentationViewControllerProxy *)self colorSpace];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke;
    v12[3] = &unk_279C901D0;
    v12[4] = v10;
    v12[5] = v9;
    v12[6] = colorSpace;
    v13 = v6;
    [v8 addExecutionBlock:v12];
    [v8 setQualityOfService:{-[NSOperationQueue qualityOfService](self->_preparationOperationQueue, "qualityOfService")}];
    [(NSOperationQueue *)self->_preparationOperationQueue addOperation:v8];
  }

  self->_hasBeenHidden = 0;
}

void __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [*(a1 + 40) object];
  if (v3)
  {
    v4 = v3;
    if (([v3 isCancelled] & 1) == 0 && v2 && (*(v2 + 1008) & 1) == 0)
    {
      if (*(v2 + 1048))
      {
        if (!*(v2 + 1016))
        {
          v5 = dispatch_semaphore_create(0);
          v6 = +[OKProducerManager defaultManager];
          v7 = [*(v2 + 1048) preset];
          v8 = [*(v2 + 1048) guidelines];
          v9 = [*(v2 + 1048) mediaFeeder];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_2;
          v17[3] = &unk_279C8F8E0;
          v17[4] = v4;
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_3;
          v16[3] = &unk_279C90180;
          v16[4] = v2;
          v16[5] = v5;
          [v6 createPresentationWithPreset:v7 guidelines:v8 mediaFeeder:v9 mediaItemLookupDelegate:0 progressBlock:v17 completionBlock:v16];
          dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
          if (v5)
          {
            dispatch_release(v5);
          }
        }
      }

      if (*(v2 + 1016))
      {
        v14[4] = v4;
        v15 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_4;
        v14[3] = &unk_279C8F8E0;
        if ([v2 _prepareNavigationOffscreenWithProgressBlock:v14 colorSpace:*(a1 + 48) error:&v15] && (objc_msgSend(v4, "isCancelled") & 1) == 0)
        {
          v10 = dispatch_semaphore_create(0);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_5;
          v12[3] = &unk_279C901F8;
          v12[4] = v4;
          v12[5] = v2;
          v12[6] = *(a1 + 32);
          v12[7] = v10;
          v13 = *(a1 + 56);
          dispatch_async(MEMORY[0x277D85CD0], v12);
          dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
          if (v10)
          {
            dispatch_release(v10);
          }
        }

        else
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_9;
          block[3] = &unk_279C8E818;
          block[4] = v2;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }
    }
  }
}

uint64_t __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelled];
  *a2 = result;
  return result;
}

intptr_t __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    *(*(a1 + 32) + 1016) = a2;
  }

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

uint64_t __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_4(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelled];
  *a2 = result;
  return result;
}

intptr_t __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_5(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 56);

    return dispatch_semaphore_signal(v2);
  }

  else
  {
    [*(a1 + 40) _loadMainNavigatorIfNeeded];
    [objc_msgSend(objc_msgSend(*(a1 + 40) "mainNavigatorViewController")];
    [*(a1 + 40) _rootNavigatorPrepareForDisplay];
    v4 = [*(a1 + 40) mainNavigatorViewController];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_6;
    v5[3] = &unk_279C901D0;
    v5[4] = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    return [v4 notifyWhenBecomesReady:v5];
  }
}

intptr_t __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_6(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 48);

    return dispatch_semaphore_signal(v2);
  }

  else
  {
    v4 = [*(a1 + 40) object];
    [v4 updateActivityIndicatorWithProgress:1.0];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_7;
    v5[3] = &unk_279C901D0;
    v6 = *(a1 + 40);
    v8 = *(a1 + 56);
    v7 = *(a1 + 32);
    return [v4 _stopActivityIndicatorWithCompletionBlock:v5];
  }
}

intptr_t __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  if (v2 && v2[1321] == 1)
  {
    v3 = *(a1 + 40);

    return dispatch_semaphore_signal(v3);
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_8;
    v9 = &unk_279C901A8;
    v10 = *(a1 + 48);
    LOBYTE(v11) = v5;
    return [v2 displayPresentation:MEMORY[0x277D85DD0] withCompletionBlock:{3221225472, __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_8, &unk_279C901A8, v10, *(a1 + 32), v11}];
  }
}

intptr_t __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_8(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = [*(a1 + 40) object];
    [v2 _rootNavigatorDidAppear:*(a1 + 56)];
    [v2 _startPresentation];
  }

  v3 = *(a1 + 48);

  return dispatch_semaphore_signal(v3);
}

uint64_t __51__OKPresentationViewControllerProxy_viewDidAppear___block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) updateActivityIndicatorWithProgress:1.0];
  v2 = *(a1 + 32);

  return [v2 _stopActivityIndicatorWithCompletionBlock:0];
}

- (void)displayPresentation:(BOOL)presentation withCompletionBlock:(id)block
{
  presentationCopy = presentation;
  self->_rootNavigatorIsReady = 1;
  [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];
    v8 = mainNavigatorViewController;
    if (self->_interactiveTransitionTrackingBoxRadius == -1.0)
    {
      [(OKNavigatorViewController *)mainNavigatorViewController interactiveTransitionTrackingBoxRadius];
      self->_interactiveTransitionTrackingBoxRadius = v9;
    }

    else
    {
      [(OKNavigatorViewController *)mainNavigatorViewController setInteractiveTransitionTrackingBoxRadius:?];
    }

    if (self->_interactiveTransitionProgressThreshold == -1.0)
    {
      [(OKNavigatorViewController *)v8 interactiveTransitionProgressThreshold];
      self->_interactiveTransitionProgressThreshold = v10;
    }

    else
    {
      [(OKNavigatorViewController *)v8 setInteractiveTransitionProgressThreshold:?];
    }

    if (self->_interactiveTransitionVelocityThreshold == -1.0)
    {
      [(OKNavigatorViewController *)v8 interactiveTransitionVelocityThreshold];
      self->_interactiveTransitionVelocityThreshold = v11;
    }

    else
    {
      [(OKNavigatorViewController *)v8 setInteractiveTransitionVelocityThreshold:?];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(OKPresentationViewControllerDelegate *)self->_delegate presentationViewControllerDidPrepare:self];
  }

  [(OKPresentationViewControllerProxy *)self _rootNavigatorWillAppear:presentationCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__OKPresentationViewControllerProxy_displayPresentation_withCompletionBlock___block_invoke;
  v12[3] = &unk_279C8E818;
  v12[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v12 animations:block completion:0.2];
}

uint64_t __77__OKPresentationViewControllerProxy_displayPresentation_withCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "mainNavigatorViewController")];

  return [v1 setAlpha:1.0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  self->_hasAppeared = 0;
  hasBeenHidden = self->_hasBeenHidden;
  v5.receiver = self;
  v5.super_class = OKPresentationViewControllerProxy;
  [(OFUIViewController *)&v5 viewWillDisappear:!hasBeenHidden];
  [(OKPresentationViewControllerProxy *)self _stopPresentation];
  [(OKPresentationViewControllerProxy *)self _stopActivityIndicator:0];
  [(NSOperationQueue *)self->_preparationOperationQueue cancelAllOperations];
  [(OKNavigatorViewControllerProxy *)[(OKPresentationViewControllerProxy *)self mainNavigatorViewController] removeAllReadyNotifications];
  [(OFNSOperationQueue *)[(OKPresentationViewControllerProxy *)self highSpeedOperationQueue] cancelAllOperations];
  [(OFNSOperationQueue *)[(OKPresentationViewControllerProxy *)self consumingOperationQueue] cancelAllOperations];
  [(OKPresentationViewControllerProxy *)self _endCARenderLogging];
  self->_hasBeenHidden = 1;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4 = !self->_hasBeenHidden;
  v5.receiver = self;
  v5.super_class = OKPresentationViewControllerProxy;
  [(OFUIViewController *)&v5 viewDidDisappear:v4];
  [(OKPresentationViewControllerProxy *)self _unloadContent];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = OKPresentationViewControllerProxy;
  [(OFUIViewController *)&v2 didReceiveMemoryWarning];
}

- (CGSize)_fitDisplaySizeForRenderSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = size.width / size.height;
  [-[OKPresentationViewControllerProxy view](self "view")];
  v8 = v7;
  [-[OKPresentationViewControllerProxy view](self "view")];
  v10 = v8 / v9;
  [-[OKPresentationViewControllerProxy view](self "view")];
  v13 = v12;
  if (width <= height)
  {
    if (v6 <= v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    [-[OKPresentationViewControllerProxy view](self "view")];
    v15 = v16 / v6;
    goto LABEL_6;
  }

  if (v6 >= v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = v6 * v11;
  [-[OKPresentationViewControllerProxy view](self "view")];
  v15 = v14;
LABEL_6:
  v17 = v13;
  result.height = v15;
  result.width = v17;
  return result;
}

- (void)updateDisplayResolution
{
  v23 = 0;
  presentation = [(OKPresentationViewControllerProxy *)self presentation];
  [-[OKPresentationViewControllerProxy view](self "view")];
  [(OKPresentation *)presentation bestResolutionSizeForDisplaySize:&v23 keepAspectRatio:v4, v5];
  v7 = v6;
  v9 = v8;
  resolution = self->_resolution;
  if (resolution)
  {

    self->_resolution = 0;
  }

  if (v7 == *MEMORY[0x277CBF3A8] && v9 == *(MEMORY[0x277CBF3A8] + 8))
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presentation/OKPresentationViewController.m" line:1144 andFormat:@"No matching resolutions could be found, unexpected behaviors ahead..."];
    }

    self->_resolution = [MEMORY[0x277CCACA8] stringWithFormat:@"*@%@", +[OKRuntime stringForPlatforms:](OKRuntime, "stringForPlatforms:", +[OKRuntime currentPlatform](OKRuntime, "currentPlatform"))];
    self->_resolutionSize = xmmword_269F6AF80;
  }

  else
  {
    self->_resolution = [MEMORY[0x277CCACA8] stringWithFormat:@"%.0lfx%.0lf@%@", *&v7, *&v9, +[OKRuntime stringForPlatforms:](OKRuntime, "stringForPlatforms:", +[OKRuntime currentPlatform](OKRuntime, "currentPlatform"))];
    self->_resolutionSize.width = v7;
    self->_resolutionSize.height = v9;
    v12 = [[(OKPresentationViewControllerProxy *)self presentation] guidelineForGlobalUniqueKey:@"aspectRatio"];
    if (v12)
    {
      p_displaySize = &self->_displaySize;
      [objc_msgSend(v12 "value")];
      v15 = v14;
      v16 = 1024.0;
      v17 = 1024.0 / v15;
      selfCopy2 = self;
LABEL_15:
      [(OKPresentationViewControllerProxy *)selfCopy2 _fitDisplaySizeForRenderSize:v16, v17];
      p_displaySize->width = v19;
      p_displaySize->height = v20;
      self->_keepAspectRatio = 1;
      return;
    }

    if (!self->_allowsResizing || v23 == 1)
    {
      p_displaySize = &self->_displaySize;
      selfCopy2 = self;
      v16 = v7;
      v17 = v9;
      goto LABEL_15;
    }

    [-[OKPresentationViewControllerProxy view](self "view")];
    self->_displaySize.width = v21;
    self->_displaySize.height = v22;
    self->_keepAspectRatio = 0;
  }
}

- (CGSize)layoutFactor
{
  v2 = vdivq_f64(self->_displaySize, self->_resolutionSize);
  v3 = v2.f64[1];
  result.width = v2.f64[0];
  result.height = v3;
  return result;
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = OKPresentationViewControllerProxy;
  [(OKPresentationViewControllerProxy *)&v2 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = OKPresentationViewControllerProxy;
  [(OKPresentationViewControllerProxy *)&v2 viewDidLayoutSubviews];
}

- (double)presentationViewScale
{
  if ([objc_msgSend(-[OKPresentationViewControllerProxy view](self "view")])
  {
    mainScreen = [objc_msgSend(-[OKPresentationViewControllerProxy view](self "view")];
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
  }

  [mainScreen scale];
  if (v4 <= 1.0)
  {
    return 1.0;
  }

  if ([objc_msgSend(-[OKPresentationViewControllerProxy view](self "view")])
  {
    mainScreen2 = [objc_msgSend(-[OKPresentationViewControllerProxy view](self "view")];
  }

  else
  {
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  }

  [mainScreen2 scale];
  return result;
}

- (void)willMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = OKPresentationViewControllerProxy;
  [(OKPresentationViewControllerProxy *)&v3 willMoveToParentViewController:controller];
}

- (void)didMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = OKPresentationViewControllerProxy;
  [(OKPresentationViewControllerProxy *)&v3 didMoveToParentViewController:controller];
}

- (void)_delayedPrepareForRefresh
{
  mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];

  [(OKNavigatorViewControllerProxy *)mainNavigatorViewController prepareForRefresh];
}

- (void)prepareForRefreshWithDelay:(double)delay
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedPrepareForRefresh object:0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBF048], 0}];

  [(OKPresentationViewControllerProxy *)self performSelector:sel__delayedPrepareForRefresh withObject:0 afterDelay:v5 inModes:delay];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7.receiver = self;
  v7.super_class = OKPresentationViewControllerProxy;
  return [v3 stringWithFormat:@"PRESENTATION %@: %@", v5, -[OKPresentationViewControllerProxy description](&v7, sel_description)];
}

- (id)_registeredProducerPluginWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  producerPlugins = self->_producerPlugins;
  objc_sync_enter(producerPlugins);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_producerPlugins;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v10 "identifier")])
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:
  objc_sync_exit(producerPlugins);
  return v11;
}

- (BOOL)_registerProducerPlugin:(id)plugin
{
  producerPlugins = self->_producerPlugins;
  objc_sync_enter(producerPlugins);
  if (([(NSMutableArray *)self->_producerPlugins containsObject:plugin]& 1) == 0)
  {
    [(NSMutableArray *)self->_producerPlugins addObject:plugin];
    if (([plugin loadRetain] & 1) == 0)
    {
      v6 = 0;
      goto LABEL_6;
    }

    [plugin setupJavascriptContext:{-[OKPresentationViewControllerProxy jsContext](self, "jsContext")}];
  }

  v6 = 1;
LABEL_6:
  objc_sync_exit(producerPlugins);
  return v6;
}

- (OKProducer)producer
{
  objc_sync_enter(self);
  if (!self->_producer && [(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] producerIdentifier])
  {
    v5 = [(OKPresentationViewControllerProxy *)self _registeredProducerPluginWithIdentifier:[(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] producerIdentifier]];
    if (v5)
    {
      v6 = [v5 producerWithPresentation:self->_presentation];
      self->_producer = v6;
      [(OKProducer *)v6 setDelegate:self];
    }

    else if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presentation/OKPresentationViewController.m" line:1309 andFormat:@"Plugin %@ cannot be found", -[OKPresentationInfo producerIdentifier](-[OKPresentation info](self->_presentation, "info"), "producerIdentifier")];
    }
  }

  producer = self->_producer;
  objc_sync_exit(self);
  return producer;
}

- (OKJavaScriptContext)jsContext
{
  objc_sync_enter(self);
  jsContext = self->_jsContext;
  if (!jsContext)
  {
    jsContext = objc_alloc_init(OKJavaScriptContext);
    self->_jsContext = jsContext;
  }

  objc_sync_exit(self);
  return jsContext;
}

- (void)setAllowsResizing:(BOOL)resizing
{
  if (self->_allowsResizing != resizing)
  {
    self->_allowsResizing = resizing;
    if ([(OKPresentationViewControllerProxy *)self isViewLoaded])
    {
      view = [(OKPresentationViewControllerProxy *)self view];

      [view setNeedsLayout];
    }
  }
}

- (id)valueForUndefinedKey:(id)key
{
  if ([key isEqualToString:@"navigators"])
  {
    v5 = objc_opt_new();
    [v5 setDataSource:self];

    return v5;
  }

  else if ([key isEqualToString:@"mainNavigator"])
  {
    return self->_mainNavigatorViewController;
  }

  else if ([key isEqualToString:@"displayedPages"])
  {

    return [(OKPresentationViewControllerProxy *)self displayedPageViewControllers];
  }

  else if ([key isEqualToString:@"deepestDisplayedPage"])
  {

    return [(OKPresentationViewControllerProxy *)self deepestDisplayedPageViewController];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = OKPresentationViewControllerProxy;
    return [(OKPresentationViewControllerProxy *)&v7 valueForUndefinedKey:key];
  }
}

- (void)producer:(id)producer didProcessLiveAuthoringKeyPaths:(id)paths
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__OKPresentationViewControllerProxy_producer_didProcessLiveAuthoringKeyPaths___block_invoke;
  v4[3] = &unk_279C90078;
  v4[4] = paths;
  v4[5] = self;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

uint64_t __78__OKPresentationViewControllerProxy_producer_didProcessLiveAuthoringKeyPaths___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) valueForKeyPath:*(*(&v8 + 1) + 8 * v6)];
        if ([v7 conformsToProtocol:&unk_287B1A9F0])
        {
          [v7 presentationDidLiveUpdate];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (id)navigatorViewControllerForNavigatorWithName:(id)name
{
  navigatorViewControllers = self->_navigatorViewControllers;
  objc_sync_enter(navigatorViewControllers);
  v6 = [(NSMutableDictionary *)self->_navigatorViewControllers objectForKey:name];
  if (v6)
  {
    v7 = v6;
    objc_sync_exit(navigatorViewControllers);
    return v7;
  }

  objc_sync_exit(navigatorViewControllers);
  v9 = [(OKPresentation *)self->_presentation navigatorWithName:name];
  if (!v9)
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presentation/OKPresentationViewController.m" line:1449 andFormat:@"Navigator name %@ does not exist", name];
    }

    goto LABEL_13;
  }

  v10 = v9;
  className = [v9 className];
  if (([objc_msgSend(v10 "className")] & 1) == 0)
  {
    className = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ViewController", className];
  }

  v12 = [+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  if (!v12 || (v13 = v12, ![(objc_class *)v12 isSubclassOfClass:objc_opt_class()]))
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presentation/OKPresentationViewController.m" line:1444 andFormat:@"Class %@ is invalid for creating navigator", className];
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v14 = [[v13 alloc] initWithNavigator:v10];
  [v14 setPresentationViewController:self];
  v15 = self->_navigatorViewControllers;
  objc_sync_enter(v15);
  [(NSMutableDictionary *)self->_navigatorViewControllers setObject:v14 forKey:name];
  objc_sync_exit(v15);
LABEL_14:

  return v14;
}

- (id)cachedNavigatorPageViewControllers
{
  navigatorViewControllers = self->_navigatorViewControllers;
  objc_sync_enter(navigatorViewControllers);
  v4 = [MEMORY[0x277CBEB98] setWithArray:{-[NSMutableDictionary allValues](self->_navigatorViewControllers, "allValues")}];
  objc_sync_exit(navigatorViewControllers);
  return v4;
}

- (void)navigateToItemAtKeyPath:(id)path animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  self->_isFinished = 0;
  [(OKPresentationViewControllerProxy *)self cancelCouchPotatoPlayback];
  [(OKNavigatorViewControllerProxy *)[(OKPresentationViewControllerProxy *)self mainNavigatorViewController] navigateToItemAtKeyPath:path animated:animatedCopy completionHandler:handler];

  [(OKPresentationViewControllerProxy *)self prepareCouchPotatoPlayback];
}

- (id)deepestDisplayedPageViewController
{
  displayedPageViewControllers = [(OKPresentationViewControllerProxy *)self displayedPageViewControllers];

  return [displayedPageViewControllers lastObject];
}

- (BOOL)sendAction:(id)action toTarget:(id)target
{
  [(OKPresentationViewControllerProxy *)self cancelCouchPotatoIfNeededWithAction:?];
  if (target)
  {
    deepestDisplayedPageViewController = [(OKPresentationViewControllerProxy *)self valueForKeyPath:target];
  }

  else
  {
    deepestDisplayedPageViewController = [(OKPresentationViewControllerProxy *)self deepestDisplayedPageViewController];
  }

  v8 = deepestDisplayedPageViewController;
  if (!deepestDisplayedPageViewController)
  {
    return 0;
  }

  [action convertFromResponder:self toResponder:deepestDisplayedPageViewController];

  return [v8 sendAction:action toTarget:0];
}

- (void)_repeatArrowKeyForDirection:(id)direction
{
  integerValue = [direction integerValue];
  Current = CFAbsoluteTimeGetCurrent();

  [(OKPresentationViewControllerProxy *)self _doArrowKeyDownForDirection:integerValue atTimestamp:Current];
}

- (void)_doArrowKeyDownForDirection:(unint64_t)direction atTimestamp:(double)timestamp
{
  v7 = MEMORY[0x277CBF348];
  if (!self->_arrowKeyIsRepeating)
  {
    v8 = +[OKActionPan panActionWithState:location:touchCount:translation:velocity:direction:context:](OKActionPan, "panActionWithState:location:touchCount:translation:velocity:direction:context:", 1, 1, direction, [MEMORY[0x277CBEB38] dictionary], *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    self->_arrowKeyIsRepeating = 1;
    self->_arrowKeyCurrentPanVelocity = *v7;
    self->_lastArrowKeyTimestamp = timestamp;
    [(OKPresentationViewControllerProxy *)self sendAction:v8 toTarget:0];
  }

  v9 = timestamp - self->_lastArrowKeyTimestamp;
  v10 = __ROR8__(direction - 2, 1);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      p_arrowKeyCurrentPanVelocity = &self->_arrowKeyCurrentPanVelocity;
      v13 = self->_arrowKeyCurrentPanVelocity.y + self->_arrowKeyPanAcceleration.y * v9;
    }

    else
    {
      if (v10 != 7)
      {
        goto LABEL_15;
      }

      p_arrowKeyCurrentPanVelocity = &self->_arrowKeyCurrentPanVelocity;
      v13 = self->_arrowKeyCurrentPanVelocity.y - self->_arrowKeyPanAcceleration.y * v9;
    }

    p_arrowKeyCurrentPanVelocity->y = v13;
  }

  else
  {
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_15;
      }

      v11 = self->_arrowKeyCurrentPanVelocity.x - self->_arrowKeyPanAcceleration.x * v9;
    }

    else
    {
      v11 = self->_arrowKeyCurrentPanVelocity.x + self->_arrowKeyPanAcceleration.x * v9;
    }

    self->_arrowKeyCurrentPanVelocity.x = v11;
  }

LABEL_15:
  v14 = vbslq_s8(vcgtq_f64(self->_arrowKeyMaxPanVelocity, self->_arrowKeyCurrentPanVelocity), self->_arrowKeyCurrentPanVelocity, self->_arrowKeyMaxPanVelocity);
  self->_arrowKeyCurrentPanVelocity = v14;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = [OKActionPan panActionWithState:2 location:1 touchCount:direction translation:dictionary velocity:v7->x direction:v7->y context:v17, v18, self->_arrowKeyCurrentPanVelocity.x, self->_arrowKeyCurrentPanVelocity.y];
  [v16 setShouldPropagate:1];
  [(OKPresentationViewControllerProxy *)self sendAction:v16 toTarget:0];
  -[OKPresentationViewControllerProxy performSelector:withObject:afterDelay:](self, "performSelector:withObject:afterDelay:", sel__repeatArrowKeyForDirection_, [MEMORY[0x277CCABB0] numberWithUnsignedInteger:direction], 0.0333333333);
  self->_lastArrowKeyTimestamp = timestamp;
}

- (void)_doArrowKeyUpForDirection:(unint64_t)direction atTimestamp:(double)timestamp
{
  if (self->_arrowKeyIsRepeating)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
    v7 = timestamp - self->_lastArrowKeyTimestamp;
    v8 = v7 * self->_arrowKeyCurrentPanVelocity.x;
    v9 = v7 * self->_arrowKeyCurrentPanVelocity.y;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(OKPresentationViewControllerProxy *)self sendAction:[OKActionPan toTarget:"panActionWithState:location:touchCount:translation:velocity:direction:context:" panActionWithState:1 location:direction touchCount:dictionary translation:*MEMORY[0x277CBF348] velocity:*(MEMORY[0x277CBF348] + 8) direction:v8 context:v9, self->_arrowKeyCurrentPanVelocity.x, self->_arrowKeyCurrentPanVelocity.y], 0];
    self->_arrowKeyIsRepeating = 0;
  }

  else
  {
    v11 = [OKActionSwipe alloc];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v13 = [(OKAction *)v11 initWithLocation:1 touchCount:dictionary2 context:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    [(OKActionSwipe *)v13 setDirection:direction];
    [(OKAction *)v13 setShouldPropagate:1];
    [(OKPresentationViewControllerProxy *)self sendAction:v13 toTarget:0];
  }
}

- (id)widgetViewFromWidget:(id)widget
{
  [widget resolveIfNeeded];
  className = [widget className];
  if (([className hasSuffix:@"View"] & 1) == 0)
  {
    className = [MEMORY[0x277CCACA8] stringWithFormat:@"%@View", className];
  }

  v6 = [+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  if (v6 && (v7 = v6, [(objc_class *)v6 isSubclassOfClass:objc_opt_class()]))
  {
    v8 = [[v7 alloc] initWithWidget:widget];
    if (v8 && [objc_msgSend(widget "subWidgets")])
    {
      -[OKPresentationViewControllerProxy _addSubWidgetViewsFromSubWidgets:toWidgetView:](self, "_addSubWidgetViewsFromSubWidgets:toWidgetView:", [widget subWidgets], v8);
    }

    return v8;
  }

  else
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presentation/OKPresentationViewController.m" line:1668 andFormat:@"Class %@ is invalid for creating widget views from page", className];
    }

    return 0;
  }
}

- (void)_addSubWidgetViewsFromSubWidgets:(id)widgets toWidgetView:(id)view
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  reverseObjectEnumerator = [widgets reverseObjectEnumerator];
  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v11 = [(OKPresentationViewControllerProxy *)self widgetViewFromWidget:*(*(&v13 + 1) + 8 * v10)];
        if (v11)
        {
          v12 = v11;
          [v11 setParentWidgetView:view];
          [objc_msgSend(view "contentView")];
          [objc_msgSend(view "subWidgetViews")];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)instantPause
{
  self->_isPaused = 1;
  [(OKCouchController *)[(OKPresentationViewControllerProxy *)self couchController] stopPlayback];
  [(OKNavigatorViewControllerProxy *)self->_mainNavigatorViewController instantPause];

  [(OKPresentationViewControllerProxy *)self _endCARenderLogging];
}

- (void)instantResume
{
  self->_isPaused = 0;
  if (self->_hasAppeared)
  {
    [(OKNavigatorViewControllerProxy *)self->_mainNavigatorViewController instantResume];
    [(OKCouchController *)[(OKPresentationViewControllerProxy *)self couchController] startPlayback];

    [(OKPresentationViewControllerProxy *)self _beginCARenderLogging];
  }
}

- (void)instantPlay
{
  if (self->_isPaused)
  {
    self->_isPaused = 0;
    if (self->_isFinished)
    {
      self->_isFinished = 0;
      if (self->_hasAppeared)
      {

        [(OKPresentationViewControllerProxy *)self restart];
      }
    }

    else if (self->_hasAppeared)
    {
      [(OKNavigatorViewControllerProxy *)self->_mainNavigatorViewController instantResume];
      couchController = [(OKPresentationViewControllerProxy *)self couchController];

      [(OKCouchController *)couchController startPlayback];
    }
  }
}

- (void)restart
{
  v6[1] = *MEMORY[0x277D85DE8];
  [(OKPresentationViewControllerProxy *)self cancelCouchPotatoPlayback];
  v3 = [-[OKPresentation rootCouch](-[OKPresentationViewControllerProxy presentation](self "presentation")];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__OKPresentationViewControllerProxy_restart__block_invoke;
  v4[3] = &unk_279C8FA38;
  v4[4] = self;
  v5 = @"completionBlock";
  v6[0] = [v4 copy];
  -[OKPresentationViewControllerProxy evaluateScript:withInfoDictionary:andCompletionBlock:forNavigatorViewController:pageViewController:andWidgetView:](self, "evaluateScript:withInfoDictionary:andCompletionBlock:forNavigatorViewController:pageViewController:andWidgetView:", v3, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1], 0, 0, 0, 0);
}

uint64_t __44__OKPresentationViewControllerProxy_restart__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1080) rewindAudioPlaylist];
  v2 = *(a1 + 32);

  return [v2 prepareCouchPotatoPlayback];
}

- (void)setPropertyWithValue:(id)value forKey:(id)key inJSObject:(OpaqueJSValue *)object
{
  Private = JSObjectGetPrivate(object);
  v10 = [MEMORY[0x277CD4658] valueWithObject:value inContext:{-[OKPresentationViewControllerProxy jsContext](self, "jsContext")}];
  v11 = JSStringCreateWithCFString(key);
  exception = 0;
  JSObjectSetProperty(-[OKJavaScriptContext JSGlobalContextRef](-[OKPresentationViewControllerProxy jsContext](self, "jsContext"), "JSGlobalContextRef"), object, v11, [v10 JSValueRef], 0, &exception);
  [Private addObject:value];
  JSStringRelease(v11);
}

- (id)evaluateScript:(id)script withInfoDictionary:(id)dictionary andCompletionBlock:(id)block forNavigatorViewController:(id)controller pageViewController:(id)viewController andWidgetView:(id)view
{
  if (script && [script length])
  {
    dictionaryCopy = dictionary;
    context = objc_autoreleasePoolPush();
    [(NSRecursiveLock *)self->_jsEvaluationInitRecursiveLock lock];
    if (!self->_jsEvaluationInit)
    {
      jsContext = [(OKPresentationViewControllerProxy *)self jsContext];
      -[OKJavaScriptContext evaluateScript:](jsContext, "evaluateScript:", [MEMORY[0x277CCACA8] stringWithContentsOfURL:objc_msgSend(+[OKRuntime opusKitBundle](OKRuntime encoding:"opusKitBundle") error:{"URLForResource:withExtension:", @"Opus", @"js", 4, 0}]);
      mainScript = [[(OKPresentationViewControllerProxy *)self presentation] mainScript];
      if (mainScript)
      {
        [(OKJavaScriptContext *)[(OKPresentationViewControllerProxy *)self jsContext] evaluateScript:mainScript];
      }

      self->_jsEvaluationInit = 1;
    }

    [(NSRecursiveLock *)self->_jsEvaluationInitRecursiveLock unlock];
    0x28757B3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", arc4random() % 0x28757B3];
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = *(MEMORY[0x277CD4678] + 80);
    *&definition.getProperty = *(MEMORY[0x277CD4678] + 64);
    *&definition.deleteProperty = v19;
    v20 = *(MEMORY[0x277CD4678] + 112);
    *&definition.callAsFunction = *(MEMORY[0x277CD4678] + 96);
    *&definition.hasInstance = v20;
    v21 = *(MEMORY[0x277CD4678] + 16);
    *&definition.version = *MEMORY[0x277CD4678];
    *&definition.parentClass = v21;
    v22 = *(MEMORY[0x277CD4678] + 48);
    *&definition.staticFunctions = *(MEMORY[0x277CD4678] + 32);
    definition.hasProperty = *(&v22 + 1);
    definition.finalize = Finalize;
    v23 = JSClassCreate(&definition);
    v24 = JSObjectMake([(OKJavaScriptContext *)[(OKPresentationViewControllerProxy *)self jsContext] JSGlobalContextRef], v23, v18);
    JSClassRelease(v23);
    [(OKPresentationViewControllerProxy *)self setPropertyWithValue:self forKey:@"document" inJSObject:v24];
    if (viewController)
    {
      [(OKPresentationViewControllerProxy *)self setPropertyWithValue:viewController forKey:@"page" inJSObject:v24];
    }

    if (controller)
    {
      [(OKPresentationViewControllerProxy *)self setPropertyWithValue:controller forKey:@"navigator" inJSObject:v24];
    }

    if (view)
    {
      [(OKPresentationViewControllerProxy *)self setPropertyWithValue:view forKey:@"widget" inJSObject:v24];
    }

    if (dictionaryCopy)
    {
      [(OKPresentationViewControllerProxy *)self setPropertyWithValue:dictionaryCopy forKey:@"info" inJSObject:v24];
    }

    v25 = [MEMORY[0x277CCAB68] stringWithFormat:@"function script%@(document, page, navigator, widget, info) {", 0x28757B3];
    [(__CFString *)v25 appendString:script];
    [(__CFString *)v25 appendString:@"}\n"];
    [(__CFString *)v25 appendFormat:@"script%@(this.document, this.page, this.navigator, this.widget, this.info);", 0x28757B3];
    exception = 0;
    v26 = JSStringCreateWithCFString(v25);
    v27 = JSEvaluateScript([(OKJavaScriptContext *)[(OKPresentationViewControllerProxy *)self jsContext] JSGlobalContextRef], v26, v24, 0, 0, &exception);
    [(OKJavaScriptContext *)[(OKPresentationViewControllerProxy *)self jsContext] JSGlobalContextRef];
    JSReportExtraMemoryCost();
    JSStringRelease(v26);
    if (exception)
    {
      jsContext2 = [(OKPresentationViewControllerProxy *)self jsContext];
      v29 = [(OKJavaScriptContext *)jsContext2 valueFromNotifyException:exception];
    }

    else
    {
      v29 = [MEMORY[0x277CD4658] valueWithJSValueRef:v27 inContext:{-[OKPresentationViewControllerProxy jsContext](self, "jsContext")}];
    }

    toObject = [v29 toObject];
    if (block)
    {
      (*(block + 2))(block, 1, toObject);
    }

    objc_autoreleasePoolPop(context);
    return toObject;
  }

  else
  {
    if (block)
    {
      (*(block + 2))(block, 0, 0, dictionary, block, controller, viewController, view);
    }

    return 0;
  }
}

+ (void)setupJavascriptContext:(id)context
{
  v62[3] = *MEMORY[0x277D85DE8];
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKPresentationViewController"];
  v4 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v6 = *MEMORY[0x277CD4618];
  v60[0] = *MEMORY[0x277CD4620];
  v5 = v60[0];
  v60[1] = v6;
  v62[0] = &__block_literal_global_14;
  v62[1] = MEMORY[0x277CBEC28];
  v7 = MEMORY[0x277CBEC28];
  v61 = *MEMORY[0x277CD4610];
  v8 = v61;
  v62[2] = MEMORY[0x277CBEC38];
  v9 = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"mainNavigator" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v62, v60, 3)}];
  v10 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v58[0] = v5;
  v58[1] = v6;
  v59[0] = &__block_literal_global_240;
  v59[1] = v7;
  v58[2] = v8;
  v59[2] = v9;
  [v10 defineProperty:@"displayedPages" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v59, v58, 3)}];
  v11 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v56[0] = v5;
  v56[1] = v6;
  v57[0] = &__block_literal_global_243;
  v57[1] = v7;
  v56[2] = v8;
  v57[2] = v9;
  [v11 defineProperty:@"deepestDisplayedPage" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v57, v56, 3)}];
  v12 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v54[0] = v5;
  v54[1] = v6;
  v55[0] = &__block_literal_global_246_0;
  v55[1] = v7;
  v54[2] = v8;
  v55[2] = v9;
  v13 = v9;
  [v12 defineProperty:@"navigators" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v55, v54, 3)}];
  [context setObject:&unk_287AF0290 forKeyedSubscript:@"kPlaybackModeInteractive"];
  [context setObject:&unk_287AF02A8 forKeyedSubscript:@"kPlaybackModeCouchPotato"];
  v14 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v52[0] = v5;
  v52[1] = v6;
  v53[0] = &__block_literal_global_262;
  v15 = MEMORY[0x277CBEC28];
  v53[1] = MEMORY[0x277CBEC28];
  v52[2] = v8;
  v53[2] = v13;
  [v14 defineProperty:@"playbackMode" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v53, v52, 3)}];
  v16 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v50[0] = v5;
  v50[1] = v6;
  v51[0] = &__block_literal_global_269;
  v51[1] = v15;
  v50[2] = v8;
  v51[2] = v13;
  [v16 defineProperty:@"displaySize" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v51, v50, 3)}];
  v17 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v48[0] = v5;
  v48[1] = v6;
  v49[0] = &__block_literal_global_276;
  v49[1] = v15;
  v48[2] = v8;
  v49[2] = v13;
  [v17 defineProperty:@"resolution" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v49, v48, 3)}];
  v18 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v46[0] = v5;
  v46[1] = v6;
  v47[0] = &__block_literal_global_283;
  v47[1] = v15;
  v46[2] = v8;
  v47[2] = v13;
  [v18 defineProperty:@"bounds" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v47, v46, 3)}];
  v19 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v44[0] = v5;
  v44[1] = v6;
  v45[0] = &__block_literal_global_288;
  v45[1] = v15;
  v44[2] = v8;
  v45[2] = v13;
  [v19 defineProperty:@"layoutFactor" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v45, v44, 3)}];
  v20 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v22 = *MEMORY[0x277CD4638];
  v42[0] = *MEMORY[0x277CD4630];
  v21 = v42[0];
  v42[1] = v22;
  v43[0] = &__block_literal_global_294;
  v43[1] = v13;
  v42[2] = v6;
  v42[3] = v8;
  v23 = MEMORY[0x277CBEC28];
  v43[2] = MEMORY[0x277CBEC28];
  v43[3] = v13;
  [v20 defineProperty:@"navigateToPage" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v43, v42, 4)}];
  v24 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:"}];
  v40[0] = v21;
  v40[1] = v22;
  v41[0] = &__block_literal_global_300;
  v41[1] = v13;
  v40[2] = v6;
  v40[3] = v8;
  v41[2] = v23;
  v41[3] = v13;
  [v24 defineProperty:@"gotoNextStep" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v41, v40, 4)}];
  v25 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v38[0] = v21;
  v38[1] = v22;
  v39[0] = &__block_literal_global_305;
  v39[1] = v13;
  v38[2] = v6;
  v38[3] = v8;
  v39[2] = v23;
  v39[3] = v13;
  [v25 defineProperty:@"gotoNextMainStep" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v39, v38, 4)}];
  v26 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v36[0] = v21;
  v36[1] = v22;
  v37[0] = &__block_literal_global_310;
  v37[1] = v13;
  v36[2] = v6;
  v36[3] = v8;
  v37[2] = v23;
  v37[3] = v13;
  [v26 defineProperty:@"replayStep" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v37, v36, 4)}];
  v27 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v34[0] = v21;
  v34[1] = v6;
  v35[0] = &__block_literal_global_316;
  v35[1] = v23;
  v34[2] = v8;
  v35[2] = v13;
  [v27 defineProperty:@"currentCouchStepDuration" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v35, v34, 3)}];
  v28 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v32[0] = v21;
  v32[1] = v6;
  v33[0] = &__block_literal_global_322;
  v33[1] = v23;
  v32[2] = v8;
  v33[2] = v13;
  [v28 defineProperty:@"playSoundEffect" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v33, v32, 3)}];
  v29 = [objc_msgSend(context objectForKeyedSubscript:{@"OKPresentationViewController", "objectForKeyedSubscript:", @"prototype"}];
  v30[0] = v21;
  v30[1] = v22;
  v31[0] = &__block_literal_global_330;
  v31[1] = v13;
  v30[2] = v6;
  v30[3] = v8;
  v31[2] = v23;
  v31[3] = v13;
  [v29 defineProperty:@"sendAction" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v31, v30, 4)}];
  [context setObject:&unk_287AF02C0 forKeyedSubscript:@"kPrepareModeUnknown"];
  [context setObject:&unk_287AF0290 forKeyedSubscript:@"kPrepareModeDisplay"];
  [context setObject:&unk_287AF02A8 forKeyedSubscript:@"kPrepareModeWarmup"];
  [context setObject:&unk_287AF02D8 forKeyedSubscript:@"kPrepareModeUnload"];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 mainNavigatorViewController];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_2()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 displayedPageViewControllers];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_3()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 deepestDisplayedPageViewController];
}

id __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_4()
{
  v0 = objc_opt_new();
  [v0 setDataSource:{objc_msgSend(objc_msgSend(MEMORY[0x277CD4640], "currentThis"), "toObject")}];

  return v0;
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_259()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 playbackMode];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_2_266()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 displaySize];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_3_273()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 resolution];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_4_280()
{
  v0 = [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 bounds];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_5()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 layoutFactor];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_7;
  v9[3] = &unk_279C8FA38;
  v9[4] = a4;
  return [v7 navigateToPageWithName:a2 animated:a3 completion:v9];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4[0] = [MEMORY[0x277CCABB0] numberWithBool:a2];
  return [v2 callWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v4, 1)}];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_8(double a1)
{
  v2 = [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v2 overrideMode:0 andCurrentStepDuration:a1];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_9(double a1)
{
  v2 = [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v2 overrideMode:1 andCurrentStepDuration:a1];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_10(double a1)
{
  v2 = [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v2 overrideMode:3 andCurrentStepDuration:a1];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_11()
{
  v0 = [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 currentStepDuration];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_12(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  v4 = [objc_msgSend(v3 mediaItemForURL:{objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", a2)), "resourceURL"}];

  return [OKSoundEffect playSoundEffectAtURL:v4];
}

uint64_t __60__OKPresentationViewControllerProxy_setupJavascriptContext___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v3 sendAction:a2 toTarget:0];
}

- (CGPoint)convertLocationInWindow:(CGPoint)window toPage:(id)page
{
  [objc_msgSend(page "view")];

  [(OKPresentationViewControllerProxy *)self convertPointToBackingLayout:page fromPage:?];
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)convertLocationInWindow:(CGPoint)window toWidget:(id)widget
{
  [widget convertPoint:0 fromView:{window.x, window.y}];

  [(OKPresentationViewControllerProxy *)self convertPointToBackingLayout:widget fromWidget:?];
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)convertPointToBackingLayout:(CGPoint)layout fromPage:(id)page
{
  y = layout.y;
  x = layout.x;
  [page layoutFactor];
  v8 = x / v7;
  [page layoutFactor];
  v10 = y / v9;
  v11 = v8;
  result.y = v10;
  result.x = v11;
  return result;
}

- (CGPoint)convertPointToBackingLayout:(CGPoint)layout fromWidget:(id)widget
{
  y = layout.y;
  x = layout.x;
  [widget layoutFactor];
  v8 = x / v7;
  [widget layoutFactor];
  v10 = y / v9;
  v11 = v8;
  result.y = v10;
  result.x = v11;
  return result;
}

- (unint64_t)countOfDictionaryProxy:(id)proxy
{
  navigatorsNames = [[(OKPresentationViewControllerProxy *)self presentation] navigatorsNames];

  return [navigatorsNames count];
}

- (id)allKeysForDictionaryProxy:(id)proxy
{
  presentation = [(OKPresentationViewControllerProxy *)self presentation];

  return [(OKPresentation *)presentation navigatorsNames];
}

- (OKPageViewController)currentPageViewController
{
  displayedPageViewControllers = [(OKPresentationViewControllerProxy *)self displayedPageViewControllers];

  return [displayedPageViewControllers lastObject];
}

- (BOOL)couchControllerCanStartPlayback:(id)playback
{
  if ([(OKPresentationViewControllerProxy *)self couchController]== playback && self->_playbackMode == 1)
  {
    return ![(OKSynopsisView *)self->_synopsisView isDisplay];
  }

  else
  {
    return 0;
  }
}

- (BOOL)thingsAreReadyInCurrentPageForCouchController:(id)controller
{
  currentPageViewController = [(OKPresentationViewControllerProxy *)self currentPageViewController];

  return [(OKPageViewController *)currentPageViewController isReady:1];
}

- (BOOL)couchController:(id)controller thingsAreReadyForNextStep:(id)step withProgress:(double *)progress
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  dependencies = [step dependencies];
  v7 = [dependencies countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = MEMORY[0x277D62808];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(dependencies);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(OKPresentationViewControllerProxy *)self valueForKeyPath:v12];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v13 prepareMode] != 2 && objc_msgSend(v13, "prepareMode") != 1)
          {
            if (*v10 >= 4)
            {
              [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presentation/OKPresentationViewController.m" line:2377 andFormat:@"Page %@ asked if ready before being prepared for warmup", v12];
            }

            [v13 prepareForWarmup];
          }

          if (![v13 isReady:1])
          {
            [v13 readyProgress:1];
            result = 0;
            *progress = v15;
            return result;
          }
        }
      }

      v8 = [dependencies countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  *progress = 1.0;
  [(OKPresentationViewControllerProxy *)self _stopActivityIndicatorWithCompletionBlock:0];
  return ![(OKPresentationViewControllerProxy *)self isActivityIndicatorVisible];
}

- (void)couchControllerStartsWaitingForReadiness:(id)readiness
{
  if (![(OKPresentationViewControllerProxy *)self isActivityIndicatorVisible])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__OKPresentationViewControllerProxy_couchControllerStartsWaitingForReadiness___block_invoke;
    block[3] = &unk_279C8E818;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)couchControllerStopsWaitingForReadiness:(id)readiness
{
  if ([(OKPresentationViewControllerProxy *)self isActivityIndicatorVisible])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__OKPresentationViewControllerProxy_couchControllerStopsWaitingForReadiness___block_invoke;
    block[3] = &unk_279C8E818;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)couchControllerWaitingForReadiness:(id)readiness withProgress:(double)progress
{
  if ([(OKPresentationViewControllerProxy *)self isActivityIndicatorVisible])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __85__OKPresentationViewControllerProxy_couchControllerWaitingForReadiness_withProgress___block_invoke;
    v6[3] = &unk_279C903C0;
    v6[4] = self;
    *&v6[5] = progress;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

- (void)couchControllerPlaybackLooped:(id)looped
{
  if (self->_rewindAudioOnCouchPotatoLoop)
  {
    [(OKNavigatorViewControllerProxy *)self->_mainNavigatorViewController rewindAudioPlaylist];
  }
}

- (void)couchControllerPlaybackCompleted:(id)completed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v8 = __70__OKPresentationViewControllerProxy_couchControllerPlaybackCompleted___block_invoke;
  v9 = &unk_279C8E818;
  selfCopy = self;
  [(OKPresentationViewControllerProxy *)self audioFadeOutDuration];
  if (v4 <= 0.0)
  {
    v8(block);
  }

  else
  {
    [(OKPresentationViewControllerProxy *)self audioFadeOutDuration];
    [(OKPresentationViewControllerProxy *)self fadeAllAudioTracksWithDuration:?];
    [(OKPresentationViewControllerProxy *)self audioFadeOutDuration];
    v6 = dispatch_time(0, (v5 * 1000000000.0));
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __70__OKPresentationViewControllerProxy_couchControllerPlaybackCompleted___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1193) = 1;
  *(*(a1 + 32) + 1192) = 1;
  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v2 = *(*(a1 + 32) + 1080);

  return [v2 rewindAudioPlaylist];
}

- (void)allowCouchPlayback
{
  couchController = [(OKPresentationViewControllerProxy *)self couchController];

  [(OKCouchController *)couchController allowPlayback];
}

- (void)preventCouchPlayback
{
  couchController = [(OKPresentationViewControllerProxy *)self couchController];

  [(OKCouchController *)couchController preventPlayback];
}

- (BOOL)canStartCouchPotatoPlayback
{
  if (!self->_hasAppeared || ![(OKPresentationViewControllerProxy *)self couchController])
  {
    return 0;
  }

  couchController = [(OKPresentationViewControllerProxy *)self couchController];

  return [(OKCouchController *)couchController canStartPlayback];
}

- (void)_prepareInitialCouchPotatoPlayback
{
  if (self->_hasAppeared && [(OKPresentationViewControllerProxy *)self couchController]&& !self->_isPaused)
  {
    couchController = [(OKPresentationViewControllerProxy *)self couchController];
    couchInitialDelay = self->_couchInitialDelay;

    [(OKCouchController *)couchController startPlaybackAfterDelay:couchInitialDelay];
  }
}

- (void)prepareCouchPotatoPlayback
{
  if (self->_hasAppeared && [(OKPresentationViewControllerProxy *)self couchController]&& !self->_isPaused)
  {
    couchController = [(OKPresentationViewControllerProxy *)self couchController];
    [(OKPresentationInfo *)[[(OKPresentationViewControllerProxy *)self presentation] info] couchPotatoDelay];

    [(OKCouchController *)couchController startPlaybackAfterDelay:?];
  }
}

- (void)startCouchPotatoPlayback
{
  if (self->_hasAppeared && [(OKPresentationViewControllerProxy *)self couchController]&& !self->_isPaused)
  {
    couchController = [(OKPresentationViewControllerProxy *)self couchController];

    [(OKCouchController *)couchController startPlayback];
  }
}

- (void)cancelCouchPotatoPlayback
{
  if ([(OKPresentationViewControllerProxy *)self couchController])
  {
    [(OKCouchController *)[(OKPresentationViewControllerProxy *)self couchController] stopPlayback];
    mainNavigatorViewController = self->_mainNavigatorViewController;

    [(OKNavigatorViewControllerProxy *)mainNavigatorViewController cancelCouchPotatoPlayback];
  }
}

- (void)cancelCouchPotatoIfNeededWithAction:(id)action
{
  if (self->_isPaused || ![action shouldCancelCouchPotato])
  {
    return;
  }

  isInstantaneous = [action isInstantaneous];
  state = [action state];
  if (isInstantaneous)
  {
    if (state != 3)
    {
      return;
    }

LABEL_12:
    [(OKCouchController *)[(OKPresentationViewControllerProxy *)self couchController] stopPlayback];
    couchController = [(OKPresentationViewControllerProxy *)self couchController];
    [(OKPresentationInfo *)[[(OKPresentationViewControllerProxy *)self presentation] info] couchPotatoDelay];

    [(OKCouchController *)couchController startPlaybackAfterDelay:?];
    return;
  }

  if (state != 1)
  {
    if ([action state] != 3 && objc_msgSend(action, "state") != 4)
    {
      return;
    }

    goto LABEL_12;
  }

  couchController2 = [(OKPresentationViewControllerProxy *)self couchController];

  [(OKCouchController *)couchController2 stopPlayback];
}

- (OKCouchController)couchController
{
  if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] couchPotatoSupported]&& !self->_couchController)
  {
    presentation = [(OKPresentationViewControllerProxy *)self presentation];
    mainNavigatorName = self->_mainNavigatorName;
    if (!mainNavigatorName)
    {
      mainNavigatorName = [(OKPresentationInfo *)[[(OKPresentationViewControllerProxy *)self presentation] info] mainNavigatorName];
    }

    v5 = [[OKCouchController alloc] initWithCouch:[(OKPresentation *)presentation couchWithName:mainNavigatorName] andDelegate:self];
    self->_couchController = v5;
    [(OKCouchController *)v5 setLoops:self->_couchModeLoops];
    [(OKCouchController *)self->_couchController setDelayForReadinessWaitNotification:self->_couchModeIsReadySpinnerDelay];
    if (self->_couchModeDefaultStepDuration == -1.0)
    {
      [(OKPresentationInfo *)[[(OKPresentationViewControllerProxy *)self presentation] info] couchPotatoStepDuration];
      self->_couchModeDefaultStepDuration = v6;
    }

    [(OKCouchController *)self->_couchController setDefaultStepDuration:?];
  }

  return self->_couchController;
}

- (void)setAudioURLs:(id)ls
{
  if (([(NSArray *)self->_audioURLs isEqual:?]& 1) == 0)
  {
    audioURLs = self->_audioURLs;
    if (audioURLs)
    {

      self->_audioURLs = 0;
    }

    self->_audioURLs = ls;
    mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];

    [(OKNavigatorViewControllerProxy *)mainNavigatorViewController _setAudioURLs:ls];
  }
}

- (void)setCouchModeLoops:(BOOL)loops
{
  loopsCopy = loops;
  self->_couchModeLoops = loops;
  couchController = [(OKPresentationViewControllerProxy *)self couchController];

  [(OKCouchController *)couchController setLoops:loopsCopy];
}

- (void)setCouchModeDefaultStepDuration:(double)duration
{
  self->_couchModeDefaultStepDuration = duration;
  couchController = [(OKPresentationViewControllerProxy *)self couchController];

  [(OKCouchController *)couchController setDefaultStepDuration:duration];
}

- (void)setCouchModeIsReadySpinnerDelay:(double)delay
{
  self->_couchModeIsReadySpinnerDelay = delay;
  couchController = [(OKPresentationViewControllerProxy *)self couchController];

  [(OKCouchController *)couchController setDelayForReadinessWaitNotification:delay];
}

- (void)setAudioVolume:(double)volume
{
  v14 = *MEMORY[0x277D85DE8];
  self->_audioVolume = volume;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMutableArray *)self->_audioDuckingStack objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v8++) setPlaybackAudioVolume:self->_audioVolume];
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)fadeAllAudioTracksWithDuration:(double)duration
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [(NSMutableArray *)self->_audioDuckingStack objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (!self->_isExporting)
        {
          [*(*(&v13 + 1) + 8 * v9) beginFadingWithDuration:duration];
        }

        [(OKPresentationViewControllerProxy *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          controllerAudioTrackIDs = self->_controllerAudioTrackIDs;
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __68__OKPresentationViewControllerProxy_fadeAllAudioTracksWithDuration___block_invoke;
          v12[3] = &unk_279C903E8;
          v12[4] = v10;
          v12[5] = self;
          *&v12[6] = duration;
          [(NSMutableDictionary *)controllerAudioTrackIDs enumerateKeysAndObjectsUsingBlock:v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

uint64_t __68__OKPresentationViewControllerProxy_fadeAllAudioTracksWithDuration___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == a3)
  {
    v5 = result;
    v6 = [*(result + 40) delegate];
    v7 = *(v5 + 48);

    return [v6 beginFadingForTrackID:a2 fadeDuration:v7];
  }

  return result;
}

- (void)fadeMainNavigatorTracksWithDuration:(double)duration
{
  if (!self->_isExporting)
  {
    [(OKNavigatorViewControllerProxy *)self->_mainNavigatorViewController beginFadingWithDuration:duration];
  }

  [(OKPresentationViewControllerProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    controllerAudioTrackIDs = self->_controllerAudioTrackIDs;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__OKPresentationViewControllerProxy_fadeMainNavigatorTracksWithDuration___block_invoke;
    v6[3] = &unk_279C90410;
    v6[4] = self;
    *&v6[5] = duration;
    [(NSMutableDictionary *)controllerAudioTrackIDs enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void *__73__OKPresentationViewControllerProxy_fadeMainNavigatorTracksWithDuration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result[135] == a3)
  {
    v6 = [result delegate];
    v7 = *(a1 + 40);

    return [v6 beginFadingForTrackID:a2 fadeDuration:v7];
  }

  return result;
}

- (id)beginAudioForController:(id)controller withAVAsset:(id)asset andVolume:(float)volume
{
  v30 = *MEMORY[0x277D85DE8];
  generateUUID = [MEMORY[0x277CCACA8] generateUUID];
  obj = self->_audioDuckingStack;
  objc_sync_enter(obj);
  v10 = [(NSMutableArray *)self->_audioDuckingStack containsObject:controller];
  lastObject = [(NSMutableArray *)self->_audioDuckingStack lastObject];
  audioVolume = 0.0;
  if (!self->_isExporting)
  {
    audioVolume = self->_audioVolume;
  }

  [controller setPlaybackAudioVolume:audioVolume];
  [(NSMutableDictionary *)self->_controllerAudioTrackIDs setObject:controller forKeyedSubscript:generateUUID];
  *&v13 = volume;
  [(OKPresentationViewControllerProxy *)self audioStartedPlayingForTrackID:generateUUID withAVAsset:asset andVolume:v13];
  if (v10)
  {
    if (lastObject != controller)
    {
      if (!self->_isExporting)
      {
        [lastObject requiredDuckLevel];
        [controller beginDuckingToLevel:? fadeDuration:?];
      }

      [(OKPresentationViewControllerProxy *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        delegate = [(OKPresentationViewControllerProxy *)self delegate];
        [lastObject requiredDuckLevel];
        [OKPresentationViewControllerDelegate beginDuckingForTrackID:delegate toDuckLevel:"beginDuckingForTrackID:toDuckLevel:fadeDuration:" fadeDuration:generateUUID];
      }
    }
  }

  else
  {
    v22 = generateUUID;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    objectEnumerator = [(NSMutableArray *)self->_audioDuckingStack objectEnumerator];
    v16 = [objectEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          if (!self->_isExporting)
          {
            [controller requiredDuckLevel];
            [v19 beginDuckingToLevel:? fadeDuration:?];
          }

          [(OKPresentationViewControllerProxy *)self delegate];
          if (objc_opt_respondsToSelector())
          {
            controllerAudioTrackIDs = self->_controllerAudioTrackIDs;
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __83__OKPresentationViewControllerProxy_beginAudioForController_withAVAsset_andVolume___block_invoke;
            v24[3] = &unk_279C90438;
            v24[4] = v19;
            v24[5] = self;
            v24[6] = controller;
            [(NSMutableDictionary *)controllerAudioTrackIDs enumerateKeysAndObjectsUsingBlock:v24];
          }
        }

        v16 = [objectEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    [(NSMutableArray *)self->_audioDuckingStack addObject:controller];
    generateUUID = v22;
  }

  objc_sync_exit(obj);
  return generateUUID;
}

uint64_t __83__OKPresentationViewControllerProxy_beginAudioForController_withAVAsset_andVolume___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == a3)
  {
    v5 = result;
    v6 = [*(result + 40) delegate];
    [*(v5 + 48) requiredDuckLevel];

    return [v6 beginDuckingForTrackID:a2 toDuckLevel:? fadeDuration:?];
  }

  return result;
}

- (void)endAudioForController:(id)controller andTrackID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  audioDuckingStack = self->_audioDuckingStack;
  objc_sync_enter(audioDuckingStack);
  if (d)
  {
    if ([(NSMutableDictionary *)self->_controllerAudioTrackIDs objectForKey:d])
    {
      [(OKPresentationViewControllerProxy *)self audioFinishedPlayingForTrackID:d];
      if ([(NSMutableArray *)self->_audioDuckingStack count])
      {
        lastObject = [(NSMutableArray *)self->_audioDuckingStack lastObject];
        v26 = 0;
        v27 = &v26;
        v28 = 0x2020000000;
        v29 = 0;
        [(NSMutableDictionary *)self->_controllerAudioTrackIDs removeObjectForKey:d];
        controllerAudioTrackIDs = self->_controllerAudioTrackIDs;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __70__OKPresentationViewControllerProxy_endAudioForController_andTrackID___block_invoke;
        v25[3] = &unk_279C90460;
        v25[4] = controller;
        v25[5] = &v26;
        [(NSMutableDictionary *)controllerAudioTrackIDs enumerateKeysAndObjectsUsingBlock:v25];
        if ((v27[3] & 1) == 0)
        {
          [(NSMutableArray *)self->_audioDuckingStack removeObject:controller];
          if (lastObject == controller)
          {
            if ([(NSMutableArray *)self->_audioDuckingStack count])
            {
              lastObject2 = [(NSMutableArray *)self->_audioDuckingStack lastObject];
              v11 = lastObject2;
              if (!self->_isExporting)
              {
                [lastObject2 endDucking];
              }

              [(OKPresentationViewControllerProxy *)self delegate];
              if (objc_opt_respondsToSelector())
              {
                v12 = self->_controllerAudioTrackIDs;
                v24[0] = MEMORY[0x277D85DD0];
                v24[1] = 3221225472;
                v24[2] = __70__OKPresentationViewControllerProxy_endAudioForController_andTrackID___block_invoke_2;
                v24[3] = &unk_279C90488;
                v24[4] = v11;
                v24[5] = self;
                [(NSMutableDictionary *)v12 enumerateKeysAndObjectsUsingBlock:v24];
              }

              v22 = 0u;
              v23 = 0u;
              v20 = 0u;
              v21 = 0u;
              v13 = self->_audioDuckingStack;
              v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v30 count:16];
              if (v14)
              {
                v15 = *v21;
                do
                {
                  for (i = 0; i != v14; ++i)
                  {
                    if (*v21 != v15)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v17 = *(*(&v20 + 1) + 8 * i);
                    if (v17 != v11)
                    {
                      if (!self->_isExporting)
                      {
                        [v11 requiredDuckLevel];
                        [v17 beginDuckingToLevel:? fadeDuration:?];
                      }

                      [(OKPresentationViewControllerProxy *)self delegate];
                      if (objc_opt_respondsToSelector())
                      {
                        v18 = self->_controllerAudioTrackIDs;
                        v19[0] = MEMORY[0x277D85DD0];
                        v19[1] = 3221225472;
                        v19[2] = __70__OKPresentationViewControllerProxy_endAudioForController_andTrackID___block_invoke_3;
                        v19[3] = &unk_279C90438;
                        v19[4] = v17;
                        v19[5] = self;
                        v19[6] = v11;
                        [(NSMutableDictionary *)v18 enumerateKeysAndObjectsUsingBlock:v19];
                      }
                    }
                  }

                  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v30 count:16];
                }

                while (v14);
              }
            }
          }

          else
          {
            [controller endDucking];
          }
        }

        _Block_object_dispose(&v26, 8);
      }
    }
  }

  objc_sync_exit(audioDuckingStack);
}

uint64_t __70__OKPresentationViewControllerProxy_endAudioForController_andTrackID___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a3)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __70__OKPresentationViewControllerProxy_endAudioForController_andTrackID___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == a3)
  {
    v5 = [*(result + 40) delegate];

    return [v5 endDuckingForTrackID:a2];
  }

  return result;
}

uint64_t __70__OKPresentationViewControllerProxy_endAudioForController_andTrackID___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == a3)
  {
    v5 = result;
    v6 = [*(result + 40) delegate];
    [*(v5 + 48) requiredDuckLevel];

    return [v6 beginDuckingForTrackID:a2 toDuckLevel:? fadeDuration:?];
  }

  return result;
}

- (void)audioStartedPlayingForTrackID:(id)d withAVAsset:(id)asset andVolume:(float)volume
{
  if (d)
  {
    [(OKPresentationViewControllerProxy *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(OKPresentationViewControllerProxy *)self delegate];

      [(OKPresentationViewControllerDelegate *)delegate audioStartedPlayingForTrackID:d withAVAsset:asset atVolume:volume];
    }
  }
}

- (void)audioFinishedPlayingForTrackID:(id)d
{
  if (d)
  {
    [(OKPresentationViewControllerProxy *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(OKPresentationViewControllerProxy *)self delegate];

      [(OKPresentationViewControllerDelegate *)delegate audioFinishedPlayingForTrackID:d];
    }
  }
}

- (BOOL)canPanMediaInWidget:(id)widget
{
  [(OKPresentationViewControllerProxy *)self editingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  editingDelegate = [(OKPresentationViewControllerProxy *)self editingDelegate];

  return [(OKPresentationViewControllerEditingDelegate *)editingDelegate presentationViewController:self canPanMediaInWidget:widget];
}

- (void)beginPanningMediaInWidget:(id)widget
{
  [(OKPresentationViewControllerProxy *)self editingDelegate];
  if (objc_opt_respondsToSelector())
  {
    editingDelegate = [(OKPresentationViewControllerProxy *)self editingDelegate];

    [(OKPresentationViewControllerEditingDelegate *)editingDelegate presentationViewController:self beginPanningMediaInWidget:widget];
  }
}

- (BOOL)validatePanningMediaInWidget:(id)widget toState:(id)state
{
  [(OKPresentationViewControllerProxy *)self editingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  editingDelegate = [(OKPresentationViewControllerProxy *)self editingDelegate];

  return [(OKPresentationViewControllerEditingDelegate *)editingDelegate presentationViewController:self validatePanningMediaInWidget:widget toState:state];
}

- (void)endPanningMediaInWidget:(id)widget finalState:(id)state
{
  [(OKPresentationViewControllerProxy *)self editingDelegate];
  if (objc_opt_respondsToSelector())
  {
    editingDelegate = [(OKPresentationViewControllerProxy *)self editingDelegate];

    [(OKPresentationViewControllerEditingDelegate *)editingDelegate presentationViewController:self endPanningMediaInWidget:widget finalState:state];
  }
}

- (BOOL)canEditTextInWidget:(id)widget
{
  [(OKPresentationViewControllerProxy *)self editingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  editingDelegate = [(OKPresentationViewControllerProxy *)self editingDelegate];

  return [(OKPresentationViewControllerEditingDelegate *)editingDelegate presentationViewController:self canEditTextInWidget:widget];
}

- (void)beginEditingTextInWidget:(id)widget
{
  [(OKPresentationViewControllerProxy *)self editingDelegate];
  if (objc_opt_respondsToSelector())
  {
    editingDelegate = [(OKPresentationViewControllerProxy *)self editingDelegate];

    [(OKPresentationViewControllerEditingDelegate *)editingDelegate presentationViewController:self beginEditingTextInWidget:widget];
  }
}

- (BOOL)validateChangingTextInWidget:(id)widget toSettings:(id)settings
{
  [(OKPresentationViewControllerProxy *)self editingDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  editingDelegate = [(OKPresentationViewControllerProxy *)self editingDelegate];

  return [(OKPresentationViewControllerEditingDelegate *)editingDelegate presentationViewController:self validateChangingTextInWidget:widget toSettings:settings];
}

- (void)endEditingTextInWidget:(id)widget finalSettings:(id)settings
{
  [(OKPresentationViewControllerProxy *)self editingDelegate];
  if (objc_opt_respondsToSelector())
  {
    editingDelegate = [(OKPresentationViewControllerProxy *)self editingDelegate];

    [(OKPresentationViewControllerEditingDelegate *)editingDelegate presentationViewController:self endEditingTextInWidget:widget finalSettings:settings];
  }
}

- (void)renderingTimeLogMessage:(id)message withTimestamp:(double)timestamp
{
  if (self->_isRenderLoggingActive)
  {
    [(OKPresentationViewControllerProxy *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(OKPresentationViewControllerProxy *)self delegate];

      [(OKPresentationViewControllerDelegate *)delegate presentationViewController:self renderingTimeLogMessage:message withTimestamp:timestamp];
    }
  }
}

- (void)_beginCARenderLogging
{
  if (self->_logRenderingTimes && !self->_isRenderLoggingActive)
  {
    if (![(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] renderTimeLoggingSupported])
    {
      CASetDebugFlags();
      CASetMessageFunction();
    }

    self->_isRenderLoggingActive = 1;
  }
}

- (void)_endCARenderLogging
{
  if (self->_isRenderLoggingActive)
  {
    if (![(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] renderTimeLoggingSupported])
    {
      CASetDebugFlags();
      CASetMessageFunction();
    }

    self->_isRenderLoggingActive = 0;
  }
}

- (id)colorSpace
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presentation/OKPresentationViewController.m" line:2884 andFormat:@"%s method need to be overrided", "-[OKPresentationViewControllerProxy colorSpace]"];
  }

  return 0;
}

- (void)clickWheelViewClosePressed:(id)pressed
{
  [(OKPresentationViewControllerProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(OKPresentationViewControllerProxy *)self delegate];

    [(OKPresentationViewControllerDelegate *)delegate dismissPresentationViewController:self];
  }
}

- (void)initWheelController
{
  if ([(OKPresentationInfo *)[(OKPresentation *)self->_presentation info] wheelControllerSupported])
  {
    v3 = [[OKClickWheelView alloc] initWithContainerView:[(OKPresentationViewControllerProxy *)self view] andAuthoringGuidelines:[(OKPresentation *)self->_presentation allGuidelines]];
    self->_clickWheelView = v3;
    [(OKClickWheelView *)v3 setDelegate:self];
    [(OKClickWheelView *)self->_clickWheelView setAudioPlaylist:[(OKNavigatorViewControllerProxy *)[(OKPresentationViewControllerProxy *)self mainNavigatorViewController] audioPlaylist]];
    [(OKClickWheelView *)self->_clickWheelView setVolume:self->_audioVolume / 5.0];
    v4 = MEMORY[0x277CBEBB8];

    [v4 scheduledTimerWithTimeInterval:self target:sel_updateTimeLeft selector:0 userInfo:1 repeats:0.1];
  }
}

- (void)updateTimeLeft
{
  [(OKAudioPlaylist *)[(OKNavigatorViewControllerProxy *)self->_mainNavigatorViewController audioPlaylist] playingMusicCurrentTime];
  v4 = v3;
  [(OKAudioPlaylist *)[(OKNavigatorViewControllerProxy *)self->_mainNavigatorViewController audioPlaylist] playingMusicDuration];
  v6 = v4 / v5;
  clickWheelView = self->_clickWheelView;

  [(OKClickWheelView *)clickWheelView setProgress:v6];
}

- (void)initSynopsisView
{
  synopsisView = self->_synopsisView;
  if (synopsisView)
  {

    self->_synopsisView = 0;
  }

  v4 = [[OKSynopsisInterpreter alloc] initWithSynopsis:[[(OKPresentationViewControllerProxy *)self presentation] guidelineAuthoringSynopsis]];
  if ([(OKSynopsisInterpreter *)v4 hasSynopsis])
  {
    self->_synopsisView = [[OKSynopsisView alloc] initWithPresentationViewController:self];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__OKPresentationViewControllerProxy_initSynopsisView__block_invoke;
    v6[3] = &unk_279C904B0;
    v6[4] = self;
    -[OKSynopsisInterpreter registerCreatorForItemType:initBlock:](v4, "registerCreatorForItemType:initBlock:", 0, [v6 copy]);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__OKPresentationViewControllerProxy_initSynopsisView__block_invoke_2;
    v5[3] = &unk_279C904B0;
    v5[4] = self;
    -[OKSynopsisInterpreter registerCreatorForItemType:initBlock:](v4, "registerCreatorForItemType:initBlock:", 1, [v5 copy]);
    -[OKSynopsisInterpreter registerCreatorForItemType:initBlock:](v4, "registerCreatorForItemType:initBlock:", 2, [&__block_literal_global_410 copy]);
    -[OKSynopsisInterpreter registerComparatorForItemType:compareBlock:](v4, "registerComparatorForItemType:compareBlock:", 0, [&__block_literal_global_414 copy]);
    -[OKSynopsisInterpreter registerComparatorForItemType:compareBlock:](v4, "registerComparatorForItemType:compareBlock:", 1, [&__block_literal_global_416 copy]);
    [(OKSynopsisView *)self->_synopsisView setSynopsisInterpreter:v4];
    [(OKSynopsisView *)self->_synopsisView setDelegate:self];
    if (v4)
    {
    }
  }

  else if (v4)
  {
  }
}

OKWidgetMediaView *__53__OKPresentationViewControllerProxy_initSynopsisView__block_invoke(uint64_t a1, void *a2)
{
  v4 = [(OKWidgetMediaViewProxy *)[OKWidgetMediaView alloc] initWithWidget:0];
  [(OKWidgetMediaView *)v4 setAutoresizingMask:18];
  -[OKWidgetMediaViewProxy setSettingUrl:](v4, "setSettingUrl:", [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(a2, "value")}]);
  [(OKWidgetMediaViewProxy *)v4 setSettingDisablePlayButton:1];
  v5 = [objc_msgSend(*(a1 + 32) "presentation")];
  [(OKWidgetViewProxy *)v4 setDelegate:*(*(a1 + 32) + 1384)];
  if ([objc_msgSend(v5 "metadata")] == 3)
  {
    v6 = [MEMORY[0x277D755B8] imageNamed:@"badgeVideo" inBundle:{+[OKRuntime opusKitBundle](OKRuntime, "opusKitBundle")}];
    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
    [(OKWidgetMediaView *)v4 frame];
    [v7 setFrame:{5.0, v8 + -27.0, 22.0, 22.0}];
    [v7 setContentMode:1];
    [v7 setAutoresizingMask:30];
    [(OFUIView *)[(OKWidgetViewProxy *)v4 contentView] addSubview:v7];
    if (v7)
    {
    }
  }

  else
  {
    -[OKWidgetViewProxy setSettingBorderColor:](v4, "setSettingBorderColor:", [MEMORY[0x277D75348] whiteColor]);
    [(OKWidgetViewProxy *)v4 setSettingBorderWidth:8.0];
  }

  return v4;
}

OKWidgetLabelView *__53__OKPresentationViewControllerProxy_initSynopsisView__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [[OKWidgetLabelView alloc] initWithWidget:0];
  [*(a1 + 32) layoutFactor];
  v6 = v5;
  [*(a1 + 32) layoutFactor];
  v8 = fmin(v6, v7) * 20.0;
  [-[OKWidgetLabelViewProxy label](v4 "label")];
  [-[OKWidgetLabelViewProxy label](v4 "label")];
  [-[OKWidgetLabelViewProxy label](v4 "label")];
  [-[OKWidgetLabelViewProxy label](v4 "label")];
  [-[OKWidgetLabelViewProxy label](v4 "label")];
  [-[OKWidgetLabelViewProxy label](v4 "label")];
  [-[OKWidgetLabelViewProxy label](v4 "label")];
  [(OKWidgetLabelView *)v4 setAutoresizingMask:18];
  -[OKWidgetLabelView setBackgroundColor:](v4, "setBackgroundColor:", [MEMORY[0x277D75348] whiteColor]);

  return v4;
}

OKWidgetMapView *__53__OKPresentationViewControllerProxy_initSynopsisView__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [(OKWidgetMapViewProxy *)[OKWidgetMapView alloc] initWithWidget:0];
  [(MKMapView *)[(OKWidgetMapViewProxy *)v3 mapView] setScrollEnabled:0];
  [(MKMapView *)[(OKWidgetMapViewProxy *)v3 mapView] setZoomEnabled:0];
  [(MKMapView *)[(OKWidgetMapViewProxy *)v3 mapView] setRotateEnabled:0];
  [(MKMapView *)[(OKWidgetMapViewProxy *)v3 mapView] setPitchEnabled:0];
  [a2 value];
  MKCoordinateRegionFromString();
  latitude = v16.latitude;
  longitude = v16.longitude;
  v7 = v6;
  v9 = v8;
  if (CLLocationCoordinate2DIsValid(v16))
  {
    [(MKMapView *)[(OKWidgetMapViewProxy *)v3 mapView] regionThatFits:latitude, longitude, v7, v9];
    [(MKMapView *)[(OKWidgetMapViewProxy *)v3 mapView] setRegion:v10, v11, v12, v13];
  }

  [(MKMapView *)[(OKWidgetMapViewProxy *)v3 mapView] setMapType:1];
  [(OKWidgetMapView *)v3 setAutoresizingMask:18];

  return v3;
}

- (void)synopsisView:(id)view didSelectItem:(id)item
{
  [view hide];
  v6 = [item key];

  [(OKPresentationViewControllerProxy *)self navigateToItemAtKeyPath:v6 animated:0 completionHandler:&__block_literal_global_418];
}

- (id)visibleItemKeyPaths
{
  v14 = *MEMORY[0x277D85DE8];
  visibleWidgets = [(OKPresentationViewControllerProxy *)self visibleWidgets];
  array = [MEMORY[0x277CBEB18] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [visibleWidgets countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(visibleWidgets);
        }

        [array addObject:{objc_msgSend(objc_msgSend(*(*(&v9 + 1) + 8 * v7++), "widget"), "keyPath")}];
      }

      while (v5 != v7);
      v5 = [visibleWidgets countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return array;
}

- (id)visibleMediaItems
{
  v16 = *MEMORY[0x277D85DE8];
  visibleWidgets = [(OKPresentationViewControllerProxy *)self visibleWidgets];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [visibleWidgets countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(visibleWidgets);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:{-[OKPresentation mediaItemForURL:](-[OKPresentationViewControllerProxy presentation](self, "presentation"), "mediaItemForURL:", objc_msgSend(v9, "settingUrl"))}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [visibleWidgets countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)visibleMediaObjects
{
  visibleMediaItems = [(OKPresentationViewControllerProxy *)self visibleMediaItems];

  return [visibleMediaItems valueForKey:@"mediaObject"];
}

- (id)visibleWidgets
{
  currentPageViewController = [(OKNavigatorViewControllerProxy *)[(OKPresentationViewControllerProxy *)self mainNavigatorViewController] currentPageViewController];

  return [(OKPageViewController *)currentPageViewController visibleWidgets];
}

- (void)synopsisViewWillBegin:(id)begin
{
  mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];

  [(OKNavigatorViewControllerProxy *)mainNavigatorViewController beginDuckingToLevel:0.1 fadeDuration:0.3];
}

- (void)synopsisViewDidBegin:(id)begin
{
  mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];

  [(OKNavigatorViewControllerProxy *)mainNavigatorViewController beginDuckingToLevel:0.1 fadeDuration:0.3];
}

- (void)synopsisViewDidEnd:(id)end
{
  mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];
  audioVolume = self->_audioVolume;

  [(OKNavigatorViewControllerProxy *)mainNavigatorViewController beginDuckingToLevel:audioVolume fadeDuration:0.3];
}

- (void)synopsisViewUpdated:(id)updated withProgress:(double)progress
{
  if (progress <= 0.8)
  {
    progressCopy = progress;
  }

  else
  {
    progressCopy = 0.8;
  }

  mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];

  [(OKNavigatorViewControllerProxy *)mainNavigatorViewController beginDuckingToLevel:1.0 - progressCopy fadeDuration:0.0];
}

- (void)setInteractiveTransitionTrackingBoxRadius:(double)radius
{
  self->_interactiveTransitionTrackingBoxRadius = radius;
  if (self->_rootNavigatorIsReady)
  {
    [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];

      [(OKNavigatorViewController *)mainNavigatorViewController setInteractiveTransitionTrackingBoxRadius:radius];
    }
  }
}

- (void)setInteractiveTransitionProgressThreshold:(double)threshold
{
  self->_interactiveTransitionProgressThreshold = threshold;
  if (self->_rootNavigatorIsReady)
  {
    [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];

      [(OKNavigatorViewController *)mainNavigatorViewController setInteractiveTransitionProgressThreshold:threshold];
    }
  }
}

- (void)setInteractiveTransitionVelocityThreshold:(double)threshold
{
  self->_interactiveTransitionVelocityThreshold = threshold;
  if (self->_rootNavigatorIsReady)
  {
    [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mainNavigatorViewController = [(OKPresentationViewControllerProxy *)self mainNavigatorViewController];

      [(OKNavigatorViewController *)mainNavigatorViewController setInteractiveTransitionVelocityThreshold:threshold];
    }
  }
}

- (CGSize)displaySize
{
  width = self->_displaySize.width;
  height = self->_displaySize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)resolutionSize
{
  width = self->_resolutionSize.width;
  height = self->_resolutionSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end