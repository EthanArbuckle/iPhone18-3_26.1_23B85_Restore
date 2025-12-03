@interface SWContainerViewController
- (BOOL)focusShouldStartInputSession;
- (CGRect)convertedInputAccessoryViewFrame;
- (CGRect)convertedKeyboardFrame;
- (CGRect)inputAccessoryViewFrame;
- (CGRect)keyboardFrame;
- (NSURL)loadedURL;
- (SWContainerViewController)initWithWebContentViewController:(id)controller actionProvider:(id)provider interactionProvider:(id)interactionProvider errorProvider:(id)errorProvider failureProvider:(id)failureProvider navigationBarConfigurationProvider:(id)configurationProvider configurationManager:(id)manager presentationManager:(id)self0 scaleManager:(id)self1 snapshotManager:(id)self2 preferredSizeManager:(id)self3;
- (SWMessageHandlerManager)messageHandlerManager;
- (SWScriptsManager)scriptsManager;
- (id)accessibilityElements;
- (id)inputAccessoryView;
- (void)addContentRuleList:(id)list identifier:(id)identifier;
- (void)dealloc;
- (void)handleKeyboardChange:(id)change;
- (void)handleKeyboardHide:(id)hide;
- (void)handleKeyboardShow:(id)show;
- (void)loadHTMLString:(id)string baseURL:(id)l;
- (void)loadLocalDatastore:(id)datastore options:(unint64_t)options completion:(id)completion;
- (void)loadURL:(id)l;
- (void)loadURL:(id)l cachePolicy:(unint64_t)policy;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prewarm;
- (void)reachabilityChanged:(id)changed;
- (void)removeMenusForIdentifiers:(id)identifiers;
- (void)setConfiguration:(id)configuration;
- (void)setDeveloperSettings:(id)settings;
- (void)setHiddenPocketEdges:(unint64_t)edges;
- (void)setInputAccessoryView:(id)view;
- (void)setShortcutsBarWithLeadingGroups:(id)groups trailingGroups:(id)trailingGroups;
- (void)setTextInputTraits:(id)traits;
- (void)updateConfiguration;
- (void)updateReachability;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)webViewSetNeedsLayout;
@end

@implementation SWContainerViewController

- (SWContainerViewController)initWithWebContentViewController:(id)controller actionProvider:(id)provider interactionProvider:(id)interactionProvider errorProvider:(id)errorProvider failureProvider:(id)failureProvider navigationBarConfigurationProvider:(id)configurationProvider configurationManager:(id)manager presentationManager:(id)self0 scaleManager:(id)self1 snapshotManager:(id)self2 preferredSizeManager:(id)self3
{
  controllerCopy = controller;
  providerCopy = provider;
  interactionProviderCopy = interactionProvider;
  interactionProviderCopy2 = interactionProvider;
  errorProviderCopy = errorProvider;
  failureProviderCopy = failureProvider;
  configurationProviderCopy = configurationProvider;
  managerCopy = manager;
  presentationManagerCopy = presentationManager;
  scaleManagerCopy = scaleManager;
  snapshotManagerCopy = snapshotManager;
  sizeManagerCopy = sizeManager;
  v46.receiver = self;
  v46.super_class = SWContainerViewController;
  v18 = [(SWContainerViewController *)&v46 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_webContentViewController, controller);
    objc_storeStrong(&v19->_actionProvider, provider);
    objc_storeStrong(&v19->_interactionProvider, interactionProviderCopy);
    objc_storeStrong(&v19->_errorProvider, errorProvider);
    objc_storeStrong(&v19->_failureProvider, failureProvider);
    objc_storeStrong(&v19->_navigationBarConfigurationProvider, configurationProvider);
    objc_storeStrong(&v19->_configurationManager, manager);
    objc_storeStrong(&v19->_presentationManager, presentationManager);
    v20 = [[SWDeveloperSettings alloc] initWithAllowRemoteInspection:NFInternalBuild()];
    developerSettings = v19->_developerSettings;
    v19->_developerSettings = v20;

    objc_storeStrong(&v19->_scaleManager, scaleManager);
    objc_storeStrong(&v19->_snapshotManager, snapshotManager);
    objc_storeStrong(&v19->_preferredSizeManager, sizeManager);
    uRLSchemeHandlerManager = [controllerCopy URLSchemeHandlerManager];
    URLSchemeHandlerManager = v19->_URLSchemeHandlerManager;
    v19->_URLSchemeHandlerManager = uRLSchemeHandlerManager;

    *v32 = *(MEMORY[0x1E695F058] + 16);
    v34 = *MEMORY[0x1E695F058];
    v19->_keyboardFrame.origin = *MEMORY[0x1E695F058];
    v19->_keyboardFrame.size = *v32;
    keyboardCoordinateSpace = v19->_keyboardCoordinateSpace;
    v19->_keyboardCoordinateSpace = 0;

    v19->_inputAccessoryViewFrame.origin = v34;
    v19->_inputAccessoryViewFrame.size = *v32;
    v19->_isKeyboardVisible = 0;
    v19->_isPencilInputExpected = 0;
    v19->_networkStatus = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel_handleKeyboardShow_ name:*MEMORY[0x1E69DDF78] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v19 selector:sel_handleKeyboardChange_ name:*MEMORY[0x1E69DDF68] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v19 selector:sel_handleKeyboardHide_ name:*MEMORY[0x1E69DE078] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v19 selector:sel_reachabilityChanged_ name:*MEMORY[0x1E69B6940] object:0];

    [objc_opt_class() addObserver:v19 forKeyPath:@"isPencilInputExpected" options:5 context:0];
    [(SWContainerViewController *)v19 updateReachability];
  }

  return v19;
}

- (void)dealloc
{
  [objc_opt_class() removeObserver:self forKeyPath:@"isPencilInputExpected"];
  v3.receiver = self;
  v3.super_class = SWContainerViewController;
  [(SWContainerViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = SWContainerViewController;
  [(SWContainerViewController *)&v14 viewDidLoad];
  view = [(SWContainerViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  [(SWContainerViewController *)self addChildViewController:webContentViewController];

  view2 = [(SWContainerViewController *)self view];
  webContentViewController2 = [(SWContainerViewController *)self webContentViewController];
  view3 = [webContentViewController2 view];
  [view2 addSubview:view3];

  webContentViewController3 = [(SWContainerViewController *)self webContentViewController];
  [webContentViewController3 didMoveToParentViewController:self];

  objc_initWeak(&location, self);
  interactionProvider = [(SWContainerViewController *)self interactionProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__SWContainerViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_1E84DB960;
  objc_copyWeak(&v12, &location);
  [interactionProvider onChange:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __40__SWContainerViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained view];
  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v3 type];

  [v4 setUserInteractionEnabled:{objc_msgSend(v5, "allowUserInteractionForInteractionType:", v6)}];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = SWContainerViewController;
  [(SWContainerViewController *)&v6 viewDidLayoutSubviews];
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  view = [webContentViewController view];
  view2 = [(SWContainerViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v11.receiver = self;
  v11.super_class = SWContainerViewController;
  [(SWContainerViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(SWContainerViewController *)self setIsTransitioning:1];
  [(SWContainerViewController *)self updateConfiguration];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__SWContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E84DB988;
  objc_copyWeak(&v9, &location);
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __80__SWContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsTransitioning:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 updateConfiguration];
}

- (void)prewarm
{
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  [webContentViewController prewarm];
}

- (void)webViewSetNeedsLayout
{
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  [webContentViewController webViewSetNeedsLayout];
}

- (NSURL)loadedURL
{
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  v3 = [webContentViewController URL];

  return v3;
}

- (void)loadURL:(id)l
{
  lCopy = l;
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  [webContentViewController loadURL:lCopy];
}

- (void)loadURL:(id)l cachePolicy:(unint64_t)policy
{
  lCopy = l;
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  [webContentViewController loadURL:lCopy cachePolicy:policy];
}

- (void)loadHTMLString:(id)string baseURL:(id)l
{
  lCopy = l;
  stringCopy = string;
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  [webContentViewController loadHTMLString:stringCopy baseURL:lCopy];
}

- (void)loadLocalDatastore:(id)datastore options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  datastoreCopy = datastore;
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  [webContentViewController loadLocalDatastore:datastoreCopy options:options completion:completionCopy];
}

- (void)setDeveloperSettings:(id)settings
{
  objc_storeStrong(&self->_developerSettings, settings);
  settingsCopy = settings;
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  allowRemoteInspection = [settingsCopy allowRemoteInspection];

  [webContentViewController setAllowsRemoteInspection:allowRemoteInspection];
}

- (SWScriptsManager)scriptsManager
{
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  scriptsManager = [webContentViewController scriptsManager];

  return scriptsManager;
}

- (void)setInputAccessoryView:(id)view
{
  viewCopy = view;
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  [webContentViewController setInputAccessoryView:viewCopy];
}

- (id)inputAccessoryView
{
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  inputAccessoryView = [webContentViewController inputAccessoryView];

  return inputAccessoryView;
}

- (void)setTextInputTraits:(id)traits
{
  traitsCopy = traits;
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  [webContentViewController setTextInputTraits:traitsCopy];
}

- (void)setShortcutsBarWithLeadingGroups:(id)groups trailingGroups:(id)trailingGroups
{
  trailingGroupsCopy = trailingGroups;
  groupsCopy = groups;
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  [webContentViewController setShortcutsBarWithLeadingGroups:groupsCopy trailingGroups:trailingGroupsCopy];
}

- (void)setConfiguration:(id)configuration
{
  v4 = [configuration copy];
  configuration = self->_configuration;
  self->_configuration = v4;

  [(SWContainerViewController *)self updateConfiguration];
}

- (void)updateConfiguration
{
  configuration = [(SWContainerViewController *)self configuration];

  if (configuration)
  {
    configuration2 = [(SWContainerViewController *)self configuration];
    v5 = [SWConfiguration configurationWithContainerConfiguration:configuration2];
    v27 = [v5 mutableCopy];

    v6 = [SWKeyboardConfiguration alloc];
    [(SWContainerViewController *)self convertedKeyboardFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(SWContainerViewController *)self convertedInputAccessoryViewFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    isSplit = [MEMORY[0x1E69DCBE0] isSplit];
    isFloating = [MEMORY[0x1E69DCBE0] isFloating];
    v25 = -[SWKeyboardConfiguration initWithKeyboardFrame:inputAccessoryViewFrame:isKeyboardSplit:isKeyboardFloating:isHardwareKeyboard:isKeyboardVisible:isPencilInputExpected:](v6, "initWithKeyboardFrame:inputAccessoryViewFrame:isKeyboardSplit:isKeyboardFloating:isHardwareKeyboard:isKeyboardVisible:isPencilInputExpected:", isSplit, isFloating, [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode], -[SWContainerViewController isKeyboardVisible](self, "isKeyboardVisible"), -[SWContainerViewController isPencilInputExpected](self, "isPencilInputExpected"), v8, v10, v12, v14, v16, v18, v20, v22);
    [v27 setKeyboardConfiguration:v25];
    [v27 setNetworkStatus:{-[SWContainerViewController networkStatus](self, "networkStatus")}];
    [v27 setIsTransitioning:{-[SWContainerViewController isTransitioning](self, "isTransitioning")}];
    configurationManager = [(SWContainerViewController *)self configurationManager];
    [configurationManager setConfiguration:v27];
  }
}

- (BOOL)focusShouldStartInputSession
{
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  focusShouldStartInputSession = [webContentViewController focusShouldStartInputSession];

  return focusShouldStartInputSession;
}

- (SWMessageHandlerManager)messageHandlerManager
{
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  messageHandlerManager = [webContentViewController messageHandlerManager];

  return messageHandlerManager;
}

- (id)accessibilityElements
{
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  accessibilityElements = [webContentViewController accessibilityElements];

  return accessibilityElements;
}

- (void)handleKeyboardChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  object = [changeCopy object];

  coordinateSpace = [object coordinateSpace];

  [(SWContainerViewController *)self setKeyboardFrame:v7, v9, v11, v13];
  [(SWContainerViewController *)self setKeyboardCoordinateSpace:coordinateSpace];
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  inputAccessoryView = [webContentViewController inputAccessoryView];

  if (inputAccessoryView && ([inputAccessoryView superview], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
  {
    coordinateSpace2 = [inputAccessoryView coordinateSpace];
    [inputAccessoryView bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    keyboardCoordinateSpace = [(SWContainerViewController *)self keyboardCoordinateSpace];
    [coordinateSpace2 convertRect:keyboardCoordinateSpace toCoordinateSpace:{v21, v23, v25, v27}];
    [(SWContainerViewController *)self setInputAccessoryViewFrame:?];
  }

  else
  {
    [(SWContainerViewController *)self setInputAccessoryViewFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  [(SWContainerViewController *)self updateConfiguration];
}

- (CGRect)convertedKeyboardFrame
{
  keyboardCoordinateSpace = [(SWContainerViewController *)self keyboardCoordinateSpace];
  if (keyboardCoordinateSpace && (v4 = keyboardCoordinateSpace, [(SWContainerViewController *)self keyboardFrame], IsNull = CGRectIsNull(v20), v4, !IsNull))
  {
    view = [(SWContainerViewController *)self view];
    keyboardCoordinateSpace2 = [(SWContainerViewController *)self keyboardCoordinateSpace];
    [(SWContainerViewController *)self keyboardFrame];
    [keyboardCoordinateSpace2 convertRect:view toCoordinateSpace:?];
    v6 = v12;
    v7 = v13;
    v8 = v14;
    v9 = v15;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
  }

  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)convertedInputAccessoryViewFrame
{
  keyboardCoordinateSpace = [(SWContainerViewController *)self keyboardCoordinateSpace];
  if (keyboardCoordinateSpace && (v4 = keyboardCoordinateSpace, [(SWContainerViewController *)self inputAccessoryViewFrame], IsEmpty = CGRectIsEmpty(v20), v4, !IsEmpty))
  {
    view = [(SWContainerViewController *)self view];
    keyboardCoordinateSpace2 = [(SWContainerViewController *)self keyboardCoordinateSpace];
    [(SWContainerViewController *)self inputAccessoryViewFrame];
    [keyboardCoordinateSpace2 convertRect:view toCoordinateSpace:?];
    v6 = v12;
    v7 = v13;
    v8 = v14;
    v9 = v15;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
  }

  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)handleKeyboardShow:(id)show
{
  [(SWContainerViewController *)self setIsKeyboardVisible:1];

  [(SWContainerViewController *)self updateConfiguration];
}

- (void)handleKeyboardHide:(id)hide
{
  [(SWContainerViewController *)self setIsKeyboardVisible:0];

  [(SWContainerViewController *)self updateConfiguration];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if ([path isEqualToString:@"isPencilInputExpected"] && objc_opt_class() == objectCopy)
  {
    -[SWContainerViewController setIsPencilInputExpected:](self, "setIsPencilInputExpected:", [MEMORY[0x1E69DCEC8] isPencilInputExpected]);
    [(SWContainerViewController *)self updateConfiguration];
  }
}

- (void)removeMenusForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  [webContentViewController removeMenusForIdentifiers:identifiersCopy];
}

- (void)setHiddenPocketEdges:(unint64_t)edges
{
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  [webContentViewController setHiddenPocketEdges:edges];
}

- (void)updateReachability
{
  mEMORY[0x1E69B6900] = [MEMORY[0x1E69B6900] sharedInstance];
  -[SWContainerViewController setNetworkStatus:](self, "setNetworkStatus:", [mEMORY[0x1E69B6900] currentReachabilityStatus]);
}

- (void)reachabilityChanged:(id)changed
{
  [(SWContainerViewController *)self updateReachability];

  [(SWContainerViewController *)self updateConfiguration];
}

- (void)addContentRuleList:(id)list identifier:(id)identifier
{
  identifierCopy = identifier;
  listCopy = list;
  webContentViewController = [(SWContainerViewController *)self webContentViewController];
  contentRuleManager = [webContentViewController contentRuleManager];
  [contentRuleManager addContentRuleList:listCopy identifier:identifierCopy];
}

- (CGRect)keyboardFrame
{
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inputAccessoryViewFrame
{
  x = self->_inputAccessoryViewFrame.origin.x;
  y = self->_inputAccessoryViewFrame.origin.y;
  width = self->_inputAccessoryViewFrame.size.width;
  height = self->_inputAccessoryViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end