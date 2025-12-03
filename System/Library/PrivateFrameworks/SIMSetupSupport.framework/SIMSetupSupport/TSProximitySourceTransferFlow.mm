@interface TSProximitySourceTransferFlow
- (TSProximitySourceTransferFlow)initWithPeerDevice:(id)device;
- (id)firstViewController;
- (id)initForResumptionWithSelectedTransferPlans:(int)plans targetUICapability:(BOOL)capability isPreSharedKeyPresent:(BOOL)present;
- (id)nextViewControllerFrom:(id)from;
- (unint64_t)_decodeTransferStatus:(id)status;
- (void)_assertNFC;
- (void)_bootstrapTransfer;
- (void)_deassertNFC;
- (void)_handleSKEvent:(id)event;
- (void)_handleTransferResults:(id)results;
- (void)_handleTransferUICapability:(id)capability;
- (void)_proxCardFlowDidDismiss;
- (void)_resetExtension:(id)extension;
- (void)_setupClient:(id)client;
- (void)_timerFired;
- (void)_updateTransferStatus:(id)status;
- (void)dealloc;
- (void)didComplete;
- (void)didRequestPresentationForProxCard:(id)card;
- (void)firstViewController;
- (void)firstViewController:(id)controller;
- (void)transferEventUpdate:(id)update;
- (void)viewControllerDidComplete:(id)complete;
@end

@implementation TSProximitySourceTransferFlow

- (TSProximitySourceTransferFlow)initWithPeerDevice:(id)device
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = TSProximitySourceTransferFlow;
  v6 = [(TSSIMSetupFlow *)&v22 init];
  v7 = v6;
  if (v6)
  {
    v6->_isAuthenticationCompleted = 0;
    v6->_isFlowCompleted = 0;
    v6->_isRemotePeerClosed = 0;
    v6->_passcodeType = 0;
    v8 = objc_alloc(MEMORY[0x277CC37B0]);
    v9 = [v8 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v7->_ctClient;
    v7->_ctClient = v9;

    [(CoreTelephonyClient *)v7->_ctClient setDelegate:v7];
    objc_storeStrong(&v7->_peerDeviceInfo, device);
    v21 = 0;
    v11 = [objc_alloc(MEMORY[0x277CBE020]) initWithDictionary:deviceCopy error:&v21];
    v12 = v21;
    if (v12)
    {
      v13 = _TSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [TSProximitySourceTransferFlow initWithPeerDevice:];
      }

      v7->_remoteDeviceClass = 0;
    }

    else
    {
      if ([v11 nearbyActionDeviceClass])
      {
        nearbyActionDeviceClass = [v11 nearbyActionDeviceClass];
      }

      else
      {
        v15 = _TSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v24 = "[TSProximitySourceTransferFlow initWithPeerDevice:]";
          _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, "no device class from bluetooth, set as iPhone @%s", buf, 0xCu);
        }

        nearbyActionDeviceClass = 1;
      }

      v7->_remoteDeviceClass = nearbyActionDeviceClass;
      nearbyActionExtraData = [v11 nearbyActionExtraData];
      v7->_isDeviceIdentifierPresent = nearbyActionExtraData != 0;
    }

    if (!v7->_proxTransferController)
    {
      v17 = [[TSCellularPlanProximityTransferController alloc] initWithESIMDelegate:v7];
      proxTransferController = v7->_proxTransferController;
      v7->_proxTransferController = v17;
    }

    [(TSProximitySourceTransferFlow *)v7 _setupClient:deviceCopy];
    [(TSProximitySourceTransferFlow *)v7 _assertNFC];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)initForResumptionWithSelectedTransferPlans:(int)plans targetUICapability:(BOOL)capability isPreSharedKeyPresent:(BOOL)present
{
  v16.receiver = self;
  v16.super_class = TSProximitySourceTransferFlow;
  v8 = [(TSSIMSetupFlow *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_isAuthenticationCompleted = 1;
    v8->_isFlowCompleted = 0;
    v8->_isRemotePeerClosed = 0;
    v10 = objc_alloc(MEMORY[0x277CC37B0]);
    v11 = [v10 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v9->_ctClient;
    v9->_ctClient = v11;

    [(CoreTelephonyClient *)v9->_ctClient setDelegate:v9];
    v9->_isResumingAfterPause = 1;
    v9->_selectedTransferPlansCount = plans;
    v9->_supportsSyncTransferResults = capability;
    v9->_isPreSharedKeyPresent = present;
    if (!v9->_proxTransferController)
    {
      v13 = [[TSCellularPlanProximityTransferController alloc] initWithESIMDelegate:v9];
      proxTransferController = v9->_proxTransferController;
      v9->_proxTransferController = v13;
    }
  }

  return v9;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[TSProximitySourceTransferFlow dealloc]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "invalidate SKSetupSIMTransferClient @%s", buf, 0xCu);
  }

  if (self->_isHiding)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[TSProximitySourceTransferFlow dealloc]";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "TSProximitySourceTransferFlow hidden @%s", buf, 0xCu);
    }
  }

  else
  {
    btClient = self->_btClient;
    if (btClient)
    {
      [(SSProximityDevice *)btClient invalidate:0];
      v6 = self->_btClient;
      self->_btClient = 0;

      [(TSProximitySourceTransferFlow *)self _deassertNFC];
    }

    else
    {
      [(CoreTelephonyClient *)self->_ctClient invalidateProximityTransfer:1 force:1 completion:0];
    }
  }

  v8.receiver = self;
  v8.super_class = TSProximitySourceTransferFlow;
  [(TSProximitySourceTransferFlow *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)firstViewController
{
  *&v34[5] = *MEMORY[0x277D85DE8];
  if (+[TSUtilities inBuddy])
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [TSProximitySourceTransferFlow firstViewController];
    }

LABEL_4:

LABEL_5:
    v4 = 0;
    goto LABEL_42;
  }

  if (self->_isResumingAfterPause)
  {
    v5 = [TSPRXSIMTransferringViewController alloc];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"PRXCARD_TRANSFERRING_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"PRXCARD_TRANSFERRING_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
    v4 = [(TSPRXSIMTransferringViewController *)v5 initWithTitle:v7 subtitle:v9 otpDetectorNeeded:0];

    [(TSSIMSetupFlow *)self setTopViewController:v4];
    goto LABEL_42;
  }

  if (!self->_btClient)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [TSProximitySourceTransferFlow firstViewController];
    }

    goto LABEL_4;
  }

  v10 = MGGetSInt32Answer();
  if (v10 >= 0x10)
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TSProximitySourceTransferFlow firstViewController];
    }

    v10 = 0;
  }

  if (self->_remoteDeviceClass)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && v10 != self->_remoteDeviceClass)
  {
    v20 = _TSLogDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      remoteDeviceClass = self->_remoteDeviceClass;
      *buf = 67109634;
      *v33 = remoteDeviceClass;
      *&v33[4] = 1024;
      *&v33[6] = v10;
      v34[0] = 2080;
      *&v34[1] = "[TSProximitySourceTransferFlow firstViewController]";
      _os_log_impl(&dword_262AA8000, v20, OS_LOG_TYPE_DEFAULT, "device class mismatch. remote(%d), local(%d) @%s", buf, 0x18u);
    }

    goto LABEL_5;
  }

  ctClient = self->_ctClient;
  if (self->_isPreSharedKeyPresent)
  {
    v15 = 6;
  }

  else
  {
    v15 = 1;
  }

  v31 = 0;
  v16 = [(CoreTelephonyClient *)ctClient isAnyPlanTransferableFromThisDeviceForFlow:v15 OrError:&v31];
  v17 = v31;
  v4 = 0;
  if (v16)
  {
    if (+[TSUtilities isDeviceLocked])
    {
      v18 = _TSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v33 = "[TSProximitySourceTransferFlow firstViewController]";
        _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "device locked. unlock first. @%s", buf, 0xCu);
      }

      v19 = objc_alloc_init(TSPRXDeviceUnlockViewController);
    }

    else
    {
      if (self->_isPreSharedKeyPresent)
      {
        v23 = [TSPRXReconnectWaitingViewController alloc];
        v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v25 = [v24 localizedStringForKey:@"PRXCARD_RECONNECTING_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v27 = [v26 localizedStringForKey:@"PRXCARD_RECONNECTING_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
        v4 = [(TSPRXReconnectWaitingViewController *)v23 initWithTitle:v25 subtitle:v27];

LABEL_38:
        [(TSIDSSimTransferringViewController *)v4 setDelegate:self];
        [(TSSIMSetupFlow *)self setTopViewController:v4];
        v28 = _TSLogDomain();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v33 = v4;
          *&v33[8] = 2080;
          *v34 = "[TSProximitySourceTransferFlow firstViewController]";
          _os_log_impl(&dword_262AA8000, v28, OS_LOG_TYPE_DEFAULT, "first view controller: %@ @%s", buf, 0x16u);
        }

        goto LABEL_41;
      }

      v19 = [[TSPRXStartViewController alloc] initWithBtDevice:self->_btClient];
    }

    v4 = v19;
    goto LABEL_38;
  }

LABEL_41:

LABEL_42:
  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(TSSIMSetupFlow *)self delegate];
  v6 = [delegate conformsToProtocol:&unk_2875CC048];

  if (v6)
  {
    delegate2 = [(TSSIMSetupFlow *)self delegate];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__TSProximitySourceTransferFlow_firstViewController___block_invoke;
    v15[3] = &unk_279B44578;
    v15[4] = self;
    [delegate2 setViewDisappearHandler:v15];
  }

  else
  {
    delegate2 = _TSLogDomain();
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_FAULT))
    {
      [TSProximitySourceTransferFlow firstViewController:delegate2];
    }
  }

  if (self->_isDeviceIdentifierPresent)
  {
    objc_initWeak(&location, self);
    ctClient = self->_ctClient;
    peerDeviceInfo = self->_peerDeviceInfo;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_112;
    v11[3] = &unk_279B442E8;
    objc_copyWeak(&v13, &location);
    v12 = controllerCopy;
    [(CoreTelephonyClient *)ctClient isPreSharedKeyForReconnectionPresent:peerDeviceInfo completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    firstViewController = [(TSProximitySourceTransferFlow *)self firstViewController];
    (*(controllerCopy + 2))(controllerCopy, firstViewController);
  }
}

void __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_112(uint64_t a1, char a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained setIsPreSharedKeyPresent:1];
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v21 = 1;
        v22 = 2080;
        v23 = "[TSProximitySourceTransferFlow firstViewController:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "PreSharedKey present: %d @%s", buf, 0x12u);
      }

      v9 = objc_loadWeakRetained((a1 + 40));
      v10 = [v9 firstViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        v12 = objc_loadWeakRetained((a1 + 40));
        v13 = [v12 btClient];
        v14 = [v7 isPreSharedKeyPresent];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_113;
        v16[3] = &unk_279B45A10;
        objc_copyWeak(&v19, (a1 + 40));
        v18 = *(a1 + 32);
        v17 = v10;
        [v13 activateUsingPreSharedKey:v14 completion:v16];

        objc_destroyWeak(&v19);
      }
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_112_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v3)
    {
      v7 = *(a1 + 32);
      v6 = *(*(a1 + 40) + 16);
      goto LABEL_9;
    }

    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_113_cold_1();
    }
  }

  else
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_112_cold_1();
    }
  }

  v6 = *(*(a1 + 40) + 16);
LABEL_9:
  v6();
}

- (id)nextViewControllerFrom:(id)from
{
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (self->_isRemotePeerClosed)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[TSPRXPasscodeEntryViewController alloc] initWithBtDevice:self->_btClient passcodeType:self->_passcodeType];
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        secureIntentProxCard = self->_secureIntentProxCard;
        if (secureIntentProxCard)
        {
          v6 = secureIntentProxCard;
          goto LABEL_25;
        }

        if (!self->_isTransferCompleted)
        {
          goto LABEL_24;
        }

        [(TSProximitySourceTransferFlow *)self _deassertNFC];
        [(TSSIMSetupFlow *)self setIdleTimerDisabled:0];
        v13 = _TSLogDomain();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          areAllPlansTransferedOut = self->_areAllPlansTransferedOut;
          numSelectedPlansNotTransferredOut = self->_numSelectedPlansNotTransferredOut;
          v21[0] = 67109634;
          v21[1] = areAllPlansTransferedOut;
          v22 = 1024;
          v23 = numSelectedPlansNotTransferredOut;
          v24 = 2080;
          v25 = "[TSProximitySourceTransferFlow nextViewControllerFrom:]";
          _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "all transfered : %{BOOL}d, has transfer failure : %d @%s", v21, 0x18u);
        }

        supportsSyncTransferResults = self->_supportsSyncTransferResults;
        v17 = [TSPRXSIMTransferCompleteViewController alloc];
        selectedTransferPlansCount = self->_selectedTransferPlansCount;
        if (supportsSyncTransferResults)
        {
          v5 = [(TSPRXSIMTransferCompleteViewController *)v17 initWithSelectedPlansCount:selectedTransferPlansCount selectedPlansFailedTransferCount:self->_numSelectedPlansNotTransferredOut isDisembarkUIRequired:self->_isPreSharedKeyPresent];
        }

        else
        {
          v5 = [(TSPRXSIMTransferCompleteViewController *)v17 initWithoutTargetSyncAndSelectedPlansCount:selectedTransferPlansCount];
        }

        goto LABEL_5;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && self->_isPreSharedKeyPresent && self->_areAllPlansTransferedOut)
      {
        v5 = objc_alloc_init(SSPRXD2DMigrationDoneViewController);
LABEL_5:
        v6 = v5;
        if (v5)
        {
          goto LABEL_25;
        }
      }

LABEL_24:
      self->_isFlowCompleted = 1;
      [(TSProximitySourceTransferFlow *)self _deassertNFC];
      [(TSSIMSetupFlow *)self setIdleTimerDisabled:0];
      v6 = 0;
      goto LABEL_25;
    }
  }

  if (!self->_isAuthenticationCompleted)
  {
    goto LABEL_24;
  }

  v7 = [TSPRXSIMTransferringViewController alloc];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PRXCARD_TRANSFERRING_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PRXCARD_TRANSFERRING_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
  v6 = [(TSPRXSIMTransferringViewController *)v7 initWithTitle:v9 subtitle:v11 otpDetectorNeeded:1];

  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_25:

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)didRequestPresentationForProxCard:(id)card
{
  cardCopy = card;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__TSProximitySourceTransferFlow_didRequestPresentationForProxCard___block_invoke;
  block[3] = &unk_279B443D8;
  objc_copyWeak(&v8, &location);
  v7 = cardCopy;
  v5 = cardCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __67__TSProximitySourceTransferFlow_didRequestPresentationForProxCard___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = (a1 + 32);
    v6 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *v5;
      v8 = objc_loadWeakRetained((a1 + 40));
      [v8 setSecureIntentProxCard:v7];

      v12 = objc_loadWeakRetained((a1 + 40));
      v9 = [v12 topViewController];
      [v12 viewControllerDidComplete:v9];
    }

    else
    {
      v11 = _TSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __67__TSProximitySourceTransferFlow_didRequestPresentationForProxCard___block_invoke_cold_2(v5);
      }
    }
  }

  else
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __67__TSProximitySourceTransferFlow_didRequestPresentationForProxCard___block_invoke_cold_1((a1 + 40));
    }
  }
}

- (void)didComplete
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__TSProximitySourceTransferFlow_didComplete__block_invoke;
  v2[3] = &unk_279B44400;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __44__TSProximitySourceTransferFlow_didComplete__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isRemotePeerClosed];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (!v3)
  {
    v7 = [v4 secureIntentProxCard];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [v9 secureIntentProxCard];

      if ([v10 isSecureIntentFailed])
      {
        v11 = _TSLogDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v33 = "[TSProximitySourceTransferFlow didComplete]_block_invoke";
          _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "secure intent failed, cancel the flow @%s", buf, 0xCu);
        }

        v12 = objc_loadWeakRetained((a1 + 32));
        [v12 _deassertNFC];

        v13 = objc_loadWeakRetained((a1 + 32));
        [v13 userDidTapCancel];

LABEL_23:
        v25 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    v14 = objc_loadWeakRetained((a1 + 32));
    [v14 setSecureIntentProxCard:0];

    v15 = objc_loadWeakRetained((a1 + 32));
    v16 = [v15 topViewController];
    v10 = [v16 navigationController];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [v10 viewControllers];
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = objc_loadWeakRetained((a1 + 32));
            [v23 setTopViewController:v22];

            v24 = [v10 popToViewController:v22 animated:1];
            goto LABEL_22;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v17 = _TSLogDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __44__TSProximitySourceTransferFlow_didComplete__block_invoke_cold_1();
    }

LABEL_22:

    goto LABEL_23;
  }

  [v4 _deassertNFC];

  v26 = objc_loadWeakRetained((a1 + 32));
  [v26 attemptFailed];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)transferEventUpdate:(id)update
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = updateCopy;
    v20 = 2080;
    v21 = "[TSProximitySourceTransferFlow transferEventUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "transfer event : %@ @%s", buf, 0x16u);
  }

  v6 = [updateCopy objectForKey:@"kSelectedTransferPlansCount"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_selectedTransferPlansCount = [v6 unsignedIntValue];
    }
  }

  v7 = [updateCopy objectForKey:@"kTransferConfirmation"];

  if (v7)
  {
    topViewController = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      self->_isTransferCompleted = 1;
      if (self->_supportsSyncTransferResults)
      {
        [(NSTimer *)self->_timer invalidate];
        v10 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__timerFired selector:0 userInfo:0 repeats:120.0];
        timer = self->_timer;
        self->_timer = v10;
      }

      else
      {
        timer = [(TSSIMSetupFlow *)self topViewController];
        [(TSProximitySourceTransferFlow *)self viewControllerDidComplete:timer];
      }
    }
  }

  v12 = [updateCopy objectForKey:@"UpdateProxCardVisibility"];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v12 BOOLValue])
      {
        v13 = _TSLogDomain();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [TSProximitySourceTransferFlow transferEventUpdate:];
        }
      }

      else
      {
        self->_isHiding = 1;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __53__TSProximitySourceTransferFlow_transferEventUpdate___block_invoke;
        v17[3] = &unk_279B44578;
        v17[4] = self;
        [(TSProximitySourceTransferFlow *)self _resetExtension:v17];
      }
    }
  }

  v14 = [updateCopy objectForKey:@"TransferUICapability"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TSProximitySourceTransferFlow *)self _handleTransferUICapability:v14];
    }
  }

  v15 = [updateCopy objectForKey:@"TransferResults"];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TSProximitySourceTransferFlow *)self _handleTransferResults:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)viewControllerDidComplete:(id)complete
{
  v14 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TSProximitySourceTransferFlow *)self didComplete];
  }

  else
  {
    v5 = [(TSProximitySourceTransferFlow *)self nextViewControllerFrom:completeCopy];

    if (v5)
    {
      v8.receiver = self;
      v8.super_class = TSProximitySourceTransferFlow;
      [(TSSIMSetupFlow *)&v8 viewControllerDidComplete:completeCopy];
    }

    else
    {
      v6 = _TSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v13 = "[TSProximitySourceTransferFlow viewControllerDidComplete:]";
        _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "flow end, reset extension @%s", buf, 0xCu);
      }

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __59__TSProximitySourceTransferFlow_viewControllerDidComplete___block_invoke;
      v9[3] = &unk_279B44490;
      v10 = completeCopy;
      selfCopy = self;
      [(TSProximitySourceTransferFlow *)self _resetExtension:v9];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

id __59__TSProximitySourceTransferFlow_viewControllerDidComplete___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSProximitySourceTransferFlow;
  return objc_msgSendSuper2(&v3, sel_viewControllerDidComplete_, v1);
}

- (void)_setupClient:(id)client
{
  clientCopy = client;
  if (self->_btClient)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [TSProximitySourceTransferFlow _setupClient:];
    }
  }

  else
  {
    v6 = [SSProximityDevice alloc];
    v7 = [(SSProximityDevice *)v6 initWithQueue:MEMORY[0x277D85CD0] endpoint:1 remoteInfo:clientCopy];
    btClient = self->_btClient;
    self->_btClient = v7;

    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__TSProximitySourceTransferFlow__setupClient___block_invoke;
    v9[3] = &unk_279B45A38;
    objc_copyWeak(&v10, &location);
    [(SSProximityDevice *)self->_btClient setEventHandler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __46__TSProximitySourceTransferFlow__setupClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSKEvent:v3];
}

- (void)_handleSKEvent:(id)event
{
  v27 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    *v24 = eventCopy;
    *&v24[8] = 2080;
    v25 = "[TSProximitySourceTransferFlow _handleSKEvent:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "receive SKEvent: %@ @%s", &v23, 0x16u);
  }

  eventType = [eventCopy eventType];
  if (eventType <= 40)
  {
    if (eventType != 20)
    {
      if (eventType == 40)
      {
        [(TSSIMSetupFlow *)self setIdleTimerDisabled:1];
        [(TSProximitySourceTransferFlow *)self _bootstrapTransfer];
      }

      goto LABEL_30;
    }

    error = [eventCopy error];

    if (error)
    {
      goto LABEL_30;
    }

    self->_isAuthenticationCompleted = 1;
LABEL_20:
    topViewController = [(TSSIMSetupFlow *)self topViewController];
    [(TSProximitySourceTransferFlow *)self viewControllerDidComplete:topViewController];
LABEL_29:

    goto LABEL_30;
  }

  if (eventType == 41)
  {
    [(TSProximitySourceTransferFlow *)self _deassertNFC];
    [(TSSIMSetupFlow *)self setIdleTimerDisabled:0];
    v16 = _TSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      *v24 = "[TSProximitySourceTransferFlow _handleSKEvent:]";
      _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "connection closed from remote peer @%s", &v23, 0xCu);
    }

    self->_isRemotePeerClosed = 1;
    topViewController = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_29;
    }

    topViewController2 = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_30;
    }

    goto LABEL_20;
  }

  if (eventType != 120)
  {
    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = eventCopy;
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      pairingFlags = [topViewController pairingFlags];
      passwordType = [topViewController passwordType];
      throttleSeconds = [topViewController throttleSeconds];
      v23 = 67109890;
      *v24 = pairingFlags;
      *&v24[4] = 1024;
      *&v24[6] = passwordType;
      LOWORD(v25) = 1024;
      *(&v25 + 2) = throttleSeconds;
      HIWORD(v25) = 2080;
      v26 = "[TSProximitySourceTransferFlow _handleSKEvent:]";
      _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "flag:%d, type:%d, throttle:%d @%s", &v23, 0x1Eu);
    }

    self->_passcodeType = [topViewController passwordType];
    topViewController3 = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    topViewController4 = [(TSSIMSetupFlow *)self topViewController];
    if (v13)
    {
      [(TSProximitySourceTransferFlow *)self viewControllerDidComplete:topViewController4];
    }

    else
    {
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if ((v20 & 1) == 0)
      {
        goto LABEL_29;
      }

      v21 = _TSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315138;
        *v24 = "[TSProximitySourceTransferFlow _handleSKEvent:]";
        _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, "the PIN code is wrong, retry @%s", &v23, 0xCu);
      }

      topViewController4 = [(TSSIMSetupFlow *)self topViewController];
      [topViewController4 retry];
    }

    goto LABEL_29;
  }

  v19 = _TSLogDomain();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [TSProximitySourceTransferFlow _handleSKEvent:eventCopy];
  }

LABEL_30:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_bootstrapTransfer
{
  templateSession = [(SSProximityDevice *)self->_btClient templateSession];
  objc_initWeak(&location, self);
  if ([(TSProximitySourceTransferFlow *)self isPreSharedKeyPresent])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  ctClient = self->_ctClient;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke;
  v6[3] = &unk_279B45A60;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  [(CoreTelephonyClient *)ctClient bootstrapPlanTransferForEndpoint:1 flowType:v4 usingMessageSession:templateSession completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke_cold_1();
    }

    v5 = [TSUtilities getErrorTitleDetail:v3 forCarrier:0];
    v6 = MEMORY[0x277D75110];
    v7 = [v5 objectForKeyedSubscript:@"ErrorHeader"];
    v8 = [v5 objectForKeyedSubscript:@"ErrorDetail"];
    v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

    v10 = MEMORY[0x277D750F8];
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke_151;
    v19[3] = &unk_279B44550;
    objc_copyWeak(&v20, (a1 + 40));
    v14 = [v10 actionWithTitle:v13 style:1 handler:v19];
    [v9 addAction:v14];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke_2;
    block[3] = &unk_279B443D8;
    objc_copyWeak(&v18, (a1 + 40));
    v17 = v9;
    v15 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
  }
}

void __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke_151(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained btClient];
  [v3 invalidate:1];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setBtClient:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _deassertNFC];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 userDidTapCancel];
}

void __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained topViewController];
  [v2 presentViewController:*(a1 + 32) animated:1 completion:0];
}

- (void)_handleTransferUICapability:(id)capability
{
  v14 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = capabilityCopy;
    v12 = 2080;
    v13 = "[TSProximitySourceTransferFlow _handleTransferUICapability:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "target supported UI capability:%@ @%s", &v10, 0x16u);
  }

  v6 = [capabilityCopy objectForKeyedSubscript:@"SupportsSyncTransferResults"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [capabilityCopy objectForKeyedSubscript:@"SupportsSyncTransferResults"];
    self->_supportsSyncTransferResults = [v8 BOOLValue];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleTransferResults:(id)results
{
  v16 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = resultsCopy;
    v14 = 2080;
    v15 = "[TSProximitySourceTransferFlow _handleTransferResults:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "results:%@ @%s", &v12, 0x16u);
  }

  v6 = [resultsCopy objectForKeyedSubscript:@"Results"];
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(NSTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;

    self->_isTransferCompleted = 1;
    [(TSProximitySourceTransferFlow *)self _updateTransferStatus:v6];
    topViewController2 = [(TSSIMSetupFlow *)self topViewController];
    [(TSProximitySourceTransferFlow *)self viewControllerDidComplete:topViewController2];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_decodeTransferStatus:(id)status
{
  statusCopy = status;
  v4 = statusCopy;
  if (statusCopy)
  {
    unsignedIntegerValue = [statusCopy unsignedIntegerValue];
    v6 = unsignedIntegerValue;
    if (unsignedIntegerValue >= 0xF && unsignedIntegerValue != 10004 && unsignedIntegerValue != 10003 && unsignedIntegerValue != 10002 && unsignedIntegerValue != 10001)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateTransferStatus:(id)status
{
  v45 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = +[TSCellularPlanManagerCache sharedInstance];
  planItems = [v5 planItems];

  v28 = planItems;
  v27 = 106;
  self->_areAllPlansTransferedOut = [planItems count] == 0;
  self->_numSelectedPlansNotTransferredOut = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = statusCopy;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v27}];
        v14 = [(TSProximitySourceTransferFlow *)self _decodeTransferStatus:v13];

        v15 = _TSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = SSPlanTransferStatusAsString(v14);
          *buf = 138412802;
          v39 = v12;
          v40 = 2080;
          v41 = v16;
          v42 = 2080;
          v43 = "[TSProximitySourceTransferFlow _updateTransferStatus:]";
          _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, "%@ transfer status %s @%s", buf, 0x20u);
        }

        if (isFailedState(v14) || v14 == 10001)
        {
          ++self->_numSelectedPlansNotTransferredOut;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v44 count:16];
    }

    while (v9);
  }

  v17 = v27;
  if ((*(&self->super.super.isa + v27) & 1) == 0 && !self->_numSelectedPlansNotTransferredOut)
  {
    *(&self->super.super.isa + v27) = 1;
    v18 = [planItems count];
    if (v18 <= [v7 count])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v19 = planItems;
      v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v30;
        while (2)
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v30 != v22)
            {
              objc_enumerationMutation(v19);
            }

            iccid = [*(*(&v29 + 1) + 8 * j) iccid];
            v25 = [v7 objectForKeyedSubscript:iccid];

            if (!v25)
            {
              *(&self->super.super.isa + v17) = 0;
              goto LABEL_27;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:
    }

    else
    {
      *(&self->super.super.isa + v27) = 0;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_resetExtension:(id)extension
{
  extensionCopy = extension;
  ctClient = self->_ctClient;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_ctClient;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__TSProximitySourceTransferFlow__resetExtension___block_invoke;
    v8[3] = &unk_279B44DB8;
    v9 = extensionCopy;
    [(CoreTelephonyClient *)v6 resetProximityTransportExtension:v8];
  }

  else
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [TSProximitySourceTransferFlow _resetExtension:];
    }

    extensionCopy[2](extensionCopy);
  }
}

void __49__TSProximitySourceTransferFlow__resetExtension___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__TSProximitySourceTransferFlow__resetExtension___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_proxCardFlowDidDismiss
{
  v14 = *MEMORY[0x277D85DE8];
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      isFlowCompleted = self->_isFlowCompleted;
      isAuthenticationCompleted = self->_isAuthenticationCompleted;
      v10 = 67109634;
      *v11 = isFlowCompleted;
      *&v11[4] = 1024;
      *&v11[6] = isAuthenticationCompleted;
      v12 = 2080;
      v13 = "[TSProximitySourceTransferFlow _proxCardFlowDidDismiss]";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "flow dismiss. flow.complete:%d, auth.complete:%d @%s", &v10, 0x18u);
    }

    if (!self->_isFlowCompleted)
    {
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        *v11 = "[TSProximitySourceTransferFlow _proxCardFlowDidDismiss]";
        _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "prox card being dismissed @%s", &v10, 0xCu);
      }

      [(TSSIMSetupFlow *)self attemptFailed];
      [(TSProximitySourceTransferFlow *)self _deassertNFC];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_assertNFC
{
  if (!self->_nfcAssertion)
  {
    v3 = objc_alloc_init(SSNFCAssertion);
    nfcAssertion = self->_nfcAssertion;
    self->_nfcAssertion = v3;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_deassertNFC
{
  nfcAssertion = self->_nfcAssertion;
  self->_nfcAssertion = 0;
  MEMORY[0x2821F96F8]();
}

- (void)_timerFired
{
  v7 = *MEMORY[0x277D85DE8];
  topViewController = [self topViewController];
  OUTLINED_FUNCTION_0();
  v6 = "[TSProximitySourceTransferFlow _timerFired]";
  _os_log_debug_impl(&dword_262AA8000, a2, OS_LOG_TYPE_DEBUG, "[Db] something weird happend. unexpected top vc:%@ @%s", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithPeerDevice:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)firstViewController
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)firstViewController:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = &unk_2875CC048;
  v4 = 2080;
  v5 = "[TSProximitySourceTransferFlow firstViewController:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]delegate not conforms to protocol : %@ @%s", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_112_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_113_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__TSProximitySourceTransferFlow_didRequestPresentationForProxCard___block_invoke_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  v2 = [WeakRetained topViewController];
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __67__TSProximitySourceTransferFlow_didRequestPresentationForProxCard___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __44__TSProximitySourceTransferFlow_didComplete__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)transferEventUpdate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setupClient:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleSKEvent:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 eventType];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_resetExtension:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__TSProximitySourceTransferFlow__resetExtension___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end