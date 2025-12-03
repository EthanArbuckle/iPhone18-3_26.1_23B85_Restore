@interface UserTransparencyViewController
- (UserTransparencyViewController)initWithUserTransparencyDetails:(id)details;
- (id)normalizeChineseLanguage:(id)language;
- (void)_closeViewController:(id)controller;
- (void)_commonInit;
- (void)_hideErrorMessage;
- (void)_reportUserTransparencyViewControllerEventWithType:(id)type withCompletionHandler:(id)handler;
- (void)_showErrorMessage:(id)message;
- (void)errorDelegate;
- (void)immediatelyLoadViewControllerBeforeNetworkRequest;
- (void)loadWebView;
- (void)presentViewDelegate;
- (void)requestUserTransparencyDetailsWithCompletionHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation UserTransparencyViewController

- (UserTransparencyViewController)initWithUserTransparencyDetails:(id)details
{
  detailsCopy = details;
  v10.receiver = self;
  v10.super_class = UserTransparencyViewController;
  v5 = [(UserTransparencyViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(UserTransparencyViewController *)v5 setUserTransparencyDetails:detailsCopy];
    [(UserTransparencyViewController *)v6 setIsiPad:MGGetBoolAnswer()];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__UserTransparencyViewController_initWithUserTransparencyDetails___block_invoke;
    block[3] = &unk_279DD95D0;
    v9 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return v6;
}

- (void)_commonInit
{
  if (self->_userTransparencyDetails)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: The initWithUserTransparencyDetails passed in a non nil payload.", objc_opt_class()];
    _ADLog();

    [(UserTransparencyViewController *)self errorDelegate];
  }

  else
  {
    mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
    [mEMORY[0x277CE9658] loadIDs];

    mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
    self->_renderingStatusForPAPermission = [mEMORY[0x277CE9638] isPersonalizedAdsEnabled];

    [(UserTransparencyViewController *)self immediatelyLoadViewControllerBeforeNetworkRequest];
    [(UserTransparencyViewController *)self presentViewDelegate];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__UserTransparencyViewController__commonInit__block_invoke;
    v6[3] = &unk_279DD95F8;
    v6[4] = self;
    [(UserTransparencyViewController *)self requestUserTransparencyDetailsWithCompletionHandler:v6];
  }
}

void __45__UserTransparencyViewController__commonInit__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Connection to UserTransparencyViewController established with TransparencyDetailsView framework."];
  _ADLog();

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__UserTransparencyViewController__commonInit__block_invoke_2;
  block[3] = &unk_279DD95D0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)requestUserTransparencyDetailsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x277CE96B8] = [MEMORY[0x277CE96B8] sharedInstance];
  mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
  localeIdentifier = [mEMORY[0x277CE9638] localeIdentifier];
  localeIdentifier2 = [mEMORY[0x277CE9638] localeIdentifier];
  v9 = [localeIdentifier2 hasPrefix:@"zh"];

  if (v9)
  {
    localeIdentifier3 = [mEMORY[0x277CE9638] localeIdentifier];
    v11 = [(UserTransparencyViewController *)self normalizeChineseLanguage:localeIdentifier3];

    localeIdentifier = v11;
  }

  workQueue = [MEMORY[0x277CE96B8] workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__UserTransparencyViewController_requestUserTransparencyDetailsWithCompletionHandler___block_invoke;
  v17[3] = &unk_279DD9648;
  v18 = mEMORY[0x277CE9638];
  v19 = localeIdentifier;
  v20 = mEMORY[0x277CE96B8];
  selfCopy = self;
  v22 = handlerCopy;
  v13 = handlerCopy;
  v14 = mEMORY[0x277CE96B8];
  v15 = localeIdentifier;
  v16 = mEMORY[0x277CE9638];
  [workQueue addOperationWithBlock:v17];
}

void __86__UserTransparencyViewController_requestUserTransparencyDetailsWithCompletionHandler___block_invoke(id *a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__UserTransparencyViewController_requestUserTransparencyDetailsWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_279DD9648;
  v2 = a1 + 7;
  v3 = a1[4];
  v4 = a1[5];
  *&v5 = a1[6];
  *(&v5 + 1) = *v2;
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = a1[8];
  [v3 reloadStorefront:v7];
}

void __86__UserTransparencyViewController_requestUserTransparencyDetailsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CE9658] sharedInstance];
  v3 = objc_alloc_init(MEMORY[0x277CE96D8]);
  v4 = [v2 encryptedIDForClientType:3];
  [v3 setContentiAdID:v4];

  v5 = [v2 encryptedIDForClientType:5];
  [v3 setDPID:v5];

  v6 = [v2 encryptedIDForClientType:0];
  [v3 setIAdID:v6];

  v7 = [*(a1 + 32) iTunesStorefront];
  [v3 setITunesStore:v7];

  [v3 setLocaleIdentifier:*(a1 + 40)];
  [v3 setLimitAdTracking:{objc_msgSend(*(a1 + 32), "isPersonalizedAdsEnabled") ^ 1}];
  v8 = [v2 activeDSIDRecord];
  v9 = [v8 DSID];
  [v3 setIsSignedInToiTunes:{objc_msgSend(v9, "BOOLValue")}];

  v10 = *(a1 + 48);
  v11 = [*(a1 + 32) defaultServerURL];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__UserTransparencyViewController_requestUserTransparencyDetailsWithCompletionHandler___block_invoke_3;
  v13[3] = &unk_279DD9620;
  v12 = *(a1 + 64);
  v13[4] = *(a1 + 56);
  v14 = v12;
  [v10 handleRequest:v3 serverURL:v11 responseHandler:v13];
}

void __86__UserTransparencyViewController_requestUserTransparencyDetailsWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: The requestUserTransparencyDetailsWithCompletionHandler failed with error %ld.", objc_opt_class(), objc_msgSend(v8, "code")];
    _ADLog();
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CE96E0]) initWithData:v28];
    [*(a1 + 32) setUserTransparencyResponseData:v11];

    v12 = MEMORY[0x277CCACA8];
    v13 = [*(a1 + 32) userTransparencyResponseData];
    v14 = [v13 AD_jsonString];
    v15 = [v12 stringWithFormat:@"Received response for ADUserTransparencyRequest: %@", v14];
    _ADLog();

    v16 = [*(a1 + 32) userTransparencyResponseData];
    v17 = [v16 transparencyDetails];
    v18 = [v17 transparencyRendererPayload];
    [*(a1 + 32) setUserTransparencyRendererPayload:v18];

    v19 = [*(a1 + 32) userTransparencyResponseData];
    v20 = [v19 transparencyDetails];
    v21 = [v20 transparencyRendererURL];
    [*(a1 + 32) setUserTransparencyRendererURL:v21];

    v22 = [*(a1 + 32) userTransparencyResponseData];
    v23 = [v22 transparencyDetails];
    v24 = [v23 transparencyDetailsUnavailableMessage];
    [*(a1 + 32) setUserTransparencyDetailsUnavailableMessage:v24];

    v25 = MEMORY[0x277CCACA8];
    v10 = [*(a1 + 32) userTransparencyRendererPayload];
    v26 = [v25 stringWithFormat:@"The privacy data key being used is: %@.", v10];
    _ADLog();
  }

  v27 = *(a1 + 40);
  if (v27)
  {
    (*(v27 + 16))(v27, v8);
  }
}

- (void)presentViewDelegate
{
  delegate = [(UserTransparencyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(UserTransparencyViewController *)self delegate];
    [delegate2 userTransparencyViewControllerDidLoad:self];
  }

  [(UserTransparencyViewController *)self _reportUserTransparencyViewControllerEventWithType:@"PrivacyUserTransparencyDidAppear" withCompletionHandler:0];
}

- (void)errorDelegate
{
  delegate = [(UserTransparencyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(UserTransparencyViewController *)self delegate];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UserTransparencyViewControllerErrorDomain" code:0 userInfo:&unk_287F8ED30];
    [delegate2 userTransparencyViewController:self didFailWithError:v5];
  }
}

- (void)_showErrorMessage:(id)message
{
  messageCopy = message;
  [(UIActivityIndicatorView *)self->activityIndicator stopAnimating];
  errorLabel = [(UserTransparencyViewController *)self errorLabel];

  if (!errorLabel)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(UserTransparencyViewController *)self setErrorLabel:v6];

    errorLabel2 = [(UserTransparencyViewController *)self errorLabel];
    [errorLabel2 setNumberOfLines:0];

    labelColor = [MEMORY[0x277D75348] labelColor];
    errorLabel3 = [(UserTransparencyViewController *)self errorLabel];
    [errorLabel3 setTextColor:labelColor];

    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    errorLabel4 = [(UserTransparencyViewController *)self errorLabel];
    [errorLabel4 setFont:v10];

    errorLabel5 = [(UserTransparencyViewController *)self errorLabel];
    [errorLabel5 setAdjustsFontForContentSizeCategory:1];

    errorLabel6 = [(UserTransparencyViewController *)self errorLabel];
    [errorLabel6 setTextAlignment:1];

    errorLabel7 = [(UserTransparencyViewController *)self errorLabel];
    [errorLabel7 setTranslatesAutoresizingMaskIntoConstraints:0];

    view = [(UserTransparencyViewController *)self view];
    errorLabel8 = [(UserTransparencyViewController *)self errorLabel];
    [view addSubview:errorLabel8];

    errorLabel9 = [(UserTransparencyViewController *)self errorLabel];
    v18 = _NSDictionaryOfVariableBindings(&cfstr_Errorlabel.isa, errorLabel9, 0);
    view2 = [(UserTransparencyViewController *)self view];
    v20 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-20-[errorLabel]-20-|" options:0 metrics:0 views:v18];
    [view2 addConstraints:v20];

    view3 = [(UserTransparencyViewController *)self view];
    v22 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[errorLabel]-|" options:0 metrics:0 views:v18];
    [view3 addConstraints:v22];
  }

  if (!messageCopy)
  {
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    messageCopy = [v23 localizedStringForKey:@"Advertising information isn’t available right now. Try again later." value:&stru_287F8CB38 table:0];
  }

  errorLabel10 = [(UserTransparencyViewController *)self errorLabel];
  [errorLabel10 setText:messageCopy];

  errorLabel11 = [(UserTransparencyViewController *)self errorLabel];
  [errorLabel11 setHidden:0];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  [(UIActivityIndicatorView *)self->activityIndicator stopAnimating:view];
  [(UserTransparencyViewController *)self _hideErrorMessage];

  [(UserTransparencyViewController *)self _reportUserTransparencyViewControllerEventWithType:@"PrivacyUserTransparencyDidRenderTransparency" withCompletionHandler:0];
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  v6 = [(UserTransparencyViewController *)self myUserPrivacyWebView:view];
  [v6 removeFromSuperview];

  [(UserTransparencyViewController *)self _showErrorMessage:0];
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  v6 = [(UserTransparencyViewController *)self myUserPrivacyWebView:view];
  [v6 removeFromSuperview];

  [(UserTransparencyViewController *)self _showErrorMessage:0];
}

- (void)_hideErrorMessage
{
  errorLabel = [(UserTransparencyViewController *)self errorLabel];

  if (errorLabel)
  {
    errorLabel2 = [(UserTransparencyViewController *)self errorLabel];
    [errorLabel2 setHidden:1];
  }
}

- (void)_closeViewController:(id)controller
{
  presentingViewController = [(UserTransparencyViewController *)self presentingViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__UserTransparencyViewController__closeViewController___block_invoke;
  v5[3] = &unk_279DD95D0;
  v5[4] = self;
  [presentingViewController dismissViewControllerAnimated:1 completion:v5];

  [(UserTransparencyViewController *)self _reportUserTransparencyViewControllerEventWithType:@"PrivacyUserTransparencyDidDisappear" withCompletionHandler:0];
}

void __55__UserTransparencyViewController__closeViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 userTransparencyViewControllerDidDismiss:*(a1 + 32)];
  }
}

- (void)immediatelyLoadViewControllerBeforeNetworkRequest
{
  v104[3] = *MEMORY[0x277D85DE8];
  if ([(UserTransparencyViewController *)self isiPad])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(UserTransparencyViewController *)self setModalPresentationStyle:v3];
  [(UserTransparencyViewController *)self setModalTransitionStyle:0];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(UserTransparencyViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  [(UserTransparencyViewController *)self setEdgesForExtendedLayout:0];
  v99 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = objc_alloc_init(MEMORY[0x277D75780]);
  [(UserTransparencyViewController *)self setTransparencyNavBar:v6];

  transparencyNavBar = [(UserTransparencyViewController *)self transparencyNavBar];
  [transparencyNavBar setTranslatesAutoresizingMaskIntoConstraints:0];

  transparencyNavBar2 = [(UserTransparencyViewController *)self transparencyNavBar];
  [transparencyNavBar2 setTranslucent:0];

  transparencyNavBar3 = [(UserTransparencyViewController *)self transparencyNavBar];
  [transparencyNavBar3 setAutoresizesSubviews:1];

  transparencyNavBar4 = [(UserTransparencyViewController *)self transparencyNavBar];
  [transparencyNavBar4 setAutoresizingMask:18];

  view2 = [(UserTransparencyViewController *)self view];
  transparencyNavBar5 = [(UserTransparencyViewController *)self transparencyNavBar];
  [view2 addSubview:transparencyNavBar5];

  v85 = MEMORY[0x277CCAAD0];
  transparencyNavBar6 = [(UserTransparencyViewController *)self transparencyNavBar];
  topAnchor = [transparencyNavBar6 topAnchor];
  view3 = [(UserTransparencyViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v89 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v104[0] = v89;
  transparencyNavBar7 = [(UserTransparencyViewController *)self transparencyNavBar];
  rightAnchor = [transparencyNavBar7 rightAnchor];
  view4 = [(UserTransparencyViewController *)self view];
  rightAnchor2 = [view4 rightAnchor];
  v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v104[1] = v15;
  transparencyNavBar8 = [(UserTransparencyViewController *)self transparencyNavBar];
  leftAnchor = [transparencyNavBar8 leftAnchor];
  view5 = [(UserTransparencyViewController *)self view];
  leftAnchor2 = [view5 leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v104[2] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:3];
  [v85 activateConstraints:v21];

  v22 = objc_alloc(MEMORY[0x277D757A8]);
  v23 = [v99 localizedStringForKey:@"Ad Targeting Information" value:&stru_287F8CB38 table:0];
  v24 = [v22 initWithTitle:v23];

  [v24 setStyle:0];
  v25 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__closeViewController_];
  [v25 setAccessibilityLabel:@"Close"];
  v96 = v25;
  [v24 setLeftBarButtonItem:v25];
  v98 = v24;
  v103 = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
  transparencyNavBar9 = [(UserTransparencyViewController *)self transparencyNavBar];
  [transparencyNavBar9 setItems:v26];

  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v30 = objc_alloc_init(MEMORY[0x277D75788]);
    [v30 configureWithOpaqueBackground];
    systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v30 setBackgroundColor:systemBackgroundColor2];

    v101 = *MEMORY[0x277D740C0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v102 = whiteColor;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    [v30 setTitleTextAttributes:v33];

    transparencyNavBar10 = [(UserTransparencyViewController *)self transparencyNavBar];
    [transparencyNavBar10 setStandardAppearance:v30];

    transparencyNavBar11 = [(UserTransparencyViewController *)self transparencyNavBar];
    [transparencyNavBar11 setScrollEdgeAppearance:v30];

    transparencyNavBar12 = [(UserTransparencyViewController *)self transparencyNavBar];
    [transparencyNavBar12 setTranslucent:0];
  }

  v37 = objc_alloc_init(MEMORY[0x277CE3830]);
  v38 = MEMORY[0x277CCACA8];
  v39 = [MEMORY[0x277CCABB0] numberWithBool:{-[UserTransparencyViewController renderingStatusForPAPermission](self, "renderingStatusForPAPermission")}];
  v94 = [v38 stringWithFormat:@"        window.transparency = {            isLocationPermissionGranted: () => { return 0 }, isPAEnabled: () => { return %@ }         }    ", v39];

  v90 = v37;
  v92 = [objc_alloc(MEMORY[0x277CE3838]) initWithSource:v94 injectionTime:0 forMainFrameOnly:1];
  [v37 addUserScript:v92];
  v88 = objc_alloc_init(MEMORY[0x277CE3858]);
  [v88 setUserContentController:v37];
  v40 = objc_alloc(MEMORY[0x277CE3850]);
  v41 = [v40 initWithFrame:v88 configuration:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(UserTransparencyViewController *)self setMyUserPrivacyWebView:v41];

  myUserPrivacyWebView = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [myUserPrivacyWebView setTranslatesAutoresizingMaskIntoConstraints:0];

  myUserPrivacyWebView2 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [myUserPrivacyWebView2 setNavigationDelegate:self];

  myUserPrivacyWebView3 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [myUserPrivacyWebView3 setOpaque:0];

  myUserPrivacyWebView4 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  scrollView = [myUserPrivacyWebView4 scrollView];
  [scrollView setContentInsetAdjustmentBehavior:2];

  myUserPrivacyWebView5 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [myUserPrivacyWebView5 setAutoresizesSubviews:1];

  myUserPrivacyWebView6 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [myUserPrivacyWebView6 setAutoresizingMask:18];

  v49 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  activityIndicator = self->activityIndicator;
  self->activityIndicator = v49;

  myUserPrivacyWebView7 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [myUserPrivacyWebView7 frame];
  v53 = v52 * 0.5;
  myUserPrivacyWebView8 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [myUserPrivacyWebView8 frame];
  v56 = v55 * 0.5;
  transparencyNavBar13 = [(UserTransparencyViewController *)self transparencyNavBar];
  [transparencyNavBar13 frame];
  [(UIActivityIndicatorView *)self->activityIndicator setCenter:v53, v56 - v58];

  [(UIActivityIndicatorView *)self->activityIndicator setAutoresizingMask:45];
  [(UIActivityIndicatorView *)self->activityIndicator startAnimating];
  myUserPrivacyWebView9 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [myUserPrivacyWebView9 addSubview:self->activityIndicator];

  view6 = [(UserTransparencyViewController *)self view];
  myUserPrivacyWebView10 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [view6 addSubview:myUserPrivacyWebView10];

  v75 = MEMORY[0x277CCAAD0];
  myUserPrivacyWebView11 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  topAnchor3 = [myUserPrivacyWebView11 topAnchor];
  transparencyNavBar14 = [(UserTransparencyViewController *)self transparencyNavBar];
  bottomAnchor = [transparencyNavBar14 bottomAnchor];
  v80 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v100[0] = v80;
  myUserPrivacyWebView12 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  bottomAnchor2 = [myUserPrivacyWebView12 bottomAnchor];
  view7 = [(UserTransparencyViewController *)self view];
  bottomAnchor3 = [view7 bottomAnchor];
  v74 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v100[1] = v74;
  myUserPrivacyWebView13 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  rightAnchor3 = [myUserPrivacyWebView13 rightAnchor];
  view8 = [(UserTransparencyViewController *)self view];
  rightAnchor4 = [view8 rightAnchor];
  v65 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v100[2] = v65;
  myUserPrivacyWebView14 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  leftAnchor3 = [myUserPrivacyWebView14 leftAnchor];
  view9 = [(UserTransparencyViewController *)self view];
  leftAnchor4 = [view9 leftAnchor];
  v70 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v100[3] = v70;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:4];
  [v75 activateConstraints:v71];

  v72 = *MEMORY[0x277D85DE8];
}

- (void)loadWebView
{
  userTransparencyRendererURL = [(UserTransparencyViewController *)self userTransparencyRendererURL];

  if (userTransparencyRendererURL)
  {
    v4 = MEMORY[0x277CBEBC0];
    userTransparencyRendererURL2 = [(UserTransparencyViewController *)self userTransparencyRendererURL];
    v12 = [v4 URLWithString:userTransparencyRendererURL2];

    v6 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v12];
    [v6 setHTTPMethod:@"POST"];
    userTransparencyRendererPayload = [(UserTransparencyViewController *)self userTransparencyRendererPayload];
    v8 = [userTransparencyRendererPayload dataUsingEncoding:4];
    [v6 setHTTPBody:v8];

    myUserPrivacyWebView = [(UserTransparencyViewController *)self myUserPrivacyWebView];
    v10 = [myUserPrivacyWebView loadRequest:v6];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: We don't have the URL for the rendering server.", objc_opt_class()];
    _ADLog();

    [(UserTransparencyViewController *)self _showErrorMessage:0];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  request = [actionCopy request];
  v10 = [request URL];

  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  absoluteString = [v10 absoluteString];
  v14 = [v11 stringWithFormat:@"%@ The URL for the link generated by the rendering server is: %@.", v12, absoluteString];
  _ADLog();

  v15 = [MEMORY[0x277CCACE0] componentsWithURL:v10 resolvingAgainstBaseURL:0];
  path = [v15 path];
  lastPathComponent = [path lastPathComponent];
  if ([lastPathComponent rangeOfString:@"prefs:root=Privacy&path=ADVERTISING" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  path2 = [v15 path];
  lastPathComponent2 = [path2 lastPathComponent];
  if ([lastPathComponent2 rangeOfString:@"App-Prefs:root=Privacy&path=ADVERTISING" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {

LABEL_8:
    goto LABEL_9;
  }

  [v10 absoluteString];
  v20 = v10;
  v21 = v15;
  v22 = handlerCopy;
  v24 = v23 = actionCopy;
  v38 = [v24 containsString:@"Privacy_Advertising"];

  actionCopy = v23;
  handlerCopy = v22;
  v15 = v21;
  v10 = v20;

  if (v38)
  {
LABEL_9:
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v29 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Privacy&path=ADVERTISING"];
    [defaultWorkspace openSensitiveURL:v29 withOptions:MEMORY[0x277CBEC10]];

    presentingViewController = [(UserTransparencyViewController *)self presentingViewController];
    v31 = presentingViewController;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __90__UserTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
    v41[3] = &unk_279DD95D0;
    v41[4] = self;
    v32 = v41;
LABEL_10:
    [presentingViewController dismissViewControllerAnimated:1 completion:v32];

    [(UserTransparencyViewController *)self _reportUserTransparencyViewControllerEventWithType:@"PrivacyUserTransparencyDidLinkOut" withCompletionHandler:0];
    [(UserTransparencyViewController *)self _reportUserTransparencyViewControllerEventWithType:@"PrivacyUserTransparencyDidDisappear" withCompletionHandler:0];
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_11;
  }

  path3 = [v15 path];
  lastPathComponent3 = [path3 lastPathComponent];
  v27 = [lastPathComponent3 rangeOfString:@"prefs:root=Privacy&path=LOCATION" options:1];

  if (v27 != 0x7FFFFFFFFFFFFFFFLL)
  {
    defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v34 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Privacy&path=LOCATION"];
    [defaultWorkspace2 openSensitiveURL:v34 withOptions:MEMORY[0x277CBEC10]];

    presentingViewController = [(UserTransparencyViewController *)self presentingViewController];
    v31 = presentingViewController;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __90__UserTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_2;
    v40[3] = &unk_279DD95D0;
    v40[4] = self;
    v32 = v40;
    goto LABEL_10;
  }

  if (![actionCopy navigationType])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    request2 = [actionCopy request];
    v37 = [request2 URL];
    [mEMORY[0x277D75128] openURL:v37 options:MEMORY[0x277CBEC10] completionHandler:&__block_literal_global];

    presentingViewController = [(UserTransparencyViewController *)self presentingViewController];
    v31 = presentingViewController;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __90__UserTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_4;
    v39[3] = &unk_279DD95D0;
    v39[4] = self;
    v32 = v39;
    goto LABEL_10;
  }

  handlerCopy[2](handlerCopy, 1);
LABEL_11:
}

void __90__UserTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 userTransparencyViewControllerDidDismiss:*(a1 + 32)];
  }
}

void __90__UserTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 userTransparencyViewControllerDidDismiss:*(a1 + 32)];
  }
}

void __90__UserTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_3(uint64_t a1, int a2)
{
  v2 = @"NOT";
  if (a2)
  {
    v2 = @"successfully";
  }

  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"This is an external link. Launch it in Safari and not our WebView. The link can %@ be opened", v2];
  _ADLog();
}

void __90__UserTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 userTransparencyViewControllerDidDismiss:*(a1 + 32)];
  }
}

- (void)_reportUserTransparencyViewControllerEventWithType:(id)type withCompletionHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  workQueue = [MEMORY[0x277CE96B8] workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __107__UserTransparencyViewController__reportUserTransparencyViewControllerEventWithType_withCompletionHandler___block_invoke;
  v10[3] = &unk_279DD96B8;
  v11 = typeCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = typeCopy;
  [workQueue addOperationWithBlock:v10];
}

void __107__UserTransparencyViewController__reportUserTransparencyViewControllerEventWithType_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE9638] sharedInstance];
  v3 = [v2 defaultServerURL];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requesting ADLogAnalyticsRequest with ADAnalyticsEvent for %@ event to: %@", *(a1 + 32), v3];
  _ADLog();

  v5 = [MEMORY[0x277CE96B8] sharedInstance];
  v6 = [MEMORY[0x277CE9658] sharedInstance];
  v7 = objc_alloc_init(MEMORY[0x277CE9668]);
  [v7 setBundleID:*MEMORY[0x277CE96F8]];
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
  v18[2] = __107__UserTransparencyViewController__reportUserTransparencyViewControllerEventWithType_withCompletionHandler___block_invoke_2;
  v18[3] = &unk_279DD9690;
  v16 = *(a1 + 40);
  v19 = v7;
  v20 = v16;
  v17 = v7;
  [v5 handleRequest:v17 serverURL:v3 responseHandler:v18];
}

void __107__UserTransparencyViewController__reportUserTransparencyViewControllerEventWithType_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
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

- (id)normalizeChineseLanguage:(id)language
{
  languageCopy = language;
  v4 = @"zh_HK";
  if (([languageCopy hasPrefix:@"zh_HK"] & 1) == 0)
  {
    v4 = @"zh_TW";
    if (([languageCopy hasPrefix:@"zh_TW"] & 1) == 0)
    {
      if ([languageCopy hasPrefix:@"zh-Hant"])
      {
        v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:languageCopy];
        regionCode = [v5 regionCode];

        if ([regionCode isEqualToString:@"HK"])
        {
          v7 = @"zh_HK";
        }

        else
        {
          v7 = @"zh_TW";
        }

        v4 = v7;
      }

      else
      {
        v4 = @"zh_CN";
      }
    }
  }

  return v4;
}

@end