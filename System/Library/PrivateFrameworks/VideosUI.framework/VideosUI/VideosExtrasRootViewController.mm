@interface VideosExtrasRootViewController
+ (id)currentController;
- (BOOL)_areExtrasVisible;
- (BOOL)_setMainDocumentWithViewController:(id)a3;
- (BOOL)shouldAutorotate;
- (BOOL)shouldExtrasBeVisibleForViewSize:(CGSize)a3;
- (CGSize)initialPresentationSize;
- (CGSize)screenSize;
- (UIView)mainMenuBar;
- (VideosExtrasContext)context;
- (VideosExtrasRootViewController)initWithContext:(id)a3;
- (VideosExtrasRootViewControllerDelegate)delegate;
- (id)_createDataStorageForIdentifier:(id)a3;
- (id)_extrasMenuBarViewForElements:(id)a3;
- (id)appJSURL;
- (id)appLaunchParams;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)detectMainDocument:(id)a3;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)navigationController:(id)a3 interactionControllerForAnimationController:(id)a4;
- (id)systemLanguage;
- (id)viewElementRegistry;
- (unint64_t)supportedInterfaceOrientations;
- (void)_adjustExtrasVisibilityForViewSize:(CGSize)a3;
- (void)_attemptRestart;
- (void)_backButtonPressed:(id)a3;
- (void)_extrasMenuItemSelected:(id)a3;
- (void)_playbackWillEndNotification:(id)a3;
- (void)_setNavigationController:(id)a3;
- (void)_setUpForApplication;
- (void)_showExtrasBar:(BOOL)a3;
- (void)_stopOldContextIfNeeded;
- (void)appContext:(id)a3 didFailWithError:(id)a4;
- (void)appContext:(id)a3 evaluateAppJavaScriptInContext:(id)a4;
- (void)dealloc;
- (void)popToFeatureOrMain;
- (void)setMainTemplateViewController:(id)a3;
- (void)showExtrasMenuBarInFrame:(CGRect)a3;
- (void)start;
- (void)updateMenuButtonForSelectionAtIndex:(unint64_t)a3 deselectedIndex:(unint64_t)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation VideosExtrasRootViewController

+ (id)currentController
{
  WeakRetained = objc_loadWeakRetained(&__currentController);

  return WeakRetained;
}

- (void)_setUpForApplication
{
  v21[1] = *MEMORY[0x1E69E9840];
  [(VideosExtrasRootViewController *)self _stopOldContextIfNeeded];
  v3 = [(VideosExtrasRootViewController *)self _createDataStorageForIdentifier:@"localStorage"];
  localStorage = self->_localStorage;
  self->_localStorage = v3;

  v5 = [(VideosExtrasRootViewController *)self _createDataStorageForIdentifier:@"vendorStorage"];
  vendorStorage = self->_vendorStorage;
  self->_vendorStorage = v5;

  v7 = [MEMORY[0x1E69A87F8] sharedUserDefaults];
  userDefaultsStorage = self->_userDefaultsStorage;
  self->_userDefaultsStorage = v7;

  v9 = [VideosExtrasNavigationController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v11 = [(VideosExtrasNavigationController *)v9 initWithContext:WeakRetained];

  [(VideosExtrasNavigationController *)v11 setShowsBuiltInNavControls:[(VideosExtrasRootViewController *)self showsBuiltInNavigationControls]];
  v12 = objc_loadWeakRetained(&self->_context);
  v13 = [v12 featurePlaybackViewController];

  if (v13)
  {
    v14 = [VideosExtrasFeatureContainerViewController alloc];
    v15 = objc_loadWeakRetained(&self->_context);
    v16 = [(VideosExtrasFeatureContainerViewController *)v14 initWithContext:v15];
    featureContainer = self->_featureContainer;
    self->_featureContainer = v16;

    [(VideosExtrasFeatureContainerViewController *)self->_featureContainer setVideoPlaybackViewController:v13];
    v21[0] = self->_featureContainer;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [(VideosExtrasNavigationController *)v11 setViewControllers:v18];
  }

  else
  {
    [(VideosExtrasNavigationController *)v11 setClearsStackOnNextPush];
    v18 = objc_alloc_init(MEMORY[0x1E69DD258]);
    [(VideosExtrasNavigationController *)v11 pushViewController:v18 animated:0];
  }

  [(VideosExtrasRootViewController *)self _setNavigationController:v11];
  v19 = [objc_alloc(MEMORY[0x1E69A87E8]) initWithApplication:self mode:0 delegate:self];
  applicationContext = self->_applicationContext;
  self->_applicationContext = v19;
}

- (VideosExtrasRootViewController)initWithContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VideosExtrasRootViewController;
  v5 = [(VideosExtrasRootViewController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, v4);
    v7 = objc_alloc_init(VideosExtrasArtworkDataSource);
    artworkDataSource = v6->_artworkDataSource;
    v6->_artworkDataSource = v7;

    v6->_showsMenuBar = 1;
    v6->_showsBuiltInNavigationControls = 1;
    objc_storeWeak(&__currentController, v6);
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v6 selector:sel__playbackWillEndNotification_ name:@"VideosAVPlayerWillEndPlayback" object:0];
  }

  return v6;
}

- (void)dealloc
{
  [(VideosExtrasRootViewController *)self _stopOldContextIfNeeded];
  [(VideosExtrasNavigationController *)self->_navigationController setDelegate:0];
  v3.receiver = self;
  v3.super_class = VideosExtrasRootViewController;
  [(VideosExtrasRootViewController *)&v3 dealloc];
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  v2 = [(VideosExtrasRootViewController *)self childViewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (void)_stopOldContextIfNeeded
{
  [(IKAppContext *)self->_applicationContext stop];
  applicationContext = self->_applicationContext;
  self->_applicationContext = 0;
}

- (void)start
{
  [(VideosExtrasRootViewController *)self _setUpForApplication];
  applicationContext = self->_applicationContext;

  [(IKAppContext *)applicationContext start];
}

- (void)popToFeatureOrMain
{
  v10[1] = *MEMORY[0x1E69E9840];
  navigationController = self->_navigationController;
  if (self->_featureContainer)
  {
    v4 = [(VideosExtrasNavigationController *)self->_navigationController topViewController];
    featureContainer = self->_featureContainer;

    if (v4 == featureContainer)
    {
      return;
    }

    v6 = self->_navigationController;
    v10[0] = self->_featureContainer;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(VideosExtrasNavigationController *)v6 setViewControllers:v7];

    WeakRetained = objc_loadWeakRetained(&self->_context);
    [WeakRetained extrasRequestReloadWithContext:0];
  }

  else
  {
    mainTemplateViewController = self->_mainTemplateViewController;
    WeakRetained = [MEMORY[0x1E695DEC8] arrayWithObjects:&mainTemplateViewController count:1];
    [(VideosExtrasNavigationController *)navigationController setViewControllers:WeakRetained];
  }
}

- (void)updateMenuButtonForSelectionAtIndex:(unint64_t)a3 deselectedIndex:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(VideosExtrasRootViewController *)self extrasMenuButtonsStackView];
  v7 = [v6 arrangedSubviews];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v12 tag] == a3)
          {
            v13 = MEMORY[0x1E69DC888];
            v14 = 1.0;
            v15 = 0.957;
            v16 = 0.969;
            v17 = 0.992;
          }

          else
          {
            if ([v12 tag] != a4)
            {
              goto LABEL_12;
            }

            v13 = MEMORY[0x1E69DC888];
            v14 = 1.0;
            v15 = 0.545;
            v16 = 0.565;
            v17 = 0.573;
          }

          v18 = [v13 colorWithRed:v15 green:v16 blue:v17 alpha:v14];
          [v12 setTitleColor:v18 forState:0];
        }

LABEL_12:
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)showExtrasMenuBarInFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v26[4] = *MEMORY[0x1E69E9840];
  v8 = [(VideosExtrasRootViewController *)self extrasMenuBarView];
  v9 = v8;
  if (v8)
  {
    [v8 setFrame:{x, y, width, height}];
    v10 = [(VideosExtrasRootViewController *)self view];
    v11 = [(VideosExtrasRootViewController *)self extrasMenuBarView];
    [v10 addSubview:v11];

    v21 = MEMORY[0x1E696ACD8];
    v24 = [v9 centerXAnchor];
    v25 = [(VideosExtrasRootViewController *)self view];
    v23 = [v25 centerXAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v12 = [v9 widthAnchor];
    v13 = [v12 constraintEqualToConstant:width];
    v26[1] = v13;
    v14 = [v9 heightAnchor];
    v15 = [v14 constraintEqualToConstant:height];
    v26[2] = v15;
    v16 = [v9 bottomAnchor];
    v17 = [(VideosExtrasRootViewController *)self view];
    v18 = [v17 topAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 constant:y + height];
    v26[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v21 activateConstraints:v20];
  }
}

- (id)appJSURL
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v3 = [WeakRetained javascriptURL];

  return v3;
}

- (id)appLaunchParams
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = @"movieInfo";
  v13[0] = @"adamId";
  v3 = MEMORY[0x1E696AD98];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v5 = [v3 numberWithLongLong:{objc_msgSend(WeakRetained, "storeID")}];
  v13[1] = @"actionParams";
  v14[0] = v5;
  v6 = objc_loadWeakRetained(&self->_context);
  v7 = [v6 buyParameters];
  v8 = v7;
  v9 = &stru_1F5DB25C0;
  if (v7)
  {
    v9 = v7;
  }

  v14[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  return v11;
}

- (id)viewElementRegistry
{
  if (viewElementRegistry_onceToken != -1)
  {
    [VideosExtrasRootViewController viewElementRegistry];
  }

  v3 = viewElementRegistry_viewElementRegistry;

  return v3;
}

uint64_t __53__VideosExtrasRootViewController_viewElementRegistry__block_invoke()
{
  [MEMORY[0x1E69A8958] registerStyle:@"extras-itml-section-content-type" withType:3 inherited:1];
  v0 = objc_alloc_init(MEMORY[0x1E69A8950]);
  v1 = viewElementRegistry_viewElementRegistry;
  viewElementRegistry_viewElementRegistry = v0;

  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8728] elementType:82];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8600] elementType:4];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8608] elementType:5];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8610] elementType:6];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8618] elementType:7];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8620] elementType:8];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8628] elementType:12];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8630] elementType:15];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8638] elementType:19];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8640] elementType:20];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8650] elementType:22];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8648] elementType:21];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8658] elementType:23];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8660] elementType:24];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8688] elementType:31];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8690] elementType:33];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A86A0] elementType:43];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A86A8] elementType:45];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A86B0] elementType:47];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A86B8] elementType:48];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8670] elementType:49];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8698] elementType:49];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A86C0] elementType:49];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A86F0] elementType:49];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A86C8] elementType:62];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A86D0] elementType:63];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A86D8] elementType:64];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A86E0] elementType:65];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A86E8] elementType:66];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A86F8] elementType:68];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8700] elementType:70];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8708] elementType:71];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8710] elementType:72];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8720] elementType:80];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8730] elementType:87];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8738] elementType:95];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8748] elementType:108];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8750] elementType:118];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8758] elementType:119];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8760] elementType:122];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8768] elementType:132];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8668] elementType:138];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8678] elementType:138];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8680] elementType:138];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8770] elementType:138];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8778] elementType:138];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8780] elementType:139];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8798] elementType:138];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8788] elementType:142];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8790] elementType:143];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A87A0] elementType:152];
  [viewElementRegistry_viewElementRegistry registerClass:objc_opt_class() forElementName:*MEMORY[0x1E69A8740] elementType:100];
  v2 = viewElementRegistry_viewElementRegistry;
  v3 = objc_opt_class();
  v4 = *MEMORY[0x1E69A8718];

  return [v2 registerClass:v3 forElementName:v4 elementType:74];
}

- (void)appContext:(id)a3 evaluateAppJavaScriptInContext:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(IKJSITunesStore *)[VideosExtrasJSITunesStore alloc] initWithAppContext:v6];

  [v9 setObject:v7 forKeyedSubscript:@"itms"];
  [(VideosExtrasJSITunesStore *)v7 setFormPresentationViewController:self];
  v8 = [v9 evaluateScript:@"TabBar = { selectedTab: { rootURL: '' } }"];
}

- (void)_attemptRestart
{
  self->_didAttemptRestartAfterAppContextFailure = 1;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__VideosExtrasRootViewController__attemptRestart__block_invoke;
  v2[3] = &unk_1E872F730;
  v2[4] = self;
  [VUIAuthenticationManager requestAuthenticationAlwaysPrompt:0 withCompletionHandler:v2];
}

void __49__VideosExtrasRootViewController__attemptRestart__block_invoke(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    [v5 start];
  }

  else
  {
    v6 = [v5 context];
    [v6 failWithError:v7];
  }
}

- (void)appContext:(id)a3 didFailWithError:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = v6;
  if (appContext_didFailWithError__onceToken == -1)
  {
    if (!v6)
    {
LABEL_10:
      v9 = [(VideosExtrasRootViewController *)self context];
      [v9 failWithError:v7];
      goto LABEL_11;
    }
  }

  else
  {
    [VideosExtrasRootViewController appContext:didFailWithError:];
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v8 = [v7 userInfo];
  v9 = v8;
  if (!v8 || (v10 = *MEMORY[0x1E69A87D8], [v8 objectForKeyedSubscript:*MEMORY[0x1E69A87D8]], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {

    goto LABEL_10;
  }

  if (appContext_didFailWithError____shouldShowHTTPErrors == 1)
  {
    v12 = [v9 objectForKeyedSubscript:v10];
    v13 = [v12 integerValue];

    if (v13 == 403 && !self->_didAttemptRestartAfterAppContextFailure)
    {
      [(VideosExtrasRootViewController *)self _attemptRestart];
    }
  }

LABEL_11:
}

uint64_t __62__VideosExtrasRootViewController_appContext_didFailWithError___block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"ExtrasShouldShowHTTPErrors", @"com.apple.videos", 0);
  appContext_didFailWithError____shouldShowHTTPErrors = result != 0;
  return result;
}

- (CGSize)screenSize
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)systemLanguage
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 arrayForKey:@"AppleLanguages"];

  v4 = [v3 firstObject];

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v23.receiver = self;
  v23.super_class = VideosExtrasRootViewController;
  [(VideosExtrasRootViewController *)&v23 viewWillAppear:a3];
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 delegate];
  v6 = [v5 window];

  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E69DC938] currentDevice];
  v12 = [v11 userInterfaceIdiom];
  v13 = *MEMORY[0x1E695F060];
  v14 = *(MEMORY[0x1E695F060] + 8);
  if (!v12 || (v8 == v13 ? (v15 = v10 == v14) : (v15 = 0), v15))
  {
    [(VideosExtrasRootViewController *)self initialPresentationSize];
    v17 = v16;
    v19 = v18;

    if (v17 != v13 || v19 != v14)
    {
      [(VideosExtrasRootViewController *)self initialPresentationSize];
      v8 = v21;
      v10 = v22;
    }
  }

  else
  {
  }

  [(VideosExtrasRootViewController *)self _adjustExtrasVisibilityForViewSize:v8, v10];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = VideosExtrasRootViewController;
  [(VideosExtrasRootViewController *)&v7 viewDidLoad];
  v3 = [(VideosExtrasRootViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setBackgroundColor:v4];

  v5 = [(VideosExtrasRootViewController *)self view];
  v6 = [MEMORY[0x1E69DC888] colorWithRed:0.109803922 green:0.733333333 blue:1.0 alpha:1.0];
  [v5 setTintColor:v6];
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = VideosExtrasRootViewController;
  [(VideosExtrasRootViewController *)&v15 viewDidLayoutSubviews];
  v3 = [(VideosExtrasRootViewController *)self extrasMenuButtonsStackView];
  [v3 frame];
  v5 = v4;

  v6 = [(VideosExtrasRootViewController *)self backButton];
  [v6 frame];
  v8 = v7;

  [(UIView *)self->_extrasMenuBarView frame];
  v9 = v8 + 40.0 + 14.0;
  v11 = v10 + v9 * -2.0;
  v12 = fmax(v9 + v11 - v5, 14.0);
  if (v5 <= v11)
  {
    v13 = v8 + 40.0 + 14.0;
  }

  else
  {
    v13 = v12;
  }

  v14 = [(VideosExtrasRootViewController *)self extrasScrollViewLeadingConstraint];
  [v14 setConstant:v13];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  v6 = [(VideosExtrasRootViewController *)self presentedViewController];
  if (v6)
  {
    v5 = 24;
  }

  else
  {
    v5 = 26;
  }

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v25[1] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = VideosExtrasRootViewController;
  [(VideosExtrasRootViewController *)&v24 viewWillTransitionToSize:a4 withTransitionCoordinator:?];
  if (![(VideosExtrasRootViewController *)self showsMenuBar])
  {
    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  if ([v7 applicationState] != 2)
  {

    goto LABEL_7;
  }

  v8 = [MEMORY[0x1E69DC938] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if ((v9 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
LABEL_7:
    [(VideosExtrasRootViewController *)self _adjustExtrasVisibilityForViewSize:width, height];
    v11 = [(VideosExtrasMainTemplateViewController *)self->_mainTemplateViewController view];
    [v11 setFrame:{0.0, 0.0, width, height}];

    [(VideosExtrasMainTemplateViewController *)self->_mainTemplateViewController _prepareLayout];
    return;
  }

  v10 = [(VideosExtrasRootViewController *)self presentedViewController];
  if (!v10)
  {
    v12 = [(VideosExtrasRootViewController *)self shouldExtrasBeVisibleForViewSize:width, height];
    if (v12 != [(VideosExtrasRootViewController *)self _areExtrasVisible])
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __85__VideosExtrasRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
      v22[3] = &unk_1E872ECA0;
      v22[4] = self;
      v23 = v12;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v22];
    }

    if (v12)
    {
      v13 = [(VideosExtrasRootViewController *)self lastSelectedSnapshotViewControllers];

      if (v13)
      {
        navigationController = self->_navigationController;
        v15 = [(VideosExtrasRootViewController *)self lastSelectedSnapshotViewControllers];
        [(VideosExtrasNavigationController *)navigationController setViewControllers:v15];

        [(VideosExtrasRootViewController *)self setLastSelectedSnapshotViewControllers:0];
      }
    }

    else
    {
      v16 = [(VideosExtrasNavigationController *)self->_navigationController topViewController];
      featureContainer = self->_featureContainer;

      if (v16 != featureContainer)
      {
        v18 = [(VideosExtrasNavigationController *)self->_navigationController viewControllers];
        v19 = [v18 copy];
        [(VideosExtrasRootViewController *)self setLastSelectedSnapshotViewControllers:v19];

        v20 = self->_navigationController;
        v25[0] = self->_featureContainer;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
        [(VideosExtrasNavigationController *)v20 setViewControllers:v21];
      }
    }
  }
}

- (BOOL)shouldAutorotate
{
  v2 = [(VideosExtrasRootViewController *)self presentedViewController];
  v3 = v2 == 0;

  return v3;
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v8 = a5;
  v9 = a6;
  if (![v8 conformsToProtocol:&unk_1F5F0DBB0] || (objc_msgSend(v8, "animationControllerForNavigationOperation:fromViewController:toViewController:", a4, v8, v9), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([v9 conformsToProtocol:&unk_1F5F0DBB0])
    {
      v10 = [v9 animationControllerForNavigationOperation:a4 fromViewController:v8 toViewController:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)navigationController:(id)a3 interactionControllerForAnimationController:(id)a4
{
  v4 = a4;
  if ([v4 conformsToProtocol:&unk_1F5EADDC8] && objc_msgSend(v4, "conformsToProtocol:", &unk_1F5EADEA8) && objc_msgSend(v4, "isInteractive"))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_createDataStorageForIdentifier:(id)a3
{
  v4 = a3;
  v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = [(VideosExtrasRootViewController *)self appIdentifier];
    v8 = [v7 stringByAppendingFormat:@".%@", v4];

    v9 = objc_alloc(MEMORY[0x1E695DEC8]);
    v10 = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [v9 initWithObjects:{v6, v11, v8, 0}];

    v13 = [MEMORY[0x1E696AEC0] pathWithComponents:v12];
    v14 = [v13 stringByAppendingPathExtension:@"plist"];

    v15 = [objc_alloc(MEMORY[0x1E69A87F0]) initWithFilePath:v14 identifier:v8];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_setNavigationController:(id)a3
{
  v5 = a3;
  navigationController = self->_navigationController;
  if (navigationController != v5)
  {
    v10 = v5;
    if (navigationController)
    {
      [(VideosExtrasNavigationController *)navigationController willMoveToParentViewController:0];
      v7 = [(VideosExtrasNavigationController *)self->_navigationController view];
      [v7 removeFromSuperview];

      [(VideosExtrasNavigationController *)self->_navigationController removeFromParentViewController];
      [(VideosExtrasNavigationController *)self->_navigationController setDelegate:0];
    }

    objc_storeStrong(&self->_navigationController, a3);
    [(VideosExtrasNavigationController *)v10 setDelegate:self];
    v8 = [(VideosExtrasRootViewController *)self view];
    v9 = [(VideosExtrasNavigationController *)v10 view];
    [v8 bounds];
    [v9 setFrame:?];
    [(VideosExtrasRootViewController *)self addChildViewController:v10];
    [v8 addSubview:v9];
    [(VideosExtrasNavigationController *)v10 didMoveToParentViewController:self];

    v5 = v10;
  }
}

- (id)_extrasMenuBarViewForElements:(id)a3
{
  v4 = a3;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v62[3] = 0;
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69585B8]);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_alloc_init(MEMORY[0x1E69DC738]);
    v7 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v8 = [v7 localizedStringForKey:@"EXTRAS_BACK_BUTTON_TITLE" value:0 table:@"VideosExtras"];
    [v6 setTitle:v8 forState:0];

    v9 = [v6 titleLabel];
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
    [v9 setFont:v10];

    v11 = [MEMORY[0x1E69DC888] darkGrayColor];
    [v6 setBackgroundColor:v11];

    [v6 setContentEdgeInsets:{2.0, 4.0, 2.0, 4.0}];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v6 layer];
    [v12 setCornerRadius:4.0];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 addTarget:self action:sel__backButtonPressed_ forControlEvents:64];
    LODWORD(v13) = 1148846080;
    [v6 setContentCompressionResistancePriority:0 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [v6 setContentHuggingPriority:0 forAxis:v14];
    [v5 addSubview:v6];
    [(VideosExtrasRootViewController *)self setBackButton:v6];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __64__VideosExtrasRootViewController__extrasMenuBarViewForElements___block_invoke;
    v59[3] = &unk_1E8733CF0;
    v59[4] = self;
    v61 = v62;
    v58 = v15;
    v60 = v58;
    [v4 enumerateObjectsUsingBlock:v59];
    v16 = [v6 trailingAnchor];
    v17 = [v5 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:-14.0];
    [v18 setActive:1];

    v19 = [v6 centerYAnchor];
    v20 = [v5 centerYAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    [v22 setShowsHorizontalScrollIndicator:0];
    [v22 setBounces:1];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v22];
    v23 = [v22 leadingAnchor];
    v24 = [v5 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:14.0];

    LODWORD(v26) = 1144750080;
    [v25 setPriority:v26];
    [v25 setActive:1];
    [(VideosExtrasRootViewController *)self setExtrasScrollViewLeadingConstraint:v25];
    v27 = [v22 centerYAnchor];
    v28 = [v5 centerYAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [v29 setActive:1];

    v30 = [v22 topAnchor];
    v31 = [v5 topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    [v32 setActive:1];

    v33 = [v22 trailingAnchor];
    v34 = [v6 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:-40.0];
    [v35 setActive:1];

    v36 = [v22 bottomAnchor];
    v37 = [v5 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [v38 setActive:1];

    v39 = [v22 centerXAnchor];
    v40 = [v5 centerXAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    LODWORD(v42) = 1132068864;
    [v41 setPriority:v42];
    [v41 setActive:1];
    v43 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v58];
    [v43 setDistribution:2];
    [v43 setSpacing:40.0];
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v22 addSubview:v43];
    [(VideosExtrasRootViewController *)self setExtrasMenuButtonsStackView:v43];
    v44 = [v43 centerYAnchor];
    v45 = [v22 centerYAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    [v46 setActive:1];

    v47 = [v43 leadingAnchor];
    v48 = [v22 leadingAnchor];
    v49 = [v47 constraintGreaterThanOrEqualToAnchor:v48];
    [v49 setActive:1];

    v50 = [v43 trailingAnchor];
    v51 = [v22 trailingAnchor];
    v52 = [v50 constraintGreaterThanOrEqualToAnchor:v51];
    [v52 setActive:1];

    v53 = [v43 centerXAnchor];
    v54 = [v22 centerXAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];

    LODWORD(v56) = 1132068864;
    [v55 setPriority:v56];
    [v55 setActive:1];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(v62, 8);

  return v5;
}

void __64__VideosExtrasRootViewController__extrasMenuBarViewForElements___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = [*(a1 + 32) context];
  v6 = [v5 isMenuItemElementMainFeature:v15];

  v7 = v15;
  if ((v6 & 1) == 0)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    v8 = [v15 title];
    v9 = [v8 text];
    v10 = [v9 string];

    if ([v10 length])
    {
      v11 = objc_alloc_init(MEMORY[0x1E69DC738]);
      v12 = [MEMORY[0x1E69DC888] colorWithRed:0.545 green:0.565 blue:0.573 alpha:1.0];
      [v11 setTitleColor:v12 forState:0];

      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v13 = [v11 titleLabel];
      v14 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
      [v13 setFont:v14];

      [v11 setTitle:v10 forState:0];
      [v11 setTag:a3];
      [v11 addTarget:*(a1 + 32) action:sel__extrasMenuItemSelected_ forControlEvents:64];
      [*(a1 + 40) addObject:v11];
    }

    v7 = v15;
  }
}

- (void)_backButtonPressed:(id)a3
{
  v3 = [(VideosExtrasRootViewController *)self context];
  if (objc_opt_respondsToSelector())
  {
    [v3 extrasBackButtonPressed];
  }
}

- (void)_extrasMenuItemSelected:(id)a3
{
  v11 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v11;
  if (isKindOfClass)
  {
    v6 = v11;
    v7 = [(VideosExtrasRootViewController *)self mainMenuItemElements];
    v8 = [v6 tag];
    if (v8 < [v7 count])
    {
      v9 = [v7 objectAtIndex:v8];
      if (v9)
      {
        v10 = [(VideosExtrasRootViewController *)self context];
        if (objc_opt_respondsToSelector())
        {
          [v10 extrasMenuItemSelected:v9 atIndex:v8];
        }
      }
    }

    v5 = v11;
  }
}

- (void)setMainTemplateViewController:(id)a3
{
  v5 = a3;
  mainTemplateViewController = self->_mainTemplateViewController;
  if (mainTemplateViewController != v5)
  {
    v14 = v5;
    [(VideosExtrasMainTemplateViewController *)mainTemplateViewController setDidSelectDelegate:0];
    [(VideosExtrasMainTemplateViewController *)v14 setDidSelectDelegate:self];
    objc_storeStrong(&self->_mainTemplateViewController, a3);
    v7 = [(VideosExtrasRootViewController *)self view];
    [v7 bounds];
    v10 = [(VideosExtrasRootViewController *)self shouldExtrasBeVisibleForViewSize:v8, v9];

    [(VideosExtrasRootViewController *)self _showExtrasBar:v10];
    v11 = [(VideosExtrasRootViewController *)self mainMenuItemElements];
    v12 = [(VideosExtrasRootViewController *)self _extrasMenuBarViewForElements:v11];

    if (v12)
    {
      [(VideosExtrasRootViewController *)self setExtrasMenuBarView:v12];
    }

    v13 = [(VideosExtrasRootViewController *)self delegate];
    [v13 extrasRootViewControllerDidLoadMainMenuItems:self];

    v5 = v14;
  }
}

- (BOOL)_setMainDocumentWithViewController:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 document];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 templateElement];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        [(VideosExtrasRootViewController *)self setMainTemplateViewController:v4];
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)detectMainDocument:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(VideosExtrasRootViewController *)self _setMainDocumentWithViewController:v10])
        {
          v11 = [v4 mutableCopy];
          [v11 removeObject:v10];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = v4;
LABEL_11:

  return v11;
}

- (UIView)mainMenuBar
{
  v2 = [(VideosExtrasRootViewController *)self mainTemplateViewController];
  v3 = [v2 menuBarView];

  return v3;
}

- (void)_adjustExtrasVisibilityForViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v16 = [(VideosExtrasRootViewController *)self presentedViewController];
  NSClassFromString(&cfstr_Mpaudioandsubt.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v16;
  if (self->_mainTemplateViewController)
  {
    if (!v16 || (v8 = [v16 isBeingDismissed] | isKindOfClass, v7 = v16, (v8 & 1) != 0))
    {
      v9 = [(VideosExtrasRootViewController *)self shouldExtrasBeVisibleForViewSize:width, height];
      if (![(VideosExtrasRootViewController *)self showsMenuBar])
      {
        v11 = [(VideosExtrasRootViewController *)self delegate];
        [v11 extrasRootViewController:self extrasVisibilityNeedsUpdate:v9];
LABEL_11:

        v7 = v16;
        goto LABEL_12;
      }

      v10 = v9 == [(VideosExtrasRootViewController *)self _areExtrasVisible];
      v7 = v16;
      if (!v10)
      {
        [(VideosExtrasRootViewController *)self _showExtrasBar:v9];
        v7 = v16;
        if (!(v9 | isKindOfClass))
        {
          v11 = [(VideosExtrasMainTemplateViewController *)self->_mainTemplateViewController menuBarView];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v11;
            v12 = [v11 indexPathsForSelectedItems];
            if ([v12 count])
            {
              v13 = [v12 objectAtIndex:0];
            }

            else
            {
              v13 = 0;
            }

            v14 = [(VideosExtrasMainTemplateViewController *)self->_mainTemplateViewController indexPathOfFeaturedItem];
            if (v13 && ([v13 isEqual:v14] & 1) == 0)
            {
              [v11 selectItemAtIndexPath:v14 animated:0 scrollPosition:0];
              v15 = [v11 delegate];
              [v15 collectionView:v11 didSelectItemAtIndexPath:v14];
            }
          }

          goto LABEL_11;
        }
      }
    }
  }

LABEL_12:
}

- (BOOL)_areExtrasVisible
{
  bottomConstraint = self->_bottomConstraint;
  if (bottomConstraint)
  {
    [(NSLayoutConstraint *)bottomConstraint constant];
    LOBYTE(bottomConstraint) = v3 == 0.0;
  }

  return bottomConstraint;
}

- (void)_playbackWillEndNotification:(id)a3
{
  v4 = [(VideosExtrasRootViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  [(VideosExtrasRootViewController *)self _adjustExtrasVisibilityForViewSize:v6, v8];
}

- (BOOL)shouldExtrasBeVisibleForViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (![(VideosExtrasRootViewController *)self isViewLoaded])
  {
    return 0;
  }

  v6 = [(VideosExtrasRootViewController *)self view];
  v7 = [v6 window];
  v8 = [(VideosExtrasRootViewController *)self view];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 window];
    v11 = [v10 screen];
    v12 = [v11 coordinateSpace];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    [v8 bounds];
    v14 = v21;
    v16 = v22;
    v18 = v23;
    v20 = v24;
  }

  v37.origin.x = v14;
  v37.origin.y = v16;
  v37.size.width = v18;
  v37.size.height = v20;
  v25 = CGRectGetWidth(v37);
  v38.origin.x = v14;
  v38.origin.y = v16;
  v38.size.width = v18;
  v38.size.height = v20;
  v26 = CGRectGetHeight(v38);
  if (v25 >= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  if (v25 >= v26)
  {
    v28 = v25;
  }

  else
  {
    v28 = v26;
  }

  v29 = [MEMORY[0x1E69DC938] currentDevice];
  v30 = [v29 orientation];

  v31 = (v30 - 5) < 0xFFFFFFFFFFFFFFFELL;
  if (width >= height)
  {
    v32 = height;
  }

  else
  {
    v32 = width;
  }

  if (width >= height)
  {
    v33 = width;
  }

  else
  {
    v33 = height;
  }

  if (width > height)
  {
    v31 = 0;
  }

  v34 = v27 == v32 && v28 == v33;
  return v34 && !v31;
}

- (void)_showExtrasBar:(BOOL)a3
{
  if (self->_showsMenuBar)
  {
    v3 = a3;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__20;
    v32 = __Block_byref_object_dispose__20;
    v33 = [(VideosExtrasMainTemplateViewController *)self->_mainTemplateViewController menuBarView];
    v5 = [v29[5] superview];

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = !v3;
    }

    if (!v6)
    {
      v7 = [(VideosExtrasRootViewController *)self view];
      [v7 addSubview:v29[5]];

      if (!self->_bottomConstraint)
      {
        v10 = [(VideosExtrasRootViewController *)self view];
        if (v10)
        {
          v11 = v29[5];

          if (v11)
          {
            v12 = MEMORY[0x1E696ACD8];
            v13 = v29[5];
            v14 = [(VideosExtrasRootViewController *)self view];
            v15 = [v12 constraintsByAttachingView:v13 toView:v14 alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

            v16 = MEMORY[0x1E696ACD8];
            v17 = v29[5];
            v18 = [(VideosExtrasRootViewController *)self view];
            [v29[5] frame];
            v19 = [v16 constraintWithItem:v17 attribute:4 relatedBy:0 toItem:v18 attribute:4 multiplier:1.0 constant:CGRectGetHeight(v35)];
            bottomConstraint = self->_bottomConstraint;
            self->_bottomConstraint = v19;

            v21 = self->_bottomConstraint;
            [(VideosExtrasMainTemplateViewController *)self->_mainTemplateViewController collectionViewHeight];
            [(NSLayoutConstraint *)v21 setConstant:?];
            v22 = MEMORY[0x1E696ACD8];
            v23 = [v15 arrayByAddingObject:self->_bottomConstraint];
            [v22 activateConstraints:v23];
          }
        }
      }

      v8 = [(VideosExtrasRootViewController *)self view];
      [v8 layoutIfNeeded];

      [v29[5] setHidden:0];
      Height = 0.0;
      if (!v3)
      {
        [v29[5] frame];
        Height = CGRectGetHeight(v34);
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __49__VideosExtrasRootViewController__showExtrasBar___block_invoke;
      v26[3] = &unk_1E8733D18;
      *&v26[6] = Height;
      v27 = v3;
      v26[4] = self;
      v26[5] = &v28;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __49__VideosExtrasRootViewController__showExtrasBar___block_invoke_2;
      v24[3] = &unk_1E8733D40;
      v25 = v3;
      v24[4] = self;
      v24[5] = &v28;
      [MEMORY[0x1E69DD250] animateWithDuration:v26 animations:v24 completion:0.33];
    }

    _Block_object_dispose(&v28, 8);
  }
}

void __49__VideosExtrasRootViewController__showExtrasBar___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 992) setConstant:*(a1 + 48)];
  if (*(a1 + 56) == 1)
  {
    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v2 = 0;
  }

  [*(*(a1 + 32) + 1056) setMenuBarView:v2];
  v3 = [*(*(a1 + 32) + 1056) view];
  [v3 layoutIfNeeded];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

void __49__VideosExtrasRootViewController__showExtrasBar___block_invoke_2(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 1056) videoPlaybackViewController];
  v2 = [v3 overlayView];
  [*(*(*(a1 + 40) + 8) + 40) setHidden:{objc_msgSend(v2, "isHidden") & 1 | ((*(a1 + 48) & 1) == 0)}];
}

- (VideosExtrasContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (CGSize)initialPresentationSize
{
  width = self->_initialPresentationSize.width;
  height = self->_initialPresentationSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (VideosExtrasRootViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end