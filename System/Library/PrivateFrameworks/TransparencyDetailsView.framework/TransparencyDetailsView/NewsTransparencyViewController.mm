@interface NewsTransparencyViewController
- (NewsTransparencyViewController)initWithNewsTransparencyDetailsDictionary:(id)a3;
- (void)_closeViewController:(id)a3;
- (void)_commonInit;
- (void)_hideErrorMessage;
- (void)_openDebugView:(id)a3;
- (void)_showErrorMessage:(id)a3;
- (void)debugDetailsViewControllerReady:(id)a3;
- (void)displayDebugButtonWaitingIndicator;
- (void)errorDelegate;
- (void)loadWebView;
- (void)presentViewDelegate;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation NewsTransparencyViewController

- (NewsTransparencyViewController)initWithNewsTransparencyDetailsDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NewsTransparencyViewController;
  v5 = [(NewsTransparencyViewController *)&v14 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 AD_jsonString];
    v8 = [v6 stringWithFormat:@"AdLib provided TransparencyDetailsView the following transparencyDetailsDictionary: %@.", v7];
    _ADLog();

    [(NewsTransparencyViewController *)v5 setTransparencyDetailsDictionary:v4];
    [(NewsTransparencyViewController *)v5 setIsiPad:MGGetBoolAnswer()];
    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v9 bundleIdentifier];

    -[NewsTransparencyViewController setIsClientTodayWidget:](v5, "setIsClientTodayWidget:", [v10 isEqualToString:*MEMORY[0x277CE95E8]]);
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
  v3 = [(NewsTransparencyViewController *)self navigationController];
  if (v3)
  {
    v4 = [MEMORY[0x277D75C80] currentTraitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 == 2)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75788]);
      [v6 configureWithOpaqueBackground];
      v7 = [MEMORY[0x277D75348] systemBackgroundColor];
      [v6 setBackgroundColor:v7];

      v15 = *MEMORY[0x277D740C0];
      v8 = [MEMORY[0x277D75348] whiteColor];
      v16[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      [v6 setTitleTextAttributes:v9];

      v10 = [v3 navigationBar];
      [v10 setStandardAppearance:v6];

      v11 = [v3 navigationBar];
      [v11 setScrollEdgeAppearance:v6];

      v12 = [v3 navigationBar];
      [v12 setTranslucent:0];
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
  v14 = [MEMORY[0x277D75348] systemBackgroundColor];
  v15 = [(NewsTransparencyViewController *)self view];
  [v15 setBackgroundColor:v14];

  [(NewsTransparencyViewController *)self setEdgesForExtendedLayout:0];
  v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__closeViewController_];
  v17 = [MEMORY[0x277D75348] systemBlueColor];
  [v16 setTintColor:v17];

  [v16 setAccessibilityLabel:@"Close"];
  v18 = [(NewsTransparencyViewController *)self navigationItem];
  [v18 setLeftBarButtonItem:v16];

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

  v29 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [v30 setAllowsLinkPreview:0];

  v31 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [v31 setNavigationDelegate:self];

  v32 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [v32 setOpaque:0];

  v33 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  v34 = [v33 scrollView];
  [v34 setContentInsetAdjustmentBehavior:2];

  if ([(NewsTransparencyViewController *)self isClientTodayWidget])
  {
    v35 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    v36 = [v35 scrollView];
    [v36 setScrollEnabled:0];

    v37 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    v38 = [v37 scrollView];
    [v38 setBounces:0];
  }

  v39 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [v39 setAutoresizesSubviews:1];

  v40 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [v40 setAutoresizingMask:18];

  v41 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  activityIndicator = self->activityIndicator;
  self->activityIndicator = v41;

  v43 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [v43 frame];
  v45 = v44 * 0.5;
  v46 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [v46 frame];
  [(UIActivityIndicatorView *)self->activityIndicator setCenter:v45, v47 * 0.5];

  [(UIActivityIndicatorView *)self->activityIndicator setAutoresizingMask:45];
  [(UIActivityIndicatorView *)self->activityIndicator startAnimating];
  v48 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
  [v48 addSubview:self->activityIndicator];

  [(NewsTransparencyViewController *)self presentViewDelegate];
  [(NewsTransparencyViewController *)self loadWebView];
}

- (void)loadWebView
{
  v63[4] = *MEMORY[0x277D85DE8];
  v3 = [(NewsTransparencyViewController *)self transparencyRendererURL];

  if (v3)
  {
    v4 = [MEMORY[0x277CE9638] sharedInstance];
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = MEMORY[0x277CCAD18];
    v7 = v4;
    v8 = [v4 localeIdentifier];
    v9 = [v6 queryItemWithName:@"locale" value:v8];
    [v5 addObject:v9];

    v10 = MEMORY[0x277CCAD18];
    v11 = [v7 osIdentifier];
    v12 = [v10 queryItemWithName:@"os" value:v11];
    [v5 addObject:v12];

    v13 = MEMORY[0x277CCAD18];
    v14 = [v7 bundleIdentifier];
    v15 = [v13 queryItemWithName:@"app_id" value:v14];
    [v5 addObject:v15];

    v16 = MEMORY[0x277CCAD18];
    v62 = v7;
    v17 = [v7 shortBuildVersion];
    v18 = [v16 queryItemWithName:@"build" value:v17];
    [v5 addObject:v18];

    v19 = MEMORY[0x277CCAD18];
    v20 = [v7 shortModelType];
    v21 = [v19 queryItemWithName:@"model" value:v20];
    v61 = v5;
    [v5 addObject:v21];

    v22 = MEMORY[0x277CCACE0];
    v23 = [(NewsTransparencyViewController *)self transparencyRendererURL];
    v60 = [v22 componentsWithString:v23];

    [v60 setQueryItems:v5];
    v59 = [v60 URL];
    v24 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v59];
    [v24 setHTTPMethod:@"POST"];
    v25 = [(NewsTransparencyViewController *)self transparencyRendererPayload];
    v26 = [v25 dataUsingEncoding:4];
    v58 = v24;
    [v24 setHTTPBody:v26];

    v27 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    v28 = [v27 loadRequest:v24];

    v29 = [(NewsTransparencyViewController *)self navigationController];
    v30 = [v29 navigationBar];
    [v30 setTranslucent:0];

    v31 = [(NewsTransparencyViewController *)self view];
    v32 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    [v31 addSubview:v32];

    v48 = MEMORY[0x277CCAAD0];
    v57 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    v55 = [v57 topAnchor];
    v56 = [(NewsTransparencyViewController *)self view];
    v54 = [v56 topAnchor];
    v53 = [v55 constraintEqualToAnchor:v54 constant:20.0];
    v63[0] = v53;
    v52 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    v50 = [v52 bottomAnchor];
    v51 = [(NewsTransparencyViewController *)self view];
    v49 = [v51 bottomAnchor];
    v47 = [v50 constraintEqualToAnchor:v49];
    v63[1] = v47;
    v46 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    v33 = [v46 rightAnchor];
    v34 = [(NewsTransparencyViewController *)self view];
    v35 = [v34 rightAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];
    v63[2] = v36;
    v37 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView];
    v38 = [v37 leftAnchor];
    v39 = [(NewsTransparencyViewController *)self view];
    v40 = [v39 leftAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
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

- (void)_showErrorMessage:(id)a3
{
  v25 = a3;
  [(UIActivityIndicatorView *)self->activityIndicator stopAnimating];
  v4 = [(NewsTransparencyViewController *)self errorLabel];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(NewsTransparencyViewController *)self setErrorLabel:v6];

    v7 = [(NewsTransparencyViewController *)self errorLabel];
    [v7 setNumberOfLines:0];

    v8 = [MEMORY[0x277D75348] labelColor];
    v9 = [(NewsTransparencyViewController *)self errorLabel];
    [v9 setTextColor:v8];

    v10 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    v11 = [(NewsTransparencyViewController *)self errorLabel];
    [v11 setFont:v10];

    v12 = [(NewsTransparencyViewController *)self errorLabel];
    [v12 setTextAlignment:1];

    v13 = [(NewsTransparencyViewController *)self errorLabel];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(NewsTransparencyViewController *)self view];
    v15 = [(NewsTransparencyViewController *)self errorLabel];
    [v14 addSubview:v15];

    v16 = [(NewsTransparencyViewController *)self errorLabel];
    v17 = _NSDictionaryOfVariableBindings(&cfstr_Errorlabel.isa, v16, 0);
    v18 = [(NewsTransparencyViewController *)self view];
    v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-20-[errorLabel]-20-|" options:0 metrics:0 views:v17];
    [v18 addConstraints:v19];

    v20 = [(NewsTransparencyViewController *)self view];
    v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[errorLabel]-|" options:0 metrics:0 views:v17];
    [v20 addConstraints:v21];
  }

  if (!v25)
  {
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v22 localizedStringForKey:@"Advertising information isn’t available right now. Try again later." value:&stru_287F8CB38 table:0];
  }

  v23 = [(NewsTransparencyViewController *)self errorLabel];
  [v23 setText:v25];

  v24 = [(NewsTransparencyViewController *)self errorLabel];
  [v24 setHidden:0];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  [(UIActivityIndicatorView *)self->activityIndicator stopAnimating:a3];
  [(NewsTransparencyViewController *)self _hideErrorMessage];
  v5 = [(NewsTransparencyViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(NewsTransparencyViewController *)self delegate];
    [v7 newsTransparencyViewControllerDidRenderView:self];
  }
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v6 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView:a3];
  [v6 removeFromSuperview];

  [(NewsTransparencyViewController *)self _showErrorMessage:0];
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v6 = [(NewsTransparencyViewController *)self myNewsPrivacyWebView:a3];
  [v6 removeFromSuperview];

  [(NewsTransparencyViewController *)self _showErrorMessage:0];
}

- (void)_hideErrorMessage
{
  v3 = [(NewsTransparencyViewController *)self errorLabel];

  if (v3)
  {
    v4 = [(NewsTransparencyViewController *)self errorLabel];
    [v4 setHidden:1];
  }
}

- (void)_closeViewController:(id)a3
{
  v3 = [(NewsTransparencyViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)presentViewDelegate
{
  v3 = [(NewsTransparencyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(NewsTransparencyViewController *)self delegate];
    [v5 newsTransparencyViewControllerDidLoad:self];
  }
}

- (void)errorDelegate
{
  v3 = [(NewsTransparencyViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(NewsTransparencyViewController *)self delegate];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NewsTransparencyViewControllerErrorDomain" code:0 userInfo:&unk_287F8ED58];
    [v6 newsTransparencyViewController:self didFailWithError:v5];
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

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v78 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 request];
  v10 = [v9 URL];

  v11 = MEMORY[0x277CCACA8];
  v70 = self;
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
  v71 = v10;
  if (v17)
  {
    v18 = v17;
    v69 = v15;
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
    v15 = v69;
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

  v29 = v8;
  v30 = v7;
  v31 = v26;
  v32 = [v15 path];
  v33 = [v32 lastPathComponent];
  if ([v33 rangeOfString:@"App-Prefs:root=Privacy&path=ADVERTISING" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {

    v26 = v31;
    v7 = v30;
    v8 = v29;
LABEL_24:

    goto LABEL_25;
  }

  v34 = [v71 absoluteString];
  v35 = [v34 containsString:@"Privacy_Advertising"];

  v26 = v31;
  v7 = v30;
  v8 = v29;
  if (v35)
  {
LABEL_25:
    v54 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v55 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Privacy&path=ADVERTISING"];
    [v54 openSensitiveURL:v55 withOptions:MEMORY[0x277CBEC10]];

    v56 = [(NewsTransparencyViewController *)v70 delegate];
    LOBYTE(v55) = objc_opt_respondsToSelector();

    if (v55)
    {
      v57 = [(NewsTransparencyViewController *)v70 delegate];
      [v57 newsTransparencyViewControllerDidLinkOut:v70];
    }

    v8[2](v8, 0);
    v43 = v71;
    goto LABEL_28;
  }

  v36 = [v15 path];
  v37 = [v36 lastPathComponent];
  v38 = @"prefs:root=Privacy&path=LOCATION";
  v39 = [v37 rangeOfString:@"prefs:root=Privacy&path=LOCATION" options:1];

  if (v39 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"This is the Settings->App Settings->Location link. Launch this in the settings app."];
    _ADLog();

    v60 = [MEMORY[0x277CE9638] sharedInstance];
    v48 = [v60 bundleIdentifier];

    v43 = v71;
    if ([v48 isEqualToString:@"com.apple.news"])
    {
      v38 = @"prefs:root=NEWS";
    }

    else if ([v48 isEqualToString:@"com.apple.stocks"])
    {
      v38 = @"prefs:root=STOCKS";
    }

    v61 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v62 = [MEMORY[0x277CBEBC0] URLWithString:v38];
    [v61 openSensitiveURL:v62 withOptions:MEMORY[0x277CBEC10]];

    v63 = [(NewsTransparencyViewController *)v70 presentingViewController];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __90__NewsTransparencyViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
    v72[3] = &unk_279DD95D0;
    v72[4] = v70;
    [v63 dismissViewControllerAnimated:1 completion:v72];

    goto LABEL_36;
  }

  v40 = [v15 path];
  v41 = [v40 lastPathComponent];
  v42 = [v41 rangeOfString:@"embedded:root=Privacy" options:1];

  v43 = v71;
  if (v26 && v42 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v44 = MEMORY[0x277D37678];
    v45 = MEMORY[0x277CCACA8];
    v46 = [v26 value];
    v47 = [v45 stringWithFormat:@"com.apple.onboarding.%@", v46];
    v48 = [v44 presenterForPrivacySplashWithIdentifier:v47];

    [v48 setPresentingViewController:v70];
    if ([(NewsTransparencyViewController *)v70 isiPad])
    {
      v49 = 2;
    }

    else
    {
      v49 = 1;
    }

    [v48 setModalPresentationStyle:v49];
    v50 = [(NewsTransparencyViewController *)v70 navigationController];
    [v48 presentInNavigationStack:v50];

    v51 = MEMORY[0x277CCACA8];
    v52 = [v26 value];
    v53 = [v51 stringWithFormat:@"This is the Data & Privacy link for the about page with path %@. Present this in the modal sheet.", v52];
    _ADLog();

    v43 = v71;
LABEL_36:
    v8[2](v8, 0);

    goto LABEL_28;
  }

  if ([v7 navigationType])
  {
    v8[2](v8, 1);
  }

  else
  {
    v64 = [MEMORY[0x277D75128] sharedApplication];
    v65 = [v7 request];
    v66 = [v65 URL];
    [v64 openURL:v66 options:MEMORY[0x277CBEC10] completionHandler:&__block_literal_global_0];

    v67 = [(NewsTransparencyViewController *)v70 delegate];
    LOBYTE(v65) = objc_opt_respondsToSelector();

    if (v65)
    {
      v68 = [(NewsTransparencyViewController *)v70 delegate];
      [v68 newsTransparencyViewControllerDidLinkOut:v70];
    }

    v8[2](v8, 0);
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
  v3 = [MEMORY[0x277D75348] systemGrayColor];
  [v6 setColor:v3];

  [v6 startAnimating];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v6];
  v5 = [(NewsTransparencyViewController *)self navigationItem];
  [v5 setLeftBarButtonItem:v4];
}

- (void)debugDetailsViewControllerReady:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:@"Debug" style:0 target:self action:sel__openDebugView_];
  leftButton = self->leftButton;
  self->leftButton = v5;

  v7 = self->leftButton;
  v8 = [(NewsTransparencyViewController *)self navigationItem];
  [v8 setLeftBarButtonItem:v7];

  debugViewController = self->debugViewController;
  self->debugViewController = v4;
}

- (void)_openDebugView:(id)a3
{
  [(UIViewController *)self->debugViewController setModalPresentationStyle:7];
  v4 = [(UIViewController *)self->debugViewController popoverPresentationController];
  [v4 setBarButtonItem:self->leftButton];
  [(NewsTransparencyViewController *)self presentViewController:self->debugViewController animated:1 completion:0];
}

@end