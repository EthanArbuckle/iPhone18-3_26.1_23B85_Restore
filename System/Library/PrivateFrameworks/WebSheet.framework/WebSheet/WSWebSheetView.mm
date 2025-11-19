@interface WSWebSheetView
- (BOOL)_isSecureAddress;
- (BOOL)_shouldShowPromptLabels;
- (BOOL)isChinaRegion;
- (BOOL)isConfigurationProfileMIMEType:(id)a3;
- (BOOL)isUserAprroved:(id)a3;
- (WSWebSheetView)initWithFrame:(CGRect)a3 webSheetViewController:(id)a4;
- (WSWebSheetViewDelegate)delegate;
- (double)_promptLabelFontLineHeight;
- (id)_evCertColor;
- (id)_fetchCaptivePortalCredentialsAndReturnNetworkName:(id *)a3 deviceName:(id *)a4;
- (id)_lockIconImage;
- (id)_sheetController;
- (id)_specializedMessageForError:(id)a3;
- (id)_titleForError:(id)a3;
- (id)_titleString:(BOOL)a3;
- (id)appNametoOpenURL:(id)a3;
- (id)webView:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 windowFeatures:(id)a6;
- (void)_addAndRemoveAddressViewsAsNeeded;
- (void)_autoFillUserCredentialsUsingJavaScript;
- (void)_autoFocusDelayTimerFired:(id)a3;
- (void)_captiveProbeDispatchTimerDidFire:(id)a3;
- (void)_populateTextSuggestionsWithCaptivePortalCredentials:(id)a3 networkName:(id)a4 deviceName:(id)a5 inputSession:(id)a6;
- (void)_precheckTrustForServerCertificate:(__SecTrust *)a3 host:(id)a4;
- (void)_scrapeUserCredentialsUsingJavaScript;
- (void)_showGenericDownloadAlert;
- (void)_showProfileDownloadAlert;
- (void)_showProfileInstallAlert;
- (void)_startCaptiveProbeDispatchTimer;
- (void)_stopCaptiveProbeDispatchTimer;
- (void)_updateBackForwardButtons;
- (void)_updateTitle;
- (void)_webView:(id)a3 didStartInputSession:(id)a4;
- (void)_webView:(id)a3 insertTextSuggestion:(id)a4 inInputSession:(id)a5;
- (void)_webView:(id)a3 willSubmitFormValues:(id)a4 userObject:(id)a5 submissionHandler:(id)a6;
- (void)addAlert:(id)a3;
- (void)cancelTapped;
- (void)dealloc;
- (void)dequeueRedirectTypeQueue;
- (void)dismissWebSheetWithCaptiveWebSheetResult:(int64_t)a3;
- (void)dispatchCaptiveProbe;
- (void)downloadDidFinish:(id)a3;
- (void)handleProbeResult:(int64_t)a3;
- (void)layoutSubviews;
- (void)pushBackToRedirectTypeQueue;
- (void)setCurrentURL:(id)a3;
- (void)setHasEVCert:(BOOL)a3;
- (void)setProbeURL:(id)a3;
- (void)setSSID:(id)a3;
- (void)setWebViewWithInterfaceName:(id)a3;
- (void)updateRedirectURLTypeSetting;
- (void)updateResultOptions;
- (void)updateToDoneButton;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didCommitLoadForFrame:(id)a4;
- (void)webView:(id)a3 didCommitNavigation:(id)a4;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
- (void)webView:(id)a3 resourceLoad:(id)a4 didCompleteWithError:(id)a5 response:(id)a6;
@end

@implementation WSWebSheetView

- (WSWebSheetView)initWithFrame:(CGRect)a3 webSheetViewController:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v66[2] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v65.receiver = self;
  v65.super_class = WSWebSheetView;
  v11 = [(WSWebSheetView *)&v65 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_webSheetViewController, a4);
    v13 = objc_alloc_init(MEMORY[0x277D75780]);
    navigationBar = v12->_navigationBar;
    v12->_navigationBar = v13;

    v15 = v12->_navigationBar;
    v16 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(UINavigationBar *)v15 setBarTintColor:v16];

    [(UINavigationBar *)v12->_navigationBar setTranslucent:0];
    v17 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(WSWebSheetView *)v12 setBackgroundColor:v17];

    [(UINavigationBar *)v12->_navigationBar setRequestedContentSize:2];
    v18 = [objc_alloc(MEMORY[0x277D757A8]) initWithTitle:&stru_2882BFA40];
    navigationItem = v12->_navigationItem;
    v12->_navigationItem = v18;

    v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v12 action:sel_cancelTapped];
    cancelBarButtonItem = v12->_cancelBarButtonItem;
    v12->_cancelBarButtonItem = v20;

    v22 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v12 action:sel_doneTapped];
    doneBarButtonItem = v12->_doneBarButtonItem;
    v12->_doneBarButtonItem = v22;

    [(UIBarButtonItem *)v12->_cancelBarButtonItem setTarget:v12];
    [(UIBarButtonItem *)v12->_doneBarButtonItem setTarget:v12];
    v24 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:101 target:v12 action:sel__backButtonPressed];
    backButtonItem = v12->_backButtonItem;
    v12->_backButtonItem = v24;

    v26 = [MEMORY[0x277D75348] linkColor];
    [(UIBarButtonItem *)v12->_backButtonItem setTintColor:v26];

    v27 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:102 target:v12 action:sel__forwardButtonPressed];
    forwardButtonItem = v12->_forwardButtonItem;
    v12->_forwardButtonItem = v27;

    v29 = [MEMORY[0x277D75348] linkColor];
    [(UIBarButtonItem *)v12->_forwardButtonItem setTintColor:v29];

    [(UIBarButtonItem *)v12->_backButtonItem setEnabled:0];
    [(UIBarButtonItem *)v12->_forwardButtonItem setEnabled:0];
    v30 = v12->_navigationItem;
    v66[0] = v12->_backButtonItem;
    v66[1] = v12->_forwardButtonItem;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
    [(UINavigationItem *)v30 setLeftBarButtonItems:v31];

    [(UINavigationItem *)v12->_navigationItem setRightBarButtonItem:v12->_cancelBarButtonItem];
    [(UINavigationBar *)v12->_navigationBar pushNavigationItem:v12->_navigationItem animated:0];
    [(UINavigationBar *)v12->_navigationBar setDelegate:v12];
    v32 = objc_alloc_init(MEMORY[0x277D75D18]);
    addressView = v12->_addressView;
    v12->_addressView = v32;

    v34 = objc_alloc_init(MEMORY[0x277D756B8]);
    addressLabel = v12->_addressLabel;
    v12->_addressLabel = v34;

    v36 = objc_alloc_init(MEMORY[0x277D756B8]);
    ssidLabel = v12->_ssidLabel;
    v12->_ssidLabel = v36;

    v38 = v12->_addressLabel;
    v39 = [(WSWebSheetView *)v12 _promptLabelFont];
    [(UILabel *)v38 setFont:v39];

    [(WSWebSheetView *)v12 addSubview:v12->_addressView];
    v40 = v12->_ssidLabel;
    v41 = [(WSWebSheetView *)v12 _promptLabelFont];
    [(UILabel *)v40 setFont:v41];

    [(UILabel *)v12->_ssidLabel setTextAlignment:1];
    v42 = objc_alloc(MEMORY[0x277D755E8]);
    v43 = [(WSWebSheetView *)v12 _lockIconImage];
    v44 = [v42 initWithImage:v43];
    lockIconView = v12->_lockIconView;
    v12->_lockIconView = v44;

    v46 = [(UIImageView *)v12->_lockIconView image];
    v47 = [v46 imageWithRenderingMode:2];
    [(UIImageView *)v12->_lockIconView setImage:v47];

    v48 = v12->_lockIconView;
    v49 = [MEMORY[0x277D75348] labelColor];
    [(UIImageView *)v48 setTintColor:v49];

    [(WSWebSheetView *)v12 addSubview:v12->_navigationBar];
    v50 = dispatch_queue_create("_redirectTypeQueue access thread", 0);
    queue = v12->_queue;
    v12->_queue = v50;

    v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
    resultOptions = v12->_resultOptions;
    v12->_resultOptions = v52;

    v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
    redirectTypeQueue = v12->_redirectTypeQueue;
    v12->_redirectTypeQueue = v54;

    v12->_currentRedirectURLTypeSet = 0;
    v12->_firstNavigation = 1;
    navigationURLAtStart = v12->_navigationURLAtStart;
    v12->_navigationURLAtStart = 0;

    v12->_everReceivedUntrustedCertificate = 0;
    if (_os_feature_enabled_impl())
    {
      if (_os_feature_enabled_impl())
      {
        v57 = objc_alloc_init(MEMORY[0x277CBEB38]);
        scrapedUserCredentialsFromJavaScript = v12->_scrapedUserCredentialsFromJavaScript;
        v12->_scrapedUserCredentialsFromJavaScript = v57;

        v59 = objc_alloc_init(MEMORY[0x277CBEB58]);
        oneTimeCodesToFilterFromScrapedCredentials = v12->_oneTimeCodesToFilterFromScrapedCredentials;
        v12->_oneTimeCodesToFilterFromScrapedCredentials = v59;

        v61 = objc_alloc_init(MEMORY[0x277D02B18]);
        corewifi = v12->_corewifi;
        v12->_corewifi = v61;

        [(CWFInterface *)v12->_corewifi activate];
      }
    }
  }

  v63 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)dequeueRedirectTypeQueue
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__WSWebSheetView_dequeueRedirectTypeQueue__block_invoke;
  block[3] = &unk_279EAFE30;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __42__WSWebSheetView_dequeueRedirectTypeQueue__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 520) count];
  if (result)
  {
    v3 = *(*(a1 + 32) + 520);

    return [v3 removeObjectAtIndex:0];
  }

  return result;
}

- (void)pushBackToRedirectTypeQueue
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__WSWebSheetView_pushBackToRedirectTypeQueue__block_invoke;
  block[3] = &unk_279EAFE30;
  block[4] = self;
  dispatch_async(queue, block);
}

void __45__WSWebSheetView_pushBackToRedirectTypeQueue__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 520) count])
  {
    v2 = [*(*(a1 + 32) + 520) firstObject];
    [*(*(a1 + 32) + 520) addObject:v2];
    [*(*(a1 + 32) + 520) removeObjectAtIndex:0];
  }
}

- (void)updateResultOptions
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WSWebSheetView_updateResultOptions__block_invoke;
  block[3] = &unk_279EAFE30;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__WSWebSheetView_updateResultOptions__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 520) count])
  {
    v2 = [*(*(a1 + 32) + 520) firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 unsignedIntegerValue];
    }

    else
    {
      v3 = 0;
    }

    [*(*(a1 + 32) + 520) removeAllObjects];
  }

  else
  {
    v3 = 0;
  }

  v4 = [*(a1 + 32) delegate];

  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __37__WSWebSheetView_updateResultOptions__block_invoke_2;
    v5[3] = &unk_279EAFE58;
    v5[4] = *(a1 + 32);
    v5[5] = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __37__WSWebSheetView_updateResultOptions__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 handleCompleteNotificationWithRedirectURLtype:*(a1 + 40) result:0];
}

- (void)updateToDoneButton
{
  self->_inDoneState = 1;
  [(WSWebSheetView *)self setShouldShowStayConnectedOptions:0];
  navigationItem = self->_navigationItem;
  doneBarButtonItem = self->_doneBarButtonItem;

  [(UINavigationItem *)navigationItem setRightBarButtonItem:doneBarButtonItem];
}

- (void)setWebViewWithInterfaceName:(id)a3
{
  v4 = MEMORY[0x277CE3890];
  v5 = a3;
  v21 = objc_alloc_init(v4);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 builtInPlugInsURL];
  v8 = [v7 URLByAppendingPathComponent:@"SafariServices.wkbundle"];
  [v21 setInjectedBundleURL:v8];

  if (objc_opt_respondsToSelector())
  {
    [v21 setJITEnabled:0];
  }

  v9 = [objc_alloc(MEMORY[0x277CE3820]) _initWithConfiguration:v21];
  v10 = objc_alloc_init(MEMORY[0x277CE3858]);
  [v10 _setApplePayEnabled:1];
  [v10 setAllowsInlineMediaPlayback:1];
  [v10 setDataDetectorTypes:3];
  v11 = [objc_alloc(MEMORY[0x277CE38C8]) initNonPersistentConfiguration];
  [v11 setSourceApplicationSecondaryIdentifier:@"com.apple.captive.websheet"];
  [v11 setBoundInterfaceIdentifier:v5];

  [v11 setAllowsCellularAccess:0];
  if (objc_opt_respondsToSelector())
  {
    [v11 setLegacyTLSEnabled:1];
  }

  [v11 setProxyConfiguration:self->_proxyConfiguration];
  v12 = [objc_alloc(MEMORY[0x277CE3868]) _initWithConfiguration:v11];
  [v10 setWebsiteDataStore:v12];

  [v10 setProcessPool:v9];
  [v10 _setClientNavigationsRunAtForegroundPriority:1];
  v13 = [v10 preferences];
  [v13 _setDeviceOrientationEventEnabled:0];

  v14 = objc_alloc(MEMORY[0x277CE3850]);
  [(WSWebSheetView *)self frame];
  v15 = [v14 initWithFrame:v10 configuration:?];
  webView = self->_webView;
  self->_webView = v15;

  v17 = objc_alloc_init(WSWebSheetDownloadManager);
  downloadManager = self->_downloadManager;
  self->_downloadManager = v17;

  [(WSWebSheetDownloadManager *)self->_downloadManager setDelegate:self];
  [(WKWebView *)self->_webView setNavigationDelegate:self];
  [(WKWebView *)self->_webView setUIDelegate:self];
  [(WKWebView *)self->_webView _setInputDelegate:self];
  [(WKWebView *)self->_webView _setResourceLoadDelegate:self];
  [(WKWebView *)self->_webView becomeFirstResponder];
  [(WKWebView *)self->_webView setAllowsBackForwardNavigationGestures:1];
  v19 = [objc_alloc(MEMORY[0x277CDB7C8]) initWithWebView:self->_webView delegate:self];
  autoFillController = self->_autoFillController;
  self->_autoFillController = v19;

  [(WSWebSheetView *)self insertSubview:self->_webView belowSubview:self->_navigationBar];
}

- (void)setSSID:(id)a3
{
  objc_storeStrong(&self->_ssid, a3);
  v5 = a3;
  [(UILabel *)self->_ssidLabel setText:v5];

  [(WSWebSheetView *)self _updateTitle];
}

- (id)_titleString:(BOOL)a3
{
  v3 = a3;
  v5 = [(WSWebSheetView *)self isChinaRegion];
  v6 = MEMORY[0x277CCACA8];
  if (v3)
  {
    if (v5)
    {
      v7 = "Captive WLAN - %@";
    }

    else
    {
      v7 = "Captive Wi-Fi - %@";
    }

    v8 = GetLocalizedString(v7);
    [v6 stringWithFormat:v8, self->_ssid];
  }

  else
  {
    if (v5)
    {
      v9 = "Captive WLAN";
    }

    else
    {
      v9 = "Captive Wi-Fi";
    }

    v8 = GetLocalizedString(v9);
    [v6 stringWithFormat:v8, v12];
  }
  v10 = ;

  return v10;
}

- (void)_updateTitle
{
  v3 = ![(WSWebSheetView *)self _shouldShowPromptLabels]&& self->_ssid != 0;
  v4 = [(WSWebSheetView *)self _titleString:v3];
  [(UINavigationItem *)self->_navigationItem setTitle:v4];
}

- (void)layoutSubviews
{
  [(WSWebSheetView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(WSWebSheetView *)self getHeaderFrameHeight];
  v8 = v7;
  v9 = [(WSWebSheetView *)self _shouldShowPromptLabels];
  [(WSWebSheetView *)self _addAndRemoveAddressViewsAsNeeded];
  [(WSWebSheetView *)self _updateTitle];
  if (self->_inDoneState)
  {
    v10 = &OBJC_IVAR___WSWebSheetView__doneBarButtonItem;
  }

  else
  {
    v10 = &OBJC_IVAR___WSWebSheetView__cancelBarButtonItem;
  }

  [(UINavigationItem *)self->_navigationItem setRightBarButtonItem:*(&self->super.super.super.isa + *v10)];
  v11 = 0.0;
  if (v9)
  {
    [(WSWebSheetView *)self getTopSafeAreaInsetTop];
    v13 = v12;
    [(WSWebSheetView *)self getAddressViewHeight];
    v11 = v13 + v14;
    [(UIView *)self->_addressView setFrame:0.0, v13, v4, v14];
  }

  [(UINavigationBar *)self->_navigationBar setFrame:0.0, v11, v4, v8];
  if (v9)
  {
    v31 = v6;
    v15 = [(WSWebSheetView *)self _isSecureAddress];
    [(WSWebSheetView *)self _promptLabelFontLineHeight];
    v17 = v16;
    v18 = [(UIImageView *)self->_lockIconView image];
    [v18 size];
    v20 = v19;
    v30 = v21;

    if (v15)
    {
      v22 = v20 + 5.0;
    }

    else
    {
      v22 = 0.0;
    }

    [(UILabel *)self->_addressLabel sizeThatFits:v4 + -20.0 - v22, v17, v30];
    v25 = v24;
    if (v23 >= v4 + -20.0 - v22)
    {
      v26 = v4 + -20.0 - v22;
    }

    else
    {
      v26 = v23;
    }

    v27 = v22 + RoundFloatToPixels((v4 - v26 - v22) * 0.5);
    if (v15)
    {
      [(UIImageView *)self->_lockIconView setFrame:?];
    }

    [(UILabel *)self->_addressLabel setFrame:v27, 2.0, v26, v25];
    [(UILabel *)self->_ssidLabel setFrame:10.0, v17 + 4.0, v4 + -20.0, v17];
    [(UIView *)self->_addressView addSubview:self->_addressLabel];
    [(UIView *)self->_addressView addSubview:self->_ssidLabel];
    v6 = v31;
  }

  else
  {
    [(UILabel *)self->_addressLabel removeFromSuperview];
    [(UILabel *)self->_ssidLabel removeFromSuperview];
  }

  [(UINavigationBar *)self->_navigationBar frame];
  MaxY = CGRectGetMaxY(v33);
  webView = self->_webView;

  [(WKWebView *)webView setFrame:0.0, MaxY, v4, v6 - MaxY];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    [(CWFInterface *)self->_corewifi invalidate];
    [(NSTimer *)self->_autoFocusDelayTimer invalidate];
  }

  v4.receiver = self;
  v4.super_class = WSWebSheetView;
  [(WSWebSheetView *)&v4 dealloc];
}

- (void)setProbeURL:(id)a3
{
  v4 = [a3 copy];
  probeURL = self->_probeURL;
  self->_probeURL = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setCurrentURL:(id)a3
{
  v5 = a3;
  if (self->_currentURL != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentURL, a3);
    [(WSWebSheetView *)self _updateAddress];
    v5 = v6;
  }
}

- (id)_evCertColor
{
  v2 = _evCertColor_color_0;
  if (!_evCertColor_color_0)
  {
    v3 = [objc_alloc(MEMORY[0x277D75348]) initWithRed:0.262745098 green:0.749019608 blue:0.345098039 alpha:1.0];
    v4 = _evCertColor_color_0;
    _evCertColor_color_0 = v3;

    v2 = _evCertColor_color_0;
  }

  return v2;
}

- (id)_lockIconImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = GetBundle();
  v4 = [v2 imageNamed:@"Lock" inBundle:v3];

  return v4;
}

- (void)setHasEVCert:(BOOL)a3
{
  if (self->_hasEVCert != a3)
  {
    self->_hasEVCert = a3;
    if (a3)
    {
      [(WSWebSheetView *)self _evCertColor];
    }

    else
    {
      [MEMORY[0x277D75348] labelColor];
    }
    v7 = ;
    [(UILabel *)self->_addressLabel setTextColor:v7];
    v5 = [(UIImageView *)self->_lockIconView image];
    v6 = [v5 imageWithRenderingMode:2];
    [(UIImageView *)self->_lockIconView setImage:v6];

    [(UIImageView *)self->_lockIconView setTintColor:v7];
    [(WSWebSheetView *)self _updateAddress];
  }
}

- (void)_addAndRemoveAddressViewsAsNeeded
{
  if ([(WSWebSheetView *)self _shouldShowPromptLabels])
  {
    [(UIView *)self->_addressView setHidden:0];
    v4 = [(NSURL *)self->_currentURL _lp_simplifiedDisplayString];
    [(UILabel *)self->_addressLabel setText:?];
    if ([(WSWebSheetView *)self _isSecureAddress])
    {
      [(UIView *)self->_addressView addSubview:self->_lockIconView];
    }

    else
    {
      [(UIImageView *)self->_lockIconView removeFromSuperview];
    }
  }

  else
  {
    [(UIImageView *)self->_lockIconView removeFromSuperview];
    addressView = self->_addressView;

    [(UIView *)addressView setHidden:1];
  }
}

- (BOOL)_isSecureAddress
{
  v2 = [(NSURL *)self->_currentURL scheme];
  v3 = [v2 lowercaseString];
  v4 = [v3 isEqualToString:@"https"];

  return v4;
}

- (BOOL)_shouldShowPromptLabels
{
  v2 = [(WSWebSheetView *)self window];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  return v4 < v6 || (v8 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (double)_promptLabelFontLineHeight
{
  v2 = [(WSWebSheetView *)self _promptLabelFont];
  [v2 lineHeight];
  v4 = RoundFloatToPixels(v3);

  return v4;
}

- (void)_updateBackForwardButtons
{
  [(UIBarButtonItem *)self->_backButtonItem setEnabled:[(WKWebView *)self->_webView canGoBack]];
  forwardButtonItem = self->_forwardButtonItem;
  v4 = [(WKWebView *)self->_webView canGoForward];

  [(UIBarButtonItem *)forwardButtonItem setEnabled:v4];
}

- (void)cancelTapped
{
  NSLog(&cfstr_UserTappedCanc.isa, a2);
  if (self->_shouldShowStayConnectedOptions)
  {
    v3 = [(WSWebSheetView *)self isChinaRegion];
    v4 = MEMORY[0x277CCACA8];
    if (v3)
    {
      v5 = "The WLAN “%@” is not connected to the Internet.";
    }

    else
    {
      v5 = "The Wi-Fi network “%@” is not connected to the Internet.";
    }

    v6 = GetLocalizedString(v5);
    v7 = [v4 stringWithFormat:v6, self->_ssid];

    v8 = GetLocalizedString("Use Other Network");
    v9 = GetLocalizedString("Dismiss");
    v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:&stru_2882BFA40 preferredStyle:0];
    stayConnectedAlertController = self->_stayConnectedAlertController;
    self->_stayConnectedAlertController = v10;

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __30__WSWebSheetView_cancelTapped__block_invoke;
    v24[3] = &unk_279EAFE80;
    v24[4] = self;
    v12 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:0 handler:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __30__WSWebSheetView_cancelTapped__block_invoke_2;
    v23[3] = &unk_279EAFE80;
    v23[4] = self;
    v13 = [MEMORY[0x277D750F8] actionWithTitle:v9 style:2 handler:v23];
    v14 = [(WSWebSheetView *)self isSetupAssistantRunning];
    v15 = v14;
    v16 = "is not";
    if (v14)
    {
      v16 = "is";
    }

    NSLog(&cfstr_SetupAssistant.isa, v16);
    if (!v15 && ![(WSWebSheetView *)self carPlayAndInternet])
    {
      v17 = GetLocalizedString("Use Without Internet");
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __30__WSWebSheetView_cancelTapped__block_invoke_3;
      v22[3] = &unk_279EAFE80;
      v22[4] = self;
      v18 = [MEMORY[0x277D750F8] actionWithTitle:v17 style:2 handler:v22];
      [(UIAlertController *)self->_stayConnectedAlertController addAction:v18];
    }

    [(UIAlertController *)self->_stayConnectedAlertController addAction:v12];
    [(UIAlertController *)self->_stayConnectedAlertController addAction:v13];
    [(UIAlertController *)self->_stayConnectedAlertController setModalPresentationStyle:7];
    cancelBarButtonItem = self->_cancelBarButtonItem;
    v20 = [(UIAlertController *)self->_stayConnectedAlertController popoverPresentationController];
    [v20 setBarButtonItem:cancelBarButtonItem];

    v21 = [(WSWebSheetView *)self webSheetViewController];
    [v21 presentViewController:self->_stayConnectedAlertController animated:1 completion:&__block_literal_global];
  }

  else
  {

    [(WSWebSheetView *)self dismissWebSheetWithCaptiveWebSheetResult:1];
  }
}

uint64_t __30__WSWebSheetView_cancelTapped__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 576);
  *(v2 + 576) = 0;

  v4 = *(a1 + 32);

  return [v4 dismissWebSheetWithCaptiveWebSheetResult:7];
}

uint64_t __30__WSWebSheetView_cancelTapped__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 576);
  *(v2 + 576) = 0;

  v4 = *(a1 + 32);

  return [v4 dismissWebSheetWithCaptiveWebSheetResult:1];
}

uint64_t __30__WSWebSheetView_cancelTapped__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 576);
  *(v2 + 576) = 0;

  v4 = *(a1 + 32);

  return [v4 dismissWebSheetWithCaptiveWebSheetResult:5];
}

- (void)dismissWebSheetWithCaptiveWebSheetResult:(int64_t)a3
{
  NSLog(&cfstr_DismissingShee.isa, a2, a3);
  v5 = [(WSWebSheetView *)self delegate];

  if (v5)
  {
    v6 = [(WSWebSheetView *)self delegate];
    [v6 handleCompleteNotificationWithRedirectURLtype:self->_currentRedirectURLType result:a3];

    v7 = [(WSWebSheetView *)self delegate];
    [v7 handleDismissal];
  }
}

- (id)_sheetController
{
  sheetController = self->_sheetController;
  if (!sheetController)
  {
    v4 = [objc_alloc(MEMORY[0x277D7B840]) initWithDelegate:self];
    v5 = self->_sheetController;
    self->_sheetController = v4;

    sheetController = self->_sheetController;
  }

  return sheetController;
}

- (void)addAlert:(id)a3
{
  v4 = a3;
  alerts = self->_alerts;
  v9 = v4;
  if (!alerts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_alerts;
    self->_alerts = v6;

    v4 = v9;
    alerts = self->_alerts;
  }

  [(NSMutableArray *)alerts addObject:v4];
  v8 = [(WSWebSheetView *)self _sheetController];
  [v8 showSheetForAlert:v9 inView:0];
}

- (BOOL)isChinaRegion
{
  if (isChinaRegion_once != -1)
  {
    [WSWebSheetView isChinaRegion];
  }

  return isChinaRegion_isChinaRegion;
}

uint64_t __31__WSWebSheetView_isChinaRegion__block_invoke()
{
  v0 = CPGetDeviceRegionCode();
  NSLog(&cfstr_DeviceRegionCo.isa, v0);
  result = [CPGetDeviceRegionCode() isEqualToString:@"CH"];
  isChinaRegion_isChinaRegion = result;
  return result;
}

- (void)_precheckTrustForServerCertificate:(__SecTrust *)a3 host:(id)a4
{
  if (!self->_inDoneState)
  {
    result = kSecTrustResultInvalid;
    error = 0;
    v6 = SecTrustEvaluateWithError(a3, &error);
    TrustResult = SecTrustGetTrustResult(a3, &result);
    if (!v6)
    {
      if (error)
      {
        NSLog(&cfstr_Sectrustevalua.isa, error);
        CFRelease(error);
      }
    }

    if (TrustResult)
    {
      NSLog(&cfstr_Sectrustgettru.isa, TrustResult);
LABEL_7:
      self->_everReceivedUntrustedCertificate = 1;
      v8 = 3;
LABEL_8:
      self->_currentRedirectURLType = v8;
      self->_currentRedirectURLTypeSet = 1;
      return;
    }

    if (result > kSecTrustResultDeny)
    {
      if (result == kSecTrustResultRecoverableTrustFailure)
      {
        NSLog(&cfstr_GotSectrusteva_0.isa, 5);
        goto LABEL_7;
      }

      if (result != kSecTrustResultUnspecified)
      {
        goto LABEL_17;
      }
    }

    else if (result != kSecTrustResultProceed)
    {
      if (result == kSecTrustResultDeny)
      {
        NSLog(&cfstr_GotSectrusteva_1.isa, 3);
        goto LABEL_7;
      }

LABEL_17:
      NSLog(&cfstr_DonTKnowHowToH.isa, result);
      goto LABEL_7;
    }

    NSLog(&cfstr_GotSectrusteva.isa, result);
    v8 = 2;
    goto LABEL_8;
  }
}

- (id)_specializedMessageForError:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"NSErrorFailingURLKey"];

  if (!v5)
  {
    v10 = 0;
    goto LABEL_34;
  }

  v6 = [v5 _lp_userVisibleString];
  v7 = [v6 stringBySubstitutingHTMLEntitiesForAmpersandAndAngleBrackets];

  if ([v3 _web_errorIsInDomain:*MEMORY[0x277CCA738]])
  {
    v8 = [v3 code];
    if (v8 > -1103)
    {
      switch(v8)
      {
        case -1018:
          v9 = "Data Roaming is turned off. You can enable Data Roaming in the Cellular Data section of Settings.";
          goto LABEL_32;
        case -1017:
        case -1016:
        case -1015:
        case -1013:
        case -1012:
          goto LABEL_18;
        case -1014:
        case -1008:
          v9 = "Hotspot login cannot open the page because it could not load any data.";
          goto LABEL_32;
        case -1011:
          v9 = "Hotspot login cannot open the page because the page is invalid.";
          goto LABEL_32;
        case -1010:
          v9 = "Hotspot login cannot open the page because the page does not exist.";
          goto LABEL_32;
        case -1009:
          goto LABEL_14;
        case -1007:
          v9 = "Hotspot login cannot open the page because too many redirects occurred.";
          goto LABEL_32;
        case -1006:
        case -1003:
          v9 = "Hotspot login cannot open the page because the server cannot be found.";
          goto LABEL_32;
        case -1005:
          v9 = "Hotspot login cannot open the page because the network connection was lost.";
          goto LABEL_32;
        case -1004:
          v9 = "Hotspot login cannot open the page because it could not connect to the server.";
          goto LABEL_32;
        case -1002:
          v16 = MEMORY[0x277CCACA8];
          v12 = GetLocalizedString("Hotspot login cannot open the page because it cannot redirect to locations starting with “%@:”.");
          v13 = [v7 URLScheme];
          v10 = [v16 stringWithFormat:v12, v13];
          goto LABEL_40;
        case -1001:
          v9 = "Hotspot login could not open the page because the server stopped responding.";
          goto LABEL_32;
        case -1000:
          v9 = "Hotspot login cannot open the page because the address is invalid.";
          goto LABEL_32;
        default:
          if (v8 == -1102)
          {
            v17 = MEMORY[0x277CCACA8];
            v12 = GetLocalizedString("You do not have permission to view “%@”.");
            v13 = [MEMORY[0x277CCAA00] defaultManager];
            v14 = [v5 path];
            v18 = [v13 displayNameAtPath:v14];
            v10 = [v17 stringWithFormat:v12, v18];
          }

          else
          {
            if (v8 != -1100)
            {
              goto LABEL_18;
            }

            v11 = MEMORY[0x277CCACA8];
            v12 = GetLocalizedString("No file exists at the address “%@”.");
            v13 = [v5 path];
            v14 = [v13 stringBySubstitutingHTMLEntitiesForAmpersandAndAngleBrackets];
            v10 = [v11 stringWithFormat:v12, v14];
          }

LABEL_40:
          break;
      }

      goto LABEL_33;
    }

    if (v8 > -1201)
    {
      if (v8 == -1200)
      {
        v9 = "Hotspot login cannot open the page because it could not establish a secure connection to the server.";
        goto LABEL_32;
      }

      if (v8 == -1103)
      {
        v9 = "Hotspot login cannot open the page because it is too large.";
        goto LABEL_32;
      }
    }

    else
    {
      if (v8 == -2000)
      {
LABEL_14:
        v9 = "Hotspot login cannot open the page because it is not connected to the Internet.";
        goto LABEL_32;
      }

      if (v8 == -1205)
      {
        v9 = "The website did not accept the certificate.";
LABEL_32:
        v10 = GetLocalizedString(v9);
        goto LABEL_33;
      }
    }
  }

LABEL_18:
  if ([v3 _web_errorIsInDomain:*MEMORY[0x277CCA5B8]] && objc_msgSend(v3, "code") == 54)
  {
    v9 = "Hotspot login cannot open the page because the network connection was reset. The server may be busy.";
    goto LABEL_32;
  }

  v10 = 0;
LABEL_33:

LABEL_34:

  return v10;
}

- (id)_titleForError:(id)a3
{
  v3 = [a3 code];
  switch(v3)
  {
    case -1205:
      v4 = "Certificate Error";
      goto LABEL_7;
    case -1100:
      v4 = "No File Exists";
      goto LABEL_7;
    case -1102:
      v4 = "No Permission";
LABEL_7:
      v5 = GetLocalizedString(v4);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (void)webView:(id)a3 didCommitLoadForFrame:(id)a4
{
  v18 = a4;
  v5 = [v18 dataSource];
  v6 = [v5 request];
  v7 = [v6 URL];

  v8 = [v7 host];
  v9 = [v7 absoluteString];
  v10 = v9;
  if (v8 && v9)
  {
    if ([v9 rangeOfString:v8] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(WSWebSheetView *)self setCurrentURL:v7];
    }

    if ([v10 hasPrefix:@"https://"])
    {
      v11 = [v18 dataSource];
      v12 = [v11 response];

      [v12 _CFURLResponse];
      SSLCertificateContext = _CFURLResponseGetSSLCertificateContext();
      if (SSLCertificateContext && CFDictionaryGetValue(SSLCertificateContext, *MEMORY[0x277CBAE60]))
      {
        v14 = SecTrustCopyInfo();
        v15 = v14;
        if (v14)
        {
          v16 = [v14 objectForKey:*MEMORY[0x277CDC590]];
          if (v16)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v16 BOOLValue])
              {
                v17 = [v15 objectForKey:*MEMORY[0x277CDC588]];
                [(WSWebSheetView *)self setHasEVCert:v17 != 0];
              }
            }
          }
        }
      }
    }
  }
}

- (void)_showProfileDownloadAlert
{
  v3 = objc_alloc(MEMORY[0x277D7B848]);
  v4 = GetLocalizedString("Cannot Download Profile");
  v5 = GetLocalizedString("Hotspot login could not download this profile due to an unknown error.");
  v6 = [v3 initWithType:8 title:v4 bodyText:v5 defaultAction:1 otherAction:0];

  [(WSWebSheetView *)self addAlert:v6];
}

- (void)_showGenericDownloadAlert
{
  v3 = objc_alloc(MEMORY[0x277D7B848]);
  v4 = GetLocalizedString("Download Failed");
  v5 = GetLocalizedString("This file cannot be downloaded.");
  v6 = [v3 initWithType:9 title:v4 bodyText:v5 defaultAction:1 otherAction:0];

  [(WSWebSheetView *)self addAlert:v6];
}

- (void)handleProbeResult:(int64_t)a3
{
  if (a3 != 3)
  {
    if (!a3)
    {
      NSLog(&cfstr_CaptiveProbeWa.isa, a2);
      v4 = [(WSWebSheetView *)self delegate];
      v5 = v4;
      if (v4 && self->_postMessage)
      {
        loginURL = self->_loginURL;

        if (!loginURL)
        {
          goto LABEL_8;
        }

        v5 = [(WSWebSheetView *)self delegate];
        [v5 scrapeCredentialsUsingPOSTMessage:self->_postMessage loginURL:self->_loginURL];
      }

LABEL_8:
      if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && [(NSMutableDictionary *)self->_scrapedUserCredentialsFromJavaScript count])
      {
        if ([(NSMutableSet *)self->_oneTimeCodesToFilterFromScrapedCredentials count])
        {
          scrapedUserCredentialsFromJavaScript = self->_scrapedUserCredentialsFromJavaScript;
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __36__WSWebSheetView_handleProbeResult___block_invoke;
          v13[3] = &unk_279EAFEC8;
          v13[4] = self;
          [(NSMutableDictionary *)scrapedUserCredentialsFromJavaScript enumerateKeysAndObjectsUsingBlock:v13];
        }

        corewifi = self->_corewifi;
        v9 = self->_scrapedUserCredentialsFromJavaScript;
        v10 = [(CWFInterface *)corewifi currentKnownNetworkProfile];
        v12 = 0;
        [(CWFInterface *)corewifi setCaptivePortalCredentials:v9 knownNetworkProfile:v10 error:&v12];
        v11 = v12;

        if (v11)
        {
          NSLog(&cfstr_CwfinterfaceSe.isa, v11);
        }
      }

      [(WSWebSheetView *)self updateToDoneButton];
      [(WSWebSheetView *)self updateResultOptions];
      return;
    }

    goto LABEL_18;
  }

  if (self->_lastResultWasTimeoutError)
  {
LABEL_18:
    NSLog(&cfstr_CaptiveProbeFa.isa, a2, a3);

    [(WSWebSheetView *)self dequeueRedirectTypeQueue];
    return;
  }

  NSLog(&cfstr_CaptiveProbeTi.isa, a2);
  self->_lastResultWasTimeoutError = 1;
  [(WSWebSheetView *)self pushBackToRedirectTypeQueue];

  [(WSWebSheetView *)self dispatchCaptiveProbe];
}

void __36__WSWebSheetView_handleProbeResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([*(*(a1 + 32) + 664) containsObject:v5])
  {
    v6 = [v8 redactedSensitiveContentForWiFi];
    v7 = [v5 redactedSensitiveContentForWiFi];
    NSLog(&cfstr_RemovingOneTim.isa, v6, v7);

    [*(*(a1 + 32) + 648) removeObjectForKey:v8];
  }
}

- (void)_showProfileInstallAlert
{
  v3 = objc_alloc(MEMORY[0x277D7B848]);
  v4 = GetLocalizedString("Cannot Install Profile");
  v5 = GetLocalizedString("Hotspot login could not install this profile due to an unknown error.");
  v6 = [v3 initWithType:7 title:v4 bodyText:v5 defaultAction:1 otherAction:0];

  [(WSWebSheetView *)self addAlert:v6];
}

- (void)downloadDidFinish:(id)a3
{
  v4 = [(WSWebSheetDownloadManager *)self->_downloadManager fileDownloadPath];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4];
    if (v5)
    {
      v6 = [MEMORY[0x277D262A0] sharedConnection];
      v7 = [v4 lastPathComponent];
      v11 = 0;
      v8 = [v6 queueFileDataForAcceptance:v5 originalFileName:v7 outError:&v11];
      v9 = v11;

      [(WSWebSheetDownloadManager *)self->_downloadManager removeFromDisk];
      if (v9)
      {
        NSLog(&cfstr_FailedToInstal.isa, v9);
        [(WSWebSheetView *)self _showProfileInstallAlert];
      }
    }

    else
    {
      NSLog(&cfstr_FailedToReadDa.isa);
      [(WSWebSheetView *)self _showProfileDownloadAlert];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__WSWebSheetView_downloadDidFinish___block_invoke;
    block[3] = &unk_279EAFE30;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    NSLog(&cfstr_FailedToFindDo.isa);
  }
}

- (id)webView:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 windowFeatures:(id)a6
{
  v7 = a3;
  v8 = [a5 request];
  v9 = [v7 loadRequest:v8];

  return 0;
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v6 = a5;
  self->_currentRedirectURLTypeSet = 0;
  NSLog(&cfstr_WebSheetLoggin.isa, v6);
  [(WSWebSheetView *)self displayLoadingSpinner:0];
  v7 = [v6 code];
  if (![v6 _web_errorIsInDomain:*MEMORY[0x277CCA738]] || v7 != -1012 && v7 != -999)
  {
    v8 = [v6 userInfo];
    v9 = v8;
    if (v8)
    {
      NSLog(&cfstr_WebsheetDidFai.isa, v8);
    }

    v10 = [(WSWebSheetView *)self _specializedMessageForError:v6];
    if (!v10)
    {
      v10 = GetLocalizedString("An error occurred. The page could not be opened.");
    }

    v11 = [(WSWebSheetView *)self _titleForError:v6];
    if (!v11)
    {
      v11 = GetLocalizedString("Error Opening Page");
    }

    v12 = [MEMORY[0x277D75110] alertControllerWithTitle:v11 message:v10 preferredStyle:1];
    v13 = MEMORY[0x277D750F8];
    v14 = GetLocalizedString("OK");
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__WSWebSheetView_webView_didFailNavigation_withError___block_invoke;
    v17[3] = &unk_279EAFE80;
    v17[4] = self;
    v15 = [v13 actionWithTitle:v14 style:0 handler:v17];

    [v12 addAction:v15];
    v16 = [(WSWebSheetView *)self webSheetViewController];
    [v16 presentViewController:v12 animated:1 completion:&__block_literal_global_228];
  }
}

void __54__WSWebSheetView_webView_didFailNavigation_withError___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WSWebSheetView_webView_didFailNavigation_withError___block_invoke_2;
  block[3] = &unk_279EAFE30;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v6 = a5;
  self->_currentRedirectURLTypeSet = 0;
  NSLog(&cfstr_WebSheetLoggin_0.isa, v6);
  v7 = [v6 code];
  if (![v6 _web_errorIsInDomain:*MEMORY[0x277CCA738]] || v7 != -1012 && v7 != -999)
  {
    v8 = [v6 userInfo];
    v9 = v8;
    if (v8)
    {
      NSLog(&cfstr_WebsheetDidFai.isa, v8);
    }

    v10 = [(WSWebSheetView *)self _specializedMessageForError:v6];
    if (!v10)
    {
      v10 = GetLocalizedString("An error occurred. The page could not be opened.");
    }

    v11 = [(WSWebSheetView *)self _titleForError:v6];
    if (!v11)
    {
      v11 = GetLocalizedString("Error Opening Page");
    }

    v12 = [MEMORY[0x277D75110] alertControllerWithTitle:v11 message:v10 preferredStyle:1];
    v13 = MEMORY[0x277D750F8];
    v14 = GetLocalizedString("OK");
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__WSWebSheetView_webView_didFailProvisionalNavigation_withError___block_invoke;
    v17[3] = &unk_279EAFE80;
    v17[4] = self;
    v15 = [v13 actionWithTitle:v14 style:0 handler:v17];

    [v12 addAction:v15];
    v16 = [(WSWebSheetView *)self webSheetViewController];
    [v16 presentViewController:v12 animated:1 completion:&__block_literal_global_233];
  }
}

void __65__WSWebSheetView_webView_didFailProvisionalNavigation_withError___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__WSWebSheetView_webView_didFailProvisionalNavigation_withError___block_invoke_2;
  block[3] = &unk_279EAFE30;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)webView:(id)a3 didCommitNavigation:(id)a4
{
  v10 = a3;
  v5 = [v10 _committedURL];
  [(WSWebSheetView *)self setCurrentURL:v5];

  if ([v10 hasOnlySecureContent] && objc_msgSend(v10, "serverTrust"))
  {
    [v10 serverTrust];
    v6 = SecTrustCopyInfo();
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKey:*MEMORY[0x277CDC590]];
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v8 BOOLValue])
          {
            v9 = [v7 objectForKey:*MEMORY[0x277CDC588]];
            [(WSWebSheetView *)self setHasEVCert:v9 != 0];
          }
        }
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)isUserAprroved:(id)a3
{
  v12 = 0;
  v3 = a3;
  v4 = GetLocalizedString("Open in “%@”?");
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:v4, v3];

  LocalizedString = GetLocalizedString("SCHEME_APPROVAL_OPEN_BUTTON");
  v7 = GetLocalizedString("SCHEME_APPROVAL_DO_NOT_OPEN_BUTTON");
  v8 = CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v5, 0, LocalizedString, v7, 0, &v12);
  v10 = (v12 & 3) == 0 && v8 == 0;

  return v10;
}

- (id)appNametoOpenURL:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_LookingForAnAp.isa, v4);
  v5 = [v4 scheme];
  if ([v5 isEqual:@"http"])
  {
  }

  else
  {
    v6 = [v4 scheme];
    v7 = [v6 isEqual:@"https"];

    if (!v7)
    {
      v15 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v16 = [v15 applicationsAvailableForOpeningURL:v4];
      v10 = [v16 firstObject];

      if (v10)
      {
        v17 = MEMORY[0x277CC1E60];
        v18 = [v10 applicationIdentifier];
        v19 = [v17 applicationProxyForIdentifier:v18];
        v14 = [v19 localizedNameForContext:0];

        NSLog(&cfstr_AppCanOpenTheU.isa, v14);
      }

      else
      {
        NSLog(&cfstr_FailedToFindAn.isa, self);
        v14 = 0;
      }

      goto LABEL_16;
    }
  }

  v21 = 0;
  v8 = [objc_alloc(MEMORY[0x277CC1E98]) initWithURL:v4 error:&v21];
  v9 = v21;
  v10 = v9;
  if (v8)
  {
    v11 = [v8 bundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      if ([v12 isWebBrowser])
      {
        v13 = [v12 localizedName];
        NSLog(&cfstr_AppIsAWebBrows.isa, v13);

        v14 = [v12 localizedName];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    NSLog(&cfstr_FailedToFindCl.isa, v9);
    v14 = 0;
  }

LABEL_16:

  return v14;
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 request];
  v12 = [v9 navigationType];
  v13 = [v11 URL];
  v14 = v13;
  if (v12 <= 1)
  {
    if ([v13 hasTelephonyScheme])
    {
      NSLog(&cfstr_FoundTelephony.isa);
      v15 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v16 = MEMORY[0x277CBEBC0];
      v17 = [v14 phoneNumber];
      v18 = [v16 telephonyURLWithDestinationID:v17 promptUser:1];
      [v15 openURL:v18 withOptions:0];

LABEL_4:
LABEL_15:
      v10[2](v10, 0);
      goto LABEL_16;
    }

    v19 = [v14 scheme];
    v20 = [v19 isEqualToString:@"mailto"];

    if (v20)
    {
      NSLog(&cfstr_FoundMailtoSch.isa);
      v21 = [v9 targetFrame];
      if (v21)
      {
        v22 = v21;
        v23 = [v9 targetFrame];
        v24 = [v23 isMainFrame];

        if (!v24)
        {
          goto LABEL_15;
        }
      }

      if (![*MEMORY[0x277D76620] canOpenURL:v14] || !-[WSWebSheetView isUserAprroved:](self, "isUserAprroved:", @"Mail"))
      {
        goto LABEL_15;
      }

      v15 = [MEMORY[0x277CC1E80] defaultWorkspace];
      [v15 openURL:v14 withOptions:0];
      goto LABEL_4;
    }
  }

  if (self->_inDoneState && !self->_enableTVMode)
  {
    NSLog(&cfstr_AuthenticatedS.isa, v14);
    v25 = [(WSWebSheetView *)self appNametoOpenURL:v14];
    if (v12)
    {
      v10[2](v10, 1);
    }

    else
    {
      NSLog(&cfstr_ThisIsANavigat.isa);
      if (v25)
      {
        if (![(WSWebSheetView *)self isUserAprroved:v25])
        {
          NSLog(&cfstr_AuthenticatedS_0.isa);
          v10[2](v10, 0);
          goto LABEL_19;
        }

        v26 = [MEMORY[0x277CC1E80] defaultWorkspace];
        v47 = 0;
        v27 = [v26 openURL:v14 withOptions:0 error:&v47];
        v28 = v47;

        if (v27)
        {
          NSLog(&cfstr_AuthenticatedS_1.isa);
          v10[2](v10, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __74__WSWebSheetView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
          block[3] = &unk_279EAFE30;
          block[4] = self;
          dispatch_async(MEMORY[0x277D85CD0], block);

          goto LABEL_19;
        }

        NSLog(&cfstr_AuthenticatedS_2.isa, v28);
      }

      else
      {
        v28 = 0;
      }

      if (![v9 _canHandleRequest])
      {

        goto LABEL_14;
      }

      v44 = v28;
      v29 = [MEMORY[0x277CCAB68] stringWithString:@"com-apple-mobilesafari-tab:"];
      v30 = [v11 URL];
      v31 = escapedStringFromURL(v30);
      [v29 appendString:v31];

      v32 = [v8 URL];

      if (v32)
      {
        [v29 appendString:@"?back="];
        v33 = [v8 URL];
        v34 = escapedStringFromURL(v33);
        [v29 appendString:v34];
      }

      v35 = [v14 host];
      v36 = [v35 isEqualToString:@"itunes.apple.com"];
      v37 = @"Safari";
      if (v36)
      {
        v37 = @"iTunes Store";
      }

      v38 = v37;

      if ([(WSWebSheetView *)self isUserAprroved:v38])
      {
        v43 = v38;
        v39 = [MEMORY[0x277CC1E80] defaultWorkspace];
        v40 = [MEMORY[0x277CBEBC0] URLWithString:v29];
        v41 = [v39 openSensitiveURL:v40 withOptions:0];

        if ((v41 & 1) == 0)
        {
          NSLog(&cfstr_AuthenticatedS_3.isa, v29);
        }

        v10[2](v10, 0);
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __74__WSWebSheetView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke_2;
        v45[3] = &unk_279EAFE30;
        v45[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], v45);
        v38 = v43;
        v42 = v44;
      }

      else
      {
        NSLog(&cfstr_AuthenticatedS_0.isa);
        v10[2](v10, 0);
        v42 = v44;
      }

      v25 = v38;
    }

LABEL_19:

    goto LABEL_16;
  }

  NSLog(&cfstr_PreAuthenticat.isa, v14);
  if (([v9 _canHandleRequest] & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  v10[2](v10, 3);
LABEL_16:
}

- (BOOL)isConfigurationProfileMIMEType:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v4 acceptedMIMETypes];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (![v3 caseInsensitiveCompare:*(*(&v11 + 1) + 8 * i)])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5
{
  v14 = a5;
  v7 = a4;
  NSLog(&cfstr_Decidepolicyfo.isa);
  v8 = [v7 response];

  v9 = [v8 MIMEType];
  if ([(WSWebSheetView *)self isConfigurationProfileMIMEType:v9])
  {
    v10 = [v8 suggestedFilename];
    v11 = [v10 lastPathComponent];
    v12 = [v11 pathExtension];
    v13 = [v12 lowercaseString];
    [v13 isEqualToString:@"mobileconfig"];

    v14[2]();
  }

  else
  {
    [(WSWebSheetView *)self dispatchCaptiveProbe];
    (v14[2])(v14, 1);
  }
}

- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 protectionSpace];
  v12 = [v11 authenticationMethod];
  if (![v12 isEqualToString:*MEMORY[0x277CBAB00]])
  {
    goto LABEL_6;
  }

  v13 = [v9 protectionSpace];
  if (![v13 serverTrust])
  {

LABEL_6:
    goto LABEL_7;
  }

  v25 = self;
  v14 = [v9 protectionSpace];
  v15 = [v14 host];
  [v8 URL];
  v17 = v16 = v8;
  v18 = [v17 host];
  v26 = [v15 isEqualToString:v18];

  v8 = v16;
  if (!v26)
  {
LABEL_7:
    v10[2](v10, 1, 0);
    goto LABEL_8;
  }

  v19 = [v9 protectionSpace];
  v20 = [v19 serverTrust];

  v21 = [v9 protectionSpace];
  v22 = [v21 host];

  [(WSWebSheetView *)v25 _precheckTrustForServerCertificate:v20 host:v22];
  v23 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__WSWebSheetView_webView_didReceiveAuthenticationChallenge_completionHandler___block_invoke;
  block[3] = &unk_279EAFF18;
  v30 = v20;
  block[4] = v25;
  v28 = v22;
  v29 = v10;
  v24 = v22;
  dispatch_async(v23, block);

LABEL_8:
}

void __78__WSWebSheetView_webView_didReceiveAuthenticationChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _handleCertificateError:*(a1 + 56) newhost:*(a1 + 40)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__WSWebSheetView_webView_didReceiveAuthenticationChallenge_completionHandler___block_invoke_2;
  v5[3] = &unk_279EAFEF0;
  v8 = v2;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = v3;
  v7 = v4;
  v5[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __78__WSWebSheetView_webView_didReceiveAuthenticationChallenge_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    v4 = [MEMORY[0x277CBAB80] credentialForTrust:*(a1 + 48)];
    (*(v2 + 16))(v2, 0, v4);
  }

  else
  {
    (*(v2 + 16))(*(a1 + 40), 2, 0);
    v3 = *(a1 + 32);

    [v3 dismissWebSheetWithCaptiveWebSheetResult:1];
  }
}

- (void)updateRedirectURLTypeSetting
{
  if (!self->_inDoneState)
  {
    if (self->_firstNavigation && (-[WKWebView URL](self->_webView, "URL"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEqual:self->_probeURL], v3, v4))
    {
      NSLog(&cfstr_FirstNavigatio.isa);
      self->_firstNavigation = 0;
      self->_currentRedirectURLType = 1;
    }

    else
    {
      navigationURLAtStart = self->_navigationURLAtStart;
      if (!navigationURLAtStart)
      {
        return;
      }

      v6 = [(NSURL *)navigationURLAtStart scheme];
      v7 = v6;
      if (v6 && ![v6 caseInsensitiveCompare:@"http"])
      {
        v9 = 3;
        if (!self->_everReceivedUntrustedCertificate)
        {
          v9 = 1;
        }

        self->_currentRedirectURLType = v9;
      }

      else
      {
        if (self->_currentRedirectURLTypeSet)
        {
          currentRedirectURLType = self->_currentRedirectURLType;
        }

        else
        {
          currentRedirectURLType = 2;
        }

        if (self->_everReceivedUntrustedCertificate)
        {
          currentRedirectURLType = 3;
        }

        self->_currentRedirectURLType = currentRedirectURLType;
      }
    }

    self->_currentRedirectURLTypeSet = 1;
    v10 = self->_navigationURLAtStart;
    if (v10)
    {
      self->_navigationURLAtStart = 0;
    }
  }
}

- (void)_scrapeUserCredentialsUsingJavaScript
{
  v3 = self->_javaScriptScrapeCredentialsCounter + 1;
  self->_javaScriptScrapeCredentialsCounter = v3;
  NSLog(&cfstr_RegisteringUse.isa, a2, v3);
  v4 = [(WSWebSheetView *)self webView];
  v5 = *MEMORY[0x277D02A70];
  v6 = [MEMORY[0x277CE3800] defaultClientWorld];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__WSWebSheetView__scrapeUserCredentialsUsingJavaScript__block_invoke;
  v7[3] = &unk_279EAFF40;
  v7[4] = self;
  v7[5] = v3;
  [v4 callAsyncJavaScript:v5 arguments:0 inFrame:0 inContentWorld:v6 completionHandler:v7];
}

void __55__WSWebSheetView__scrapeUserCredentialsUsingJavaScript__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  NSLog(&cfstr_CompletedUserI.isa, v6, *(*(a1 + 32) + 640));
  v7 = [v5 domain];
  if ([v7 isEqualToString:*MEMORY[0x277CE38D0]])
  {
    v8 = [v5 code];

    if (v8 == 5)
    {
      NSLog(&cfstr_FailedToGetUse.isa, v5, v13);
      goto LABEL_13;
    }
  }

  else
  {
  }

  v9 = *(*(a1 + 32) + 640);
  if (*(a1 + 40) == v9)
  {
    if ([v14 count])
    {
      [*(*(a1 + 32) + 648) addEntriesFromDictionary:v14];
      v10 = [*(*(a1 + 32) + 648) description];
      v11 = [v10 redactedSensitiveContentForWiFi];
      NSLog(&cfstr_UpdatedUserEnt.isa, v11);
    }

    else if (v5)
    {
      NSLog(&cfstr_FailedToGetUse_0.isa, v5);
    }

    v12 = *(a1 + 40);
    NSLog(&cfstr_WillReRegister.isa, v12, *(*(a1 + 32) + 640));
    [*(a1 + 32) _scrapeUserCredentialsUsingJavaScript];
  }

  else
  {
    NSLog(&cfstr_WillNotReRegis.isa, *(a1 + 40), v9);
  }

LABEL_13:
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  [*MEMORY[0x277D76620] _beginShowingNetworkActivityIndicator];
  if (!self->_inDoneState)
  {
    self->_currentRedirectURLTypeSet = 0;
    navigationURLAtStart = self->_navigationURLAtStart;
    if (navigationURLAtStart)
    {
      self->_navigationURLAtStart = 0;
    }

    v6 = [(WKWebView *)self->_webView URL];
    v7 = self->_navigationURLAtStart;
    self->_navigationURLAtStart = v6;

    MEMORY[0x2821F96F8]();
  }
}

- (void)dispatchCaptiveProbe
{
  if (!self->_inDoneState)
  {
    if (self->_currentRedirectURLTypeSet)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__WSWebSheetView_dispatchCaptiveProbe__block_invoke;
      block[3] = &unk_279EAFE30;
      block[4] = self;
      dispatch_async(queue, block);
    }

    v4 = [(WSWebSheetView *)self delegate];

    if (v4)
    {
      v5 = [(WSWebSheetView *)self delegate];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __38__WSWebSheetView_dispatchCaptiveProbe__block_invoke_2;
      v6[3] = &unk_279EAFF68;
      v6[4] = self;
      [v5 handleWebNavigationWithCompletionHandler:v6];
    }
  }
}

void __38__WSWebSheetView_dispatchCaptiveProbe__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 520);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v1 + 536)];
  [v2 addObject:v3];
}

void __38__WSWebSheetView_dispatchCaptiveProbe__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38__WSWebSheetView_dispatchCaptiveProbe__block_invoke_3;
  v2[3] = &unk_279EAFE58;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  NSLog(&cfstr_Didfinishnavig.isa, a2, a3, a4);
  [*MEMORY[0x277D76620] _endShowingNetworkActivityIndicator];
  [(WSWebSheetView *)self _stopCaptiveProbeDispatchTimer];
  [(WSWebSheetView *)self _updateBackForwardButtons];
  [(WSWebSheetView *)self updateRedirectURLTypeSetting];

  [(WSWebSheetView *)self dispatchCaptiveProbe];
}

- (void)_autoFocusDelayTimerFired:(id)a3
{
  v5 = [(WSWebSheetView *)self webView];
  v3 = *MEMORY[0x277D02A68];
  v4 = [MEMORY[0x277CE3800] defaultClientWorld];
  [v5 callAsyncJavaScript:v3 arguments:0 inFrame:0 inContentWorld:v4 completionHandler:&__block_literal_global_348];
}

- (void)webView:(id)a3 resourceLoad:(id)a4 didCompleteWithError:(id)a5 response:(id)a6
{
  v11 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = _os_feature_enabled_impl();
    if (!a5)
    {
      if (v8)
      {
        NSLog(&cfstr_DidCompleteRes.isa, [v11 resourceType], 0);
        if ([v11 resourceType] == 3)
        {
          [(WSWebSheetView *)self _scrapeUserCredentialsUsingJavaScript];
        }

        [(NSTimer *)self->_autoFocusDelayTimer invalidate];
        v9 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__autoFocusDelayTimerFired_ selector:0 userInfo:0 repeats:0.25];
        autoFocusDelayTimer = self->_autoFocusDelayTimer;
        self->_autoFocusDelayTimer = v9;
      }
    }
  }
}

- (id)_fetchCaptivePortalCredentialsAndReturnNetworkName:(id *)a3 deviceName:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v7 = [(CWFInterface *)self->_corewifi currentKnownNetworkProfile];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 networkName];
      if (v9)
      {
        corewifi = self->_corewifi;
        v37 = 0;
        v11 = [(CWFInterface *)corewifi captivePortalCredentialsForKnownNetworkProfile:v8 error:&v37];
        v12 = v37;
        v13 = v12;
        if (v12)
        {
          NSLog(&cfstr_CwfinterfaceCa.isa, v12);
          v14 = 0;
        }

        else
        {
          v30 = v11;
          v31 = v9;
          [(CWFInterface *)self->_corewifi nearbyRecommendedNetworks];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          obj = v36 = 0u;
          v15 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v34;
LABEL_12:
            v18 = 0;
            while (1)
            {
              if (*v34 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v33 + 1) + 8 * v18);
              v20 = [v19 identifier];
              v21 = [v8 identifier];
              v22 = [v20 isEqualToString:v21];

              if (v22)
              {
                break;
              }

              if (v16 == ++v18)
              {
                v16 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
                if (v16)
                {
                  goto LABEL_12;
                }

                goto LABEL_18;
              }
            }

            v23 = [v19 receivedFromDeviceName];

            if (!v23)
            {
              goto LABEL_21;
            }

            v24 = 1;
          }

          else
          {
LABEL_18:

LABEL_21:
            NSLog(&cfstr_CouldNotGetCwf.isa);
            v24 = 0;
            v23 = 0;
          }

          v11 = v30;
          v9 = v31;
          if (a3)
          {
            v25 = v31;
            *a3 = v31;
          }

          v26 = v24 ^ 1;
          if (!a4)
          {
            v26 = 1;
          }

          if ((v26 & 1) == 0)
          {
            v27 = v23;
            *a4 = v23;
          }

          v14 = v30;

          v13 = 0;
        }
      }

      else
      {
        NSLog(&cfstr_Cwfnetworkprof.isa);
        v14 = 0;
      }
    }

    else
    {
      NSLog(&cfstr_CwfinterfaceCu.isa);
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_populateTextSuggestionsWithCaptivePortalCredentials:(id)a3 networkName:(id)a4 deviceName:(id)a5 inputSession:(id)a6
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a6;
  v10 = [(UITextSuggestion *)WSWebSheetAutoFillTextSuggestion textSuggestionWithInputText:&stru_2882BFA40];
  if (v8)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = GetLocalizedString("From %@");
    v13 = [v11 stringWithFormat:v12, v8];
    [v10 setHeaderText:v13];
  }

  v14 = [(WSWebSheetView *)self isChinaRegion];
  v15 = MEMORY[0x277CCACA8];
  if (v14)
  {
    v16 = "Fill WLAN details";
  }

  else
  {
    v16 = "Fill Wi-Fi details";
  }

  v17 = GetLocalizedString(v16);
  v18 = [v15 stringWithFormat:v17];
  [v10 setDisplayText:v18];

  v21[0] = v10;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [v9 setSuggestions:v19];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_webView:(id)a3 didStartInputSession:(id)a4
{
  v5 = a4;
  v10 = 0;
  v11 = 0;
  v6 = [(WSWebSheetView *)self _fetchCaptivePortalCredentialsAndReturnNetworkName:&v11 deviceName:&v10];
  v7 = v11;
  v8 = v10;
  if ([v6 count] && v7)
  {
    objc_storeStrong(&self->_fetchedCredentials, v6);
    [(WSWebSheetView *)self _populateTextSuggestionsWithCaptivePortalCredentials:v6 networkName:v7 deviceName:v8 inputSession:v5];
    v9 = [[WSWebSheetInputSessionProxy alloc] initWithInputSession:v5];
    [(_SFFormAutoFillController *)self->_autoFillController fieldFocusedWithInputSession:v9];
  }

  else
  {
    [(_SFFormAutoFillController *)self->_autoFillController fieldFocusedWithInputSession:v5];
  }
}

- (void)_webView:(id)a3 willSubmitFormValues:(id)a4 userObject:(id)a5 submissionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  NSLog(&cfstr_Willsubmitform.isa);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__WSWebSheetView__webView_willSubmitFormValues_userObject_submissionHandler___block_invoke;
  v20[3] = &unk_279EAFFB0;
  v20[4] = &v27;
  v20[5] = &v21;
  [v11 enumerateKeysAndObjectsUsingBlock:v20];
  if (v28[5] && (v14 = v22[5]) != 0)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"username=%@&password=%@", v28[5], v14];
    postMessage = self->_postMessage;
    self->_postMessage = v15;

    v17 = [v10 _committedURL];
    v18 = [v17 relativeString];
    loginURL = self->_loginURL;
    self->_loginURL = v18;

    v13[2](v13);
  }

  else
  {
    [(_SFFormAutoFillController *)self->_autoFillController willSubmitFormValues:v11 userObject:v12 submissionHandler:v13];
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
}

void __77__WSWebSheetView__webView_willSubmitFormValues_userObject_submissionHandler___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  if ([v10 rangeOfString:@"user" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  if ([v10 rangeOfString:@"password" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v8 = *(*(*(a1 + 32) + 8) + 40);
  if (v8 && *(*(*(a1 + 40) + 8) + 40))
  {
    v9 = "failed to find";
    if ([v8 length] && objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "length"))
    {
      v9 = "found";
    }

    NSLog(&cfstr_Willsubmitform_0.isa, v9);
    *a4 = 1;
  }
}

- (void)_autoFillUserCredentialsUsingJavaScript
{
  fetchedCredentials = self->_fetchedCredentials;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__WSWebSheetView__autoFillUserCredentialsUsingJavaScript__block_invoke;
  v3[3] = &unk_279EAFEC8;
  v3[4] = self;
  [(NSDictionary *)fetchedCredentials enumerateKeysAndObjectsUsingBlock:v3];
}

void __57__WSWebSheetView__autoFillUserCredentialsUsingJavaScript__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v9 = [v4 webView];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:*MEMORY[0x277D02A78], v6, v5];

  v8 = [MEMORY[0x277CE3800] defaultClientWorld];
  [v9 callAsyncJavaScript:v7 arguments:0 inFrame:0 inContentWorld:v8 completionHandler:&__block_literal_global_390];
}

void __57__WSWebSheetView__autoFillUserCredentialsUsingJavaScript__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    NSLog(&cfstr_FailedToAutoFi.isa, a3);
  }
}

- (void)_webView:(id)a3 insertTextSuggestion:(id)a4 inInputSession:(id)a5
{
  v11 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WSWebSheetView *)self _autoFillUserCredentialsUsingJavaScript];
      [v11 resignFirstResponder];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![v7 textSuggestionType])
      {
        v8 = [v7 inputText];

        if (v8)
        {
          oneTimeCodesToFilterFromScrapedCredentials = self->_oneTimeCodesToFilterFromScrapedCredentials;
          v10 = [v7 inputText];
          [(NSMutableSet *)oneTimeCodesToFilterFromScrapedCredentials addObject:v10];
        }
      }
    }
  }

  [(_SFFormAutoFillController *)self->_autoFillController insertTextSuggestion:v7];
}

- (void)_captiveProbeDispatchTimerDidFire:(id)a3
{
  [(WSWebSheetView *)self dispatchCaptiveProbe];

  [(WSWebSheetView *)self _stopCaptiveProbeDispatchTimer];
}

- (void)_stopCaptiveProbeDispatchTimer
{
  [(NSTimer *)self->_captiveProbeDispatchTimer invalidate];
  captiveProbeDispatchTimer = self->_captiveProbeDispatchTimer;
  self->_captiveProbeDispatchTimer = 0;
}

- (void)_startCaptiveProbeDispatchTimer
{
  [(WSWebSheetView *)self _stopCaptiveProbeDispatchTimer];
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__captiveProbeDispatchTimerDidFire_ selector:0 userInfo:0 repeats:10.0];
  captiveProbeDispatchTimer = self->_captiveProbeDispatchTimer;
  self->_captiveProbeDispatchTimer = v3;

  MEMORY[0x2821F96F8]();
}

- (WSWebSheetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end