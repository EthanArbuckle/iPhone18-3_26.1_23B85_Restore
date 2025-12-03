@interface SUScriptInterface
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (int64_t)purchaseAnimationStyleFromString:(id)string;
+ (void)initialize;
- (BOOL)arePodcastsDisabled;
- (BOOL)canSendEmail;
- (BOOL)checkCapabilitiesPropertyListString:(id)string showFailureDialog:(BOOL)dialog;
- (BOOL)haveAccount;
- (BOOL)isExplicitContentDisabled;
- (BOOL)isRunningTest;
- (BOOL)launchedToTest;
- (BOOL)scriptXMLHTTPRequest:(id)request requiresCellularForURL:(id)l;
- (BOOL)scriptXMLHTTPStoreRequest:(id)request requiresCellularForURL:(id)l;
- (BOOL)shouldRestrictContentOfSystem:(id)system level:(id)level;
- (BOOL)shouldShowAddToWalletLink:(id)link;
- (BOOL)showConfirmWithMessage:(id)message title:(id)title okButtonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle;
- (NSArray)deviceOffers;
- (NSArray)installedSoftwareApplications;
- (NSNumber)orientation;
- (NSString)askToBuyPrompt;
- (NSString)clientIdentifier;
- (NSString)cookie;
- (NSString)cookieForDefaultURL;
- (NSString)deviceSerialNumber;
- (NSString)gsToken;
- (NSString)referrerURL;
- (NSString)referringUserAgent;
- (NSString)storeFrontIdentifier;
- (NSString)tidState;
- (NSString)userAgent;
- (OpaqueJSContext)copyJavaScriptContext;
- (SSAuthenticationContext)authenticationContext;
- (SUClientInterface)clientInterface;
- (SUScriptAccount)primaryAccount;
- (SUScriptAccount)primaryLockerAccount;
- (SUScriptAppleAccountStore)appleAccountStore;
- (SUScriptApplication)application;
- (SUScriptCarrierBundlingController)carrierBundlingController;
- (SUScriptDevice)device;
- (SUScriptDictionary)tidHeaders;
- (SUScriptFairPlayContext)accountCreationSecureContext;
- (SUScriptInterface)init;
- (SUScriptInterfaceDelegate)delegate;
- (SUScriptInterfaceDelegate)threadSafeDelegate;
- (SUScriptKeyValueStore)applicationLocalStorage;
- (SUScriptKeyValueStore)deviceLocalStorage;
- (SUScriptMediaLibrary)mediaLibrary;
- (SUScriptMetricsController)metricsController;
- (SUScriptNavigationBar)navigationBar;
- (SUScriptNavigationSimulator)navigationSimulator;
- (SUScriptPassbookLibrary)passbookLibrary;
- (SUScriptPreviewOverlay)previewOverlay;
- (SUScriptProtocol)protocol;
- (SUScriptPurchaseManager)purchaseManager;
- (SUScriptSectionsController)sectionsController;
- (SUScriptTelephony)telephony;
- (SUScriptViewController)viewController;
- (SUScriptWindow)window;
- (SUScriptWindowContext)scriptWindowContext;
- (WebFrame)webFrame;
- (id)DOMElementWithElement:(id)element;
- (id)_cookieForURL:(id)l;
- (id)_copyDialogWithMessage:(id)message title:(id)title cancelButtonTitle:(id)buttonTitle okButtonTitle:(id)okButtonTitle;
- (id)accountDSID;
- (id)accountForDSID:(id)d;
- (id)accountName;
- (id)activeAudioPlayers;
- (id)activeNetworkType;
- (id)applicationAccessibilityEnabled;
- (id)creditCardReaderAvailable;
- (id)currentAccount;
- (id)currentAttestationVersion;
- (id)diskSpaceAvailable;
- (id)getAudioPlayerForURL:(id)l keyURL:(id)rL certificateURL:(id)uRL;
- (id)getDownloadQueueWithQueueType:(id)type;
- (id)getiTunesPass;
- (id)globalRootObject;
- (id)hardwareType;
- (id)isApplePayAvailable;
- (id)isFinanceInterruption;
- (id)isWalletAvailable;
- (id)loggingEnabled;
- (id)machineGUID;
- (id)makeAMSViewController;
- (id)makeAccount;
- (id)makeAccountPageWithURLs:(id)ls;
- (id)makeActivity;
- (id)makeActivityItemProviderWithMIMEType:(id)type;
- (id)makeActivityViewControllerWithProviders:(id)providers activities:(id)activities;
- (id)makeButtonWithSystemItemString:(id)string action:(id)action;
- (id)makeButtonWithTitle:(id)title action:(id)action;
- (id)makeCalloutView;
- (id)makeCanvasWithWidth:(id)width height:(id)height;
- (id)makeColorWithHue:(id)hue saturation:(id)saturation brightness:(id)brightness alpha:(id)alpha;
- (id)makeColorWithRed:(id)red green:(id)green blue:(id)blue alpha:(id)alpha;
- (id)makeColorWithWhite:(id)white alpha:(id)alpha;
- (id)makeComposeReviewViewControllerWithReview:(id)review;
- (id)makeDateFormatter;
- (id)makeDialog;
- (id)makeDocumentInteractionController;
- (id)makeDonationViewControllerWithCharityIdentifier:(id)identifier;
- (id)makeFacebookRequestWithURL:(id)l requestMethod:(id)method;
- (id)makeFacebookSessionWithAccount:(id)account;
- (id)makeFamilySetupViewController;
- (id)makeGiftViewController;
- (id)makeLinearGradientWithX0:(double)x0 y0:(double)y0 x1:(double)x1 y1:(double)y1;
- (id)makeLookupRequest;
- (id)makeMediaPlayerItemWithProperties:(id)properties;
- (id)makeMediaPlayerViewControllerWithMediaPlayerItem:(id)item;
- (id)makeMenuViewController;
- (id)makeNavigationControllerWithRootViewController:(id)controller;
- (id)makeNumberFormatterWithStyle:(id)style;
- (id)makePopOverWithViewController:(id)controller;
- (id)makeRadialGradientWithX0:(double)x0 y0:(double)y0 r0:(double)r0 x1:(double)x1 y1:(double)y1 r1:(double)r1;
- (id)makeRedeemCameraViewController;
- (id)makeRedeemViewController;
- (id)makeReportAProblemViewControllerWithAdamID:(id)d;
- (id)makeReviewWithAdamID:(id)d;
- (id)makeScriptActionWithType:(id)type;
- (id)makeSegmentedControl;
- (id)makeSplitViewController;
- (id)makeStorePageWithURLs:(id)ls;
- (id)makeStoreSheetViewController;
- (id)makeSubscriptionStatusRequest;
- (id)makeTextFieldWithStyle:(id)style placeholder:(id)placeholder value:(id)value width:(id)width;
- (id)makeURLRequestWithURLs:(id)ls timeoutInterval:(id)interval;
- (id)makeVolumeViewController;
- (id)makeWindow;
- (id)makeXMLHTTPRequest;
- (id)makeXMLHTTPStoreRequest;
- (id)parentViewController;
- (id)presentPrivacySplashWithIdentifier:(id)identifier;
- (id)presentPrivacyViewControllerWithIdentifier:(id)identifier;
- (id)primaryiCloudAccount;
- (id)redeemCameraAvailable;
- (id)requestInfo;
- (id)screenReaderRunning;
- (id)scriptAttributeKeys;
- (id)shouldDisplayPrivacyLinkWithIdentifier:(id)identifier;
- (id)showPromptWithMessage:(id)message initialValue:(id)value title:(id)title okButtonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle;
- (id)softwareApplicationWithAdamID:(id)d;
- (id)softwareApplicationWithBundleID:(id)d;
- (id)subscriptionStatusCoordinator;
- (id)systemVersion;
- (int64_t)dialogDisplayCountForKey:(id)key;
- (int64_t)storeSheetType;
- (void)_cleanUpSafariViewController;
- (void)_dismissSafariViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)_finishCreditCardReaderWithOutput:(id)output callback:(id)callback;
- (void)_getSoftwareApplicationWithCompletionFunction:(id)function lookupBlock:(id)block;
- (void)_globalEventNotification:(id)notification;
- (void)_presentSafariViewControllerWithURL:(id)l safariIdentifier:(id)identifier animated:(BOOL)animated;
- (void)_scriptUserInfoDidChangeNotification:(id)notification;
- (void)acknowledgePrivacyLinkWithIdentifier:(id)identifier;
- (void)addExternalDownloads:(id)downloads options:(id)options;
- (void)addExternalDownloadsFromManifestURL:(id)l;
- (void)addPurchaseWithInfo:(id)info options:(id)options;
- (void)addiTunesPassWithCompletionFunction:(id)function;
- (void)approveInPerson:(id)person completionFunction:(id)function;
- (void)authenticateAppleIdWithUsername:(id)username password:(id)password callback:(id)callback;
- (void)authenticateForAccount:(id)account withOptions:(id)options;
- (void)authorizeApplePayEnrollmentWithParameters:(id)parameters callback:(id)callback;
- (void)composeEmailWithSubject:(id)subject body:(id)body;
- (void)composeReviewWithURL:(id)l itemIdentifier:(id)identifier type:(id)type;
- (void)dealloc;
- (void)dismissSafariViewControllerAnimated:(BOOL)animated;
- (void)dismissSheet;
- (void)dismissWindowsWithOptions:(id)options;
- (void)dispatchGlobalEventWithName:(id)name payload:(id)payload;
- (void)dispatchXEvent:(id)event;
- (void)fetchAppleCardMetadata:(id)metadata callback:(id)callback;
- (void)fetchWalletCardData:(id)data;
- (void)fetchWalletCardMetadata:(id)metadata callback:(id)callback;
- (void)financeInterruptionResolved:(id)resolved;
- (void)finishedTest:(id)test extraResults:(id)results;
- (void)getInstalledSoftwareApplicationsWithCompletionFunction:(id)function;
- (void)getSoftwareApplicationWithAdamID:(id)d completionFunction:(id)function;
- (void)getSoftwareApplicationWithBundleID:(id)d completionFunction:(id)function;
- (void)goBack;
- (void)gotoStoreURL:(id)l ofType:(id)type withAuthentication:(BOOL)authentication forceAuthentication:(BOOL)forceAuthentication;
- (void)handleDialogPropertyListString:(id)string;
- (void)handleProtocolPropertyListString:(id)string;
- (void)initAuthentication;
- (void)openCreditCardReaderWithCompletionFunction:(id)function;
- (void)openFamilyCircleSetupWithClientName:(id)name completionFunction:(id)function;
- (void)openURL:(id)l;
- (void)paymentSetupFeatureSupported:(id)supported callback:(id)callback;
- (void)perfLog:(id)log;
- (void)performPurchaseAnimationForIdentifier:(id)identifier style:(id)style;
- (void)pingURL:(id)l;
- (void)redeemCodes:(id)codes params:(id)params completion:(id)completion;
- (void)redeemCodesReloadDownloadManager;
- (void)registerNavBarButtonWithTitle:(id)title side:(id)side function:(id)function;
- (void)reloadFooterSection:(id)section withURL:(id)l;
- (void)removeDeviceOfferWithIdentifier:(id)identifier account:(id)account;
- (void)reportAProblemForIdentifier:(id)identifier;
- (void)requireCellularForResourceWithURL:(id)l;
- (void)safariViewController:(id)controller didCompleteInitialLoad:(BOOL)load;
- (void)safariViewControllerDidFinish:(id)finish;
- (void)selectSectionWithIdentifier:(id)identifier;
- (void)sendPostOfType:(id)type withOptions:(id)options;
- (void)setAccounts:(id)accounts;
- (void)setAuthenticationContext:(id)context;
- (void)setCarrierBundlingController:(id)controller;
- (void)setClientInterface:(id)interface;
- (void)setCookie:(id)cookie;
- (void)setCookieDefaultURL:(id)l;
- (void)setCookieForDefaultURL:(id)l;
- (void)setDelegate:(id)delegate;
- (void)setDevice:(id)device;
- (void)setGlobalRootObject:(id)object;
- (void)setGsToken:(id)token;
- (void)setLibraryIdentifierWithType:(id)type value:(id)value;
- (void)setLoggingEnabled:(id)enabled;
- (void)setMediaLibrary:(id)library;
- (void)setMetricsController:(id)controller;
- (void)setNavigationBar:(id)bar;
- (void)setNavigationSimulator:(id)simulator;
- (void)setOrientation:(id)orientation;
- (void)setPrimaryAccount:(id)account;
- (void)setPrimaryLockerAccount:(id)account;
- (void)setReferrerURL:(id)l;
- (void)setReferringUserAgent:(id)agent;
- (void)setSafariViewControllerDismissButtonStyle:(id)style;
- (void)setScriptWindowContext:(id)context;
- (void)setStoreFrontIdentifier:(id)identifier;
- (void)setSubscriptionStatusCoordinator:(id)coordinator;
- (void)setTidHeaders:(id)headers;
- (void)setTidState:(id)state;
- (void)setUserAgent:(id)agent;
- (void)setWalletAvailable:(id)available;
- (void)setWebFrame:(id)frame;
- (void)setWindow:(id)window;
- (void)showAlertWithMessage:(id)message title:(id)title buttonTitle:(id)buttonTitle;
- (void)showMediaPlayerWithURLString:(id)string orientation:(id)orientation title:(id)title subtitle:(id)subtitle bookmarkID:(id)d duration:(id)duration type:(id)type imageURL:(id)self0;
- (void)showSafariViewControllerWithURLString:(id)string identifier:(id)identifier animated:(BOOL)animated;
- (void)signOutPrimaryAccount;
- (void)signupInWallet:(id)wallet callback:(id)callback;
- (void)startListeningForAuthenticationTokenWithCallback:(id)callback;
- (void)stopListeningForAuthenticationToken;
@end

@implementation SUScriptInterface

- (id)subscriptionStatusCoordinator
{
  [(SUScriptObject *)self lock];
  subscriptionStatusCoordinator = self->_subscriptionStatusCoordinator;
  v4 = subscriptionStatusCoordinator;
  if (!subscriptionStatusCoordinator)
  {
    v5 = objc_alloc_init(SUScriptSubscriptionStatusCoordinator);
    self->_subscriptionStatusCoordinator = v5;
    [(SUScriptObject *)v5 setVisible:1];
    v4 = self->_subscriptionStatusCoordinator;
  }

  v6 = v4;
  [(SUScriptObject *)self unlock];
  if (!subscriptionStatusCoordinator)
  {
    [(SUScriptObject *)self checkInScriptObject:v6];
  }

  return v6;
}

- (void)setSubscriptionStatusCoordinator:(id)coordinator
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"subscriptionStatusCoordinator"];

  [v3 throwException:v4];
}

- (BOOL)launchedToTest
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __61__SUScriptInterface_SUScriptTestingAdditions__launchedToTest__block_invoke(uint64_t a1)
{
  result = [*MEMORY[0x1E69DDA98] launchedToTest];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)isRunningTest
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __60__SUScriptInterface_SUScriptTestingAdditions__isRunningTest__block_invoke(uint64_t a1)
{
  result = [*MEMORY[0x1E69DDA98] isRunningTest];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)finishedTest:(id)test extraResults:(id)results
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_2:
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (results && (isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [results copyArrayOrDictionaryWithContext:{objc_msgSend(+[SUClientDispatch scriptExecutionContext](SUClientDispatch, "scriptExecutionContext"), "globalExecutionContext")}];
      goto LABEL_3;
    }

    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    goto LABEL_2;
  }

LABEL_3:
  WebThreadRunOnMainThread();
}

- (SUScriptInterface)init
{
  v15.receiver = self;
  v15.super_class = SUScriptInterface;
  v2 = [(SUScriptObject *)&v15 init];
  v3 = v2;
  if (v2)
  {
    [(SUScriptInterface *)v2 initAuthentication];
    v4 = objc_alloc_init(SUScriptNotificationObserver);
    notificationObserver = v3->_notificationObserver;
    v3->_notificationObserver = v4;

    [(SUScriptNotificationObserver *)v3->_notificationObserver addEventReceiver:v3];
    safariDismissButtonStyle = v3->_safariDismissButtonStyle;
    v3->_safariDismissButtonStyle = &unk_1F41EA8D0;

    v7 = objc_alloc_init(SUScriptOperationDelegate);
    scriptOperationDelegate = v3->_scriptOperationDelegate;
    v3->_scriptOperationDelegate = v7;

    v9 = objc_alloc_init(SUScriptStoreBagLoader);
    scriptStoreBagLoader = v3->_scriptStoreBagLoader;
    v3->_scriptStoreBagLoader = v9;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__globalEventNotification_ name:@"SUScriptInterfaceGlobalEventNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__scriptUserInfoDidChangeNotification_ name:@"SUStorePageViewControllerScriptUserInfoDidChangeNotification" object:0];
    v12 = dispatch_queue_create("com.apple.SUScriptInterface.hsaToken", 0);
    hsaTokenQueue = v3->_hsaTokenQueue;
    v3->_hsaTokenQueue = v12;

    v3->_hsaCurrentIdentifier = 0;
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SUScriptInterfaceGlobalEventNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUStorePageViewControllerScriptUserInfoDidChangeNotification" object:0];
  [(SUScriptInterface *)self deallocAuthentication];
  [(SUScriptInterface *)self deallocCarrierBundlingController];
  [(SUScriptInterface *)self deallocMediaLibrary];
  [(SUScriptInterface *)self deallocMetricsController];
  [(SUScriptInterface *)self deallocSubscriptionStatusCoordinator];
  [(SUScriptNotificationObserver *)self->_notificationObserver removeEventReceiver:self];
  [(SUScriptOperationDelegate *)self->_scriptOperationDelegate cancelAllOperations];
  [(SUScriptInterface *)self stopListeningForAuthenticationToken];

  v4.receiver = self;
  v4.super_class = SUScriptInterface;
  [(SUScriptObject *)&v4 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  [(SUScriptObject *)self lock];
  v3 = self->_authenticationContext;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (SUClientInterface)clientInterface
{
  [(SUScriptObject *)self lock];
  v3 = self->_clientInterface;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (OpaqueJSContext)copyJavaScriptContext
{
  [(SUScriptObject *)self lock];
  globalContext = [(WebFrame *)self->_frame globalContext];
  v4 = globalContext;
  if (globalContext)
  {
    JSGlobalContextRetain(globalContext);
  }

  [(SUScriptObject *)self unlock];
  return v4;
}

- (SUScriptInterfaceDelegate)delegate
{
  [(SUScriptObject *)self lock];
  v3 = self->_delegate;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (SUScriptKeyValueStore)deviceLocalStorage
{
  [(SUScriptObject *)self lock];
  deviceLocalStorage = self->_deviceLocalStorage;
  if (!deviceLocalStorage)
  {
    v4 = [[SUScriptKeyValueStore alloc] initWithDomain:@"com.apple.iTunesStoreUI.script.device"];
    v5 = self->_deviceLocalStorage;
    self->_deviceLocalStorage = v4;

    deviceLocalStorage = self->_deviceLocalStorage;
  }

  v6 = deviceLocalStorage;
  [(SUScriptObject *)self unlock];

  return v6;
}

- (SUScriptWindowContext)scriptWindowContext
{
  [(SUScriptObject *)self lock];
  v3 = self->_scriptWindowContext;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (void)setAuthenticationContext:(id)context
{
  contextCopy = context;
  [(SUScriptObject *)self lock];
  if (self->_authenticationContext != contextCopy)
  {
    v4 = [(SSAuthenticationContext *)contextCopy copy];
    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v4;
  }

  [(SUScriptObject *)self unlock];
}

- (void)setClientInterface:(id)interface
{
  interfaceCopy = interface;
  [(SUScriptObject *)self lock];
  if (self->_clientInterface != interfaceCopy)
  {
    objc_storeStrong(&self->_clientInterface, interface);
  }

  [(SUScriptObject *)self unlock];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(SUScriptObject *)self lock];
  objc_storeStrong(&self->_delegate, delegate);
  [self->_threadSafeDelegate setDelegate:self->_delegate];
  threadSafeDelegate = self->_threadSafeDelegate;
  if (self->_delegate)
  {
    if (threadSafeDelegate)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(MEMORY[0x1E69E4740]);
    [v6 setDelegate:self->_delegate];
    [v6 setShouldMessageMainThread:1];
    threadSafeDelegate = self->_threadSafeDelegate;
  }

  else
  {
    v6 = 0;
  }

  self->_threadSafeDelegate = v6;

LABEL_6:
  [(SUScriptObject *)self unlock];
}

- (void)setScriptWindowContext:(id)context
{
  contextCopy = context;
  [(SUScriptObject *)self lock];
  if (self->_scriptWindowContext != contextCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_scriptWindowContext, context);
    }
  }

  [(SUScriptObject *)self unlock];
}

- (void)setWebFrame:(id)frame
{
  frameCopy = frame;
  [(SUScriptObject *)self lock];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (self->_frame != frameCopy && (frameCopy == 0) | isKindOfClass & 1)
  {
    objc_storeStrong(&self->_frame, frame);
  }

  [(SUScriptObject *)self unlock];
}

- (SUScriptInterfaceDelegate)threadSafeDelegate
{
  [(SUScriptObject *)self lock];
  v3 = self->_threadSafeDelegate;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (WebFrame)webFrame
{
  [(SUScriptObject *)self lock];
  v3 = self->_frame;
  [(SUScriptObject *)self unlock];

  return v3;
}

+ (int64_t)purchaseAnimationStyleFromString:(id)string
{
  stringCopy = string;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && ([stringCopy isEqualToString:@"float"] & 1) != 0;

  return v4;
}

- (id)DOMElementWithElement:(id)element
{
  elementCopy = element;
  delegate = [(SUScriptInterface *)self delegate];
  v6 = [delegate DOMElementForScriptInterface:self element:elementCopy];

  return v6;
}

- (id)parentViewController
{
  delegate = [(SUScriptInterface *)self delegate];
  v4 = [delegate parentViewControllerForScriptInterface:self];

  return v4;
}

- (void)acknowledgePrivacyLinkWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
  }

  else if (identifierCopy)
  {
    v6 = objc_alloc(MEMORY[0x1E69E4770]);
    v7 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
    v8 = [v6 initWithBagContext:v7];

    objc_initWeak(&location, v8);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __58__SUScriptInterface_acknowledgePrivacyLinkWithIdentifier___block_invoke;
    v14 = &unk_1E8164408;
    objc_copyWeak(&v17, &location);
    selfCopy = self;
    v9 = identifierCopy;
    v16 = v9;
    [v8 setCompletionBlock:&v11];
    mainQueue = [MEMORY[0x1E69E4798] mainQueue];
    [mainQueue addOperation:v8];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);

    return;
  }

  v5 = MEMORY[0x1E69E2F88];

  [v5 throwException:@"Invalid acknowlegement identifier"];
}

void __58__SUScriptInterface_acknowledgePrivacyLinkWithIdentifier___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained URLBag];

  if (v3)
  {
    v4 = [v3 valueForKey:@"privacyAcknowledgementUrl"];
    if (![v4 length] || (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v4), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = [MEMORY[0x1E69D4938] sharedConfig];
      v13 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      v15 = [v6 OSLogObject];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v14 &= 2u;
      }

      if (v14)
      {
        *v23 = 138543618;
        *&v23[4] = objc_opt_class();
        *&v23[12] = 2080;
        *&v23[14] = "[SUScriptInterface acknowledgePrivacyLinkWithIdentifier:]_block_invoke";
        v16 = *&v23[4];
        LODWORD(v22) = 22;
        v17 = _os_log_send_and_compose_impl();

        if (!v17)
        {
          goto LABEL_31;
        }

        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, v23, v22, *v23, *&v23[8], v24}];
        free(v17);
        SSFileLog();
      }

      goto LABEL_31;
    }

    v6 = v5;
    v7 = [MEMORY[0x1E69D4938] sharedConfig];
    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      *v23 = 138543362;
      *&v23[4] = objc_opt_class();
      v11 = *&v23[4];
      LODWORD(v22) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_13:

        [MEMORY[0x1E69D4988] acknowledgePrivacyLinkWithIdentifier:*(a1 + 40) URL:v6];
LABEL_31:

        goto LABEL_32;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, v23, v22, *v23}];
      free(v12);
      SSFileLog();
    }

    goto LABEL_13;
  }

  v4 = [MEMORY[0x1E69D4938] sharedConfig];
  v18 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v19 = v18 | 2;
  }

  else
  {
    v19 = v18;
  }

  v6 = [v4 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v19 &= 2u;
  }

  if (!v19)
  {
    goto LABEL_31;
  }

  *v23 = 138543618;
  *&v23[4] = objc_opt_class();
  *&v23[12] = 2080;
  *&v23[14] = "[SUScriptInterface acknowledgePrivacyLinkWithIdentifier:]_block_invoke";
  v20 = *&v23[4];
  LODWORD(v22) = 22;
  v21 = _os_log_send_and_compose_impl();

  if (v21)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, v23, v22, *v23, *&v23[8], v24}];
    free(v21);
    SSFileLog();
    goto LABEL_31;
  }

LABEL_32:
}

- (void)addiTunesPassWithCompletionFunction:(id)function
{
  functionCopy = function;
  if (functionCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  else
  {
    viewController = [(SUScriptInterface *)self viewController];
    nativeViewController = [viewController nativeViewController];

    v7 = [[SUAddiTunesPassOperation alloc] initWithViewController:nativeViewController];
    authenticationContext = [(SUScriptInterface *)self authenticationContext];
    [(SUAddiTunesPassOperation *)v7 setAuthenticationContext:authenticationContext];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__SUScriptInterface_addiTunesPassWithCompletionFunction___block_invoke;
    v10[3] = &unk_1E8164430;
    v13 = v7;
    v11 = functionCopy;
    selfCopy = self;
    [(SUAddiTunesPassOperation *)v7 setCompletionBlock:v10];
    mainQueue = [MEMORY[0x1E69E4798] mainQueue];
    [mainQueue addOperation:v7];
  }
}

void __57__SUScriptInterface_addiTunesPassWithCompletionFunction___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WebThreadRunOnMainThread();
}

void __57__SUScriptInterface_addiTunesPassWithCompletionFunction___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 48) pass];
  if (v2)
  {
    v3 = [SUScriptPassbookPass alloc];
    v4 = [*(a1 + 48) pass];
    v5 = [(SUScriptPassbookPass *)v3 initWithPass:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E69E2FB0] undefined];
  }

  v6 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 32)];
  [(SUScriptFunction *)v6 setThisObject:*(a1 + 40)];
  v8[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(SUScriptFunction *)v6 callWithArguments:v7];

  [(SUScriptFunction *)v6 setThisObject:0];
}

- (id)currentAttestationVersion
{
  v29 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = objc_alloc_init(MEMORY[0x1E69D48A8]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__SUScriptInterface_currentAttestationVersion__block_invoke;
  v18[3] = &unk_1E8164458;
  v18[4] = self;
  v20 = &v21;
  v5 = v3;
  v19 = v5;
  [v4 getCurrentACLVersionWithCompletion:v18];
  v6 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    shouldLogToDisk = [mEMORY[0x1E69D4938] shouldLogToDisk];
    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    v11 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v12 = objc_opt_class();
      v27 = 138543362;
      v28 = v12;
      v13 = v12;
      LODWORD(v17) = 12;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_10:

        goto LABEL_11;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v27, v17}];
      free(v14);
      SSFileLog();
    }

    goto LABEL_10;
  }

LABEL_11:
  v15 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v15;
}

void __46__SUScriptInterface_currentAttestationVersion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (!v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    goto LABEL_13;
  }

  v8 = [MEMORY[0x1E69D4938] sharedConfig];
  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  *v15 = 138543618;
  *&v15[4] = objc_opt_class();
  *&v15[12] = 2114;
  *&v15[14] = v7;
  v12 = *&v15[4];
  LODWORD(v14) = 22;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, v15, v14, *v15, *&v15[16], v16}];
    free(v13);
    SSFileLog();
LABEL_10:
  }

LABEL_13:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)openCreditCardReaderWithCompletionFunction:(id)function
{
  functionCopy = function;
  if (functionCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  else
  {
    v4 = functionCopy;
    WebThreadRunOnMainThread();
  }
}

void __64__SUScriptInterface_openCreditCardReaderWithCompletionFunction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientInterface];
  v3 = [v2 delegate];

  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) clientInterface];
    v5 = [*(a1 + 32) parentViewController];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __64__SUScriptInterface_openCreditCardReaderWithCompletionFunction___block_invoke_2;
    v17[3] = &unk_1E8164480;
    v6 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v6;
    [v3 clientInterface:v4 overrideCreditCardPresentationFromViewController:v5 completion:v17];
  }

  else
  {
    v7 = objc_alloc_init(SUCreditCardReaderViewController);
    v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __64__SUScriptInterface_openCreditCardReaderWithCompletionFunction___block_invoke_3;
    v14 = &unk_1E8164480;
    v9 = *(a1 + 40);
    v15 = *(a1 + 32);
    v16 = v9;
    [(SUCreditCardReaderViewController *)v7 setCompletionBlock:&v11];
    v10 = [*(a1 + 32) parentViewController];
    [v10 presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_finishCreditCardReaderWithOutput:(id)output callback:(id)callback
{
  outputCopy = output;
  callbackCopy = callback;
  v6 = callbackCopy;
  v7 = outputCopy;
  WebThreadRunOnMainThread();
}

void __64__SUScriptInterface__finishCreditCardReaderWithOutput_callback___block_invoke(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  v5 = [[SUScriptFunction alloc] initWithScriptObject:a1[5]];
  [(SUScriptFunction *)v5 setThisObject:a1[6]];
  v7[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [(SUScriptFunction *)v5 callWithArguments:v6];

  [(SUScriptFunction *)v5 setThisObject:0];
}

- (void)openFamilyCircleSetupWithClientName:(id)name completionFunction:(id)function
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  functionCopy = function;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (!v11)
    {
      goto LABEL_23;
    }

    v20 = 138543362;
    v21 = functionCopy;
    LODWORD(v17) = 12;
    v12 = _os_log_send_and_compose_impl();

    if (v12)
    {
      v13 = MEMORY[0x1E696AEC0];
LABEL_22:
      oSLogObject = [v13 stringWithCString:v12 encoding:{4, &v20, v17}];
      free(v12);
      SSFileLog();
LABEL_23:
    }

LABEL_24:

    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v15 = shouldLog2 | 2;
    }

    else
    {
      v15 = shouldLog2;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 2;
    }

    if (!v16)
    {
      goto LABEL_23;
    }

    v20 = 138543362;
    v21 = nameCopy;
    LODWORD(v17) = 12;
    v12 = _os_log_send_and_compose_impl();

    if (v12)
    {
      v13 = MEMORY[0x1E696AEC0];
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v18 = functionCopy;
  v19 = nameCopy;
  WebThreadRunOnMainThread();

LABEL_25:
}

void __76__SUScriptInterface_openFamilyCircleSetupWithClientName_completionFunction___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 32)];
  [(SUScriptFunction *)v2 setThisObject:*(a1 + 40)];
  v3 = objc_alloc(getFACircleContextClass());
  v4 = getFACircleEventTypeInitiate();
  v5 = [v3 initWithEventType:v4];

  [v5 setClientName:*(a1 + 48)];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v6 = objc_alloc(getFACircleStateControllerClass());
  v7 = [*(a1 + 40) parentViewController];
  v27 = [v6 initWithPresenter:v7];

  v8 = [MEMORY[0x1E69D4938] sharedConfig];
  v9 = [v8 shouldLog];
  v10 = [v8 shouldLogToDisk];
  v11 = [v8 OSLogObject];
  v12 = v11;
  if (v10)
  {
    v9 |= 2u;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 & 2;
  }

  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v23[5];
  v28 = 138543618;
  v29 = v14;
  v30 = 2114;
  v31 = v5;
  LODWORD(v18) = 22;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v28, v18}];
    free(v15);
    SSFileLog();
LABEL_9:
  }

  v16 = v23[5];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__SUScriptInterface_openFamilyCircleSetupWithClientName_completionFunction___block_invoke_81;
  v19[3] = &unk_1E81644F8;
  v21 = &v22;
  v17 = v2;
  v20 = v17;
  [v16 performOperationWithContext:v5 completion:v19];

  _Block_object_dispose(&v22, 8);
}

void __76__SUScriptInterface_openFamilyCircleSetupWithClientName_completionFunction___block_invoke_81(uint64_t a1, int a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69D4938] sharedConfig];
  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 2;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = *(*(*(a1 + 40) + 8) + 40);
  v12 = "NO";
  if (a2)
  {
    v12 = "YES";
  }

  v25 = 138543874;
  v26 = v11;
  v27 = 2082;
  v28 = v12;
  v29 = 2114;
  v30 = v5;
  LODWORD(v23) = 32;
  v22 = &v25;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v25, v23}];
    free(v13);
    v22 = v9;
    SSFileLog();
LABEL_12:
  }

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  if (v5)
  {
    v16 = [[SUScriptError alloc] initWithError:v5];
  }

  else
  {
    v16 = 0;
  }

  v17 = MEMORY[0x1E695E4D0];
  v18 = *(a1 + 32);
  if (!a2)
  {
    v17 = MEMORY[0x1E695E4C0];
  }

  v19 = *v17;
  v24[0] = v19;
  v20 = v16;
  if (!v16)
  {
    v20 = [MEMORY[0x1E69E2FB0] undefined];
  }

  v24[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:{2, v22}];
  [v18 callWithArguments:v21];

  if (!v16)
  {
  }
}

- (void)dispatchGlobalEventWithName:(id)name payload:(id)payload
{
  nameCopy = name;
  payloadCopy = payload;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    payloadCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!payloadCopy || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SUScriptInterface_dispatchGlobalEventWithName_payload___block_invoke;
    block[3] = &unk_1E81644D0;
    v9 = nameCopy;
    v10 = payloadCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

void __57__SUScriptInterface_dispatchGlobalEventWithName_payload___block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = *(a1 + 32);
  if (v2)
  {
    [v6 setObject:v2 forKey:@"name"];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    [v6 setObject:v3 forKey:@"payload"];
  }

  v4 = [*(a1 + 48) parentViewController];
  if (v4)
  {
    [v6 setObject:v4 forKey:@"viewController"];
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"SUScriptInterfaceGlobalEventNotification" object:*(a1 + 48) userInfo:v6];
}

- (void)dispatchXEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    copyJavaScriptContext = [(SUScriptInterface *)self copyJavaScriptContext];
    if (copyJavaScriptContext)
    {
      v6 = copyJavaScriptContext;
      v7 = [eventCopy copyArrayOrDictionaryWithContext:copyJavaScriptContext];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        WebThreadRunOnMainThread();
      }

      JSGlobalContextRelease(v6);
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

void __36__SUScriptInterface_dispatchXEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientInterface];
  [v2 _dispatchXEvent:*(a1 + 40) withCompletionBlock:0];
}

- (void)fetchAppleCardMetadata:(id)metadata callback:(id)callback
{
  v47 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  callbackCopy = callback;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    metadataCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    callbackCopy = 0;
  }

  v37 = MEMORY[0x1E69E9820];
  v38 = 3221225472;
  v39 = __53__SUScriptInterface_fetchAppleCardMetadata_callback___block_invoke;
  v40 = &unk_1E8164520;
  v8 = callbackCopy;
  v41 = v8;
  selfCopy = self;
  v9 = MEMORY[0x1C6916C70](&v37);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v22 = shouldLog | 2;
    }

    else
    {
      v22 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = objc_opt_class();
      v45 = 138543362;
      v46 = v24;
      v25 = v24;
      LODWORD(v36) = 12;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
        goto LABEL_39;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v45, v36, v37, v38, v39, v40}];
      free(v26);
      SSFileLog();
    }

    goto LABEL_39;
  }

  if ([MEMORY[0x1E69E4728] shouldUseExtendedEnrollment])
  {
    appleCardIconString = [(objc_class *)getAMSUICardMetadataClass() appleCardIconString];
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      v13 = shouldLog2 | 2;
    }

    else
    {
      v13 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
    v15 = oSLogObject2;
    if (appleCardIconString)
    {
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v16 = objc_opt_class();
        v45 = 138543362;
        v46 = v16;
        v17 = v16;
        LODWORD(v36) = 12;
        v18 = _os_log_send_and_compose_impl();

        if (!v18)
        {
LABEL_19:

          v43 = @"cardArtwork";
          v44 = appleCardIconString;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          (v9)[2](v9, v19, 0);
LABEL_47:

          goto LABEL_48;
        }

        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v45, v36, v37, v38, v39, v40}];
        free(v18);
        SSFileLog();
      }

      goto LABEL_19;
    }

    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v33 = objc_opt_class();
      v45 = 138543362;
      v46 = v33;
      v34 = v33;
      LODWORD(v36) = 12;
      v35 = _os_log_send_and_compose_impl();

      if (!v35)
      {
LABEL_46:

        v19 = ISError();
        (v9)[2](v9, 0, v19);
        goto LABEL_47;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v35 encoding:{4, &v45, v36, v37, v38, v39, v40}];
      free(v35);
      SSFileLog();
    }

    goto LABEL_46;
  }

  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog3 = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v28 = shouldLog3 | 2;
  }

  else
  {
    v28 = shouldLog3;
  }

  oSLogObject3 = [mEMORY[0x1E69D4938] OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v28 &= 2u;
  }

  if (!v28)
  {
    goto LABEL_38;
  }

  v30 = objc_opt_class();
  v45 = 138543362;
  v46 = v30;
  v31 = v30;
  LODWORD(v36) = 12;
  v32 = _os_log_send_and_compose_impl();

  if (v32)
  {
    oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v32 encoding:{4, &v45, v36, v37, v38, v39, v40}];
    free(v32);
    SSFileLog();
LABEL_38:
  }

LABEL_39:

  [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  appleCardIconString = ISError();
  (v9)[2](v9, 0, appleCardIconString);
LABEL_48:
}

void __53__SUScriptInterface_fetchAppleCardMetadata_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 32)];
  [(SUScriptFunction *)v7 setThisObject:*(a1 + 40)];
  if (v6)
  {
    v8 = [[SUScriptError alloc] initWithError:v6];
    v9 = [MEMORY[0x1E69E2FB0] undefined];
    v13[0] = v9;
    v13[1] = v8;
    v10 = v13;
  }

  else
  {
    v8 = [[SUScriptDictionary alloc] initWithDictionary:v5];
    v12[0] = v8;
    v9 = [MEMORY[0x1E69E2FB0] undefined];
    v12[1] = v9;
    v10 = v12;
  }

  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  [(SUScriptFunction *)v7 callWithArguments:v11];

  [(SUScriptFunction *)v7 setThisObject:0];
}

- (void)fetchWalletCardData:(id)data
{
  from[3] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  objc_initWeak(&location, self);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __41__SUScriptInterface_fetchWalletCardData___block_invoke;
  v35[3] = &unk_1E8164548;
  objc_copyWeak(&v37, &location);
  v5 = dataCopy;
  v36 = v5;
  v6 = MEMORY[0x1C6916C70](v35);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v5 = 0;
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy_;
  v33[4] = __Block_byref_object_dispose_;
  v34 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    shouldLogToDisk = [mEMORY[0x1E69D4938] shouldLogToDisk];
    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    v15 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v16 = objc_opt_class();
      LODWORD(from[0]) = 138543362;
      *(from + 4) = v16;
      v17 = v16;
      LODWORD(v26) = 12;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
        goto LABEL_24;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, from, v26}];
      free(v18);
      SSFileLog();
    }

    goto LABEL_24;
  }

  if (([MEMORY[0x1E69E4728] shouldUseExtendedEnrollment] & 1) == 0)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938] shouldLog];
    shouldLogToDisk2 = [mEMORY[0x1E69D4938] shouldLogToDisk];
    oSLogObject2 = [mEMORY[0x1E69D4938] OSLogObject];
    v22 = oSLogObject2;
    if (shouldLogToDisk2)
    {
      shouldLog2 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
    {
      v23 = objc_opt_class();
      LODWORD(from[0]) = 138543362;
      *(from + 4) = v23;
      v24 = v23;
      LODWORD(v26) = 12;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
LABEL_24:

        [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
        v9 = ISError();
        (v6)[2](v6, 0, v9);
        goto LABEL_25;
      }

      v22 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:{4, from, v26}];
      free(v25);
      SSFileLog();
    }

    goto LABEL_24;
  }

  v7 = objc_alloc(MEMORY[0x1E69E4770]);
  v8 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v9 = [v7 initWithBagContext:v8];

  objc_initWeak(from, v9);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __41__SUScriptInterface_fetchWalletCardData___block_invoke_119;
  v27[3] = &unk_1E8164598;
  objc_copyWeak(&v31, &location);
  objc_copyWeak(&v32, from);
  v30 = v33;
  v28 = @"Fetch Wallet Card Data Error";
  v29 = v6;
  [v9 setCompletionBlock:v27];
  mainQueue = [MEMORY[0x1E69E4798] mainQueue];
  [mainQueue addOperation:v9];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v31);
  objc_destroyWeak(from);
LABEL_25:

  _Block_object_dispose(v33, 8);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

void __41__SUScriptInterface_fetchWalletCardData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 32)];
  [(SUScriptFunction *)v8 setThisObject:WeakRetained];
  if (!v6)
  {
    v12 = [v5 cardData];
    [(SUScriptError *)v12 bytes];
    [(SUScriptError *)v12 length];
    v13 = ISCopyEncodedBase64();
    v14 = [v5 brokerURL];
    v15 = [v14 absoluteString];

    v16 = [v5 paymentServicesURL];
    v17 = [v16 absoluteString];

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v53 = v18;
    v54 = v17;
    if (v13)
    {
      v19 = v18;
      [v18 setObject:v13 forKeyedSubscript:@"cardData"];
      if (v15)
      {
LABEL_5:
        [v19 setObject:v15 forKeyedSubscript:{@"brokerURL", v45}];
        goto LABEL_26;
      }

LABEL_16:
      v25 = [MEMORY[0x1E69D4938] sharedConfig];
      v26 = [v25 shouldLog];
      if ([v25 shouldLogToDisk])
      {
        v27 = v26 | 2;
      }

      else
      {
        v27 = v26;
      }

      v28 = [v25 OSLogObject];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v27 &= 2u;
      }

      if (v27)
      {
        v29 = objc_opt_class();
        v56 = 138543362;
        v57 = v29;
        v49 = v29;
        LODWORD(v47) = 12;
        v46 = &v56;
        v30 = _os_log_send_and_compose_impl();

        if (!v30)
        {
LABEL_25:

          v19 = v53;
          v17 = v54;
LABEL_26:
          v51 = v15;
          v52 = v12;
          if (v17)
          {
            v31 = v13;
            v32 = WeakRetained;
            v33 = v5;
            [v19 setObject:v17 forKeyedSubscript:@"paymentServicesURL"];
            v34 = v17;
LABEL_38:
            v41 = v19;
            v42 = [[SUScriptDictionary alloc] initWithDictionary:v19];
            v55[0] = v42;
            v43 = [MEMORY[0x1E69E2FB0] undefined];
            v55[1] = v43;
            v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
            [(SUScriptFunction *)v8 callWithArguments:v44];

            v5 = v33;
            WeakRetained = v32;
            v6 = 0;
            v10 = v31;
            v11 = v51;
            v9 = v52;
            goto LABEL_39;
          }

          v35 = [MEMORY[0x1E69D4938] sharedConfig];
          v36 = [v35 shouldLog];
          if ([v35 shouldLogToDisk])
          {
            v37 = v36 | 2;
          }

          else
          {
            v37 = v36;
          }

          v38 = [v35 OSLogObject];
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v37 &= 2u;
          }

          if (v37)
          {
            v39 = objc_opt_class();
            v56 = 138543362;
            v57 = v39;
            v50 = v39;
            LODWORD(v47) = 12;
            v40 = _os_log_send_and_compose_impl();

            if (!v40)
            {
LABEL_37:
              v31 = v13;
              v32 = WeakRetained;
              v33 = v5;

              v19 = v53;
              v34 = v54;
              goto LABEL_38;
            }

            v38 = [MEMORY[0x1E696AEC0] stringWithCString:v40 encoding:{4, &v56, v47}];
            free(v40);
            SSFileLog();
          }

          goto LABEL_37;
        }

        v28 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:{4, &v56, v47}];
        free(v30);
        v46 = v28;
        SSFileLog();
      }

      goto LABEL_25;
    }

    v20 = [MEMORY[0x1E69D4938] sharedConfig];
    v21 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v20 OSLogObject];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v56 = 138543362;
      v57 = objc_opt_class();
      v48 = v57;
      LODWORD(v47) = 12;
      v45 = &v56;
      v24 = _os_log_send_and_compose_impl();

      if (!v24)
      {
        goto LABEL_15;
      }

      v23 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v56, v47}];
      free(v24);
      v45 = v23;
      SSFileLog();
    }

LABEL_15:
    v19 = v53;
    v17 = v54;
    if (v15)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v9 = [[SUScriptError alloc] initWithError:v6];
  v10 = [MEMORY[0x1E69E2FB0] undefined];
  v58[0] = v10;
  v58[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  [(SUScriptFunction *)v8 callWithArguments:v11];
LABEL_39:

  [(SUScriptFunction *)v8 setThisObject:0];
}

void __41__SUScriptInterface_fetchWalletCardData___block_invoke_119(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_loadWeakRetained((a1 + 64));
  v4 = [v3 URLBag];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 valueForKey:@"applepay-merchant-id"];
    if (v6)
    {
      goto LABEL_13;
    }

    v7 = [MEMORY[0x1E69D4938] sharedConfig];
    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v45 = 138543362;
      v46 = objc_opt_class();
      v11 = v46;
      LODWORD(v42) = 12;
      v40 = &v45;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_12:

LABEL_13:
        v13 = [v5 valueForKey:{@"countryCode", v40}];
        v14 = [v13 uppercaseString];

        if (v14)
        {
          if (v6)
          {
            goto LABEL_47;
          }

LABEL_36:
          v28 = [MEMORY[0x1E69D4938] sharedConfig];
          v29 = [v28 shouldLog];
          if ([v28 shouldLogToDisk])
          {
            v30 = v29 | 2;
          }

          else
          {
            v30 = v29;
          }

          v31 = [v28 OSLogObject];
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v30 &= 2u;
          }

          if (v30)
          {
            v32 = objc_opt_class();
            v45 = 138543362;
            v46 = v32;
            v33 = v32;
            LODWORD(v42) = 12;
            v34 = _os_log_send_and_compose_impl();

            if (!v34)
            {
LABEL_45:

              [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
              goto LABEL_46;
            }

            v31 = [MEMORY[0x1E696AEC0] stringWithCString:v34 encoding:{4, &v45, v42}];
            free(v34);
            SSFileLog();
          }

          goto LABEL_45;
        }

        v21 = [MEMORY[0x1E69D4938] sharedConfig];
        v22 = [v21 shouldLog];
        if ([v21 shouldLogToDisk])
        {
          v23 = v22 | 2;
        }

        else
        {
          v23 = v22;
        }

        v24 = [v21 OSLogObject];
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v23 &= 2u;
        }

        if (v23)
        {
          v25 = objc_opt_class();
          v45 = 138543362;
          v46 = v25;
          v26 = v25;
          LODWORD(v42) = 12;
          v41 = &v45;
          v27 = _os_log_send_and_compose_impl();

          if (!v27)
          {
LABEL_35:

            goto LABEL_36;
          }

          v24 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:{4, &v45, v42}];
          free(v27);
          v41 = v24;
          SSFileLog();
        }

        goto LABEL_35;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v45, v42}];
      free(v12);
      v40 = v10;
      SSFileLog();
    }

    goto LABEL_12;
  }

  v15 = [MEMORY[0x1E69D4938] sharedConfig];
  v16 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v17 = v16 | 2;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v15 OSLogObject];
  if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_24;
  }

  v45 = 138543362;
  v46 = objc_opt_class();
  v19 = v46;
  LODWORD(v42) = 12;
  v20 = _os_log_send_and_compose_impl();

  if (v20)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v45, v42}];
    free(v20);
    SSFileLog();
LABEL_24:
  }

  v14 = 0;
  v6 = 0;
LABEL_46:
  v35 = ISError();
  v36 = *(*(a1 + 48) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = v35;

LABEL_47:
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v38 = [objc_alloc(MEMORY[0x1E698C858]) initWithCountryCode:v14 merchantIdentifier:v6];
    v39 = [v38 performCardRegistration];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __41__SUScriptInterface_fetchWalletCardData___block_invoke_127;
    v43[3] = &unk_1E8164570;
    v43[4] = WeakRetained;
    v44 = *(a1 + 40);
    [v39 addFinishBlock:v43];
  }
}

void __41__SUScriptInterface_fetchWalletCardData___block_invoke_127(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x1E69D4938] sharedConfig];
    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      *v14 = 138543618;
      *&v14[4] = objc_opt_class();
      *&v14[12] = 2114;
      *&v14[14] = v6;
      v11 = *&v14[4];
      LODWORD(v13) = 22;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        goto LABEL_12;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, v14, v13, *v14, *&v14[16], v15}];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  (*(*(a1 + 40) + 16))();
}

- (void)fetchWalletCardMetadata:(id)metadata callback:(id)callback
{
  v51 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  callbackCopy = callback;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v49 = 138543362;
      v50 = objc_opt_class();
      v13 = v50;
      LODWORD(v42) = 12;
      v41 = &v49;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_11:

        [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
        goto LABEL_12;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v49, v42}];
      free(v14);
      v41 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  if (![MEMORY[0x1E69E4728] shouldUseExtendedEnrollment])
  {
    v19 = [[SUScriptFunction alloc] initWithScriptObject:callbackCopy];
    [(SUScriptFunction *)v19 setThisObject:self];
    v18 = ISError();
    v22 = [[SUScriptError alloc] initWithError:v18];
    undefined = [MEMORY[0x1E69E2FB0] undefined];
    v47[0] = undefined;
    v47[1] = v22;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    [(SUScriptFunction *)v19 callWithArguments:v24];

    [(SUScriptFunction *)v19 setThisObject:0];
    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    metadataCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    callbackCopy = 0;
  }

  copyJavaScriptContext = [(SUScriptInterface *)self copyJavaScriptContext];
  v44 = metadataCopy;
  v16 = [metadataCopy copyArrayOrDictionaryWithContext:copyJavaScriptContext];
  JSGlobalContextRelease(copyJavaScriptContext);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = v16;
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      v27 = shouldLog2 | 2;
    }

    else
    {
      v27 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v27;
    }

    else
    {
      v29 = v27 & 2;
    }

    if (v29)
    {
      v30 = objc_opt_class();
      v49 = 138543362;
      v50 = v30;
      v31 = v30;
      LODWORD(v42) = 12;
      v18 = _os_log_send_and_compose_impl();

      v16 = v25;
      if (!v18)
      {
        v22 = 0;
        goto LABEL_34;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v49, v42}];
      free(v18);
      SSFileLog();
    }

    else
    {
      v16 = v25;
    }

    v22 = 0;
    v18 = 0;
LABEL_34:
    v19 = 0;
    goto LABEL_35;
  }

  v17 = v16;
  v18 = [v17 objectForKeyedSubscript:@"passSerialNumber"];
  v19 = [v17 objectForKeyedSubscript:@"passTypeIdentifier"];
  v20 = MEMORY[0x1E696AD98];
  mEMORY[0x1E69D4938]2 = [v17 objectForKeyedSubscript:@"size"];

  v22 = [v20 numberWithInteger:{objc_msgSend(mEMORY[0x1E69D4938]2, "integerValue")}];
LABEL_35:

  v32 = [(objc_class *)getAMSUICardMetadataClass() metadataForPassTypeIdentifier:v19 serialNumber:v18 cardArtworkSize:v22];
  if (isKindOfClass)
  {
    v33 = [[SUScriptFunction alloc] initWithScriptObject:callbackCopy];
    [(SUScriptFunction *)v33 setThisObject:self];
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __54__SUScriptInterface_fetchWalletCardMetadata_callback___block_invoke;
    v45[3] = &unk_1E81645C0;
    v46 = v34;
    v43 = v34;
    [v32 enumerateObjectsUsingBlock:v45];
    v35 = [v43 copy];
    v48[0] = v35;
    [MEMORY[0x1E69E2FB0] undefined];
    v36 = v32;
    v37 = callbackCopy;
    v39 = v38 = v16;
    v48[1] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    [(SUScriptFunction *)v33 callWithArguments:v40];

    v16 = v38;
    callbackCopy = v37;
    v32 = v36;

    [(SUScriptFunction *)v33 setThisObject:0];
  }

  metadataCopy = v44;
LABEL_38:
}

void __54__SUScriptInterface_fetchWalletCardMetadata_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SUScriptDictionary alloc];
  v5 = [v3 dictionary];

  v6 = [(SUScriptDictionary *)v4 initWithDictionary:v5];
  [*(a1 + 32) addObject:v6];
}

- (void)financeInterruptionResolved:(id)resolved
{
  resolvedCopy = resolved;
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [resolvedCopy BOOLValue];
    clientInterface = [(SUScriptInterface *)self clientInterface];
    delegate = [clientInterface delegate];

    if (objc_opt_respondsToSelector())
    {
      clientInterface2 = [(SUScriptInterface *)self clientInterface];
      [delegate clientInterface:clientInterface2 financeInterruptionResolved:bOOLValue];
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

- (id)getiTunesPass
{
  defaultStore = [MEMORY[0x1E69D4890] defaultStore];
  activeAccount = [defaultStore activeAccount];
  iTunesPassSerialNumber = [activeAccount ITunesPassSerialNumber];

  if (iTunesPassSerialNumber)
  {
    v5 = objc_alloc_init(ISWeakLinkedClassForString());
    v6 = [v5 passWithPassTypeIdentifier:@"pass.com.apple.itunes.storecredit" serialNumber:iTunesPassSerialNumber];
    if (v6)
    {
      v7 = [[SUScriptPassbookPass alloc] initWithPass:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)handleDialogPropertyListString:(id)string
{
  stringCopy = string;
  v4 = objc_autoreleasePoolPush();
  v5 = SUScriptPropertyListFromString(stringCopy);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    WebThreadRunOnMainThread();
  }

  objc_autoreleasePoolPop(v4);
}

void __52__SUScriptInterface_handleDialogPropertyListString___block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E69E4750]) initWithDialogDictionary:*(a1 + 32)];
  v2 = [*(a1 + 40) clientInterface];
  [v2 _presentDialog:v3];
}

- (id)machineGUID
{
  mEMORY[0x1E69E4748] = [MEMORY[0x1E69E4748] sharedInstance];
  guid = [mEMORY[0x1E69E4748] guid];

  return guid;
}

void __31__SUScriptInterface_openWallet__block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [ISWeakLinkedClassForString() isPassLibraryAvailable];
  v1 = [MEMORY[0x1E698C968] sharedConfig];
  v2 = [v1 OSLogObject];
  v3 = v2;
  if (v0)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = objc_opt_class();
      v4 = v12;
      _os_log_impl(&dword_1C21AF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: OpenWallet: Will open Wallet", &v11, 0xCu);
    }

    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v7 = @"shoebox://";
    if (v6 == 1)
    {
      v7 = @"prefs:root=PASSBOOK";
    }

    v8 = MEMORY[0x1E6963608];
    v9 = v7;
    v1 = [v8 defaultWorkspace];
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v9];

    [v1 openSensitiveURL:v3 withOptions:0];
  }

  else if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v11 = 138543362;
    v12 = objc_opt_class();
    v10 = v12;
    _os_log_impl(&dword_1C21AF000, v3, OS_LOG_TYPE_ERROR, "%{public}@: OpenWallet: PassKit not available", &v11, 0xCu);
  }
}

- (void)paymentSetupFeatureSupported:(id)supported callback:(id)callback
{
  v74 = *MEMORY[0x1E69E9840];
  supportedCopy = supported;
  callbackCopy = callback;
  objc_initWeak(&location, self);
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __59__SUScriptInterface_paymentSetupFeatureSupported_callback___block_invoke;
  v68[3] = &unk_1E8164610;
  v8 = callbackCopy;
  v69 = v8;
  objc_copyWeak(&v70, &location);
  v9 = MEMORY[0x1C6916C70](v68);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    supportedCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v8 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    shouldLogToDisk = [mEMORY[0x1E69D4938] shouldLogToDisk];
    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    v20 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v21 = objc_opt_class();
      v72 = 138543362;
      v73 = v21;
      v22 = v21;
      LODWORD(v64) = 12;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
        goto LABEL_21;
      }

      v20 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v72, v64}];
      free(v23);
      SSFileLog();
    }

    goto LABEL_21;
  }

  if (([MEMORY[0x1E69E4728] shouldUseUpsellEnrollment] & 1) == 0)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938] shouldLog];
    shouldLogToDisk2 = [mEMORY[0x1E69D4938] shouldLogToDisk];
    oSLogObject2 = [mEMORY[0x1E69D4938] OSLogObject];
    v27 = oSLogObject2;
    if (shouldLogToDisk2)
    {
      shouldLog2 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      shouldLog2 &= 2u;
    }

    if (!shouldLog2)
    {
      goto LABEL_29;
    }

    v28 = objc_opt_class();
    v72 = 138543362;
    v73 = v28;
    v29 = v28;
    LODWORD(v64) = 12;
    v30 = _os_log_send_and_compose_impl();

    if (v30)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:{4, &v72, v64}];
      free(v30);
      SSFileLog();
LABEL_29:
    }

LABEL_21:

    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v15 = ISError();
    (v9)[2](v9, 0, v15);
LABEL_69:

    goto LABEL_70;
  }

  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_isActiveAccountCombined = [ams_sharedAccountStore ams_isActiveAccountCombined];

  if (ams_isActiveAccountCombined)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog3 = [mEMORY[0x1E69D4938]2 shouldLog];
      shouldLogToDisk3 = [mEMORY[0x1E69D4938]2 shouldLogToDisk];
      oSLogObject3 = [mEMORY[0x1E69D4938]2 OSLogObject];
      v14 = oSLogObject3;
      if (shouldLogToDisk3)
      {
        shouldLog3 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog3 &= 2u;
      }

      if (shouldLog3)
      {
        v42 = objc_opt_class();
        v72 = 138543362;
        v73 = v42;
        v43 = v42;
        LODWORD(v64) = 12;
        v15 = _os_log_send_and_compose_impl();

        if (!v15)
        {
          goto LABEL_58;
        }

        v14 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v72, v64}];
        free(v15);
        SSFileLog();
      }

      goto LABEL_56;
    }

    mEMORY[0x1E69D4938]2 = supportedCopy;
    copyJavaScriptContext = [(SUScriptInterface *)self copyJavaScriptContext];
    v14 = [mEMORY[0x1E69D4938]2 copyArrayOrDictionaryWithContext:copyJavaScriptContext];
    JSGlobalContextRelease(copyJavaScriptContext);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v14;
      v15 = v14;
LABEL_57:

LABEL_58:
      v52 = [v15 objectForKeyedSubscript:@"referrerIdentifier"];
      if (v52)
      {
LABEL_68:
        v61 = objc_alloc_init(MEMORY[0x1E69E4790]);
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __59__SUScriptInterface_paymentSetupFeatureSupported_callback___block_invoke_181;
        v65[3] = &unk_1E8164638;
        v62 = v52;
        v66 = v62;
        v67 = v9;
        [v61 setCompletionBlock:v65];
        mainQueue = [MEMORY[0x1E69E4798] mainQueue];
        [mainQueue addOperation:v61];

        goto LABEL_69;
      }

      mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog4 = [mEMORY[0x1E69D4938]3 shouldLog];
      shouldLogToDisk4 = [mEMORY[0x1E69D4938]3 shouldLogToDisk];
      oSLogObject4 = [mEMORY[0x1E69D4938]3 OSLogObject];
      v57 = oSLogObject4;
      if (shouldLogToDisk4)
      {
        shouldLog4 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog4 &= 2u;
      }

      if (shouldLog4)
      {
        v58 = objc_opt_class();
        v72 = 138543362;
        v73 = v58;
        v59 = v58;
        LODWORD(v64) = 12;
        v60 = _os_log_send_and_compose_impl();

        if (!v60)
        {
LABEL_67:

          goto LABEL_68;
        }

        v57 = [MEMORY[0x1E696AEC0] stringWithCString:v60 encoding:{4, &v72, v64}];
        free(v60);
        SSFileLog();
      }

      goto LABEL_67;
    }

    mEMORY[0x1E69D4938]4 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog5 = [mEMORY[0x1E69D4938]4 shouldLog];
    shouldLogToDisk5 = [mEMORY[0x1E69D4938]4 shouldLogToDisk];
    oSLogObject5 = [mEMORY[0x1E69D4938]4 OSLogObject];
    v48 = oSLogObject5;
    if (shouldLogToDisk5)
    {
      shouldLog5 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog5 &= 2u;
    }

    if (shouldLog5)
    {
      v49 = objc_opt_class();
      v72 = 138543362;
      v73 = v49;
      v50 = v49;
      LODWORD(v64) = 12;
      v51 = _os_log_send_and_compose_impl();

      if (!v51)
      {
LABEL_55:

LABEL_56:
        v15 = 0;
        goto LABEL_57;
      }

      v48 = [MEMORY[0x1E696AEC0] stringWithCString:v51 encoding:{4, &v72, v64}];
      free(v51);
      SSFileLog();
    }

    goto LABEL_55;
  }

  mEMORY[0x1E69D4938]5 = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog6 = [mEMORY[0x1E69D4938]5 shouldLog];
  shouldLogToDisk6 = [mEMORY[0x1E69D4938]5 shouldLogToDisk];
  oSLogObject6 = [mEMORY[0x1E69D4938]5 OSLogObject];
  v35 = oSLogObject6;
  if (shouldLogToDisk6)
  {
    shouldLog6 |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
  {
    shouldLog6 &= 2u;
  }

  if (!shouldLog6)
  {
    goto LABEL_38;
  }

  v36 = objc_opt_class();
  v72 = 138543362;
  v73 = v36;
  v37 = v36;
  LODWORD(v64) = 12;
  v38 = _os_log_send_and_compose_impl();

  if (v38)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithCString:v38 encoding:{4, &v72, v64}];
    free(v38);
    SSFileLog();
LABEL_38:
  }

  (v9)[2](v9, &unk_1F41EA948, 0);
LABEL_70:

  objc_destroyWeak(&v70);
  objc_destroyWeak(&location);
}

void __59__SUScriptInterface_paymentSetupFeatureSupported_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(SUScriptFunction *)v7 setThisObject:WeakRetained];

  v9 = [[SUScriptDictionary alloc] initWithDictionary:v6];
  if (v5)
  {
    v10 = [[SUScriptError alloc] initWithError:v5];
    v14[0] = v9;
    v14[1] = v10;
    v11 = v14;
  }

  else
  {
    v13[0] = v9;
    v10 = [MEMORY[0x1E69E2FB0] undefined];
    v13[1] = v10;
    v11 = v13;
  }

  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [(SUScriptFunction *)v7 callWithArguments:v12];

  [(SUScriptFunction *)v7 setThisObject:0];
}

void __59__SUScriptInterface_paymentSetupFeatureSupported_callback___block_invoke_181(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698CAB8]) initWithIdentifier:*(a1 + 32)];
  v7 = 0;
  v3 = [v2 isPaymentSetupFeatureSupportedWithError:&v7];
  v4 = v7;
  v8 = @"supported";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  (*(*(a1 + 40) + 16))();
}

- (void)perfLog:(id)log
{
  logCopy = log;
  Current = CFAbsoluteTimeGetCurrent();
  NSLog(&cfstr_Js2f.isa, *&Current, logCopy);
}

- (void)performPurchaseAnimationForIdentifier:(id)identifier style:(id)style
{
  identifierCopy = identifier;
  styleCopy = style;
  v7 = [objc_opt_class() purchaseAnimationStyleFromString:styleCopy];

  if (!v7)
  {
    v8 = identifierCopy;
    WebThreadRunOnMainThread();
  }
}

void __65__SUScriptInterface_performPurchaseAnimationForIdentifier_style___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webFrame];
  v3 = [v2 DOMDocument];

  v4 = *(a1 + 32);
  v5 = [v3 getElementById:*(a1 + 40)];
  v6 = [v4 DOMElementWithElement:v5];

  v7 = [v6 innerText];
  if ([v7 length])
  {
    v8 = [v6 newLabelForElementWithText:v7];
  }

  else
  {
    v8 = [v6 newImageView];
  }

  v17 = v8;
  if (v8)
  {
    v9 = [*(a1 + 32) parentViewController];
    v10 = [v9 tabBarController];

    v11 = [v6 webView];
    [v17 frame];
    [v11 convertRect:0 fromView:?];
    [v17 setFrame:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LODWORD(v12) = 1.0;
      LODWORD(v13) = -1.0;
      v14 = v17;
      v15 = v11;
      v16 = v10;
    }

    else
    {
      LODWORD(v12) = 1051931443;
      v14 = v17;
      v15 = v11;
      v16 = v10;
      LODWORD(v13) = 1051931443;
    }

    [SUPurchaseAnimator performHopAnimationForView:v14 relativeToView:v15 tabBarController:v16 finalAlpha:v12 scale:v13];
  }
}

- (id)presentPrivacyViewControllerWithIdentifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

LABEL_4:
    [MEMORY[0x1E69E2F88] throwException:@"Invalid private vc identifier"];
    v4 = *MEMORY[0x1E695E4C0];
    goto LABEL_5;
  }

  if (!identifierCopy)
  {
    goto LABEL_4;
  }

  v6 = objc_alloc(MEMORY[0x1E69E4770]);
  v7 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v8 = [v6 initWithBagContext:v7];

  [v8 start];
  uRLBag = [v8 URLBag];
  v10 = uRLBag;
  if (!uRLBag)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v23 = shouldLog | 2;
    }

    else
    {
      v23 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v30 = 138543618;
      v31 = objc_opt_class();
      v32 = 2080;
      v33 = "[SUScriptInterface presentPrivacyViewControllerWithIdentifier:]";
      v25 = v31;
      LODWORD(v27) = 22;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
LABEL_33:

        v4 = *MEMORY[0x1E695E4C0];
        goto LABEL_34;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v30, v27}];
      free(v26);
      SSFileLog();
    }

    goto LABEL_33;
  }

  v11 = [uRLBag valueForKey:@"privacyAcknowledgementUrl"];
  if (![v11 length] || (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v11), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      v17 = shouldLog2 | 2;
    }

    else
    {
      v17 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v30 = 138543362;
      v31 = objc_opt_class();
      v19 = v31;
      LODWORD(v27) = 12;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_22:

        v4 = *MEMORY[0x1E695E4C0];
        goto LABEL_23;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v30, v27}];
      free(v20);
      SSFileLog();
    }

    goto LABEL_22;
  }

  v13 = v12;
  v28 = identifierCopy;
  v29 = v13;
  v14 = v13;
  WebThreadRunOnMainThread();
  v4 = *MEMORY[0x1E695E4D0];

LABEL_23:
LABEL_34:

LABEL_5:

  return v4;
}

void __64__SUScriptInterface_presentPrivacyViewControllerWithIdentifier___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D4938] sharedConfig];
  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  LODWORD(v11) = 138543362;
  *(&v11 + 4) = objc_opt_class();
  v6 = *(&v11 + 4);
  LODWORD(v10) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v11, v10, v11}];
    free(v7);
    SSFileLog();
LABEL_9:
  }

  v8 = [MEMORY[0x1E69D4988] viewControllerForPrivacySplashWithIdentifier:*(a1 + 40) URL:*(a1 + 48)];
  v9 = [*(a1 + 32) parentViewController];
  [v9 presentViewController:v8 animated:1 completion:0];
}

- (id)presentPrivacySplashWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

LABEL_4:
    [MEMORY[0x1E69E2F88] throwException:@"Invalid private vc identifier"];
    v4 = *MEMORY[0x1E695E4C0];
    goto LABEL_5;
  }

  if (!identifierCopy)
  {
    goto LABEL_4;
  }

  v7 = identifierCopy;
  v6 = identifierCopy;
  WebThreadRunOnMainThread();
  v4 = *MEMORY[0x1E695E4D0];

LABEL_5:

  return v4;
}

void __56__SUScriptInterface_presentPrivacySplashWithIdentifier___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D4938] sharedConfig];
  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  LODWORD(v11) = 138543362;
  *(&v11 + 4) = objc_opt_class();
  v6 = *(&v11 + 4);
  LODWORD(v10) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v11, v10, v11}];
    free(v7);
    SSFileLog();
LABEL_9:
  }

  v8 = [MEMORY[0x1E69B7D58] presenterForPrivacySplashWithIdentifier:*(a1 + 40)];
  v9 = [*(a1 + 32) parentViewController];
  [v8 setPresentingViewController:v9];

  [v8 present];
}

- (void)registerNavBarButtonWithTitle:(id)title side:(id)side function:(id)function
{
  titleCopy = title;
  sideCopy = side;
  functionCopy = function;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = objc_alloc_init(SUScriptButton);
        [(SUScriptObject *)self checkInScriptObject:v10];
        [(SUScriptButton *)v10 setAction:functionCopy];
        windowObject = [(WebFrame *)self->_frame windowObject];
        [(SUScriptButton *)v10 setTarget:windowObject];

        [(SUScriptButton *)v10 setTitle:titleCopy];
        LODWORD(windowObject) = [sideCopy isEqualToString:@"left"];
        navigationBar = [(SUScriptInterface *)self navigationBar];
        v13 = navigationBar;
        if (windowObject)
        {
          [navigationBar setLeftButton:v10 animated:0];
        }

        else
        {
          [navigationBar setRightButton:v10 animated:0];
        }
      }
    }
  }
}

- (void)redeemCodes:(id)codes params:(id)params completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  codesCopy = codes;
  paramsCopy = params;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      copyJavaScriptContext = [(SUScriptInterface *)self copyJavaScriptContext];
      v12 = [codesCopy copyArrayOrDictionaryWithContext:copyJavaScriptContext];
      v13 = [paramsCopy copyArrayOrDictionaryWithContext:copyJavaScriptContext];
      JSGlobalContextRelease(copyJavaScriptContext);
      objc_opt_class();
      v45 = v12;
      if (objc_opt_isKindOfClass())
      {
        v14 = v12;
        goto LABEL_33;
      }

      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v25 = shouldLog | 2;
      }

      else
      {
        v25 = shouldLog;
      }

      oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v27 = v25;
      }

      else
      {
        v27 = v25 & 2;
      }

      if (v27)
      {
        v49 = 138543362;
        v50 = objc_opt_class();
        v28 = paramsCopy;
        v29 = v50;
        LODWORD(v43) = 12;
        v42 = &v49;
        v30 = _os_log_send_and_compose_impl();

        paramsCopy = v28;
        if (!v30)
        {
LABEL_32:

          [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
          v14 = 0;
LABEL_33:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = v13;
LABEL_46:
            v40 = [objc_alloc(MEMORY[0x1E69D49B0]) initWithRedeemCodes:v14];
            authenticationContext = [(SUScriptInterface *)self authenticationContext];
            [v40 setAuthenticationContext:authenticationContext];

            [v40 setHeadless:0];
            [v40 setParams:v31];
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __51__SUScriptInterface_redeemCodes_params_completion___block_invoke;
            v46[3] = &unk_1E8164688;
            v47 = completionCopy;
            selfCopy = self;
            [v40 startWithRedeemResponseBlock:v46];

            goto LABEL_47;
          }

          v44 = paramsCopy;
          mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
          shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
          if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
          {
            v34 = shouldLog2 | 2;
          }

          else
          {
            v34 = shouldLog2;
          }

          oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v36 = v34;
          }

          else
          {
            v36 = v34 & 2;
          }

          if (v36)
          {
            v37 = objc_opt_class();
            v49 = 138543362;
            v50 = v37;
            v38 = v37;
            LODWORD(v43) = 12;
            v39 = _os_log_send_and_compose_impl();

            if (!v39)
            {
LABEL_45:

              v31 = 0;
              paramsCopy = v44;
              goto LABEL_46;
            }

            oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v39 encoding:{4, &v49, v43}];
            free(v39);
            SSFileLog();
          }

          goto LABEL_45;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:{4, &v49, v43}];
        free(v30);
        v42 = oSLogObject;
        SSFileLog();
      }

      goto LABEL_32;
    }

    mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
    if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
    {
      v20 = shouldLog3 | 2;
    }

    else
    {
      v20 = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x1E69D4938]3 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v20 &= 2u;
    }

    if (!v20)
    {
      goto LABEL_20;
    }
  }

  else
  {
    mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog4 = [mEMORY[0x1E69D4938]3 shouldLog];
    if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
    {
      v17 = shouldLog4 | 2;
    }

    else
    {
      v17 = shouldLog4;
    }

    oSLogObject3 = [mEMORY[0x1E69D4938]3 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  v49 = 138543362;
  v50 = objc_opt_class();
  v21 = v50;
  LODWORD(v43) = 12;
  v22 = _os_log_send_and_compose_impl();

  if (v22)
  {
    oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v49, v43}];
    free(v22);
    SSFileLog();
LABEL_20:
  }

  [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
LABEL_47:
}

void __51__SUScriptInterface_redeemCodes_params_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = *(a1 + 32);
  v10 = v6;
  v7 = v5;
  v8 = v6;
  WebThreadRunOnMainThread();
}

void __51__SUScriptInterface_redeemCodes_params_completion___block_invoke_2(uint64_t a1)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v2 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 32)];
  [(SUScriptFunction *)v2 setThisObject:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v3 = [[SUScriptError alloc] initWithError:*(a1 + 48)];
    v4 = [MEMORY[0x1E69E2FB0] undefined];
    v29[0] = v4;
    v29[1] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    [(SUScriptFunction *)v2 callWithArguments:v5];
LABEL_3:

    goto LABEL_4;
  }

  v6 = [*(a1 + 56) codeResponses];

  if (!v6)
  {
    v3 = ISError();
    v4 = [[SUScriptError alloc] initWithError:v3];
    v5 = [MEMORY[0x1E69E2FB0] undefined];
    v26[0] = v5;
    v26[1] = v4;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    [(SUScriptFunction *)v2 callWithArguments:v17];

    goto LABEL_3;
  }

  v21 = v2;
  v7 = [*(a1 + 56) codeResponses];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = v7;
  v8 = [(SUScriptError *)v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [*(a1 + 56) dictionaryForCode:v13];

        v10 |= v14 != 0;
        v15 = [*(a1 + 56) responseDictionaryForCode:v13];
        v16 = [[SUScriptDictionary alloc] initWithDictionary:v15];
        [(SUScriptError *)v4 addObject:v16];
      }

      v9 = [(SUScriptError *)v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v18 = [(SUScriptError *)v4 copy];
  v27[0] = v18;
  v19 = [MEMORY[0x1E69E2FB0] undefined];
  v27[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v2 = v21;
  [(SUScriptFunction *)v21 callWithArguments:v20];

  if (v10)
  {
    [*(a1 + 40) redeemCodesReloadDownloadManager];
  }

LABEL_4:

  [(SUScriptFunction *)v2 setThisObject:0];
}

- (void)redeemCodesReloadDownloadManager
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69D48D8]);
  allStoreDownloadKinds = [MEMORY[0x1E69D48D0] allStoreDownloadKinds];
  [v2 setDownloadKinds:allStoreDownloadKinds];

  v10[0] = *MEMORY[0x1E69D4AC8];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v2 setPrefetchedDownloadExternalProperties:v4];

  v5 = *MEMORY[0x1E69D4B88];
  v9[0] = *MEMORY[0x1E69D4BF0];
  v9[1] = v5;
  v6 = *MEMORY[0x1E69D4BB0];
  v9[2] = *MEMORY[0x1E69D4BA0];
  v9[3] = v6;
  v9[4] = *MEMORY[0x1E69D4BB8];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
  [v2 setPrefetchedDownloadProperties:v7];

  v8 = [objc_alloc(MEMORY[0x1E69D48D0]) initWithManagerOptions:v2];
  [v8 reloadFromServer];
}

- (void)removeDeviceOfferWithIdentifier:(id)identifier account:(id)account
{
  identifierCopy = identifier;
  accountCopy = account;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    account = [accountCopy account];
    backingAccount = [account backingAccount];
    v8 = objc_alloc_init(AMSBag_iTunesStoreUI);
    [MEMORY[0x1E698C8A8] removeDeviceOfferWithIdentifier:identifierCopy account:backingAccount bagContract:v8 logKey:0];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid device offer identifier"];
  }
}

- (void)reportAProblemForIdentifier:(id)identifier
{
  if (SSGetUnsignedLongLongFromValue())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid adam ID"];
  }
}

void __49__SUScriptInterface_reportAProblemForIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) clientInterface];
  v2 = [[SUReportConcernViewController alloc] initWithItemIdentifier:*(a1 + 40)];
  [(SUViewController *)v2 setClientInterface:v5];
  v3 = [[SUNavigationController alloc] initWithRootViewController:v2];
  [(SUNavigationController *)v3 setClientInterface:v5];
  v4 = [*(a1 + 32) parentViewController];
  [v4 presentViewController:v3 animated:1 completion:0];
}

- (void)requireCellularForResourceWithURL:(id)l
{
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:lCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = MEMORY[0x1E69E9820];
      v6 = v5;
      WebThreadRunOnMainThread();
      [(NSLock *)self->super._lock lock:v10];
      requireCellularURLs = self->_requireCellularURLs;
      if (!requireCellularURLs)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v9 = self->_requireCellularURLs;
        self->_requireCellularURLs = v8;

        requireCellularURLs = self->_requireCellularURLs;
      }

      [(NSMutableSet *)requireCellularURLs addObject:v6];
      [(NSLock *)self->super._lock unlock];
    }

    else
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

void __55__SUScriptInterface_requireCellularForResourceWithURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && *(a1 + 40))
  {
    [v2 scriptInterface:*(a1 + 32) requireCellularForResourceWithURL:?];
  }
}

- (void)sendPostOfType:(id)type withOptions:(id)options
{
  typeCopy = type;
  optionsCopy = options;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = MEMORY[0x1E69E2F88];
    v8 = @"Invalid post type";
LABEL_11:
    [v7 throwException:v8];
    goto LABEL_12;
  }

  if (!optionsCopy)
  {
    if (![SUScriptOperation postOperationClassForType:typeCopy])
    {
      optionsCopy = 0;
      goto LABEL_12;
    }

    optionsCopy = [MEMORY[0x1E69E2FB0] undefined];
LABEL_9:
    v9 = [[SUScriptOperation alloc] initWithPostType:typeCopy options:optionsCopy];
    [(SUScriptOperationDelegate *)self->_scriptOperationDelegate enqueueOperation:v9];

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = MEMORY[0x1E69E2F88];
    v8 = @"Invalid post options";
    goto LABEL_11;
  }

  if ([SUScriptOperation postOperationClassForType:typeCopy])
  {
    goto LABEL_9;
  }

LABEL_12:
}

- (void)setLibraryIdentifierWithType:(id)type value:(id)value
{
  typeCopy = type;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    valueCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([typeCopy isEqualToString:@"app-genius"])
  {
    if (!valueCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      currentDevice = [MEMORY[0x1E69D48B0] currentDevice];
      [currentDevice setSoftwareLibraryIdentifier:valueCopy];

      goto LABEL_10;
    }

    v7 = MEMORY[0x1E69E2F88];
    v8 = @"Invalid library identifier";
  }

  else
  {
    v7 = MEMORY[0x1E69E2F88];
    v8 = @"Invalid library identifier type";
  }

  [v7 throwException:v8];
LABEL_10:
}

- (id)shouldDisplayPrivacyLinkWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

LABEL_4:
    [MEMORY[0x1E69E2F88] throwException:@"Invalid privacy identifier"];
    v4 = *MEMORY[0x1E695E4C0];
    goto LABEL_5;
  }

  if (!identifierCopy)
  {
    goto LABEL_4;
  }

  v6 = [MEMORY[0x1E69D4988] shouldDisplayPrivacyLinkWithIdentifier:identifierCopy];
  v7 = MEMORY[0x1E695E4D0];
  if (!v6)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v4 = *v7;

LABEL_5:

  return v4;
}

- (void)signOutPrimaryAccount
{
  defaultStore = [MEMORY[0x1E69D4890] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (activeAccount)
  {
    defaultStore2 = [MEMORY[0x1E69D4890] defaultStore];
    [defaultStore2 signOutAccount:activeAccount];
  }
}

- (void)startListeningForAuthenticationTokenWithCallback:(id)callback
{
  v17 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Failed to listen for authentication token - nil callback"];
    goto LABEL_13;
  }

  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v15 = 138543362;
  v16 = objc_opt_class();
  v9 = v16;
  LODWORD(v12) = 12;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v15, v12}];
    free(v10);
    SSFileLog();
LABEL_10:
  }

  hsaTokenQueue = self->_hsaTokenQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__SUScriptInterface_startListeningForAuthenticationTokenWithCallback___block_invoke;
  block[3] = &unk_1E81644A8;
  block[4] = self;
  v14 = callbackCopy;
  dispatch_sync(hsaTokenQueue, block);

LABEL_13:
}

void __70__SUScriptInterface_startListeningForAuthenticationTokenWithCallback___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 240))
  {
    HSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifier();
    CFRelease(*(*(a1 + 32) + 240));
  }

  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];
  *(*(a1 + 32) + 240) = v3;

  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy_;
  v5[4] = __Block_byref_object_dispose_;
  v6 = *(a1 + 32);
  v4 = *(a1 + 40);
  HSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifier();

  _Block_object_dispose(v5, 8);
}

void __70__SUScriptInterface_startListeningForAuthenticationTokenWithCallback___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = *(*(*(a1 + 40) + 8) + 40);
  v11 = [MEMORY[0x1E69D4938] sharedConfig];
  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_9;
  }

  v27 = 138543362;
  v28 = objc_opt_class();
  v15 = v28;
  LODWORD(v24) = 12;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v27, v24}];
    free(v16);
    SSFileLog();
LABEL_9:
  }

  v26[0] = a5;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v17 = MEMORY[0x1E695DEC8];
  v18 = a4;
  v19 = a3;
  v20 = a2;
  v21 = a5;
  v22 = [v17 arrayWithObjects:v26 count:4];
  v25 = *(a1 + 32);
  v23 = v22;
  WebThreadRunOnMainThread();
}

void __70__SUScriptInterface_startListeningForAuthenticationTokenWithCallback___block_invoke_243(void *a1)
{
  v2 = [[SUScriptFunction alloc] initWithScriptObject:a1[4]];
  [(SUScriptFunction *)v2 setThisObject:a1[5]];
  [(SUScriptFunction *)v2 callWithArguments:a1[6]];
  [(SUScriptFunction *)v2 setThisObject:0];
}

- (void)stopListeningForAuthenticationToken
{
  hsaTokenQueue = self->_hsaTokenQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SUScriptInterface_stopListeningForAuthenticationToken__block_invoke;
  block[3] = &unk_1E81645E8;
  block[4] = self;
  dispatch_sync(hsaTokenQueue, block);
}

void __56__SUScriptInterface_stopListeningForAuthenticationToken__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 240))
  {
    v2 = [MEMORY[0x1E69D4938] sharedConfig];
    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      LODWORD(v9) = 138543362;
      *(&v9 + 4) = objc_opt_class();
      v6 = *(&v9 + 4);
      LODWORD(v8) = 12;
      v7 = _os_log_send_and_compose_impl();

      if (!v7)
      {
LABEL_11:

        HSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifier();
        CFRelease(*(*(a1 + 32) + 240));
        *(*(a1 + 32) + 240) = 0;
        return;
      }

      v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v9, v8, v9}];
      free(v7);
      SSFileLog();
    }

    goto LABEL_11;
  }
}

- (void)authorizeApplePayEnrollmentWithParameters:(id)parameters callback:(id)callback
{
  v125 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  callbackCopy = callback;
  objc_initWeak(&location, self);
  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = __72__SUScriptInterface_authorizeApplePayEnrollmentWithParameters_callback___block_invoke;
  v118[3] = &unk_1E8164700;
  objc_copyWeak(&v120, &location);
  v8 = callbackCopy;
  v119 = v8;
  v9 = MEMORY[0x1C6916C70](v118);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    parametersCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v8 = 0;
  }

  v112 = 0;
  v113 = &v112;
  v114 = 0x3032000000;
  v115 = __Block_byref_object_copy_;
  v116 = __Block_byref_object_dispose_;
  v117 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    shouldLogToDisk = [mEMORY[0x1E69D4938] shouldLogToDisk];
    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    v18 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v19 = objc_opt_class();
      *from = 138543362;
      *&from[4] = v19;
      v20 = v19;
      LODWORD(v92) = 12;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
        goto LABEL_20;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, from, v92}];
      free(v21);
      SSFileLog();
    }

    goto LABEL_20;
  }

  if ([MEMORY[0x1E69E4728] shouldUseExtendedEnrollment])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = parametersCopy;
      copyJavaScriptContext = [(SUScriptInterface *)self copyJavaScriptContext];
      v12 = [v10 copyArrayOrDictionaryWithContext:copyJavaScriptContext];
      JSGlobalContextRelease(copyJavaScriptContext);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v30 = ISError();
        v31 = v113[5];
        v113[5] = v30;

        v13 = 0;
      }
    }

    else
    {
      v29 = ISError();
      v13 = 0;
      v10 = v113[5];
      v113[5] = v29;
    }

    if (v113[5])
    {
      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
      shouldLogToDisk2 = [mEMORY[0x1E69D4938]2 shouldLogToDisk];
      oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
      v36 = oSLogObject2;
      if (shouldLogToDisk2)
      {
        shouldLog2 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        shouldLog2 &= 2u;
      }

      if (shouldLog2)
      {
        v37 = objc_opt_class();
        v38 = v113[5];
        *from = 138543618;
        *&from[4] = v37;
        v123 = 2114;
        v124 = v38;
        v39 = v37;
        LODWORD(v92) = 22;
        v40 = _os_log_send_and_compose_impl();

        if (!v40)
        {
LABEL_42:

          [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
          v9[2](v9, 0, v113[5]);
          goto LABEL_97;
        }

        v36 = [MEMORY[0x1E696AEC0] stringWithCString:v40 encoding:{4, from, v92}];
        free(v40);
        SSFileLog();
      }

      goto LABEL_42;
    }

    v97 = [v13 objectForKeyedSubscript:@"paymentSession"];
    if (v97)
    {
LABEL_53:
      v96 = [v13 objectForKeyedSubscript:{@"passTypeIdentifier", v88}];
      if (v96)
      {
        goto LABEL_63;
      }

      mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
      shouldLogToDisk3 = [mEMORY[0x1E69D4938]3 shouldLogToDisk];
      oSLogObject3 = [mEMORY[0x1E69D4938]3 OSLogObject];
      v53 = oSLogObject3;
      if (shouldLogToDisk3)
      {
        shouldLog3 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog3 &= 2u;
      }

      if (shouldLog3)
      {
        v54 = objc_opt_class();
        *from = 138543362;
        *&from[4] = v54;
        v55 = v54;
        LODWORD(v92) = 12;
        v89 = from;
        v56 = _os_log_send_and_compose_impl();

        if (!v56)
        {
LABEL_62:

LABEL_63:
          v95 = [v13 objectForKeyedSubscript:{@"passSerialNumber", v89}];
          if (v95)
          {
            goto LABEL_73;
          }

          mEMORY[0x1E69D4938]4 = [MEMORY[0x1E69D4938] sharedConfig];
          shouldLog4 = [mEMORY[0x1E69D4938]4 shouldLog];
          shouldLogToDisk4 = [mEMORY[0x1E69D4938]4 shouldLogToDisk];
          oSLogObject4 = [mEMORY[0x1E69D4938]4 OSLogObject];
          v61 = oSLogObject4;
          if (shouldLogToDisk4)
          {
            shouldLog4 |= 2u;
          }

          if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
          {
            shouldLog4 &= 2u;
          }

          if (shouldLog4)
          {
            v62 = objc_opt_class();
            *from = 138543362;
            *&from[4] = v62;
            v63 = v62;
            LODWORD(v92) = 12;
            v90 = from;
            v64 = _os_log_send_and_compose_impl();

            if (!v64)
            {
LABEL_72:

LABEL_73:
              v94 = [v13 objectForKeyedSubscript:{@"metrics", v90}];
              if (v94)
              {
                goto LABEL_83;
              }

              mEMORY[0x1E69D4938]5 = [MEMORY[0x1E69D4938] sharedConfig];
              shouldLog5 = [mEMORY[0x1E69D4938]5 shouldLog];
              shouldLogToDisk5 = [mEMORY[0x1E69D4938]5 shouldLogToDisk];
              oSLogObject5 = [mEMORY[0x1E69D4938]5 OSLogObject];
              v69 = oSLogObject5;
              if (shouldLogToDisk5)
              {
                shouldLog5 |= 2u;
              }

              if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
              {
                shouldLog5 &= 2u;
              }

              if (shouldLog5)
              {
                v70 = objc_opt_class();
                *from = 138543362;
                *&from[4] = v70;
                v71 = v70;
                LODWORD(v92) = 12;
                v91 = from;
                v72 = _os_log_send_and_compose_impl();

                if (!v72)
                {
LABEL_82:

LABEL_83:
                  v99 = [v13 objectForKeyedSubscript:{@"confirmationStyle", v91}];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    mEMORY[0x1E69D4938]6 = [v13 objectForKeyedSubscript:@"confirmationStyle"];
                    unsignedIntegerValue = [mEMORY[0x1E69D4938]6 unsignedIntegerValue];
LABEL_96:

                    v81 = objc_alloc(MEMORY[0x1E69E4770]);
                    v82 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
                    v83 = [v81 initWithBagContext:v82];

                    objc_initWeak(from, v83);
                    v100[0] = MEMORY[0x1E69E9820];
                    v100[1] = 3221225472;
                    v100[2] = __72__SUScriptInterface_authorizeApplePayEnrollmentWithParameters_callback___block_invoke_269;
                    v100[3] = &unk_1E8164750;
                    objc_copyWeak(&v110, &location);
                    objc_copyWeak(v111, from);
                    v109 = &v112;
                    v101 = @"Apple Pay Enrollment Error";
                    v98 = v97;
                    v102 = v98;
                    v84 = v96;
                    v103 = v84;
                    v85 = v95;
                    v104 = v85;
                    v105 = v8;
                    v108 = v9;
                    v86 = v94;
                    v106 = v86;
                    selfCopy = self;
                    v111[1] = unsignedIntegerValue;
                    [v83 setCompletionBlock:v100];
                    mainQueue = [MEMORY[0x1E69E4798] mainQueue];
                    [mainQueue addOperation:v83];

                    objc_destroyWeak(v111);
                    objc_destroyWeak(&v110);
                    objc_destroyWeak(from);

                    goto LABEL_97;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    mEMORY[0x1E69D4938]6 = [v13 objectForKeyedSubscript:@"confirmationStyle"];
                    unsignedIntegerValue = [mEMORY[0x1E69D4938]6 intValue];
                    goto LABEL_96;
                  }

                  mEMORY[0x1E69D4938]6 = [MEMORY[0x1E69D4938] sharedConfig];
                  shouldLog6 = [mEMORY[0x1E69D4938]6 shouldLog];
                  shouldLogToDisk6 = [mEMORY[0x1E69D4938]6 shouldLogToDisk];
                  oSLogObject6 = [mEMORY[0x1E69D4938]6 OSLogObject];
                  v77 = oSLogObject6;
                  if (shouldLogToDisk6)
                  {
                    shouldLog6 |= 2u;
                  }

                  if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
                  {
                    shouldLog6 &= 2u;
                  }

                  if (shouldLog6)
                  {
                    v78 = objc_opt_class();
                    *from = 138412290;
                    *&from[4] = v78;
                    v79 = v78;
                    LODWORD(v92) = 12;
                    v80 = _os_log_send_and_compose_impl();

                    if (!v80)
                    {
LABEL_95:
                      unsignedIntegerValue = 0;
                      goto LABEL_96;
                    }

                    v77 = [MEMORY[0x1E696AEC0] stringWithCString:v80 encoding:{4, from, v92}];
                    free(v80);
                    SSFileLog();
                  }

                  goto LABEL_95;
                }

                v69 = [MEMORY[0x1E696AEC0] stringWithCString:v72 encoding:{4, from, v92}];
                free(v72);
                v91 = v69;
                SSFileLog();
              }

              goto LABEL_82;
            }

            v61 = [MEMORY[0x1E696AEC0] stringWithCString:v64 encoding:{4, from, v92}];
            free(v64);
            v90 = v61;
            SSFileLog();
          }

          goto LABEL_72;
        }

        v53 = [MEMORY[0x1E696AEC0] stringWithCString:v56 encoding:{4, from, v92}];
        free(v56);
        v89 = v53;
        SSFileLog();
      }

      goto LABEL_62;
    }

    mEMORY[0x1E69D4938]7 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog7 = [mEMORY[0x1E69D4938]7 shouldLog];
    shouldLogToDisk7 = [mEMORY[0x1E69D4938]7 shouldLogToDisk];
    oSLogObject7 = [mEMORY[0x1E69D4938]7 OSLogObject];
    v45 = oSLogObject7;
    if (shouldLogToDisk7)
    {
      shouldLog7 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog7 &= 2u;
    }

    if (shouldLog7)
    {
      v46 = objc_opt_class();
      *from = 138543362;
      *&from[4] = v46;
      v47 = v46;
      LODWORD(v92) = 12;
      v88 = from;
      v48 = _os_log_send_and_compose_impl();

      if (!v48)
      {
LABEL_52:

        goto LABEL_53;
      }

      v45 = [MEMORY[0x1E696AEC0] stringWithCString:v48 encoding:{4, from, v92}];
      free(v48);
      v88 = v45;
      SSFileLog();
    }

    goto LABEL_52;
  }

  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog8 = [mEMORY[0x1E69D4938] shouldLog];
  shouldLogToDisk8 = [mEMORY[0x1E69D4938] shouldLogToDisk];
  oSLogObject8 = [mEMORY[0x1E69D4938] OSLogObject];
  v25 = oSLogObject8;
  if (shouldLogToDisk8)
  {
    shouldLog8 |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_ERROR))
  {
    shouldLog8 &= 2u;
  }

  if (!shouldLog8)
  {
    goto LABEL_28;
  }

  v26 = objc_opt_class();
  *from = 138543362;
  *&from[4] = v26;
  v27 = v26;
  LODWORD(v92) = 12;
  v28 = _os_log_send_and_compose_impl();

  if (v28)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, from, v92}];
    free(v28);
    SSFileLog();
LABEL_28:
  }

LABEL_20:

  [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  v13 = ISError();
  (v9)[2](v9, 0, v13);
LABEL_97:

  _Block_object_dispose(&v112, 8);
  objc_destroyWeak(&v120);
  objc_destroyWeak(&location);
}

void __72__SUScriptInterface_authorizeApplePayEnrollmentWithParameters_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 32)];
  [(SUScriptFunction *)v8 setThisObject:WeakRetained];
  if (v6)
  {
    v9 = [[SUScriptError alloc] initWithError:v6];
    v10 = [MEMORY[0x1E69E2FB0] undefined];
    v19[0] = v10;
    v19[1] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    [(SUScriptFunction *)v8 callWithArguments:v11];
  }

  else
  {
    v12 = [v5 token];
    v9 = [v12 paymentData];

    [(SUScriptError *)v9 bytes];
    [(SUScriptError *)v9 length];
    v10 = ISCopyEncodedBase64();
    v17 = @"payment";
    v18 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v13 = [[SUScriptDictionary alloc] initWithDictionary:v11];
    v16[0] = v13;
    v14 = [MEMORY[0x1E69E2FB0] undefined];
    v16[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    [(SUScriptFunction *)v8 callWithArguments:v15];
  }

  [(SUScriptFunction *)v8 setThisObject:0];
}

void __72__SUScriptInterface_authorizeApplePayEnrollmentWithParameters_callback___block_invoke_269(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v3 = objc_loadWeakRetained((a1 + 112));
  v4 = [v3 URLBag];
  v5 = v4;
  if (!v4)
  {
    v23 = [MEMORY[0x1E69D4938] sharedConfig];
    v24 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v25 = v24 | 2;
    }

    else
    {
      v25 = v24;
    }

    v26 = [v23 OSLogObject];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      *buf = 138543362;
      v72 = objc_opt_class();
      v27 = v72;
      LODWORD(v64) = 12;
      v63 = buf;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_32:

        v29 = ISError();
        v7 = 0;
        v30 = *(*(a1 + 96) + 8);
        v16 = *(v30 + 40);
        *(v30 + 40) = v29;
        goto LABEL_33;
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, buf, v64}];
      free(v28);
      v63 = v26;
      SSFileLog();
    }

    goto LABEL_32;
  }

  v6 = [v4 valueForKey:@"countryCode"];
  v7 = [v6 uppercaseString];

  if (!v7)
  {
    v8 = [MEMORY[0x1E69D4938] sharedConfig];
    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *buf = 138543362;
      v72 = objc_opt_class();
      v12 = v72;
      LODWORD(v64) = 12;
      v63 = buf;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_12:

        goto LABEL_13;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, buf, v64}];
      free(v13);
      v63 = v11;
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_13:
  v14 = [v5 valueForKey:{@"currencyCode", v63}];
  v15 = [v14 uppercaseString];

  if (v15)
  {
    goto LABEL_43;
  }

  v16 = [MEMORY[0x1E69D4938] sharedConfig];
  v17 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v16 OSLogObject];
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v18 &= 2u;
  }

  if (v18)
  {
    v20 = objc_opt_class();
    *buf = 138543362;
    v72 = v20;
    v21 = v20;
    LODWORD(v64) = 12;
    v63 = buf;
    v22 = _os_log_send_and_compose_impl();

    if (!v22)
    {
      goto LABEL_33;
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, buf, v64}];
    free(v22);
    v63 = v19;
    SSFileLog();
  }

LABEL_33:
  v31 = [MEMORY[0x1E69D4938] sharedConfig];
  v32 = [v31 shouldLog];
  if ([v31 shouldLogToDisk])
  {
    v33 = v32 | 2;
  }

  else
  {
    v33 = v32;
  }

  v34 = [v31 OSLogObject];
  if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v33 &= 2u;
  }

  if (!v33)
  {
    goto LABEL_41;
  }

  v35 = objc_opt_class();
  *buf = 138543362;
  v72 = v35;
  v36 = v35;
  LODWORD(v64) = 12;
  v63 = buf;
  v37 = _os_log_send_and_compose_impl();

  if (v37)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithCString:v37 encoding:{4, buf, v64}];
    free(v37);
    v63 = v34;
    SSFileLog();
LABEL_41:
  }

  v38 = [MEMORY[0x1E695DF58] currentLocale];
  v15 = [v38 currencyCode];

LABEL_43:
  if (*(*(*(a1 + 96) + 8) + 40))
  {
LABEL_60:
    (*(*(a1 + 88) + 16))();
    goto LABEL_61;
  }

  if (!*(a1 + 40) || !*(a1 + 48) || !*(a1 + 56) || !v7 || !v15 || !*(a1 + 64))
  {
    v39 = [MEMORY[0x1E69D4938] sharedConfig];
    v40 = [v39 shouldLog];
    if ([v39 shouldLogToDisk])
    {
      v41 = v40 | 2;
    }

    else
    {
      v41 = v40;
    }

    v42 = [v39 OSLogObject];
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v41 &= 2u;
    }

    if (v41)
    {
      v43 = objc_opt_class();
      *buf = 138543362;
      v72 = v43;
      v44 = v43;
      LODWORD(v64) = 12;
      v63 = buf;
      v45 = _os_log_send_and_compose_impl();

      if (!v45)
      {
        goto LABEL_59;
      }

      v42 = [MEMORY[0x1E696AEC0] stringWithCString:v45 encoding:{4, buf, v64}];
      free(v45);
      v63 = v42;
      SSFileLog();
    }

LABEL_59:
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v46 = ISError();
    v47 = *(*(a1 + 96) + 8);
    v48 = *(v47 + 40);
    *(v47 + 40) = v46;

    if (*(*(*(a1 + 96) + 8) + 40))
    {
      goto LABEL_60;
    }
  }

  v49 = [objc_alloc(MEMORY[0x1E698C828]) initWithPaymentSession:*(a1 + 40)];
  [v49 setCountryCode:v7];
  [v49 setCurrencyCode:v15];
  [v49 setPassSerialNumber:*(a1 + 56)];
  [v49 setPassTypeIdentifier:*(a1 + 48)];
  v50 = *(a1 + 72);
  if (v50)
  {
    v51 = [v50 objectForKeyedSubscript:@"topic"];
    if (v51)
    {
      v52 = [objc_alloc(MEMORY[0x1E698CA08]) initWithTopic:v51];
      v53 = [*(a1 + 72) objectForKeyedSubscript:@"mtApp"];
      if (v53)
      {
        [v52 setProperty:v53 forBodyKey:@"app"];
      }

      v66 = v53;
      v54 = [*(a1 + 72) objectForKeyedSubscript:{@"mtPageContext", v63}];
      if (v54)
      {
        [v52 setProperty:v54 forBodyKey:@"pageContext"];
      }

      v65 = v54;
      v68 = v51;
      v55 = [*(a1 + 72) objectForKeyedSubscript:@"mtPageId"];
      if (v55)
      {
        [v52 setProperty:v55 forBodyKey:@"pageId"];
      }

      v67 = v3;
      v56 = [*(a1 + 72) objectForKeyedSubscript:@"mtPageType"];
      if (v56)
      {
        [v52 setProperty:v56 forBodyKey:@"pageType"];
      }

      [*(a1 + 72) objectForKeyedSubscript:@"mtPrevPage"];
      v58 = v57 = v52;
      if (v58)
      {
        [v57 setProperty:v58 forBodyKey:@"prevPage"];
      }

      [v49 setMetricsEvent:v57];

      v59 = v57;
      v3 = v67;
      v51 = v68;
      v60 = v66;
    }

    else
    {
      v59 = [MEMORY[0x1E698C968] sharedConfig];
      v60 = [v59 OSLogObject];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = objc_opt_class();
        *buf = 138543362;
        v72 = v61;
        _os_log_impl(&dword_1C21AF000, v60, OS_LOG_TYPE_ERROR, "%{public}@: [AuthorizeEnrollment] Metrics failed for no topic", buf, 0xCu);
      }
    }
  }

  if (*(a1 + 120) <= 1uLL)
  {
    [v49 setConfirmationStyle:?];
  }

  v62 = [v49 performCardAuthorization];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __72__SUScriptInterface_authorizeApplePayEnrollmentWithParameters_callback___block_invoke_306;
  v69[3] = &unk_1E8164728;
  v69[4] = WeakRetained;
  v70 = *(a1 + 88);
  [v62 addFinishBlock:v69];

LABEL_61:
}

void __72__SUScriptInterface_authorizeApplePayEnrollmentWithParameters_callback___block_invoke_306(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E69D4938] sharedConfig];
    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      LODWORD(v14) = 138543362;
      *(&v14 + 4) = objc_opt_class();
      v11 = *(&v14 + 4);
      LODWORD(v13) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_11:

        goto LABEL_12;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v14, v13, v14}];
      free(v12);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  (*(*(a1 + 40) + 16))();
}

- (void)dismissSafariViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  v11[0] = 67109120;
  v11[1] = animatedCopy;
  LODWORD(v10) = 8;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, v11, v10}];
    free(v9);
    SSFileLog();
LABEL_10:
  }

  WebThreadRunOnMainThread();
}

- (void)showSafariViewControllerWithURLString:(id)string identifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v31 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  identifierCopy = identifier;
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (v13)
  {
    v25 = 138412802;
    v26 = stringCopy;
    v27 = 2112;
    v28 = identifierCopy;
    v29 = 1024;
    v30 = animatedCopy;
    LODWORD(v22) = 28;
    v21 = &v25;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_11;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v25, v22}];
    free(v14);
    v21 = oSLogObject;
    SSFileLog();
  }

LABEL_11:
  if (!identifierCopy)
  {
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      v17 = shouldLog2 | 2;
    }

    else
    {
      v17 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 & 2;
    }

    if (v19)
    {
      LOWORD(v25) = 0;
      LODWORD(v22) = 2;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
        goto LABEL_23;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v25, v22}];
      free(v20);
      SSFileLog();
    }

    goto LABEL_23;
  }

  v23 = stringCopy;
  v24 = identifierCopy;
  WebThreadRunOnMainThread();

  mEMORY[0x1E69D4938]2 = v23;
LABEL_23:
}

void __79__SUScriptInterface_showSafariViewControllerWithURLString_identifier_animated___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 32)];
  v3 = [*(a1 + 40) safariViewControllerIdentifier];

  v4 = *(a1 + 40);
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __79__SUScriptInterface_showSafariViewControllerWithURLString_identifier_animated___block_invoke_2;
    v5[3] = &unk_1E81644D0;
    v5[4] = v4;
    v6 = v2;
    v7 = *(a1 + 48);
    [v4 _dismissSafariViewControllerAnimated:0 completion:v5];
  }

  else
  {
    [*(a1 + 40) _presentSafariViewControllerWithURL:v2 safariIdentifier:*(a1 + 48) animated:*(a1 + 56)];
  }
}

- (id)applicationAccessibilityEnabled
{
  v2 = _AXSApplicationAccessibilityEnabled();
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;

  return v4;
}

- (SUScriptKeyValueStore)applicationLocalStorage
{
  [(SUScriptObject *)self lock];
  applicationLocalStorage = self->_applicationLocalStorage;
  if (!applicationLocalStorage)
  {
    v4 = MEMORY[0x1E696AEC0];
    clientIdentifier = [(SUClientInterface *)self->_clientInterface clientIdentifier];
    v6 = [v4 stringWithFormat:@"com.apple.iTunesStoreUI.script.app.%@", clientIdentifier];

    v7 = [[SUScriptKeyValueStore alloc] initWithDomain:v6];
    v8 = self->_applicationLocalStorage;
    self->_applicationLocalStorage = v7;

    applicationLocalStorage = self->_applicationLocalStorage;
  }

  v9 = applicationLocalStorage;
  [(SUScriptObject *)self unlock];

  return v9;
}

- (NSString)askToBuyPrompt
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __35__SUScriptInterface_askToBuyPrompt__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) clientInterface];
  v2 = [v5 askToBuyApprovalPrompt];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)clientIdentifier
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __37__SUScriptInterface_clientIdentifier__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) clientInterface];
  v2 = [v5 clientIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)cookie
{
  webFrame = [(SUScriptInterface *)self webFrame];
  dataSource = [webFrame dataSource];
  request = [dataSource request];
  v6 = [request URL];
  v7 = [(SUScriptInterface *)self _cookieForURL:v6];

  return v7;
}

- (NSString)cookieForDefaultURL
{
  v3 = MEMORY[0x1E695DFF8];
  cookieDefaultURL = [(SUScriptInterface *)self cookieDefaultURL];
  v5 = [v3 URLWithString:cookieDefaultURL];
  v6 = [(SUScriptInterface *)self _cookieForURL:v5];

  return v6;
}

- (id)creditCardReaderAvailable
{
  v2 = +[SUCreditCardReaderViewController cameraSupported];
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;

  return v4;
}

- (NSArray)deviceOffers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  deviceOffers = [MEMORY[0x1E698C8A8] deviceOffers];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __33__SUScriptInterface_deviceOffers__block_invoke;
  v11 = &unk_1E8164818;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  [deviceOffers enumerateObjectsUsingBlock:&v8];

  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:{v5, v8, v9, v10, v11, selfCopy}];

  return v6;
}

void __33__SUScriptInterface_deviceOffers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SUScriptDeviceOffer alloc] initWithDeviceOffer:v3];

  [*(a1 + 32) checkInScriptObject:v4];
  [*(a1 + 40) addObject:v4];
}

- (NSString)deviceSerialNumber
{
  currentDevice = [MEMORY[0x1E69D48B0] currentDevice];
  serialNumber = [currentDevice serialNumber];
  v4 = serialNumber;
  if (serialNumber)
  {
    v5 = serialNumber;
  }

  else
  {
    v5 = &stru_1F41B3660;
  }

  v6 = v5;

  return &v5->isa;
}

- (id)globalRootObject
{
  webFrame = [(SUScriptInterface *)self webFrame];
  webView = [webFrame webView];
  mainFrame = [webView mainFrame];
  windowObject = [mainFrame windowObject];

  return windowObject;
}

- (NSString)gsToken
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __28__SUScriptInterface_gsToken__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v8 webView];
    v3 = [v2 request];
    v4 = [v3 allHTTPHeaderFields];

    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D4C58]];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)isApplePayAvailable
{
  isSecureElementAvailable = [MEMORY[0x1E698C8A8] isSecureElementAvailable];
  v3 = MEMORY[0x1E695E4D0];
  if (!isSecureElementAvailable)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;

  return v4;
}

- (id)isFinanceInterruption
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  WebThreadRunOnMainThread();
  if (*(v6 + 24))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __42__SUScriptInterface_isFinanceInterruption__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientInterface];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isFinanceInterruption];
}

- (id)isWalletAvailable
{
  isPassLibraryAvailable = [ISWeakLinkedClassForString() isPassLibraryAvailable];
  v3 = MEMORY[0x1E695E4D0];
  if (!isPassLibraryAvailable)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;

  return v4;
}

- (id)loggingEnabled
{
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  v4 = MEMORY[0x1E695E4D0];
  if (!shouldLog)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)makeXMLHTTPRequest
{
  v2 = [[SUScriptXMLHTTPRequest alloc] initWithDelegate:self];

  return v2;
}

- (id)makeXMLHTTPStoreRequest
{
  v3 = [[SUScriptXMLHTTPStoreRequest alloc] initWithDelegate:self];
  authenticationContext = [(SUScriptInterface *)self authenticationContext];
  [(SUScriptXMLHTTPStoreRequest *)v3 setAuthenticationContext:authenticationContext];

  clientInterface = [(SUScriptInterface *)self clientInterface];
  v6 = objc_alloc_init(SUStorePageDataProvider);
  [(SUStorePageDataProvider *)v6 setClientInterface:clientInterface];
  [(SUScriptXMLHTTPStoreRequest *)v3 setDataProvider:v6];

  return v3;
}

- (SUScriptNavigationBar)navigationBar
{
  viewController = [(SUScriptInterface *)self viewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationController = [viewController navigationController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      navigationBar = [navigationController navigationBar];
    }

    else
    {
      navigationBar = 0;
    }
  }

  else
  {
    navigationBar = 0;
  }

  return navigationBar;
}

- (SUScriptNavigationSimulator)navigationSimulator
{
  WebThreadRunOnMainThread();
  if (self->_navigationSimulator)
  {
    [(SUScriptObject *)self checkInScriptObject:?];
    null = self->_navigationSimulator;
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Failed to create a navigation simulator."];
    null = [MEMORY[0x1E695DFB0] null];
  }

  return null;
}

void __40__SUScriptInterface_navigationSimulator__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[31])
  {
    v3 = [v2 parentViewController];
    v7 = [v3 su_closestNavigationController];

    if (v7)
    {
      v4 = [[SUScriptNavigationSimulator alloc] initWithNavigationController:v7];
      v5 = *(a1 + 32);
      v6 = *(v5 + 248);
      *(v5 + 248) = v4;
    }
  }
}

- (NSNumber)orientation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  WebThreadRunOnMainThread();
  v2 = v7[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v6, 8);

  return v4;
}

void __32__SUScriptInterface_orientation__block_invoke(uint64_t a1)
{
  v4 = objc_alloc(MEMORY[0x1E696AD98]);
  v5 = 0x1E69DC000;
  v13 = [MEMORY[0x1E69DC668] sharedApplication];
  v6 = [v13 statusBarOrientation];
  if (v6 == 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E69DC668] sharedApplication];
    if ([v1 statusBarOrientation] == 4)
    {
      v7 = 0;
      v8 = 0;
      v9 = -90;
    }

    else
    {
      v2 = [MEMORY[0x1E69DC668] sharedApplication];
      if ([v2 statusBarOrientation] == 3)
      {
        v8 = 0;
        v7 = 1;
        v9 = 90;
      }

      else
      {
        v5 = [MEMORY[0x1E69DC668] sharedApplication];
        if ([v5 statusBarOrientation] == 2)
        {
          v9 = 180;
        }

        else
        {
          v9 = 0;
        }

        v7 = 1;
        v8 = 1;
      }
    }
  }

  v10 = [v4 initWithInteger:v9];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (v8)
  {
  }

  if (v7)
  {
  }

  if (v6 != 1)
  {
  }
}

- (NSString)referrerURL
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __32__SUScriptInterface_referrerURL__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v8 webView];
    v3 = [v2 request];
    v4 = [v3 allHTTPHeaderFields];

    v5 = [v4 valueForKey:@"referer"];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (NSString)referringUserAgent
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __39__SUScriptInterface_referringUserAgent__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v8 webView];
    v3 = [v2 request];
    v4 = [v3 allHTTPHeaderFields];

    v5 = [v4 valueForKey:@"ref-user-agent"];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)requestInfo
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  if (v9[5])
  {
    v3 = [SUScriptRequestPerformance alloc];
    v4 = [(SUScriptRequestPerformance *)v3 initWithRequestPerformance:v9[5], v6, 3221225472, __32__SUScriptInterface_requestInfo__block_invoke, &unk_1E81647F0, self, &v8];
    [(SUScriptObject *)self checkInScriptObject:v4];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __32__SUScriptInterface_requestInfo__block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 112) performanceMetricsForScriptInterface:?];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (SUScriptPreviewOverlay)previewOverlay
{
  [(SUScriptObject *)self lock];
  previewOverlay = self->_previewOverlay;
  if (previewOverlay)
  {
    v4 = previewOverlay;
    [(SUScriptObject *)self unlock];
  }

  else
  {
    v5 = objc_alloc_init(SUScriptPreviewOverlay);
    v6 = self->_previewOverlay;
    self->_previewOverlay = v5;

    [(SUScriptObject *)self->_previewOverlay setVisible:1];
    v4 = self->_previewOverlay;
    [(SUScriptObject *)self unlock];
    [(SUScriptObject *)self checkInScriptObject:v4];
  }

  return v4;
}

- (id)screenReaderRunning
{
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v3 = MEMORY[0x1E695E4D0];
  if (!IsVoiceOverRunning)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;

  return v4;
}

- (void)setCookie:(id)cookie
{
  cookieCopy = cookie;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{cookieCopy, @"Set-Cookie", 0}];
    v5 = MEMORY[0x1E695ABF8];
    webFrame = [(SUScriptInterface *)self webFrame];
    dataSource = [webFrame dataSource];
    request = [dataSource request];
    v9 = [request URL];
    v10 = [v5 cookiesWithResponseHeaderFields:v4 forURL:v9];

    if ([v10 count])
    {
      defaultStore = [MEMORY[0x1E69D4890] defaultStore];
      activeAccount = [defaultStore activeAccount];

      mEMORY[0x1E69D4A10] = [MEMORY[0x1E69D4A10] sharedStorage];
      uniqueIdentifier = [activeAccount uniqueIdentifier];
      [mEMORY[0x1E69D4A10] setCookies:v10 forUserIdentifier:uniqueIdentifier];
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

- (void)setCookieDefaultURL:(id)l
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"cookieDefaultURL"];
  [v3 throwException:v4];
}

- (void)setCookieForDefaultURL:(id)l
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"cookieForDefaultURL"];
  [v3 throwException:v4];
}

- (void)setGlobalRootObject:(id)object
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"globalRootObject"];
  [v3 throwException:v4];
}

- (void)setGsToken:(id)token
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"gsToken"];
  [v3 throwException:v4];
}

- (void)setLoggingEnabled:(id)enabled
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"loggingEnabled"];
  [v3 throwException:v4];
}

- (void)setOrientation:(id)orientation
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"orientation"];
  [v3 throwException:v4];
}

- (void)setReferrerURL:(id)l
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"referrerURL"];
  [v3 throwException:v4];
}

- (void)setReferringUserAgent:(id)agent
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"referringUserAgent"];
  [v3 throwException:v4];
}

- (void)setSafariViewControllerDismissButtonStyle:(id)style
{
  objc_storeStrong(&self->_safariDismissButtonStyle, style);
  styleCopy = style;
  [(SFSafariViewController *)self->_safariViewController setDismissButtonStyle:[(NSNumber *)self->_safariDismissButtonStyle integerValue]];
}

- (void)setNavigationBar:(id)bar
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"navigationBar"];
  [v3 throwException:v4];
}

- (void)setNavigationSimulator:(id)simulator
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"navigationSimulator"];
  [v3 throwException:v4];
}

- (void)setStoreFrontIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"storeFrontID"];
  [v3 throwException:v4];
}

- (void)setTidHeaders:(id)headers
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"tidHeaders"];
  [v3 throwException:v4];
}

- (void)setTidState:(id)state
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"tidState"];
  [v3 throwException:v4];
}

- (void)setUserAgent:(id)agent
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"userAgent"];
  [v3 throwException:v4];
}

- (void)setWalletAvailable:(id)available
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"walletAvailable"];
  [v3 throwException:v4];
}

- (NSString)storeFrontIdentifier
{
  defaultStore = [MEMORY[0x1E69D4890] defaultStore];
  activeAccount = [defaultStore activeAccount];

  v4 = SSVStoreFrontIdentifierForAccount();

  return v4;
}

- (int64_t)storeSheetType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  WebThreadRunOnMainThread();
  if (*(v6 + 24))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  _Block_object_dispose(&v5, 8);
  return v3;
}

void __35__SUScriptInterface_storeSheetType__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientInterface];
  *(*(*(a1 + 40) + 8) + 24) = [v2 inAskToBuyApprovalFlow];
}

- (SUScriptDictionary)tidHeaders
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

uint64_t __31__SUScriptInterface_tidHeaders__block_invoke(uint64_t a1)
{
  v22 = [*(a1 + 32) parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v22 webView];
    v3 = [v2 request];
    v4 = [v3 allHTTPHeaderFields];

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = *MEMORY[0x1E69D4C78];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D4C78]];
    if (v7)
    {
      [v5 setObject:v7 forKeyedSubscript:v6];
    }

    v8 = *MEMORY[0x1E69D4C80];
    v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D4C80]];

    if (v9)
    {
      [v5 setObject:v9 forKeyedSubscript:v8];
    }

    v10 = *MEMORY[0x1E69D4C88];
    v11 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D4C88]];

    if (v11)
    {
      [v5 setObject:v11 forKeyedSubscript:v10];
    }

    v12 = *MEMORY[0x1E69D4C90];
    v13 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D4C90]];

    if (v13)
    {
      [v5 setObject:v13 forKeyedSubscript:v12];
    }

    v14 = *MEMORY[0x1E69D4C98];
    v15 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D4C98]];

    if (v15)
    {
      [v5 setObject:v15 forKeyedSubscript:v14];
    }

    v16 = *MEMORY[0x1E69D4C70];
    v17 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D4C70]];

    if (v17)
    {
      [v5 setObject:v17 forKeyedSubscript:v16];
    }

    v18 = [[SUScriptDictionary alloc] initWithDictionary:v5];
    v19 = *(*(a1 + 40) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)tidState
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __29__SUScriptInterface_tidState__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E69E4728] sharedInstance];
  v2 = ISBiometricsHTTPHeaderValueForBiometricStateWithStore();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)userAgent
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __30__SUScriptInterface_userAgent__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v8 webView];
    v3 = [v2 request];
    v4 = [v3 allHTTPHeaderFields];

    v5 = [v4 valueForKey:@"User-Agent"];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)accountDSID
{
  defaultStore = [MEMORY[0x1E69D4890] defaultStore];
  activeAccount = [defaultStore activeAccount];
  uniqueIdentifier = [activeAccount uniqueIdentifier];

  return uniqueIdentifier;
}

- (id)accountName
{
  defaultStore = [MEMORY[0x1E69D4890] defaultStore];
  activeAccount = [defaultStore activeAccount];
  accountName = [activeAccount accountName];

  return accountName;
}

- (BOOL)haveAccount
{
  accountDSID = [(SUScriptInterface *)self accountDSID];
  v3 = accountDSID != 0;

  return v3;
}

- (BOOL)shouldRestrictContentOfSystem:(id)system level:(id)level
{
  systemCopy = system;
  levelCopy = level;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ((objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    v7 = objc_alloc_init(SUItemContentRating);
    -[SUItemContentRating setRank:](v7, "setRank:", [levelCopy intValue]);
    [(SUItemContentRating *)v7 setRatingSystem:[SUItemContentRating ratingSystemFromString:systemCopy]];
    isRestricted = [(SUItemContentRating *)v7 isRestricted];
  }

  else
  {
    isRestricted = 0;
  }

  return isRestricted;
}

- (BOOL)shouldShowAddToWalletLink:(id)link
{
  v3 = ISWeakLinkedClassForString();

  return [v3 canMakePayments];
}

- (void)signupInWallet:(id)wallet callback:(id)callback
{
  v70 = *MEMORY[0x1E69E9840];
  walletCopy = wallet;
  callbackCopy = callback;
  objc_initWeak(&location, self);
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __45__SUScriptInterface_signupInWallet_callback___block_invoke;
  v64[3] = &unk_1E8164610;
  v8 = callbackCopy;
  v65 = v8;
  objc_copyWeak(&v66, &location);
  v9 = MEMORY[0x1C6916C70](v64);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    walletCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v8 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    shouldLogToDisk = [mEMORY[0x1E69D4938] shouldLogToDisk];
    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    v20 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v21 = objc_opt_class();
      v68 = 138543362;
      v69 = v21;
      v22 = v21;
      LODWORD(v61) = 12;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
        goto LABEL_21;
      }

      v20 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v68, v61}];
      free(v23);
      SSFileLog();
    }

    goto LABEL_21;
  }

  if ([MEMORY[0x1E69E4728] shouldUseUpsellEnrollment])
  {
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    ams_isActiveAccountCombined = [ams_sharedAccountStore ams_isActiveAccountCombined];

    if (ams_isActiveAccountCombined)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
        shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
        shouldLogToDisk2 = [mEMORY[0x1E69D4938]2 shouldLogToDisk];
        oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
        v14 = oSLogObject2;
        if (shouldLogToDisk2)
        {
          shouldLog2 |= 2u;
        }

        if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          shouldLog2 &= 2u;
        }

        if (shouldLog2)
        {
          v42 = objc_opt_class();
          v68 = 138543362;
          v69 = v42;
          v43 = v42;
          LODWORD(v61) = 12;
          v15 = _os_log_send_and_compose_impl();

          if (!v15)
          {
            goto LABEL_58;
          }

          v14 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v68, v61}];
          free(v15);
          SSFileLog();
        }

        goto LABEL_56;
      }

      mEMORY[0x1E69D4938]2 = walletCopy;
      copyJavaScriptContext = [(SUScriptInterface *)self copyJavaScriptContext];
      v14 = [mEMORY[0x1E69D4938]2 copyArrayOrDictionaryWithContext:copyJavaScriptContext];
      JSGlobalContextRelease(copyJavaScriptContext);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v14;
        v15 = v14;
LABEL_57:

LABEL_58:
        v52 = [v15 objectForKeyedSubscript:@"referrerIdentifier"];
        if (v52)
        {
LABEL_68:
          v62 = v52;
          v63 = v9;
          WebThreadRunOnMainThread();

          goto LABEL_69;
        }

        mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
        shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
        shouldLogToDisk3 = [mEMORY[0x1E69D4938]3 shouldLogToDisk];
        oSLogObject3 = [mEMORY[0x1E69D4938]3 OSLogObject];
        v57 = oSLogObject3;
        if (shouldLogToDisk3)
        {
          shouldLog3 |= 2u;
        }

        if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          shouldLog3 &= 2u;
        }

        if (shouldLog3)
        {
          v58 = objc_opt_class();
          v68 = 138543362;
          v69 = v58;
          v59 = v58;
          LODWORD(v61) = 12;
          v60 = _os_log_send_and_compose_impl();

          if (!v60)
          {
LABEL_67:

            goto LABEL_68;
          }

          v57 = [MEMORY[0x1E696AEC0] stringWithCString:v60 encoding:{4, &v68, v61}];
          free(v60);
          SSFileLog();
        }

        goto LABEL_67;
      }

      mEMORY[0x1E69D4938]4 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog4 = [mEMORY[0x1E69D4938]4 shouldLog];
      shouldLogToDisk4 = [mEMORY[0x1E69D4938]4 shouldLogToDisk];
      oSLogObject4 = [mEMORY[0x1E69D4938]4 OSLogObject];
      v48 = oSLogObject4;
      if (shouldLogToDisk4)
      {
        shouldLog4 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog4 &= 2u;
      }

      if (shouldLog4)
      {
        v49 = objc_opt_class();
        v68 = 138543362;
        v69 = v49;
        v50 = v49;
        LODWORD(v61) = 12;
        v51 = _os_log_send_and_compose_impl();

        if (!v51)
        {
LABEL_55:

LABEL_56:
          v15 = 0;
          goto LABEL_57;
        }

        v48 = [MEMORY[0x1E696AEC0] stringWithCString:v51 encoding:{4, &v68, v61}];
        free(v51);
        SSFileLog();
      }

      goto LABEL_55;
    }

    mEMORY[0x1E69D4938]5 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog5 = [mEMORY[0x1E69D4938]5 shouldLog];
    shouldLogToDisk5 = [mEMORY[0x1E69D4938]5 shouldLogToDisk];
    oSLogObject5 = [mEMORY[0x1E69D4938]5 OSLogObject];
    v35 = oSLogObject5;
    if (shouldLogToDisk5)
    {
      shouldLog5 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      shouldLog5 &= 2u;
    }

    if (shouldLog5)
    {
      v36 = objc_opt_class();
      v68 = 138543362;
      v69 = v36;
      v37 = v36;
      LODWORD(v61) = 12;
      v38 = _os_log_send_and_compose_impl();

      if (!v38)
      {
LABEL_39:

        v15 = ISError();
        (v9)[2](v9, 0, v15);
        goto LABEL_69;
      }

      v35 = [MEMORY[0x1E696AEC0] stringWithCString:v38 encoding:{4, &v68, v61}];
      free(v38);
      SSFileLog();
    }

    goto LABEL_39;
  }

  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog6 = [mEMORY[0x1E69D4938] shouldLog];
  shouldLogToDisk6 = [mEMORY[0x1E69D4938] shouldLogToDisk];
  oSLogObject6 = [mEMORY[0x1E69D4938] OSLogObject];
  v27 = oSLogObject6;
  if (shouldLogToDisk6)
  {
    shouldLog6 |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
  {
    shouldLog6 &= 2u;
  }

  if (!shouldLog6)
  {
    goto LABEL_29;
  }

  v28 = objc_opt_class();
  v68 = 138543362;
  v69 = v28;
  v29 = v28;
  LODWORD(v61) = 12;
  v30 = _os_log_send_and_compose_impl();

  if (v30)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:{4, &v68, v61}];
    free(v30);
    SSFileLog();
LABEL_29:
  }

LABEL_21:

  [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  v15 = ISError();
  (v9)[2](v9, 0, v15);
LABEL_69:

  objc_destroyWeak(&v66);
  objc_destroyWeak(&location);
}

void __45__SUScriptInterface_signupInWallet_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(SUScriptFunction *)v7 setThisObject:WeakRetained];

  if (v6)
  {
    v9 = [[SUScriptError alloc] initWithError:v6];
    v10 = [MEMORY[0x1E69E2FB0] undefined];
    v14[0] = v10;
    v14[1] = v9;
    v11 = v14;
  }

  else
  {
    v9 = [[SUScriptDictionary alloc] initWithDictionary:v5];
    v13[0] = v9;
    v10 = [MEMORY[0x1E69E2FB0] undefined];
    v13[1] = v10;
    v11 = v13;
  }

  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [(SUScriptFunction *)v7 callWithArguments:v12];

  [(SUScriptFunction *)v7 setThisObject:0];
}

void __45__SUScriptInterface_signupInWallet_callback___block_invoke_408(uint64_t a1)
{
  v2 = [*(a1 + 32) parentViewController];
  v3 = [[SUCardEnrollmentUpsellOperation alloc] initWithViewController:v2];
  objc_initWeak(&location, v3);
  [(SUCardEnrollmentUpsellOperation *)v3 setReferrerIdentifier:*(a1 + 40)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__SUScriptInterface_signupInWallet_callback___block_invoke_2;
  v5[3] = &unk_1E8164840;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 48);
  [(SUCardEnrollmentUpsellOperation *)v3 setCompletionBlock:v5];
  v4 = [MEMORY[0x1E69E4798] mainQueue];
  [v4 addOperation:v3];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __45__SUScriptInterface_signupInWallet_callback___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained didSucceed];

  v4 = *(a1 + 32);
  v7 = @"success";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  (*(v4 + 16))(v4, v6, 0);
}

- (id)systemVersion
{
  currentDevice = [MEMORY[0x1E69D48B0] currentDevice];
  productVersion = [currentDevice productVersion];

  return productVersion;
}

- (BOOL)checkCapabilitiesPropertyListString:(id)string showFailureDialog:(BOOL)dialog
{
  dialogCopy = dialog;
  stringCopy = string;
  device = [(SUScriptInterface *)self device];
  v8 = [device checkCapabilitiesPropertyListString:stringCopy showFailureDialog:dialogCopy];

  LOBYTE(stringCopy) = [v8 BOOLValue];
  return stringCopy;
}

- (id)activeNetworkType
{
  v2 = MEMORY[0x1E696AD98];
  device = [(SUScriptInterface *)self device];
  v4 = [v2 numberWithInteger:{objc_msgSend(device, "activeNetworkType")}];

  return v4;
}

- (BOOL)arePodcastsDisabled
{
  device = [(SUScriptInterface *)self device];
  capabilityNamePodcasts = [device capabilityNamePodcasts];
  v4 = [device hasCapability:capabilityNamePodcasts];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue ^ 1;
}

- (BOOL)canSendEmail
{
  device = [(SUScriptInterface *)self device];
  capabilityNameEmail = [device capabilityNameEmail];
  v4 = [device hasCapability:capabilityNameEmail];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)diskSpaceAvailable
{
  device = [(SUScriptInterface *)self device];
  diskSpaceAvailable = [device diskSpaceAvailable];

  return diskSpaceAvailable;
}

- (id)hardwareType
{
  v2 = MEMORY[0x1E696AD98];
  device = [(SUScriptInterface *)self device];
  v4 = [v2 numberWithInteger:{objc_msgSend(device, "hardwareType")}];

  return v4;
}

- (BOOL)isExplicitContentDisabled
{
  device = [(SUScriptInterface *)self device];
  capabilityNameExplicitMedia = [device capabilityNameExplicitMedia];
  v4 = [device hasCapability:capabilityNameExplicitMedia];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue ^ 1;
}

- (void)showAlertWithMessage:(id)message title:(id)title buttonTitle:(id)buttonTitle
{
  v7 = [(SUScriptInterface *)self _copyDialogWithMessage:message title:title cancelButtonTitle:0 okButtonTitle:buttonTitle];
  v6 = [[SUScriptModalDialog alloc] initWithDialog:v7];
  [(SUScriptModalDialog *)v6 setDelegate:self];
}

- (BOOL)showConfirmWithMessage:(id)message title:(id)title okButtonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle
{
  if (cancelButtonTitle)
  {
    messageCopy2 = buttonTitle;
    titleCopy = title;
    messageCopy = message;
    v13 = [(SUScriptInterface *)self _copyDialogWithMessage:messageCopy title:titleCopy cancelButtonTitle:cancelButtonTitle okButtonTitle:messageCopy2];
  }

  else
  {
    v14 = MEMORY[0x1E696AAE8];
    buttonTitleCopy2 = buttonTitle;
    titleCopy2 = title;
    messageCopy2 = message;
    messageCopy = [v14 bundleForClass:objc_opt_class()];
    titleCopy = [messageCopy localizedStringForKey:@"CANCEL" value:&stru_1F41B3660 table:0];
    v13 = [(SUScriptInterface *)self _copyDialogWithMessage:messageCopy2 title:titleCopy2 cancelButtonTitle:titleCopy okButtonTitle:buttonTitleCopy2];
  }

  v17 = [[SUScriptModalDialog alloc] initWithDialog:v13];
  [(SUScriptModalDialog *)v17 setDelegate:self];
  copyResponseByRunningModal = [(SUScriptModalDialog *)v17 copyResponseByRunningModal];
  v19 = [copyResponseByRunningModal buttonIndex] == 1;

  return v19;
}

- (id)showPromptWithMessage:(id)message initialValue:(id)value title:(id)title okButtonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle
{
  messageCopy = message;
  valueCopy = value;
  titleCopy = title;
  buttonTitleCopy = buttonTitle;
  cancelButtonTitleCopy = cancelButtonTitle;
  if (cancelButtonTitleCopy)
  {
    v17 = [(SUScriptInterface *)self _copyDialogWithMessage:messageCopy title:titleCopy cancelButtonTitle:cancelButtonTitleCopy okButtonTitle:buttonTitleCopy];
  }

  else
  {
    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_1F41B3660 table:0];
    v17 = [(SUScriptInterface *)self _copyDialogWithMessage:messageCopy title:titleCopy cancelButtonTitle:v19 okButtonTitle:buttonTitleCopy];
  }

  v20 = [MEMORY[0x1E69E4760] textFieldWithTitle:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v20 setValue:valueCopy];
  }

  v21 = [MEMORY[0x1E695DEC8] arrayWithObject:v20];
  [v17 setTextFields:v21];

  v22 = [[SUScriptModalDialog alloc] initWithDialog:v17];
  [(SUScriptModalDialog *)v22 setDelegate:self];
  copyResponseByRunningModal = [(SUScriptModalDialog *)v22 copyResponseByRunningModal];
  if ([copyResponseByRunningModal buttonIndex] == 1)
  {
    textFieldValue = [copyResponseByRunningModal textFieldValue];
  }

  else
  {
    textFieldValue = 0;
  }

  return textFieldValue;
}

- (void)_globalEventNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];

  if (object != self)
  {
    userInfo = [notificationCopy userInfo];
    v6 = [userInfo objectForKey:@"payload"];
    v7 = [userInfo objectForKey:@"name"];
    [(SUScriptObject *)self dispatchEvent:v6 forName:v7];
  }
}

- (void)_scriptUserInfoDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  parentViewController = [(SUScriptInterface *)self parentViewController];
  object = [notificationCopy object];

  LODWORD(notificationCopy) = [parentViewController isDescendantOfViewController:object];
  if (notificationCopy)
  {
    [(SUScriptObject *)self dispatchEvent:0 forName:@"userinfochange"];
  }
}

- (void)safariViewController:(id)controller didCompleteInitialLoad:(BOOL)load
{
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  v11[0] = 0;
  LODWORD(v10) = 2;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, v11, v10}];
    free(v9);
    SSFileLog();
LABEL_10:
  }
}

- (void)safariViewControllerDidFinish:(id)finish
{
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  v11[0] = 0;
  LODWORD(v10) = 2;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, v11, v10}];
    free(v9);
    SSFileLog();
LABEL_10:
  }

  [(SUScriptInterface *)self _cleanUpSafariViewController];
}

- (id)_cookieForURL:(id)l
{
  lCopy = l;
  authenticationContext = [(SUScriptInterface *)self authenticationContext];
  requiredUniqueIdentifier = [authenticationContext requiredUniqueIdentifier];

  if (!requiredUniqueIdentifier || ([MEMORY[0x1E69D4890] defaultStore], v7 = objc_claimAutoreleasedReturnValue(), -[SUScriptInterface authenticationContext](self, "authenticationContext"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "requiredUniqueIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), -[SUScriptInterface authenticationContext](self, "authenticationContext"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "accountWithUniqueIdentifier:scope:", v9, objc_msgSend(v10, "accountScope")), activeAccount = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v7, !activeAccount))
  {
    defaultStore = [MEMORY[0x1E69D4890] defaultStore];
    activeAccount = [defaultStore activeAccount];
  }

  mEMORY[0x1E69D4A10] = [MEMORY[0x1E69D4A10] sharedStorage];
  uniqueIdentifier = [activeAccount uniqueIdentifier];
  v15 = [mEMORY[0x1E69D4A10] cookieHeadersForURL:lCopy userIdentifier:uniqueIdentifier];

  v16 = [v15 objectForKey:@"Cookie"];

  return v16;
}

- (id)_copyDialogWithMessage:(id)message title:(id)title cancelButtonTitle:(id)buttonTitle okButtonTitle:(id)okButtonTitle
{
  messageCopy = message;
  titleCopy = title;
  buttonTitleCopy = buttonTitle;
  okButtonTitleCopy = okButtonTitle;
  v14 = objc_alloc_init(MEMORY[0x1E69E4750]);
  if (buttonTitleCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_1F41B3660 table:0];

      buttonTitleCopy = v16;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"OK" value:&stru_1F41B3660 table:0];

    okButtonTitleCopy = v18;
  }

  if (titleCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      webFrame = [(SUScriptInterface *)self webFrame];
      dataSource = [webFrame dataSource];
      request = [dataSource request];
      v22 = [request URL];
      v23 = [SUScriptModalDialog titleForURL:v22];

      titleCopy = v23;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringRepresentation = [messageCopy stringRepresentation];

    messageCopy = stringRepresentation;
  }

  if (messageCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = [messageCopy description];

      messageCopy = v25;
    }
  }

  v26 = v14;
  v27 = messageCopy;
  if (titleCopy)
  {
    [v14 setMessage:messageCopy];
    v26 = v14;
    v27 = titleCopy;
  }

  [v26 setTitle:v27];
  v28 = MEMORY[0x1E695DEC8];
  if (buttonTitleCopy)
  {
    v29 = [MEMORY[0x1E69E4758] buttonWithTitle:buttonTitleCopy];
    v30 = [MEMORY[0x1E69E4758] buttonWithTitle:okButtonTitleCopy];
    v31 = [v28 arrayWithObjects:{v29, v30, 0}];
    [v14 setButtons:v31];
  }

  else
  {
    v29 = [MEMORY[0x1E69E4758] buttonWithTitle:okButtonTitleCopy];
    v30 = [v28 arrayWithObjects:{v29, 0}];
    [v14 setButtons:v30];
  }

  return v14;
}

- (void)_presentSafariViewControllerWithURL:(id)l safariIdentifier:(id)identifier animated:(BOOL)animated
{
  v16[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  [(SUScriptInterface *)self setSafariViewControllerIdentifier:identifier];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v15 = *MEMORY[0x1E69DDB50];
  v16[0] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__SUScriptInterface__presentSafariViewControllerWithURL_safariIdentifier_animated___block_invoke;
  v12[3] = &unk_1E8164890;
  v12[4] = self;
  v13 = lCopy;
  animatedCopy = animated;
  v11 = lCopy;
  [mEMORY[0x1E69DC668] openURL:v11 options:v10 completionHandler:v12];
}

void __83__SUScriptInterface__presentSafariViewControllerWithURL_safariIdentifier_animated___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v14 = [*(a1 + 32) clientInterface];
    v4 = [v14 delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) parentViewController];
      [v4 clientInterface:v14 presentSafariViewControllerWithURL:v5 fromViewController:v6 animated:*(a1 + 48) completion:0];
    }

    else
    {
      v7 = ISWeakLinkedClassForString();
      v8 = *(a1 + 32);
      v9 = [[v7 alloc] initWithURL:*(a1 + 40)];
      [v8 setSafariViewController:v9];

      v10 = [*(a1 + 32) safariViewController];
      [v10 setDelegate:*(a1 + 32)];

      v11 = [*(a1 + 32) safariViewController];
      [v11 setModalPresentationStyle:16];

      v12 = [*(a1 + 32) safariViewController];
      [v12 setDismissButtonStyle:{objc_msgSend(*(*(a1 + 32) + 264), "integerValue")}];

      v6 = [*(a1 + 32) parentViewController];
      v13 = [*(a1 + 32) safariViewController];
      [v6 presentViewController:v13 animated:*(a1 + 48) completion:0];
    }
  }
}

- (void)_dismissSafariViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  clientInterface = [(SUScriptInterface *)self clientInterface];
  delegate = [clientInterface delegate];
  if (objc_opt_respondsToSelector())
  {
    parentViewController = [(SUScriptInterface *)self parentViewController];
    [delegate clientInterface:clientInterface dismissSafariViewControllerAnimated:animatedCopy fromViewController:parentViewController completion:completionCopy];
  }

  else
  {
    safariViewController = [(SUScriptInterface *)self safariViewController];

    if (safariViewController)
    {
      safariViewController2 = [(SUScriptInterface *)self safariViewController];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __69__SUScriptInterface__dismissSafariViewControllerAnimated_completion___block_invoke;
      v12[3] = &unk_1E8164638;
      v12[4] = self;
      v13 = completionCopy;
      [safariViewController2 dismissViewControllerAnimated:animatedCopy completion:v12];
    }

    else
    {
      [(SUScriptInterface *)self _cleanUpSafariViewController];
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }
  }
}

uint64_t __69__SUScriptInterface__dismissSafariViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanUpSafariViewController];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_cleanUpSafariViewController
{
  [(SUScriptInterface *)self setSafariViewController:0];

  [(SUScriptInterface *)self setSafariViewControllerIdentifier:0];
}

+ (id)webScriptNameForKeyName:(id)name
{
  nameCopy = name;
  v5 = [__KeyMapping_2 objectForKey:nameCopy];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptInterface;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, nameCopy);
  }

  return v5;
}

- (BOOL)scriptXMLHTTPRequest:(id)request requiresCellularForURL:(id)l
{
  lCopy = l;
  [(NSLock *)self->super._lock lock];
  requireCellularURLs = self->_requireCellularURLs;
  if (requireCellularURLs)
  {
    v7 = [(NSMutableSet *)requireCellularURLs containsObject:lCopy];
  }

  else
  {
    v7 = 0;
  }

  [(NSLock *)self->super._lock unlock];

  return v7;
}

- (BOOL)scriptXMLHTTPStoreRequest:(id)request requiresCellularForURL:(id)l
{
  lCopy = l;
  [(NSLock *)self->super._lock lock];
  requireCellularURLs = self->_requireCellularURLs;
  if (requireCellularURLs)
  {
    v7 = [(NSMutableSet *)requireCellularURLs containsObject:lCopy];
  }

  else
  {
    v7 = 0;
  }

  [(NSLock *)self->super._lock unlock];

  return v7;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  v5 = SUWebScriptNameForSelector2(selector, &__SelectorMapping_0, 141);
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptInterface;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, selector);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptInterface;
  scriptAttributeKeys = [(SUScriptObject *)&v5 scriptAttributeKeys];
  allKeys = [__KeyMapping_2 allKeys];
  [scriptAttributeKeys addObjectsFromArray:allKeys];

  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_0 = sel_accessibilityPostLayoutChange;
    *algn_1EBF39D08 = @"accessibilityPostLayoutChange";
    qword_1EBF39D10 = sel_accessibilityPostScreenChange;
    unk_1EBF39D18 = @"accessibilityPostScreenChange";
    qword_1EBF39D20 = sel_accountDSID;
    unk_1EBF39D28 = @"dsid";
    qword_1EBF39D30 = sel_accountForDSID_;
    unk_1EBF39D38 = @"accountForDSID";
    qword_1EBF39D40 = sel_accountName;
    unk_1EBF39D48 = @"accountName";
    qword_1EBF39D50 = sel_activeNetworkType;
    unk_1EBF39D58 = @"activeNetworkType";
    qword_1EBF39D60 = sel_addExternalDownloads_options_;
    unk_1EBF39D68 = @"addExternalDownloads";
    qword_1EBF39D70 = sel_addExternalDownloadsFromManifestURL_;
    unk_1EBF39D78 = @"addExternalDownloadsFromURL";
    qword_1EBF39D80 = sel_authorizeApplePayEnrollmentWithParameters_callback_;
    unk_1EBF39D88 = @"authorizeApplePayEnrollmentWithParameters";
    qword_1EBF39D90 = sel_addiTunesPassWithCompletionFunction_;
    unk_1EBF39D98 = @"addiTunesPass";
    qword_1EBF39DA0 = sel_addPurchaseWithInfo_options_;
    unk_1EBF39DA8 = @"buyAction";
    qword_1EBF39DB0 = sel_acknowledgePrivacyLinkWithIdentifier_;
    unk_1EBF39DB8 = @"acknowledgePrivacyLink";
    qword_1EBF39DC0 = sel_arePodcastsDisabled;
    unk_1EBF39DC8 = @"disablePodcasts";
    qword_1EBF39DD0 = sel_approveInPerson_completionFunction_;
    unk_1EBF39DD8 = @"approveInPerson";
    qword_1EBF39DE0 = sel_authenticateForAccount_withOptions_;
    unk_1EBF39DE8 = @"authenticateForAccount";
    qword_1EBF39DF0 = sel_authenticateAppleIdWithUsername_password_callback_;
    unk_1EBF39DF8 = @"authenticateAppleIdWithCredentials";
    qword_1EBF39E00 = sel_canSendEmail;
    unk_1EBF39E08 = @"canSendEmail";
    qword_1EBF39E10 = sel_checkCapabilitiesPropertyListString_showFailureDialog_;
    unk_1EBF39E18 = @"checkCapabilities";
    qword_1EBF39E20 = sel_composeEmailWithSubject_body_;
    unk_1EBF39E28 = @"composeEmail";
    qword_1EBF39E30 = sel_composeReviewWithURL_itemIdentifier_type_;
    unk_1EBF39E38 = @"composeReview";
    qword_1EBF39E40 = sel_currentAttestationVersion;
    unk_1EBF39E48 = @"getCurrentAttestationVersion";
    qword_1EBF39E50 = sel_dialogDisplayCountForKey_;
    unk_1EBF39E58 = @"getDialogDisplayCountForKey";
    qword_1EBF39E60 = sel_diskSpaceAvailable;
    unk_1EBF39E68 = @"diskSpaceAvailable";
    qword_1EBF39E70 = sel_dismissSafariViewControllerAnimated_;
    unk_1EBF39E78 = @"dismissSafariViewController";
    qword_1EBF39E80 = sel_dismissSheet;
    unk_1EBF39E88 = @"dismissSheet";
    qword_1EBF39E90 = sel_dismissWindowsWithOptions_;
    unk_1EBF39E98 = @"dismissAllWindows";
    qword_1EBF39EA0 = sel_dispatchGlobalEventWithName_payload_;
    unk_1EBF39EA8 = @"dispatchGlobalEvent";
    qword_1EBF39EB0 = sel_dispatchXEvent_;
    unk_1EBF39EB8 = @"dispatchXEvent";
    qword_1EBF39EC0 = sel_fetchAppleCardMetadata_callback_;
    unk_1EBF39EC8 = @"fetchAppleCardMetadata";
    qword_1EBF39ED0 = sel_fetchWalletCardData_;
    unk_1EBF39ED8 = @"fetchWalletCardData";
    qword_1EBF39EE0 = sel_fetchWalletCardMetadata_callback_;
    unk_1EBF39EE8 = @"fetchWalletCardMetadata";
    qword_1EBF39EF0 = sel_finishedTest_extraResults_;
    unk_1EBF39EF8 = @"finishedTest";
    qword_1EBF39F00 = sel_financeInterruptionResolved_;
    qword_1EBF39F08 = @"financeInterruptionResolved";
    qword_1EBF39F10 = sel_getAudioPlayerForURL_keyURL_certificateURL_;
    qword_1EBF39F18 = @"getAudioPlayer";
    qword_1EBF39F20 = sel_getInstalledSoftwareApplicationsWithCompletionFunction_;
    qword_1EBF39F28 = @"getSoftwareApplications";
    qword_1EBF39F30 = sel_getDownloadQueueWithQueueType_;
    qword_1EBF39F38 = @"getDownloadQueue";
    qword_1EBF39F40 = sel_getiTunesPass;
    qword_1EBF39F48 = @"getiTunesPass";
    qword_1EBF39F50 = sel_getSoftwareApplicationWithAdamID_completionFunction_;
    qword_1EBF39F58 = @"getSoftwareApplicationWithAdamID";
    qword_1EBF39F60 = sel_getSoftwareApplicationWithBundleID_completionFunction_;
    qword_1EBF39F68 = @"getSoftwareApplicationWithBundleID";
    qword_1EBF39F70 = sel_goBack;
    qword_1EBF39F78 = @"goBack";
    qword_1EBF39F80 = sel_gotoStoreURL_;
    qword_1EBF39F88 = @"gotoURL";
    qword_1EBF39F90 = sel_gotoStoreURL_ofType_withAuthentication_forceAuthentication_;
    qword_1EBF39F98 = @"gotoURLOfType";
    qword_1EBF39FA0 = sel_handleDialogPropertyListString_;
    qword_1EBF39FA8 = @"createDialogDict";
    qword_1EBF39FB0 = sel_handleProtocolPropertyListString_;
    qword_1EBF39FB8 = @"addProtocol";
    qword_1EBF39FC0 = sel_handleRootObjectWithPropertyListString_;
    qword_1EBF39FC8 = @"addRootObject";
    qword_1EBF39FD0 = sel_handleTrackListWithPropertyListString_;
    qword_1EBF39FD8 = @"createTracklist";
    qword_1EBF39FE0 = sel_hardwareType;
    qword_1EBF39FE8 = @"hardwareType";
    qword_1EBF39FF0 = sel_haveAccount;
    qword_1EBF39FF8 = @"isAccountPresent";
    qword_1EBF3A000 = sel_isExplicitContentDisabled;
    qword_1EBF3A008 = @"disableExplicit";
    qword_1EBF3A010 = sel_isRunningTest;
    qword_1EBF3A018 = @"isRunningTest";
    qword_1EBF3A020 = sel_launchedToTest;
    qword_1EBF3A028 = @"launchedToTest";
    qword_1EBF3A030 = sel_log_;
    qword_1EBF3A038 = @"log";
    qword_1EBF3A040 = sel_machineGUID;
    qword_1EBF3A048 = @"getMachineGUID";
    qword_1EBF3A050 = sel_makeAccount;
    qword_1EBF3A058 = @"createAccount";
    qword_1EBF3A060 = sel_makeAccountPageWithURLs_;
    qword_1EBF3A068 = @"createAccountPage";
    qword_1EBF3A070 = sel_makeActivity;
    qword_1EBF3A078 = @"createActivity";
    qword_1EBF3A080 = sel_makeActivityItemProviderWithMIMEType_;
    qword_1EBF3A088 = @"createActivityItemProvider";
    qword_1EBF3A090 = sel_makeActivityViewControllerWithProviders_activities_;
    qword_1EBF3A098 = @"createActivityViewController";
    qword_1EBF3A0A0 = sel_makeAMSViewController;
    qword_1EBF3A0A8 = @"makeAMSViewController";
    qword_1EBF3A0B0 = sel_makeButtonWithSystemItemString_action_;
    qword_1EBF3A0B8 = @"createSystemButton";
    qword_1EBF3A0C0 = sel_makeButtonWithTitle_action_;
    qword_1EBF3A0C8 = @"createButton";
    qword_1EBF3A0D0 = sel_makeCalloutView;
    qword_1EBF3A0D8 = @"createCalloutView";
    qword_1EBF3A0E0 = sel_makeCanvasWithWidth_height_;
    qword_1EBF3A0E8 = @"createCanvas";
    qword_1EBF3A0F0 = sel_makeColorWithHue_saturation_brightness_alpha_;
    qword_1EBF3A0F8 = @"createHSBAColor";
    qword_1EBF3A100 = sel_makeColorWithRed_green_blue_alpha_;
    qword_1EBF3A108 = @"createRGBAColor";
    qword_1EBF3A110 = sel_makeColorWithWhite_alpha_;
    qword_1EBF3A118 = @"createWhiteColor";
    qword_1EBF3A120 = sel_makeComposeReviewViewControllerWithReview_;
    qword_1EBF3A128 = @"createComposeReviewController";
    qword_1EBF3A130 = sel_makeDateFormatter;
    qword_1EBF3A138 = @"createDateFormatter";
    qword_1EBF3A140 = sel_makeDialog;
    qword_1EBF3A148 = @"createDialog";
    qword_1EBF3A150 = sel_makeDocumentInteractionController;
    qword_1EBF3A158 = @"createDocumentInteractionController";
    qword_1EBF3A160 = sel_makeDonationViewControllerWithCharityIdentifier_;
    qword_1EBF3A168 = @"createDonationViewController";
    qword_1EBF3A170 = sel_makeFacebookRequestWithURL_requestMethod_;
    qword_1EBF3A178 = @"createFacebookRequest";
    qword_1EBF3A180 = sel_makeFacebookSessionWithAccount_;
    qword_1EBF3A188 = @"createFacebookSession";
    qword_1EBF3A190 = sel_makeFamilySetupViewController;
    qword_1EBF3A198 = @"createFamilySetupViewController";
    qword_1EBF3A1A0 = sel_makeGiftViewController;
    qword_1EBF3A1A8 = @"createGiftViewController";
    qword_1EBF3A1B0 = sel_makeLinearGradientWithX0_y0_x1_y1_;
    qword_1EBF3A1B8 = @"createLinearGradient";
    qword_1EBF3A1C0 = sel_makeLookupRequest;
    qword_1EBF3A1C8 = @"createLookupRequest";
    qword_1EBF3A1D0 = sel_makeMediaPlayerItemWithProperties_;
    qword_1EBF3A1D8 = @"createMediaPlayerItem";
    qword_1EBF3A1E0 = sel_makeMediaPlayerViewControllerWithMediaPlayerItem_;
    qword_1EBF3A1E8 = @"createMediaPlayer";
    qword_1EBF3A1F0 = sel_makeMenuViewController;
    qword_1EBF3A1F8 = @"createMenuViewController";
    qword_1EBF3A200 = sel_makeNavigationControllerWithRootViewController_;
    qword_1EBF3A208 = @"createNavigationController";
    qword_1EBF3A210 = sel_makeNumberFormatterWithStyle_;
    qword_1EBF3A218 = @"createNumberFormatter";
    qword_1EBF3A220 = sel_makePopOverWithViewController_;
    qword_1EBF3A228 = @"createPopOver";
    qword_1EBF3A230 = sel_makeRadialGradientWithX0_y0_r0_x1_y1_r1_;
    qword_1EBF3A238 = @"createRadialGradient";
    qword_1EBF3A240 = sel_makeRedeemCameraViewController;
    qword_1EBF3A248 = @"createRedeemCamera";
    qword_1EBF3A250 = sel_makeRedeemViewController;
    qword_1EBF3A258 = @"createRedeemViewController";
    qword_1EBF3A260 = sel_makeReportAProblemViewControllerWithAdamID_;
    qword_1EBF3A268 = @"createReportAProblemViewController";
    qword_1EBF3A270 = sel_makeReviewWithAdamID_;
    qword_1EBF3A278 = @"createReview";
    qword_1EBF3A280 = sel_makeScriptActionWithType_;
    qword_1EBF3A288 = @"createAction";
    qword_1EBF3A290 = sel_makeSegmentedControl;
    qword_1EBF3A298 = @"createSegmentedControl";
    qword_1EBF3A2A0 = sel_makeSplitViewController;
    qword_1EBF3A2A8 = @"createSplitViewController";
    qword_1EBF3A2B0 = sel_makeStorePageWithURLs_;
    qword_1EBF3A2B8 = @"createStorePage";
    qword_1EBF3A2C0 = sel_makeStoreSheetViewController;
    qword_1EBF3A2C8 = @"createStoreSheetViewController";
    qword_1EBF3A2D0 = sel_makeSubscriptionStatusRequest;
    qword_1EBF3A2D8 = @"createSubscriptionStatusRequest";
    qword_1EBF3A2E0 = sel_makeTextFieldWithStyle_placeholder_value_width_;
    qword_1EBF3A2E8 = @"createTextField";
    qword_1EBF3A2F0 = sel_makeTweetComposeViewController;
    qword_1EBF3A2F8 = @"createTweetComposeViewController";
    qword_1EBF3A300 = sel_makeURLRequestWithURLs_timeoutInterval_;
    qword_1EBF3A308 = @"createURLRequest";
    qword_1EBF3A310 = sel_makeVolumeViewController;
    qword_1EBF3A318 = @"createVolumeViewController";
    qword_1EBF3A320 = sel_makeXMLHTTPRequest;
    qword_1EBF3A328 = @"createXHR";
    qword_1EBF3A330 = sel_makeXMLHTTPStoreRequest;
    qword_1EBF3A338 = @"createStoreXHR";
    qword_1EBF3A340 = sel_makeWindow;
    qword_1EBF3A348 = @"createWindow";
    qword_1EBF3A350 = sel_minimumAttestationVersionForAction_;
    qword_1EBF3A358 = @"getMinimumAttestationVersion";
    qword_1EBF3A360 = sel_openCreditCardReaderWithCompletionFunction_;
    qword_1EBF3A368 = @"openCreditCardReader";
    qword_1EBF3A370 = sel_openFamilyCircleSetupWithClientName_completionFunction_;
    qword_1EBF3A378 = @"openFamilyCircleSetup";
    qword_1EBF3A380 = sel_openURL_;
    qword_1EBF3A388 = @"openURL";
    qword_1EBF3A390 = sel_openWallet;
    qword_1EBF3A398 = @"openWallet";
    qword_1EBF3A3A0 = sel_paymentSetupFeatureSupported_callback_;
    qword_1EBF3A3A8 = @"paymentSetupFeatureSupported";
    qword_1EBF3A3B0 = sel_perfLog_;
    qword_1EBF3A3B8 = @"perfLog";
    qword_1EBF3A3C0 = sel_performPurchaseAnimationForIdentifier_style_;
    qword_1EBF3A3C8 = @"performPurchaseAnimation";
    qword_1EBF3A3D0 = sel_pingURL_;
    qword_1EBF3A3D8 = @"pingURL";
    qword_1EBF3A3E0 = sel_presentPrivacySplashWithIdentifier_;
    qword_1EBF3A3E8 = @"presentPrivacySplash";
    qword_1EBF3A3F0 = sel_presentPrivacyViewControllerWithIdentifier_;
    qword_1EBF3A3F8 = @"presentPrivacyViewController";
    qword_1EBF3A400 = sel_redeemCode_;
    qword_1EBF3A408 = @"redeemCode";
    qword_1EBF3A410 = sel_redeemCodes_params_completion_;
    qword_1EBF3A418 = @"redeemCodes";
    qword_1EBF3A420 = sel_registerNavBarButtonWithTitle_side_function_;
    qword_1EBF3A428 = @"registerNavigationButton";
    qword_1EBF3A430 = sel_reloadFooterSection_withURL_;
    qword_1EBF3A438 = @"reloadFooterSection";
    qword_1EBF3A440 = sel_removeDeviceOfferWithIdentifier_account_;
    qword_1EBF3A448 = @"removeDeviceOffer";
    qword_1EBF3A450 = sel_reportAProblemForIdentifier_;
    qword_1EBF3A458 = @"openReportAProblemSheet";
    qword_1EBF3A460 = sel_requireCellularForResourceWithURL_;
    qword_1EBF3A468 = @"requireCellular";
    qword_1EBF3A470 = sel_retryAllRestoreDownloads;
    qword_1EBF3A478 = @"retryAllRestoreDownloads";
    qword_1EBF3A480 = sel_selectSectionWithIdentifier_;
    qword_1EBF3A488 = @"selectFooterTab";
    qword_1EBF3A490 = sel_selectTrackListItemWithIdentifier_;
    qword_1EBF3A498 = @"selectTrackWithItemId";
    qword_1EBF3A4A0 = sel_sendPostOfType_withOptions_;
    qword_1EBF3A4A8 = @"sendPostOfType";
    qword_1EBF3A4B0 = sel_setLibraryIdentifierWithType_value_;
    qword_1EBF3A4B8 = @"setLibraryIdentifier";
    qword_1EBF3A4C0 = sel_shouldRestrictContentOfSystem_level_;
    qword_1EBF3A4C8 = @"restrictContentForSystemAndLevel";
    qword_1EBF3A4D0 = sel_shouldShowAddToWalletLink_;
    qword_1EBF3A4D8 = @"shouldShowAddToWalletLink";
    qword_1EBF3A4E0 = sel_shouldDisplayPrivacyLinkWithIdentifier_;
    qword_1EBF3A4E8 = @"shouldDisplayPrivacyLink";
    qword_1EBF3A4F0 = sel_showAlertWithMessage_title_buttonTitle_;
    qword_1EBF3A4F8 = @"alert";
    qword_1EBF3A500 = sel_showConfirmWithMessage_title_okButtonTitle_cancelButtonTitle_;
    qword_1EBF3A508 = @"confirm";
    qword_1EBF3A510 = sel_showMediaPlayerWithURLString_orientation_title_subtitle_bookmarkID_duration_type_imageURL_;
    qword_1EBF3A518 = @"showMediaPlayer";
    qword_1EBF3A520 = sel_showMediaPreviewWithURLString_;
    qword_1EBF3A528 = @"showMediaPreview";
    qword_1EBF3A530 = sel_showPromptWithMessage_initialValue_title_okButtonTitle_cancelButtonTitle_;
    qword_1EBF3A538 = @"prompt";
    qword_1EBF3A540 = sel_showSafariViewControllerWithURLString_identifier_animated_;
    qword_1EBF3A548 = @"showSafariViewController";
    qword_1EBF3A550 = sel_signOutPrimaryAccount;
    qword_1EBF3A558 = @"signOutActiveAccount";
    qword_1EBF3A560 = sel_signupInWallet_callback_;
    qword_1EBF3A568 = @"signupInWallet";
    qword_1EBF3A570 = sel_softwareApplicationWithAdamID_;
    qword_1EBF3A578 = @"softwareApplicationWithAdamID";
    qword_1EBF3A580 = sel_softwareApplicationWithBundleID_;
    qword_1EBF3A588 = @"softwareApplicationWithBundleID";
    qword_1EBF3A590 = sel_startedTest_;
    qword_1EBF3A598 = @"startedTest";
    qword_1EBF3A5A0 = sel_startListeningForAuthenticationTokenWithCallback_;
    qword_1EBF3A5A8 = @"startListeningForAuthenticationToken";
    qword_1EBF3A5B0 = sel_stopListeningForAuthenticationToken;
    qword_1EBF3A5B8 = @"stopListeningForAuthenticationToken";
    qword_1EBF3A5C0 = sel_systemVersion;
    qword_1EBF3A5C8 = @"systemVersion";
    __KeyMapping_2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"accountCreationSecureContext", @"accounts", @"accounts", @"activeAudioPlayers", @"activeAudioPlayers", @"appleAccountStore", @"appleAccountStore", @"application", @"application", @"applicationAccessibilityEnabled", @"applicationAccessibilityEnabled", @"applicationLocalStorage", @"applicationLocalStorage", @"askToBuyPrompt", @"askToBuyPrompt", @"bag", @"scriptStoreBagDictionary", @"carrierBundling", @"carrierBundlingController", @"clientIdentifier", @"clientIdentifier", @"cookie", @"cookie", @"cookieDefaultURL", @"cookieDefaultURL", @"cookieForDefaultURL", @"cookieForDefaultURL", @"creditCardReaderAvailable", @"creditCardReaderAvailable", @"currentAccount", @"currentAccount", @"device", @"device", @"deviceLocalStorage", @"deviceLocalStorage", @"deviceOffers", @"deviceOffers", @"deviceSerialNumber", @"deviceSerialNumber", @"globalRootObject", @"globalRootObject", @"gsToken", @"gsToken", @"installedSoftwareApplications", @"installedSoftwareApplications", @"isApplePayAvailable", @"isApplePayAvailable", @"isFinanceInterruption", @"isFinanceInterruption", @"isWalletAvailable", @"isWalletAvailable", @"loggingEnabled", @"loggingEnabled", @"mediaLibrary", @"mediaLibrary", @"metricsController", @"metricsController", @"navigationBar", @"navigationBar", @"navigationSimulator", @"navigationSimulator"}];

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)redeemCameraAvailable
{
  v2 = +[SURedeemCameraViewController cameraSupported];
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;

  return v4;
}

- (id)makeRedeemCameraViewController
{
  v3 = objc_alloc_init(SUScriptRedeemCameraViewController);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (void)getInstalledSoftwareApplicationsWithCompletionFunction:(id)function
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[SUScriptFunction alloc] initWithScriptObject:function];
    [(SUScriptFunction *)v5 setThisObject:self];
    v6 = objc_alloc_init(MEMORY[0x1E69E4768]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __114__SUScriptInterface_SUScriptSoftwareApplicationAdditions__getInstalledSoftwareApplicationsWithCompletionFunction___block_invoke;
    v8[3] = &unk_1E8164370;
    v8[4] = self;
    v8[5] = v5;
    [v6 setCompletionBlock:v8];
    [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];
  }

  else
  {
    v7 = MEMORY[0x1E69E2F88];

    [v7 throwException:@"Invalid argument"];
  }
}

void __114__SUScriptInterface_SUScriptSoftwareApplicationAdditions__getInstalledSoftwareApplicationsWithCompletionFunction___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [objc_msgSend(MEMORY[0x1E69E47D0] "loadedMap")];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[SUScriptSoftwareApplication alloc] initWithApplication:*(*(&v10 + 1) + 8 * v7)];
        if (v8)
        {
          v9 = v8;
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) checkInScriptObjects:v2];
  [*(a1 + 40) callWithArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v2)}];
  [*(a1 + 40) setThisObject:0];
}

- (void)getSoftwareApplicationWithAdamID:(id)d completionFunction:(id)function
{
  v6 = SSGetUnsignedLongLongFromValue();
  v7 = MEMORY[0x1E69E2F88];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __111__SUScriptInterface_SUScriptSoftwareApplicationAdditions__getSoftwareApplicationWithAdamID_completionFunction___block_invoke;
      v8[3] = &__block_descriptor_40_e28___ISSoftwareApplication_8__0l;
      v8[4] = v6;
      [(SUScriptInterface *)self _getSoftwareApplicationWithCompletionFunction:function lookupBlock:v8];
      return;
    }

    v7 = MEMORY[0x1E69E2F88];
  }

  [v7 throwException:@"Invalid argument"];
}

uint64_t __111__SUScriptInterface_SUScriptSoftwareApplicationAdditions__getSoftwareApplicationWithAdamID_completionFunction___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69E47D0] loadedMap];
  v3 = [MEMORY[0x1E696AD98] numberWithItemIdentifier:*(a1 + 32)];

  return [v2 applicationForItemIdentifier:v3];
}

- (void)getSoftwareApplicationWithBundleID:(id)d completionFunction:(id)function
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = MEMORY[0x1E69E2F88];
  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __113__SUScriptInterface_SUScriptSoftwareApplicationAdditions__getSoftwareApplicationWithBundleID_completionFunction___block_invoke;
      v9[3] = &unk_1E8165120;
      v9[4] = d;
      [(SUScriptInterface *)self _getSoftwareApplicationWithCompletionFunction:function lookupBlock:v9];
      return;
    }

    v8 = MEMORY[0x1E69E2F88];
  }

  [v8 throwException:@"Invalid argument"];
}

uint64_t __113__SUScriptInterface_SUScriptSoftwareApplicationAdditions__getSoftwareApplicationWithBundleID_completionFunction___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69E47D0] loadedMap];
  v3 = *(a1 + 32);

  return [v2 applicationForBundleIdentifier:v3];
}

- (id)softwareApplicationWithAdamID:(id)d
{
  v4 = SSGetUnsignedLongLongFromValue();
  if (v4)
  {
    loadedMap = [MEMORY[0x1E69E47D0] loadedMap];
    v4 = [loadedMap applicationForItemIdentifier:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithItemIdentifier:", v4)}];
    if (v4)
    {
      v4 = [[SUScriptSoftwareApplication alloc] initWithApplication:v4];
      [(SUScriptObject *)self checkInScriptObject:v4];
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  return v4;
}

- (id)softwareApplicationWithBundleID:(id)d
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_msgSend(MEMORY[0x1E69E47D0] "loadedMap")];
    if (v5)
    {
      v5 = [[SUScriptSoftwareApplication alloc] initWithApplication:v5];
      [(SUScriptObject *)self checkInScriptObject:v5];
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v5 = 0;
  }

  return v5;
}

- (NSArray)installedSoftwareApplications
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = [objc_msgSend(MEMORY[0x1E69E47D0] "loadedMap")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [[SUScriptSoftwareApplication alloc] initWithApplication:*(*(&v12 + 1) + 8 * v8)];
        if (v9)
        {
          v10 = v9;
          [(NSArray *)array addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(SUScriptObject *)self checkInScriptObjects:array];
  return array;
}

- (void)_getSoftwareApplicationWithCompletionFunction:(id)function lookupBlock:(id)block
{
  v6 = [[SUScriptFunction alloc] initWithScriptObject:function];
  [(SUScriptFunction *)v6 setThisObject:self];
  v7 = objc_alloc_init(MEMORY[0x1E69E4768]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __117__SUScriptInterface_SUScriptSoftwareApplicationAdditions___getSoftwareApplicationWithCompletionFunction_lookupBlock___block_invoke;
  v8[3] = &unk_1E8165148;
  v8[5] = v6;
  v8[6] = block;
  v8[4] = self;
  [v7 setCompletionBlock:v8];
  [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];
}

void __117__SUScriptInterface_SUScriptSoftwareApplicationAdditions___getSoftwareApplicationWithCompletionFunction_lookupBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 48) + 16))();
  if (v2)
  {
    v9 = [[SUScriptSoftwareApplication alloc] initWithApplication:v2];
    [*(a1 + 32) checkInScriptObject:v9];
    v6 = *(a1 + 40);
    v4 = (a1 + 40);
    v5 = v6;
    v7 = MEMORY[0x1E695DEC8];
    v3 = v9;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v4 = (a1 + 40);
    v5 = v8;
    v7 = MEMORY[0x1E695DEC8];
  }

  v3 = [MEMORY[0x1E695DFB0] null];
  v9 = 0;
LABEL_6:
  [v5 callWithArguments:{objc_msgSend(v7, "arrayWithObject:", v3)}];
  [*v4 setThisObject:0];
}

- (id)makePopOverWithViewController:(id)controller
{
  v5 = objc_alloc_init(SUScriptPopOver);
  [(SUScriptObject *)self checkInScriptObject:v5];
  [(SUScriptPopOver *)v5 setViewController:controller];

  return v5;
}

- (id)makeTextFieldWithStyle:(id)style placeholder:(id)placeholder value:(id)value width:(id)width
{
  v10 = [[SUScriptTextField alloc] initWithTextFieldStyle:style];
  if (v10)
  {
    [(SUScriptObject *)self checkInScriptObject:v10];
    [(SUScriptTextField *)v10 setPlaceholder:placeholder];
    [(SUScriptTextField *)v10 setValue:value];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (width)
      {
        if ((isKindOfClass & 1) == 0)
        {
          [(SUScriptTextField *)v10 setWidth:width];
        }
      }
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  return v10;
}

- (id)makeButtonWithSystemItemString:(id)string action:(id)action
{
  v6 = [[SUScriptButton alloc] initWithSystemItemString:string];
  [(SUScriptObject *)self checkInScriptObject:v6];
  [(SUScriptButton *)v6 setAction:action];

  return v6;
}

- (id)makeButtonWithTitle:(id)title action:(id)action
{
  v7 = objc_alloc_init(SUScriptButton);
  [(SUScriptObject *)self checkInScriptObject:v7];
  [(SUScriptButton *)v7 setAction:action];
  [(SUScriptButton *)v7 setTitle:title];

  return v7;
}

- (int64_t)dialogDisplayCountForKey:(id)key
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E69E4750];

    return [v4 displayCountForKey:key];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    return 0;
  }
}

- (id)makeDialog
{
  v3 = objc_alloc_init(SUScriptDialog);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (void)initAuthentication
{
  self->_accountManager = [SUScriptAccountManager beginAccountManagerSessionForObject:self];

  MEMORY[0x1EEE66BB8]();
}

- (id)accountForDSID:(id)d
{
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    dCopy = 0;
LABEL_4:
    null = [MEMORY[0x1E695DFB0] null];
    goto LABEL_5;
  }

  if (!dCopy)
  {
    goto LABEL_4;
  }

  v7 = SSGetUnsignedLongLongFromValue();
  if (!v7)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    goto LABEL_4;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:v7];

  null = [(SUScriptAccountManager *)self->_accountManager accountForDSID:v8];
  dCopy = v8;
  if (!null)
  {
    goto LABEL_4;
  }

LABEL_5:

  return null;
}

- (void)authenticateForAccount:(id)account withOptions:(id)options
{
  accountCopy = account;
  optionsCopy = options;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    accountCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    optionsCopy = 0;
  }

  if (accountCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = MEMORY[0x1E69E2F88];
LABEL_18:
      [v12 throwException:@"Invalid argument"];
      goto LABEL_19;
    }
  }

  if (optionsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = MEMORY[0x1E69E2F88];
      goto LABEL_18;
    }
  }

  dsID = [accountCopy dsID];
  if (!dsID)
  {
    dsID = [MEMORY[0x1E696AD98] numberWithInteger:0];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v19 = 0;
  v13 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v9 = [[SUScriptAuthenticationOperation alloc] initWithAccountIdentifier:dsID, v13, 3221225472, __74__SUScriptInterface_SUAuthentication__authenticateForAccount_withOptions___block_invoke, &unk_1E81647C8, self, &v14];
  v10 = v9;
  if (v15[5])
  {
    [(SUScriptAuthenticationOperation *)v9 setPresentingViewController:?];
  }

  v11 = [[SUScriptOperation alloc] initWithOperation:v10 options:optionsCopy];
  [(SUScriptOperationDelegate *)self->_scriptOperationDelegate enqueueOperation:v11];

  _Block_object_dispose(&v14, 8);
LABEL_19:
}

uint64_t __74__SUScriptInterface_SUAuthentication__authenticateForAccount_withOptions___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) parentViewController];

  return MEMORY[0x1EEE66BB8]();
}

- (void)authenticateAppleIdWithUsername:(id)username password:(id)password callback:(id)callback
{
  usernameCopy = username;
  passwordCopy = password;
  callbackCopy = callback;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    usernameCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    passwordCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    callbackCopy = 0;
  }

  if (!usernameCopy || !passwordCopy)
  {
    v10 = MEMORY[0x1E69E2F88];
    v11 = @"Invalid argument - username or password does not exist";
LABEL_21:
    [v10 throwException:v11];
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E69E2F88];
    v11 = @"Invalid argument - username";
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E69E2F88];
    v11 = @"Invalid argument - password";
    goto LABEL_21;
  }

  if (callbackCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = MEMORY[0x1E69E2F88];
      v11 = @"Invalid argument - callback";
      goto LABEL_21;
    }
  }

  v12 = usernameCopy;
  v13 = passwordCopy;
  v14 = callbackCopy;
  WebThreadRunOnMainThread();

LABEL_22:
}

void __89__SUScriptInterface_SUAuthentication__authenticateAppleIdWithUsername_password_callback___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) parentViewController];
  if (!v2)
  {
    v5 = [MEMORY[0x1E69D4938] sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v14 = 138543362;
      v15 = objc_opt_class();
      v9 = v15;
      LODWORD(v12) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_12:

        v3 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 56)];
        [(SUScriptFunction *)v3 setThisObject:*(a1 + 32)];
        v13 = @"fail";
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
        [(SUScriptFunction *)v3 callWithArguments:v11];

        [(SUScriptFunction *)v3 setThisObject:0];
        goto LABEL_13;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v14, v12}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_12;
  }

  v3 = [[SUScriptAppleIdAuthenticationOperation alloc] initWithUsername:*(a1 + 40) password:*(a1 + 48) viewController:v2];
  v4 = [[SUScriptOperation alloc] initWithOperation:v3 callback:*(a1 + 56)];
  [*(*(a1 + 32) + 192) enqueueOperation:v4];

LABEL_13:
}

- (id)makeAccount
{
  v2 = objc_alloc_init(SUScriptAccount);

  return v2;
}

- (id)currentAccount
{
  authenticationContext = [(SUScriptInterface *)self authenticationContext];
  requiredUniqueIdentifier = [authenticationContext requiredUniqueIdentifier];

  if (requiredUniqueIdentifier && ([MEMORY[0x1E69D4890] defaultStore], v5 = objc_claimAutoreleasedReturnValue(), -[SUScriptInterface authenticationContext](self, "authenticationContext"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "requiredUniqueIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), -[SUScriptInterface authenticationContext](self, "authenticationContext"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "accountWithUniqueIdentifier:scope:", v7, objc_msgSend(v8, "accountScope")), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v5, v9) || (objc_msgSend(MEMORY[0x1E69D4890], "defaultStore"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "activeAccount"), v9 = objc_claimAutoreleasedReturnValue(), v10, v9))
  {
    uniqueIdentifier = [v9 uniqueIdentifier];
    null = [(SUScriptInterface *)self accountForDSID:uniqueIdentifier];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  return null;
}

- (SUScriptAccount)primaryAccount
{
  authenticationContext = [(SUScriptInterface *)self authenticationContext];
  requiredUniqueIdentifier = [authenticationContext requiredUniqueIdentifier];

  if (requiredUniqueIdentifier)
  {
    defaultStore = [MEMORY[0x1E69D4890] defaultStore];
    authenticationContext2 = [(SUScriptInterface *)self authenticationContext];
    requiredUniqueIdentifier2 = [authenticationContext2 requiredUniqueIdentifier];
    authenticationContext3 = [(SUScriptInterface *)self authenticationContext];
    activeAccount = [defaultStore accountWithUniqueIdentifier:requiredUniqueIdentifier2 scope:{objc_msgSend(authenticationContext3, "accountScope")}];

    if ([activeAccount isActive])
    {
      if (activeAccount)
      {
LABEL_7:
        uniqueIdentifier = [activeAccount uniqueIdentifier];
        null = [(SUScriptInterface *)self accountForDSID:uniqueIdentifier];

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  defaultStore2 = [MEMORY[0x1E69D4890] defaultStore];
  activeAccount = [defaultStore2 activeAccount];

  if (activeAccount)
  {
    goto LABEL_7;
  }

  null = [MEMORY[0x1E695DFB0] null];
LABEL_9:

  return null;
}

- (id)primaryiCloudAccount
{
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiCloudAccount = [ams_sharedAccountStore ams_activeiCloudAccount];

  if (ams_activeiCloudAccount)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D4888]) initWithBackingAccount:ams_activeiCloudAccount];
    null = objc_alloc_init(SUScriptAccount);
    [(SUScriptAccount *)null setAccount:v4];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  return null;
}

- (SUScriptAccount)primaryLockerAccount
{
  defaultStore = [MEMORY[0x1E69D4890] defaultStore];
  activeLockerAccount = [defaultStore activeLockerAccount];

  if (activeLockerAccount)
  {
    uniqueIdentifier = [activeLockerAccount uniqueIdentifier];
    null = [(SUScriptInterface *)self accountForDSID:uniqueIdentifier];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  return null;
}

- (void)setAccounts:(id)accounts
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"accounts"];
  [v3 throwException:v4];
}

- (void)setPrimaryAccount:(id)account
{
  accountCopy = account;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
  }

  else if (accountCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      account = [accountCopy account];
      uniqueIdentifier = [account uniqueIdentifier];

      if (uniqueIdentifier)
      {
        defaultStore = [MEMORY[0x1E69D4890] defaultStore];
        v6 = [defaultStore setActiveAccount:account];
      }

      else
      {
        [MEMORY[0x1E69E2F88] throwException:@"Account must have a dsid to be primary"];
      }
    }

    else
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    }

    goto LABEL_5;
  }

  accountCopy = [MEMORY[0x1E69D4890] defaultStore];
  [accountCopy signOutAllAccounts];
LABEL_5:
}

- (void)setPrimaryLockerAccount:(id)account
{
  accountCopy = account;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
  }

  else if (accountCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      account = [accountCopy account];
      uniqueIdentifier = [account uniqueIdentifier];

      if (uniqueIdentifier)
      {
        defaultStore = [MEMORY[0x1E69D4890] defaultStore];
        v7 = [defaultStore setActiveLockerAccount:account];
      }

      else
      {
        [MEMORY[0x1E69E2F88] throwException:@"Account must have a dsid to be primary"];
      }
    }

    else
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    }

    goto LABEL_5;
  }

  accountCopy = [MEMORY[0x1E69D4890] defaultStore];
  v3 = [accountCopy setActiveLockerAccount:0];
LABEL_5:
}

- (id)makeFamilySetupViewController
{
  v3 = objc_alloc_init(SUScriptFamilySetupViewController);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (id)getDownloadQueueWithQueueType:(id)type
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = MEMORY[0x1E69E2F88];
    v9 = @"Invalid argument";
LABEL_11:
    [v8 throwException:v9];
    return 0;
  }

  if (([type isEqualToString:@"media"] & 1) == 0 && (objc_msgSend(type, "isEqualToString:", @"software") & 1) == 0 && (objc_msgSend(type, "isEqualToString:", @"ebooks") & 1) == 0)
  {
    v8 = MEMORY[0x1E69E2F88];
    v9 = @"Unknown queue type";
    goto LABEL_11;
  }

  [(SUScriptObject *)self lock];
  downloadQueues = self->_downloadQueues;
  if (!downloadQueues)
  {
    downloadQueues = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_downloadQueues = downloadQueues;
  }

  v6 = [(NSMutableDictionary *)downloadQueues objectForKey:type];
  [(SUScriptObject *)self unlock];
  if (!v6 || ![(SUScriptObject *)self scriptObjectIsCheckedIn:v6])
  {
    v6 = [[SUScriptDownloadQueue alloc] initWithQueueType:type clientInterface:[(SUScriptInterface *)self clientInterface]];
    [(SUScriptObject *)self checkInScriptObject:v6];
    [(SUScriptObject *)self lock];
    [(NSMutableDictionary *)self->_downloadQueues setObject:v6 forKey:type];
    [(SUScriptObject *)self unlock];
    v7 = v6;
  }

  return v6;
}

- (void)composeEmailWithSubject:(id)subject body:(id)body
{
  subjectCopy = subject;
  bodyCopy = body;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    bodyCopy = &stru_1F41B3660;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    subjectCopy = &stru_1F41B3660;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SUScriptInterface_SUNavigation__composeEmailWithSubject_body___block_invoke;
  v9[3] = &unk_1E81644A8;
  v10 = subjectCopy;
  v11 = bodyCopy;
  v7 = bodyCopy;
  v8 = subjectCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

- (void)dismissWindowsWithOptions:(id)options
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69D4938];
  optionsCopy = options;
  sharedConfig = [v3 sharedConfig];
  shouldLog = [sharedConfig shouldLog];
  if ([sharedConfig shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [sharedConfig OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  *v12 = 138543618;
  *&v12[4] = objc_opt_class();
  *&v12[12] = 2082;
  *&v12[14] = "[SUScriptInterface(SUNavigation) dismissWindowsWithOptions:]";
  v9 = *&v12[4];
  LODWORD(v11) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, v12, v11, *v12, *&v12[16], v13}];
    free(v10);
    SSFileLog();
LABEL_9:
  }

  [SUScriptWindow dismissWindowsWithOptions:optionsCopy];
}

- (id)makeNavigationControllerWithRootViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v7 = 0;
  }

  else
  {
    v5 = [SUScriptNavigationController alloc];
    clientInterface = [(SUScriptInterface *)self clientInterface];
    v7 = [(SUScriptNavigationController *)v5 initWithRootScriptViewController:controllerCopy clientInterface:clientInterface];

    [(SUScriptObject *)self checkInScriptObject:v7];
  }

  return v7;
}

- (id)makeStorePageWithURLs:(id)ls
{
  lsCopy = ls;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    lsCopy = 0;
  }

  v9 = 0;
  v5 = [SUScriptStorePageViewController copyURLStrings:&v9 forValue:lsCopy];
  v6 = v9;
  if (v5)
  {
    v7 = [[SUScriptStorePageViewController alloc] initWithURLStrings:v6];
    [(SUScriptObject *)self checkInScriptObject:v7];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v7 = 0;
  }

  return v7;
}

- (void)openURL:(id)l
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69D4938];
  lCopy = l;
  sharedConfig = [v4 sharedConfig];
  shouldLog = [sharedConfig shouldLog];
  if ([sharedConfig shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  oSLogObject = [sharedConfig OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    *v15 = 138543618;
    *&v15[4] = objc_opt_class();
    *&v15[12] = 2082;
    *&v15[14] = "[SUScriptInterface(SUNavigation) openURL:]";
    v10 = *&v15[4];
    LODWORD(v14) = 22;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_10;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, v15, v14, *v15, *&v15[16], v16}];
    free(v11);
    SSFileLog();
  }

LABEL_10:
  v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:lCopy];

  if (v12)
  {
    clientInterface = [(SUScriptInterface *)self clientInterface];
    SUOpenExternalURL(v12, clientInterface);
  }
}

- (void)reloadFooterSection:(id)section withURL:(id)l
{
  sectionCopy = section;
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    lCopy = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = MEMORY[0x1E69E2F88];
    v9 = @"Invalid section ID";
LABEL_11:
    [v8 throwException:v9];
    goto LABEL_12;
  }

  if (!lCopy)
  {
    v7 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = MEMORY[0x1E69E2F88];
    v9 = @"Invalid url string";
    goto LABEL_11;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:lCopy];
LABEL_9:
  v11 = sectionCopy;
  v10 = v7;
  WebThreadRunOnMainThread();

LABEL_12:
}

void __63__SUScriptInterface_SUNavigation__reloadFooterSection_withURL___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) clientInterface];
  v2 = [v3 tabBarController];
  [v2 reloadSectionWithIdentifier:*(a1 + 40) URL:*(a1 + 48)];
}

- (void)selectSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = identifierCopy;
    WebThreadRunOnMainThread();
  }
}

void __63__SUScriptInterface_SUNavigation__selectSectionWithIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) clientInterface];
  v2 = [v3 tabBarController];
  [v2 setSelectedIdentifier:*(a1 + 40)];
}

- (SUScriptSectionsController)sectionsController
{
  v3 = objc_alloc_init(SUScriptSectionsController);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (SUScriptViewController)viewController
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __49__SUScriptInterface_SUNavigation__viewController__block_invoke;
  v10 = &unk_1E81647C8;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __49__SUScriptInterface_SUNavigation__viewController__block_invoke, &unk_1E81647C8, selfCopy, &v13], (v3 = v14[5]) != 0))
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v13, 8);

  return v5;
}

void __49__SUScriptInterface_SUNavigation__viewController__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) parentViewController];
  v2 = [v5 copyScriptViewController];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)dismissSheet
{
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  *v11 = 138543618;
  *&v11[4] = objc_opt_class();
  *&v11[12] = 2082;
  *&v11[14] = "[SUScriptInterface(SUNavigation) dismissSheet]";
  v7 = *&v11[4];
  LODWORD(v10) = 22;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, v11, v10, *v11, *&v11[16]}];
    free(v8);
    SSFileLog();
LABEL_9:
  }

  viewController = [(SUScriptInterface *)self viewController];
  [viewController dismissModalViewControllerAnimated:1];
}

- (void)goBack
{
  v13 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  *v12 = 138543618;
  *&v12[4] = objc_opt_class();
  *&v12[12] = 2082;
  *&v12[14] = "[SUScriptInterface(SUNavigation) goBack]";
  v7 = *&v12[4];
  LODWORD(v11) = 22;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, v12, v11, *v12, *&v12[16]}];
    free(v8);
    SSFileLog();
LABEL_9:
  }

  viewController = [(SUScriptInterface *)self viewController];
  navigationController = [viewController navigationController];

  [navigationController popViewControllerAnimated:1];
}

- (void)gotoStoreURL:(id)l ofType:(id)type withAuthentication:(BOOL)authentication forceAuthentication:(BOOL)forceAuthentication
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  typeCopy = type;
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_9;
  }

  v19 = 138543874;
  v20 = objc_opt_class();
  v21 = 2082;
  v22 = "[SUScriptInterface(SUNavigation) gotoStoreURL:ofType:withAuthentication:forceAuthentication:]";
  v23 = 2114;
  v24 = lCopy;
  v13 = v20;
  LODWORD(v16) = 32;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v19, v16}];
    free(v14);
    SSFileLog();
LABEL_9:
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!typeCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:lCopy];
      if (v15)
      {
        v17 = typeCopy;
        v18 = v15;
        WebThreadRunOnMainThread();
      }
    }
  }
}

void __94__SUScriptInterface_SUNavigation__gotoStoreURL_ofType_withAuthentication_forceAuthentication___block_invoke(uint64_t a1)
{
  v13 = [*(a1 + 32) clientInterface];
  if ([*(a1 + 40) hasPrefix:@"account"])
  {
    v2 = objc_alloc_init(SUAccountViewController);
    v3 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:*(a1 + 48)];
    [(SUViewController *)v2 setClientInterface:v13];
    [(SUStorePageViewController *)v2 setURLRequestProperties:v3];
    [SUClientDispatch enterAccountFlowWithViewController:v2 animated:1];
  }

  else
  {
    v3 = [*(a1 + 32) parentViewController];
    v4 = [*(a1 + 32) viewControllerFactory];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 newStorePageViewControllerWithSection:0];
    }

    else
    {
      v6 = [(SUViewController *)[SUStorePageViewController alloc] initWithSection:0];
    }

    v2 = v6;
    [(SUViewController *)v6 setClientInterface:v13];
    v7 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:*(a1 + 48)];
    [(SUStorePageViewController *)v2 setURLRequestProperties:v7];
    [(SUStorePageViewController *)v2 setNeedsAuthentication:*(a1 + 56)];
    v8 = objc_alloc(MEMORY[0x1E69D4968]);
    v9 = [MEMORY[0x1E69D4890] defaultStore];
    v10 = [v9 activeAccount];
    v11 = [v8 initWithAccount:v10];

    if (*(a1 + 57) == 1)
    {
      [v11 setPromptStyle:1];
    }

    [(SUStorePageViewController *)v2 setAuthenticationContext:v11];
    v12 = [v3 navigationController];
    [v12 pushViewController:v2 animated:1];
  }
}

- (void)pingURL:(id)l
{
  v20 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:l]) != 0)
  {
    v5 = v4;
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v16 = 138412546;
      v17 = objc_opt_class();
      v18 = 2112;
      v19 = v5;
      LODWORD(v15) = 22;
      v14 = &v16;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v16, v15}];
        free(v10);
        v14 = v11;
        SSFileLog();
      }
    }

    mainQueue = [MEMORY[0x1E69E4798] mainQueue];
    [mainQueue addOperation:{objc_msgSend(MEMORY[0x1E69E47E0], "pingOperationWithUrl:", v5)}];
  }

  else
  {
    v13 = MEMORY[0x1E69E2F88];

    [v13 throwException:@"Invalid argument"];
  }
}

- (SUScriptProtocol)protocol
{
  v3 = objc_alloc_init(SUScriptProtocol);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (void)handleProtocolPropertyListString:(id)string
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v6 = SUScriptPropertyListFromString(string);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count])
  {
    [(SUScriptProtocol *)[(SUScriptInterface *)self protocol] setValuesFromDictionary:v6];
    WebThreadRunOnMainThread();
  }
}

uint64_t __75__SUScriptInterface_SUProtocolAdditions__handleProtocolPropertyListString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) parentViewController];
  v3 = [objc_alloc(MEMORY[0x1E69E47B0]) initWithPropertyList:*(a1 + 40)];
  v4 = objc_alloc_init(MEMORY[0x1E69E47B8]);
  [v4 setAuthenticationContext:{objc_msgSend(*(a1 + 32), "authenticationContext")}];
  [v4 setShouldPostFooterSectionChanged:0];
  [v4 setShouldProcessDialogs:0];
  [v3 setDataProvider:v4];

  v5 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:v2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__SUScriptInterface_SUProtocolAdditions__handleProtocolPropertyListString___block_invoke_2;
  v9[3] = &unk_1E8165198;
  v9[4] = v3;
  v9[5] = v5;
  v10 = *(a1 + 32);
  [v3 setCompletionBlock:v9];
  [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];

  v6 = [*(a1 + 40) objectForKey:@"tabs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(SUPageSectionGroup);
    [(SUPageSectionGroup *)v7 loadFromDictionary:v6];
    [v2 reloadForSectionsWithGroup:v7];
  }

  [objc_msgSend(v2 "storePageProtocol")];
  return [v2 storePageProtocolDidChange];
}

uint64_t __75__SUScriptInterface_SUProtocolAdditions__handleProtocolPropertyListString___block_invoke_2(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "dataProvider")];
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__SUScriptInterface_SUProtocolAdditions__handleProtocolPropertyListString___block_invoke_3;
    block[3] = &unk_1E8164A20;
    v8 = *(a1 + 40);
    v9 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v3 = [*(a1 + 56) objectForKey:*MEMORY[0x1E69E4828]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__SUScriptInterface_SUProtocolAdditions__handleProtocolPropertyListString___block_invoke_96;
    v6[3] = &unk_1E8164370;
    v4 = *(a1 + 48);
    v6[4] = v3;
    v6[5] = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }

  return [*(a1 + 32) setCompletionBlock:0];
}

void __75__SUScriptInterface_SUProtocolAdditions__handleProtocolPropertyListString___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) object];
  v3 = [MEMORY[0x1E69D4938] sharedConfig];
  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 48);
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    LODWORD(v11) = 22;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v12, v11}];
      free(v9);
      SSFileLog();
    }
  }

  v10 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:{objc_msgSend(*(a1 + 48), "schemeSwizzledURL")}];
  [v2 reloadWithURLRequestProperties:v10];
}

void __75__SUScriptInterface_SUProtocolAdditions__handleProtocolPropertyListString___block_invoke_96(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69E4750]) initWithDialogDictionary:*(a1 + 32)];
  [objc_msgSend(*(a1 + 40) "clientInterface")];
}

- (id)makeWindow
{
  v3 = objc_alloc_init(SUScriptWindow);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (void)setWindow:(id)window
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"window"];

  [v3 throwException:v4];
}

- (SUScriptWindow)window
{
  v18 = *MEMORY[0x1E69E9840];
  scriptWindowContext = [(SUScriptInterface *)self scriptWindowContext];
  if (!scriptWindowContext)
  {
    return [MEMORY[0x1E695DFB0] null];
  }

  v4 = scriptWindowContext;
  if (objc_opt_respondsToSelector())
  {
    [(SUScriptWindowContext *)v4 tag];
  }

  [(SUScriptObject *)self lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  scriptObjects = self->super._scriptObjects;
  v6 = [(NSMutableSet *)scriptObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(scriptObjects);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 context];
        if (objc_opt_respondsToSelector())
        {
          if ([objc_msgSend(v10 "context")])
          {
            break;
          }
        }
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)scriptObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }

    v11 = v10;
    [(SUScriptObject *)self unlock];
    if (v11)
    {
      return v11;
    }
  }

  else
  {
LABEL_14:
    [(SUScriptObject *)self unlock];
  }

  v11 = [[SUScriptWindow alloc] initWithContext:v4];
  [(SUScriptObject *)self checkInScriptObject:v11];
  WebThreadRunOnMainThread();

  if (!v11)
  {
    return [MEMORY[0x1E695DFB0] null];
  }

  return v11;
}

uint64_t __52__SUScriptInterface_SUScriptWindowAdditions__window__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overlayViewController:0] != 0;
  v3 = *(a1 + 32);

  return [v3 setVisible:v2];
}

- (SUScriptCarrierBundlingController)carrierBundlingController
{
  [(SUScriptObject *)self lock];
  carrierBundlingController = self->_carrierBundlingController;
  v4 = carrierBundlingController;
  if (!carrierBundlingController)
  {
    v5 = objc_alloc_init(SUScriptCarrierBundlingController);
    self->_carrierBundlingController = v5;
    [(SUScriptObject *)v5 setVisible:1];
    v4 = self->_carrierBundlingController;
  }

  v6 = v4;
  [(SUScriptObject *)self unlock];
  if (!carrierBundlingController)
  {
    [(SUScriptObject *)self checkInScriptObject:v6];
  }

  return v6;
}

- (void)setCarrierBundlingController:(id)controller
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"carrierBundling"];

  [v3 throwException:v4];
}

- (id)makeNumberFormatterWithStyle:(id)style
{
  v4 = objc_alloc_init(SUScriptNumberFormatter);
  [(SUScriptNumberFormatter *)v4 setStyle:style];

  return v4;
}

- (id)makeSplitViewController
{
  v3 = objc_alloc_init(SUScriptSplitViewController);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (id)makeMenuViewController
{
  v3 = objc_alloc_init(SUScriptMenuViewController);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (id)makeCanvasWithWidth:(id)width height:(id)height
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v6 = [SUScriptCanvasContext alloc];
    [width floatValue];
    v8 = v7;
    [height floatValue];
    v10 = [(SUScriptCanvasContext *)v6 initWithWidth:v8 height:v9];
    if (v10)
    {

      return v10;
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  v12 = MEMORY[0x1E695DFB0];

  return [v12 null];
}

- (id)makeColorWithHue:(id)hue saturation:(id)saturation brightness:(id)brightness alpha:(id)alpha
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v10 = objc_alloc_init(SUScriptColor);
    [hue floatValue];
    v12 = v11;
    [saturation floatValue];
    v14 = v13;
    [brightness floatValue];
    v16 = v15;
    [alpha floatValue];
    [(SUScriptColor *)v10 setHue:v12 saturation:v14 brightness:v16 alpha:v17];
    if (v10)
    {

      return v10;
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  v19 = MEMORY[0x1E695DFB0];

  return [v19 null];
}

- (id)makeColorWithRed:(id)red green:(id)green blue:(id)blue alpha:(id)alpha
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v10 = objc_alloc_init(SUScriptColor);
    [red floatValue];
    v12 = v11;
    [green floatValue];
    v14 = v13;
    [blue floatValue];
    v16 = v15;
    [alpha floatValue];
    [(SUScriptColor *)v10 setRed:v12 green:v14 blue:v16 alpha:v17];
    if (v10)
    {

      return v10;
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  v19 = MEMORY[0x1E695DFB0];

  return [v19 null];
}

- (id)makeColorWithWhite:(id)white alpha:(id)alpha
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v6 = objc_alloc_init(SUScriptColor);
    [white floatValue];
    v8 = v7;
    [alpha floatValue];
    [(SUScriptColor *)v6 setWhite:v8 alpha:v9];
    if (v6)
    {

      return v6;
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  v11 = MEMORY[0x1E695DFB0];

  return [v11 null];
}

- (id)makeLinearGradientWithX0:(double)x0 y0:(double)y0 x1:(double)x1 y1:(double)y1
{
  v6 = [[SUScriptGradient alloc] initLinearGradientWithX0:x0 y0:y0 x1:x1 y1:y1];

  return v6;
}

- (id)makeRadialGradientWithX0:(double)x0 y0:(double)y0 r0:(double)r0 x1:(double)x1 y1:(double)y1 r1:(double)r1
{
  v8 = [[SUScriptGradient alloc] initRadialGraidentWithX0:x0 y0:y0 r0:r0 x1:x1 y1:y1 r1:r1];

  return v8;
}

- (SUScriptMediaLibrary)mediaLibrary
{
  [(SUScriptObject *)self lock];
  mediaLibrary = self->_mediaLibrary;
  v4 = mediaLibrary;
  if (!mediaLibrary)
  {
    v5 = objc_alloc_init(SUScriptMediaLibrary);
    self->_mediaLibrary = v5;
    [(SUScriptObject *)v5 setVisible:1];
    v4 = self->_mediaLibrary;
  }

  v6 = v4;
  [(SUScriptObject *)self unlock];
  if (!mediaLibrary)
  {
    [(SUScriptMediaLibrary *)v6 _connectNativeObject];
    [(SUScriptObject *)self checkInScriptObject:v6];
  }

  return v6;
}

- (void)setMediaLibrary:(id)library
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"mediaLibrary"];

  [v3 throwException:v4];
}

- (void)addExternalDownloads:(id)downloads options:(id)options
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    options = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!options || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    copyJavaScriptContext = [(SUScriptInterface *)self copyJavaScriptContext];
    if (copyJavaScriptContext)
    {
      v8 = copyJavaScriptContext;
      [(SUPurchaseManager *)[(SUClientInterface *)[(SUScriptInterface *)self clientInterface] purchaseManager] addExternalDownloads:downloads withOptions:options inContext:copyJavaScriptContext];

      JSGlobalContextRelease(v8);
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E2F88];

    [v9 throwException:@"Invalid argument"];
  }
}

- (void)addExternalDownloadsFromManifestURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:l]) != 0)
  {
    v5 = v4;
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v15 = 138412546;
      v16 = objc_opt_class();
      v17 = 2112;
      v18 = v5;
      LODWORD(v14) = 22;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v15, v14}];
        free(v10);
        SSFileLog();
      }
    }

    v11 = objc_alloc(MEMORY[0x1E69D48E0]);
    v12 = [v11 initWithURLRequest:{objc_msgSend(MEMORY[0x1E695AC68], "requestWithURL:", v5)}];
    [v12 setManifestFormat:1];
    [v12 start];
  }

  else
  {
    v13 = MEMORY[0x1E69E2F88];

    [v13 throwException:@"Invalid argument"];
  }
}

- (void)addPurchaseWithInfo:(id)info options:(id)options
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    options = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!options || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    copyJavaScriptContext = [(SUScriptInterface *)self copyJavaScriptContext];
    purchaseManager = [(SUClientInterface *)[(SUScriptInterface *)self clientInterface] purchaseManager];
    [(SUPurchaseManager *)purchaseManager setAccountDSID:[(SSAuthenticationContext *)[(SUScriptInterface *)self authenticationContext] requiredUniqueIdentifier]];
    tidHeaders = [(SUScriptInterface *)self tidHeaders];
    if ([(NSDictionary *)[(SUScriptDictionary *)tidHeaders dictionary] count])
    {
      [(SUPurchaseManager *)purchaseManager setTidHeaders:[(SUScriptDictionary *)tidHeaders dictionary]];
    }

    [(SUPurchaseManager *)purchaseManager purchaseScriptObject:info withOptions:options inContext:copyJavaScriptContext];
    if (copyJavaScriptContext)
    {

      JSGlobalContextRelease(copyJavaScriptContext);
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E2F88];

    [v10 throwException:@"Invalid argument"];
  }
}

- (void)approveInPerson:(id)person completionFunction:(id)function
{
  v18[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    person = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = 0;
    if (function && (isKindOfClass & 1) == 0)
    {
      v7 = [[SUScriptFunction alloc] initWithScriptObject:function];
    }
  }

  [(SUScriptFunction *)v7 setThisObject:self];
  if (person)
  {
    v9 = v7;
    v10 = ISWeakLinkedClassForString();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__SUScriptInterface_SUPurchaseAdditions__approveInPerson_completionFunction___block_invoke;
    v15[3] = &unk_1E8165FD8;
    v15[4] = v7;
    v15[5] = person;
    [v10 localApproveRequestWithItemIdentifier:person completion:v15];
  }

  else
  {
    v17 = @"status";
    v18[0] = [MEMORY[0x1E696AD98] numberWithBool:0];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69D4C28] code:137 userInfo:0];
    v13 = [[SUScriptDictionary alloc] initWithDictionary:v11];
    v14 = [[SUScriptError alloc] initWithError:v12];
    v16[0] = v13;
    v16[1] = v14;
    -[SUScriptFunction callWithArguments:](v7, "callWithArguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2]);
    [(SUScriptFunction *)v7 setThisObject:0];
  }
}

void __77__SUScriptInterface_SUPurchaseAdditions__approveInPerson_completionFunction___block_invoke(uint64_t a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v4 = &unk_1F41EA930;
    if (!a2)
    {
      v4 = &unk_1F41EA918;
    }

    v11[0] = @"status";
    v11[1] = @"adamID";
    v5 = *(a1 + 40);
    v12[0] = v4;
    v12[1] = v5;
    v6 = -[SUScriptDictionary initWithDictionary:]([SUScriptDictionary alloc], "initWithDictionary:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2]);
    if (a2)
    {
      v7 = [[SUScriptError alloc] initWithError:a2];
    }

    else
    {
      v7 = [MEMORY[0x1E69E2FB0] undefined];
    }

    v8 = v7;
    v9 = *(a1 + 32);
    v10[0] = v6;
    v10[1] = v7;
    [v9 callWithArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 2)}];
    [*(a1 + 32) setThisObject:0];
  }
}

- (id)makeReviewWithAdamID:(id)d
{
  v3 = objc_alloc_init(SUScriptReview);

  return v3;
}

- (id)makeComposeReviewViewControllerWithReview:(id)review
{
  v4 = [[SUScriptComposeReviewViewController alloc] initWithScriptReview:review clientInterface:[(SUScriptInterface *)self clientInterface]];
  [(SUScriptObject *)self checkInScriptObject:v4];

  return v4;
}

- (void)composeReviewWithURL:(id)l itemIdentifier:(id)identifier type:(id)type
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    l = 0;
  }

  v6 = objc_alloc_init(SUScriptReview);
  [(SUScriptReview *)v6 setInfoURL:l];
  if (l)
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

void __108__SUScriptInterface_SUScriptComposeReviewViewControllerAdditions__composeReviewWithURL_itemIdentifier_type___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 32)];
  v3 = [*(a1 + 40) clientInterface];
  v4 = [objc_msgSend(v3 "viewControllerFactory")];
  if (!v4)
  {
    v4 = [[SUComposeReviewViewController alloc] initWithCompositionURL:v2];
  }

  [(SUViewController *)v4 setClientInterface:v3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __108__SUScriptInterface_SUScriptComposeReviewViewControllerAdditions__composeReviewWithURL_itemIdentifier_type___block_invoke_2;
  v5[3] = &unk_1E8166000;
  v5[4] = *(a1 + 40);
  v5[5] = v4;
  [(SUComposeReviewViewController *)v4 prepareWithCompletionBlock:v5];
}

uint64_t __108__SUScriptInterface_SUScriptComposeReviewViewControllerAdditions__composeReviewWithURL_itemIdentifier_type___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [*(result + 32) parentViewController];
    v4 = *(v2 + 40);

    return [v3 presentViewController:v4 animated:1 completion:0];
  }

  return result;
}

- (SUScriptPassbookLibrary)passbookLibrary
{
  v3 = ISWeakLinkedClassForString();
  if ([(objc_class *)v3 isPassLibraryAvailable])
  {
    v4 = objc_alloc_init(v3);
    v5 = [[SUScriptPassbookLibrary alloc] initWithPassLibrary:v4];
    [(SUScriptObject *)self checkInScriptObject:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SUScriptApplication)application
{
  v3 = objc_alloc_init(SUScriptApplication);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (id)makeVolumeViewController
{
  v2 = objc_alloc_init(SUScriptVolumeViewController);

  return v2;
}

- (id)makeSegmentedControl
{
  v3 = objc_alloc_init(SUScriptSegmentedControl);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (id)makeURLRequestWithURLs:(id)ls timeoutInterval:(id)interval
{
  v6 = objc_alloc_init(SUScriptURLRequest);
  [(SUScriptURLRequest *)v6 setURLs:ls];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (interval)
    {
      if ((isKindOfClass & 1) == 0)
      {
        [(SUScriptURLRequest *)v6 setTimeoutInterval:interval];
      }
    }
  }

  return v6;
}

- (id)makeReportAProblemViewControllerWithAdamID:(id)d
{
  v4 = SSGetUnsignedLongLongFromValue();
  if (v4)
  {
    clientInterface = [(SUScriptInterface *)self clientInterface];
    v6 = [SUScriptReportAProblemViewController alloc];
    v4 = -[SUScriptReportAProblemViewController initWithAdamID:clientInterface:](v6, "initWithAdamID:clientInterface:", [MEMORY[0x1E696AD98] numberWithItemIdentifier:v4], clientInterface);
    [(SUScriptObject *)self checkInScriptObject:v4];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  return v4;
}

- (SUScriptDevice)device
{
  v2 = objc_alloc_init(SUScriptDevice);

  return v2;
}

- (void)setDevice:(id)device
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"device"];

  [v3 throwException:v4];
}

- (id)makeAccountPageWithURLs:(id)ls
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    ls = 0;
  }

  v8 = 0;
  if ([(SUScriptStorePageViewController *)SUScriptAccountPageViewController copyURLStrings:&v8 forValue:ls])
  {
    v5 = [SUScriptAccountPageViewController alloc];
    v6 = [(SUScriptStorePageViewController *)v5 initWithURLStrings:v8];
    [(SUScriptObject *)self checkInScriptObject:v6];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v6 = 0;
  }

  return v6;
}

- (id)makeSubscriptionStatusRequest
{
  v3 = objc_alloc_init(SUScriptSubscriptionStatusRequest);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (SUScriptTelephony)telephony
{
  v3 = objc_alloc_init(SUScriptTelephony);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (id)makeDocumentInteractionController
{
  v3 = objc_alloc_init(SUScriptDocumentInteractionController);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (id)makeScriptActionWithType:(id)type
{
  v3 = [[SUScriptAction alloc] initWithActionType:type];

  return v3;
}

- (id)makeDateFormatter
{
  v2 = objc_alloc_init(SUScriptDateFormatter);

  return v2;
}

- (SUScriptPurchaseManager)purchaseManager
{
  result = self->_purchaseManager;
  if (!result)
  {
    v4 = objc_alloc_init(SUScriptPurchaseManager);
    self->_purchaseManager = v4;
    [(SUScriptObject *)self checkInScriptObject:v4];
    return self->_purchaseManager;
  }

  return result;
}

- (id)makeMediaPlayerItemWithProperties:(id)properties
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    properties = 0;
  }

  copyJavaScriptContext = [(SUScriptInterface *)self copyJavaScriptContext];
  if (copyJavaScriptContext)
  {
    v6 = copyJavaScriptContext;
    v7 = [properties copyArrayOrDictionaryWithContext:copyJavaScriptContext];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
      v8 = 0;
    }

    else
    {
      v8 = [[SUScriptMediaPlayerItem alloc] initWithDictionary:v7];
    }

    JSGlobalContextRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)makeMediaPlayerViewControllerWithMediaPlayerItem:(id)item
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[SUScriptMediaPlayerViewController alloc] initWithMediaPlayerItem:item];
    [(SUScriptObject *)self checkInScriptObject:v5];
    [(UIViewController *)[(SUScriptViewController *)v5 nativeViewController] setClientInterface:[(SUScriptObject *)v5 clientInterface]];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v5 = 0;
  }

  return v5;
}

- (void)showMediaPlayerWithURLString:(id)string orientation:(id)orientation title:(id)title subtitle:(id)subtitle bookmarkID:(id)d duration:(id)duration type:(id)type imageURL:(id)self0
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:string];
    if (v16)
    {
      v17 = v16;
      v18 = objc_alloc_init(SUMediaPlayerItem);
      [(SUMediaPlayerItem *)v18 setURL:v17];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [d length])
      {
        [(SUMediaPlayerItem *)v18 setBookmarkIdentifier:d];
      }

      if (objc_opt_respondsToSelector())
      {
        [duration doubleValue];
        [(SUMediaPlayerItem *)v18 setPlayableDuration:v19 / 1000.0];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:l];
        [(SUMediaPlayerItem *)v18 setBackgroundImageURL:v20];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SUMediaPlayerItem *)v18 setSubtitle:subtitle];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SUMediaPlayerItem *)v18 setTitle:title];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[SUMediaPlayerItem setItemType:](v18, "setItemType:", [+[SUItemDataSource sharedDataSource](SUItemDataSource "sharedDataSource")]);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([orientation isEqualToString:@"landscape"])
      {
        v21 = 3;
      }

      else
      {
        v21 = 1;
      }

      [(SUMediaPlayerItem *)v18 setInitialOrientation:v21];
      WebThreadRunOnMainThread();
    }
  }
}

void __149__SUScriptInterface_SUMediaPlayerViewControllerAdditions__showMediaPlayerWithURLString_orientation_title_subtitle_bookmarkID_duration_type_imageURL___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [objc_msgSend(*(a1 + 32) "parentViewController")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E69D4938] sharedConfig];
    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    if (!os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v9 = 138412290;
      v10 = objc_opt_class();
      LODWORD(v7) = 12;
      v5 = _os_log_send_and_compose_impl();
      if (v5)
      {
        v6 = v5;
        [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4, &v9, v7}];
        free(v6);
        SSFileLog();
      }
    }
  }

  else
  {
    v8 = [[SUMediaPlayerViewController alloc] initWithMediaPlayerItem:*(a1 + 40)];
    -[SUMediaPlayerViewController setClientInterface:](v8, "setClientInterface:", [*(a1 + 32) clientInterface]);
    [objc_msgSend(*(a1 + 32) "parentViewController")];
  }
}

- (SUScriptMetricsController)metricsController
{
  [(SUScriptObject *)self lock];
  metricsController = self->_metricsController;
  v4 = metricsController;
  if (!metricsController)
  {
    v5 = objc_alloc_init(SUScriptMetricsController);
    self->_metricsController = v5;
    [(SUScriptObject *)v5 setVisible:1];
    v4 = self->_metricsController;
  }

  v6 = v4;
  [(SUScriptObject *)self unlock];
  if (!metricsController)
  {
    [(SUScriptObject *)self checkInScriptObject:v6];
  }

  return v6;
}

- (void)setMetricsController:(id)controller
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"metricsController"];

  [v3 throwException:v4];
}

- (id)activeAudioPlayers
{
  array = [MEMORY[0x1E695DF70] array];
  WebThreadRunOnMainThread();
  if ([array count])
  {
    [(SUScriptObject *)self checkInScriptObjects:array];
  }

  return array;
}

uint64_t __60__SUScriptInterface_SUScriptAudioPlayer__activeAudioPlayers__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [+[SUAudioPlayerSessionManager sessionManager](SUAudioPlayerSessionManager "sessionManager")];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [[SUScriptAudioPlayer alloc] initWithURL:*(*(&v8 + 1) + 8 * v6) keyURL:0 certificateURL:0];
        [*(a1 + 32) addObject:v7];

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (id)getAudioPlayerForURL:(id)l keyURL:(id)rL certificateURL:(id)uRL
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:l];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:rL];
    }

    else
    {
      v10 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:uRL];
    }

    else
    {
      v12 = 0;
    }

    v11 = [[SUScriptAudioPlayer alloc] initWithURL:v9 keyURL:v10 certificateURL:v12];
    [(SUScriptObject *)self checkInScriptObject:v11];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v11 = 0;
  }

  return v11;
}

- (id)makeActivityViewControllerWithProviders:(id)providers activities:(id)activities
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    activities = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!activities || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    v7 = [activities copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
    v8 = [providers copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
    v9 = [[SUScriptActivityViewController alloc] initWithScriptItemProviders:v8 applicationActivities:v7];
    [(SUScriptObject *)self checkInScriptObject:v9];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v9 = 0;
  }

  return v9;
}

- (id)makeFacebookRequestWithURL:(id)l requestMethod:(id)method
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:l];
    v8 = [[SUScriptFacebookRequest alloc] initWithURL:v7 requestMethod:method];
    [(SUScriptObject *)self checkInScriptObject:v8];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v8 = 0;
  }

  return v8;
}

- (id)makeActivity
{
  v3 = objc_alloc_init(SUScriptActivity);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (SUScriptAppleAccountStore)appleAccountStore
{
  v3 = objc_alloc_init(SUScriptAppleAccountStore);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (id)makeActivityItemProviderWithMIMEType:(id)type
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[SUScriptActivityItemProvider alloc] initWithMIMEType:type];
    [(SUScriptObject *)self checkInScriptObject:v5];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v5 = 0;
  }

  return v5;
}

- (id)makeLookupRequest
{
  v3 = objc_alloc_init(SUScriptLookupRequest);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (id)makeFacebookSessionWithAccount:(id)account
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accountCopy = 0;
LABEL_3:
    v6 = [[SUScriptFacebookSession alloc] initWithAppleAccount:accountCopy];
    [(SUScriptObject *)self checkInScriptObject:v6];
    goto LABEL_4;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  accountCopy = 0;
  if (!account)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  accountCopy = account;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  v6 = 0;
LABEL_4:

  return v6;
}

- (id)makeCalloutView
{
  v3 = objc_alloc_init(SUScriptCalloutView);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (SUScriptFairPlayContext)accountCreationSecureContext
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__54;
  v8 = __Block_byref_object_dispose__54;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __83__SUScriptInterface_SUScriptFairPlayContextAdditions__accountCreationSecureContext__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = objc_alloc_init(SUScriptFairPlayContext);
  if ([*(*(*(a1 + 40) + 8) + 40) isOpen])
  {
    v2 = *(a1 + 32);
    v3 = *(*(*(a1 + 40) + 8) + 40);

    [v2 checkInScriptObject:v3];
  }

  else
  {

    *(*(*(a1 + 40) + 8) + 40) = 0;
  }
}

- (id)makeGiftViewController
{
  v3 = objc_alloc_init(SUScriptGiftViewController);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (id)makeAMSViewController
{
  primaryAccount = [(SUScriptInterface *)self primaryAccount];
  v4 = [[SUScriptAMSViewController alloc] initWithPrimaryAccount:primaryAccount];
  [(SUScriptObject *)self checkInScriptObject:v4];

  return v4;
}

- (id)makeRedeemViewController
{
  v3 = objc_alloc_init(SUScriptRedeemViewController);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (id)makeDonationViewControllerWithCharityIdentifier:(id)identifier
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  v5 = [[SUScriptDonationViewController alloc] initWithCharityIdentifier:identifier];
  [(SUScriptObject *)self checkInScriptObject:v5];

  return v5;
}

- (id)makeStoreSheetViewController
{
  v3 = objc_alloc_init(SUScriptStoreSheetViewController);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

@end