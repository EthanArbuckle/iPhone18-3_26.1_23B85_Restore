@interface BFFFinishSetupViewController
+ (id)_keyValueDictionaryForURL:(id)l;
+ (id)_orderedFlowIdentifiersFromFlowIdentifiers:(id)identifiers;
- (BFFFinishSetupViewController)init;
- (BOOL)_presentPreconditionViewControllerIfNecessaryForFlowController:(id)controller;
- (id)_flowControllerForFlowIdentifier:(id)identifier;
- (id)_flowControllerForNextFlowIdentifier;
- (unint64_t)supportedInterfaceOrientations;
- (void)_complete;
- (void)_didSatisfyInitializationForFlowController:(id)controller;
- (void)_didSatisfyPreconditionsForFlowController:(id)controller;
- (void)_ensureNavigationControllerWithViewController:(id)controller pushCompletion:(id)completion;
- (void)_flowDidFinishForIdentifiers:(id)identifiers result:(unint64_t)result;
- (void)_performExtendedInitializationForFlowController:(id)controller;
- (void)_pushViewControllerOntoNavigationController:(id)controller completion:(id)completion;
- (void)_startNextFlowIdentifier;
- (void)loadView;
- (void)processURL:(id)l completion:(id)completion;
- (void)setOverrideFlowControllerGenerator:(id)generator;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation BFFFinishSetupViewController

- (BFFFinishSetupViewController)init
{
  v17.receiver = self;
  v17.super_class = BFFFinishSetupViewController;
  v2 = [(BFFFinishSetupViewController *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D4DA20]);
    capabilities = v2->_capabilities;
    v2->_capabilities = v3;

    v5 = objc_alloc_init(MEMORY[0x277D4DA30]);
    flowSkipController = v2->_flowSkipController;
    v2->_flowSkipController = v5;

    v7 = objc_alloc_init(MEMORY[0x277D4DA08]);
    analyticsManager = v2->_analyticsManager;
    v2->_analyticsManager = v7;

    v9 = objc_alloc(MEMORY[0x277D4DA40]);
    v10 = v2->_analyticsManager;
    v11 = objc_alloc_init(BFFFinishSetupRunState);
    v12 = *MEMORY[0x277D4D9D0];
    v13 = objc_alloc_init(BFFFinishSetupFlowItemDispositionProvider);
    v14 = [v9 initWithAnalyticsManager:v10 runState:v11 host:v12 flowItemDispositionProvider:v13];
    paneFeatureAnalyticsManager = v2->_paneFeatureAnalyticsManager;
    v2->_paneFeatureAnalyticsManager = v14;
  }

  return v2;
}

- (void)processURL:(id)l completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = lCopy;
    _os_log_impl(&dword_265AC5000, v8, OS_LOG_TYPE_DEFAULT, "Finish setup processURL: %@", &v22, 0xCu);
  }

  v9 = _Block_copy(completionCopy);
  completion = self->_completion;
  self->_completion = v9;

  [(BFFFinishSetupViewController *)self setModalPresentationStyle:17];
  v11 = [BFFFinishSetupViewController _keyValueDictionaryForURL:lCopy];
  v12 = _BYLoggingFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v11;
    _os_log_impl(&dword_265AC5000, v12, OS_LOG_TYPE_DEFAULT, "processURL: params %@", &v22, 0xCu);
  }

  v13 = [v11 objectForKeyedSubscript:@"flow"];
  v14 = _BYLoggingFacility();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v13;
    _os_log_impl(&dword_265AC5000, v14, OS_LOG_TYPE_DEFAULT, "processURL: flowParameter %@", &v22, 0xCu);
  }

  v15 = [v13 componentsSeparatedByString:{@", "}];
  v16 = [BFFFinishSetupViewController _orderedFlowIdentifiersFromFlowIdentifiers:v15];
  flowIdentifiers = self->_flowIdentifiers;
  self->_flowIdentifiers = v16;

  v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
  completedFlowIdentifiers = self->_completedFlowIdentifiers;
  self->_completedFlowIdentifiers = v18;

  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  skippedFlowIdentifiers = self->_skippedFlowIdentifiers;
  self->_skippedFlowIdentifiers = v20;
}

+ (id)_keyValueDictionaryForURL:(id)l
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  resourceSpecifier = [lCopy resourceSpecifier];
  v6 = [resourceSpecifier componentsSeparatedByString:@"&"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:{@"=", v17}];
        if ([v12 count] == 2)
        {
          v13 = [v12 objectAtIndex:1];
          stringByRemovingPercentEncoding = [v13 stringByRemovingPercentEncoding];

          v15 = [v12 objectAtIndex:0];
          [dictionary setObject:stringByRemovingPercentEncoding forKey:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return dictionary;
}

+ (id)_orderedFlowIdentifiersFromFlowIdentifiers:(id)identifiers
{
  v21[6] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v4 = *MEMORY[0x277D4D9B0];
  v21[0] = *MEMORY[0x277D4D9C8];
  v21[1] = v4;
  v5 = *MEMORY[0x277D4D9A0];
  v21[2] = *MEMORY[0x277D4D9B8];
  v21[3] = v5;
  v6 = *MEMORY[0x277D4D9C0];
  v21[4] = *MEMORY[0x277D4D9A8];
  v21[5] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:6];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([identifiersCopy containsObject:{v14, v16}])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)setOverrideFlowControllerGenerator:(id)generator
{
  self->_overrideFlowControllerGenerator = _Block_copy(generator);

  MEMORY[0x2821F96F8]();
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = BFFFinishSetupViewController;
  [(BFFFinishSetupViewController *)&v8 loadView];
  view = [(BFFFinishSetupViewController *)self view];
  [view setOpaque:0];

  clearColor = [MEMORY[0x277D75348] clearColor];
  view2 = [(BFFFinishSetupViewController *)self view];
  [view2 setBackgroundColor:clearColor];

  v6 = +[BFFStyle sharedStyle];
  navigationItem = [(BFFFinishSetupViewController *)self navigationItem];
  [v6 applyAutomaticScrollToEdgeBehaviorOnNavigationItem:navigationItem];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = BFFFinishSetupViewController;
  [(BFFFinishSetupViewController *)&v5 viewDidAppear:appear];
  if (!self->_setupInProgress)
  {
    self->_setupInProgress = 1;
    mEMORY[0x277D4DA30] = [MEMORY[0x277D4DA30] sharedInstance];
    [mEMORY[0x277D4DA30] setBasicFunctionalityEnabled:0];

    [(BFFFinishSetupViewController *)self _startNextFlowIdentifier];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v13 = *MEMORY[0x277D85DE8];
  isBeingDismissed = [(BFFFinishSetupViewController *)self isBeingDismissed];
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = isBeingDismissed;
    _os_log_impl(&dword_265AC5000, v6, OS_LOG_TYPE_DEFAULT, "Finish setup viewDidDisappear: isBeingDismissed %d", buf, 8u);
  }

  v10.receiver = self;
  v10.super_class = BFFFinishSetupViewController;
  [(BFFFinishSetupViewController *)&v10 viewDidDisappear:disappearCopy];
  if (isBeingDismissed)
  {
    mEMORY[0x277D4DA30] = [MEMORY[0x277D4DA30] sharedInstance];
    [mEMORY[0x277D4DA30] setBasicFunctionalityEnabled:1];

    flowSkipController = [(BFFFinishSetupViewController *)self flowSkipController];
    [flowSkipController cancelPendingFlows];

    analyticsManager = [(BFFFinishSetupViewController *)self analyticsManager];
    [analyticsManager commit];
  }
}

- (void)_startNextFlowIdentifier
{
  _flowControllerForNextFlowIdentifier = [(BFFFinishSetupViewController *)self _flowControllerForNextFlowIdentifier];
  if (![(BFFFinishSetupViewController *)self _presentPreconditionViewControllerIfNecessaryForFlowController:?])
  {
    [(BFFFinishSetupViewController *)self _didSatisfyPreconditionsForFlowController:_flowControllerForNextFlowIdentifier];
  }
}

- (BOOL)_presentPreconditionViewControllerIfNecessaryForFlowController:(id)controller
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __95__BFFFinishSetupViewController__presentPreconditionViewControllerIfNecessaryForFlowController___block_invoke;
    v13[3] = &unk_279BB4CC8;
    v16 = &v17;
    v5 = controllerCopy;
    v14 = v5;
    selfCopy = self;
    v6 = [v5 preconditionViewControllerWithCompletion:v13];
    v7 = v18[5];
    v18[5] = v6;

    if (v18[5])
    {
      v8 = _BYLoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v5;
        _os_log_impl(&dword_265AC5000, v8, OS_LOG_TYPE_DEFAULT, "Finish setup will present precondition view controller for  %@", buf, 0xCu);
      }

      navigationController = self->_navigationController;
      if (!navigationController)
      {
        navigationController = self;
      }

      v10 = navigationController;
      [v10 presentViewController:v18[5] animated:1 completion:0];
    }
  }

  v11 = v18[5] != 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __95__BFFFinishSetupViewController__presentPreconditionViewControllerIfNecessaryForFlowController___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(*(a1 + 48) + 8) + 40) presentingViewController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__BFFFinishSetupViewController__presentPreconditionViewControllerIfNecessaryForFlowController___block_invoke_2;
  v9[3] = &unk_279BB4CA0;
  v7 = *(a1 + 32);
  v13 = a2;
  v10 = v7;
  v11 = v5;
  v12 = *(a1 + 40);
  v8 = v5;
  [v6 dismissViewControllerAnimated:1 completion:v9];
}

void __95__BFFFinishSetupViewController__presentPreconditionViewControllerIfNecessaryForFlowController___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = 138412802;
    v10 = v4;
    v11 = 1024;
    v12 = v3;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_265AC5000, v2, OS_LOG_TYPE_DEFAULT, "Finish setup did complete precondition view controller for %@ with precondition satisfied %d completed identifiers %@", &v9, 0x1Cu);
  }

  v6 = *(a1 + 48);
  if (*(a1 + 64) == 1)
  {
    [v6 _didSatisfyPreconditionsForFlowController:*(a1 + 32)];
  }

  else
  {
    [v6 _flowDidFinishForIdentifiers:*(a1 + 40) result:1];
  }

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

- (void)_didSatisfyPreconditionsForFlowController:(id)controller
{
  v14 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  controllerNeedsToRun = [controllerCopy controllerNeedsToRun];
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v11 = controllerNeedsToRun;
    v12 = 2112;
    v13 = controllerCopy;
    _os_log_impl(&dword_265AC5000, v6, OS_LOG_TYPE_DEFAULT, "Finish setup did observe needsToRun %d for %@", buf, 0x12u);
  }

  if (!controllerNeedsToRun)
  {
    firstObject = [(NSMutableArray *)self->_flowIdentifiers firstObject];
    v9 = firstObject;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [(BFFFinishSetupViewController *)self _flowDidFinishForIdentifiers:v8 result:1];
  }

  else
  {
LABEL_5:
    if (objc_opt_respondsToSelector())
    {
      [(BFFFinishSetupViewController *)self _performExtendedInitializationForFlowController:controllerCopy];
    }

    else
    {
      [(BFFFinishSetupViewController *)self _didSatisfyInitializationForFlowController:controllerCopy];
    }
  }
}

- (void)_performExtendedInitializationForFlowController:(id)controller
{
  v13 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = controllerCopy;
    _os_log_impl(&dword_265AC5000, v5, OS_LOG_TYPE_DEFAULT, "Finish setup will perform extended initialization for %@", buf, 0xCu);
  }

  v6 = [(OBSetupAssistantSpinnerController *)[BFFSpinnerController alloc] initWithSpinnerText:&stru_287761F90];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__BFFFinishSetupViewController__performExtendedInitializationForFlowController___block_invoke;
  v8[3] = &unk_279BB4A70;
  v9 = controllerCopy;
  selfCopy = self;
  v7 = controllerCopy;
  [(BFFFinishSetupViewController *)self _pushViewControllerOntoNavigationController:v6 completion:v8];
}

void __80__BFFFinishSetupViewController__performExtendedInitializationForFlowController___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__BFFFinishSetupViewController__performExtendedInitializationForFlowController___block_invoke_2;
  v4[3] = &unk_279BB4A70;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __80__BFFFinishSetupViewController__performExtendedInitializationForFlowController___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_265AC5000, v2, OS_LOG_TYPE_DEFAULT, "Finish setup extended initialization for %@ did reach the main queue", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__BFFFinishSetupViewController__performExtendedInitializationForFlowController___block_invoke_54;
  v7[3] = &unk_279BB4CF0;
  v5 = v4;
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [v5 performExtendedInitializationWithCompletion:v7];
}

void __80__BFFFinishSetupViewController__performExtendedInitializationForFlowController___block_invoke_54(int8x16_t *a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[2].i64[0];
    *buf = 138412546;
    v16 = v7;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_265AC5000, v6, OS_LOG_TYPE_DEFAULT, "Finish setup did perform extended initialization for %@ with success %d", buf, 0x12u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__BFFFinishSetupViewController__performExtendedInitializationForFlowController___block_invoke_55;
  block[3] = &unk_279BB4BE0;
  v14 = a2;
  v10 = a1[2];
  v8 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v13 = v5;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __80__BFFFinishSetupViewController__performExtendedInitializationForFlowController___block_invoke_55(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    return [v3 _didSatisfyInitializationForFlowController:*(a1 + 40)];
  }

  else
  {
    return [v3 _flowDidFinishForIdentifiers:*(a1 + 48) result:1];
  }
}

- (void)_didSatisfyInitializationForFlowController:(id)controller
{
  v16 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = controllerCopy;
    _os_log_impl(&dword_265AC5000, v5, OS_LOG_TYPE_DEFAULT, "Finish setup will present view controller for  %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __75__BFFFinishSetupViewController__didSatisfyInitializationForFlowController___block_invoke;
  v11 = &unk_279BB4D18;
  v6 = controllerCopy;
  v12 = v6;
  objc_copyWeak(&v13, buf);
  v7 = [v6 viewControllerWithCompletion:&v8];
  [(BFFFinishSetupViewController *)self _pushViewControllerOntoNavigationController:v7 completion:0, v8, v9, v10, v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __75__BFFFinishSetupViewController__didSatisfyInitializationForFlowController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 2048;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_265AC5000, v6, OS_LOG_TYPE_DEFAULT, "Finish setup flow %@ did complete with result %lu completed identifiers %@", &v9, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _flowDidFinishForIdentifiers:v5 result:a2];
}

- (void)_ensureNavigationControllerWithViewController:(id)controller pushCompletion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  objc_storeStrong(&self->_newRootViewController, controller);
  navigationItem = [controllerCopy navigationItem];
  [navigationItem setHidesBackButton:1];

  navigationController = self->_navigationController;
  if (navigationController)
  {
    if ([(BFFFinishSetupModalNavigationController *)navigationController _isTransitioning])
    {
      v11 = _BYLoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [BFFFinishSetupViewController _ensureNavigationControllerWithViewController:v11 pushCompletion:?];
      }
    }

    [(BFFNavigationController *)self->_navigationController pushViewController:controllerCopy completion:completionCopy];
  }

  else
  {
    v12 = objc_alloc_init(BFFFinishSetupModalNavigationController);
    v13 = self->_navigationController;
    self->_navigationController = v12;

    v22[0] = controllerCopy;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [(BFFFinishSetupModalNavigationController *)self->_navigationController setViewControllers:v14];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    [(BFFFinishSetupModalNavigationController *)self->_navigationController setIsPad:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
    v17 = _BYLoggingFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_navigationController;
      v20 = 138412290;
      v21 = v18;
      _os_log_impl(&dword_265AC5000, v17, OS_LOG_TYPE_DEFAULT, "did create _navigationController: %@", &v20, 0xCu);
    }

    [BFFViewControllerSpinnerManager configureWithNavigationController:self->_navigationController];
    [(BFFFinishSetupViewController *)self presentViewController:self->_navigationController animated:1 completion:completionCopy];
  }

  v19 = +[BFFStyle sharedStyle];
  [v19 applyThemeToNavigationController:self->_navigationController];
}

- (void)_pushViewControllerOntoNavigationController:(id)controller completion:(id)completion
{
  if (controller)
  {

    [BFFFinishSetupViewController _ensureNavigationControllerWithViewController:"_ensureNavigationControllerWithViewController:pushCompletion:" pushCompletion:?];
  }

  else
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_265AC5000, v5, OS_LOG_TYPE_DEFAULT, "failed to create view controller for next flow! will complete", v6, 2u);
    }

    [(BFFFinishSetupViewController *)self _complete];
  }
}

- (id)_flowControllerForFlowIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [identifier componentsSeparatedByString:@"."];
  lastObject = [v4 lastObject];

  if (!lastObject)
  {
    v7 = 0;
    goto LABEL_13;
  }

  overrideFlowControllerGenerator = self->_overrideFlowControllerGenerator;
  if (!overrideFlowControllerGenerator || (overrideFlowControllerGenerator[2](overrideFlowControllerGenerator, lastObject), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([lastObject isEqualToString:*MEMORY[0x277D4D9C0]])
    {
      v8 = +[BFFFinishSetupAssistantOptInController finishSetupAssistantOptInController];
    }

    else if ([lastObject isEqualToString:*MEMORY[0x277D4D9A0]])
    {
      v8 = +[BFFFinishSetupAppleIDController finishSetupAppleIDController];
    }

    else
    {
      if (![lastObject isEqualToString:*MEMORY[0x277D4D9A8]])
      {
        if ([lastObject isEqualToString:*MEMORY[0x277D4D9C8]])
        {
          v13 = +[BFFFinishSetupTouchIDController finishSetupTouchIDController];
        }

        else
        {
          if (![lastObject isEqualToString:*MEMORY[0x277D4D9B0]])
          {
            if (![lastObject isEqualToString:*MEMORY[0x277D4D9B8]])
            {
              v7 = 0;
              goto LABEL_12;
            }

            v8 = +[BFFFinishSetupPasscodeController finishSetupPasscodeController];
            goto LABEL_11;
          }

          v13 = +[BFFFinishSetupFaceIDController finishSetupFaceIDController];
        }

        v7 = v13;
        capabilities = [(BFFFinishSetupViewController *)self capabilities];
        [v7 setCapabilities:capabilities];

        goto LABEL_12;
      }

      v8 = [BFFFinishSetupPaymentController finishSetupPaymentControllerWithHost:self];
    }

LABEL_11:
    v7 = v8;
  }

LABEL_12:
  flowSkipController = [(BFFFinishSetupViewController *)self flowSkipController];
  [v7 setFlowSkipController:flowSkipController];

  paneFeatureAnalyticsManager = [(BFFFinishSetupViewController *)self paneFeatureAnalyticsManager];
  [v7 setPaneFeatureAnalyticsManager:paneFeatureAnalyticsManager];

LABEL_13:
  v11 = _BYLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_265AC5000, v11, OS_LOG_TYPE_DEFAULT, "Buddy followup did create flowController %@", &v15, 0xCu);
  }

  return v7;
}

- (id)_flowControllerForNextFlowIdentifier
{
  v11 = *MEMORY[0x277D85DE8];
  firstObject = [(NSMutableArray *)self->_flowIdentifiers firstObject];
  v4 = [(BFFFinishSetupViewController *)self _flowControllerForFlowIdentifier:firstObject];

  if (objc_opt_respondsToSelector())
  {
    prerequisiteFlowIdentifier = [v4 prerequisiteFlowIdentifier];
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = prerequisiteFlowIdentifier;
      _os_log_impl(&dword_265AC5000, v6, OS_LOG_TYPE_DEFAULT, "Buddy followup prerequisite flow identifier %@", &v9, 0xCu);
    }

    if (prerequisiteFlowIdentifier)
    {
      v7 = [(BFFFinishSetupViewController *)self _flowControllerForFlowIdentifier:prerequisiteFlowIdentifier];

      v4 = v7;
    }
  }

  return v4;
}

- (void)_flowDidFinishForIdentifiers:(id)identifiers result:(unint64_t)result
{
  identifiersCopy = identifiers;
  [(NSMutableArray *)self->_flowIdentifiers removeObjectsInArray:?];
  switch(result)
  {
    case 0uLL:
      v6 = &OBJC_IVAR___BFFFinishSetupViewController__completedFlowIdentifiers;
      goto LABEL_6;
    case 2uLL:
      goto LABEL_9;
    case 1uLL:
      v6 = &OBJC_IVAR___BFFFinishSetupViewController__skippedFlowIdentifiers;
LABEL_6:
      [*(&self->super.super.super.isa + *v6) addObjectsFromArray:identifiersCopy];
      break;
  }

  if ([(NSMutableArray *)self->_flowIdentifiers count])
  {
    [(BFFFinishSetupViewController *)self _startNextFlowIdentifier];
    goto LABEL_10;
  }

LABEL_9:
  [(BFFFinishSetupViewController *)self _complete];
LABEL_10:
}

- (void)_complete
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265AC5000, v3, OS_LOG_TYPE_DEFAULT, "Buddy followup will complete", buf, 2u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__BFFFinishSetupViewController__complete__block_invoke;
  aBlock[3] = &unk_279BB49A8;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (self->_navigationController)
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_265AC5000, v6, OS_LOG_TYPE_DEFAULT, "Buddy followup will dismiss navigation controller", buf, 2u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__BFFFinishSetupViewController__complete__block_invoke_70;
    v8[3] = &unk_279BB4B88;
    v8[4] = self;
    v9 = v5;
    [(BFFFinishSetupViewController *)self dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    (*(v4 + 2))(v4);
  }

  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265AC5000, v7, OS_LOG_TYPE_DEFAULT, "Buddy followup did complete", buf, 2u);
  }
}

void __41__BFFFinishSetupViewController__complete__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1048);
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 1048);
    *(v4 + 1048) = 0;

    v2 = *(a1 + 32);
  }

  *(v2 + 992) = 0;
}

uint64_t __41__BFFFinishSetupViewController__complete__block_invoke_70(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_265AC5000, v2, OS_LOG_TYPE_DEFAULT, "Buddy followup did dismiss navigation controller", v6, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 1000);
  *(v3 + 1000) = 0;

  return (*(*(a1 + 40) + 16))();
}

@end