@interface TSCrossPlatformSourceTransferFlow
- (id)_prepareDisplayItems:(id)items withPlanItems:(id)planItems;
- (id)firstViewController;
- (id)init:(BOOL)init;
- (id)nextViewControllerFrom:(id)from;
- (void)_bootstrapPlanTransfer;
- (void)_startBackgroundTask;
- (void)_stopBackgroundTask;
- (void)dealloc;
- (void)firstViewController;
- (void)firstViewController:(id)controller;
- (void)launchSimSetupForTransferPlanSelection:(id)selection completion:(id)completion;
- (void)transferEventUpdate:(id)update;
@end

@implementation TSCrossPlatformSourceTransferFlow

- (id)init:(BOOL)init
{
  v7.receiver = self;
  v7.super_class = TSCrossPlatformSourceTransferFlow;
  v4 = [(TSSIMSetupFlow *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TSCrossPlatformSourceTransferFlow *)v4 _bootstrapPlanTransfer];
    v5->_selectedPlanTransferStatus = 0;
    v5->_isFromDataTransferSession = init;
    v5->_isSecureIntentRejected = 0;
  }

  return v5;
}

- (id)firstViewController
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(TSCrossPlatformSourceTransferFlow *)v2 firstViewController:v3];
  }

  return 0;
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  client = self->_client;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__TSCrossPlatformSourceTransferFlow_firstViewController___block_invoke;
  v7[3] = &unk_279B44E30;
  objc_copyWeak(&v9, &location);
  v6 = controllerCopy;
  v8 = v6;
  [(CoreTelephonyClient *)client queryStartSessionRequest:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__TSCrossPlatformSourceTransferFlow_firstViewController___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[TSCrossPlatformSourceTransferFlow firstViewController:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "invalid TSCrossPlatformSourceTransferFlow @%s", &v11, 0xCu);
    }

    goto LABEL_7;
  }

  v5 = _TSLogDomain();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v7 = [v3 localizedDescription];
      v11 = 138412546;
      v12 = v7;
      v13 = 2080;
      v14 = "[TSCrossPlatformSourceTransferFlow firstViewController:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "unable to query start session request: %@ @%s", &v11, 0x16u);
    }

LABEL_7:

    (*(*(a1 + 32) + 16))();
    goto LABEL_11;
  }

  if (v6)
  {
    v11 = 136315138;
    v12 = "[TSCrossPlatformSourceTransferFlow firstViewController:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "Wait for launchSimSetupForTransferPlanSelection call from CT @%s", &v11, 0xCu);
  }

  v8 = MEMORY[0x2667315D0](*(a1 + 32));
  v9 = WeakRetained[13];
  WeakRetained[13] = v8;

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
}

- (id)nextViewControllerFrom:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
      goto LABEL_16;
    }

    v12 = +[TSUtilities isPad];
    selectedTransferPlan = self->_selectedTransferPlan;
    if (v12)
    {
      carrierName = [(CTDisplayPlan *)selectedTransferPlan carrierName];
    }

    else
    {
      phoneNumber = [(CTDisplayPlan *)selectedTransferPlan phoneNumber];
      carrierName = [phoneNumber formattedPhoneNumber];
    }

    if (!isSuccessState(self->_selectedPlanTransferStatus))
    {
      selectedPlanTransferStatus = self->_selectedPlanTransferStatus;
      if (selectedPlanTransferStatus == 8)
      {
        initWithSecureIntentRejected = [[TSMidOperationFailureViewController alloc] initShowErrorOnSourceWithDelayedDownloadECSWithPlanIdentifier:carrierName];
        goto LABEL_14;
      }

      if (selectedPlanTransferStatus != 4)
      {
        isSecureIntentRejected = self->_isSecureIntentRejected;
        v19 = [TSMidOperationFailureViewController alloc];
        if (isSecureIntentRejected)
        {
          initWithSecureIntentRejected = [(TSMidOperationFailureViewController *)v19 initWithSecureIntentRejected];
        }

        else
        {
          initWithSecureIntentRejected = [(TSMidOperationFailureViewController *)v19 initShowErrorOnSourceWithPlanIdentifier:carrierName];
        }

        goto LABEL_14;
      }
    }

    initWithSecureIntentRejected = [[TSCellularSetupCompleteViewController alloc] initWithPlanIdentifer:carrierName];
LABEL_14:
    v14 = initWithSecureIntentRejected;
    goto LABEL_15;
  }

  carrierName = fromCopy;
  selectedPlans = [carrierName selectedPlans];
  v7 = [selectedPlans count];

  if (v7 == 1)
  {
    selectedPlans2 = [carrierName selectedPlans];
    v9 = [selectedPlans2 objectAtIndexedSubscript:0];
    v10 = self->_selectedTransferPlan;
    self->_selectedTransferPlan = v9;

    initWithSecureIntentRejected = [[TSCellularSetupActivatingViewController alloc] initWithTransferOutPlan:self->_selectedTransferPlan];
    goto LABEL_14;
  }

  v14 = 0;
LABEL_15:

LABEL_16:

  return v14;
}

- (void)launchSimSetupForTransferPlanSelection:(id)selection completion:(id)completion
{
  location[3] = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  completionCopy = completion;
  if (self->_firstViewControllerCallback)
  {
    if ([selectionCopy count])
    {
      objc_initWeak(location, self);
      v8 = +[TSCellularPlanManagerCache sharedInstance];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __87__TSCrossPlatformSourceTransferFlow_launchSimSetupForTransferPlanSelection_completion___block_invoke;
      v21[3] = &unk_279B45F70;
      objc_copyWeak(&v25, location);
      v24 = completionCopy;
      v22 = selectionCopy;
      selfCopy = self;
      [v8 planItemsWithCompletion:v21];

      objc_destroyWeak(&v25);
      objc_destroyWeak(location);
    }

    else
    {
      v18 = _TSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(location[0]) = 136315138;
        *(location + 4) = "[TSCrossPlatformSourceTransferFlow launchSimSetupForTransferPlanSelection:completion:]";
        _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "no SIMs to support transfer @%s", location, 0xCu);
      }

      v19 = getpid();
      (*(completionCopy + 2))(completionCopy, 1, v19);
      (*(self->_firstViewControllerCallback + 2))();
    }
  }

  else
  {
    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TSCrossPlatformSourceTransferFlow *)v9 launchSimSetupForTransferPlanSelection:v10 completion:v11, v12, v13, v14, v15, v16];
    }

    v17 = getpid();
    (*(completionCopy + 2))(completionCopy, 0, v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __87__TSCrossPlatformSourceTransferFlow_launchSimSetupForTransferPlanSelection_completion___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if ([v3 indexOfObjectPassingTest:&__block_literal_global_32] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = _TSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __87__TSCrossPlatformSourceTransferFlow_launchSimSetupForTransferPlanSelection_completion___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }

      v13 = *(a1 + 48);
      v14 = getpid();
      (*(v13 + 16))(v13, 1, v14);
      (*(WeakRetained[13] + 16))();
    }

    else
    {
      v23 = [WeakRetained _prepareDisplayItems:*(a1 + 32) withPlanItems:v3];
      if ([v23 count])
      {
        v24 = [SSCrossPlatformTransferSourceSelectionViewController alloc];
        v25 = [v23 objectAtIndexedSubscript:0];
        v26 = [v23 objectAtIndexedSubscript:1];
        v27 = [(SSCrossPlatformTransferSourceSelectionViewController *)v24 initWithPlans:v25 planItems:v26 fromDataTransferSession:*(*(a1 + 40) + 112)];

        [WeakRetained setTopViewController:v27];
        v28 = _TSLogDomain();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 138412546;
          v35 = v27;
          v36 = 2080;
          v37 = "[TSCrossPlatformSourceTransferFlow launchSimSetupForTransferPlanSelection:completion:]_block_invoke";
          _os_log_impl(&dword_262AA8000, v28, OS_LOG_TYPE_DEFAULT, "first view controller : %@ @%s", &v34, 0x16u);
        }

        (*(WeakRetained[13] + 16))();
        v29 = *(a1 + 48);
        v30 = getpid();
        (*(v29 + 16))(v29, 1, v30);
      }

      else
      {
        (*(WeakRetained[13] + 16))();
        v31 = *(a1 + 48);
        v32 = getpid();
        (*(v31 + 16))(v31, 1, v32);
      }
    }
  }

  else
  {
    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __87__TSCrossPlatformSourceTransferFlow_launchSimSetupForTransferPlanSelection_completion___block_invoke_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)transferEventUpdate:(id)update
{
  v62 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v57 = updateCopy;
    v58 = 2080;
    v59 = "[TSCrossPlatformSourceTransferFlow transferEventUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "transfer event : %@ @%s", buf, 0x16u);
  }

  v6 = [updateCopy objectForKey:@"kCrossTransferTimeout"];

  if (v6)
  {
    v7 = MEMORY[0x277D75110];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CROSSTRANSFER_TIMEOUT_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    v10 = +[TSUtilities isGreenTeaCapable];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    if (v10)
    {
      v13 = @"CROSSTRANSFER_TIMEOUT_DETAIL_WLAN";
    }

    else
    {
      v13 = @"CROSSTRANSFER_TIMEOUT_DETAIL_WIFI";
    }

    v14 = [v11 localizedStringForKey:v13 value:&stru_28753DF48 table:@"Localizable"];
    v15 = [v7 alertControllerWithTitle:v9 message:v14 preferredStyle:1];

    v16 = MEMORY[0x277D750F8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __57__TSCrossPlatformSourceTransferFlow_transferEventUpdate___block_invoke;
    v54[3] = &unk_279B44B38;
    v54[4] = self;
    v19 = [v16 actionWithTitle:v18 style:1 handler:v54];
    [v15 addAction:v19];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__TSCrossPlatformSourceTransferFlow_transferEventUpdate___block_invoke_2;
    block[3] = &unk_279B44490;
    block[4] = self;
    v53 = v15;
    topViewController4 = v15;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_47;
  }

  v21 = [updateCopy objectForKeyedSubscript:@"kCrossTransferEndSession"];
  bOOLValue = [v21 BOOLValue];

  v47 = bOOLValue;
  if (!bOOLValue || !self->_isFromDataTransferSession || ([(TSSIMSetupFlow *)self topViewController], v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v24 = objc_opt_isKindOfClass(), v23, (v24 & 1) == 0))
  {
    topViewController4 = [updateCopy objectForKeyedSubscript:@"kMultiplePlanInstallStatus"];
    if (![topViewController4 count])
    {
      goto LABEL_47;
    }

    if (v47)
    {
      v26 = [updateCopy objectForKey:@"kCrossTransferSecureIntentRejected"];

      if (v26)
      {
        self->_isSecureIntentRejected = 1;
      }
    }

    v46 = updateCopy;
    v27 = _TSLogDomain();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = @"False";
      *buf = 138412802;
      v57 = topViewController4;
      if (v47)
      {
        v28 = @"True";
      }

      v58 = 2112;
      v59 = v28;
      v60 = 2080;
      v61 = "[TSCrossPlatformSourceTransferFlow transferEventUpdate:]";
      _os_log_impl(&dword_262AA8000, v27, OS_LOG_TYPE_DEFAULT, "handle multi plan install status : %@ isEndSession %@ @%s", buf, 0x20u);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    topViewController4 = topViewController4;
    v29 = [topViewController4 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (!v29)
    {
LABEL_46:

      updateCopy = v46;
      goto LABEL_47;
    }

    v30 = v29;
    v31 = *v49;
LABEL_24:
    v32 = 0;
    while (1)
    {
      if (*v49 != v31)
      {
        objc_enumerationMutation(topViewController4);
      }

      v33 = *(*(&v48 + 1) + 8 * v32);
      v34 = [v33 objectForKeyedSubscript:@"kSourceIccid"];
      if ([v34 length] && !-[CTDisplayPlan isPlanWithIccid:](self->_selectedTransferPlan, "isPlanWithIccid:", v34))
      {
        goto LABEL_44;
      }

      v35 = [v33 objectForKeyedSubscript:@"kInstallStatus"];
      v36 = v35;
      if (!v35)
      {
        topViewController3 = _TSLogDomain();
        if (os_log_type_enabled(topViewController3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v57 = v33;
          v58 = 2080;
          v59 = "[TSCrossPlatformSourceTransferFlow transferEventUpdate:]";
          _os_log_impl(&dword_262AA8000, topViewController3, OS_LOG_TYPE_DEFAULT, "missing state : %@ @%s", buf, 0x16u);
        }

        goto LABEL_42;
      }

      if ((v37 = [v35 unsignedIntegerValue], self->_selectedPlanTransferStatus = v37, isTerminalState(v37)) || (selectedPlanTransferStatus = self->_selectedPlanTransferStatus, selectedPlanTransferStatus == 4) || (selectedPlanTransferStatus == 8 ? (v39 = v47 == 0) : (v39 = 1), !v39))
      {
        topViewController = [(TSSIMSetupFlow *)self topViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          break;
        }
      }

      topViewController2 = [(TSSIMSetupFlow *)self topViewController];
      objc_opt_class();
      v44 = objc_opt_isKindOfClass();

      if (v44)
      {
        topViewController3 = [(TSSIMSetupFlow *)self topViewController];
        [topViewController3 setTransferStarted];
        [(TSCrossPlatformSourceTransferFlow *)self _startBackgroundTask];
        goto LABEL_42;
      }

LABEL_43:

LABEL_44:
      if (v30 == ++v32)
      {
        v30 = [topViewController4 countByEnumeratingWithState:&v48 objects:v55 count:16];
        if (!v30)
        {
          goto LABEL_46;
        }

        goto LABEL_24;
      }
    }

    topViewController3 = [(TSSIMSetupFlow *)self topViewController];
    [(TSSIMSetupFlow *)self viewControllerDidComplete:topViewController3];
LABEL_42:

    goto LABEL_43;
  }

  v25 = _TSLogDomain();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v57 = "[TSCrossPlatformSourceTransferFlow transferEventUpdate:]";
    _os_log_impl(&dword_262AA8000, v25, OS_LOG_TYPE_DEFAULT, "Data+eSIM case,topview is SSCrossPlatformTransferSourceSelectionViewController and source received end session(skip or carrier lock on target case), exit flow @%s", buf, 0xCu);
  }

  topViewController4 = [(TSSIMSetupFlow *)self topViewController];
  [(TSSIMSetupFlow *)self viewControllerDidComplete:topViewController4];
LABEL_47:

  v45 = *MEMORY[0x277D85DE8];
}

void __57__TSCrossPlatformSourceTransferFlow_transferEventUpdate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)_bootstrapPlanTransfer
{
  v3 = objc_alloc(MEMORY[0x277CC37B0]);
  v4 = [v3 initWithQueue:MEMORY[0x277D85CD0]];
  client = self->_client;
  self->_client = v4;

  v6 = self->_client;

  [(CoreTelephonyClient *)v6 setDelegate:self];
}

- (id)_prepareDisplayItems:(id)items withPlanItems:(id)planItems
{
  v37 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  planItemsCopy = planItems;
  if ([planItemsCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v24 = planItemsCopy;
    v7 = [planItemsCopy sortedArrayUsingComparator:&__block_literal_global_83_0];
    array2 = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(obj);
          }

          iccid = [*(*(&v31 + 1) + 8 * i) iccid];
          v13 = [iccid copy];

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v14 = itemsCopy;
          v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v28;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v28 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v27 + 1) + 8 * j);
                if ([v19 isPlanWithIccid:v13])
                {
                  [array2 addObject:v19];
                  goto LABEL_17;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
    }

    v20 = array;
    [array addObject:array2];
    [array addObject:obj];

    planItemsCopy = v24;
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __72__TSCrossPlatformSourceTransferFlow__prepareDisplayItems_withPlanItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 supportedTransferOption];
  if ((([v5 supportedTransferOption] >> 2) & 1) == ((v6 >> 2) & 1))
  {
    v7 = [v4 isSelected];
    if (v7 == [v5 isSelected])
    {
      v8 = 0;
    }

    else if ([v4 isSelected])
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  else if ((v6 & 4) != 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_startBackgroundTask
{
  if (*MEMORY[0x277D767B0] == self->_backgroundTask)
  {
    objc_initWeak(&location, self);
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__TSCrossPlatformSourceTransferFlow__startBackgroundTask__block_invoke;
    v4[3] = &unk_279B44400;
    objc_copyWeak(&v5, &location);
    self->_backgroundTask = [mEMORY[0x277D75128] beginBackgroundTaskWithExpirationHandler:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __57__TSCrossPlatformSourceTransferFlow__startBackgroundTask__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TSCrossPlatformSourceTransferFlow _startBackgroundTask]_block_invoke";
    _os_log_impl(&dword_262AA8000, v2, OS_LOG_TYPE_DEFAULT, "background task expired @%s", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopBackgroundTask];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_stopBackgroundTask
{
  v2 = *MEMORY[0x277D767B0];
  if (*MEMORY[0x277D767B0] != self->_backgroundTask)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] endBackgroundTask:self->_backgroundTask];

    self->_backgroundTask = v2;
  }
}

- (void)dealloc
{
  [(TSCrossPlatformSourceTransferFlow *)self _stopBackgroundTask];
  v3.receiver = self;
  v3.super_class = TSCrossPlatformSourceTransferFlow;
  [(TSCrossPlatformSourceTransferFlow *)&v3 dealloc];
}

- (void)firstViewController
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, self, a3, "[E]unimplemented - please use async version @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)launchSimSetupForTransferPlanSelection:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid callback @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __87__TSCrossPlatformSourceTransferFlow_launchSimSetupForTransferPlanSelection_completion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]don't have eligible plan to transfer @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __87__TSCrossPlatformSourceTransferFlow_launchSimSetupForTransferPlanSelection_completion___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid self @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end