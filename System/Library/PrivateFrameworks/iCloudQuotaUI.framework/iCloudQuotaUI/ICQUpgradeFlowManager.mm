@interface ICQUpgradeFlowManager
+ (BOOL)shouldShowForOffer:(id)offer;
+ (NSMutableArray)activeFlowManagers;
+ (void)addActiveFlowManager:(id)manager;
+ (void)flowManagerWithJourneyId:(id)id params:(id)params completion:(id)completion;
+ (void)needsToRunWithCompletion:(id)completion;
+ (void)removeActiveFlowManager:(id)manager;
- (BOOL)_shouldPresentLiftUIFlow;
- (BOOL)_shouldPresentRemoteFlow;
- (ICQUpgradeFlowManager)init;
- (ICQUpgradeFlowManager)initWithJourneyId:(id)id params:(id)params;
- (ICQUpgradeFlowManager)initWithOffer:(id)offer;
- (ICQUpgradeFlowManagerDelegate)delegate;
- (NSURL)serverUIURL;
- (icq_signpost_s)loadLiftUISignpost;
- (icq_signpost_s)loadRemoteUISignpost;
- (id)_allowedInProcessClients;
- (id)_navControllerWithRootVC:(id)c;
- (id)addParams:(id)params toJourneyURL:(id)l;
- (id)initBaseclassWithOffer:(id)offer;
- (id)presentationContext;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (void)_addAlertActionForAlertSpec:(id)spec buttonIndex:(int64_t)index;
- (void)_beginRemoteFlowWithURL:(id)l;
- (void)_beginRemoteFlowWithViewController:(id)controller;
- (void)_cancelFlow;
- (void)_clearBusyOfferViewController;
- (void)_configurePresentingViewController:(id)controller andPresentedViewController:(id)viewController;
- (void)_configurePresentingViewController:(id)controller preloadedRemoteUIData:(id)data;
- (void)_handleRemoteUIActionWithURLString:(id)string httpMethod:(id)method;
- (void)_initiateFamilySetupFlow;
- (void)_openURL:(id)l completion:(id)completion;
- (void)_performPageButtonActionWithParameters:(id)parameters completion:(id)completion;
- (void)_presentLiftUIInParentViewController:(id)controller;
- (void)_presentLiftUIUsingViewController:(id)controller;
- (void)_presentPageWithSpecification:(id)specification;
- (void)_presentRemoteUIUsingViewController:(id)controller withData:(id)data;
- (void)_presentRemoteViewWithData:(id)data andRequest:(id)request;
- (void)_presentUpgradeComplete;
- (void)_sendDelegateCancel;
- (void)_sendDelegateComplete;
- (void)_sendDelegateDidPresentViewController:(id)controller;
- (void)_sendDelegateLoadError:(id)error;
- (void)_setBusyOfferViewController:(id)controller;
- (void)_simulateDoneButton;
- (void)_tappedAlertLink:(id)link;
- (void)beginFlowWithPresentingViewController:(id)controller;
- (void)beginJourney;
- (void)beginOSLOFlowWithPresentingViewController:(id)controller;
- (void)beginPostPurchaseFlowWithLink:(id)link offer:(id)offer;
- (void)beginRemoteUpgradeFlowWithICQLink:(id)link presenter:(id)presenter;
- (void)dismissNavigationControllerAnimated:(BOOL)animated success:(BOOL)success completion:(id)completion;
- (void)dismissObjectModelsAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissUpgradeFlowWithSuccess:(BOOL)success;
- (void)liftUIPresenter:(id)presenter didLoadWithSuccess:(BOOL)success error:(id)error;
- (void)liftUIPresenter:(id)presenter performAction:(int64_t)action parameters:(id)parameters completion:(id)completion;
- (void)liftUIPresenterDidCancel:(id)cancel;
- (void)liftUIPresenterDidComplete:(id)complete;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)presentFlowHostedInNavigationController:(id)controller;
- (void)presentHostingNavigationController;
- (void)presentRemoteViewWithData:(id)data andURL:(id)l;
- (void)purchaseFlowCompletedWith:(BOOL)with error:(id)error;
- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models;
- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error;
- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler;
- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController;
- (void)remoteUIControllerDidDismiss:(id)dismiss;
- (void)remoteUIFlowManager:(id)manager didLoadWithSuccess:(BOOL)success error:(id)error;
- (void)sender:(id)sender action:(int64_t)action parameters:(id)parameters;
- (void)setPresentingSceneBundleIdentifier:(id)identifier;
- (void)setPresentingSceneIdentifier:(id)identifier;
- (void)showNetworkFailurePage;
- (void)showUpgradeFailurePage;
- (void)startFlowWithParentViewController:(id)controller;
@end

@implementation ICQUpgradeFlowManager

- (ICQUpgradeFlowManager)init
{
  mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
  currentOffer = [mEMORY[0x277D7F390] currentOffer];
  v5 = [(ICQUpgradeFlowManager *)self initWithOffer:currentOffer];

  return v5;
}

- (ICQUpgradeFlowManager)initWithOffer:(id)offer
{
  v17 = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  v14.receiver = self;
  v14.super_class = ICQUpgradeFlowManager;
  v5 = [(ICQUpgradeFlowManager *)&v14 init];
  if (v5)
  {
    v6 = v5;
    upgradeFlowSpecification = [offerCopy upgradeFlowSpecification];
    offerType = [upgradeFlowSpecification offerType];

    v9 = [ICQUIUpgradeFlowFactory flowManagerClassForOfferType:offerType];
    if (v9)
    {
      v10 = [[v9 alloc] initSubclassWithOffer:offerCopy];
    }

    else
    {
      v11 = _ICQGetLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = _ICQStringForOfferType();
        *buf = 138543362;
        v16 = v12;
        _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "Unable to locate correct subclass for flow type %{public}@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)initBaseclassWithOffer:(id)offer
{
  v27[7] = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  v21.receiver = self;
  v21.super_class = ICQUpgradeFlowManager;
  v6 = [(ICQUpgradeFlowManager *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_offer, offer);
    v8 = [[ICQUpgradeStorageHook alloc] initWithOffer:v7->_offer flowDelegate:v7];
    upgradeStorageHook = v7->_upgradeStorageHook;
    v7->_upgradeStorageHook = v8;

    v10 = [[ICQBundlesHook alloc] initWithFlowManager:v7];
    v27[0] = v10;
    v11 = [[ICQFamilySharingHook alloc] initWithFlowDelegate:v7];
    v27[1] = v11;
    v12 = objc_alloc_init(ICQUpgradePhotosCloudEnableHook);
    v27[2] = v12;
    v13 = objc_alloc_init(ICQUpgradePhotosOptimizeEnableHook);
    v27[3] = v13;
    v14 = objc_alloc_init(ICQUIManageSubHook);
    v27[4] = v14;
    v27[5] = v7->_upgradeStorageHook;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v15 = getFALaunchServicesHookClass_softClass;
    v26 = getFALaunchServicesHookClass_softClass;
    if (!getFALaunchServicesHookClass_softClass)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __getFALaunchServicesHookClass_block_invoke;
      v22[3] = &unk_27A65A9F8;
      v22[4] = &v23;
      __getFALaunchServicesHookClass_block_invoke(v22);
      v15 = v24[3];
    }

    v16 = v15;
    _Block_object_dispose(&v23, 8);
    v17 = objc_alloc_init(v15);
    v27[6] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:7];
    serverHooks = v7->_serverHooks;
    v7->_serverHooks = v18;
  }

  return v7;
}

- (void)setPresentingSceneIdentifier:(id)identifier
{
  objc_storeStrong(&self->_presentingSceneIdentifier, identifier);
  identifierCopy = identifier;
  [(ICQUpgradeStorageHook *)self->_upgradeStorageHook setPresentingSceneIdentifier:self->_presentingSceneIdentifier];
}

- (void)setPresentingSceneBundleIdentifier:(id)identifier
{
  objc_storeStrong(&self->_presentingSceneBundleIdentifier, identifier);
  identifierCopy = identifier;
  [(ICQUpgradeStorageHook *)self->_upgradeStorageHook setPresentingSceneBundleIdentifier:self->_presentingSceneBundleIdentifier];
}

- (NSURL)serverUIURL
{
  icqLink = [(ICQUpgradeFlowManager *)self icqLink];
  actionURL = [icqLink actionURL];

  if (actionURL)
  {
    icqLink2 = [(ICQUpgradeFlowManager *)self icqLink];
    actionURL2 = [icqLink2 actionURL];
LABEL_5:
    v9 = actionURL2;

    goto LABEL_6;
  }

  offer = [(ICQUpgradeFlowManager *)self offer];
  serverUIURL = [offer serverUIURL];

  if (serverUIURL)
  {
    icqLink2 = [(ICQUpgradeFlowManager *)self offer];
    actionURL2 = [icqLink2 serverUIURL];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (BOOL)shouldShowForOffer:(id)offer
{
  v17 = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  upgradeFlowSpecification = [offerCopy upgradeFlowSpecification];
  if (upgradeFlowSpecification)
  {
    level = [offerCopy level];

    if (level)
    {
      upgradeFlowSpecification = [offerCopy upgradeFlowSpecification];
      offerType = [upgradeFlowSpecification offerType];

      v7 = [ICQUIUpgradeFlowFactory flowManagerClassForOfferType:offerType];
      LODWORD(upgradeFlowSpecification) = [(objc_class *)v7 shouldSubclassShowForOffer:offerCopy];
      v8 = _ICQGetLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = NSStringFromClass(v7);
        v10 = v9;
        v11 = @"NO";
        if (upgradeFlowSpecification)
        {
          v11 = @"YES";
        }

        v13 = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "+[%@ shouldShowForOffer:] == %@", &v13, 0x16u);
      }
    }

    else
    {
      LOBYTE(upgradeFlowSpecification) = 0;
    }
  }

  return upgradeFlowSpecification;
}

- (void)_tappedAlertLink:(id)link
{
  v30 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    text = [linkCopy text];
    [linkCopy action];
    v7 = _ICQStringForAction();
    parameters = [linkCopy parameters];
    *buf = 138543874;
    v25 = text;
    v26 = 2114;
    v27 = v7;
    v28 = 2112;
    v29 = parameters;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "tapped %{public}@ button; action:%{public}@ parameters:%@", buf, 0x20u);
  }

  parameters2 = [linkCopy parameters];
  v10 = [parameters2 objectForKeyedSubscript:*MEMORY[0x277D7F270]];

  if (v10)
  {
    mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
    offer = [(ICQUpgradeFlowManager *)self offer];
    offerId = [offer offerId];
    [mEMORY[0x277D7F390] updateOfferId:offerId buttonId:v10 info:0 completion:0];
  }

  action = [linkCopy action];
  if (action <= 4)
  {
    if (action <= 1)
    {
      if (action)
      {
        if (action != 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else if ((action - 2) >= 2)
    {
      if (action != 4)
      {
        goto LABEL_25;
      }

      goto LABEL_8;
    }

    goto LABEL_21;
  }

  v15 = action - 100;
  if ((action - 100) > 0x12)
  {
    goto LABEL_15;
  }

  if (((1 << v15) & 0x711F8) != 0)
  {
LABEL_8:
    parameters3 = [linkCopy parameters];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __42__ICQUpgradeFlowManager__tappedAlertLink___block_invoke;
    v23[3] = &unk_27A65A7F8;
    v23[4] = self;
    [(ICQUpgradeFlowManager *)self _performPageButtonActionWithParameters:parameters3 completion:v23];

    goto LABEL_25;
  }

  if (((1 << v15) & 0x205) != 0)
  {
LABEL_21:
    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [linkCopy action];
      v20 = _ICQStringForAction();
      parameters4 = [linkCopy parameters];
      *buf = 138412546;
      v25 = v20;
      v26 = 2112;
      v27 = parameters4;
      _os_log_impl(&dword_275623000, v19, OS_LOG_TYPE_DEFAULT, "Alert action:%@ parameters:%@ unexpected", buf, 0x16u);
    }

    goto LABEL_24;
  }

  if (action == 101)
  {
LABEL_24:
    [(ICQUpgradeFlowManager *)self _sendDelegateCancel];
    goto LABEL_25;
  }

LABEL_15:
  if (action == 5)
  {
    [(ICQUpgradeFlowManager *)self _sendDelegateComplete];
  }

  else if (action == 6)
  {
    parameters5 = [linkCopy parameters];
    v18 = [parameters5 objectForKeyedSubscript:*MEMORY[0x277D7F280]];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __42__ICQUpgradeFlowManager__tappedAlertLink___block_invoke_89;
    v22[3] = &unk_27A65A820;
    v22[4] = self;
    [(ICQUpgradeFlowManager *)self _openURL:v18 completion:v22];
  }

LABEL_25:
}

void __42__ICQUpgradeFlowManager__tappedAlertLink___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ICQUpgradeFlowManager__tappedAlertLink___block_invoke_2;
  block[3] = &unk_27A65A7D0;
  v11 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __42__ICQUpgradeFlowManager__tappedAlertLink___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = _ICQGetLogSystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      LOWORD(v10) = 0;
      v5 = "button action succeeded";
      v6 = v3;
      v7 = 2;
LABEL_6:
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, v5, &v10, v7);
    }
  }

  else if (v4)
  {
    v8 = *(a1 + 32);
    v10 = 138543362;
    v11 = v8;
    v5 = "button action failed with error %{public}@";
    v6 = v3;
    v7 = 12;
    goto LABEL_6;
  }

  return [*(a1 + 40) _sendDelegateComplete];
}

- (void)_addAlertActionForAlertSpec:(id)spec buttonIndex:(int64_t)index
{
  specCopy = spec;
  v7 = [specCopy linkForButtonIndex:index];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x277D750F8];
    text = [v7 text];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __65__ICQUpgradeFlowManager__addAlertActionForAlertSpec_buttonIndex___block_invoke;
    v15 = &unk_27A65A848;
    selfCopy = self;
    v17 = v8;
    v11 = [v9 actionWithTitle:text style:0 handler:&v12];

    if (v11)
    {
      [(ICQAlertController *)self->_upgradeAlertController addAction:v11, v12, v13, v14, v15, selfCopy];
      if ([specCopy defaultButtonIndex] == index)
      {
        [(ICQAlertController *)self->_upgradeAlertController setPreferredAction:v11];
      }
    }
  }

  else
  {
    v11 = 0;
  }
}

- (void)beginRemoteUpgradeFlowWithICQLink:(id)link presenter:(id)presenter
{
  v21 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  presenterCopy = presenter;
  [(ICQUpgradeFlowManager *)self setIcqLink:linkCopy];
  offer = [(ICQUpgradeFlowManager *)self offer];
  actionURL = [linkCopy actionURL];
  [offer _updateRequestedServerUIURLWithURL:actionURL];

  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    offer2 = [(ICQUpgradeFlowManager *)self offer];
    [offer2 action];
    v12 = _ICQStringForAction();
    [linkCopy action];
    v13 = _ICQStringForAction();
    v15 = 136315650;
    v16 = "[ICQUpgradeFlowManager beginRemoteUpgradeFlowWithICQLink:presenter:]";
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "%s: Overriding offer action %@ with link action %@", &v15, 0x20u);
  }

  offer3 = [(ICQUpgradeFlowManager *)self offer];
  [offer3 updateOfferWithAction:{objc_msgSend(linkCopy, "action")}];

  [(ICQUpgradeFlowManager *)self _beginRemoteFlowWithViewController:presenterCopy];
}

- (void)_beginRemoteFlowWithURL:(id)l
{
  lCopy = l;
  offer = [(ICQUpgradeFlowManager *)self offer];
  [offer _updateRequestedServerUIURLWithURL:lCopy];

  [(ICQUpgradeFlowManager *)self _beginRemoteFlowWithViewController:0];
}

- (void)_beginRemoteFlowWithViewController:(id)controller
{
  controllerCopy = controller;
  v15 = +[ICQUIOutOfProcessUpgradeFlowManager sharedManager];
  delegate = [(ICQUpgradeFlowManager *)self delegate];
  [v15 setDelegate:delegate];

  flowOptions = [(ICQUpgradeFlowManager *)self flowOptions];
  [v15 setFlowOptions:flowOptions];

  offer = [(ICQUpgradeFlowManager *)self offer];
  [v15 setOffer:offer];

  icqLink = [(ICQUpgradeFlowManager *)self icqLink];
  [v15 setLink:icqLink];

  [v15 setFlowManager:self];
  view = [controllerCopy view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];
  [v15 setPresentingSceneIdentifier:_sceneIdentifier];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [v15 setPresentingSceneBundleIdentifier:bundleIdentifier];

  [v15 beginFlowWithViewController:controllerCopy];
}

- (void)beginFlowWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  if ([(ICQUpgradeFlowManager *)self _shouldPresentRemoteFlow])
  {
    [(ICQUpgradeFlowManager *)self _beginRemoteFlowWithViewController:controllerCopy];
  }

  else
  {
    [(ICQUpgradeFlowManager *)self _configurePresentingViewController:controllerCopy];
  }
}

- (void)_configurePresentingViewController:(id)controller andPresentedViewController:(id)viewController
{
  controllerCopy = controller;
  objc_storeStrong(&self->_hostingNavigationController, viewController);
  viewControllerCopy = viewController;
  [(UINavigationController *)self->_hostingNavigationController setDelegate:self];
  navigationBar = [(UINavigationController *)self->_hostingNavigationController navigationBar];
  flowOptions = [(ICQUpgradeFlowManager *)self flowOptions];
  navigationBarTintColor = [flowOptions navigationBarTintColor];
  [navigationBar setTintColor:navigationBarTintColor];

  self->_shouldNavigationControllerBeDismissed = 1;
  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = controllerCopy;

  offer = [(ICQUpgradeFlowManager *)self offer];
  requestedServerUIURL = [offer requestedServerUIURL];
  [(ICQUpgradeFlowManager *)self presentRemoteViewWithData:0 andURL:requestedServerUIURL];
}

- (void)_configurePresentingViewController:(id)controller preloadedRemoteUIData:(id)data
{
  v75 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dataCopy = data;
  if (![(ICQUpgradeFlowManager *)self _shouldPresentLiftUIFlow])
  {
    offer = [(ICQUpgradeFlowManager *)self offer];
    upgradeFlowSpecification = [offer upgradeFlowSpecification];

    offer2 = [(ICQUpgradeFlowManager *)self offer];
    v12 = [offer2 alertSpecificationAtIndex:0];
    [upgradeFlowSpecification setStartAlert:v12];

    if (dataCopy)
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        offer3 = [(ICQUpgradeFlowManager *)self offer];
        requestedServerUIURL = [offer3 requestedServerUIURL];
        *buf = 138412290;
        v74 = requestedServerUIURL;
        _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "presenting remoteUI URL %@ with preloaded data", buf, 0xCu);
      }

      selfCopy2 = self;
      v17 = controllerCopy;
      v18 = dataCopy;
    }

    else
    {
      offer4 = [(ICQUpgradeFlowManager *)self offer];
      requestedServerUIURL2 = [offer4 requestedServerUIURL];

      if (!requestedServerUIURL2)
      {
        startPage = [upgradeFlowSpecification startPage];

        if (startPage)
        {
          v25 = _ICQGetLogSystem();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_275623000, v25, OS_LOG_TYPE_DEFAULT, "presenting start page", buf, 2u);
          }

          offer5 = [(ICQUpgradeFlowManager *)self offer];
          serverUIURL = [offer5 serverUIURL];

          if (serverUIURL)
          {
            offer6 = [(ICQUpgradeFlowManager *)self offer];
            bundleIdentifier = [offer6 bundleIdentifier];
            v30 = [bundleIdentifier isEqualToString:@"com.apple.icq"];

            if (v30)
            {
              objc_storeStrong(&self->_hostingNavigationController, controller);
              [(UINavigationController *)self->_hostingNavigationController setDelegate:self];
              navigationBar = [(UINavigationController *)self->_hostingNavigationController navigationBar];
              flowOptions = [(ICQUpgradeFlowManager *)self flowOptions];
              navigationBarTintColor = [flowOptions navigationBarTintColor];
              [navigationBar setTintColor:navigationBarTintColor];

              self->_shouldNavigationControllerBeDismissed = 1;
            }

            else
            {
              v54 = [objc_alloc(MEMORY[0x277CECAF8]) initWithNibName:0 bundle:0];
              v55 = [(ICQUpgradeFlowManager *)self _navControllerWithRootVC:v54];
              hostingNavigationController = self->_hostingNavigationController;
              self->_hostingNavigationController = v55;

              navigationBar2 = [(UINavigationController *)self->_hostingNavigationController navigationBar];
              flowOptions2 = [(ICQUpgradeFlowManager *)self flowOptions];
              navigationBarTintColor2 = [flowOptions2 navigationBarTintColor];
              [navigationBar2 setTintColor:navigationBarTintColor2];

              if ([(ICQOffer *)self->_offer action]== 118)
              {
                v60 = _ICQGetLogSystem();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v74 = "[ICQUpgradeFlowManager _configurePresentingViewController:preloadedRemoteUIData:]";
                  _os_log_impl(&dword_275623000, v60, OS_LOG_TYPE_DEFAULT, "%s, Detected action direct to oslo, skipping presentation and saving presenting view controller", buf, 0xCu);
                }

                objc_storeStrong(&self->_presentingViewController, controller);
              }

              else
              {
                self->_shouldNavigationControllerBeDismissed = 1;
                [controllerCopy presentPreferredSizeWithViewController:self->_hostingNavigationController animated:1 completion:0];
              }
            }

            [(ICQUpgradeFlowManager *)self presentRemoteViewWithData:0 andURL:serverUIURL];
          }

          else
          {
            v42 = _ICQGetLogSystem();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_275623000, v42, OS_LOG_TYPE_DEFAULT, "presenting native view", buf, 2u);
            }

            [objc_opt_class() addActiveFlowManager:self];
            v43 = [ICQViewController alloc];
            startPage2 = [upgradeFlowSpecification startPage];
            v45 = [(ICQViewController *)v43 initWithPageSpecification:startPage2];

            flowOptions3 = [(ICQUpgradeFlowManager *)self flowOptions];
            buttonTintColor = [flowOptions3 buttonTintColor];
            [(ICQViewController *)v45 setButtonTintColor:buttonTintColor];

            offer7 = [(ICQUpgradeFlowManager *)self offer];
            bundleIdentifier2 = [offer7 bundleIdentifier];
            v50 = [bundleIdentifier2 isEqualToString:@"com.apple.icq"];

            if (v50)
            {
              objc_storeStrong(&self->_hostingNavigationController, controller);
              [(UINavigationController *)self->_hostingNavigationController setDelegate:self];
              navigationBar3 = [(UINavigationController *)self->_hostingNavigationController navigationBar];
              flowOptions4 = [(ICQUpgradeFlowManager *)self flowOptions];
              navigationBarTintColor3 = [flowOptions4 navigationBarTintColor];
              [navigationBar3 setTintColor:navigationBarTintColor3];

              self->_shouldNavigationControllerBeDismissed = 1;
              [(UINavigationController *)self->_hostingNavigationController pushViewController:v45 animated:0];
              [(ICQUpgradeFlowManager *)self _sendDelegateDidPresentViewController:v45];
            }

            else
            {
              v65 = [(ICQUpgradeFlowManager *)self _navControllerWithRootVC:v45];
              v66 = self->_hostingNavigationController;
              self->_hostingNavigationController = v65;

              navigationBar4 = [(UINavigationController *)self->_hostingNavigationController navigationBar];
              flowOptions5 = [(ICQUpgradeFlowManager *)self flowOptions];
              navigationBarTintColor4 = [flowOptions5 navigationBarTintColor];
              [navigationBar4 setTintColor:navigationBarTintColor4];

              self->_shouldNavigationControllerBeDismissed = 1;
              v70 = self->_hostingNavigationController;
              v71[0] = MEMORY[0x277D85DD0];
              v71[1] = 3221225472;
              v71[2] = __82__ICQUpgradeFlowManager__configurePresentingViewController_preloadedRemoteUIData___block_invoke;
              v71[3] = &unk_27A65A708;
              v71[4] = self;
              v72 = v45;
              [controllerCopy presentPreferredSizeWithViewController:v70 animated:1 completion:v71];
            }
          }
        }

        else
        {
          startAlert = [upgradeFlowSpecification startAlert];

          if (!startAlert)
          {
            v61 = _ICQGetLogSystem();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = MEMORY[0x277CCABB0];
              offer8 = [(ICQUpgradeFlowManager *)self offer];
              v64 = [v62 numberWithInteger:{objc_msgSend(offer8, "level")}];
              *buf = 138412290;
              v74 = v64;
              _os_log_impl(&dword_275623000, v61, OS_LOG_TYPE_DEFAULT, "offer level %@ missing upgrade flow specification", buf, 0xCu);
            }

            [(ICQUpgradeFlowManager *)self _sendDelegateCancel];
            goto LABEL_12;
          }

          serverUIURL = [upgradeFlowSpecification startAlert];
          v35 = MEMORY[0x277D7F390];
          message = [serverUIURL message];
          altMessage = [serverUIURL altMessage];
          v38 = [v35 stringWithPlaceholderFormat:message alternateString:altMessage];

          title = [serverUIURL title];
          v40 = [ICQAlertController alertControllerWithTitle:title message:v38 preferredStyle:1];
          upgradeAlertController = self->_upgradeAlertController;
          self->_upgradeAlertController = v40;

          [(ICQUpgradeFlowManager *)self _addAlertActionForAlertSpec:serverUIURL buttonIndex:1];
          [(ICQUpgradeFlowManager *)self _addAlertActionForAlertSpec:serverUIURL buttonIndex:2];
          [(ICQUpgradeFlowManager *)self _addAlertActionForAlertSpec:serverUIURL buttonIndex:3];
          [controllerCopy presentViewController:self->_upgradeAlertController animated:1 completion:&__block_literal_global_0];
        }

LABEL_12:
        goto LABEL_13;
      }

      v21 = _ICQGetLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        offer9 = [(ICQUpgradeFlowManager *)self offer];
        requestedServerUIURL3 = [offer9 requestedServerUIURL];
        *buf = 138412290;
        v74 = requestedServerUIURL3;
        _os_log_impl(&dword_275623000, v21, OS_LOG_TYPE_DEFAULT, "presenting remoteUI URL %@", buf, 0xCu);
      }

      selfCopy2 = self;
      v17 = controllerCopy;
      v18 = 0;
    }

    [(ICQUpgradeFlowManager *)selfCopy2 _presentRemoteUIUsingViewController:v17 withData:v18];
    goto LABEL_12;
  }

  [(ICQUpgradeFlowManager *)self _presentLiftUIUsingViewController:controllerCopy];
LABEL_13:
}

- (void)startFlowWithParentViewController:(id)controller
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if ([(ICQUpgradeFlowManager *)self _shouldPresentLiftUIFlow])
  {
    [(ICQUpgradeFlowManager *)self _presentLiftUIInParentViewController:controllerCopy];
  }

  else
  {
    v5 = [[ICQUISpinnerViewController alloc] initWithNibName:0 bundle:0];
    v6 = [(ICQUpgradeFlowManager *)self _navControllerWithRootVC:v5];
    [(ICQUpgradeFlowManager *)self setHostingNavigationController:v6];

    hostingNavigationController = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    navigationBar = [hostingNavigationController navigationBar];
    flowOptions = [(ICQUpgradeFlowManager *)self flowOptions];
    navigationBarTintColor = [flowOptions navigationBarTintColor];
    [navigationBar setTintColor:navigationBarTintColor];

    v11 = dispatch_time(0, 5000000000);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __59__ICQUpgradeFlowManager_startFlowWithParentViewController___block_invoke;
    v20 = &unk_27A65A708;
    selfCopy = self;
    v12 = v5;
    v22 = v12;
    dispatch_after(v11, MEMORY[0x277D85CD0], &v17);
    if ([(ICQOffer *)self->_offer action:v17]== 118)
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v24 = "[ICQUpgradeFlowManager startFlowWithParentViewController:]";
        _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "%s, Detected action direct to oslo, skipping presentation and saving presenting view controller", buf, 0xCu);
      }

      v14 = controllerCopy;
      presentingViewController = self->_presentingViewController;
      self->_presentingViewController = v14;
    }

    else
    {
      [(ICQUpgradeFlowManager *)self setShouldNavigationControllerBeDismissed:1];
      presentingViewController = [(ICQUpgradeFlowManager *)self hostingNavigationController];
      [controllerCopy addChildAndPinToEdgesWithChildViewController:presentingViewController];
    }

    serverUIURL = [(ICQUpgradeFlowManager *)self serverUIURL];
    [(ICQUpgradeFlowManager *)self presentRemoteViewWithData:0 andURL:serverUIURL];
  }
}

void __59__ICQUpgradeFlowManager_startFlowWithParentViewController___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D7F3E0] isSolariumFeatureFlagEnabled])
  {
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
    v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v9 style:0 target:*(a1 + 32) action:sel__cancelFlow];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"CANCEL" value:&stru_28844FC60 table:@"CloudGroup"];
    [v2 setAccessibilityLabel:v4];

    v5 = [*(a1 + 40) navigationItem];
    [v5 setRightBarButtonItem:v2];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D751E0]);
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CANCEL" value:&stru_28844FC60 table:@"CloudGroup"];
    v9 = [v6 initWithTitle:v8 style:0 target:*(a1 + 32) action:sel__cancelFlow];

    v2 = [*(a1 + 40) navigationItem];
    [v2 setLeftBarButtonItem:v9];
  }
}

- (void)_presentLiftUIUsingViewController:(id)controller
{
  v47 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  serverUIURL = [(ICQUpgradeFlowManager *)self serverUIURL];

  if (serverUIURL)
  {
    v6 = _ICQSignpostLogSystem();
    v7 = objc_opt_new();
    v8 = _ICQSignpostCreateWithObject();
    v10 = v9;

    v11 = _ICQSignpostLogSystem();
    v12 = v11;
    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      serverUIURL2 = [(ICQUpgradeFlowManager *)self serverUIURL];
      *buf = 138412290;
      v46 = serverUIURL2;
      _os_signpost_emit_with_name_impl(&dword_275623000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v8, "UpsellLoadLiftUI", " enableTelemetry=YES URL: %@", buf, 0xCu);
    }

    v14 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(ICQUpgradeFlowManager *)v8 _presentLiftUIUsingViewController:?];
    }

    self->_loadLiftUISignpost.identifier = v8;
    self->_loadLiftUISignpost.timestamp = v10;
    self->_isLiftUIFlow = 1;
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      serverUIURL3 = [(ICQUpgradeFlowManager *)self serverUIURL];
      *buf = 138412290;
      v46 = serverUIURL3;
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Starting liftUI flow using url %@", buf, 0xCu);
    }

    offer = [(ICQUpgradeFlowManager *)self offer];
    xMLSpecification = [offer XMLSpecification];
    v19 = [xMLSpecification placeholderReplacementsWithDeviceInfo:0];

    icqLink = [(ICQUpgradeFlowManager *)self icqLink];
    serverUIContent = [icqLink serverUIContent];

    v22 = [ICQLiftUIPresenter alloc];
    if (serverUIContent)
    {
      icqLink2 = [(ICQUpgradeFlowManager *)self icqLink];
      serverUIContent2 = [icqLink2 serverUIContent];
      v25 = [(ICQLiftUIPresenter *)v22 initWithContent:serverUIContent2 account:0 data:v19];
      [(ICQUpgradeFlowManager *)self setLiftUIPresenter:v25];
    }

    else
    {
      icqLink2 = [(ICQUpgradeFlowManager *)self serverUIURL];
      serverUIContent2 = [(ICQLiftUIPresenter *)v22 initWithURL:icqLink2 account:0 data:v19];
      [(ICQUpgradeFlowManager *)self setLiftUIPresenter:serverUIContent2];
    }

    liftUIPresenter = [(ICQUpgradeFlowManager *)self liftUIPresenter];
    [liftUIPresenter setDelegate:self];

    offer2 = [(ICQUpgradeFlowManager *)self offer];
    bundleIdentifier = [offer2 bundleIdentifier];
    v30 = [bundleIdentifier isEqualToString:@"com.apple.icq"];

    objc_opt_class();
    v31 = v30 & objc_opt_isKindOfClass();
    if (v31 == 1)
    {
      [(ICQUpgradeFlowManager *)self setHostingNavigationController:controllerCopy];
    }

    else
    {
      v32 = [(ICQUpgradeFlowManager *)self _navControllerWithRootVC:0];
      [(ICQUpgradeFlowManager *)self setHostingNavigationController:v32];
    }

    hostingNavigationController = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    navigationBar = [hostingNavigationController navigationBar];
    flowOptions = [(ICQUpgradeFlowManager *)self flowOptions];
    navigationBarTintColor = [flowOptions navigationBarTintColor];
    [navigationBar setTintColor:navigationBarTintColor];

    hostingNavigationController2 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [hostingNavigationController2 setDelegate:self];

    [(ICQUpgradeFlowManager *)self setShouldNavigationControllerBeDismissed:1];
    liftUIPresenter2 = [(ICQUpgradeFlowManager *)self liftUIPresenter];
    hostingNavigationController3 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    LOBYTE(flowOptions) = [liftUIPresenter2 pushInNavigationController:hostingNavigationController3 animated:0];

    if (flowOptions)
    {
      hostingNavigationController4 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
      [hostingNavigationController4 setNavigationBarHidden:1];

      if (v31)
      {
        [(ICQUpgradeFlowManager *)self _sendDelegateDidPresentViewController:controllerCopy];
      }

      else
      {
        hostingNavigationController5 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __59__ICQUpgradeFlowManager__presentLiftUIUsingViewController___block_invoke;
        v43[3] = &unk_27A65A708;
        v43[4] = self;
        v44 = controllerCopy;
        [v44 presentPreferredSizeWithViewController:hostingNavigationController5 animated:1 completion:v43];
      }
    }

    else
    {
      v41 = _ICQGetLogSystem();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [ICQUpgradeFlowManager _presentLiftUIUsingViewController:];
      }

      [(ICQUpgradeFlowManager *)self _sendDelegateCancel];
    }
  }

  else
  {
    v26 = _ICQGetLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ICQUpgradeFlowManager _presentLiftUIUsingViewController:];
    }

    [(ICQUpgradeFlowManager *)self _sendDelegateCancel];
  }
}

- (void)_presentLiftUIInParentViewController:(id)controller
{
  v40 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  serverUIURL = [(ICQUpgradeFlowManager *)self serverUIURL];

  if (serverUIURL)
  {
    v6 = _ICQSignpostLogSystem();
    v7 = objc_opt_new();
    v8 = _ICQSignpostCreateWithObject();
    v10 = v9;

    v11 = _ICQSignpostLogSystem();
    v12 = v11;
    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      serverUIURL2 = [(ICQUpgradeFlowManager *)self serverUIURL];
      v38 = 138412290;
      v39 = serverUIURL2;
      _os_signpost_emit_with_name_impl(&dword_275623000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v8, "UpsellLoadLiftUI", " enableTelemetry=YES URL: %@", &v38, 0xCu);
    }

    v14 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(ICQUpgradeFlowManager *)v8 _presentLiftUIUsingViewController:?];
    }

    self->_loadLiftUISignpost.identifier = v8;
    self->_loadLiftUISignpost.timestamp = v10;
    self->_isLiftUIFlow = 1;
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      serverUIURL3 = [(ICQUpgradeFlowManager *)self serverUIURL];
      v38 = 138412290;
      v39 = serverUIURL3;
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Starting liftUI flow using url %@", &v38, 0xCu);
    }

    offer = [(ICQUpgradeFlowManager *)self offer];
    xMLSpecification = [offer XMLSpecification];
    v19 = [xMLSpecification placeholderReplacementsWithDeviceInfo:0];

    icqLink = [(ICQUpgradeFlowManager *)self icqLink];
    serverUIContent = [icqLink serverUIContent];

    v22 = [ICQLiftUIPresenter alloc];
    if (serverUIContent)
    {
      icqLink2 = [(ICQUpgradeFlowManager *)self icqLink];
      serverUIContent2 = [icqLink2 serverUIContent];
      v25 = [(ICQLiftUIPresenter *)v22 initWithContent:serverUIContent2 account:0 data:v19];
      [(ICQUpgradeFlowManager *)self setLiftUIPresenter:v25];
    }

    else
    {
      icqLink2 = [(ICQUpgradeFlowManager *)self serverUIURL];
      serverUIContent2 = [(ICQLiftUIPresenter *)v22 initWithURL:icqLink2 account:0 data:v19];
      [(ICQUpgradeFlowManager *)self setLiftUIPresenter:serverUIContent2];
    }

    liftUIPresenter = [(ICQUpgradeFlowManager *)self liftUIPresenter];
    [liftUIPresenter setDelegate:self];

    v28 = [(ICQUpgradeFlowManager *)self _navControllerWithRootVC:0];
    [(ICQUpgradeFlowManager *)self setHostingNavigationController:v28];

    hostingNavigationController = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    navigationBar = [hostingNavigationController navigationBar];
    flowOptions = [(ICQUpgradeFlowManager *)self flowOptions];
    navigationBarTintColor = [flowOptions navigationBarTintColor];
    [navigationBar setTintColor:navigationBarTintColor];

    hostingNavigationController2 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [hostingNavigationController2 setNavigationBarHidden:1];

    [(ICQUpgradeFlowManager *)self setShouldNavigationControllerBeDismissed:1];
    liftUIPresenter2 = [(ICQUpgradeFlowManager *)self liftUIPresenter];
    hostingNavigationController3 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    LOBYTE(flowOptions) = [liftUIPresenter2 pushInNavigationController:hostingNavigationController3 animated:0];

    if (flowOptions)
    {
      hostingNavigationController4 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
      [controllerCopy addChildAndPinToEdgesWithChildViewController:hostingNavigationController4];

      [(ICQUpgradeFlowManager *)self _sendDelegateDidPresentViewController:controllerCopy];
    }

    else
    {
      v37 = _ICQGetLogSystem();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [ICQUpgradeFlowManager _presentLiftUIUsingViewController:];
      }

      [(ICQUpgradeFlowManager *)self _sendDelegateCancel];
    }
  }

  else
  {
    v26 = _ICQGetLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ICQUpgradeFlowManager _presentLiftUIUsingViewController:];
    }

    [(ICQUpgradeFlowManager *)self _sendDelegateCancel];
  }
}

- (void)_presentRemoteUIUsingViewController:(id)controller withData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v8 = MEMORY[0x277CECAF8];
  dataCopy = data;
  v10 = [[v8 alloc] initWithNibName:0 bundle:0];
  v11 = [(ICQUpgradeFlowManager *)self _navControllerWithRootVC:v10];
  [(ICQUpgradeFlowManager *)self setHostingNavigationController:v11];

  hostingNavigationController = [(ICQUpgradeFlowManager *)self hostingNavigationController];
  navigationBar = [hostingNavigationController navigationBar];
  flowOptions = [(ICQUpgradeFlowManager *)self flowOptions];
  navigationBarTintColor = [flowOptions navigationBarTintColor];
  [navigationBar setTintColor:navigationBarTintColor];

  if ([(ICQOffer *)self->_offer action]== 118)
  {
    v16 = _ICQGetLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[ICQUpgradeFlowManager _presentRemoteUIUsingViewController:withData:]";
      _os_log_impl(&dword_275623000, v16, OS_LOG_TYPE_DEFAULT, "%s, Detected action direct to oslo, skipping presentation and saving presenting view controller", &v19, 0xCu);
    }

    objc_storeStrong(&self->_presentingViewController, controller);
  }

  else
  {
    [(ICQUpgradeFlowManager *)self setShouldNavigationControllerBeDismissed:1];
    hostingNavigationController2 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [controllerCopy presentPreferredSizeWithViewController:hostingNavigationController2 animated:1 completion:0];
  }

  serverUIURL = [(ICQUpgradeFlowManager *)self serverUIURL];
  [(ICQUpgradeFlowManager *)self presentRemoteViewWithData:dataCopy andURL:serverUIURL];
}

- (void)presentRemoteViewWithData:(id)data andURL:(id)l
{
  v12 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dataCopy = data;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = lCopy;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "presenting remote view with url = %@", &v10, 0xCu);
  }

  v9 = [MEMORY[0x277CCAD20] requestWithURL:lCopy];
  [(ICQUpgradeFlowManager *)self _presentRemoteViewWithData:dataCopy andRequest:v9];
}

- (void)_presentRemoteViewWithData:(id)data andRequest:(id)request
{
  v35 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  requestCopy = request;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138412290;
    v34 = requestCopy;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "presenting remote view with request = %@", &v33, 0xCu);
  }

  v9 = _ICQSignpostLogSystem();
  v10 = objc_opt_new();
  v11 = _ICQSignpostCreateWithObject();
  v13 = v12;

  v14 = _ICQSignpostLogSystem();
  v15 = v14;
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    offer = [(ICQUpgradeFlowManager *)self offer];
    remoteUIURL = [offer remoteUIURL];
    v33 = 138412290;
    v34 = remoteUIURL;
    _os_signpost_emit_with_name_impl(&dword_275623000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v11, "UpsellLoadRemoteUI", " enableTelemetry=YES URL: %@", &v33, 0xCu);
  }

  v18 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ICQUpgradeFlowManager _presentRemoteViewWithData:v11 andRequest:self];
  }

  self->_loadRemoteUISignpost.identifier = v11;
  self->_loadRemoteUISignpost.timestamp = v13;
  v19 = objc_alloc_init(MEMORY[0x277CECAB8]);
  remoteUIController = self->_remoteUIController;
  self->_remoteUIController = v19;

  [(AAUIRemoteUIController *)self->_remoteUIController setDelegate:self];
  [(AAUIRemoteUIController *)self->_remoteUIController setNavigationController:self->_hostingNavigationController];
  [(AAUIRemoteUIController *)self->_remoteUIController setHostViewController:self->_hostingNavigationController];
  v21 = objc_alloc(MEMORY[0x277D46200]);
  v22 = self->_remoteUIController;
  serverHooks = [(ICQUpgradeFlowManager *)self serverHooks];
  v24 = [v21 initWithRemoteUIController:v22 hooks:serverHooks];
  serverHookHandler = self->_serverHookHandler;
  self->_serverHookHandler = v24;

  if ([MEMORY[0x277D7F3E0] isServerMockingEnabled] && (objc_msgSend(MEMORY[0x277D7F3E0], "defaultStringValueForKey:", @"_ICQ_MOCK_BUY_PAGE"), v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
  {
    v27 = _ICQGetLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_275623000, v27, OS_LOG_TYPE_DEFAULT, "Mocking buy page", &v33, 2u);
    }

    v28 = [MEMORY[0x277D7F3E0] defaultStringValueForKey:@"_ICQ_MOCK_BUY_PAGE"];
    v29 = [v28 dataUsingEncoding:4];
    v30 = self->_remoteUIController;
    v31 = [requestCopy URL];
    [(AAUIRemoteUIController *)v30 loadData:v29 baseURL:v31];
  }

  else if (dataCopy)
  {
    v32 = self->_remoteUIController;
    v28 = [requestCopy URL];
    [(AAUIRemoteUIController *)v32 loadData:dataCopy baseURL:v28];
  }

  else
  {
    v28 = [requestCopy mutableCopy];
    [v28 setTimeoutInterval:30.0];
    [(AAUIRemoteUIController *)self->_remoteUIController loadRequest:v28 completion:0];
  }
}

+ (NSMutableArray)activeFlowManagers
{
  if (activeFlowManagers_onceToken != -1)
  {
    +[ICQUpgradeFlowManager activeFlowManagers];
  }

  v3 = activeFlowManagers_sActiveFlowManagers;

  return v3;
}

void __43__ICQUpgradeFlowManager_activeFlowManagers__block_invoke()
{
  v0 = objc_opt_new();
  v1 = activeFlowManagers_sActiveFlowManagers;
  activeFlowManagers_sActiveFlowManagers = v0;
}

+ (void)addActiveFlowManager:(id)manager
{
  v9 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = managerCopy;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "adding active flow manager %p", &v7, 0xCu);
  }

  activeFlowManagers = [self activeFlowManagers];
  [activeFlowManagers addObject:managerCopy];
}

+ (void)removeActiveFlowManager:(id)manager
{
  v9 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = managerCopy;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "removing active flow manager %p", &v7, 0xCu);
  }

  activeFlowManagers = [self activeFlowManagers];
  [activeFlowManagers removeObject:managerCopy];
}

- (void)_setBusyOfferViewController:(id)controller
{
  objc_storeStrong(&self->_busyOfferViewController, controller);
  controllerCopy = controller;
  view = [controllerCopy view];
  [view setUpgradeMode:1];
  [controllerCopy setCancelEnabled:0];
}

- (void)_openURL:(id)l completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  if (lCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_13:
        if (completionCopy)
        {
          completionCopy[2](completionCopy);
        }

        v7 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v7 = lCopy;
    }

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v9 = [defaultWorkspace openSensitiveURL:v7 withOptions:MEMORY[0x277CBEC10]];

    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (v9)
      {
        v11 = @"YES";
      }

      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "open URL %@ succeeded:%@", &v12, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (id)_allowedInProcessClients
{
  if (_allowedInProcessClients_onceToken != -1)
  {
    [ICQUpgradeFlowManager _allowedInProcessClients];
  }

  v3 = _allowedInProcessClients_allowedClients;

  return v3;
}

void __49__ICQUpgradeFlowManager__allowedInProcessClients__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_288479A38];
  v1 = _allowedInProcessClients_allowedClients;
  _allowedInProcessClients_allowedClients = v0;
}

- (BOOL)_shouldPresentRemoteFlow
{
  v11 = *MEMORY[0x277D85DE8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  _allowedInProcessClients = [(ICQUpgradeFlowManager *)self _allowedInProcessClients];
  v6 = [_allowedInProcessClients containsObject:bundleIdentifier];

  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = bundleIdentifier;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%@ is allowed in process UI", &v9, 0xCu);
    }
  }

  return v6 ^ 1;
}

- (BOOL)_shouldPresentLiftUIFlow
{
  v20 = *MEMORY[0x277D85DE8];
  icqLink = [(ICQUpgradeFlowManager *)self icqLink];
  if (icqLink)
  {
  }

  else
  {
    offer = [(ICQUpgradeFlowManager *)self offer];
    action = [offer action];

    if (action == 115)
    {
      v6 = _ICQGetLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        v7 = "Offer action is ICQActionLaunchLiftUI, launching LiftUI...";
LABEL_11:
        _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, v7, &v18, 2u);
      }

LABEL_17:
      v16 = 1;
      goto LABEL_18;
    }
  }

  icqLink2 = [(ICQUpgradeFlowManager *)self icqLink];
  if (icqLink2)
  {

    goto LABEL_12;
  }

  offer2 = [(ICQUpgradeFlowManager *)self offer];
  action2 = [offer2 action];

  if (action2 == 121)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      v7 = "Offer action is ICQActionLaunchUpgradeFlowWithLiftUI, launching LiftUI...";
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_12:
  icqLink3 = [(ICQUpgradeFlowManager *)self icqLink];
  if ([icqLink3 action] == 121)
  {

    goto LABEL_15;
  }

  icqLink4 = [(ICQUpgradeFlowManager *)self icqLink];
  action3 = [icqLink4 action];

  if (action3 == 115)
  {
LABEL_15:
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      icqLink5 = [(ICQUpgradeFlowManager *)self icqLink];
      [icqLink5 action];
      v15 = _ICQStringForAction();
      v18 = 138412290;
      v19 = v15;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "ICQLink action is %@, launching LiftUI...", &v18, 0xCu);
    }

    goto LABEL_17;
  }

  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "This is not a LiftUI flow, launching non-LiftUI flow...", &v18, 2u);
  }

  v16 = 0;
LABEL_18:

  return v16;
}

- (id)_navControllerWithRootVC:(id)c
{
  cCopy = c;
  v5 = [[ICQRemoteUINavigationController alloc] initWithRootViewController:cCopy];

  [(ICQRemoteUINavigationController *)v5 setModalInPresentation:1];
  if ([MEMORY[0x277D75418] icqui_isiPad])
  {
    v6 = 2;
  }

  else
  {
    v6 = -2;
  }

  [(ICQRemoteUINavigationController *)v5 setModalPresentationStyle:v6];
  [MEMORY[0x277D75D28] ICQUIUpsellPrefferredPresentationSize];
  [(ICQRemoteUINavigationController *)v5 setPreferredContentSize:?];
  [(ICQRemoteUINavigationController *)v5 setDelegate:self];

  return v5;
}

- (void)_performPageButtonActionWithParameters:(id)parameters completion:(id)completion
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "subclass must override", v5, 2u);
  }
}

- (void)_cancelFlow
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "canceling flow", v4, 2u);
  }

  [(ICQUpgradeFlowManager *)self sender:self action:1 parameters:MEMORY[0x277CBEC10]];
}

- (void)_presentPageWithSpecification:(id)specification
{
  specificationCopy = specification;
  bindings = [(ICQUpgradeFlowManager *)self bindings];

  if (bindings)
  {
    bindings2 = [(ICQUpgradeFlowManager *)self bindings];
    v7 = [specificationCopy copyWithBindings:bindings2];

    specificationCopy = v7;
  }

  offer = [(ICQUpgradeFlowManager *)self offer];
  isBuddyOffer = [offer isBuddyOffer];

  if (isBuddyOffer)
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "presenting buddy view controller", buf, 2u);
    }

    v11 = [[ICQBuddyOfferViewController alloc] initWithPageSpecification:specificationCopy];
  }

  else
  {
    v11 = [[ICQViewController alloc] initWithPageSpecification:specificationCopy];
    flowOptions = [(ICQUpgradeFlowManager *)self flowOptions];
    buttonTintColor = [flowOptions buttonTintColor];
    [(ICQBuddyOfferViewController *)v11 setButtonTintColor:buttonTintColor];
  }

  hostingNavigationController = [(ICQUpgradeFlowManager *)self hostingNavigationController];

  if (hostingNavigationController && v11)
  {
    hostingNavigationController2 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [hostingNavigationController2 pushViewController:v11 animated:1];

    [(ICQUpgradeFlowManager *)self _sendDelegateDidPresentViewController:v11];
  }

  else
  {
    v16 = _ICQGetLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_275623000, v16, OS_LOG_TYPE_DEFAULT, "improper page specification -- cancelling flow", v17, 2u);
    }

    [(ICQUpgradeFlowManager *)self _sendDelegateCancel];
  }
}

- (void)_presentUpgradeComplete
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "ERROR: _presentUpgradeComplete is an old code path that should not be used anymore", v7, 2u);
  }

  offer = [(ICQUpgradeFlowManager *)self offer];
  upgradeFlowSpecification = [offer upgradeFlowSpecification];
  upgradeSuccessPage = [upgradeFlowSpecification upgradeSuccessPage];

  [(ICQUpgradeFlowManager *)self _presentPageWithSpecification:upgradeSuccessPage];
}

- (void)_clearBusyOfferViewController
{
  if (self->_busyOfferViewController)
  {
    v3 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__ICQUpgradeFlowManager__clearBusyOfferViewController__block_invoke;
    block[3] = &unk_27A65A820;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }
}

void __54__ICQUpgradeFlowManager__clearBusyOfferViewController__block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 24) view];
  [v4 setUpgradeMode:0];
  [*(*(a1 + 32) + 24) setCancelEnabled:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [viewControllerCopy setPageDelegate:self];
  }
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations
{
  if ([MEMORY[0x277D75418] icqui_isiPad])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)dismissNavigationControllerAnimated:(BOOL)animated success:(BOOL)success completion:(id)completion
{
  successCopy = success;
  completionCopy = completion;
  hostingNavigationController = [(ICQUpgradeFlowManager *)self hostingNavigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    hostingNavigationController2 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [hostingNavigationController2 setShouldSignalDelegateOnDismiss:0];

    hostingNavigationController3 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [hostingNavigationController3 setDidCompletePurchaseFlowWithSuccess:successCopy];
  }

  hostingNavigationController4 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
  [hostingNavigationController4 dismissViewControllerAnimated:1 completion:completionCopy];
}

- (void)sender:(id)sender action:(int64_t)action parameters:(id)parameters
{
  v44 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  parametersCopy = parameters;
  if (action <= 100)
  {
    if (action > 3)
    {
      if (action <= 5)
      {
        if (action == 4)
        {
          goto LABEL_17;
        }

        v12 = _ICQGetLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "ICQActionPurchaseComplete", buf, 2u);
        }

        if ([(ICQUpgradeFlowManager *)self shouldNavigationControllerBeDismissed])
        {
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __50__ICQUpgradeFlowManager_sender_action_parameters___block_invoke_169;
          v31[3] = &unk_27A65A820;
          v31[4] = self;
          [(ICQUpgradeFlowManager *)self dismissNavigationControllerAnimated:1 success:1 completion:v31];
          goto LABEL_33;
        }

LABEL_47:
        [(ICQUpgradeFlowManager *)self _sendDelegateCancel];
        goto LABEL_33;
      }

      if (action == 6)
      {
        v25 = _ICQGetLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275623000, v25, OS_LOG_TYPE_DEFAULT, "ICQActionOpenURL", buf, 2u);
        }

        v26 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x277D7F280]];
        [(ICQUpgradeFlowManager *)self _openURL:v26 completion:0];

        goto LABEL_33;
      }

      if (action != 100)
      {
        goto LABEL_33;
      }
    }

    else if ((action - 2) >= 2 && action)
    {
      if (action != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_43;
    }

    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = _ICQStringForAction();
      *buf = 138412802;
      v39 = senderCopy;
      v40 = 2112;
      v41 = v18;
      v42 = 2112;
      v43 = parametersCopy;
      _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "ICQUpgradeFlowManager: sender:%@ action:%@ parameters:%@ unexpected", buf, 0x20u);
    }

    goto LABEL_33;
  }

  v10 = action - 103;
  if ((action - 103) <= 0xF)
  {
    if (((1 << v10) & 0x23F) != 0)
    {
LABEL_17:
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = _ICQStringForAction();
        *buf = 138412290;
        v39 = v14;
        _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "ICQActionPurchaseBuy (%@)", buf, 0xCu);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ICQUpgradeFlowManager *)self _setBusyOfferViewController:senderCopy];
      }

      offer = [(ICQUpgradeFlowManager *)self offer];
      upgradeFlowSpecification = [offer upgradeFlowSpecification];

      if (-[ICQUpgradeFlowManager needsNetwork](self, "needsNetwork") && ([MEMORY[0x277D7F380] isNetworkReachable] & 1) == 0)
      {
        v19 = _ICQGetLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275623000, v19, OS_LOG_TYPE_DEFAULT, "network is needed, but not reachable", buf, 2u);
        }

        upgradeFailurePageForNetwork = [upgradeFlowSpecification upgradeFailurePageForNetwork];
        [(ICQUpgradeFlowManager *)self _presentPageWithSpecification:upgradeFailurePageForNetwork];

        [(ICQUpgradeFlowManager *)self _clearBusyOfferViewController];
      }

      else
      {
        objc_initWeak(buf, self);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __50__ICQUpgradeFlowManager_sender_action_parameters___block_invoke_161;
        v32[3] = &unk_27A65A898;
        objc_copyWeak(&v36, buf);
        v33 = senderCopy;
        v34 = upgradeFlowSpecification;
        selfCopy = self;
        [(ICQUpgradeFlowManager *)self _performPageButtonActionWithParameters:parametersCopy completion:v32];

        objc_destroyWeak(&v36);
        objc_destroyWeak(buf);
      }

      goto LABEL_33;
    }

    if (((1 << v10) & 0xE000) != 0)
    {
      v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:parametersCopy];
      [v11 setObject:&unk_288479B58 forKey:@"osloPurchase"];

      parametersCopy = v11;
      goto LABEL_17;
    }

    if (action == 109)
    {
      [(ICQUpgradeFlowManager *)self _initiateFamilySetupFlow];
      goto LABEL_33;
    }
  }

  if (action != 102)
  {
    if (action != 101)
    {
      goto LABEL_33;
    }

LABEL_43:
    v27 = _ICQGetLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = _ICQStringForAction();
      *buf = 138412290;
      v39 = v28;
      _os_log_impl(&dword_275623000, v27, OS_LOG_TYPE_DEFAULT, "ICQActionDismiss (%@)", buf, 0xCu);
    }

    if ([(ICQUpgradeFlowManager *)self shouldNavigationControllerBeDismissed])
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __50__ICQUpgradeFlowManager_sender_action_parameters___block_invoke;
      v37[3] = &unk_27A65A820;
      v37[4] = self;
      [(ICQUpgradeFlowManager *)self dismissNavigationControllerAnimated:1 success:0 completion:v37];
      goto LABEL_33;
    }

    goto LABEL_47;
  }

  v29 = _ICQGetLogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = _ICQStringForAction();
    *buf = 138412802;
    v39 = senderCopy;
    v40 = 2112;
    v41 = v30;
    v42 = 2112;
    v43 = parametersCopy;
    _os_log_impl(&dword_275623000, v29, OS_LOG_TYPE_DEFAULT, "ICQUpgradeFlowManager: sender:%@ action:%@ parameters:%@ not yet implemented", buf, 0x20u);
  }

LABEL_33:
  v21 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x277D7F270]];
  if (v21)
  {
    mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
    offer2 = [(ICQUpgradeFlowManager *)self offer];
    offerId = [offer2 offerId];
    [mEMORY[0x277D7F390] updateOfferId:offerId buttonId:v21 info:0 completion:0];
  }
}

void __50__ICQUpgradeFlowManager_sender_action_parameters___block_invoke_161(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"failed";
    if (a2)
    {
      v8 = @"succeeded";
    }

    *buf = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "button action %{public}@ with error %@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__ICQUpgradeFlowManager_sender_action_parameters___block_invoke_168;
  v11[3] = &unk_27A65A870;
  v9 = *(a1 + 32);
  v17 = a2;
  v12 = v9;
  v13 = v5;
  v14 = *(a1 + 40);
  v15 = WeakRetained;
  v16 = *(a1 + 48);
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __50__ICQUpgradeFlowManager_sender_action_parameters___block_invoke_168(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) hideSpinner];
  }

  v2 = *(a1 + 40);
  if (*(a1 + 72) == 1)
  {
    if (!v2)
    {
      if ([*(a1 + 48) needsWiFi] && (objc_msgSend(MEMORY[0x277D7F380], "isWifiEnabled") & 1) == 0)
      {
        v3 = [*(a1 + 48) upgradeSuccessPageForWiFi];
      }

      else
      {
        v3 = [*(a1 + 48) upgradePageForSuccess:*(a1 + 72)];
      }

      goto LABEL_10;
    }
  }

  else if (!v2)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Action failed but returned no error!", buf, 2u);
    }

    goto LABEL_12;
  }

  v3 = [*(a1 + 48) upgradePageForError:?];
LABEL_10:
  v4 = v3;
  if (!v3)
  {
    goto LABEL_13;
  }

  [*(a1 + 56) _presentPageWithSpecification:v3];
LABEL_12:

LABEL_13:
  [*(a1 + 56) _clearBusyOfferViewController];
  v5 = [*(a1 + 64) offer];
  if ([v5 isBuddyOffer])
  {
    v6 = *(a1 + 72);

    if (v6 == 1)
    {
      v7 = _ICQGetLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Sending delegate complete to buddy", v8, 2u);
      }

      [*(a1 + 56) sender:*(a1 + 64) action:5 parameters:0];
    }
  }

  else
  {
  }
}

- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __101__ICQUpgradeFlowManager_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke;
  v9[3] = &unk_27A65A8C0;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [request icq_addHeadersForUpgradeWithCompletion:v9];
}

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  v94 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  clientInfo = [modelCopy clientInfo];
  v9 = [clientInfo objectForKeyedSubscript:@"closeURL"];
  [(ICQUpgradeFlowManager *)self setCloseURL:v9];

  v10 = [clientInfo objectForKeyedSubscript:@"forceRefresh"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICQUpgradeFlowManager remoteUIController:didReceiveObjectModel:actionSignal:];
    }

    +[ICQPurchase clearCacheAndNotifyClients];
  }

  v13 = [clientInfo objectForKeyedSubscript:@"didCancel"];
  bOOLValue2 = [v13 BOOLValue];

  if (*signal != 1 || (bOOLValue2 & 1) != 0)
  {
    v71 = clientInfo;
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    selfCopy = self;
    offer = [(ICQUpgradeFlowManager *)self offer];
    xMLSpecification = [offer XMLSpecification];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v72 = modelCopy;
    obj = [modelCopy allPages];
    v17 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
    v18 = 0x277D7F000uLL;
    if (v17)
    {
      v19 = v17;
      v20 = @"placeholder";
      v21 = *v86;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v86 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v85 + 1) + 8 * i);
          v24 = *(v18 + 992);
          navTitle = [v23 navTitle];
          v26 = [v24 findPlaceholdersInString:navTitle];
          [v15 unionSet:v26];

          v27 = *(v18 + 992);
          navSubTitle = [v23 navSubTitle];
          v29 = [v27 findPlaceholdersInString:navSubTitle];
          [v15 unionSet:v29];

          v30 = [v23 subElementWithID:v20];
          v31 = v30;
          if (v30)
          {
            identifier = [v30 identifier];
            body = [v31 body];
            v34 = body;
            if (identifier && body)
            {
              v35 = v19;
              v36 = v21;
              v37 = v18;
              v38 = v20;
              v39 = [xMLSpecification stringForPlaceholder:body];
              if (v39)
              {
                [v31 setBody:v39];
              }

              else
              {
                log = _ICQGetLogSystem();
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v92 = v34;
                  _os_log_impl(&dword_275623000, log, OS_LOG_TYPE_DEFAULT, "failed to replace %@", buf, 0xCu);
                }
              }

              v20 = v38;
              v18 = v37;
              v21 = v36;
              v19 = v35;
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
      }

      while (v19);
    }

    v40 = _ICQGetLogSystem();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v92 = v15;
      _os_log_impl(&dword_275623000, v40, OS_LOG_TYPE_DEFAULT, "placeholder set = %@", buf, 0xCu);
    }

    v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v42 = v15;
    v43 = [v42 countByEnumeratingWithState:&v81 objects:v90 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v82;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v82 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v81 + 1) + 8 * j);
          v48 = [xMLSpecification stringForPlaceholder:v47];
          [v41 setValue:v48 forKey:v47];
        }

        v44 = [v42 countByEnumeratingWithState:&v81 objects:v90 count:16];
      }

      while (v44);
    }

    loga = v42;

    v49 = _ICQGetLogSystem();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v92 = v41;
      _os_log_impl(&dword_275623000, v49, OS_LOG_TYPE_DEFAULT, "wordsToReplace* = %@", buf, 0xCu);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    allPages = [v72 allPages];
    v51 = [allPages countByEnumeratingWithState:&v77 objects:v89 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v78;
      do
      {
        for (k = 0; k != v52; ++k)
        {
          if (*v78 != v53)
          {
            objc_enumerationMutation(allPages);
          }

          v55 = *(*(&v77 + 1) + 8 * k);
          v56 = *(v18 + 992);
          navTitle2 = [v55 navTitle];
          v58 = [v56 replaceWordsIn:navTitle2 with:v41];
          [v55 setNavTitle:v58];

          v59 = *(v18 + 992);
          navSubTitle2 = [v55 navSubTitle];
          v61 = [v59 replaceWordsIn:navSubTitle2 with:v41];
          [v55 setNavSubTitle:v61];

          v62 = _ICQGetLogSystem();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            navTitle3 = [v55 navTitle];
            *buf = 138412290;
            v92 = navTitle3;
            _os_log_impl(&dword_275623000, v62, OS_LOG_TYPE_DEFAULT, "navtitle = %@", buf, 0xCu);
          }

          v64 = _ICQGetLogSystem();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            navSubTitle3 = [v55 navSubTitle];
            *buf = 138412290;
            v92 = navSubTitle3;
            _os_log_impl(&dword_275623000, v64, OS_LOG_TYPE_DEFAULT, "navSubTitle = %@", buf, 0xCu);
          }
        }

        v52 = [allPages countByEnumeratingWithState:&v77 objects:v89 count:16];
      }

      while (v52);
    }

    modelCopy = v72;
    [(RUIServerHookHandler *)selfCopy->_serverHookHandler processObjectModel:v72 isModal:1];
    hostingNavigationController = [(ICQUpgradeFlowManager *)selfCopy hostingNavigationController];
    isNavigationBarHidden = [hostingNavigationController isNavigationBarHidden];

    if (isNavigationBarHidden)
    {
      v68 = _ICQGetLogSystem();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v68, OS_LOG_TYPE_DEFAULT, "Navigation bar is hidden, resetting it to be visible.", buf, 2u);
      }

      hostingNavigationController2 = [(ICQUpgradeFlowManager *)selfCopy hostingNavigationController];
      [hostingNavigationController2 setNavigationBarHidden:0];
    }

    clientInfo = v71;
  }

  else
  {
    [(ICQUpgradeFlowManager *)self dismissUpgradeFlowWithSuccess:1];
    [(RUIServerHookHandler *)self->_serverHookHandler processObjectModel:modelCopy isModal:1];
  }
}

- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error
{
  v39 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  errorCopy = error;
  Nanoseconds = _ICQSignpostGetNanoseconds();
  v9 = _ICQSignpostLogSystem();
  v10 = v9;
  identifier = self->_loadRemoteUISignpost.identifier;
  if (identifier - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = @"NO";
    if (!errorCopy)
    {
      v12 = @"YES";
    }

    *buf = 138412290;
    *&buf[4] = v12;
    _os_signpost_emit_with_name_impl(&dword_275623000, v10, OS_SIGNPOST_INTERVAL_END, identifier, "UpsellLoadRemoteUI", "Success: %@", buf, 0xCu);
  }

  v13 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    identifier_low = LOWORD(self->_loadRemoteUISignpost.identifier);
    *buf = 67109634;
    *&buf[4] = identifier_low;
    if (errorCopy)
    {
      v29 = @"NO";
    }

    else
    {
      v29 = @"YES";
    }

    *&buf[8] = 2048;
    *&buf[10] = Nanoseconds / 1000000000.0;
    *&buf[18] = 2112;
    *&buf[20] = v29;
    _os_log_debug_impl(&dword_275623000, v13, OS_LOG_TYPE_DEBUG, "SIGNPOST END   [id: %hu]: (%.4fs) UpsellLoadRemoteUI Success: %@", buf, 0x1Cu);
  }

  if (errorCopy)
  {
    userInfo = [errorCopy userInfo];
    v15 = [userInfo objectForKeyedSubscript:@"statusCode"];
    v16 = [v15 intValue] == 401;

    if (!v16)
    {
      self->_renewCredentialsCount = 0;
LABEL_15:
      v19 = [errorCopy code] == -1009;
      v20 = _ICQGetLogSystem();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v21)
        {
          v22 = [errorCopy debugDescription];
          *buf = 138412290;
          *&buf[4] = v22;
          _os_log_impl(&dword_275623000, v20, OS_LOG_TYPE_DEFAULT, "RemoteUIController finished loading with network error: %@", buf, 0xCu);
        }

        [(ICQUpgradeFlowManager *)self showNetworkFailurePage];
      }

      else
      {
        if (v21)
        {
          v23 = [errorCopy debugDescription];
          *buf = 138412290;
          *&buf[4] = v23;
          _os_log_impl(&dword_275623000, v20, OS_LOG_TYPE_DEFAULT, "RemoteUIController finished loading with error: %@", buf, 0xCu);
        }

        [(ICQUpgradeFlowManager *)self showUpgradeFailurePage];
      }

      goto LABEL_27;
    }

    if (self->_renewCredentialsCount)
    {
      v17 = _ICQGetLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ICQUpgradeFlowManager remoteUIController:didFinishLoadWithError:];
      }

      self->_renewCredentialsCount = 0;
      didComplete = self->_didComplete;
      if (didComplete)
      {
        didComplete[2](didComplete, 0);
      }

      goto LABEL_15;
    }

    self->_renewCredentialsCount = 1;
    v24 = _ICQGetLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v24, OS_LOG_TYPE_DEFAULT, "We've got a 401, let's try renewing credentials", buf, 2u);
    }

    objc_initWeak(&location, self);
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v25 = getINDaemonConnectionClass_softClass;
    v36 = getINDaemonConnectionClass_softClass;
    if (!getINDaemonConnectionClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getINDaemonConnectionClass_block_invoke;
      *&buf[24] = &unk_27A65A9F8;
      v38 = &v33;
      __getINDaemonConnectionClass_block_invoke(buf);
      v25 = v34[3];
    }

    v26 = v25;
    _Block_object_dispose(&v33, 8);
    v27 = objc_alloc_init(v25);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __67__ICQUpgradeFlowManager_remoteUIController_didFinishLoadWithError___block_invoke;
    v30[3] = &unk_27A65A8E8;
    objc_copyWeak(&v31, &location);
    [v27 renewCredentialsWithCompletion:v30];
    objc_destroyWeak(&v31);

    objc_destroyWeak(&location);
  }

LABEL_27:
}

void __67__ICQUpgradeFlowManager_remoteUIController_didFinishLoadWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Renew credential results: %lu - error: %@", buf, 0x16u);
  }

  if (WeakRetained)
  {
    if (a2)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__ICQUpgradeFlowManager_remoteUIController_didFinishLoadWithError___block_invoke_177;
      block[3] = &unk_27A65A820;
      block[4] = WeakRetained;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      v8 = _ICQGetLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Hey, it worked. Let's replay the request.", buf, 2u);
      }

      v9 = [WeakRetained remoteUIController];
      v10 = [WeakRetained serverUIURL];
      v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:MEMORY[0x277CBEC10] requiringSecureCoding:0 error:0];
      [v9 loadURL:v10 postBody:v11];
    }
  }
}

- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController
{
  objc_storeStrong(&self->_hostingNavigationController, navigationController);
  navigationControllerCopy = navigationController;
  [(UINavigationController *)self->_hostingNavigationController setDelegate:self];
}

- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "RemoteUI modal navigation controller dismissed.", v5, 2u);
  }
}

- (void)remoteUIControllerDidDismiss:(id)dismiss
{
  v9[1] = *MEMORY[0x277D85DE8];
  closeURL = [(ICQUpgradeFlowManager *)self closeURL];

  if (closeURL)
  {
    v5 = MEMORY[0x277D7F370];
    v8 = *MEMORY[0x277D7F268];
    closeURL2 = [(ICQUpgradeFlowManager *)self closeURL];
    v9[0] = closeURL2;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v5 performAction:124 parameters:v7 options:2];
  }

  [(ICQUpgradeFlowManager *)self _cancelFlow];
}

- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally
{
  modelCopy = model;
  clientInfo = [modelCopy clientInfo];
  v7 = [clientInfo objectForKeyedSubscript:@"action"];
  v8 = _ICQActionForServerActionString();

  if (v8 == 118)
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Detected clientInfo action Direct to Oslo. Attempting to launch oslo.", buf, 2u);
    }

    v10 = [modelCopy subElementWithID:@"upgradeButton"];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__ICQUpgradeFlowManager_remoteUIController_didPresentObjectModel_modally___block_invoke;
    v12[3] = &unk_27A65A708;
    v13 = modelCopy;
    v14 = v10;
    v11 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __74__ICQUpgradeFlowManager_remoteUIController_didPresentObjectModel_modally___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Direct to Oslo, activating button. success: %hhd error: %@", v6, 0x12u);
  }
}

- (void)showNetworkFailurePage
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  upgradeFlowSpecification = [(ICQOffer *)self->_offer upgradeFlowSpecification];
  upgradeFailurePageForNetwork = [upgradeFlowSpecification upgradeFailurePageForNetwork];

  [(ICQUpgradeFlowManager *)self _presentPageWithSpecification:upgradeFailurePageForNetwork];
}

- (void)showUpgradeFailurePage
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  upgradeFlowSpecification = [(ICQOffer *)self->_offer upgradeFlowSpecification];
  upgradeFailurePage = [upgradeFlowSpecification upgradeFailurePage];

  [(ICQUpgradeFlowManager *)self _presentPageWithSpecification:upgradeFailurePage];
}

- (void)dismissUpgradeFlowWithSuccess:(BOOL)success
{
  if (self->_hostingNavigationController)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __55__ICQUpgradeFlowManager_dismissUpgradeFlowWithSuccess___block_invoke;
    v3[3] = &unk_27A65A930;
    successCopy = success;
    v3[4] = self;
    [(ICQUpgradeFlowManager *)self dismissNavigationControllerAnimated:1 success:success completion:v3];
  }
}

uint64_t __55__ICQUpgradeFlowManager_dismissUpgradeFlowWithSuccess___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 _sendDelegateComplete];
  }

  else
  {
    return [v2 _sendDelegateCancel];
  }
}

- (void)presentHostingNavigationController
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    presentingViewController = self->_presentingViewController;
    hostingNavigationController = self->_hostingNavigationController;
    v8 = 138412546;
    v9 = presentingViewController;
    v10 = 2112;
    v11 = hostingNavigationController;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "ICQUpgradeFlowManger manual presentation request. presentingViewController: %@ hostingNavigationController: %@", &v8, 0x16u);
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = self->_presentingViewController;
  if (v6)
  {
    v7 = self->_hostingNavigationController;
    if (v7)
    {
      self->_shouldNavigationControllerBeDismissed = 1;
      [(UIViewController *)v6 presentPreferredSizeWithViewController:v7 animated:1 completion:0];
    }
  }
}

- (id)presentationContext
{
  p_hostingNavigationController = &self->_hostingNavigationController;
  presentingViewController = [(UINavigationController *)self->_hostingNavigationController presentingViewController];
  if (presentingViewController)
  {
  }

  else
  {
    parentViewController = [(UINavigationController *)self->_hostingNavigationController parentViewController];

    if (!parentViewController)
    {
      p_hostingNavigationController = &self->_presentingViewController;
    }
  }

  v6 = *p_hostingNavigationController;

  return v6;
}

- (void)_simulateDoneButton
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ICQUpgradeFlowManager__simulateDoneButton__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__ICQUpgradeFlowManager__simulateDoneButton__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Simulating tap of post-purchase Done button.", v5, 2u);
  }

  v3 = *(a1 + 32);
  v6 = *MEMORY[0x277D7F270];
  v7[0] = @"appCtxSuccessBtnId";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 sender:v3 action:5 parameters:v4];
}

- (void)_initiateFamilySetupFlow
{
  if ([(ICQUpgradeFlowManager *)self completedFamilySetup])
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Family setup already completed. Ignoring.", buf, 2u);
    }
  }

  else
  {
    *buf = 0;
    v18 = buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v4 = getFACircleStateControllerClass_softClass;
    v31 = getFACircleStateControllerClass_softClass;
    if (!getFACircleStateControllerClass_softClass)
    {
      *v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __getFACircleStateControllerClass_block_invoke;
      v26 = &unk_27A65A9F8;
      v27 = &v28;
      __getFACircleStateControllerClass_block_invoke(v23);
      v4 = v29[3];
    }

    v5 = v4;
    _Block_object_dispose(&v28, 8);
    v22 = [[v4 alloc] initWithPresenter:self->_hostingNavigationController];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v6 = getFACircleContextClass_softClass;
    v31 = getFACircleContextClass_softClass;
    if (!getFACircleContextClass_softClass)
    {
      *v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __getFACircleContextClass_block_invoke;
      v26 = &unk_27A65A9F8;
      v27 = &v28;
      __getFACircleContextClass_block_invoke(v23);
      v6 = v29[3];
    }

    v7 = v6;
    _Block_object_dispose(&v28, 8);
    v8 = [v6 alloc];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v9 = getFACircleEventTypeInitiateSymbolLoc_ptr;
    v31 = getFACircleEventTypeInitiateSymbolLoc_ptr;
    if (!getFACircleEventTypeInitiateSymbolLoc_ptr)
    {
      *v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __getFACircleEventTypeInitiateSymbolLoc_block_invoke;
      v26 = &unk_27A65A9F8;
      v27 = &v28;
      v10 = FamilyCircleUILibrary();
      v11 = dlsym(v10, "FACircleEventTypeInitiate");
      *(v27[1] + 24) = v11;
      getFACircleEventTypeInitiateSymbolLoc_ptr = *(v27[1] + 24);
      v9 = v29[3];
    }

    _Block_object_dispose(&v28, 8);
    if (v9)
    {
      v12 = *v9;
      v13 = [v8 initWithEventType:v12];

      [v13 setClientName:@"iCloudStorage"];
      v14 = _ICQGetLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "Initiating Family setup flow", v23, 2u);
      }

      v15 = *(v18 + 5);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __49__ICQUpgradeFlowManager__initiateFamilySetupFlow__block_invoke;
      v16[3] = &unk_27A65A958;
      v16[4] = self;
      v16[5] = buf;
      [v15 performOperationWithContext:v13 completion:v16];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      dlerror();
      abort_report_np();
      __break(1u);
    }
  }
}

void __49__ICQUpgradeFlowManager__initiateFamilySetupFlow__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Completed Family setup flow with success:%d error:%{public}@", v9, 0x12u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  [*(a1 + 32) setCompletedFamilySetup:a2];
  [*(a1 + 32) _simulateDoneButton];
}

- (void)_sendDelegateLoadError:(id)error
{
  errorCopy = error;
  delegate = [(ICQUpgradeFlowManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  delegate2 = [(ICQUpgradeFlowManager *)self delegate];
  delegate3 = delegate2;
  if (v5)
  {
    [delegate2 upgradeFlowManagerDidFail:self error:errorCopy];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }

    delegate3 = [(ICQUpgradeFlowManager *)self delegate];
    [delegate3 manager:self loadDidFailWithError:errorCopy];
  }

LABEL_6:
}

- (void)_sendDelegateCancel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ICQUpgradeFlowManager__sendDelegateCancel__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__ICQUpgradeFlowManager__sendDelegateCancel__block_invoke(uint64_t a1)
{
  [objc_opt_class() removeActiveFlowManager:*(a1 + 32)];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 upgradeFlowManagerDidCancel:*(a1 + 32)];
  }
}

- (void)_sendDelegateComplete
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ICQUpgradeFlowManager__sendDelegateComplete__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__ICQUpgradeFlowManager__sendDelegateComplete__block_invoke(uint64_t a1)
{
  [objc_opt_class() removeActiveFlowManager:*(a1 + 32)];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 upgradeFlowManagerDidComplete:*(a1 + 32)];

    v5 = MEMORY[0x277D7F350];

    [v5 sendEventFor:3 withBundleID:0 link:0];
  }
}

- (void)_sendDelegateDidPresentViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(ICQUpgradeFlowManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICQUpgradeFlowManager *)self delegate];
    [delegate2 upgradeFlowManager:self didPresentViewController:controllerCopy];
  }
}

- (ICQUpgradeFlowManager)initWithJourneyId:(id)id params:(id)params
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  paramsCopy = params;
  mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
  currentDefaultOffer = [mEMORY[0x277D7F390] currentDefaultOffer];

  v10 = [(ICQUpgradeFlowManager *)self initWithOffer:currentDefaultOffer];
  if (!v10)
  {
LABEL_6:
    v16 = v10;
    goto LABEL_10;
  }

  v11 = [currentDefaultOffer journeyLinkForId:idCopy];
  if (v11)
  {
    v12 = v11;
    serverUIURL = [v11 serverUIURL];
    v14 = [(ICQUpgradeFlowManager *)v10 addParams:paramsCopy toJourneyURL:serverUIURL];

    [v12 setServerUIURL:v14];
    [(ICQUpgradeFlowManager *)v10 setIcqLink:v12];
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Created flow manager with journey URL: %@", &v19, 0xCu);
    }

    goto LABEL_6;
  }

  v17 = _ICQGetLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [(ICQUpgradeFlowManager *)idCopy initWithJourneyId:currentDefaultOffer params:v17];
  }

  v16 = 0;
LABEL_10:

  return v16;
}

+ (void)flowManagerWithJourneyId:(id)id params:(id)params completion:(id)completion
{
  idCopy = id;
  paramsCopy = params;
  completionCopy = completion;
  mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__ICQUpgradeFlowManager_flowManagerWithJourneyId_params_completion___block_invoke;
  v14[3] = &unk_27A65A980;
  v16 = paramsCopy;
  v17 = completionCopy;
  v15 = idCopy;
  v11 = paramsCopy;
  v12 = completionCopy;
  v13 = idCopy;
  [mEMORY[0x277D7F390] getDefaultOfferWithCompletion:v14];
}

void __68__ICQUpgradeFlowManager_flowManagerWithJourneyId_params_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [[ICQUpgradeFlowManager alloc] initWithOffer:v5];
  v8 = [v5 journeyLinkForId:a1[4]];
  v9 = v8;
  if (v8)
  {
    v10 = a1[5];
    v11 = [v8 serverUIURL];
    v12 = [(ICQUpgradeFlowManager *)v7 addParams:v10 toJourneyURL:v11];

    [v9 setServerUIURL:v12];
    [(ICQUpgradeFlowManager *)v7 setIcqLink:v9];
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "Created flow manager with journey URL: %@", &v15, 0xCu);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __68__ICQUpgradeFlowManager_flowManagerWithJourneyId_params_completion___block_invoke_cold_1(a1 + 4, v5, v14);
    }

    (*(a1[6] + 16))();
  }
}

- (void)beginJourney
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "requestedServerUIURL is nil. Use initWithJourneyId: to initialize %{public}@ before calling beginJourney", &v4, 0xCu);
}

- (id)addParams:(id)params toJourneyURL:(id)l
{
  v21 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  absoluteString = [l absoluteString];
  v7 = [absoluteString mutableCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = paramsCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"&%@", *(*(&v16 + 1) + 8 * i)];
        [v7 appendString:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [MEMORY[0x277CBEBC0] URLWithString:v7];

  return v14;
}

- (void)liftUIPresenterDidComplete:(id)complete
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[ICQUpgradeFlowManager liftUIPresenterDidComplete:]";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__ICQUpgradeFlowManager_liftUIPresenterDidComplete___block_invoke;
  v5[3] = &unk_27A65A820;
  v5[4] = self;
  [(ICQUpgradeFlowManager *)self dismissNavigationControllerAnimated:1 success:1 completion:v5];
}

- (void)liftUIPresenterDidCancel:(id)cancel
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[ICQUpgradeFlowManager liftUIPresenterDidCancel:]";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  hostingNavigationController = [(ICQUpgradeFlowManager *)self hostingNavigationController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__ICQUpgradeFlowManager_liftUIPresenterDidCancel___block_invoke;
  v6[3] = &unk_27A65A820;
  v6[4] = self;
  [hostingNavigationController dismissViewControllerAnimated:1 completion:v6];
}

- (void)liftUIPresenter:(id)presenter performAction:(int64_t)action parameters:(id)parameters completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  parametersCopy = parameters;
  completionCopy = completion;
  v12 = _ICQGetLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = _ICQStringForAction();
    *buf = 136315394;
    v35 = "[ICQUpgradeFlowManager liftUIPresenter:performAction:parameters:completion:]";
    v36 = 2112;
    v37 = v13;
    _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "%s action:%@", buf, 0x16u);
  }

  v14 = objc_alloc_init(MEMORY[0x277D461E8]);
  [v14 setName:@"LiftUI Proxy"];
  [v14 setClientInfo:parametersCopy];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  serverHooks = [(ICQUpgradeFlowManager *)self serverHooks];
  v16 = [serverHooks countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(serverHooks);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        if ([v20 shouldMatchModel:v14])
        {
          [v20 setDelegate:self];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __77__ICQUpgradeFlowManager_liftUIPresenter_performAction_parameters_completion___block_invoke;
          v26[3] = &unk_27A65A9D0;
          v28 = completionCopy;
          v26[4] = v20;
          v26[5] = self;
          v24 = presenterCopy;
          v27 = presenterCopy;
          [v20 processObjectModel:v14 completion:v26];

          goto LABEL_16;
        }
      }

      v17 = [serverHooks countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  if (action == 112 && ([parametersCopy objectForKeyedSubscript:@"url"], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    v22 = [parametersCopy objectForKeyedSubscript:@"url"];
    v23 = [parametersCopy objectForKeyedSubscript:@"httpMethod"];
    [(ICQUpgradeFlowManager *)self _handleRemoteUIActionWithURLString:v22 httpMethod:v23];

    (*(completionCopy + 2))(completionCopy, 1, 0);
    v24 = presenterCopy;
  }

  else
  {
    v24 = presenterCopy;
    [(ICQUpgradeFlowManager *)self sender:presenterCopy action:action parameters:parametersCopy];
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

LABEL_16:
}

void __77__ICQUpgradeFlowManager_liftUIPresenter_performAction_parameters_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__ICQUpgradeFlowManager_liftUIPresenter_performAction_parameters_completion___block_invoke_2;
  v7[3] = &unk_27A65A9A8;
  v12 = a2;
  v8 = v5;
  v11 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __77__ICQUpgradeFlowManager_liftUIPresenter_performAction_parameters_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (*(a1 + 72))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "LiftUI server hook handler completed with success:%@ error:%@", &v9, 0x16u);
  }

  if (*(a1 + 64))
  {
    v5 = [*(a1 + 40) continuationResponseBody];
    if (v5)
    {
      objc_storeStrong((*(a1 + 48) + 72), v5);
      [*(a1 + 56) updateStoreDataForKey:@"refreshBody" value:v5];
    }

    v6 = [*(a1 + 32) domain];
    if ([v6 isEqualToString:*MEMORY[0x277CEE188]])
    {
      v7 = [*(a1 + 32) code];

      if (v7 == 6)
      {
        v8 = *(*(a1 + 64) + 16);
LABEL_14:
        v8();

        return;
      }
    }

    else
    {
    }

    v8 = *(*(a1 + 64) + 16);
    goto LABEL_14;
  }
}

- (void)_handleRemoteUIActionWithURLString:(id)string httpMethod:(id)method
{
  methodCopy = method;
  v17 = methodCopy;
  if (methodCopy)
  {
    v7 = methodCopy;
  }

  else
  {
    v7 = @"POST";
  }

  v8 = MEMORY[0x277CCAB70];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:string];
  v10 = [v8 requestWithURL:v9];

  uppercaseString = [(__CFString *)v7 uppercaseString];
  v12 = [uppercaseString isEqualToString:@"POST"];

  if (v12)
  {
    nextRefreshBody = self->_nextRefreshBody;
    self->_nextRefreshBody = 0;
    v14 = nextRefreshBody;

    v15 = [MEMORY[0x277CCAC58] dataWithPropertyList:v14 format:100 options:0 error:0];

    [v10 setHTTPBody:v15];
    uppercaseString2 = [(__CFString *)v7 uppercaseString];
    [v10 setHTTPMethod:uppercaseString2];
  }

  [(ICQUpgradeFlowManager *)self _presentRemoteViewWithData:0 andRequest:v10];
}

- (void)liftUIPresenter:(id)presenter didLoadWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v25 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  Nanoseconds = _ICQSignpostGetNanoseconds();
  v9 = _ICQSignpostLogSystem();
  v10 = v9;
  identifier = self->_loadLiftUISignpost.identifier;
  if (identifier - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = @"NO";
    if (successCopy)
    {
      v12 = @"YES";
    }

    v21 = 138412290;
    *v22 = v12;
    _os_signpost_emit_with_name_impl(&dword_275623000, v10, OS_SIGNPOST_INTERVAL_END, identifier, "UpsellLoadLiftUI", "Success: %@", &v21, 0xCu);
  }

  v13 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    identifier_low = LOWORD(self->_loadLiftUISignpost.identifier);
    v21 = 67109634;
    *v22 = identifier_low;
    if (successCopy)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    *&v22[4] = 2048;
    *&v22[6] = Nanoseconds / 1000000000.0;
    v23 = 2112;
    v24 = v20;
    _os_log_debug_impl(&dword_275623000, v13, OS_LOG_TYPE_DEBUG, "SIGNPOST END   [id: %hu]: (%.4fs) UpsellLoadLiftUI Success: %@", &v21, 0x1Cu);
  }

  if (!successCopy)
  {
    code = [errorCopy code];
    v15 = _ICQGetLogSystem();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (code == -1009)
    {
      if (v16)
      {
        v17 = [errorCopy debugDescription];
        v21 = 138412290;
        *v22 = v17;
        _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "RemoteUIController finished loading with network error: %@", &v21, 0xCu);
      }

      [(ICQUpgradeFlowManager *)self showNetworkFailurePage];
    }

    else
    {
      if (v16)
      {
        v18 = [errorCopy debugDescription];
        v21 = 138412290;
        *v22 = v18;
        _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "RemoteUIController finished loading with error: %@", &v21, 0xCu);
      }

      [(ICQUpgradeFlowManager *)self showUpgradeFailurePage];
    }
  }
}

- (void)dismissObjectModelsAnimated:(BOOL)animated completion:(id)completion
{
  v4 = [(ICQUpgradeFlowManager *)self hostingNavigationController:animated];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)presentFlowHostedInNavigationController:(id)controller
{
  controllerCopy = controller;
  offer = [(ICQUpgradeFlowManager *)self offer];
  upgradeFlowSpecification = [offer upgradeFlowSpecification];

  offer2 = [(ICQUpgradeFlowManager *)self offer];
  v9 = [offer2 alertSpecificationAtIndex:0];
  [upgradeFlowSpecification setStartAlert:v9];

  startPage = [upgradeFlowSpecification startPage];

  if (!startPage)
  {
    startAlert = [upgradeFlowSpecification startAlert];

    v13 = _ICQGetLogSystem();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (startAlert)
    {
      if (v14)
      {
        v18 = 0;
        v15 = "startAlert not supported for hosted presentation";
        v16 = &v18;
LABEL_8:
        _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
      }
    }

    else if (v14)
    {
      v17 = 0;
      v15 = "offer missing upgrade flow specification";
      v16 = &v17;
      goto LABEL_8;
    }

    startPage2 = ICQCreateError();
    [(ICQUpgradeFlowManager *)self _sendDelegateLoadError:startPage2];
    goto LABEL_10;
  }

  objc_storeStrong(&self->_hostingNavigationController, controller);
  [(UINavigationController *)self->_hostingNavigationController setDelegate:self];
  self->_shouldNavigationControllerBeDismissed = 0;
  startPage2 = [upgradeFlowSpecification startPage];
  [(ICQUpgradeFlowManager *)self _presentPageWithSpecification:startPage2];
LABEL_10:
}

- (void)remoteUIFlowManager:(id)manager didLoadWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v24 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (successCopy)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    localizedDescription = [errorCopy localizedDescription];
    v16 = 136315906;
    v17 = "[ICQUpgradeFlowManager remoteUIFlowManager:didLoadWithSuccess:error:]";
    v18 = 2112;
    v19 = managerCopy;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = localizedDescription;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "%s: %@, success: %@, error: %@", &v16, 0x2Au);
  }

  hostingNavigationController = [(ICQUpgradeFlowManager *)self hostingNavigationController];
  isNavigationBarHidden = [hostingNavigationController isNavigationBarHidden];

  if (isNavigationBarHidden)
  {
    hostingNavigationController2 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [hostingNavigationController2 setNavigationBarHidden:0];
  }
}

- (void)beginOSLOFlowWithPresentingViewController:(id)controller
{
  osloPresenter = self->_osloPresenter;
  if (!osloPresenter)
  {
    controllerCopy = controller;
    v6 = [[ICQUIOSLOPresenter alloc] initWithOffer:self->_offer link:self->_icqLink presenter:controllerCopy];

    v7 = self->_osloPresenter;
    self->_osloPresenter = v6;

    [(ICQUIOSLOPresenter *)self->_osloPresenter setDelegate:self];
    osloPresenter = self->_osloPresenter;
  }

  [(ICQUIOSLOPresenter *)osloPresenter beginOSLOPurchaseFlow];
}

- (void)purchaseFlowCompletedWith:(BOOL)with error:(id)error
{
  withCopy = with;
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    osloPresenter = self->_osloPresenter;
    if (withCopy)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    localizedDescription = [errorCopy localizedDescription];
    v14 = 136315906;
    v15 = "[ICQUpgradeFlowManager purchaseFlowCompletedWith:error:]";
    v16 = 2112;
    v17 = osloPresenter;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = localizedDescription;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@, success: %@, error: %@", &v14, 0x2Au);
  }

  delegate = [(ICQUpgradeFlowManager *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(ICQUpgradeFlowManager *)self delegate];
    [delegate2 upgradeFlowManagerDidComplete:self];
  }
}

- (ICQUpgradeFlowManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (icq_signpost_s)loadLiftUISignpost
{
  timestamp = self->_loadLiftUISignpost.timestamp;
  identifier = self->_loadLiftUISignpost.identifier;
  result.timestamp = timestamp;
  result.identifier = identifier;
  return result;
}

- (icq_signpost_s)loadRemoteUISignpost
{
  timestamp = self->_loadRemoteUISignpost.timestamp;
  identifier = self->_loadRemoteUISignpost.identifier;
  result.timestamp = timestamp;
  result.identifier = identifier;
  return result;
}

- (void)beginPostPurchaseFlowWithLink:(id)link offer:(id)offer
{
  offerCopy = offer;
  linkCopy = link;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Preparing out of process upgradeFlowManager to present purchase completion flow.", v16, 2u);
  }

  v9 = +[ICQUIOutOfProcessUpgradeFlowManager sharedManager];
  delegate = [(ICQUpgradeFlowManager *)self delegate];
  [v9 setDelegate:delegate];

  flowOptions = [(ICQUpgradeFlowManager *)self flowOptions];
  [v9 setFlowOptions:flowOptions];

  offer = [(ICQUpgradeFlowManager *)self offer];
  [v9 setOffer:offer];

  icqLink = [(ICQUpgradeFlowManager *)self icqLink];
  [v9 setLink:icqLink];

  [v9 setFlowManager:self];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [v9 setPresentingSceneBundleIdentifier:bundleIdentifier];

  [v9 beginPostPurchaseFlowWithOffer:offerCopy link:linkCopy];
}

+ (void)needsToRunWithCompletion:(id)completion
{
  completionCopy = completion;
  if (needsToRunWithCompletion__onceToken != -1)
  {
    +[ICQUpgradeFlowManager(ICQBuddy) needsToRunWithCompletion:];
  }

  mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
  isBuddyOfferEnabled = [mEMORY[0x277D7F390] isBuddyOfferEnabled];

  if (isBuddyOfferEnabled)
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 0;
    v7 = dispatch_time(0, 10000000000);
    v8 = needsToRunWithCompletion__dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__ICQUpgradeFlowManager_ICQBuddy__needsToRunWithCompletion___block_invoke_2;
    block[3] = &unk_27A65B4D0;
    v19 = v21;
    v20 = v23;
    v9 = completionCopy;
    v18 = v9;
    dispatch_after(v7, v8, block);
    mEMORY[0x277D7F390]2 = [MEMORY[0x277D7F390] sharedOfferManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__ICQUpgradeFlowManager_ICQBuddy__needsToRunWithCompletion___block_invoke_9;
    v12[3] = &unk_27A65B520;
    v14 = v23;
    v15 = v21;
    v13 = v9;
    selfCopy = self;
    [mEMORY[0x277D7F390]2 getOfferForBundleIdentifier:@"com.apple.purplebuddy" completion:v12];

    _Block_object_dispose(v21, 8);
    _Block_object_dispose(v23, 8);
  }

  else
  {
    v11 = ICQCreateErrorWithMessage();
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __60__ICQUpgradeFlowManager_ICQBuddy__needsToRunWithCompletion___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.cloud.quota.buddyNeedsToRun", 0);
  v1 = needsToRunWithCompletion__dispatchQueue;
  needsToRunWithCompletion__dispatchQueue = v0;
}

void __60__ICQUpgradeFlowManager_ICQBuddy__needsToRunWithCompletion___block_invoke_2(void *a1)
{
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 1;
    v2 = _ICQGetLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "needsToRunWithCompletion: took too long to determine answer, so NERP", v5, 2u);
    }

    if (*(*(a1[6] + 8) + 24) == 1)
    {
      v3 = a1[4];
      v4 = ICQCreateErrorWithMessage();
      (*(v3 + 16))(v3, 0, v4);
    }
  }
}

void __60__ICQUpgradeFlowManager_ICQBuddy__needsToRunWithCompletion___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = needsToRunWithCompletion__dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ICQUpgradeFlowManager_ICQBuddy__needsToRunWithCompletion___block_invoke_2_10;
  block[3] = &unk_27A65B4F8;
  v16 = *(a1 + 48);
  v13 = v6;
  v11 = *(a1 + 32);
  v8 = v11;
  v15 = v11;
  v14 = v5;
  v17 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void __60__ICQUpgradeFlowManager_ICQBuddy__needsToRunWithCompletion___block_invoke_2_10(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    if (*(a1 + 32))
    {
      v2 = _ICQGetLogSystem();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 32);
        v11 = 138412290;
        v12 = v3;
        _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Setup Assistant should not run upgrade flow due to ICQ error %@", &v11, 0xCu);
      }

      v4 = *(*(a1 + 48) + 16);
LABEL_12:
      v4();
      return;
    }

    if ([*(a1 + 40) isBuddyOffer])
    {
      v5 = [*(a1 + 72) shouldShowForOffer:*(a1 + 40)];
      v6 = _ICQGetLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = @"should not";
        if (v5)
        {
          v7 = @"should";
        }

        v11 = 138543362;
        v12 = v7;
        _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Setup Assitant %{public}@ run upgrade flow", &v11, 0xCu);
      }

      v4 = *(*(a1 + 48) + 16);
      goto LABEL_12;
    }

    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "ERROR: offer is not a buddy offer", &v11, 2u);
    }

    v9 = *(a1 + 48);
    v10 = ICQCreateErrorWithMessage();
    (*(v9 + 16))(v9, 0, v10);
  }
}

- (void)_presentLiftUIUsingViewController:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 serverUIURL];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_275623000, v3, v4, "SIGNPOST BEGIN [id: %hu]: UpsellLoadLiftUI  enableTelemetry=YES URL: %@", v5, v6, v7, v8, 2u);
}

- (void)_presentRemoteViewWithData:(uint64_t)a1 andRequest:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 offer];
  v3 = [v2 remoteUIURL];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_275623000, v4, v5, "SIGNPOST BEGIN [id: %hu]: UpsellLoadRemoteUI  enableTelemetry=YES URL: %@", v6, v7, v8, v9, 2u);
}

- (void)initWithJourneyId:(NSObject *)a3 params:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_4(&dword_275623000, a2, a3, "Unable to retrieve journey link with id %@, in offer %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __68__ICQUpgradeFlowManager_flowManagerWithJourneyId_params_completion___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_4(&dword_275623000, a2, a3, "Unable to retrieve journey link with id %@, in offer %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end