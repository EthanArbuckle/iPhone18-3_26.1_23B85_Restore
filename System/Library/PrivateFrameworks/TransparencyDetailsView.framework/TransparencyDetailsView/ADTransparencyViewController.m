@interface ADTransparencyViewController
- (ADTransparencyViewController)initWithTransparencyDetails:(id)a3;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (void)_closeViewController:(id)a3;
- (void)_commonInit;
- (void)_hideErrorMessage;
- (void)_postDismissedNotification;
- (void)_reportTransparencyViewControllerEventWithType:(id)a3 withCompletionHandler:(id)a4;
- (void)_showErrorMessage:(id)a3;
- (void)configureWebView;
- (void)errorDelegate;
- (void)prepareRenderingPayload;
- (void)presentViewDelegate;
- (void)renderWebView;
- (void)requestViewWithTransparencyDetails:(id)a3;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation ADTransparencyViewController

- (ADTransparencyViewController)initWithTransparencyDetails:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ADTransparencyViewController;
  v5 = [(ADTransparencyViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(ADTransparencyViewController *)v5 setTransparencyDetails:v4];
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

- (void)requestViewWithTransparencyDetails:(id)a3
{
  v4 = MEMORY[0x277CBEA90];
  v5 = a3;
  v6 = [[v4 alloc] initWithBase64EncodedString:v5 options:0];

  v21 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v21];
  v8 = v21;
  transparencyDetailsData = self->_transparencyDetailsData;
  self->_transparencyDetailsData = v7;

  if (v8)
  {
    v20 = [objc_alloc(MEMORY[0x277CE96C8]) initWithData:v6];
    v10 = [v20 dictionaryRepresentation];
    v11 = self->_transparencyDetailsData;
    self->_transparencyDetailsData = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBFC10]);
    v13 = [v12 authorizationStatus] - 3 < 2;
    v14 = objc_alloc_init(MEMORY[0x277D23658]);
    v15 = [v14 personalizedAds];
    v16 = self->_transparencyDetailsData;
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v13];
    [(NSDictionary *)v16 setValue:v17 forKey:@"renderingStateForLocation"];

    v18 = self->_transparencyDetailsData;
    v19 = [MEMORY[0x277CCABB0] numberWithBool:v15];
    [(NSDictionary *)v18 setValue:v19 forKey:@"renderingStateForPA"];
  }
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 statusBarOrientation];

  return v3;
}

- (void)_commonInit
{
  v55[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Connection to ADTransparencyViewController established with TransparencyDetailsView framework."];
  _ADLog();

  v51 = [MEMORY[0x277CE9638] sharedInstance];
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
  v6 = [MEMORY[0x277D75348] systemBackgroundColor];
  v7 = [(ADTransparencyViewController *)self view];
  [v7 setBackgroundColor:v6];

  [(ADTransparencyViewController *)self setEdgesForExtendedLayout:0];
  v8 = objc_alloc_init(MEMORY[0x277D75780]);
  [(ADTransparencyViewController *)self setTransparencyNavBar:v8];

  v9 = [(ADTransparencyViewController *)self transparencyNavBar];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(ADTransparencyViewController *)self transparencyNavBar];
  [v10 setTranslucent:0];

  v11 = [(ADTransparencyViewController *)self transparencyNavBar];
  [v11 setAutoresizesSubviews:1];

  v12 = [(ADTransparencyViewController *)self transparencyNavBar];
  [v12 setAutoresizingMask:2];

  v13 = [(ADTransparencyViewController *)self view];
  v14 = [(ADTransparencyViewController *)self transparencyNavBar];
  [v13 addSubview:v14];

  v43 = MEMORY[0x277CCAAD0];
  v49 = [(ADTransparencyViewController *)self transparencyNavBar];
  v47 = [v49 topAnchor];
  v48 = [(ADTransparencyViewController *)self view];
  v46 = [v48 topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46 constant:20.0];
  v55[0] = v45;
  v44 = [(ADTransparencyViewController *)self transparencyNavBar];
  v42 = [v44 rightAnchor];
  v15 = [(ADTransparencyViewController *)self view];
  v16 = [v15 rightAnchor];
  v17 = [v42 constraintEqualToAnchor:v16];
  v55[1] = v17;
  v18 = [(ADTransparencyViewController *)self transparencyNavBar];
  v19 = [v18 leftAnchor];
  v20 = [(ADTransparencyViewController *)self view];
  v21 = [v20 leftAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  v55[2] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
  [v43 activateConstraints:v23];

  v24 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__closeViewController_];
  [v24 setAccessibilityLabel:@"Close"];
  v25 = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [v25 localizedStringForKey:@"About This Ad" value:&stru_287F8CB38 table:0];

  v27 = [v51 storefrontLocalizationLanguage];
  v28 = [v50 localizedStringForKey:@"About This Ad" value:0 table:0 localization:v27];

  v29 = [objc_alloc(MEMORY[0x277D757A8]) initWithTitle:v28];
  [v29 setLeftBarButtonItem:v24];
  v30 = [MEMORY[0x277D75C80] currentTraitCollection];
  v31 = [v30 userInterfaceStyle];

  if (v31 == 2)
  {
    v32 = objc_alloc_init(MEMORY[0x277D75788]);
    [v32 configureWithOpaqueBackground];
    v33 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v32 setBackgroundColor:v33];

    v53 = *MEMORY[0x277D740C0];
    v34 = [MEMORY[0x277D75348] whiteColor];
    v54 = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    [v32 setTitleTextAttributes:v35];

    v36 = [(ADTransparencyViewController *)self transparencyNavBar];
    [v36 setStandardAppearance:v32];

    v37 = [(ADTransparencyViewController *)self transparencyNavBar];
    [v37 setScrollEdgeAppearance:v32];

    v38 = [(ADTransparencyViewController *)self transparencyNavBar];
    [v38 setTranslucent:0];
  }

  v52 = v29;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  v40 = [(ADTransparencyViewController *)self transparencyNavBar];
  [v40 setItems:v39];

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
  v8 = [(ADTransparencyViewController *)self view];
  [v8 frame];
  v10 = v9;
  v11 = [(ADTransparencyViewController *)self view];
  [v11 frame];
  v13 = [v7 initWithFrame:v55 configuration:{0.0, 44.0, v10, v12 + -44.0}];
  [(ADTransparencyViewController *)self setMyWebView:v13];

  v14 = [(ADTransparencyViewController *)self myWebView];
  [v14 setAllowsLinkPreview:0];

  v15 = [(ADTransparencyViewController *)self myWebView];
  [v15 setNavigationDelegate:self];

  v16 = [(ADTransparencyViewController *)self myWebView];
  [v16 setOpaque:0];

  v17 = [(ADTransparencyViewController *)self myWebView];
  v18 = [v17 scrollView];
  [v18 setContentInsetAdjustmentBehavior:2];

  v19 = [(ADTransparencyViewController *)self myWebView];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = [(ADTransparencyViewController *)self myWebView];
  [v20 setAutoresizesSubviews:1];

  v21 = [(ADTransparencyViewController *)self myWebView];
  [v21 setAutoresizingMask:18];

  v22 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  activityIndicator = self->activityIndicator;
  self->activityIndicator = v22;

  v24 = [(ADTransparencyViewController *)self myWebView];
  [v24 frame];
  v26 = v25 * 0.5;
  v27 = [(ADTransparencyViewController *)self myWebView];
  [v27 frame];
  [(UIActivityIndicatorView *)self->activityIndicator setCenter:v26, v28 * 0.5 + -44.0];

  [(UIActivityIndicatorView *)self->activityIndicator setAutoresizingMask:45];
  [(UIActivityIndicatorView *)self->activityIndicator startAnimating];
  v29 = [(ADTransparencyViewController *)self myWebView];
  [v29 addSubview:self->activityIndicator];

  v30 = [(ADTransparencyViewController *)self view];
  v31 = [(ADTransparencyViewController *)self myWebView];
  [v30 addSubview:v31];

  v45 = MEMORY[0x277CCAAD0];
  v54 = [(ADTransparencyViewController *)self myWebView];
  v52 = [v54 topAnchor];
  v53 = [(ADTransparencyViewController *)self transparencyNavBar];
  v51 = [v53 bottomAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v59[0] = v50;
  v49 = [(ADTransparencyViewController *)self myWebView];
  v47 = [v49 bottomAnchor];
  v48 = [(ADTransparencyViewController *)self view];
  v46 = [v48 bottomAnchor];
  v44 = [v47 constraintEqualToAnchor:v46];
  v59[1] = v44;
  v43 = [(ADTransparencyViewController *)self myWebView];
  v32 = [v43 rightAnchor];
  v33 = [(ADTransparencyViewController *)self view];
  v34 = [v33 rightAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  v59[2] = v35;
  v36 = [(ADTransparencyViewController *)self myWebView];
  v37 = [v36 leftAnchor];
  v38 = [(ADTransparencyViewController *)self view];
  v39 = [v38 leftAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  v59[3] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:4];
  [v45 activateConstraints:v41];

  v42 = *MEMORY[0x277D85DE8];
}

- (void)renderWebView
{
  v3 = [(ADTransparencyViewController *)self transparencyRendererURL];

  if (v3)
  {
    v29 = [MEMORY[0x277CE9638] sharedInstance];
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = MEMORY[0x277CCAD18];
    v6 = [v29 localeIdentifier];
    v7 = [v5 queryItemWithName:@"locale" value:v6];
    [v4 addObject:v7];

    v8 = MEMORY[0x277CCAD18];
    v9 = [v29 osIdentifier];
    v10 = [v8 queryItemWithName:@"os" value:v9];
    [v4 addObject:v10];

    v11 = MEMORY[0x277CCAD18];
    v12 = [v29 bundleIdentifier];
    v13 = [v11 queryItemWithName:@"app_id" value:v12];
    [v4 addObject:v13];

    v14 = MEMORY[0x277CCAD18];
    v15 = [v29 shortBuildVersion];
    v16 = [v14 queryItemWithName:@"build" value:v15];
    [v4 addObject:v16];

    v17 = MEMORY[0x277CCAD18];
    v18 = [v29 shortModelType];
    v19 = [v17 queryItemWithName:@"model" value:v18];
    [v4 addObject:v19];

    v20 = MEMORY[0x277CCACE0];
    v21 = [(ADTransparencyViewController *)self transparencyRendererURL];
    v22 = [v20 componentsWithString:v21];

    [v22 setQueryItems:v4];
    v23 = [v22 URL];
    v24 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v23];
    [v24 setHTTPMethod:@"POST"];
    v25 = [(ADTransparencyViewController *)self transparencyRendererPayload];
    v26 = [v25 dataUsingEncoding:4];
    [v24 setHTTPBody:v26];

    v27 = [(ADTransparencyViewController *)self myWebView];
    v28 = [v27 loadRequest:v24];
  }

  else
  {

    [(ADTransparencyViewController *)self _showErrorMessage:0];
  }
}

- (void)presentViewDelegate
{
  v3 = [(ADTransparencyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ADTransparencyViewController *)self delegate];
    [v5 adTransparencyViewControllerDidLoad:self];
  }

  [(ADTransparencyViewController *)self _reportTransparencyViewControllerEventWithType:@"PrivacyAdTransparencyDidAppear" withCompletionHandler:0];
}

- (void)errorDelegate
{
  v3 = [(ADTransparencyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(ADTransparencyViewController *)self delegate];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADTransparencyViewControllerErrorDomain" code:0 userInfo:&unk_287F8ED80];
    [v6 adTransparencyViewController:self didFailWithError:v5];
  }
}

- (void)_closeViewController:(id)a3
{
  v4 = [(ADTransparencyViewController *)self presentingViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__ADTransparencyViewController__closeViewController___block_invoke;
  v5[3] = &unk_279DD95D0;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];

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

- (void)_showErrorMessage:(id)a3
{
  v31 = a3;
  [(UIActivityIndicatorView *)self->activityIndicator stopAnimating];
  v4 = [(ADTransparencyViewController *)self errorLabel];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(ADTransparencyViewController *)self setErrorLabel:v6];

    v7 = [(ADTransparencyViewController *)self errorLabel];
    [v7 setNumberOfLines:0];

    v8 = [MEMORY[0x277D75348] labelColor];
    v9 = [(ADTransparencyViewController *)self errorLabel];
    [v9 setTextColor:v8];

    v10 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    v11 = [(ADTransparencyViewController *)self errorLabel];
    [v11 setFont:v10];

    v12 = [(ADTransparencyViewController *)self errorLabel];
    [v12 setTextAlignment:1];

    v13 = [(ADTransparencyViewController *)self errorLabel];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(ADTransparencyViewController *)self view];
    v15 = [(ADTransparencyViewController *)self errorLabel];
    [v14 addSubview:v15];

    v16 = [(ADTransparencyViewController *)self errorLabel];
    v17 = _NSDictionaryOfVariableBindings(&cfstr_Errorlabel.isa, v16, 0);
    v18 = [(ADTransparencyViewController *)self view];
    v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-20-[errorLabel]-20-|" options:0 metrics:0 views:v17];
    [v18 addConstraints:v19];

    v20 = [(ADTransparencyViewController *)self view];
    v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[errorLabel]-|" options:0 metrics:0 views:v17];
    [v20 addConstraints:v21];
  }

  if (!v31)
  {
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [MEMORY[0x277CE9638] sharedInstance];
    v24 = [MEMORY[0x277CCA8D8] mainBundle];
    v25 = [v24 localizedStringForKey:@"Advertising information isn’t available right now. Try again later." value:&stru_287F8CB38 table:0];

    v26 = [v23 storefrontLocalizationLanguage];
    v31 = [v22 localizedStringForKey:@"Advertising information isn’t available right now. Try again later." value:0 table:0 localization:v26];
  }

  v27 = [(ADTransparencyViewController *)self myWebView];
  v28 = [v27 scrollView];
  [v28 setScrollEnabled:0];

  v29 = [(ADTransparencyViewController *)self errorLabel];
  [v29 setText:v31];

  v30 = [(ADTransparencyViewController *)self errorLabel];
  [v30 setHidden:0];

  [(ADTransparencyViewController *)self presentViewDelegate];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  [(UIActivityIndicatorView *)self->activityIndicator stopAnimating:a3];
  [(ADTransparencyViewController *)self _hideErrorMessage];
  [(ADTransparencyViewController *)self presentViewDelegate];

  [(ADTransparencyViewController *)self _reportTransparencyViewControllerEventWithType:@"PrivacyAdTransparencyDidRenderTransparency" withCompletionHandler:0];
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v78 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 request];
  v10 = [v9 URL];

  v11 = MEMORY[0x277CCACA8];
  v69 = self;
  v12 = objc_opt_class();
  v13 = [v10 absoluteString];
  v14 = [v11 stringWithFormat:@"%@ The URL for the link generated by the rendering server is: %@.", v12, v13];
  _ADLog();

  v15 = [MEMORY[0x277CCACE0] componentsWithURL:v10 resolvingAgainstBaseURL:0];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v16 = [v15 queryItems];
  v17 = [v16 countByEnumeratingWithState:&v73 objects:v77 count:16];
  if (v17)
  {
    v18 = v17;
    v66 = v15;
    v67 = v10;
    v19 = v8;
    v20 = v7;
    v21 = *v74;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v74 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v73 + 1) + 8 * i);
        v24 = [v23 name];
        v25 = [v24 isEqualToString:@"path"];

        if (v25)
        {
          v26 = v23;
          goto LABEL_11;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v73 objects:v77 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }

    v26 = 0;
LABEL_11:
    v7 = v20;
    v8 = v19;
    v15 = v66;
    v10 = v67;
  }

  else
  {
    v26 = 0;
  }

  v27 = [v15 path];
  v28 = [v27 lastPathComponent];
  if ([v28 rangeOfString:@"prefs:root=Privacy&path=ADVERTISING" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  v68 = v8;
  v29 = v7;
  v30 = v26;
  v31 = v15;
  v32 = [v15 path];
  v33 = [v32 lastPathComponent];
  if ([v33 rangeOfString:@"App-Prefs:root=Privacy&path=ADVERTISING" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {

    v26 = v30;
    v7 = v29;
    v8 = v68;
    v15 = v31;
LABEL_24:

    goto LABEL_25;
  }

  v34 = [v10 absoluteString];
  v35 = [v34 containsString:@"Privacy_Advertising"];

  v26 = v30;
  v7 = v29;
  v8 = v68;
  v15 = v31;
  if (v35)
  {
LABEL_25:
    v53 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v54 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Privacy&path=ADVERTISING"];
    [v53 openSensitiveURL:v54 withOptions:MEMORY[0x277CBEC10]];

    v55 = v69;
    v56 = [(ADTransparencyViewController *)v69 presentingViewController];
    v57 = v56;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __88__ADTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
    v72[3] = &unk_279DD95D0;
    v72[4] = v69;
    v58 = v72;
LABEL_26:
    [v56 dismissViewControllerAnimated:1 completion:v58];

    [(ADTransparencyViewController *)v55 _reportTransparencyViewControllerEventWithType:@"PrivacyAdTransparencyDidLinkOut" withCompletionHandler:0];
    [(ADTransparencyViewController *)v55 _reportTransparencyViewControllerEventWithType:@"PrivacyAdTransparencyDidDisappear" withCompletionHandler:0];
    v8[2](v8, 0);
    goto LABEL_27;
  }

  v36 = [v31 path];
  v37 = [v36 lastPathComponent];
  v38 = [v37 rangeOfString:@"prefs:root=Privacy&path=LOCATION" options:1];

  if (v38 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"This is the Settings->App Settings->Location link. Launch this in the settings app."];
    _ADLog();

    v61 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v62 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=STORE"];
    [v61 openSensitiveURL:v62 withOptions:MEMORY[0x277CBEC10]];

    v55 = v69;
    v56 = [(ADTransparencyViewController *)v69 presentingViewController];
    v57 = v56;
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __88__ADTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_2;
    v71[3] = &unk_279DD95D0;
    v71[4] = v69;
    v58 = v71;
    goto LABEL_26;
  }

  v39 = [v31 path];
  v40 = [v39 lastPathComponent];
  v41 = [v40 rangeOfString:@"embedded:root=Privacy" options:1];

  if (!v26 || v41 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v7 navigationType])
    {
      v68[2](v68, 1);
      goto LABEL_27;
    }

    v63 = [MEMORY[0x277D75128] sharedApplication];
    v64 = [v7 request];
    v65 = [v64 URL];
    [v63 openURL:v65 options:MEMORY[0x277CBEC10] completionHandler:&__block_literal_global_1];

    v55 = v69;
    v56 = [(ADTransparencyViewController *)v69 presentingViewController];
    v57 = v56;
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __88__ADTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_4;
    v70[3] = &unk_279DD95D0;
    v70[4] = v69;
    v58 = v70;
    goto LABEL_26;
  }

  v42 = MEMORY[0x277D37678];
  v43 = MEMORY[0x277CCACA8];
  v44 = [v26 value];
  v45 = [v43 stringWithFormat:@"com.apple.onboarding.%@", v44];
  v46 = [v42 presenterForPrivacySplashWithIdentifier:v45];

  [v46 setPresentingViewController:v69];
  if ([(ADTransparencyViewController *)v69 isiPad])
  {
    v47 = 2;
  }

  else
  {
    v47 = 1;
  }

  [v46 setModalPresentationStyle:v47];
  v48 = [(ADTransparencyViewController *)v69 navigationController];
  [v46 presentInNavigationStack:v48];

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

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v6 = [(ADTransparencyViewController *)self myWebView:a3];
  [v6 removeFromSuperview];

  [(ADTransparencyViewController *)self _showErrorMessage:0];
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v6 = [(ADTransparencyViewController *)self myWebView:a3];
  [v6 removeFromSuperview];

  [(ADTransparencyViewController *)self _showErrorMessage:0];
}

- (void)_hideErrorMessage
{
  v3 = [(ADTransparencyViewController *)self errorLabel];

  if (v3)
  {
    v4 = [(ADTransparencyViewController *)self errorLabel];
    [v4 setHidden:1];
  }
}

- (void)_reportTransparencyViewControllerEventWithType:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CE96B8] workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__ADTransparencyViewController__reportTransparencyViewControllerEventWithType_withCompletionHandler___block_invoke;
  v10[3] = &unk_279DD96B8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 addOperationWithBlock:v10];
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

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"ADTransparencyViewControllerDismissed" object:0];
}

@end