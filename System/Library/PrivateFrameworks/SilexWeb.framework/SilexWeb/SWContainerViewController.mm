@interface SWContainerViewController
- (BOOL)focusShouldStartInputSession;
- (CGRect)convertedInputAccessoryViewFrame;
- (CGRect)convertedKeyboardFrame;
- (CGRect)inputAccessoryViewFrame;
- (CGRect)keyboardFrame;
- (NSURL)loadedURL;
- (SWContainerViewController)initWithWebContentViewController:(id)a3 actionProvider:(id)a4 interactionProvider:(id)a5 errorProvider:(id)a6 failureProvider:(id)a7 navigationBarConfigurationProvider:(id)a8 configurationManager:(id)a9 presentationManager:(id)a10 scaleManager:(id)a11 snapshotManager:(id)a12 preferredSizeManager:(id)a13;
- (SWMessageHandlerManager)messageHandlerManager;
- (SWScriptsManager)scriptsManager;
- (id)accessibilityElements;
- (id)inputAccessoryView;
- (void)addContentRuleList:(id)a3 identifier:(id)a4;
- (void)dealloc;
- (void)handleKeyboardChange:(id)a3;
- (void)handleKeyboardHide:(id)a3;
- (void)handleKeyboardShow:(id)a3;
- (void)loadHTMLString:(id)a3 baseURL:(id)a4;
- (void)loadLocalDatastore:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)loadURL:(id)a3;
- (void)loadURL:(id)a3 cachePolicy:(unint64_t)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prewarm;
- (void)reachabilityChanged:(id)a3;
- (void)removeMenusForIdentifiers:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setDeveloperSettings:(id)a3;
- (void)setHiddenPocketEdges:(unint64_t)a3;
- (void)setInputAccessoryView:(id)a3;
- (void)setShortcutsBarWithLeadingGroups:(id)a3 trailingGroups:(id)a4;
- (void)setTextInputTraits:(id)a3;
- (void)updateConfiguration;
- (void)updateReachability;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)webViewSetNeedsLayout;
@end

@implementation SWContainerViewController

- (SWContainerViewController)initWithWebContentViewController:(id)a3 actionProvider:(id)a4 interactionProvider:(id)a5 errorProvider:(id)a6 failureProvider:(id)a7 navigationBarConfigurationProvider:(id)a8 configurationManager:(id)a9 presentationManager:(id)a10 scaleManager:(id)a11 snapshotManager:(id)a12 preferredSizeManager:(id)a13
{
  v45 = a3;
  v44 = a4;
  v31 = a5;
  v43 = a5;
  v42 = a6;
  v41 = a7;
  v40 = a8;
  v39 = a9;
  v38 = a10;
  v37 = a11;
  v36 = a12;
  v35 = a13;
  v46.receiver = self;
  v46.super_class = SWContainerViewController;
  v18 = [(SWContainerViewController *)&v46 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_webContentViewController, a3);
    objc_storeStrong(&v19->_actionProvider, a4);
    objc_storeStrong(&v19->_interactionProvider, v31);
    objc_storeStrong(&v19->_errorProvider, a6);
    objc_storeStrong(&v19->_failureProvider, a7);
    objc_storeStrong(&v19->_navigationBarConfigurationProvider, a8);
    objc_storeStrong(&v19->_configurationManager, a9);
    objc_storeStrong(&v19->_presentationManager, a10);
    v20 = [[SWDeveloperSettings alloc] initWithAllowRemoteInspection:NFInternalBuild()];
    developerSettings = v19->_developerSettings;
    v19->_developerSettings = v20;

    objc_storeStrong(&v19->_scaleManager, a11);
    objc_storeStrong(&v19->_snapshotManager, a12);
    objc_storeStrong(&v19->_preferredSizeManager, a13);
    v22 = [v45 URLSchemeHandlerManager];
    URLSchemeHandlerManager = v19->_URLSchemeHandlerManager;
    v19->_URLSchemeHandlerManager = v22;

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
    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 addObserver:v19 selector:sel_handleKeyboardShow_ name:*MEMORY[0x1E69DDF78] object:0];

    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    [v26 addObserver:v19 selector:sel_handleKeyboardChange_ name:*MEMORY[0x1E69DDF68] object:0];

    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 addObserver:v19 selector:sel_handleKeyboardHide_ name:*MEMORY[0x1E69DE078] object:0];

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v19 selector:sel_reachabilityChanged_ name:*MEMORY[0x1E69B6940] object:0];

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
  v3 = [(SWContainerViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [(SWContainerViewController *)self webContentViewController];
  [(SWContainerViewController *)self addChildViewController:v5];

  v6 = [(SWContainerViewController *)self view];
  v7 = [(SWContainerViewController *)self webContentViewController];
  v8 = [v7 view];
  [v6 addSubview:v8];

  v9 = [(SWContainerViewController *)self webContentViewController];
  [v9 didMoveToParentViewController:self];

  objc_initWeak(&location, self);
  v10 = [(SWContainerViewController *)self interactionProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__SWContainerViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_1E84DB960;
  objc_copyWeak(&v12, &location);
  [v10 onChange:v11];

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
  v3 = [(SWContainerViewController *)self webContentViewController];
  v4 = [v3 view];
  v5 = [(SWContainerViewController *)self view];
  [v5 bounds];
  [v4 setFrame:?];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SWContainerViewController;
  [(SWContainerViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(SWContainerViewController *)self setIsTransitioning:1];
  [(SWContainerViewController *)self updateConfiguration];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__SWContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E84DB988;
  objc_copyWeak(&v9, &location);
  [v7 animateAlongsideTransition:0 completion:v8];
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
  v2 = [(SWContainerViewController *)self webContentViewController];
  [v2 prewarm];
}

- (void)webViewSetNeedsLayout
{
  v2 = [(SWContainerViewController *)self webContentViewController];
  [v2 webViewSetNeedsLayout];
}

- (NSURL)loadedURL
{
  v2 = [(SWContainerViewController *)self webContentViewController];
  v3 = [v2 URL];

  return v3;
}

- (void)loadURL:(id)a3
{
  v4 = a3;
  v5 = [(SWContainerViewController *)self webContentViewController];
  [v5 loadURL:v4];
}

- (void)loadURL:(id)a3 cachePolicy:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SWContainerViewController *)self webContentViewController];
  [v7 loadURL:v6 cachePolicy:a4];
}

- (void)loadHTMLString:(id)a3 baseURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SWContainerViewController *)self webContentViewController];
  [v8 loadHTMLString:v7 baseURL:v6];
}

- (void)loadLocalDatastore:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SWContainerViewController *)self webContentViewController];
  [v10 loadLocalDatastore:v9 options:a4 completion:v8];
}

- (void)setDeveloperSettings:(id)a3
{
  objc_storeStrong(&self->_developerSettings, a3);
  v5 = a3;
  v7 = [(SWContainerViewController *)self webContentViewController];
  v6 = [v5 allowRemoteInspection];

  [v7 setAllowsRemoteInspection:v6];
}

- (SWScriptsManager)scriptsManager
{
  v2 = [(SWContainerViewController *)self webContentViewController];
  v3 = [v2 scriptsManager];

  return v3;
}

- (void)setInputAccessoryView:(id)a3
{
  v4 = a3;
  v5 = [(SWContainerViewController *)self webContentViewController];
  [v5 setInputAccessoryView:v4];
}

- (id)inputAccessoryView
{
  v2 = [(SWContainerViewController *)self webContentViewController];
  v3 = [v2 inputAccessoryView];

  return v3;
}

- (void)setTextInputTraits:(id)a3
{
  v4 = a3;
  v5 = [(SWContainerViewController *)self webContentViewController];
  [v5 setTextInputTraits:v4];
}

- (void)setShortcutsBarWithLeadingGroups:(id)a3 trailingGroups:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SWContainerViewController *)self webContentViewController];
  [v8 setShortcutsBarWithLeadingGroups:v7 trailingGroups:v6];
}

- (void)setConfiguration:(id)a3
{
  v4 = [a3 copy];
  configuration = self->_configuration;
  self->_configuration = v4;

  [(SWContainerViewController *)self updateConfiguration];
}

- (void)updateConfiguration
{
  v3 = [(SWContainerViewController *)self configuration];

  if (v3)
  {
    v4 = [(SWContainerViewController *)self configuration];
    v5 = [SWConfiguration configurationWithContainerConfiguration:v4];
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
    v23 = [MEMORY[0x1E69DCBE0] isSplit];
    v24 = [MEMORY[0x1E69DCBE0] isFloating];
    v25 = -[SWKeyboardConfiguration initWithKeyboardFrame:inputAccessoryViewFrame:isKeyboardSplit:isKeyboardFloating:isHardwareKeyboard:isKeyboardVisible:isPencilInputExpected:](v6, "initWithKeyboardFrame:inputAccessoryViewFrame:isKeyboardSplit:isKeyboardFloating:isHardwareKeyboard:isKeyboardVisible:isPencilInputExpected:", v23, v24, [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode], -[SWContainerViewController isKeyboardVisible](self, "isKeyboardVisible"), -[SWContainerViewController isPencilInputExpected](self, "isPencilInputExpected"), v8, v10, v12, v14, v16, v18, v20, v22);
    [v27 setKeyboardConfiguration:v25];
    [v27 setNetworkStatus:{-[SWContainerViewController networkStatus](self, "networkStatus")}];
    [v27 setIsTransitioning:{-[SWContainerViewController isTransitioning](self, "isTransitioning")}];
    v26 = [(SWContainerViewController *)self configurationManager];
    [v26 setConfiguration:v27];
  }
}

- (BOOL)focusShouldStartInputSession
{
  v2 = [(SWContainerViewController *)self webContentViewController];
  v3 = [v2 focusShouldStartInputSession];

  return v3;
}

- (SWMessageHandlerManager)messageHandlerManager
{
  v2 = [(SWContainerViewController *)self webContentViewController];
  v3 = [v2 messageHandlerManager];

  return v3;
}

- (id)accessibilityElements
{
  v2 = [(SWContainerViewController *)self webContentViewController];
  v3 = [v2 accessibilityElements];

  return v3;
}

- (void)handleKeyboardChange:(id)a3
{
  v4 = a3;
  v29 = [v4 userInfo];
  v5 = [v29 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v4 object];

  v15 = [v14 coordinateSpace];

  [(SWContainerViewController *)self setKeyboardFrame:v7, v9, v11, v13];
  [(SWContainerViewController *)self setKeyboardCoordinateSpace:v15];
  v16 = [(SWContainerViewController *)self webContentViewController];
  v17 = [v16 inputAccessoryView];

  if (v17 && ([v17 superview], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
  {
    v19 = [v17 coordinateSpace];
    [v17 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [(SWContainerViewController *)self keyboardCoordinateSpace];
    [v19 convertRect:v28 toCoordinateSpace:{v21, v23, v25, v27}];
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
  v3 = [(SWContainerViewController *)self keyboardCoordinateSpace];
  if (v3 && (v4 = v3, [(SWContainerViewController *)self keyboardFrame], IsNull = CGRectIsNull(v20), v4, !IsNull))
  {
    v10 = [(SWContainerViewController *)self view];
    v11 = [(SWContainerViewController *)self keyboardCoordinateSpace];
    [(SWContainerViewController *)self keyboardFrame];
    [v11 convertRect:v10 toCoordinateSpace:?];
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
  v3 = [(SWContainerViewController *)self keyboardCoordinateSpace];
  if (v3 && (v4 = v3, [(SWContainerViewController *)self inputAccessoryViewFrame], IsEmpty = CGRectIsEmpty(v20), v4, !IsEmpty))
  {
    v10 = [(SWContainerViewController *)self view];
    v11 = [(SWContainerViewController *)self keyboardCoordinateSpace];
    [(SWContainerViewController *)self inputAccessoryViewFrame];
    [v11 convertRect:v10 toCoordinateSpace:?];
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

- (void)handleKeyboardShow:(id)a3
{
  [(SWContainerViewController *)self setIsKeyboardVisible:1];

  [(SWContainerViewController *)self updateConfiguration];
}

- (void)handleKeyboardHide:(id)a3
{
  [(SWContainerViewController *)self setIsKeyboardVisible:0];

  [(SWContainerViewController *)self updateConfiguration];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a4;
  if ([a3 isEqualToString:@"isPencilInputExpected"] && objc_opt_class() == v8)
  {
    -[SWContainerViewController setIsPencilInputExpected:](self, "setIsPencilInputExpected:", [MEMORY[0x1E69DCEC8] isPencilInputExpected]);
    [(SWContainerViewController *)self updateConfiguration];
  }
}

- (void)removeMenusForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(SWContainerViewController *)self webContentViewController];
  [v5 removeMenusForIdentifiers:v4];
}

- (void)setHiddenPocketEdges:(unint64_t)a3
{
  v4 = [(SWContainerViewController *)self webContentViewController];
  [v4 setHiddenPocketEdges:a3];
}

- (void)updateReachability
{
  v3 = [MEMORY[0x1E69B6900] sharedInstance];
  -[SWContainerViewController setNetworkStatus:](self, "setNetworkStatus:", [v3 currentReachabilityStatus]);
}

- (void)reachabilityChanged:(id)a3
{
  [(SWContainerViewController *)self updateReachability];

  [(SWContainerViewController *)self updateConfiguration];
}

- (void)addContentRuleList:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SWContainerViewController *)self webContentViewController];
  v8 = [v9 contentRuleManager];
  [v8 addContentRuleList:v7 identifier:v6];
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