@interface ADTransparencyViewController
- (ADTransparencyViewController)initWithTransparencyDetails:(id)details;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (void)_closeViewController:(id)controller;
- (void)_commonInit;
- (void)_hideErrorMessage;
- (void)_postDismissedNotification;
- (void)_reportTransparencyViewControllerEventWithType:(id)type withCompletionHandler:(id)handler;
- (void)_showErrorMessage:(id)message;
- (void)configureWebView;
- (void)errorDelegate;
- (void)prepareRenderingPayload;
- (void)presentViewDelegate;
- (void)renderWebView;
- (void)requestViewWithTransparencyDetails:(id)details;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation ADTransparencyViewController

- (ADTransparencyViewController)initWithTransparencyDetails:(id)details
{
  detailsCopy = details;
  v8.receiver = self;
  v8.super_class = ADTransparencyViewController;
  v5 = [(ADTransparencyViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(ADTransparencyViewController *)v5 setTransparencyDetails:detailsCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ADTransparencyViewController;
  [(ADTransparencyViewController *)&v3 viewDidLoad];
  [(ADTransparencyViewController *)self _commonInit];
  [(ADTransparencyViewController *)self configureWebView];
  [(ADTransparencyViewController *)self renderWebView];
}

void __46__ADTransparencyViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 _closeViewController:0];
  }
}

- (void)requestViewWithTransparencyDetails:(id)details
{
  v4 = MEMORY[0x277CBEA90];
  detailsCopy = details;
  v6 = [[v4 alloc] initWithBase64EncodedString:detailsCopy options:0];

  v21 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v21];
  v8 = v21;
  transparencyDetailsData = self->_transparencyDetailsData;
  self->_transparencyDetailsData = v7;

  if (v8)
  {
    v20 = [objc_alloc(MEMORY[0x277CE96C8]) initWithData:v6];
    dictionaryRepresentation = [v20 dictionaryRepresentation];
    v11 = self->_transparencyDetailsData;
    self->_transparencyDetailsData = dictionaryRepresentation;

    v12 = objc_alloc_init(MEMORY[0x277CBFC10]);
    v13 = [v12 authorizationStatus] - 3 < 2;
    v14 = objc_alloc_init(MEMORY[0x277D23658]);
    personalizedAds = [v14 personalizedAds];
    v16 = self->_transparencyDetailsData;
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v13];
    [(NSDictionary *)v16 setValue:v17 forKey:@"renderingStateForLocation"];

    v18 = self->_transparencyDetailsData;
    v19 = [MEMORY[0x277CCABB0] numberWithBool:personalizedAds];
    [(NSDictionary *)v18 setValue:v19 forKey:@"renderingStateForPA"];
  }
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  statusBarOrientation = [mEMORY[0x277D75128] statusBarOrientation];

  return statusBarOrientation;
}

- (void)_commonInit
{
  v55[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Connection to ADTransparencyViewController established with TransparencyDetailsView framework."];
  _ADLog();

  mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
  v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"The Storefront Bundle Locale that will be used is: %@", v50];
  _ADLog();

  [(ADTransparencyViewController *)self setIsiPad:MGGetBoolAnswer()];
  if ([(ADTransparencyViewController *)self isiPad])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(ADTransparencyViewController *)self setModalPresentationStyle:v5];
  [(ADTransparencyViewController *)self setModalTransitionStyle:0];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(ADTransparencyViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  [(ADTransparencyViewController *)self setEdgesForExtendedLayout:0];
  v8 = objc_alloc_init(MEMORY[0x277D75780]);
  [(ADTransparencyViewController *)self setTransparencyNavBar:v8];

  transparencyNavBar = [(ADTransparencyViewController *)self transparencyNavBar];
  [transparencyNavBar setTranslatesAutoresizingMaskIntoConstraints:0];

  transparencyNavBar2 = [(ADTransparencyViewController *)self transparencyNavBar];
  [transparencyNavBar2 setTranslucent:0];

  transparencyNavBar3 = [(ADTransparencyViewController *)self transparencyNavBar];
  [transparencyNavBar3 setAutoresizesSubviews:1];

  transparencyNavBar4 = [(ADTransparencyViewController *)self transparencyNavBar];
  [transparencyNavBar4 setAutoresizingMask:2];

  view2 = [(ADTransparencyViewController *)self view];
  transparencyNavBar5 = [(ADTransparencyViewController *)self transparencyNavBar];
  [view2 addSubview:transparencyNavBar5];

  v43 = MEMORY[0x277CCAAD0];
  transparencyNavBar6 = [(ADTransparencyViewController *)self transparencyNavBar];
  topAnchor = [transparencyNavBar6 topAnchor];
  view3 = [(ADTransparencyViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v55[0] = v45;
  transparencyNavBar7 = [(ADTransparencyViewController *)self transparencyNavBar];
  rightAnchor = [transparencyNavBar7 rightAnchor];
  view4 = [(ADTransparencyViewController *)self view];
  rightAnchor2 = [view4 rightAnchor];
  v17 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v55[1] = v17;
  transparencyNavBar8 = [(ADTransparencyViewController *)self transparencyNavBar];
  leftAnchor = [transparencyNavBar8 leftAnchor];
  view5 = [(ADTransparencyViewController *)self view];
  leftAnchor2 = [view5 leftAnchor];
  v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v55[2] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
  [v43 activateConstraints:v23];

  v24 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__closeViewController_];
  [v24 setAccessibilityLabel:@"Close"];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [mainBundle localizedStringForKey:@"About This Ad" value:&stru_287F8CB38 table:0];

  storefrontLocalizationLanguage = [mEMORY[0x277CE9638] storefrontLocalizationLanguage];
  v28 = [v50 localizedStringForKey:@"About This Ad" value:0 table:0 localization:storefrontLocalizationLanguage];

  v29 = [objc_alloc(MEMORY[0x277D757A8]) initWithTitle:v28];
  [v29 setLeftBarButtonItem:v24];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v32 = objc_alloc_init(MEMORY[0x277D75788]);
    [v32 configureWithOpaqueBackground];
    systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v32 setBackgroundColor:systemBackgroundColor2];

    v53 = *MEMORY[0x277D740C0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v54 = whiteColor;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    [v32 setTitleTextAttributes:v35];

    transparencyNavBar9 = [(ADTransparencyViewController *)self transparencyNavBar];
    [transparencyNavBar9 setStandardAppearance:v32];

    transparencyNavBar10 = [(ADTransparencyViewController *)self transparencyNavBar];
    [transparencyNavBar10 setScrollEdgeAppearance:v32];

    transparencyNavBar11 = [(ADTransparencyViewController *)self transparencyNavBar];
    [transparencyNavBar11 setTranslucent:0];
  }

  v52 = v29;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  transparencyNavBar12 = [(ADTransparencyViewController *)self transparencyNavBar];
  [transparencyNavBar12 setItems:v39];

  [(ADTransparencyViewController *)self prepareRenderingPayload];
  v41 = *MEMORY[0x277D85DE8];
}

- (void)prepareRenderingPayload
{
  transparencyDetails = self->_transparencyDetails;
  if (transparencyDetails)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(NSString *)transparencyDetails description];
    v6 = [v4 stringWithFormat:@"The privacy data key being used is: %@.", v5];
    _ADLog();

    [(ADTransparencyViewController *)self requestViewWithTransparencyDetails:self->_transparencyDetails];
    v7 = [(NSDictionary *)self->_transparencyDetailsData objectForKey:@"transparencyDetailsUnavailableMessage"];
    transparencyDetailsUnavailableMessage = self->_transparencyDetailsUnavailableMessage;
    self->_transparencyDetailsUnavailableMessage = v7;

    v9 = [(NSDictionary *)self->_transparencyDetailsData objectForKey:@"transparencyRendererPayload"];
    transparencyRendererPayload = self->_transparencyRendererPayload;
    self->_transparencyRendererPayload = v9;

    v11 = [(NSDictionary *)self->_transparencyDetailsData objectForKey:@"transparencyRendererURL"];
    transparencyRendererURL = self->_transparencyRendererURL;
    self->_transparencyRendererURL = v11;

    v13 = [(NSDictionary *)self->_transparencyDetailsData objectForKey:@"renderingStateForLocation"];
    self->_renderingStatusForLocationPermission = [v13 BOOLValue];

    v14 = [(NSDictionary *)self->_transparencyDetailsData objectForKey:@"renderingStateForPA"];
    self->_renderingStatusForPAPermission = [v14 BOOLValue];
  }

  if (!self->_transparencyDetailsData)
  {

    [(ADTransparencyViewController *)self errorDelegate];
  }
}

- (void)configureWebView
{
  v59[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CE3830]);
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[ADTransparencyViewController renderingStatusForLocationPermission](self, "renderingStatusForLocationPermission")}];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ADTransparencyViewController renderingStatusForPAPermission](self, "renderingStatusForPAPermission")}];
  v58 = [v4 stringWithFormat:@"        window.transparency = {            isLocationPermissionGranted: () => { return %@ }, isPAEnabled: () => { return %@ }         }    ", v5, v6];

  v56 = v3;
  v57 = [objc_alloc(MEMORY[0x277CE3838]) initWithSource:v58 injectionTime:0 forMainFrameOnly:1];
  [v3 addUserScript:v57];
  v55 = objc_alloc_init(MEMORY[0x277CE3858]);
  [v55 setUserContentController:v3];
  v7 = objc_alloc(MEMORY[0x277CE3850]);
  view = [(ADTransparencyViewController *)self view];
  [view frame];
  v10 = v9;
  view2 = [(ADTransparencyViewController *)self view];
  [view2 frame];
  v13 = [v7 initWithFrame:v55 configuration:{0.0, 44.0, v10, v12 + -44.0}];
  [(ADTransparencyViewController *)self setMyWebView:v13];

  myWebView = [(ADTransparencyViewController *)self myWebView];
  [myWebView setAllowsLinkPreview:0];

  myWebView2 = [(ADTransparencyViewController *)self myWebView];
  [myWebView2 setNavigationDelegate:self];

  myWebView3 = [(ADTransparencyViewController *)self myWebView];
  [myWebView3 setOpaque:0];

  myWebView4 = [(ADTransparencyViewController *)self myWebView];
  scrollView = [myWebView4 scrollView];
  [scrollView setContentInsetAdjustmentBehavior:2];

  myWebView5 = [(ADTransparencyViewController *)self myWebView];
  [myWebView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  myWebView6 = [(ADTransparencyViewController *)self myWebView];
  [myWebView6 setAutoresizesSubviews:1];

  myWebView7 = [(ADTransparencyViewController *)self myWebView];
  [myWebView7 setAutoresizingMask:18];

  v22 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  activityIndicator = self->activityIndicator;
  self->activityIndicator = v22;

  myWebView8 = [(ADTransparencyViewController *)self myWebView];
  [myWebView8 frame];
  v26 = v25 * 0.5;
  myWebView9 = [(ADTransparencyViewController *)self myWebView];
  [myWebView9 frame];
  [(UIActivityIndicatorView *)self->activityIndicator setCenter:v26, v28 * 0.5 + -44.0];

  [(UIActivityIndicatorView *)self->activityIndicator setAutoresizingMask:45];
  [(UIActivityIndicatorView *)self->activityIndicator startAnimating];
  myWebView10 = [(ADTransparencyViewController *)self myWebView];
  [myWebView10 addSubview:self->activityIndicator];

  view3 = [(ADTransparencyViewController *)self view];
  myWebView11 = [(ADTransparencyViewController *)self myWebView];
  [view3 addSubview:myWebView11];

  v45 = MEMORY[0x277CCAAD0];
  myWebView12 = [(ADTransparencyViewController *)self myWebView];
  topAnchor = [myWebView12 topAnchor];
  transparencyNavBar = [(ADTransparencyViewController *)self transparencyNavBar];
  bottomAnchor = [transparencyNavBar bottomAnchor];
  v50 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  v59[0] = v50;
  myWebView13 = [(ADTransparencyViewController *)self myWebView];
  bottomAnchor2 = [myWebView13 bottomAnchor];
  view4 = [(ADTransparencyViewController *)self view];
  bottomAnchor3 = [view4 bottomAnchor];
  v44 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v59[1] = v44;
  myWebView14 = [(ADTransparencyViewController *)self myWebView];
  rightAnchor = [myWebView14 rightAnchor];
  view5 = [(ADTransparencyViewController *)self view];
  rightAnchor2 = [view5 rightAnchor];
  v35 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v59[2] = v35;
  myWebView15 = [(ADTransparencyViewController *)self myWebView];
  leftAnchor = [myWebView15 leftAnchor];
  view6 = [(ADTransparencyViewController *)self view];
  leftAnchor2 = [view6 leftAnchor];
  v40 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v59[3] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:4];
  [v45 activateConstraints:v41];

  v42 = *MEMORY[0x277D85DE8];
}

- (void)renderWebView
{
  transparencyRendererURL = [(ADTransparencyViewController *)self transparencyRendererURL];

  if (transparencyRendererURL)
  {
    mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
    array = [MEMORY[0x277CBEB18] array];
    v5 = MEMORY[0x277CCAD18];
    localeIdentifier = [mEMORY[0x277CE9638] localeIdentifier];
    v7 = [v5 queryItemWithName:@"locale" value:localeIdentifier];
    [array addObject:v7];

    v8 = MEMORY[0x277CCAD18];
    osIdentifier = [mEMORY[0x277CE9638] osIdentifier];
    v10 = [v8 queryItemWithName:@"os" value:osIdentifier];
    [array addObject:v10];

    v11 = MEMORY[0x277CCAD18];
    bundleIdentifier = [mEMORY[0x277CE9638] bundleIdentifier];
    v13 = [v11 queryItemWithName:@"app_id" value:bundleIdentifier];
    [array addObject:v13];

    v14 = MEMORY[0x277CCAD18];
    shortBuildVersion = [mEMORY[0x277CE9638] shortBuildVersion];
    v16 = [v14 queryItemWithName:@"build" value:shortBuildVersion];
    [array addObject:v16];

    v17 = MEMORY[0x277CCAD18];
    shortModelType = [mEMORY[0x277CE9638] shortModelType];
    v19 = [v17 queryItemWithName:@"model" value:shortModelType];
    [array addObject:v19];

    v20 = MEMORY[0x277CCACE0];
    transparencyRendererURL2 = [(ADTransparencyViewController *)self transparencyRendererURL];
    v22 = [v20 componentsWithString:transparencyRendererURL2];

    [v22 setQueryItems:array];
    v23 = [v22 URL];
    v24 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v23];
    [v24 setHTTPMethod:@"POST"];
    transparencyRendererPayload = [(ADTransparencyViewController *)self transparencyRendererPayload];
    v26 = [transparencyRendererPayload dataUsingEncoding:4];
    [v24 setHTTPBody:v26];

    myWebView = [(ADTransparencyViewController *)self myWebView];
    v28 = [myWebView loadRequest:v24];
  }

  else
  {

    [(ADTransparencyViewController *)self _showErrorMessage:0];
  }
}

- (void)presentViewDelegate
{
  delegate = [(ADTransparencyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ADTransparencyViewController *)self delegate];
    [delegate2 adTransparencyViewControllerDidLoad:self];
  }

  [(ADTransparencyViewController *)self _reportTransparencyViewControllerEventWithType:@"PrivacyAdTransparencyDidAppear" withCompletionHandler:0];
}

- (void)errorDelegate
{
  delegate = [(ADTransparencyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ADTransparencyViewController *)self delegate];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADTransparencyViewControllerErrorDomain" code:0 userInfo:&unk_287F8ED80];
    [delegate2 adTransparencyViewController:self didFailWithError:v5];
  }
}

- (void)_closeViewController:(id)controller
{
  presentingViewController = [(ADTransparencyViewController *)self presentingViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__ADTransparencyViewController__closeViewController___block_invoke;
  v5[3] = &unk_279DD95D0;
  v5[4] = self;
  [presentingViewController dismissViewControllerAnimated:1 completion:v5];

  [(ADTransparencyViewController *)self _reportTransparencyViewControllerEventWithType:@"PrivacyAdTransparencyDidDisappear" withCompletionHandler:0];
}

void __53__ADTransparencyViewController__closeViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 adTransparencyViewControllerDidDismiss:*(a1 + 32)];
  }
}

- (void)_showErrorMessage:(id)message
{
  messageCopy = message;
  [(UIActivityIndicatorView *)self->activityIndicator stopAnimating];
  errorLabel = [(ADTransparencyViewController *)self errorLabel];

  if (!errorLabel)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(ADTransparencyViewController *)self setErrorLabel:v6];

    errorLabel2 = [(ADTransparencyViewController *)self errorLabel];
    [errorLabel2 setNumberOfLines:0];

    labelColor = [MEMORY[0x277D75348] labelColor];
    errorLabel3 = [(ADTransparencyViewController *)self errorLabel];
    [errorLabel3 setTextColor:labelColor];

    v10 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    errorLabel4 = [(ADTransparencyViewController *)self errorLabel];
    [errorLabel4 setFont:v10];

    errorLabel5 = [(ADTransparencyViewController *)self errorLabel];
    [errorLabel5 setTextAlignment:1];

    errorLabel6 = [(ADTransparencyViewController *)self errorLabel];
    [errorLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];

    view = [(ADTransparencyViewController *)self view];
    errorLabel7 = [(ADTransparencyViewController *)self errorLabel];
    [view addSubview:errorLabel7];

    errorLabel8 = [(ADTransparencyViewController *)self errorLabel];
    v17 = _NSDictionaryOfVariableBindings(&cfstr_Errorlabel.isa, errorLabel8, 0);
    view2 = [(ADTransparencyViewController *)self view];
    v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-20-[errorLabel]-20-|" options:0 metrics:0 views:v17];
    [view2 addConstraints:v19];

    view3 = [(ADTransparencyViewController *)self view];
    v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[errorLabel]-|" options:0 metrics:0 views:v17];
    [view3 addConstraints:v21];
  }

  if (!messageCopy)
  {
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v25 = [mainBundle localizedStringForKey:@"Advertising information isn’t available right now. Try again later." value:&stru_287F8CB38 table:0];

    storefrontLocalizationLanguage = [mEMORY[0x277CE9638] storefrontLocalizationLanguage];
    messageCopy = [v22 localizedStringForKey:@"Advertising information isn’t available right now. Try again later." value:0 table:0 localization:storefrontLocalizationLanguage];
  }

  myWebView = [(ADTransparencyViewController *)self myWebView];
  scrollView = [myWebView scrollView];
  [scrollView setScrollEnabled:0];

  errorLabel9 = [(ADTransparencyViewController *)self errorLabel];
  [errorLabel9 setText:messageCopy];

  errorLabel10 = [(ADTransparencyViewController *)self errorLabel];
  [errorLabel10 setHidden:0];

  [(ADTransparencyViewController *)self presentViewDelegate];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  [(UIActivityIndicatorView *)self->activityIndicator stopAnimating:view];
  [(ADTransparencyViewController *)self _hideErrorMessage];
  [(ADTransparencyViewController *)self presentViewDelegate];

  [(ADTransparencyViewController *)self _reportTransparencyViewControllerEventWithType:@"PrivacyAdTransparencyDidRenderTransparency" withCompletionHandler:0];
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
  if (v17)
  {
    v18 = v17;
    v66 = v15;
    v67 = v10;
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
    v15 = v66;
    v10 = v67;
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

  v68 = handlerCopy;
  v29 = actionCopy;
  v30 = v26;
  v31 = v15;
  path2 = [v15 path];
  lastPathComponent2 = [path2 lastPathComponent];
  if ([lastPathComponent2 rangeOfString:@"App-Prefs:root=Privacy&path=ADVERTISING" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {

    v26 = v30;
    actionCopy = v29;
    handlerCopy = v68;
    v15 = v31;
LABEL_24:

    goto LABEL_25;
  }

  absoluteString2 = [v10 absoluteString];
  v35 = [absoluteString2 containsString:@"Privacy_Advertising"];

  v26 = v30;
  actionCopy = v29;
  handlerCopy = v68;
  v15 = v31;
  if (v35)
  {
LABEL_25:
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v54 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Privacy&path=ADVERTISING"];
    [defaultWorkspace openSensitiveURL:v54 withOptions:MEMORY[0x277CBEC10]];

    v55 = selfCopy;
    presentingViewController = [(ADTransparencyViewController *)selfCopy presentingViewController];
    v57 = presentingViewController;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __88__ADTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
    v72[3] = &unk_279DD95D0;
    v72[4] = selfCopy;
    v58 = v72;
LABEL_26:
    [presentingViewController dismissViewControllerAnimated:1 completion:v58];

    [(ADTransparencyViewController *)v55 _reportTransparencyViewControllerEventWithType:@"PrivacyAdTransparencyDidLinkOut" withCompletionHandler:0];
    [(ADTransparencyViewController *)v55 _reportTransparencyViewControllerEventWithType:@"PrivacyAdTransparencyDidDisappear" withCompletionHandler:0];
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_27;
  }

  path3 = [v31 path];
  lastPathComponent3 = [path3 lastPathComponent];
  v38 = [lastPathComponent3 rangeOfString:@"prefs:root=Privacy&path=LOCATION" options:1];

  if (v38 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"This is the Settings->App Settings->Location link. Launch this in the settings app."];
    _ADLog();

    defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v62 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=STORE"];
    [defaultWorkspace2 openSensitiveURL:v62 withOptions:MEMORY[0x277CBEC10]];

    v55 = selfCopy;
    presentingViewController = [(ADTransparencyViewController *)selfCopy presentingViewController];
    v57 = presentingViewController;
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __88__ADTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_2;
    v71[3] = &unk_279DD95D0;
    v71[4] = selfCopy;
    v58 = v71;
    goto LABEL_26;
  }

  path4 = [v31 path];
  lastPathComponent4 = [path4 lastPathComponent];
  v41 = [lastPathComponent4 rangeOfString:@"embedded:root=Privacy" options:1];

  if (!v26 || v41 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([actionCopy navigationType])
    {
      v68[2](v68, 1);
      goto LABEL_27;
    }

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    request2 = [actionCopy request];
    v65 = [request2 URL];
    [mEMORY[0x277D75128] openURL:v65 options:MEMORY[0x277CBEC10] completionHandler:&__block_literal_global_1];

    v55 = selfCopy;
    presentingViewController = [(ADTransparencyViewController *)selfCopy presentingViewController];
    v57 = presentingViewController;
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __88__ADTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_4;
    v70[3] = &unk_279DD95D0;
    v70[4] = selfCopy;
    v58 = v70;
    goto LABEL_26;
  }

  v42 = MEMORY[0x277D37678];
  v43 = MEMORY[0x277CCACA8];
  value = [v26 value];
  v45 = [v43 stringWithFormat:@"com.apple.onboarding.%@", value];
  v46 = [v42 presenterForPrivacySplashWithIdentifier:v45];

  [v46 setPresentingViewController:selfCopy];
  if ([(ADTransparencyViewController *)selfCopy isiPad])
  {
    v47 = 2;
  }

  else
  {
    v47 = 1;
  }

  [v46 setModalPresentationStyle:v47];
  navigationController = [(ADTransparencyViewController *)selfCopy navigationController];
  [v46 presentInNavigationStack:navigationController];

  v49 = MEMORY[0x277CCACA8];
  [v26 value];
  v51 = v50 = v10;
  v52 = [v49 stringWithFormat:@"This is the Data & Privacy link for the about page with path %@. Present this in the modal sheet.", v51];
  _ADLog();

  v10 = v50;
  v68[2](v68, 0);

LABEL_27:
  v59 = *MEMORY[0x277D85DE8];
}

void __88__ADTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 adTransparencyViewControllerDidDismiss:*(a1 + 32)];
  }
}

void __88__ADTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 adTransparencyViewControllerDidDismiss:*(a1 + 32)];
  }
}

void __88__ADTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_3(uint64_t a1, int a2)
{
  v2 = @"NOT";
  if (a2)
  {
    v2 = @"successfully";
  }

  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"This is NOT the Settings->Privacy->Advertising link. Launch this in Safari and not our WebView. The link can %@ be opened", v2];
  _ADLog();
}

void __88__ADTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 adTransparencyViewControllerDidDismiss:*(a1 + 32)];
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  v6 = [(ADTransparencyViewController *)self myWebView:view];
  [v6 removeFromSuperview];

  [(ADTransparencyViewController *)self _showErrorMessage:0];
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  v6 = [(ADTransparencyViewController *)self myWebView:view];
  [v6 removeFromSuperview];

  [(ADTransparencyViewController *)self _showErrorMessage:0];
}

- (void)_hideErrorMessage
{
  errorLabel = [(ADTransparencyViewController *)self errorLabel];

  if (errorLabel)
  {
    errorLabel2 = [(ADTransparencyViewController *)self errorLabel];
    [errorLabel2 setHidden:1];
  }
}

- (void)_reportTransparencyViewControllerEventWithType:(id)type withCompletionHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  workQueue = [MEMORY[0x277CE96B8] workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__ADTransparencyViewController__reportTransparencyViewControllerEventWithType_withCompletionHandler___block_invoke;
  v10[3] = &unk_279DD96B8;
  v11 = typeCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = typeCopy;
  [workQueue addOperationWithBlock:v10];
}

void __101__ADTransparencyViewController__reportTransparencyViewControllerEventWithType_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE9638] sharedInstance];
  v3 = [v2 defaultServerURL];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requesting ADLogAnalyticsRequest with ADAnalyticsEvent for %@ event to: %@", *(a1 + 32), v3];
  _ADLog();

  v5 = [MEMORY[0x277CE96B8] sharedInstance];
  v6 = [MEMORY[0x277CE9658] sharedInstance];
  v7 = objc_alloc_init(MEMORY[0x277CE9668]);
  [v7 setBundleID:*MEMORY[0x277CE95E0]];
  v8 = [v6 encryptedIDForClientType:3];
  [v7 setContentiAdID:v8];

  v9 = [v6 encryptedIDForClientType:5];
  [v7 setDPID:v9];

  v10 = [v6 encryptedIDForClientType:0];
  [v7 setIAdID:v10];

  v11 = objc_alloc_init(MEMORY[0x277CE95F0]);
  v12 = [MEMORY[0x277CBEAA8] date];
  [v11 setTimestamp:{objc_msgSend(v12, "AD_toServerTime")}];

  v13 = *(a1 + 32);
  v14 = 0;
  if (([v13 isEqualToString:@"PrerollRequested"] & 1) == 0)
  {
    if ([v13 isEqualToString:@"PrivacyUserTransparencyDidAppear"])
    {
      v14 = 1;
    }

    else if ([v13 isEqualToString:@"PrivacyUserTransparencyDidRenderTransparency"])
    {
      v14 = 2;
    }

    else if ([v13 isEqualToString:@"PrivacyUserTransparencyDidDisappear"])
    {
      v14 = 3;
    }

    else if ([v13 isEqualToString:@"PrivacyUserTransparencyDidLinkOut"])
    {
      v14 = 4;
    }

    else if ([v13 isEqualToString:@"PrivacyAdTransparencyDidAppear"])
    {
      v14 = 5;
    }

    else if ([v13 isEqualToString:@"PrivacyAdTransparencyDidRenderTransparency"])
    {
      v14 = 6;
    }

    else if ([v13 isEqualToString:@"PrivacyAdTransparencyDidDisappear"])
    {
      v14 = 7;
    }

    else if ([v13 isEqualToString:@"PrivacyAdTransparencyDidLinkOut"])
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }
  }

  [v11 setEvent:v14];
  v15 = [MEMORY[0x277CBEB18] arrayWithObjects:{v11, 0}];
  [v7 setEvents:v15];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__ADTransparencyViewController__reportTransparencyViewControllerEventWithType_withCompletionHandler___block_invoke_2;
  v18[3] = &unk_279DD9690;
  v16 = *(a1 + 40);
  v19 = v7;
  v20 = v16;
  v17 = v7;
  [v5 handleRequest:v17 serverURL:v3 responseHandler:v18];
}

void __101__ADTransparencyViewController__reportTransparencyViewControllerEventWithType_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received an ADLogAnalyticsResponse ERROR: %@", v8];
    _ADLog();
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CE9670]) initWithData:v15];
    v10 = MEMORY[0x277CCACA8];
    v11 = [v9 dictionaryRepresentation];
    v12 = [v10 stringWithFormat:@"Received an ADLogAnalyticsResponse: %@", v11];
    _ADLog();
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = [*(a1 + 32) dictionaryRepresentation];
    (*(v13 + 16))(v13, v14);
  }
}

- (void)_postDismissedNotification
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Posting ADTransparencyViewControllerDismissed notification."];
  _ADLog();

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ADTransparencyViewControllerDismissed" object:0];
}

@end