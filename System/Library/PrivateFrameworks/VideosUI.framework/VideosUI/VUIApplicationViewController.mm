@interface VUIApplicationViewController
- (id)preferredFocusEnvironments;
- (void)_startApplicationControllerWithBootURL:(id)l;
- (void)appController:(id)controller didFailWithError:(id)error;
- (void)appController:(id)controller didFinishLaunchingWithOptions:(id)options;
- (void)appController:(id)controller evaluateAppJavaScriptInContext:(id)context;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation VUIApplicationViewController

- (void)dealloc
{
  [(VUITVApplicationController *)self->_applicationController stop];
  navigationController = self->_navigationController;
  if (navigationController)
  {
    [(UINavigationController *)navigationController willMoveToParentViewController:0];
    view = [(UINavigationController *)self->_navigationController view];
    [view removeFromSuperview];
    [(UINavigationController *)self->_navigationController removeFromParentViewController];
  }

  v5.receiver = self;
  v5.super_class = VUIApplicationViewController;
  [(VUIApplicationViewController *)&v5 dealloc];
}

- (id)preferredFocusEnvironments
{
  v9[1] = *MEMORY[0x1E69E9840];
  navigationController = [(VUIApplicationViewController *)self navigationController];
  v4 = navigationController;
  if (navigationController)
  {
    v9[0] = navigationController;
    preferredFocusEnvironments = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VUIApplicationViewController;
    preferredFocusEnvironments = [(VUIApplicationViewController *)&v8 preferredFocusEnvironments];
  }

  v6 = preferredFocusEnvironments;

  return v6;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = VUIApplicationViewController;
  [(VUIApplicationViewController *)&v12 viewDidLoad];
  v3 = kVUIBagTVAppJetpackURL;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [_TtC8VideosUI20VUIJetPackController controllerWithBagKey:v3 defaults:standardUserDefaults urlOverrideDefaultKey:@"boot-url"];

  [(VUIApplicationViewController *)self setJetPackController:v5];
  objc_initWeak(&location, self);
  getJetPackSource = [v5 getJetPackSource];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__VUIApplicationViewController_viewDidLoad__block_invoke;
  v8[3] = &unk_1E8730998;
  objc_copyWeak(&v10, &location);
  v7 = v5;
  v9 = v7;
  [getJetPackSource resultWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __43__VUIApplicationViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VUIApplicationViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_1E872D9B8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __43__VUIApplicationViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v6 = WeakRetained;
    v4 = [WeakRetained jetPackController];

    WeakRetained = v6;
    if (v3 == v4)
    {
      v5 = [*(a1 + 40) url];
      [v6 _startApplicationControllerWithBootURL:v5];

      [v6 setJetPackController:0];
      WeakRetained = v6;
    }
  }
}

- (void)appController:(id)controller evaluateAppJavaScriptInContext:(id)context
{
  contextCopy = context;
  [VUIJSFactory exposeObjectsInJSContext:contextCopy];
  [(VUIApplicationViewController *)self _exposeObjectsInJSContext:contextCopy];
}

- (void)appController:(id)controller didFinishLaunchingWithOptions:(id)options
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  controllerCopy = controller;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = optionsCopy;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "VUIApplicationViewController: TVApplicationController did finish launching with options: %@", buf, 0xCu);
  }

  appContext = [controllerCopy appContext];

  v10 = [(VUIApplicationViewController *)self _initialViewControllerWithAppContext:appContext];
  if (v10)
  {
    navigationController = [(VUIApplicationViewController *)self navigationController];
    v20 = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [navigationController setViewControllers:v12 animated:0];
  }

  else
  {
    navigationController = VUIDefaultLogObject();
    if (os_log_type_enabled(navigationController, OS_LOG_TYPE_ERROR))
    {
      [(VUIApplicationViewController *)navigationController appController:v13 didFinishLaunchingWithOptions:v14, v15, v16, v17, v18, v19];
    }
  }
}

- (void)appController:(id)controller didFailWithError:(id)error
{
  errorCopy = error;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [VUIApplicationViewController appController:errorCopy didFailWithError:v5];
  }
}

- (void)_startApplicationControllerWithBootURL:(id)l
{
  lCopy = l;
  applicationController = [(VUIApplicationViewController *)self applicationController];

  if (applicationController)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      [(VUIApplicationViewController *)&v6->super _startApplicationControllerWithBootURL:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  else if (lCopy)
  {
    v6 = objc_alloc_init(VUITVApplicationControllerContext);
    [(VUITVApplicationControllerContext *)v6 setJavaScriptApplicationURL:lCopy];
    _launchOptions = [(VUIApplicationViewController *)self _launchOptions];
    v15 = _launchOptions;
    if (_launchOptions)
    {
      dictionary = [_launchOptions mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v24 = dictionary;
    mEMORY[0x1E69DF700] = [MEMORY[0x1E69DF700] sharedInstance];
    osFeatureFlagsJSON = [mEMORY[0x1E69DF700] osFeatureFlagsJSON];

    if ([osFeatureFlagsJSON count])
    {
      [v24 setObject:osFeatureFlagsJSON forKey:@"featureFlags"];
    }

    v27 = [v24 copy];
    [(VUITVApplicationControllerContext *)v6 setLaunchOptions:v27];

    v28 = [objc_alloc(-[VUIApplicationViewController _applicationControllerClass](self "_applicationControllerClass"))];
    [(VUIApplicationViewController *)self setApplicationController:v28];
    navigationController = [v28 navigationController];
    [(VUIApplicationViewController *)self setNavigationController:navigationController];
    [(VUIApplicationViewController *)self addChildViewController:navigationController];
    view = [(VUIApplicationViewController *)self view];
    view2 = [navigationController view];
    [view bounds];
    [view2 setFrame:?];
    [view addSubview:view2];
    [navigationController didMoveToParentViewController:self];
    [v28 setKeyTraitEnvironment:view];
  }

  else
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      [(VUIApplicationViewController *)&v6->super _startApplicationControllerWithBootURL:v17, v18, v19, v20, v21, v22, v23];
    }
  }
}

- (void)appController:(uint64_t)a1 didFailWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIApplicationViewController: VUITVApplicationController failed to launch with error: %@", &v2, 0xCu);
}

@end