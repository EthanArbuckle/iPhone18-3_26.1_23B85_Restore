@interface UserTransparencyViewController
- (UserTransparencyViewController)initWithUserTransparencyDetails:(id)a3;
- (id)normalizeChineseLanguage:(id)a3;
- (void)_closeViewController:(id)a3;
- (void)_commonInit;
- (void)_hideErrorMessage;
- (void)_reportUserTransparencyViewControllerEventWithType:(id)a3 withCompletionHandler:(id)a4;
- (void)_showErrorMessage:(id)a3;
- (void)errorDelegate;
- (void)immediatelyLoadViewControllerBeforeNetworkRequest;
- (void)loadWebView;
- (void)presentViewDelegate;
- (void)requestUserTransparencyDetailsWithCompletionHandler:(id)a3;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation UserTransparencyViewController

- (UserTransparencyViewController)initWithUserTransparencyDetails:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UserTransparencyViewController;
  v5 = [(UserTransparencyViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(UserTransparencyViewController *)v5 setUserTransparencyDetails:v4];
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
    v4 = [MEMORY[0x277CE9658] sharedInstance];
    [v4 loadIDs];

    v5 = [MEMORY[0x277CE9638] sharedInstance];
    self->_renderingStatusForPAPermission = [v5 isPersonalizedAdsEnabled];

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

- (void)requestUserTransparencyDetailsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CE96B8] sharedInstance];
  v6 = [MEMORY[0x277CE9638] sharedInstance];
  v7 = [v6 localeIdentifier];
  v8 = [v6 localeIdentifier];
  v9 = [v8 hasPrefix:@"zh"];

  if (v9)
  {
    v10 = [v6 localeIdentifier];
    v11 = [(UserTransparencyViewController *)self normalizeChineseLanguage:v10];

    v7 = v11;
  }

  v12 = [MEMORY[0x277CE96B8] workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__UserTransparencyViewController_requestUserTransparencyDetailsWithCompletionHandler___block_invoke;
  v17[3] = &unk_279DD9648;
  v18 = v6;
  v19 = v7;
  v20 = v5;
  v21 = self;
  v22 = v4;
  v13 = v4;
  v14 = v5;
  v15 = v7;
  v16 = v6;
  [v12 addOperationWithBlock:v17];
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
  v3 = [(UserTransparencyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UserTransparencyViewController *)self delegate];
    [v5 userTransparencyViewControllerDidLoad:self];
  }

  [(UserTransparencyViewController *)self _reportUserTransparencyViewControllerEventWithType:@"PrivacyUserTransparencyDidAppear" withCompletionHandler:0];
}

- (void)errorDelegate
{
  v3 = [(UserTransparencyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(UserTransparencyViewController *)self delegate];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UserTransparencyViewControllerErrorDomain" code:0 userInfo:&unk_287F8ED30];
    [v6 userTransparencyViewController:self didFailWithError:v5];
  }
}

- (void)_showErrorMessage:(id)a3
{
  v26 = a3;
  [(UIActivityIndicatorView *)self->activityIndicator stopAnimating];
  v4 = [(UserTransparencyViewController *)self errorLabel];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(UserTransparencyViewController *)self setErrorLabel:v6];

    v7 = [(UserTransparencyViewController *)self errorLabel];
    [v7 setNumberOfLines:0];

    v8 = [MEMORY[0x277D75348] labelColor];
    v9 = [(UserTransparencyViewController *)self errorLabel];
    [v9 setTextColor:v8];

    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v11 = [(UserTransparencyViewController *)self errorLabel];
    [v11 setFont:v10];

    v12 = [(UserTransparencyViewController *)self errorLabel];
    [v12 setAdjustsFontForContentSizeCategory:1];

    v13 = [(UserTransparencyViewController *)self errorLabel];
    [v13 setTextAlignment:1];

    v14 = [(UserTransparencyViewController *)self errorLabel];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [(UserTransparencyViewController *)self view];
    v16 = [(UserTransparencyViewController *)self errorLabel];
    [v15 addSubview:v16];

    v17 = [(UserTransparencyViewController *)self errorLabel];
    v18 = _NSDictionaryOfVariableBindings(&cfstr_Errorlabel.isa, v17, 0);
    v19 = [(UserTransparencyViewController *)self view];
    v20 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-20-[errorLabel]-20-|" options:0 metrics:0 views:v18];
    [v19 addConstraints:v20];

    v21 = [(UserTransparencyViewController *)self view];
    v22 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[errorLabel]-|" options:0 metrics:0 views:v18];
    [v21 addConstraints:v22];
  }

  if (!v26)
  {
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v23 localizedStringForKey:@"Advertising information isn’t available right now. Try again later." value:&stru_287F8CB38 table:0];
  }

  v24 = [(UserTransparencyViewController *)self errorLabel];
  [v24 setText:v26];

  v25 = [(UserTransparencyViewController *)self errorLabel];
  [v25 setHidden:0];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  [(UIActivityIndicatorView *)self->activityIndicator stopAnimating:a3];
  [(UserTransparencyViewController *)self _hideErrorMessage];

  [(UserTransparencyViewController *)self _reportUserTransparencyViewControllerEventWithType:@"PrivacyUserTransparencyDidRenderTransparency" withCompletionHandler:0];
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v6 = [(UserTransparencyViewController *)self myUserPrivacyWebView:a3];
  [v6 removeFromSuperview];

  [(UserTransparencyViewController *)self _showErrorMessage:0];
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v6 = [(UserTransparencyViewController *)self myUserPrivacyWebView:a3];
  [v6 removeFromSuperview];

  [(UserTransparencyViewController *)self _showErrorMessage:0];
}

- (void)_hideErrorMessage
{
  v3 = [(UserTransparencyViewController *)self errorLabel];

  if (v3)
  {
    v4 = [(UserTransparencyViewController *)self errorLabel];
    [v4 setHidden:1];
  }
}

- (void)_closeViewController:(id)a3
{
  v4 = [(UserTransparencyViewController *)self presentingViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__UserTransparencyViewController__closeViewController___block_invoke;
  v5[3] = &unk_279DD95D0;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];

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
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  v5 = [(UserTransparencyViewController *)self view];
  [v5 setBackgroundColor:v4];

  [(UserTransparencyViewController *)self setEdgesForExtendedLayout:0];
  v99 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = objc_alloc_init(MEMORY[0x277D75780]);
  [(UserTransparencyViewController *)self setTransparencyNavBar:v6];

  v7 = [(UserTransparencyViewController *)self transparencyNavBar];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(UserTransparencyViewController *)self transparencyNavBar];
  [v8 setTranslucent:0];

  v9 = [(UserTransparencyViewController *)self transparencyNavBar];
  [v9 setAutoresizesSubviews:1];

  v10 = [(UserTransparencyViewController *)self transparencyNavBar];
  [v10 setAutoresizingMask:18];

  v11 = [(UserTransparencyViewController *)self view];
  v12 = [(UserTransparencyViewController *)self transparencyNavBar];
  [v11 addSubview:v12];

  v85 = MEMORY[0x277CCAAD0];
  v97 = [(UserTransparencyViewController *)self transparencyNavBar];
  v93 = [v97 topAnchor];
  v95 = [(UserTransparencyViewController *)self view];
  v91 = [v95 topAnchor];
  v89 = [v93 constraintEqualToAnchor:v91 constant:20.0];
  v104[0] = v89;
  v87 = [(UserTransparencyViewController *)self transparencyNavBar];
  v83 = [v87 rightAnchor];
  v13 = [(UserTransparencyViewController *)self view];
  v14 = [v13 rightAnchor];
  v15 = [v83 constraintEqualToAnchor:v14];
  v104[1] = v15;
  v16 = [(UserTransparencyViewController *)self transparencyNavBar];
  v17 = [v16 leftAnchor];
  v18 = [(UserTransparencyViewController *)self view];
  v19 = [v18 leftAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
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
  v27 = [(UserTransparencyViewController *)self transparencyNavBar];
  [v27 setItems:v26];

  v28 = [MEMORY[0x277D75C80] currentTraitCollection];
  v29 = [v28 userInterfaceStyle];

  if (v29 == 2)
  {
    v30 = objc_alloc_init(MEMORY[0x277D75788]);
    [v30 configureWithOpaqueBackground];
    v31 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v30 setBackgroundColor:v31];

    v101 = *MEMORY[0x277D740C0];
    v32 = [MEMORY[0x277D75348] whiteColor];
    v102 = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    [v30 setTitleTextAttributes:v33];

    v34 = [(UserTransparencyViewController *)self transparencyNavBar];
    [v34 setStandardAppearance:v30];

    v35 = [(UserTransparencyViewController *)self transparencyNavBar];
    [v35 setScrollEdgeAppearance:v30];

    v36 = [(UserTransparencyViewController *)self transparencyNavBar];
    [v36 setTranslucent:0];
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

  v42 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

  v43 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [v43 setNavigationDelegate:self];

  v44 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [v44 setOpaque:0];

  v45 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  v46 = [v45 scrollView];
  [v46 setContentInsetAdjustmentBehavior:2];

  v47 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [v47 setAutoresizesSubviews:1];

  v48 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [v48 setAutoresizingMask:18];

  v49 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  activityIndicator = self->activityIndicator;
  self->activityIndicator = v49;

  v51 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [v51 frame];
  v53 = v52 * 0.5;
  v54 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [v54 frame];
  v56 = v55 * 0.5;
  v57 = [(UserTransparencyViewController *)self transparencyNavBar];
  [v57 frame];
  [(UIActivityIndicatorView *)self->activityIndicator setCenter:v53, v56 - v58];

  [(UIActivityIndicatorView *)self->activityIndicator setAutoresizingMask:45];
  [(UIActivityIndicatorView *)self->activityIndicator startAnimating];
  v59 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [v59 addSubview:self->activityIndicator];

  v60 = [(UserTransparencyViewController *)self view];
  v61 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  [v60 addSubview:v61];

  v75 = MEMORY[0x277CCAAD0];
  v86 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  v82 = [v86 topAnchor];
  v84 = [(UserTransparencyViewController *)self transparencyNavBar];
  v81 = [v84 bottomAnchor];
  v80 = [v82 constraintEqualToAnchor:v81];
  v100[0] = v80;
  v79 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  v77 = [v79 bottomAnchor];
  v78 = [(UserTransparencyViewController *)self view];
  v76 = [v78 bottomAnchor];
  v74 = [v77 constraintEqualToAnchor:v76];
  v100[1] = v74;
  v73 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  v62 = [v73 rightAnchor];
  v63 = [(UserTransparencyViewController *)self view];
  v64 = [v63 rightAnchor];
  v65 = [v62 constraintEqualToAnchor:v64];
  v100[2] = v65;
  v66 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
  v67 = [v66 leftAnchor];
  v68 = [(UserTransparencyViewController *)self view];
  v69 = [v68 leftAnchor];
  v70 = [v67 constraintEqualToAnchor:v69];
  v100[3] = v70;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:4];
  [v75 activateConstraints:v71];

  v72 = *MEMORY[0x277D85DE8];
}

- (void)loadWebView
{
  v3 = [(UserTransparencyViewController *)self userTransparencyRendererURL];

  if (v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [(UserTransparencyViewController *)self userTransparencyRendererURL];
    v12 = [v4 URLWithString:v5];

    v6 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v12];
    [v6 setHTTPMethod:@"POST"];
    v7 = [(UserTransparencyViewController *)self userTransparencyRendererPayload];
    v8 = [v7 dataUsingEncoding:4];
    [v6 setHTTPBody:v8];

    v9 = [(UserTransparencyViewController *)self myUserPrivacyWebView];
    v10 = [v9 loadRequest:v6];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: We don't have the URL for the rendering server.", objc_opt_class()];
    _ADLog();

    [(UserTransparencyViewController *)self _showErrorMessage:0];
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 request];
  v10 = [v9 URL];

  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = [v10 absoluteString];
  v14 = [v11 stringWithFormat:@"%@ The URL for the link generated by the rendering server is: %@.", v12, v13];
  _ADLog();

  v15 = [MEMORY[0x277CCACE0] componentsWithURL:v10 resolvingAgainstBaseURL:0];
  v16 = [v15 path];
  v17 = [v16 lastPathComponent];
  if ([v17 rangeOfString:@"prefs:root=Privacy&path=ADVERTISING" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v18 = [v15 path];
  v19 = [v18 lastPathComponent];
  if ([v19 rangeOfString:@"App-Prefs:root=Privacy&path=ADVERTISING" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {

LABEL_8:
    goto LABEL_9;
  }

  [v10 absoluteString];
  v20 = v10;
  v21 = v15;
  v22 = v8;
  v24 = v23 = v7;
  v38 = [v24 containsString:@"Privacy_Advertising"];

  v7 = v23;
  v8 = v22;
  v15 = v21;
  v10 = v20;

  if (v38)
  {
LABEL_9:
    v28 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v29 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Privacy&path=ADVERTISING"];
    [v28 openSensitiveURL:v29 withOptions:MEMORY[0x277CBEC10]];

    v30 = [(UserTransparencyViewController *)self presentingViewController];
    v31 = v30;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __90__UserTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
    v41[3] = &unk_279DD95D0;
    v41[4] = self;
    v32 = v41;
LABEL_10:
    [v30 dismissViewControllerAnimated:1 completion:v32];

    [(UserTransparencyViewController *)self _reportUserTransparencyViewControllerEventWithType:@"PrivacyUserTransparencyDidLinkOut" withCompletionHandler:0];
    [(UserTransparencyViewController *)self _reportUserTransparencyViewControllerEventWithType:@"PrivacyUserTransparencyDidDisappear" withCompletionHandler:0];
    v8[2](v8, 0);
    goto LABEL_11;
  }

  v25 = [v15 path];
  v26 = [v25 lastPathComponent];
  v27 = [v26 rangeOfString:@"prefs:root=Privacy&path=LOCATION" options:1];

  if (v27 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v34 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Privacy&path=LOCATION"];
    [v33 openSensitiveURL:v34 withOptions:MEMORY[0x277CBEC10]];

    v30 = [(UserTransparencyViewController *)self presentingViewController];
    v31 = v30;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __90__UserTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_2;
    v40[3] = &unk_279DD95D0;
    v40[4] = self;
    v32 = v40;
    goto LABEL_10;
  }

  if (![v7 navigationType])
  {
    v35 = [MEMORY[0x277D75128] sharedApplication];
    v36 = [v7 request];
    v37 = [v36 URL];
    [v35 openURL:v37 options:MEMORY[0x277CBEC10] completionHandler:&__block_literal_global];

    v30 = [(UserTransparencyViewController *)self presentingViewController];
    v31 = v30;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __90__UserTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_4;
    v39[3] = &unk_279DD95D0;
    v39[4] = self;
    v32 = v39;
    goto LABEL_10;
  }

  v8[2](v8, 1);
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

- (void)_reportUserTransparencyViewControllerEventWithType:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CE96B8] workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __107__UserTransparencyViewController__reportUserTransparencyViewControllerEventWithType_withCompletionHandler___block_invoke;
  v10[3] = &unk_279DD96B8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 addOperationWithBlock:v10];
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

- (id)normalizeChineseLanguage:(id)a3
{
  v3 = a3;
  v4 = @"zh_HK";
  if (([v3 hasPrefix:@"zh_HK"] & 1) == 0)
  {
    v4 = @"zh_TW";
    if (([v3 hasPrefix:@"zh_TW"] & 1) == 0)
    {
      if ([v3 hasPrefix:@"zh-Hant"])
      {
        v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v3];
        v6 = [v5 regionCode];

        if ([v6 isEqualToString:@"HK"])
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