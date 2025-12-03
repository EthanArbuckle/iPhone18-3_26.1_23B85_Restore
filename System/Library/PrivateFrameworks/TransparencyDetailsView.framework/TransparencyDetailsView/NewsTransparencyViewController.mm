@interface NewsTransparencyViewController
- (NewsTransparencyViewController)initWithNewsTransparencyDetailsDictionary:(id)dictionary;
- (void)_closeViewController:(id)controller;
- (void)_commonInit;
- (void)_hideErrorMessage;
- (void)_openDebugView:(id)view;
- (void)_showErrorMessage:(id)message;
- (void)debugDetailsViewControllerReady:(id)ready;
- (void)displayDebugButtonWaitingIndicator;
- (void)errorDelegate;
- (void)loadWebView;
- (void)presentViewDelegate;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation NewsTransparencyViewController

- (NewsTransparencyViewController)initWithNewsTransparencyDetailsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = NewsTransparencyViewController;
  v5 = [(NewsTransparencyViewController *)&v14 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    aD_jsonString = [dictionaryCopy AD_jsonString];
    v8 = [v6 stringWithFormat:@"AdLib provided TransparencyDetailsView the following transparencyDetailsDictionary: %@.", aD_jsonString];
    _ADLog();

    [(NewsTransparencyViewController *)v5 setTransparencyDetailsDictionary:dictionaryCopy];
    [(NewsTransparencyViewController *)v5 setIsiPad:MGGetBoolAnswer()];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    -[NewsTransparencyViewController setIsClientTodayWidget:](v5, "setIsClientTodayWidget:", [bundleIdentifier isEqualToString:*MEMORY[0x277CE95E8]]);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__NewsTransparencyViewController_initWithNewsTransparencyDetailsDictionary___block_invoke;
    block[3] = &unk_279DD95D0;
    v13 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return v5;
}

void __76__NewsTransparencyViewController_initWithNewsTransparencyDetailsDictionary___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__NewsTransparencyViewController_initWithNewsTransparencyDetailsDictionary___block_invoke_2;
  v5[3] = &unk_279DD96E8;
  v6 = *(a1 + 32);
  v2 = MEMORY[0x274393230](v5);
  v3 = [*(a1 + 32) isDeviceLocked];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 requestUserPassCodeUnlockUIWithBlock:v2];
  }

  else
  {
    [v4 _commonInit];
  }
}

void __76__NewsTransparencyViewController_initWithNewsTransparencyDetailsDictionary___block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {

    [v3 _commonInit];
  }

  else
  {
    [v3 errorDelegate];
    v4 = [*(a1 + 32) presentingViewController];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __76__NewsTransparencyViewController_initWithNewsTransparencyDetailsDictionary___block_invoke_3;
    v5[3] = &unk_279DD95D0;
    v6 = *(a1 + 32);
    [v4 dismissViewControllerAnimated:1 completion:v5];
  }
}

void __76__NewsTransparencyViewController_initWithNewsTransparencyDetailsDictionary___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 newsTransparencyViewControllerDidDismiss:*(a1 + 32)];
  }
}

- (void)viewDidLoad
{
  v16[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = NewsTransparencyViewController;
  [(NewsTransparencyViewController *)&v14 viewDidLoad];
  navigationController = [(NewsTransparencyViewController *)self navigationController];
  if (navigationController)
  {
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75788]);
      [v6 configureWithOpaqueBackground];
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      [v6 setBackgroundColor:systemBackgroundColor];

      v15 = *MEMORY[0x277D740C0];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v16[0] = whiteColor;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      [v6 setTitleTextAttributes:v9];

      navigationBar = [navigationController navigationBar];
      [navigationBar setStandardAppearance:v6];

      navigationBar2 = [navigationController navigationBar];
      [navigationBar2 setScrollEdgeAppearance:v6];

      navigationBar3 = [navigationController navigationBar];
      [navigationBar3 setTranslucent:0];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_commonInit
{
  transparencyDetailsDictionary = self->_transparencyDetailsDictionary;
  if (transparencyDetailsDictionary)
  {
    v4 = [(NSDictionary *)transparencyDetailsDictionary objectForKey:@"transparencyDetailsUnavailableMessage"];
    transparencyDetailsUnavailableMessage = self->_transparencyDetailsUnavailableMessage;
    self->_transparencyDetailsUnavailableMessage = v4;

    v6 = [(NSDictionary *)self->_transparencyDetailsDictionary objectForKey:@"transparencyRendererPayload"];
    transparencyRendererPayload = self->_transparencyRendererPayload;
    self->_transparencyRendererPayload = v6;

    v8 = [(NSDictionary *)self->_transparencyDetailsDictionary objectForKey:@"transparencyRendererURL"];
    transparencyRendererURL = self->_transparencyRendererURL;
    self->_transparencyRendererURL = v8;

    v10 = [(NSDictionary *)self->_transparencyDetailsDictionary objectForKey:@"renderingStateForLocation"];
    self->_renderingStatusForLocationPermission = [v10 BOOLValue];

    v11 = [(NSDictionary *)self->_transparencyDetailsDictionary objectForKey:@"renderingStateForPA"];
    self->_renderingStatusForPAPermission = [v11 BOOLValue];
  }

  else
  {
    [(NewsTransparencyViewController *)self errorDelegate];
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Connection to NewsTransparencyViewController established with TransparencyDetailsView framework."];
  _ADLog();

  if ([(NewsTransparencyViewController *)self isiPad])
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [(NewsTransparencyViewController *)self setModalPresentationStyle:v13];
  [(NewsTransparencyViewController *)self setModalTransitionStyle:0];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(NewsTransparencyViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  [(NewsTransparencyViewController *)self setEdgesForExtendedLayout:0];
  v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__closeViewController_];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v16 setTintColor:systemBlueColor];

  [v16 setAccessibilityLabel:@"Close"];
  navigationItem = [(NewsTransparencyViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v16];

  v19 = [v49 localizedStringForKey:@"About This Ad" value:&stru_287F8CB38 table:0];
  [(NewsTransparencyViewController *)self setTitle:v19];

  v20 = objc_alloc_init(MEMORY[0x277CE3830]);
  v21 = MEMORY[0x277CCACA8];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[NewsTransparencyViewController renderingStatusForLocationPermission](self, "renderingStatusForLocationPermission")}];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[NewsTransparencyViewController renderingStatusForPAPermission](self, "renderingStatusForPAPermission")}];
  v24 = [v21 stringWithFormat:@"        window.transparency = {            isLocationPermissionGranted: () => { return %@ }, isPAEnabled: () => { return %@ }         }    ", v22, v23];

  v25 = [objc_alloc(MEMORY[0x277CE3838]) initWithSource:v24 injectionTime:0 forMainFrameOnly:1];
  [v20 addUserScript:v25];
  v26 = objc_alloc_init(MEMORY[0x277CE3858]);
  [v26 setUserContentController:v20];
  v27 = objc_alloc(MEMORY[0x277CE3850]);
  v28 = [v27 initWithFrame:v26 configuration:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(NewsTransparencyViewController *)self setMyNewsPrivacyWebView:v28];

  myNewsPrivacyWebView = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [myNewsPrivacyWebView setTranslatesAutoresizingMaskIntoConstraints:0];

  myNewsPrivacyWebView2 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [myNewsPrivacyWebView2 setAllowsLinkPreview:0];

  myNewsPrivacyWebView3 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [myNewsPrivacyWebView3 setNavigationDelegate:self];

  myNewsPrivacyWebView4 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [myNewsPrivacyWebView4 setOpaque:0];

  myNewsPrivacyWebView5 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  scrollView = [myNewsPrivacyWebView5 scrollView];
  [scrollView setContentInsetAdjustmentBehavior:2];

  if ([(NewsTransparencyViewController *)self isClientTodayWidget])
  {
    myNewsPrivacyWebView6 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    scrollView2 = [myNewsPrivacyWebView6 scrollView];
    [scrollView2 setScrollEnabled:0];

    myNewsPrivacyWebView7 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    scrollView3 = [myNewsPrivacyWebView7 scrollView];
    [scrollView3 setBounces:0];
  }

  myNewsPrivacyWebView8 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [myNewsPrivacyWebView8 setAutoresizesSubviews:1];

  myNewsPrivacyWebView9 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [myNewsPrivacyWebView9 setAutoresizingMask:18];

  v41 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  activityIndicator = self->activityIndicator;
  self->activityIndicator = v41;

  myNewsPrivacyWebView10 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [myNewsPrivacyWebView10 frame];
  v45 = v44 * 0.5;
  myNewsPrivacyWebView11 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [myNewsPrivacyWebView11 frame];
  [(UIActivityIndicatorView *)self->activityIndicator setCenter:v45, v47 * 0.5];

  [(UIActivityIndicatorView *)self->activityIndicator setAutoresizingMask:45];
  [(UIActivityIndicatorView *)self->activityIndicator startAnimating];
  myNewsPrivacyWebView12 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [myNewsPrivacyWebView12 addSubview:self->activityIndicator];

  [(NewsTransparencyViewController *)self presentViewDelegate];
  [(NewsTransparencyViewController *)self loadWebView];
}

- (void)loadWebView
{
  v63[4] = *MEMORY[0x277D85DE8];
  transparencyRendererURL = [(NewsTransparencyViewController *)self transparencyRendererURL];

  if (transparencyRendererURL)
  {
    mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
    array = [MEMORY[0x277CBEB18] array];
    v6 = MEMORY[0x277CCAD18];
    v7 = mEMORY[0x277CE9638];
    localeIdentifier = [mEMORY[0x277CE9638] localeIdentifier];
    v9 = [v6 queryItemWithName:@"locale" value:localeIdentifier];
    [array addObject:v9];

    v10 = MEMORY[0x277CCAD18];
    osIdentifier = [v7 osIdentifier];
    v12 = [v10 queryItemWithName:@"os" value:osIdentifier];
    [array addObject:v12];

    v13 = MEMORY[0x277CCAD18];
    bundleIdentifier = [v7 bundleIdentifier];
    v15 = [v13 queryItemWithName:@"app_id" value:bundleIdentifier];
    [array addObject:v15];

    v16 = MEMORY[0x277CCAD18];
    v62 = v7;
    shortBuildVersion = [v7 shortBuildVersion];
    v18 = [v16 queryItemWithName:@"build" value:shortBuildVersion];
    [array addObject:v18];

    v19 = MEMORY[0x277CCAD18];
    shortModelType = [v7 shortModelType];
    v21 = [v19 queryItemWithName:@"model" value:shortModelType];
    v61 = array;
    [array addObject:v21];

    v22 = MEMORY[0x277CCACE0];
    transparencyRendererURL2 = [(NewsTransparencyViewController *)self transparencyRendererURL];
    v60 = [v22 componentsWithString:transparencyRendererURL2];

    [v60 setQueryItems:array];
    v59 = [v60 URL];
    v24 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v59];
    [v24 setHTTPMethod:@"POST"];
    transparencyRendererPayload = [(NewsTransparencyViewController *)self transparencyRendererPayload];
    v26 = [transparencyRendererPayload dataUsingEncoding:4];
    v58 = v24;
    [v24 setHTTPBody:v26];

    myNewsPrivacyWebView = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    v28 = [myNewsPrivacyWebView loadRequest:v24];

    navigationController = [(NewsTransparencyViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setTranslucent:0];

    view = [(NewsTransparencyViewController *)self view];
    myNewsPrivacyWebView2 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    [view addSubview:myNewsPrivacyWebView2];

    v48 = MEMORY[0x277CCAAD0];
    myNewsPrivacyWebView3 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    topAnchor = [myNewsPrivacyWebView3 topAnchor];
    view2 = [(NewsTransparencyViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v53 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
    v63[0] = v53;
    myNewsPrivacyWebView4 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    bottomAnchor = [myNewsPrivacyWebView4 bottomAnchor];
    view3 = [(NewsTransparencyViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v63[1] = v47;
    myNewsPrivacyWebView5 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    rightAnchor = [myNewsPrivacyWebView5 rightAnchor];
    view4 = [(NewsTransparencyViewController *)self view];
    rightAnchor2 = [view4 rightAnchor];
    v36 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v63[2] = v36;
    myNewsPrivacyWebView6 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    leftAnchor = [myNewsPrivacyWebView6 leftAnchor];
    view5 = [(NewsTransparencyViewController *)self view];
    leftAnchor2 = [view5 leftAnchor];
    v41 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v63[3] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
    [v48 activateConstraints:v42];

    v43 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: We don't have the URL for the rendering server.", objc_opt_class()];
    _ADLog();

    v45 = *MEMORY[0x277D85DE8];

    [(NewsTransparencyViewController *)self _showErrorMessage:0];
  }
}

- (void)_showErrorMessage:(id)message
{
  messageCopy = message;
  [(UIActivityIndicatorView *)self->activityIndicator stopAnimating];
  errorLabel = [(NewsTransparencyViewController *)self errorLabel];

  if (!errorLabel)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(NewsTransparencyViewController *)self setErrorLabel:v6];

    errorLabel2 = [(NewsTransparencyViewController *)self errorLabel];
    [errorLabel2 setNumberOfLines:0];

    labelColor = [MEMORY[0x277D75348] labelColor];
    errorLabel3 = [(NewsTransparencyViewController *)self errorLabel];
    [errorLabel3 setTextColor:labelColor];

    v10 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    errorLabel4 = [(NewsTransparencyViewController *)self errorLabel];
    [errorLabel4 setFont:v10];

    errorLabel5 = [(NewsTransparencyViewController *)self errorLabel];
    [errorLabel5 setTextAlignment:1];

    errorLabel6 = [(NewsTransparencyViewController *)self errorLabel];
    [errorLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];

    view = [(NewsTransparencyViewController *)self view];
    errorLabel7 = [(NewsTransparencyViewController *)self errorLabel];
    [view addSubview:errorLabel7];

    errorLabel8 = [(NewsTransparencyViewController *)self errorLabel];
    v17 = _NSDictionaryOfVariableBindings(&cfstr_Errorlabel.isa, errorLabel8, 0);
    view2 = [(NewsTransparencyViewController *)self view];
    v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-20-[errorLabel]-20-|" options:0 metrics:0 views:v17];
    [view2 addConstraints:v19];

    view3 = [(NewsTransparencyViewController *)self view];
    v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[errorLabel]-|" options:0 metrics:0 views:v17];
    [view3 addConstraints:v21];
  }

  if (!messageCopy)
  {
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    messageCopy = [v22 localizedStringForKey:@"Advertising information isn’t available right now. Try again later." value:&stru_287F8CB38 table:0];
  }

  errorLabel9 = [(NewsTransparencyViewController *)self errorLabel];
  [errorLabel9 setText:messageCopy];

  errorLabel10 = [(NewsTransparencyViewController *)self errorLabel];
  [errorLabel10 setHidden:0];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  [(UIActivityIndicatorView *)self->activityIndicator stopAnimating:view];
  [(NewsTransparencyViewController *)self _hideErrorMessage];
  delegate = [(NewsTransparencyViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(NewsTransparencyViewController *)self delegate];
    [delegate2 newsTransparencyViewControllerDidRenderView:self];
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  v6 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView:view];
  [v6 removeFromSuperview];

  [(NewsTransparencyViewController *)self _showErrorMessage:0];
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  v6 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView:view];
  [v6 removeFromSuperview];

  [(NewsTransparencyViewController *)self _showErrorMessage:0];
}

- (void)_hideErrorMessage
{
  errorLabel = [(NewsTransparencyViewController *)self errorLabel];

  if (errorLabel)
  {
    errorLabel2 = [(NewsTransparencyViewController *)self errorLabel];
    [errorLabel2 setHidden:1];
  }
}

- (void)_closeViewController:(id)controller
{
  presentingViewController = [(NewsTransparencyViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)presentViewDelegate
{
  delegate = [(NewsTransparencyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(NewsTransparencyViewController *)self delegate];
    [delegate2 newsTransparencyViewControllerDidLoad:self];
  }
}

- (void)errorDelegate
{
  delegate = [(NewsTransparencyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(NewsTransparencyViewController *)self delegate];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NewsTransparencyViewControllerErrorDomain" code:0 userInfo:&unk_287F8ED58];
    [delegate2 newsTransparencyViewController:self didFailWithError:v5];
  }
}

void __48__NewsTransparencyViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 _closeViewController:0];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v78 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  handlerCopy = handler;
  request = [actionCopy request];
  v10 = [request URL];

  v11 = MEMORY[0x277CCACA8];
  selfCopy = self;
  v12 = objc_opt_class();
  absoluteString = [v10 absoluteString];
  v14 = [v11 stringWithFormat:@"%@ The URL for the link generated by the rendering server is: %@.", v12, absoluteString];
  _ADLog();

  v15 = [MEMORY[0x277CCACE0] componentsWithURL:v10 resolvingAgainstBaseURL:0];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  queryItems = [v15 queryItems];
  v17 = [queryItems countByEnumeratingWithState:&v73 objects:v77 count:16];
  v71 = v10;
  if (v17)
  {
    v18 = v17;
    v69 = v15;
    v19 = handlerCopy;
    v20 = actionCopy;
    v21 = *v74;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v74 != v21)
        {
          objc_enumerationMutation(queryItems);
        }

        v23 = *(*(&v73 + 1) + 8 * i);
        name = [v23 name];
        v25 = [name isEqualToString:@"path"];

        if (v25)
        {
          v26 = v23;
          goto LABEL_11;
        }
      }

      v18 = [queryItems countByEnumeratingWithState:&v73 objects:v77 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }

    v26 = 0;
LABEL_11:
    actionCopy = v20;
    handlerCopy = v19;
    v15 = v69;
  }

  else
  {
    v26 = 0;
  }

  path = [v15 path];
  lastPathComponent = [path lastPathComponent];
  if ([lastPathComponent rangeOfString:@"prefs:root=Privacy&path=ADVERTISING" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  v29 = handlerCopy;
  v30 = actionCopy;
  v31 = v26;
  path2 = [v15 path];
  lastPathComponent2 = [path2 lastPathComponent];
  if ([lastPathComponent2 rangeOfString:@"App-Prefs:root=Privacy&path=ADVERTISING" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {

    v26 = v31;
    actionCopy = v30;
    handlerCopy = v29;
LABEL_24:

    goto LABEL_25;
  }

  absoluteString2 = [v71 absoluteString];
  v35 = [absoluteString2 containsString:@"Privacy_Advertising"];

  v26 = v31;
  actionCopy = v30;
  handlerCopy = v29;
  if (v35)
  {
LABEL_25:
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v55 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Privacy&path=ADVERTISING"];
    [defaultWorkspace openSensitiveURL:v55 withOptions:MEMORY[0x277CBEC10]];

    delegate = [(NewsTransparencyViewController *)selfCopy delegate];
    LOBYTE(v55) = objc_opt_respondsToSelector();

    if (v55)
    {
      delegate2 = [(NewsTransparencyViewController *)selfCopy delegate];
      [delegate2 newsTransparencyViewControllerDidLinkOut:selfCopy];
    }

    handlerCopy[2](handlerCopy, 0);
    v43 = v71;
    goto LABEL_28;
  }

  path3 = [v15 path];
  lastPathComponent3 = [path3 lastPathComponent];
  v38 = @"prefs:root=Privacy&path=LOCATION";
  v39 = [lastPathComponent3 rangeOfString:@"prefs:root=Privacy&path=LOCATION" options:1];

  if (v39 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"This is the Settings->App Settings->Location link. Launch this in the settings app."];
    _ADLog();

    mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
    bundleIdentifier = [mEMORY[0x277CE9638] bundleIdentifier];

    v43 = v71;
    if ([bundleIdentifier isEqualToString:@"com.apple.news"])
    {
      v38 = @"prefs:root=NEWS";
    }

    else if ([bundleIdentifier isEqualToString:@"com.apple.stocks"])
    {
      v38 = @"prefs:root=STOCKS";
    }

    defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v62 = [MEMORY[0x277CBEBC0] URLWithString:v38];
    [defaultWorkspace2 openSensitiveURL:v62 withOptions:MEMORY[0x277CBEC10]];

    presentingViewController = [(NewsTransparencyViewController *)selfCopy presentingViewController];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __90__NewsTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
    v72[3] = &unk_279DD95D0;
    v72[4] = selfCopy;
    [presentingViewController dismissViewControllerAnimated:1 completion:v72];

    goto LABEL_36;
  }

  path4 = [v15 path];
  lastPathComponent4 = [path4 lastPathComponent];
  v42 = [lastPathComponent4 rangeOfString:@"embedded:root=Privacy" options:1];

  v43 = v71;
  if (v26 && v42 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v44 = MEMORY[0x277D37678];
    v45 = MEMORY[0x277CCACA8];
    value = [v26 value];
    v47 = [v45 stringWithFormat:@"com.apple.onboarding.%@", value];
    bundleIdentifier = [v44 presenterForPrivacySplashWithIdentifier:v47];

    [bundleIdentifier setPresentingViewController:selfCopy];
    if ([(NewsTransparencyViewController *)selfCopy isiPad])
    {
      v49 = 2;
    }

    else
    {
      v49 = 1;
    }

    [bundleIdentifier setModalPresentationStyle:v49];
    navigationController = [(NewsTransparencyViewController *)selfCopy navigationController];
    [bundleIdentifier presentInNavigationStack:navigationController];

    v51 = MEMORY[0x277CCACA8];
    value2 = [v26 value];
    v53 = [v51 stringWithFormat:@"This is the Data & Privacy link for the about page with path %@. Present this in the modal sheet.", value2];
    _ADLog();

    v43 = v71;
LABEL_36:
    handlerCopy[2](handlerCopy, 0);

    goto LABEL_28;
  }

  if ([actionCopy navigationType])
  {
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    request2 = [actionCopy request];
    v66 = [request2 URL];
    [mEMORY[0x277D75128] openURL:v66 options:MEMORY[0x277CBEC10] completionHandler:&__block_literal_global_0];

    delegate3 = [(NewsTransparencyViewController *)selfCopy delegate];
    LOBYTE(request2) = objc_opt_respondsToSelector();

    if (request2)
    {
      delegate4 = [(NewsTransparencyViewController *)selfCopy delegate];
      [delegate4 newsTransparencyViewControllerDidLinkOut:selfCopy];
    }

    handlerCopy[2](handlerCopy, 0);
  }

LABEL_28:

  v58 = *MEMORY[0x277D85DE8];
}

void __90__NewsTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 newsTransparencyViewControllerDidLinkOut:*(a1 + 32)];
  }
}

void __90__NewsTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_2(uint64_t a1, int a2)
{
  v2 = @"NOT";
  if (a2)
  {
    v2 = @"successfully";
  }

  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"This is NOT the Settings->Privacy->Advertising link. Launch this in Safari and not our WebView. The link can %@ be opened", v2];
  _ADLog();
}

- (void)displayDebugButtonWaitingIndicator
{
  v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithFrame:{0.0, 0.0, 15.0, 15.0}];
  [v6 sizeToFit];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v6 setColor:systemGrayColor];

  [v6 startAnimating];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v6];
  navigationItem = [(NewsTransparencyViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v4];
}

- (void)debugDetailsViewControllerReady:(id)ready
{
  readyCopy = ready;
  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:@"Debug" style:0 target:self action:sel__openDebugView_];
  leftButton = self->leftButton;
  self->leftButton = v5;

  v7 = self->leftButton;
  navigationItem = [(NewsTransparencyViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v7];

  debugViewController = self->debugViewController;
  self->debugViewController = readyCopy;
}

- (void)_openDebugView:(id)view
{
  [(UIViewController *)self->debugViewController setModalPresentationStyle:7];
  popoverPresentationController = [(UIViewController *)self->debugViewController popoverPresentationController];
  [popoverPresentationController setBarButtonItem:self->leftButton];
  [(NewsTransparencyViewController *)self presentViewController:self->debugViewController animated:1 completion:0];
}

@end