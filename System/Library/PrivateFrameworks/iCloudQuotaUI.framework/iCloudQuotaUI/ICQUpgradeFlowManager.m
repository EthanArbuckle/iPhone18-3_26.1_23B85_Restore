@interface ICQUpgradeFlowManager
+ (BOOL)shouldShowForOffer:(id)a3;
+ (NSMutableArray)activeFlowManagers;
+ (void)addActiveFlowManager:(id)a3;
+ (void)flowManagerWithJourneyId:(id)a3 params:(id)a4 completion:(id)a5;
+ (void)needsToRunWithCompletion:(id)a3;
+ (void)removeActiveFlowManager:(id)a3;
- (BOOL)_shouldPresentLiftUIFlow;
- (BOOL)_shouldPresentRemoteFlow;
- (ICQUpgradeFlowManager)init;
- (ICQUpgradeFlowManager)initWithJourneyId:(id)a3 params:(id)a4;
- (ICQUpgradeFlowManager)initWithOffer:(id)a3;
- (ICQUpgradeFlowManagerDelegate)delegate;
- (NSURL)serverUIURL;
- (icq_signpost_s)loadLiftUISignpost;
- (icq_signpost_s)loadRemoteUISignpost;
- (id)_allowedInProcessClients;
- (id)_navControllerWithRootVC:(id)a3;
- (id)addParams:(id)a3 toJourneyURL:(id)a4;
- (id)initBaseclassWithOffer:(id)a3;
- (id)presentationContext;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (void)_addAlertActionForAlertSpec:(id)a3 buttonIndex:(int64_t)a4;
- (void)_beginRemoteFlowWithURL:(id)a3;
- (void)_beginRemoteFlowWithViewController:(id)a3;
- (void)_cancelFlow;
- (void)_clearBusyOfferViewController;
- (void)_configurePresentingViewController:(id)a3 andPresentedViewController:(id)a4;
- (void)_configurePresentingViewController:(id)a3 preloadedRemoteUIData:(id)a4;
- (void)_handleRemoteUIActionWithURLString:(id)a3 httpMethod:(id)a4;
- (void)_initiateFamilySetupFlow;
- (void)_openURL:(id)a3 completion:(id)a4;
- (void)_performPageButtonActionWithParameters:(id)a3 completion:(id)a4;
- (void)_presentLiftUIInParentViewController:(id)a3;
- (void)_presentLiftUIUsingViewController:(id)a3;
- (void)_presentPageWithSpecification:(id)a3;
- (void)_presentRemoteUIUsingViewController:(id)a3 withData:(id)a4;
- (void)_presentRemoteViewWithData:(id)a3 andRequest:(id)a4;
- (void)_presentUpgradeComplete;
- (void)_sendDelegateCancel;
- (void)_sendDelegateComplete;
- (void)_sendDelegateDidPresentViewController:(id)a3;
- (void)_sendDelegateLoadError:(id)a3;
- (void)_setBusyOfferViewController:(id)a3;
- (void)_simulateDoneButton;
- (void)_tappedAlertLink:(id)a3;
- (void)beginFlowWithPresentingViewController:(id)a3;
- (void)beginJourney;
- (void)beginOSLOFlowWithPresentingViewController:(id)a3;
- (void)beginPostPurchaseFlowWithLink:(id)a3 offer:(id)a4;
- (void)beginRemoteUpgradeFlowWithICQLink:(id)a3 presenter:(id)a4;
- (void)dismissNavigationControllerAnimated:(BOOL)a3 success:(BOOL)a4 completion:(id)a5;
- (void)dismissObjectModelsAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissUpgradeFlowWithSuccess:(BOOL)a3;
- (void)liftUIPresenter:(id)a3 didLoadWithSuccess:(BOOL)a4 error:(id)a5;
- (void)liftUIPresenter:(id)a3 performAction:(int64_t)a4 parameters:(id)a5 completion:(id)a6;
- (void)liftUIPresenterDidCancel:(id)a3;
- (void)liftUIPresenterDidComplete:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)presentFlowHostedInNavigationController:(id)a3;
- (void)presentHostingNavigationController;
- (void)presentRemoteViewWithData:(id)a3 andURL:(id)a4;
- (void)purchaseFlowCompletedWith:(BOOL)a3 error:(id)a4;
- (void)remoteUIController:(id)a3 didDismissModalNavigationWithObjectModels:(id)a4;
- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4;
- (void)remoteUIController:(id)a3 didPresentObjectModel:(id)a4 modally:(BOOL)a5;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
- (void)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5 withCompletionHandler:(id)a6;
- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4;
- (void)remoteUIControllerDidDismiss:(id)a3;
- (void)remoteUIFlowManager:(id)a3 didLoadWithSuccess:(BOOL)a4 error:(id)a5;
- (void)sender:(id)a3 action:(int64_t)a4 parameters:(id)a5;
- (void)setPresentingSceneBundleIdentifier:(id)a3;
- (void)setPresentingSceneIdentifier:(id)a3;
- (void)showNetworkFailurePage;
- (void)showUpgradeFailurePage;
- (void)startFlowWithParentViewController:(id)a3;
@end

@implementation ICQUpgradeFlowManager

- (ICQUpgradeFlowManager)init
{
  v3 = [MEMORY[0x277D7F390] sharedOfferManager];
  v4 = [v3 currentOffer];
  v5 = [(ICQUpgradeFlowManager *)self initWithOffer:v4];

  return v5;
}

- (ICQUpgradeFlowManager)initWithOffer:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ICQUpgradeFlowManager;
  v5 = [(ICQUpgradeFlowManager *)&v14 init];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 upgradeFlowSpecification];
    v8 = [v7 offerType];

    v9 = [ICQUIUpgradeFlowFactory flowManagerClassForOfferType:v8];
    if (v9)
    {
      v10 = [[v9 alloc] initSubclassWithOffer:v4];
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

- (id)initBaseclassWithOffer:(id)a3
{
  v27[7] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21.receiver = self;
  v21.super_class = ICQUpgradeFlowManager;
  v6 = [(ICQUpgradeFlowManager *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_offer, a3);
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

- (void)setPresentingSceneIdentifier:(id)a3
{
  objc_storeStrong(&self->_presentingSceneIdentifier, a3);
  v5 = a3;
  [(ICQUpgradeStorageHook *)self->_upgradeStorageHook setPresentingSceneIdentifier:self->_presentingSceneIdentifier];
}

- (void)setPresentingSceneBundleIdentifier:(id)a3
{
  objc_storeStrong(&self->_presentingSceneBundleIdentifier, a3);
  v5 = a3;
  [(ICQUpgradeStorageHook *)self->_upgradeStorageHook setPresentingSceneBundleIdentifier:self->_presentingSceneBundleIdentifier];
}

- (NSURL)serverUIURL
{
  v3 = [(ICQUpgradeFlowManager *)self icqLink];
  v4 = [v3 actionURL];

  if (v4)
  {
    v5 = [(ICQUpgradeFlowManager *)self icqLink];
    v6 = [v5 actionURL];
LABEL_5:
    v9 = v6;

    goto LABEL_6;
  }

  v7 = [(ICQUpgradeFlowManager *)self offer];
  v8 = [v7 serverUIURL];

  if (v8)
  {
    v5 = [(ICQUpgradeFlowManager *)self offer];
    v6 = [v5 serverUIURL];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (BOOL)shouldShowForOffer:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 upgradeFlowSpecification];
  if (v4)
  {
    v5 = [v3 level];

    if (v5)
    {
      v4 = [v3 upgradeFlowSpecification];
      v6 = [v4 offerType];

      v7 = [ICQUIUpgradeFlowFactory flowManagerClassForOfferType:v6];
      LODWORD(v4) = [(objc_class *)v7 shouldSubclassShowForOffer:v3];
      v8 = _ICQGetLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = NSStringFromClass(v7);
        v10 = v9;
        v11 = @"NO";
        if (v4)
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
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)_tappedAlertLink:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 text];
    [v4 action];
    v7 = _ICQStringForAction();
    v8 = [v4 parameters];
    *buf = 138543874;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "tapped %{public}@ button; action:%{public}@ parameters:%@", buf, 0x20u);
  }

  v9 = [v4 parameters];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D7F270]];

  if (v10)
  {
    v11 = [MEMORY[0x277D7F390] sharedOfferManager];
    v12 = [(ICQUpgradeFlowManager *)self offer];
    v13 = [v12 offerId];
    [v11 updateOfferId:v13 buttonId:v10 info:0 completion:0];
  }

  v14 = [v4 action];
  if (v14 <= 4)
  {
    if (v14 <= 1)
    {
      if (v14)
      {
        if (v14 != 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else if ((v14 - 2) >= 2)
    {
      if (v14 != 4)
      {
        goto LABEL_25;
      }

      goto LABEL_8;
    }

    goto LABEL_21;
  }

  v15 = v14 - 100;
  if ((v14 - 100) > 0x12)
  {
    goto LABEL_15;
  }

  if (((1 << v15) & 0x711F8) != 0)
  {
LABEL_8:
    v16 = [v4 parameters];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __42__ICQUpgradeFlowManager__tappedAlertLink___block_invoke;
    v23[3] = &unk_27A65A7F8;
    v23[4] = self;
    [(ICQUpgradeFlowManager *)self _performPageButtonActionWithParameters:v16 completion:v23];

    goto LABEL_25;
  }

  if (((1 << v15) & 0x205) != 0)
  {
LABEL_21:
    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [v4 action];
      v20 = _ICQStringForAction();
      v21 = [v4 parameters];
      *buf = 138412546;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&dword_275623000, v19, OS_LOG_TYPE_DEFAULT, "Alert action:%@ parameters:%@ unexpected", buf, 0x16u);
    }

    goto LABEL_24;
  }

  if (v14 == 101)
  {
LABEL_24:
    [(ICQUpgradeFlowManager *)self _sendDelegateCancel];
    goto LABEL_25;
  }

LABEL_15:
  if (v14 == 5)
  {
    [(ICQUpgradeFlowManager *)self _sendDelegateComplete];
  }

  else if (v14 == 6)
  {
    v17 = [v4 parameters];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D7F280]];

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

- (void)_addAlertActionForAlertSpec:(id)a3 buttonIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 linkForButtonIndex:a4];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x277D750F8];
    v10 = [v7 text];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __65__ICQUpgradeFlowManager__addAlertActionForAlertSpec_buttonIndex___block_invoke;
    v15 = &unk_27A65A848;
    v16 = self;
    v17 = v8;
    v11 = [v9 actionWithTitle:v10 style:0 handler:&v12];

    if (v11)
    {
      [(ICQAlertController *)self->_upgradeAlertController addAction:v11, v12, v13, v14, v15, v16];
      if ([v6 defaultButtonIndex] == a4)
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

- (void)beginRemoteUpgradeFlowWithICQLink:(id)a3 presenter:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(ICQUpgradeFlowManager *)self setIcqLink:v6];
  v8 = [(ICQUpgradeFlowManager *)self offer];
  v9 = [v6 actionURL];
  [v8 _updateRequestedServerUIURLWithURL:v9];

  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(ICQUpgradeFlowManager *)self offer];
    [v11 action];
    v12 = _ICQStringForAction();
    [v6 action];
    v13 = _ICQStringForAction();
    v15 = 136315650;
    v16 = "[ICQUpgradeFlowManager beginRemoteUpgradeFlowWithICQLink:presenter:]";
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "%s: Overriding offer action %@ with link action %@", &v15, 0x20u);
  }

  v14 = [(ICQUpgradeFlowManager *)self offer];
  [v14 updateOfferWithAction:{objc_msgSend(v6, "action")}];

  [(ICQUpgradeFlowManager *)self _beginRemoteFlowWithViewController:v7];
}

- (void)_beginRemoteFlowWithURL:(id)a3
{
  v4 = a3;
  v5 = [(ICQUpgradeFlowManager *)self offer];
  [v5 _updateRequestedServerUIURLWithURL:v4];

  [(ICQUpgradeFlowManager *)self _beginRemoteFlowWithViewController:0];
}

- (void)_beginRemoteFlowWithViewController:(id)a3
{
  v4 = a3;
  v15 = +[ICQUIOutOfProcessUpgradeFlowManager sharedManager];
  v5 = [(ICQUpgradeFlowManager *)self delegate];
  [v15 setDelegate:v5];

  v6 = [(ICQUpgradeFlowManager *)self flowOptions];
  [v15 setFlowOptions:v6];

  v7 = [(ICQUpgradeFlowManager *)self offer];
  [v15 setOffer:v7];

  v8 = [(ICQUpgradeFlowManager *)self icqLink];
  [v15 setLink:v8];

  [v15 setFlowManager:self];
  v9 = [v4 view];
  v10 = [v9 window];
  v11 = [v10 windowScene];
  v12 = [v11 _sceneIdentifier];
  [v15 setPresentingSceneIdentifier:v12];

  v13 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [v13 bundleIdentifier];
  [v15 setPresentingSceneBundleIdentifier:v14];

  [v15 beginFlowWithViewController:v4];
}

- (void)beginFlowWithPresentingViewController:(id)a3
{
  v4 = a3;
  if ([(ICQUpgradeFlowManager *)self _shouldPresentRemoteFlow])
  {
    [(ICQUpgradeFlowManager *)self _beginRemoteFlowWithViewController:v4];
  }

  else
  {
    [(ICQUpgradeFlowManager *)self _configurePresentingViewController:v4];
  }
}

- (void)_configurePresentingViewController:(id)a3 andPresentedViewController:(id)a4
{
  v6 = a3;
  objc_storeStrong(&self->_hostingNavigationController, a4);
  v7 = a4;
  [(UINavigationController *)self->_hostingNavigationController setDelegate:self];
  v8 = [(UINavigationController *)self->_hostingNavigationController navigationBar];
  v9 = [(ICQUpgradeFlowManager *)self flowOptions];
  v10 = [v9 navigationBarTintColor];
  [v8 setTintColor:v10];

  self->_shouldNavigationControllerBeDismissed = 1;
  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = v6;

  v13 = [(ICQUpgradeFlowManager *)self offer];
  v12 = [v13 requestedServerUIURL];
  [(ICQUpgradeFlowManager *)self presentRemoteViewWithData:0 andURL:v12];
}

- (void)_configurePresentingViewController:(id)a3 preloadedRemoteUIData:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (![(ICQUpgradeFlowManager *)self _shouldPresentLiftUIFlow])
  {
    v9 = [(ICQUpgradeFlowManager *)self offer];
    v10 = [v9 upgradeFlowSpecification];

    v11 = [(ICQUpgradeFlowManager *)self offer];
    v12 = [v11 alertSpecificationAtIndex:0];
    [v10 setStartAlert:v12];

    if (v8)
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(ICQUpgradeFlowManager *)self offer];
        v15 = [v14 requestedServerUIURL];
        *buf = 138412290;
        v74 = v15;
        _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "presenting remoteUI URL %@ with preloaded data", buf, 0xCu);
      }

      v16 = self;
      v17 = v7;
      v18 = v8;
    }

    else
    {
      v19 = [(ICQUpgradeFlowManager *)self offer];
      v20 = [v19 requestedServerUIURL];

      if (!v20)
      {
        v24 = [v10 startPage];

        if (v24)
        {
          v25 = _ICQGetLogSystem();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_275623000, v25, OS_LOG_TYPE_DEFAULT, "presenting start page", buf, 2u);
          }

          v26 = [(ICQUpgradeFlowManager *)self offer];
          v27 = [v26 serverUIURL];

          if (v27)
          {
            v28 = [(ICQUpgradeFlowManager *)self offer];
            v29 = [v28 bundleIdentifier];
            v30 = [v29 isEqualToString:@"com.apple.icq"];

            if (v30)
            {
              objc_storeStrong(&self->_hostingNavigationController, a3);
              [(UINavigationController *)self->_hostingNavigationController setDelegate:self];
              v31 = [(UINavigationController *)self->_hostingNavigationController navigationBar];
              v32 = [(ICQUpgradeFlowManager *)self flowOptions];
              v33 = [v32 navigationBarTintColor];
              [v31 setTintColor:v33];

              self->_shouldNavigationControllerBeDismissed = 1;
            }

            else
            {
              v54 = [objc_alloc(MEMORY[0x277CECAF8]) initWithNibName:0 bundle:0];
              v55 = [(ICQUpgradeFlowManager *)self _navControllerWithRootVC:v54];
              hostingNavigationController = self->_hostingNavigationController;
              self->_hostingNavigationController = v55;

              v57 = [(UINavigationController *)self->_hostingNavigationController navigationBar];
              v58 = [(ICQUpgradeFlowManager *)self flowOptions];
              v59 = [v58 navigationBarTintColor];
              [v57 setTintColor:v59];

              if ([(ICQOffer *)self->_offer action]== 118)
              {
                v60 = _ICQGetLogSystem();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v74 = "[ICQUpgradeFlowManager _configurePresentingViewController:preloadedRemoteUIData:]";
                  _os_log_impl(&dword_275623000, v60, OS_LOG_TYPE_DEFAULT, "%s, Detected action direct to oslo, skipping presentation and saving presenting view controller", buf, 0xCu);
                }

                objc_storeStrong(&self->_presentingViewController, a3);
              }

              else
              {
                self->_shouldNavigationControllerBeDismissed = 1;
                [v7 presentPreferredSizeWithViewController:self->_hostingNavigationController animated:1 completion:0];
              }
            }

            [(ICQUpgradeFlowManager *)self presentRemoteViewWithData:0 andURL:v27];
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
            v44 = [v10 startPage];
            v45 = [(ICQViewController *)v43 initWithPageSpecification:v44];

            v46 = [(ICQUpgradeFlowManager *)self flowOptions];
            v47 = [v46 buttonTintColor];
            [(ICQViewController *)v45 setButtonTintColor:v47];

            v48 = [(ICQUpgradeFlowManager *)self offer];
            v49 = [v48 bundleIdentifier];
            v50 = [v49 isEqualToString:@"com.apple.icq"];

            if (v50)
            {
              objc_storeStrong(&self->_hostingNavigationController, a3);
              [(UINavigationController *)self->_hostingNavigationController setDelegate:self];
              v51 = [(UINavigationController *)self->_hostingNavigationController navigationBar];
              v52 = [(ICQUpgradeFlowManager *)self flowOptions];
              v53 = [v52 navigationBarTintColor];
              [v51 setTintColor:v53];

              self->_shouldNavigationControllerBeDismissed = 1;
              [(UINavigationController *)self->_hostingNavigationController pushViewController:v45 animated:0];
              [(ICQUpgradeFlowManager *)self _sendDelegateDidPresentViewController:v45];
            }

            else
            {
              v65 = [(ICQUpgradeFlowManager *)self _navControllerWithRootVC:v45];
              v66 = self->_hostingNavigationController;
              self->_hostingNavigationController = v65;

              v67 = [(UINavigationController *)self->_hostingNavigationController navigationBar];
              v68 = [(ICQUpgradeFlowManager *)self flowOptions];
              v69 = [v68 navigationBarTintColor];
              [v67 setTintColor:v69];

              self->_shouldNavigationControllerBeDismissed = 1;
              v70 = self->_hostingNavigationController;
              v71[0] = MEMORY[0x277D85DD0];
              v71[1] = 3221225472;
              v71[2] = __82__ICQUpgradeFlowManager__configurePresentingViewController_preloadedRemoteUIData___block_invoke;
              v71[3] = &unk_27A65A708;
              v71[4] = self;
              v72 = v45;
              [v7 presentPreferredSizeWithViewController:v70 animated:1 completion:v71];
            }
          }
        }

        else
        {
          v34 = [v10 startAlert];

          if (!v34)
          {
            v61 = _ICQGetLogSystem();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = MEMORY[0x277CCABB0];
              v63 = [(ICQUpgradeFlowManager *)self offer];
              v64 = [v62 numberWithInteger:{objc_msgSend(v63, "level")}];
              *buf = 138412290;
              v74 = v64;
              _os_log_impl(&dword_275623000, v61, OS_LOG_TYPE_DEFAULT, "offer level %@ missing upgrade flow specification", buf, 0xCu);
            }

            [(ICQUpgradeFlowManager *)self _sendDelegateCancel];
            goto LABEL_12;
          }

          v27 = [v10 startAlert];
          v35 = MEMORY[0x277D7F390];
          v36 = [v27 message];
          v37 = [v27 altMessage];
          v38 = [v35 stringWithPlaceholderFormat:v36 alternateString:v37];

          v39 = [v27 title];
          v40 = [ICQAlertController alertControllerWithTitle:v39 message:v38 preferredStyle:1];
          upgradeAlertController = self->_upgradeAlertController;
          self->_upgradeAlertController = v40;

          [(ICQUpgradeFlowManager *)self _addAlertActionForAlertSpec:v27 buttonIndex:1];
          [(ICQUpgradeFlowManager *)self _addAlertActionForAlertSpec:v27 buttonIndex:2];
          [(ICQUpgradeFlowManager *)self _addAlertActionForAlertSpec:v27 buttonIndex:3];
          [v7 presentViewController:self->_upgradeAlertController animated:1 completion:&__block_literal_global_0];
        }

LABEL_12:
        goto LABEL_13;
      }

      v21 = _ICQGetLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(ICQUpgradeFlowManager *)self offer];
        v23 = [v22 requestedServerUIURL];
        *buf = 138412290;
        v74 = v23;
        _os_log_impl(&dword_275623000, v21, OS_LOG_TYPE_DEFAULT, "presenting remoteUI URL %@", buf, 0xCu);
      }

      v16 = self;
      v17 = v7;
      v18 = 0;
    }

    [(ICQUpgradeFlowManager *)v16 _presentRemoteUIUsingViewController:v17 withData:v18];
    goto LABEL_12;
  }

  [(ICQUpgradeFlowManager *)self _presentLiftUIUsingViewController:v7];
LABEL_13:
}

- (void)startFlowWithParentViewController:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ICQUpgradeFlowManager *)self _shouldPresentLiftUIFlow])
  {
    [(ICQUpgradeFlowManager *)self _presentLiftUIInParentViewController:v4];
  }

  else
  {
    v5 = [[ICQUISpinnerViewController alloc] initWithNibName:0 bundle:0];
    v6 = [(ICQUpgradeFlowManager *)self _navControllerWithRootVC:v5];
    [(ICQUpgradeFlowManager *)self setHostingNavigationController:v6];

    v7 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    v8 = [v7 navigationBar];
    v9 = [(ICQUpgradeFlowManager *)self flowOptions];
    v10 = [v9 navigationBarTintColor];
    [v8 setTintColor:v10];

    v11 = dispatch_time(0, 5000000000);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __59__ICQUpgradeFlowManager_startFlowWithParentViewController___block_invoke;
    v20 = &unk_27A65A708;
    v21 = self;
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

      v14 = v4;
      presentingViewController = self->_presentingViewController;
      self->_presentingViewController = v14;
    }

    else
    {
      [(ICQUpgradeFlowManager *)self setShouldNavigationControllerBeDismissed:1];
      presentingViewController = [(ICQUpgradeFlowManager *)self hostingNavigationController];
      [v4 addChildAndPinToEdgesWithChildViewController:presentingViewController];
    }

    v16 = [(ICQUpgradeFlowManager *)self serverUIURL];
    [(ICQUpgradeFlowManager *)self presentRemoteViewWithData:0 andURL:v16];
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

- (void)_presentLiftUIUsingViewController:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICQUpgradeFlowManager *)self serverUIURL];

  if (v5)
  {
    v6 = _ICQSignpostLogSystem();
    v7 = objc_opt_new();
    v8 = _ICQSignpostCreateWithObject();
    v10 = v9;

    v11 = _ICQSignpostLogSystem();
    v12 = v11;
    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v13 = [(ICQUpgradeFlowManager *)self serverUIURL];
      *buf = 138412290;
      v46 = v13;
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
      v16 = [(ICQUpgradeFlowManager *)self serverUIURL];
      *buf = 138412290;
      v46 = v16;
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Starting liftUI flow using url %@", buf, 0xCu);
    }

    v17 = [(ICQUpgradeFlowManager *)self offer];
    v18 = [v17 XMLSpecification];
    v19 = [v18 placeholderReplacementsWithDeviceInfo:0];

    v20 = [(ICQUpgradeFlowManager *)self icqLink];
    v21 = [v20 serverUIContent];

    v22 = [ICQLiftUIPresenter alloc];
    if (v21)
    {
      v23 = [(ICQUpgradeFlowManager *)self icqLink];
      v24 = [v23 serverUIContent];
      v25 = [(ICQLiftUIPresenter *)v22 initWithContent:v24 account:0 data:v19];
      [(ICQUpgradeFlowManager *)self setLiftUIPresenter:v25];
    }

    else
    {
      v23 = [(ICQUpgradeFlowManager *)self serverUIURL];
      v24 = [(ICQLiftUIPresenter *)v22 initWithURL:v23 account:0 data:v19];
      [(ICQUpgradeFlowManager *)self setLiftUIPresenter:v24];
    }

    v27 = [(ICQUpgradeFlowManager *)self liftUIPresenter];
    [v27 setDelegate:self];

    v28 = [(ICQUpgradeFlowManager *)self offer];
    v29 = [v28 bundleIdentifier];
    v30 = [v29 isEqualToString:@"com.apple.icq"];

    objc_opt_class();
    v31 = v30 & objc_opt_isKindOfClass();
    if (v31 == 1)
    {
      [(ICQUpgradeFlowManager *)self setHostingNavigationController:v4];
    }

    else
    {
      v32 = [(ICQUpgradeFlowManager *)self _navControllerWithRootVC:0];
      [(ICQUpgradeFlowManager *)self setHostingNavigationController:v32];
    }

    v33 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    v34 = [v33 navigationBar];
    v35 = [(ICQUpgradeFlowManager *)self flowOptions];
    v36 = [v35 navigationBarTintColor];
    [v34 setTintColor:v36];

    v37 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [v37 setDelegate:self];

    [(ICQUpgradeFlowManager *)self setShouldNavigationControllerBeDismissed:1];
    v38 = [(ICQUpgradeFlowManager *)self liftUIPresenter];
    v39 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    LOBYTE(v35) = [v38 pushInNavigationController:v39 animated:0];

    if (v35)
    {
      v40 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
      [v40 setNavigationBarHidden:1];

      if (v31)
      {
        [(ICQUpgradeFlowManager *)self _sendDelegateDidPresentViewController:v4];
      }

      else
      {
        v42 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __59__ICQUpgradeFlowManager__presentLiftUIUsingViewController___block_invoke;
        v43[3] = &unk_27A65A708;
        v43[4] = self;
        v44 = v4;
        [v44 presentPreferredSizeWithViewController:v42 animated:1 completion:v43];
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

- (void)_presentLiftUIInParentViewController:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICQUpgradeFlowManager *)self serverUIURL];

  if (v5)
  {
    v6 = _ICQSignpostLogSystem();
    v7 = objc_opt_new();
    v8 = _ICQSignpostCreateWithObject();
    v10 = v9;

    v11 = _ICQSignpostLogSystem();
    v12 = v11;
    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v13 = [(ICQUpgradeFlowManager *)self serverUIURL];
      v38 = 138412290;
      v39 = v13;
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
      v16 = [(ICQUpgradeFlowManager *)self serverUIURL];
      v38 = 138412290;
      v39 = v16;
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Starting liftUI flow using url %@", &v38, 0xCu);
    }

    v17 = [(ICQUpgradeFlowManager *)self offer];
    v18 = [v17 XMLSpecification];
    v19 = [v18 placeholderReplacementsWithDeviceInfo:0];

    v20 = [(ICQUpgradeFlowManager *)self icqLink];
    v21 = [v20 serverUIContent];

    v22 = [ICQLiftUIPresenter alloc];
    if (v21)
    {
      v23 = [(ICQUpgradeFlowManager *)self icqLink];
      v24 = [v23 serverUIContent];
      v25 = [(ICQLiftUIPresenter *)v22 initWithContent:v24 account:0 data:v19];
      [(ICQUpgradeFlowManager *)self setLiftUIPresenter:v25];
    }

    else
    {
      v23 = [(ICQUpgradeFlowManager *)self serverUIURL];
      v24 = [(ICQLiftUIPresenter *)v22 initWithURL:v23 account:0 data:v19];
      [(ICQUpgradeFlowManager *)self setLiftUIPresenter:v24];
    }

    v27 = [(ICQUpgradeFlowManager *)self liftUIPresenter];
    [v27 setDelegate:self];

    v28 = [(ICQUpgradeFlowManager *)self _navControllerWithRootVC:0];
    [(ICQUpgradeFlowManager *)self setHostingNavigationController:v28];

    v29 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    v30 = [v29 navigationBar];
    v31 = [(ICQUpgradeFlowManager *)self flowOptions];
    v32 = [v31 navigationBarTintColor];
    [v30 setTintColor:v32];

    v33 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [v33 setNavigationBarHidden:1];

    [(ICQUpgradeFlowManager *)self setShouldNavigationControllerBeDismissed:1];
    v34 = [(ICQUpgradeFlowManager *)self liftUIPresenter];
    v35 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    LOBYTE(v31) = [v34 pushInNavigationController:v35 animated:0];

    if (v31)
    {
      v36 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
      [v4 addChildAndPinToEdgesWithChildViewController:v36];

      [(ICQUpgradeFlowManager *)self _sendDelegateDidPresentViewController:v4];
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

- (void)_presentRemoteUIUsingViewController:(id)a3 withData:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = MEMORY[0x277CECAF8];
  v9 = a4;
  v10 = [[v8 alloc] initWithNibName:0 bundle:0];
  v11 = [(ICQUpgradeFlowManager *)self _navControllerWithRootVC:v10];
  [(ICQUpgradeFlowManager *)self setHostingNavigationController:v11];

  v12 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
  v13 = [v12 navigationBar];
  v14 = [(ICQUpgradeFlowManager *)self flowOptions];
  v15 = [v14 navigationBarTintColor];
  [v13 setTintColor:v15];

  if ([(ICQOffer *)self->_offer action]== 118)
  {
    v16 = _ICQGetLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[ICQUpgradeFlowManager _presentRemoteUIUsingViewController:withData:]";
      _os_log_impl(&dword_275623000, v16, OS_LOG_TYPE_DEFAULT, "%s, Detected action direct to oslo, skipping presentation and saving presenting view controller", &v19, 0xCu);
    }

    objc_storeStrong(&self->_presentingViewController, a3);
  }

  else
  {
    [(ICQUpgradeFlowManager *)self setShouldNavigationControllerBeDismissed:1];
    v17 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [v7 presentPreferredSizeWithViewController:v17 animated:1 completion:0];
  }

  v18 = [(ICQUpgradeFlowManager *)self serverUIURL];
  [(ICQUpgradeFlowManager *)self presentRemoteViewWithData:v9 andURL:v18];
}

- (void)presentRemoteViewWithData:(id)a3 andURL:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "presenting remote view with url = %@", &v10, 0xCu);
  }

  v9 = [MEMORY[0x277CCAD20] requestWithURL:v6];
  [(ICQUpgradeFlowManager *)self _presentRemoteViewWithData:v7 andRequest:v9];
}

- (void)_presentRemoteViewWithData:(id)a3 andRequest:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138412290;
    v34 = v7;
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
    v16 = [(ICQUpgradeFlowManager *)self offer];
    v17 = [v16 remoteUIURL];
    v33 = 138412290;
    v34 = v17;
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
  v23 = [(ICQUpgradeFlowManager *)self serverHooks];
  v24 = [v21 initWithRemoteUIController:v22 hooks:v23];
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
    v31 = [v7 URL];
    [(AAUIRemoteUIController *)v30 loadData:v29 baseURL:v31];
  }

  else if (v6)
  {
    v32 = self->_remoteUIController;
    v28 = [v7 URL];
    [(AAUIRemoteUIController *)v32 loadData:v6 baseURL:v28];
  }

  else
  {
    v28 = [v7 mutableCopy];
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

+ (void)addActiveFlowManager:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "adding active flow manager %p", &v7, 0xCu);
  }

  v6 = [a1 activeFlowManagers];
  [v6 addObject:v4];
}

+ (void)removeActiveFlowManager:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "removing active flow manager %p", &v7, 0xCu);
  }

  v6 = [a1 activeFlowManagers];
  [v6 removeObject:v4];
}

- (void)_setBusyOfferViewController:(id)a3
{
  objc_storeStrong(&self->_busyOfferViewController, a3);
  v4 = a3;
  v5 = [v4 view];
  [v5 setUpgradeMode:1];
  [v4 setCancelEnabled:0];
}

- (void)_openURL:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
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
        if (v6)
        {
          v6[2](v6);
        }

        v7 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v7 = v5;
    }

    v8 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v9 = [v8 openSensitiveURL:v7 withOptions:MEMORY[0x277CBEC10]];

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

    if (v6)
    {
      v6[2](v6);
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
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];

  v5 = [(ICQUpgradeFlowManager *)self _allowedInProcessClients];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%@ is allowed in process UI", &v9, 0xCu);
    }
  }

  return v6 ^ 1;
}

- (BOOL)_shouldPresentLiftUIFlow
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(ICQUpgradeFlowManager *)self icqLink];
  if (v3)
  {
  }

  else
  {
    v4 = [(ICQUpgradeFlowManager *)self offer];
    v5 = [v4 action];

    if (v5 == 115)
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

  v8 = [(ICQUpgradeFlowManager *)self icqLink];
  if (v8)
  {

    goto LABEL_12;
  }

  v9 = [(ICQUpgradeFlowManager *)self offer];
  v10 = [v9 action];

  if (v10 == 121)
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
  v11 = [(ICQUpgradeFlowManager *)self icqLink];
  if ([v11 action] == 121)
  {

    goto LABEL_15;
  }

  v12 = [(ICQUpgradeFlowManager *)self icqLink];
  v13 = [v12 action];

  if (v13 == 115)
  {
LABEL_15:
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(ICQUpgradeFlowManager *)self icqLink];
      [v14 action];
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

- (id)_navControllerWithRootVC:(id)a3
{
  v4 = a3;
  v5 = [[ICQRemoteUINavigationController alloc] initWithRootViewController:v4];

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

- (void)_performPageButtonActionWithParameters:(id)a3 completion:(id)a4
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

- (void)_presentPageWithSpecification:(id)a3
{
  v4 = a3;
  v5 = [(ICQUpgradeFlowManager *)self bindings];

  if (v5)
  {
    v6 = [(ICQUpgradeFlowManager *)self bindings];
    v7 = [v4 copyWithBindings:v6];

    v4 = v7;
  }

  v8 = [(ICQUpgradeFlowManager *)self offer];
  v9 = [v8 isBuddyOffer];

  if (v9)
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "presenting buddy view controller", buf, 2u);
    }

    v11 = [[ICQBuddyOfferViewController alloc] initWithPageSpecification:v4];
  }

  else
  {
    v11 = [[ICQViewController alloc] initWithPageSpecification:v4];
    v12 = [(ICQUpgradeFlowManager *)self flowOptions];
    v13 = [v12 buttonTintColor];
    [(ICQBuddyOfferViewController *)v11 setButtonTintColor:v13];
  }

  v14 = [(ICQUpgradeFlowManager *)self hostingNavigationController];

  if (v14 && v11)
  {
    v15 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [v15 pushViewController:v11 animated:1];

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

  v4 = [(ICQUpgradeFlowManager *)self offer];
  v5 = [v4 upgradeFlowSpecification];
  v6 = [v5 upgradeSuccessPage];

  [(ICQUpgradeFlowManager *)self _presentPageWithSpecification:v6];
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

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v6 setPageDelegate:self];
  }
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3
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

- (void)dismissNavigationControllerAnimated:(BOOL)a3 success:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [v10 setShouldSignalDelegateOnDismiss:0];

    v11 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [v11 setDidCompletePurchaseFlowWithSuccess:v5];
  }

  v12 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
  [v12 dismissViewControllerAnimated:1 completion:v7];
}

- (void)sender:(id)a3 action:(int64_t)a4 parameters:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (a4 <= 100)
  {
    if (a4 > 3)
    {
      if (a4 <= 5)
      {
        if (a4 == 4)
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

      if (a4 == 6)
      {
        v25 = _ICQGetLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275623000, v25, OS_LOG_TYPE_DEFAULT, "ICQActionOpenURL", buf, 2u);
        }

        v26 = [v9 objectForKeyedSubscript:*MEMORY[0x277D7F280]];
        [(ICQUpgradeFlowManager *)self _openURL:v26 completion:0];

        goto LABEL_33;
      }

      if (a4 != 100)
      {
        goto LABEL_33;
      }
    }

    else if ((a4 - 2) >= 2 && a4)
    {
      if (a4 != 1)
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
      v39 = v8;
      v40 = 2112;
      v41 = v18;
      v42 = 2112;
      v43 = v9;
      _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "ICQUpgradeFlowManager: sender:%@ action:%@ parameters:%@ unexpected", buf, 0x20u);
    }

    goto LABEL_33;
  }

  v10 = a4 - 103;
  if ((a4 - 103) <= 0xF)
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
        [(ICQUpgradeFlowManager *)self _setBusyOfferViewController:v8];
      }

      v15 = [(ICQUpgradeFlowManager *)self offer];
      v16 = [v15 upgradeFlowSpecification];

      if (-[ICQUpgradeFlowManager needsNetwork](self, "needsNetwork") && ([MEMORY[0x277D7F380] isNetworkReachable] & 1) == 0)
      {
        v19 = _ICQGetLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275623000, v19, OS_LOG_TYPE_DEFAULT, "network is needed, but not reachable", buf, 2u);
        }

        v20 = [v16 upgradeFailurePageForNetwork];
        [(ICQUpgradeFlowManager *)self _presentPageWithSpecification:v20];

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
        v33 = v8;
        v34 = v16;
        v35 = self;
        [(ICQUpgradeFlowManager *)self _performPageButtonActionWithParameters:v9 completion:v32];

        objc_destroyWeak(&v36);
        objc_destroyWeak(buf);
      }

      goto LABEL_33;
    }

    if (((1 << v10) & 0xE000) != 0)
    {
      v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v9];
      [v11 setObject:&unk_288479B58 forKey:@"osloPurchase"];

      v9 = v11;
      goto LABEL_17;
    }

    if (a4 == 109)
    {
      [(ICQUpgradeFlowManager *)self _initiateFamilySetupFlow];
      goto LABEL_33;
    }
  }

  if (a4 != 102)
  {
    if (a4 != 101)
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
    v39 = v8;
    v40 = 2112;
    v41 = v30;
    v42 = 2112;
    v43 = v9;
    _os_log_impl(&dword_275623000, v29, OS_LOG_TYPE_DEFAULT, "ICQUpgradeFlowManager: sender:%@ action:%@ parameters:%@ not yet implemented", buf, 0x20u);
  }

LABEL_33:
  v21 = [v9 objectForKeyedSubscript:*MEMORY[0x277D7F270]];
  if (v21)
  {
    v22 = [MEMORY[0x277D7F390] sharedOfferManager];
    v23 = [(ICQUpgradeFlowManager *)self offer];
    v24 = [v23 offerId];
    [v22 updateOfferId:v24 buttonId:v21 info:0 completion:0];
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

- (void)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5 withCompletionHandler:(id)a6
{
  v7 = a6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __101__ICQUpgradeFlowManager_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke;
  v9[3] = &unk_27A65A8C0;
  v10 = v7;
  v8 = v7;
  [a4 icq_addHeadersForUpgradeWithCompletion:v9];
}

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v94 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [v7 clientInfo];
  v9 = [v8 objectForKeyedSubscript:@"closeURL"];
  [(ICQUpgradeFlowManager *)self setCloseURL:v9];

  v10 = [v8 objectForKeyedSubscript:@"forceRefresh"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICQUpgradeFlowManager remoteUIController:didReceiveObjectModel:actionSignal:];
    }

    +[ICQPurchase clearCacheAndNotifyClients];
  }

  v13 = [v8 objectForKeyedSubscript:@"didCancel"];
  v14 = [v13 BOOLValue];

  if (*a5 != 1 || (v14 & 1) != 0)
  {
    v71 = v8;
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v70 = self;
    v16 = [(ICQUpgradeFlowManager *)self offer];
    v75 = [v16 XMLSpecification];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v72 = v7;
    obj = [v7 allPages];
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
          v25 = [v23 navTitle];
          v26 = [v24 findPlaceholdersInString:v25];
          [v15 unionSet:v26];

          v27 = *(v18 + 992);
          v28 = [v23 navSubTitle];
          v29 = [v27 findPlaceholdersInString:v28];
          [v15 unionSet:v29];

          v30 = [v23 subElementWithID:v20];
          v31 = v30;
          if (v30)
          {
            v32 = [v30 identifier];
            v33 = [v31 body];
            v34 = v33;
            if (v32 && v33)
            {
              v35 = v19;
              v36 = v21;
              v37 = v18;
              v38 = v20;
              v39 = [v75 stringForPlaceholder:v33];
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
          v48 = [v75 stringForPlaceholder:v47];
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
    v50 = [v72 allPages];
    v51 = [v50 countByEnumeratingWithState:&v77 objects:v89 count:16];
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
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v77 + 1) + 8 * k);
          v56 = *(v18 + 992);
          v57 = [v55 navTitle];
          v58 = [v56 replaceWordsIn:v57 with:v41];
          [v55 setNavTitle:v58];

          v59 = *(v18 + 992);
          v60 = [v55 navSubTitle];
          v61 = [v59 replaceWordsIn:v60 with:v41];
          [v55 setNavSubTitle:v61];

          v62 = _ICQGetLogSystem();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            v63 = [v55 navTitle];
            *buf = 138412290;
            v92 = v63;
            _os_log_impl(&dword_275623000, v62, OS_LOG_TYPE_DEFAULT, "navtitle = %@", buf, 0xCu);
          }

          v64 = _ICQGetLogSystem();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = [v55 navSubTitle];
            *buf = 138412290;
            v92 = v65;
            _os_log_impl(&dword_275623000, v64, OS_LOG_TYPE_DEFAULT, "navSubTitle = %@", buf, 0xCu);
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v77 objects:v89 count:16];
      }

      while (v52);
    }

    v7 = v72;
    [(RUIServerHookHandler *)v70->_serverHookHandler processObjectModel:v72 isModal:1];
    v66 = [(ICQUpgradeFlowManager *)v70 hostingNavigationController];
    v67 = [v66 isNavigationBarHidden];

    if (v67)
    {
      v68 = _ICQGetLogSystem();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v68, OS_LOG_TYPE_DEFAULT, "Navigation bar is hidden, resetting it to be visible.", buf, 2u);
      }

      v69 = [(ICQUpgradeFlowManager *)v70 hostingNavigationController];
      [v69 setNavigationBarHidden:0];
    }

    v8 = v71;
  }

  else
  {
    [(ICQUpgradeFlowManager *)self dismissUpgradeFlowWithSuccess:1];
    [(RUIServerHookHandler *)self->_serverHookHandler processObjectModel:v7 isModal:1];
  }
}

- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  Nanoseconds = _ICQSignpostGetNanoseconds();
  v9 = _ICQSignpostLogSystem();
  v10 = v9;
  identifier = self->_loadRemoteUISignpost.identifier;
  if (identifier - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = @"NO";
    if (!v7)
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
    if (v7)
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

  if (v7)
  {
    v14 = [v7 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"statusCode"];
    v16 = [v15 intValue] == 401;

    if (!v16)
    {
      self->_renewCredentialsCount = 0;
LABEL_15:
      v19 = [v7 code] == -1009;
      v20 = _ICQGetLogSystem();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v21)
        {
          v22 = [v7 debugDescription];
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
          v23 = [v7 debugDescription];
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

- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4
{
  objc_storeStrong(&self->_hostingNavigationController, a4);
  v6 = a4;
  [(UINavigationController *)self->_hostingNavigationController setDelegate:self];
}

- (void)remoteUIController:(id)a3 didDismissModalNavigationWithObjectModels:(id)a4
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "RemoteUI modal navigation controller dismissed.", v5, 2u);
  }
}

- (void)remoteUIControllerDidDismiss:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [(ICQUpgradeFlowManager *)self closeURL];

  if (v4)
  {
    v5 = MEMORY[0x277D7F370];
    v8 = *MEMORY[0x277D7F268];
    v6 = [(ICQUpgradeFlowManager *)self closeURL];
    v9[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v5 performAction:124 parameters:v7 options:2];
  }

  [(ICQUpgradeFlowManager *)self _cancelFlow];
}

- (void)remoteUIController:(id)a3 didPresentObjectModel:(id)a4 modally:(BOOL)a5
{
  v5 = a4;
  v6 = [v5 clientInfo];
  v7 = [v6 objectForKeyedSubscript:@"action"];
  v8 = _ICQActionForServerActionString();

  if (v8 == 118)
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Detected clientInfo action Direct to Oslo. Attempting to launch oslo.", buf, 2u);
    }

    v10 = [v5 subElementWithID:@"upgradeButton"];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__ICQUpgradeFlowManager_remoteUIController_didPresentObjectModel_modally___block_invoke;
    v12[3] = &unk_27A65A708;
    v13 = v5;
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
  v3 = [(ICQOffer *)self->_offer upgradeFlowSpecification];
  v4 = [v3 upgradeFailurePageForNetwork];

  [(ICQUpgradeFlowManager *)self _presentPageWithSpecification:v4];
}

- (void)showUpgradeFailurePage
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(ICQOffer *)self->_offer upgradeFlowSpecification];
  v4 = [v3 upgradeFailurePage];

  [(ICQUpgradeFlowManager *)self _presentPageWithSpecification:v4];
}

- (void)dismissUpgradeFlowWithSuccess:(BOOL)a3
{
  if (self->_hostingNavigationController)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __55__ICQUpgradeFlowManager_dismissUpgradeFlowWithSuccess___block_invoke;
    v3[3] = &unk_27A65A930;
    v4 = a3;
    v3[4] = self;
    [(ICQUpgradeFlowManager *)self dismissNavigationControllerAnimated:1 success:a3 completion:v3];
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
  v4 = [(UINavigationController *)self->_hostingNavigationController presentingViewController];
  if (v4)
  {
  }

  else
  {
    v5 = [(UINavigationController *)self->_hostingNavigationController parentViewController];

    if (!v5)
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

- (void)_sendDelegateLoadError:(id)a3
{
  v9 = a3;
  v4 = [(ICQUpgradeFlowManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = [(ICQUpgradeFlowManager *)self delegate];
  v7 = v6;
  if (v5)
  {
    [v6 upgradeFlowManagerDidFail:self error:v9];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = [(ICQUpgradeFlowManager *)self delegate];
    [v7 manager:self loadDidFailWithError:v9];
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

- (void)_sendDelegateDidPresentViewController:(id)a3
{
  v7 = a3;
  v4 = [(ICQUpgradeFlowManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICQUpgradeFlowManager *)self delegate];
    [v6 upgradeFlowManager:self didPresentViewController:v7];
  }
}

- (ICQUpgradeFlowManager)initWithJourneyId:(id)a3 params:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D7F390] sharedOfferManager];
  v9 = [v8 currentDefaultOffer];

  v10 = [(ICQUpgradeFlowManager *)self initWithOffer:v9];
  if (!v10)
  {
LABEL_6:
    v16 = v10;
    goto LABEL_10;
  }

  v11 = [v9 journeyLinkForId:v6];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 serverUIURL];
    v14 = [(ICQUpgradeFlowManager *)v10 addParams:v7 toJourneyURL:v13];

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
    [(ICQUpgradeFlowManager *)v6 initWithJourneyId:v9 params:v17];
  }

  v16 = 0;
LABEL_10:

  return v16;
}

+ (void)flowManagerWithJourneyId:(id)a3 params:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D7F390] sharedOfferManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__ICQUpgradeFlowManager_flowManagerWithJourneyId_params_completion___block_invoke;
  v14[3] = &unk_27A65A980;
  v16 = v8;
  v17 = v9;
  v15 = v7;
  v11 = v8;
  v12 = v9;
  v13 = v7;
  [v10 getDefaultOfferWithCompletion:v14];
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

- (id)addParams:(id)a3 toJourneyURL:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 absoluteString];
  v7 = [v6 mutableCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
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

- (void)liftUIPresenterDidComplete:(id)a3
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

- (void)liftUIPresenterDidCancel:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[ICQUpgradeFlowManager liftUIPresenterDidCancel:]";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__ICQUpgradeFlowManager_liftUIPresenterDidCancel___block_invoke;
  v6[3] = &unk_27A65A820;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:1 completion:v6];
}

- (void)liftUIPresenter:(id)a3 performAction:(int64_t)a4 parameters:(id)a5 completion:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v10 = a5;
  v11 = a6;
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
  [v14 setClientInfo:v10];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = [(ICQUpgradeFlowManager *)self serverHooks];
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        if ([v20 shouldMatchModel:v14])
        {
          [v20 setDelegate:self];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __77__ICQUpgradeFlowManager_liftUIPresenter_performAction_parameters_completion___block_invoke;
          v26[3] = &unk_27A65A9D0;
          v28 = v11;
          v26[4] = v20;
          v26[5] = self;
          v24 = v25;
          v27 = v25;
          [v20 processObjectModel:v14 completion:v26];

          goto LABEL_16;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  if (a4 == 112 && ([v10 objectForKeyedSubscript:@"url"], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    v22 = [v10 objectForKeyedSubscript:@"url"];
    v23 = [v10 objectForKeyedSubscript:@"httpMethod"];
    [(ICQUpgradeFlowManager *)self _handleRemoteUIActionWithURLString:v22 httpMethod:v23];

    (*(v11 + 2))(v11, 1, 0);
    v24 = v25;
  }

  else
  {
    v24 = v25;
    [(ICQUpgradeFlowManager *)self sender:v25 action:a4 parameters:v10];
    (*(v11 + 2))(v11, 1, 0);
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

- (void)_handleRemoteUIActionWithURLString:(id)a3 httpMethod:(id)a4
{
  v6 = a4;
  v17 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"POST";
  }

  v8 = MEMORY[0x277CCAB70];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:a3];
  v10 = [v8 requestWithURL:v9];

  v11 = [(__CFString *)v7 uppercaseString];
  v12 = [v11 isEqualToString:@"POST"];

  if (v12)
  {
    nextRefreshBody = self->_nextRefreshBody;
    self->_nextRefreshBody = 0;
    v14 = nextRefreshBody;

    v15 = [MEMORY[0x277CCAC58] dataWithPropertyList:v14 format:100 options:0 error:0];

    [v10 setHTTPBody:v15];
    v16 = [(__CFString *)v7 uppercaseString];
    [v10 setHTTPMethod:v16];
  }

  [(ICQUpgradeFlowManager *)self _presentRemoteViewWithData:0 andRequest:v10];
}

- (void)liftUIPresenter:(id)a3 didLoadWithSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v7 = a5;
  Nanoseconds = _ICQSignpostGetNanoseconds();
  v9 = _ICQSignpostLogSystem();
  v10 = v9;
  identifier = self->_loadLiftUISignpost.identifier;
  if (identifier - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = @"NO";
    if (v5)
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
    if (v5)
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

  if (!v5)
  {
    v14 = [v7 code];
    v15 = _ICQGetLogSystem();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14 == -1009)
    {
      if (v16)
      {
        v17 = [v7 debugDescription];
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
        v18 = [v7 debugDescription];
        v21 = 138412290;
        *v22 = v18;
        _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "RemoteUIController finished loading with error: %@", &v21, 0xCu);
      }

      [(ICQUpgradeFlowManager *)self showUpgradeFailurePage];
    }
  }
}

- (void)dismissObjectModelsAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = [(ICQUpgradeFlowManager *)self hostingNavigationController:a3];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)presentFlowHostedInNavigationController:(id)a3
{
  v5 = a3;
  v6 = [(ICQUpgradeFlowManager *)self offer];
  v7 = [v6 upgradeFlowSpecification];

  v8 = [(ICQUpgradeFlowManager *)self offer];
  v9 = [v8 alertSpecificationAtIndex:0];
  [v7 setStartAlert:v9];

  v10 = [v7 startPage];

  if (!v10)
  {
    v12 = [v7 startAlert];

    v13 = _ICQGetLogSystem();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
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

    v11 = ICQCreateError();
    [(ICQUpgradeFlowManager *)self _sendDelegateLoadError:v11];
    goto LABEL_10;
  }

  objc_storeStrong(&self->_hostingNavigationController, a3);
  [(UINavigationController *)self->_hostingNavigationController setDelegate:self];
  self->_shouldNavigationControllerBeDismissed = 0;
  v11 = [v7 startPage];
  [(ICQUpgradeFlowManager *)self _presentPageWithSpecification:v11];
LABEL_10:
}

- (void)remoteUIFlowManager:(id)a3 didLoadWithSuccess:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = [v9 localizedDescription];
    v16 = 136315906;
    v17 = "[ICQUpgradeFlowManager remoteUIFlowManager:didLoadWithSuccess:error:]";
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "%s: %@, success: %@, error: %@", &v16, 0x2Au);
  }

  v13 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
  v14 = [v13 isNavigationBarHidden];

  if (v14)
  {
    v15 = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [v15 setNavigationBarHidden:0];
  }
}

- (void)beginOSLOFlowWithPresentingViewController:(id)a3
{
  osloPresenter = self->_osloPresenter;
  if (!osloPresenter)
  {
    v5 = a3;
    v6 = [[ICQUIOSLOPresenter alloc] initWithOffer:self->_offer link:self->_icqLink presenter:v5];

    v7 = self->_osloPresenter;
    self->_osloPresenter = v6;

    [(ICQUIOSLOPresenter *)self->_osloPresenter setDelegate:self];
    osloPresenter = self->_osloPresenter;
  }

  [(ICQUIOSLOPresenter *)osloPresenter beginOSLOPurchaseFlow];
}

- (void)purchaseFlowCompletedWith:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    osloPresenter = self->_osloPresenter;
    if (v4)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = [v6 localizedDescription];
    v14 = 136315906;
    v15 = "[ICQUpgradeFlowManager purchaseFlowCompletedWith:error:]";
    v16 = 2112;
    v17 = osloPresenter;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@, success: %@, error: %@", &v14, 0x2Au);
  }

  v11 = [(ICQUpgradeFlowManager *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(ICQUpgradeFlowManager *)self delegate];
    [v13 upgradeFlowManagerDidComplete:self];
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

- (void)beginPostPurchaseFlowWithLink:(id)a3 offer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Preparing out of process upgradeFlowManager to present purchase completion flow.", v16, 2u);
  }

  v9 = +[ICQUIOutOfProcessUpgradeFlowManager sharedManager];
  v10 = [(ICQUpgradeFlowManager *)self delegate];
  [v9 setDelegate:v10];

  v11 = [(ICQUpgradeFlowManager *)self flowOptions];
  [v9 setFlowOptions:v11];

  v12 = [(ICQUpgradeFlowManager *)self offer];
  [v9 setOffer:v12];

  v13 = [(ICQUpgradeFlowManager *)self icqLink];
  [v9 setLink:v13];

  [v9 setFlowManager:self];
  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 bundleIdentifier];
  [v9 setPresentingSceneBundleIdentifier:v15];

  [v9 beginPostPurchaseFlowWithOffer:v6 link:v7];
}

+ (void)needsToRunWithCompletion:(id)a3
{
  v4 = a3;
  if (needsToRunWithCompletion__onceToken != -1)
  {
    +[ICQUpgradeFlowManager(ICQBuddy) needsToRunWithCompletion:];
  }

  v5 = [MEMORY[0x277D7F390] sharedOfferManager];
  v6 = [v5 isBuddyOfferEnabled];

  if (v6)
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
    v9 = v4;
    v18 = v9;
    dispatch_after(v7, v8, block);
    v10 = [MEMORY[0x277D7F390] sharedOfferManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__ICQUpgradeFlowManager_ICQBuddy__needsToRunWithCompletion___block_invoke_9;
    v12[3] = &unk_27A65B520;
    v14 = v23;
    v15 = v21;
    v13 = v9;
    v16 = a1;
    [v10 getOfferForBundleIdentifier:@"com.apple.purplebuddy" completion:v12];

    _Block_object_dispose(v21, 8);
    _Block_object_dispose(v23, 8);
  }

  else
  {
    v11 = ICQCreateErrorWithMessage();
    (*(v4 + 2))(v4, 0, v11);
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