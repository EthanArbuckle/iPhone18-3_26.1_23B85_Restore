@interface SUAutoInstallManager
+ (id)rollbackRebootLaterTime;
- (BOOL)_queue_canGetAutoInstallOperation;
- (BOOL)_queue_isAutoInstallOperationReadyToBegin;
- (BOOL)_queue_isExpired;
- (BOOL)isAutoInstallOperationReadyToBegin;
- (SUAutoInstallManager)initWithManager:(id)manager;
- (SUAutoInstallManagerDelegate)delegate;
- (_SUAutoInstallOperationModel)operationModel;
- (id)_createOperationModel;
- (id)_queue_currentAutoInstallOperationCreatingIfNecessary:(BOOL)necessary notifyIfExpired:(BOOL)expired error:(id *)error;
- (id)currentAutoInstallOperationCreatingIfNecessary:(BOOL)necessary error:(id *)error;
- (void)_installAttemptDone;
- (void)_queue_cancelAutoInstallOperation:(id)operation;
- (void)_queue_clearAutoInstallOperationForReason:(id)reason disableKeybagStash:(BOOL)stash;
- (void)_queue_consentToAutoInstallOperation:(id)operation;
- (void)_queue_noteAutoInstallOperationDidExpire;
- (void)_queue_noteAutoInstallOperationWantsToBegin;
- (void)_queue_resumeOrResetStateIfNecessary;
- (void)_queue_setFailedToAutoInstallError:(id)error;
- (void)_queue_trySchedulingAnotherTimeInInstallWindow:(double)window;
- (void)cancelAutoInstallOperation:(id)operation;
- (void)consentToAutoInstallOperation:(id)operation;
- (void)copyAutoInstallOperationForecast:(id *)forecast error:(id *)error;
- (void)dealloc;
- (void)downloadWasInvalidated:(id)invalidated;
- (void)installDidFail:(id)fail withError:(id)error;
- (void)installDidFinish:(id)finish;
- (void)keybagInterfacePasscodeDidChange:(id)change;
- (void)noteAutoInstallOperationDidExpire;
- (void)noteAutoInstallOperationUnlockWindowDidBegin;
- (void)noteAutoInstallOperationWantsToBegin;
- (void)passcodePolicyInterface:(id)interface passcodePolicyTypeChanged:(unint64_t)changed;
- (void)resumeOrResetStateIfNecessary;
- (void)setFailedToAutoInstallError:(id)error;
- (void)trySchedulingAnotherTimeInInstallWindow:(double)window;
- (void)trySchedulingAutoInstallAgainLater;
- (void)unattendedInstallationKeybagCreated;
@end

@implementation SUAutoInstallManager

- (SUAutoInstallManager)initWithManager:(id)manager
{
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = SUAutoInstallManager;
  v6 = [(SUAutoInstallManager *)&v22 init];
  if (v6)
  {
    v7 = time(0);
    srand(v7);
    v8 = +[SUState currentState];
    state = v6->_state;
    v6->_state = v8;

    objc_storeStrong(&v6->_manager, manager);
    v10 = +[SUAutoUpdatePasscodePolicy sharedInstance];
    passcodePolicy = v6->_passcodePolicy;
    v6->_passcodePolicy = v10;

    operationModel = v6->_operationModel;
    v6->_operationModel = 0;

    failedToAutoInstallError = [(SUState *)v6->_state failedToAutoInstallError];
    failedToAutoInstallError = v6->_failedToAutoInstallError;
    v6->_failedToAutoInstallError = failedToAutoInstallError;

    [(SUManagerInterface *)v6->_manager setPasscodePolicy:v6->_passcodePolicy];
    [(SUAutoUpdatePasscodePolicy *)v6->_passcodePolicy addObserver:v6];
    [(SUManagerInterface *)v6->_manager addObserver:v6];
    v15 = +[SUKeybagInterface sharedInstance];
    [v15 addObserver:v6];

    v16 = +[SUSFollowUpController sharedController];
    followUpController = v6->_followUpController;
    v6->_followUpController = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.softwareupdateservices.autoInstallManager.stateQueue", v18);
    stateQueue = v6->_stateQueue;
    v6->_stateQueue = v19;

    v6->_autoInstallAttempted = 0;
  }

  return v6;
}

- (void)dealloc
{
  [(SUManagerInterface *)self->_manager removeObserver:self];
  [(SUAutoUpdatePasscodePolicy *)self->_passcodePolicy removeObserver:self];
  v3.receiver = self;
  v3.super_class = SUAutoInstallManager;
  [(SUAutoInstallManager *)&v3 dealloc];
}

- (void)resumeOrResetStateIfNecessary
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUAutoInstallManager_resumeOrResetStateIfNecessary__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)_queue_resumeOrResetStateIfNecessary
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = +[SUScheduler sharedInstance];
  [v3 scheduleSimulatedAutoInstallTask];

  lastAutoInstallOperationModel = [(SUState *)self->_state lastAutoInstallOperationModel];
  SULogInfo(@"%s: lastOperation = %@", v5, v6, v7, v8, v9, v10, v11, "[SUAutoInstallManager _queue_resumeOrResetStateIfNecessary]");
  if (lastAutoInstallOperationModel)
  {
    lastProductBuild = [(SUState *)self->_state lastProductBuild];
    lastProductVersion = [(SUState *)self->_state lastProductVersion];
    v14 = +[SUUtility currentProductBuild];
    v15 = +[SUUtility currentProductVersion];
    v119 = v14;
    v120 = lastProductBuild;
    if ([lastProductVersion isEqualToString:v15] && (objc_msgSend(lastProductBuild, "isEqualToString:", v14) & 1) != 0)
    {
      v23 = 0;
    }

    else
    {
      SULogInfo(@"New OS detected. Clearing the last auto-install-operation", v16, v17, v18, v19, v20, v21, v22, v116);
      v23 = 1;
    }

    date = [MEMORY[0x277CBEAA8] date];
    forecast = [lastAutoInstallOperationModel forecast];
    suEndDate = [forecast suEndDate];
    v27 = [date compare:suEndDate];

    if (v27 == 1)
    {
      SULogInfo(@"Saved auto-install-operation is expired", v28, v29, v30, v31, v32, v33, v34, v116);
      v23 = 1;
    }

    download = [(SUManagerInterface *)self->_manager download];
    if (!download)
    {
      goto LABEL_12;
    }

    v43 = download;
    download2 = [(SUManagerInterface *)self->_manager download];
    progress = [download2 progress];
    isDone = [progress isDone];

    if (isDone)
    {
      if (!v23)
      {
        SULogInfo(@"Last AutoInstall operation found\n %@", v36, v37, v38, v39, v40, v41, v42, lastAutoInstallOperationModel);
        objc_storeStrong(&self->_operationModel, lastAutoInstallOperationModel);
        [(SUAutoUpdatePasscodePolicy *)self->_passcodePolicy setCurrentPolicyType:1];
LABEL_21:
        if ([lastAutoInstallOperationModel agreementStatus] == 1)
        {
          date2 = [MEMORY[0x277CBEAA8] date];
          forecast2 = [lastAutoInstallOperationModel forecast];
          unlockStartDate = [forecast2 unlockStartDate];
          v94 = [date2 compare:unlockStartDate];

          if (v94 == 1)
          {
            SULogInfo(@"Unlock window passed. Firing unlock window timer manually", v95, v96, v97, v98, v99, v100, v101, v117);
            [(SUAutoInstallManager *)self noteAutoInstallOperationUnlockWindowDidBegin];
          }
        }

        download3 = [(SUManagerInterface *)self->_manager download];
        progress2 = [download3 progress];
        isDone2 = [progress2 isDone];

        if (isDone2)
        {
          SULogInfo(@"%s: Scheduling tonight activity because the download is finished", v105, v106, v107, v108, v109, v110, v111, "[SUAutoInstallManager _queue_resumeOrResetStateIfNecessary]");
          v112 = +[SUScheduler sharedInstance];
          forecast3 = [(_SUAutoInstallOperationModel *)self->_operationModel forecast];
          download4 = [(SUManagerInterface *)self->_manager download];
          descriptor = [download4 descriptor];
          [v112 scheduleAllAutoInstallUpdateTasks:forecast3 descriptor:descriptor];

          [(SUManagerInterface *)self->_manager setIsInstallTonightScheduled:1];
        }

        else
        {
          SULogInfo(@"%s: Do not schedule tonight activity because the download is not finished", v105, v106, v107, v108, v109, v110, v111, "[SUAutoInstallManager _queue_resumeOrResetStateIfNecessary]");
        }

        v90 = v119;

        goto LABEL_28;
      }
    }

    else
    {
LABEL_12:
      SULogInfo(@"There is no downloaded asset. Clearing the last auto-install-operation", v36, v37, v38, v39, v40, v41, v42, v116);
    }

    if ([(SUAutoInstallManager *)self isAutoUpdateEnabled])
    {
      download5 = [(SUManagerInterface *)self->_manager download];
      progress3 = [download5 progress];
      isDone3 = [progress3 isDone];

      SULogInfo(@"%s: canceling %@", v57, v58, v59, v60, v61, v62, v63, "[SUAutoInstallManager _queue_resumeOrResetStateIfNecessary]");
      v64 = +[SUScheduler sharedInstance];
      [v64 cancelAllAutoInstallTasks];

      [(SUAutoUpdatePasscodePolicy *)self->_passcodePolicy setCurrentPolicyType:0];
      if (isDone3)
      {
        [(SUState *)self->_state setLastAutoInstallOperationModel:0];
        [(SUState *)self->_state save];
        SULogInfo(@"Last AutoInstall operation found\n %@", v65, v66, v67, v68, v69, v70, v71, lastAutoInstallOperationModel);
        if (![(SUAutoInstallManager *)self isAutoUpdateEnabled])
        {
          goto LABEL_21;
        }

        v121 = 0;
        v72 = [(SUAutoInstallManager *)self _queue_currentAutoInstallOperationCreatingIfNecessary:1 notifyIfExpired:1 error:&v121];
        v73 = v121;
        operationModel = self->_operationModel;
        self->_operationModel = v72;

        if (!v73)
        {
          goto LABEL_21;
        }

        SULogInfo(@"Error creating new autoInstallOperationModel: %@", v75, v76, v77, v78, v79, v80, v81, v73);

LABEL_20:
        v90 = v119;
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      SULogInfo(@"%s: canceling %@", v47, v48, v49, v50, v51, v52, v53, "[SUAutoInstallManager _queue_resumeOrResetStateIfNecessary]");
      v82 = +[SUScheduler sharedInstance];
      [v82 cancelAllAutoInstallTasks];

      [(SUAutoUpdatePasscodePolicy *)self->_passcodePolicy setCurrentPolicyType:0];
    }

    v83 = SULogBadging();
    SULogInfoForSubsystem(v83, @"resumeOrResetStateIfNecessary: Dismissing AutoUpdateBanner if present", v84, v85, v86, v87, v88, v89, v118);

    [(SUManagerInterface *)self->_manager dismissAutoUpdateBanner];
    [(SUState *)self->_state setLastAutoInstallOperationModel:0];
    [(SUState *)self->_state save];
    goto LABEL_20;
  }

LABEL_29:
}

- (id)currentAutoInstallOperationCreatingIfNecessary:(BOOL)necessary error:(id *)error
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__19;
  v16 = __Block_byref_object_dispose__19;
  v17 = 0;
  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__SUAutoInstallManager_currentAutoInstallOperationCreatingIfNecessary_error___block_invoke;
  v10[3] = &unk_279CACF90;
  v10[4] = self;
  v10[5] = &v12;
  necessaryCopy = necessary;
  v10[6] = error;
  dispatch_sync(stateQueue, v10);
  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

uint64_t __77__SUAutoInstallManager_currentAutoInstallOperationCreatingIfNecessary_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_currentAutoInstallOperationCreatingIfNecessary:*(a1 + 56) notifyIfExpired:1 error:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)copyAutoInstallOperationForecast:(id *)forecast error:(id *)error
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__19;
  v15 = __Block_byref_object_dispose__19;
  v16 = 0;
  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SUAutoInstallManager_copyAutoInstallOperationForecast_error___block_invoke;
  v10[3] = &unk_279CAA948;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(stateQueue, v10);
  v8 = 0;
  if (!v12[5])
  {
    v8 = [SUUtility errorWithCode:49];
  }

  if (forecast)
  {
    *forecast = v12[5];
  }

  if (error)
  {
    v9 = v8;
    *error = v8;
  }

  _Block_object_dispose(&v11, 8);
}

uint64_t __63__SUAutoInstallManager_copyAutoInstallOperationForecast_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_canGetAutoInstallOperation];
  if (result)
  {
    v3 = *(*(a1 + 32) + 32);
    if (v3)
    {
      v4 = [v3 forecast];

      if (v4)
      {
        v5 = [*(*(a1 + 32) + 32) forecast];
        v6 = [v5 copy];
        v7 = *(*(a1 + 40) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;
      }
    }

    v9 = *(*(*(a1 + 40) + 8) + 40);
    if (!v9 || (result = [v9 _isForecastExpired], result))
    {
      v10 = +[SUAutoInstallForecast createForecast];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      return MEMORY[0x2821F96F8](v10, v12);
    }
  }

  return result;
}

- (BOOL)_queue_canGetAutoInstallOperation
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = +[SUPreferences sharedInstance];
  isAutoSUDisabled = [v3 isAutoSUDisabled];

  if (isAutoSUDisabled)
  {
    SULogInfo(@"AutoSU disabled. Not scheduling AutoSU timers", v5, v6, v7, v8, v9, v10, v11, v26);
    return 0;
  }

  else
  {
    preferredLastScannedDescriptor = [(SUManagerInterface *)self->_manager preferredLastScannedDescriptor];
    v14 = [SUManagerEngine SUDescriptorFromCoreDescriptor:preferredLastScannedDescriptor];

    if (v14 && [v14 installTonightDisabled])
    {
      SULogInfo(@"AutoSU disabled for this update. Not scheduling AutoSU timers", v15, v16, v17, v18, v19, v20, v21, v26);
      isDownloading = 0;
    }

    else
    {
      download = [(SUManagerInterface *)self->_manager download];
      v23 = download;
      if (download)
      {
        progress = [download progress];
        if ([progress isDone])
        {
          isDownloading = 1;
        }

        else
        {
          isDownloading = [(SUManagerInterface *)self->_manager isDownloading];
        }
      }

      else
      {
        isDownloading = 0;
      }
    }
  }

  return isDownloading;
}

- (id)_queue_currentAutoInstallOperationCreatingIfNecessary:(BOOL)necessary notifyIfExpired:(BOOL)expired error:(id *)error
{
  expiredCopy = expired;
  necessaryCopy = necessary;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (![(SUAutoInstallManager *)self _queue_canGetAutoInstallOperation])
  {
    goto LABEL_25;
  }

  download = [(SUManagerInterface *)self->_manager download];
  v10 = self->_operationModel;
  if (!v10)
  {
LABEL_6:
    if (necessaryCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

  if (![(SUAutoInstallManager *)self _queue_isExpired])
  {
    progress = [download progress];
    isDone = [progress isDone];

    if (isDone)
    {
      if ([(SUManagerInterface *)self->_manager isInstallTonightScheduled])
      {
        SULogInfo(@"%s: Do not schedule tonight activity because it has been scheduled", v40, v41, v42, v43, v44, v45, v46, "[SUAutoInstallManager _queue_currentAutoInstallOperationCreatingIfNecessary:notifyIfExpired:error:]");
      }

      else
      {
        SULogInfo(@"%s: Scheduling tonight activity because the download is finished", v40, v41, v42, v43, v44, v45, v46, "[SUAutoInstallManager _queue_currentAutoInstallOperationCreatingIfNecessary:notifyIfExpired:error:]");
        v48 = +[SUScheduler sharedInstance];
        forecast = [(_SUAutoInstallOperationModel *)self->_operationModel forecast];
        descriptor = [download descriptor];
        [v48 scheduleAllAutoInstallUpdateTasks:forecast descriptor:descriptor];

        [(SUManagerInterface *)self->_manager setIsInstallTonightScheduled:1];
      }
    }

    else
    {
      SULogInfo(@"%s: Do not schedule tonight activity because the download is not finished", v33, v34, v35, v36, v37, v38, v39, "[SUAutoInstallManager _queue_currentAutoInstallOperationCreatingIfNecessary:notifyIfExpired:error:]");
    }

    v51 = self->_operationModel;

    goto LABEL_30;
  }

  if (expiredCopy)
  {
    [(SUAutoInstallManager *)self _queue_noteAutoInstallOperationDidExpire];
    goto LABEL_6;
  }

  operationModel = self->_operationModel;
  self->_operationModel = 0;

  if (necessaryCopy)
  {
LABEL_7:
    _createOperationModel = [(SUAutoInstallManager *)self _createOperationModel];
    v12 = self->_operationModel;
    self->_operationModel = _createOperationModel;

    if (self->_operationModel)
    {
      downloadOptions = [download downloadOptions];
      termsAndConditionsAgreementStatus = [downloadOptions termsAndConditionsAgreementStatus];

      if (termsAndConditionsAgreementStatus == 1)
      {
        [(_SUAutoInstallOperationModel *)self->_operationModel setAgreementStatus:1];
      }

      progress2 = [download progress];
      isDone2 = [progress2 isDone];

      if (isDone2)
      {
        if ([(SUManagerInterface *)self->_manager isInstallTonightScheduled])
        {
          SULogInfo(@"%s: Do not schedule tonight activity because it has been scheduled", v24, v25, v26, v27, v28, v29, v30, "[SUAutoInstallManager _queue_currentAutoInstallOperationCreatingIfNecessary:notifyIfExpired:error:]");
        }

        else
        {
          SULogInfo(@"%s: Scheduling tonight activity because the download is finished", v24, v25, v26, v27, v28, v29, v30, "[SUAutoInstallManager _queue_currentAutoInstallOperationCreatingIfNecessary:notifyIfExpired:error:]");
          v52 = +[SUScheduler sharedInstance];
          forecast2 = [(_SUAutoInstallOperationModel *)self->_operationModel forecast];
          descriptor2 = [download descriptor];
          [v52 scheduleAllAutoInstallUpdateTasks:forecast2 descriptor:descriptor2];

          [(SUManagerInterface *)self->_manager setIsInstallTonightScheduled:1];
        }
      }

      else
      {
        SULogInfo(@"%s: Do not schedule tonight activity because the download is not finished", v17, v18, v19, v20, v21, v22, v23, "[SUAutoInstallManager _queue_currentAutoInstallOperationCreatingIfNecessary:notifyIfExpired:error:]");
      }

      [(SUState *)self->_state setLastAutoInstallOperationModel:self->_operationModel];
      [(SUState *)self->_state save];
    }
  }

LABEL_24:

LABEL_25:
  v55 = self->_operationModel;
  if (error && !v55 && necessaryCopy)
  {
    *error = [SUUtility errorWithCode:45];
    v55 = self->_operationModel;
  }

  v51 = v55;
LABEL_30:

  return v51;
}

- (void)cancelAutoInstallOperation:(id)operation
{
  operationCopy = operation;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SUAutoInstallManager_cancelAutoInstallOperation___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  dispatch_async(stateQueue, v7);
}

- (void)_queue_cancelAutoInstallOperation:(id)operation
{
  operationCopy = operation;
  dispatch_assert_queue_V2(self->_stateQueue);
  v4 = [(_SUAutoInstallOperationModel *)self->_operationModel id];
  v5 = [v4 isEqual:operationCopy];

  if (v5)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SUAutoInstallOperationCancelledNotification" object:0];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained autoInstallManager:self didCancelOperation:self->_operationModel];

    [(SUAutoInstallManager *)self _queue_clearAutoInstallOperationForReason:@"Canceled" disableKeybagStash:0];
  }

  else
  {
    SULogInfo(@"%s: unknown operationID: %@", v6, v7, v8, v9, v10, v11, v12, "[SUAutoInstallManager _queue_cancelAutoInstallOperation:]");
  }
}

- (void)consentToAutoInstallOperation:(id)operation
{
  operationCopy = operation;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SUAutoInstallManager_consentToAutoInstallOperation___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  dispatch_async(stateQueue, v7);
}

- (void)_queue_consentToAutoInstallOperation:(id)operation
{
  stateQueue = self->_stateQueue;
  operationCopy = operation;
  dispatch_assert_queue_V2(stateQueue);
  v6 = [(_SUAutoInstallOperationModel *)self->_operationModel id];
  v7 = [v6 isEqual:operationCopy];

  if (!v7)
  {
    return;
  }

  SULogInfo(@"AutoSU consented", v8, v9, v10, v11, v12, v13, v14, v44);
  [(_SUAutoInstallOperationModel *)self->_operationModel setAgreementStatus:1];
  forecast = [(_SUAutoInstallOperationModel *)self->_operationModel forecast];
  unlockStartDate = [forecast unlockStartDate];
  date = [MEMORY[0x277CBEAA8] date];
  if ([unlockStartDate compare:date] == -1)
  {
    forecast2 = [(_SUAutoInstallOperationModel *)self->_operationModel forecast];
    unlockEndDate = [forecast2 unlockEndDate];
    date2 = [MEMORY[0x277CBEAA8] date];
    v21 = [unlockEndDate compare:date2];

    if (v21 == 1)
    {
      SULogInfo(@"User consented during unlock window. Persisting stash", v22, v23, v24, v25, v26, v27, v28, v45);
      [(SUManagerInterface *)self->_manager persistStashOnUnlock];
    }
  }

  else
  {
  }

  [(SUState *)self->_state setLastAutoInstallOperationModel:self->_operationModel];
  [(SUState *)self->_state save];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SUAutoInstallOperationDidConsentNotification" object:0];

  if ([(SUManagerInterface *)self->_manager isAutoUpdateEnabled])
  {
    v30 = +[SUKeybagInterface sharedInstance];
    hasPasscodeSet = [v30 hasPasscodeSet];

    if (!hasPasscodeSet)
    {
      v35 = @"Auto update consented and no passcode set. Displaying banner";
      goto LABEL_13;
    }
  }

  if ([(SUManagerInterface *)self->_manager isInstallTonightScheduled])
  {
    download = [(SUManagerInterface *)self->_manager download];
    progress = [download progress];
    isDone = [progress isDone];

    if (isDone)
    {
      v35 = @"Install tonight is scheduled and download is done. Displaying banner";
LABEL_13:
      v36 = SULogBadging();
      SULogInfoForSubsystem(v36, v35, v37, v38, v39, v40, v41, v42, v45);

      v43 = +[SUScheduler sharedInstance];
      [v43 schedulePresentAutoUpdateBanner];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained autoInstallManager:self operationWasConsented:self->_operationModel];
}

- (void)trySchedulingAutoInstallAgainLater
{
  v3 = +[SUPreferences sharedInstance];
  autoInstallRetryDelay = [v3 autoInstallRetryDelay];

  SULogDebug(@"defaultDelay = %@", v4, v5, v6, v7, v8, v9, v10, autoInstallRetryDelay);
  v11 = 900.0;
  if (autoInstallRetryDelay && [autoInstallRetryDelay intValue] >= 1)
  {
    intValue = [autoInstallRetryDelay intValue];
    v11 = intValue;
    SULogInfo(@"delay is set to %d seconds by default", v13, v14, v15, v16, v17, v18, v19, intValue);
  }

  v20 = +[SUPreferences sharedInstance];
  disableAutoInstallJitter = [v20 disableAutoInstallJitter];

  if (disableAutoInstallJitter)
  {
    SULogInfo(@"%s: disableAutoInstallJitter default is set, ignoring jitter", v22, v23, v24, v25, v26, v27, v28, "[SUAutoInstallManager trySchedulingAutoInstallAgainLater]");
  }

  else
  {
    v11 = v11 + [SUUtility randomIntWithMinVal:0 maxVal:300];
  }

  SULogInfo(@"Will retry to auto install in %d seconds", v29, v30, v31, v32, v33, v34, v35, v11);
  [(SUAutoInstallManager *)self trySchedulingAnotherTimeInInstallWindow:v11];
}

- (void)trySchedulingAnotherTimeInInstallWindow:(double)window
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SUAutoInstallManager_trySchedulingAnotherTimeInInstallWindow___block_invoke;
  v6[3] = &unk_279CAA9C0;
  v6[4] = self;
  *&v6[5] = window;
  dispatch_async(stateQueue, v6);
}

- (void)_queue_trySchedulingAnotherTimeInInstallWindow:(double)window
{
  dispatch_assert_queue_V2(self->_stateQueue);
  forecast = [(_SUAutoInstallOperationModel *)self->_operationModel forecast];
  suEndDate = [forecast suEndDate];

  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:window];
  v7 = [MEMORY[0x277CCA968] localizedStringFromDate:suEndDate dateStyle:1 timeStyle:1];
  v8 = [MEMORY[0x277CCA968] localizedStringFromDate:v6 dateStyle:1 timeStyle:1];
  if ([v6 compare:suEndDate] == -1)
  {
    v17 = +[SUScheduler sharedInstance];
    download = [(SUManagerInterface *)self->_manager download];
    descriptor = [download descriptor];
    [v17 scheduleAutoInstallStartInstallTaskWithDate:v6 descriptor:descriptor fromFailure:1];

    v16 = @"Window ends on %@; attempting to reschedule auto install on %@";
  }

  else
  {
    v16 = @"Window ends on %@; cannot reschedule auto install on %@";
  }

  SULogInfo(v16, v9, v10, v11, v12, v13, v14, v15, v7);
}

- (void)noteAutoInstallOperationUnlockWindowDidBegin
{
  SULogInfo(@"Unlock window did begin", a2, v2, v3, v4, v5, v6, v7, v10);
  manager = self->_manager;

  [(SUManagerInterface *)manager addUnlockCallback:sel_persistStashOnUnlock forKey:@"unlockCallbackPersistStash"];
}

- (BOOL)isAutoInstallOperationReadyToBegin
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = selfCopy->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SUAutoInstallManager_isAutoInstallOperationReadyToBegin__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __58__SUAutoInstallManager_isAutoInstallOperationReadyToBegin__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_isAutoInstallOperationReadyToBegin];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_queue_isAutoInstallOperationReadyToBegin
{
  dispatch_assert_queue_V2(self->_stateQueue);
  operationModel = self->_operationModel;
  if (operationModel)
  {
    if ([(_SUAutoInstallOperationModel *)operationModel agreementStatus]!= 1)
    {
      SULogInfo(@"Anomaly: Ready to install timer fired, but operation was not agreed to. (Proceeding to anyway)", v3, v4, v5, v6, v7, v8, v9, v13);
    }

    v11 = @"Auto install operation is ready";
  }

  else
  {
    v11 = @"Ready to install timer fired, but operation model is nil";
  }

  SULogInfo(v11, v3, v4, v5, v6, v7, v8, v9, v13);
  return operationModel != 0;
}

- (void)noteAutoInstallOperationWantsToBegin
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v3 = +[SUPreferences sharedInstance];
  disableAutoInstallJitter = [v3 disableAutoInstallJitter];

  if (disableAutoInstallJitter)
  {
    SULogInfo(@"%s: disableAutoInstallJitter default is set, ignoring jitter", v5, v6, v7, v8, v9, v10, v11, "[SUAutoInstallManager noteAutoInstallOperationWantsToBegin]");
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__SUAutoInstallManager_noteAutoInstallOperationWantsToBegin__block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(stateQueue, block);
  }

  else
  {
    v13 = [SUUtility randomIntWithMinVal:0 maxVal:300];
    v14 = v13;
    SULogInfo(@"[Auto Install Jitter] Starting auto installation in %d seconds", v15, v16, v17, v18, v19, v20, v21, v13);
    v22 = dispatch_time(0, (v14 * 1000000000.0));
    v23 = self->_stateQueue;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__SUAutoInstallManager_noteAutoInstallOperationWantsToBegin__block_invoke_2;
    v24[3] = &unk_279CAA708;
    v24[4] = self;
    dispatch_after(v22, v23, v24);
  }
}

- (void)_queue_noteAutoInstallOperationWantsToBegin
{
  dispatch_assert_queue_V2(self->_stateQueue);
  SULogInfo(@"AutoInstallOperation wants to begin", v3, v4, v5, v6, v7, v8, v9, v12);
  [(SUManagerInterface *)self->_manager reportOTAAutoTriggeredEvent];
  self->_autoInstallAttempted = 1;
  if ([(SUAutoInstallManager *)self _queue_isAutoInstallOperationReadyToBegin])
  {
    [(SUManagerInterface *)self->_manager setIsInstallTonight:1];
    v10 = objc_alloc_init(SUInstallOptions);
    [(SUInstallOptions *)v10 setAutomaticInstallation:1];
    manager = self->_manager;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__SUAutoInstallManager__queue_noteAutoInstallOperationWantsToBegin__block_invoke;
    v13[3] = &unk_279CACFE0;
    v13[4] = self;
    [(SUManagerInterface *)manager isUpdateReadyForInstallationWithOptions:v10 withResult:v13];
  }
}

void __67__SUAutoInstallManager__queue_noteAutoInstallOperationWantsToBegin__block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v8 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SUAutoInstallManager__queue_noteAutoInstallOperationWantsToBegin__block_invoke_2;
  block[3] = &unk_279CACFB8;
  v9 = *(a1 + 32);
  v13 = a2;
  block[4] = v9;
  v12 = v7;
  v14 = a3;
  v10 = v7;
  dispatch_async(v8, block);
}

void __67__SUAutoInstallManager__queue_noteAutoInstallOperationWantsToBegin__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [*(a1 + 32) isAutoInstallOperationReadyToBegin];
  v18 = *(a1 + 48);
  if (v10)
  {
    v19 = *(a1 + 32);
    if (*(a1 + 48))
    {
      [v19 setFailedToAutoInstallError:0];
      v20 = [MEMORY[0x277CCAB98] defaultCenter];
      [v20 postNotificationName:@"SUAutoInstallOperationIsReadyToInstallNotification" object:0];

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
      v22 = *(a1 + 32);
      v23 = [v22 operationModel];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __67__SUAutoInstallManager__queue_noteAutoInstallOperationWantsToBegin__block_invoke_3;
      v44[3] = &unk_279CAAEB8;
      v44[4] = *(a1 + 32);
      [WeakRetained autoInstallManager:v22 isReadyToInstall:v23 withResult:v44];
    }

    else
    {
      [v19 setFailedToAutoInstallError:*(a1 + 40)];
      [*(a1 + 32) _installAttemptDone];
      v32 = *(a1 + 40);
      if (*(a1 + 49) == 1)
      {
        SULogInfo(@"Could not install due to %@.", v25, v26, v27, v28, v29, v30, v31, *(a1 + 40));
        [*(a1 + 32) trySchedulingAutoInstallAgainLater];
      }

      else
      {
        SULogInfo(@"Could not install due to %@, and should not retry. Canceling auto install", v25, v26, v27, v28, v29, v30, v31, *(a1 + 40));
        v33 = +[SUScheduler sharedInstance];
        [v33 cancelAutoInstallStartInstallTask];
      }

      if ([*(a1 + 32) isCurrentUpdateAutoUpdate] && !objc_msgSend(*(*(a1 + 32) + 48), "isCurrentlyPresentingFollowUpType:", 2))
      {

        SULogInfo(@"AutoUpdate cannot be installed, but user is not yet aware of the same..NOT presenting error alert", v34, v35, v36, v37, v38, v39, v40, a9);
      }

      else
      {
        SULogInfo(@"AutoUpdate cannot be installed and user has been informed of the update..Presenting error alert", v34, v35, v36, v37, v38, v39, v40, v43);
        v41 = *(a1 + 40);
        v42 = *(*(a1 + 32) + 16);

        [v42 autoSUFailedWithError:v41];
      }
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      v24 = @"Yes";
    }

    else
    {
      v24 = @"No";
    }

    SULogInfo(@"Not ready to begin AutoInstall operation. Is update ready for install? %@", v11, v12, v13, v14, v15, v16, v17, v24);
  }
}

void __67__SUAutoInstallManager__queue_noteAutoInstallOperationWantsToBegin__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v24 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    [v5 setFailedToAutoInstallError:0];
    SULogInfo(@"isReadyToInstall Returned YES", v6, v7, v8, v9, v10, v11, v12, v23);
    goto LABEL_11;
  }

  [v5 setFailedToAutoInstallError:v24];
  [*(a1 + 32) _installAttemptDone];
  if (!v24)
  {
    v22 = @"nil";
    goto LABEL_9;
  }

  v20 = [(__CFString *)v24 domain];
  v21 = [v20 isEqualToString:@"com.apple.softwareupdateservices.errors"];

  v13 = v24;
  v22 = v24;
  if (!v21)
  {
LABEL_9:
    SULogInfo(@"isReadyToInstall (SB) Returned NO. Error: %@", v13, v14, v15, v16, v17, v18, v19, v22);
LABEL_10:
    [*(a1 + 32) trySchedulingAutoInstallAgainLater];
    goto LABEL_11;
  }

  SULogInfo(@"isReadyToInstall (SUS) Returned NO. Error: %@", v24, v14, v15, v16, v17, v18, v19, v24);
  if ([(__CFString *)v24 code]!= 49 && [(__CFString *)v24 code]!= 48)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)noteAutoInstallOperationDidExpire
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SUAutoInstallManager_noteAutoInstallOperationDidExpire__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)_queue_noteAutoInstallOperationDidExpire
{
  dispatch_assert_queue_V2(self->_stateQueue);
  SULogInfo(@"AutoInstallOperation expired", v3, v4, v5, v6, v7, v8, v9, v26);
  v28 = self->_failedToAutoInstallError;
  if (!v28)
  {
    if (self->_autoInstallAttempted)
    {
      v28 = 0;
    }

    else
    {
      SULogInfo(@"DAS failed to run auto install activity", v10, v11, v12, v13, v14, v15, v16, v27);
      v28 = [SUUtility errorWithCode:77 originalError:0];
    }
  }

  if ([(SUAutoInstallManager *)self isCurrentUpdateAutoUpdate]&& ![(SUSFollowUpController *)self->_followUpController isCurrentlyPresentingFollowUpType:2])
  {
    SULogInfo(@"AutoUpdate install operation expired but user is not aware of the update..NOT Presenting error alert", v17, v18, v19, v20, v21, v22, v23, v27);
  }

  else
  {
    SULogInfo(@"AutoUpdate install operation expired and user has been informed of update..Presenting error alert", v17, v18, v19, v20, v21, v22, v23, v27);
    if ([(_SUAutoInstallOperationModel *)self->_operationModel agreementStatus]== 1)
    {
      [(SUManagerInterface *)self->_manager autoSUFailedWithError:v28];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SUAutoInstallOperationDidExpireNotification" object:0];
  }

  [(SUManagerInterface *)self->_manager reportPostponedEvent:v28 withStatus:*MEMORY[0x277D64648]];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained autoInstallManager:self didExpireOperation:self->_operationModel withError:v28];

  [(SUAutoInstallManager *)self _queue_clearAutoInstallOperationForReason:@"Expired" disableKeybagStash:[(SUAutoInstallManager *)self isCurrentUpdateAutoUpdate]^ 1];
}

- (void)keybagInterfacePasscodeDidChange:(id)change
{
  SULogInfo(@"Device passcode changed", a2, change, v3, v4, v5, v6, v7, v10);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SUAutoInstallManager_keybagInterfacePasscodeDidChange___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

uint64_t __57__SUAutoInstallManager_keybagInterfacePasscodeDidChange___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 32))
  {
    v2 = result;
    result = [*(v1 + 40) currentPolicyType];
    if (!result)
    {
      v3 = *(*(v2 + 32) + 40);

      return [v3 setCurrentPolicyType:1];
    }
  }

  return result;
}

- (void)passcodePolicyInterface:(id)interface passcodePolicyTypeChanged:(unint64_t)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 autoInstallManager:self passcodePolicyChanged:changed forOperation:self->_operationModel];
    }
  }
}

- (void)downloadWasInvalidated:(id)invalidated
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUAutoInstallManager_downloadWasInvalidated___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

void __47__SUAutoInstallManager_downloadWasInvalidated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[4] id];
  [v1 _queue_cancelAutoInstallOperation:v2];
}

- (void)unattendedInstallationKeybagCreated
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SUAutoInstallManager_unattendedInstallationKeybagCreated__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

uint64_t __59__SUAutoInstallManager_unattendedInstallationKeybagCreated__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addUnlockCallback:sel_persistStashOnUnlock forKey:@"unlockCallbackPersistStash"];
  [*(*(a1 + 32) + 16) persistStashOnUnlock];
  result = [*(a1 + 32) isCurrentUpdateAutoUpdate];
  if (result)
  {
    v3 = SULogBadging();
    SULogInfoForSubsystem(v3, @"unattendedInstallationKeybagCreated: isAutoUpdate and isAutoDownload are true..Scheduling presentation of AutoUpdateBanner", v4, v5, v6, v7, v8, v9, v12);

    v10 = +[SUScheduler sharedInstance];
    [v10 schedulePresentAutoUpdateBanner];

    v11 = *(*(a1 + 32) + 40);

    return [v11 setCurrentPolicyType:0];
  }

  return result;
}

- (void)installDidFinish:(id)finish
{
  v4 = dispatch_time(0, 60000000000);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SUAutoInstallManager_installDidFinish___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_after(v4, stateQueue, block);
  v6 = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SUAutoInstallManager_installDidFinish___block_invoke_2;
  v7[3] = &unk_279CAA708;
  v7[4] = self;
  dispatch_async(v6, v7);
}

void __41__SUAutoInstallManager_installDidFinish___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _installAttemptDone];
  v1 = +[SUScheduler sharedInstance];
  [v1 cancelAutoInstallStartInstallTask];
}

- (void)installDidFail:(id)fail withError:(id)error
{
  errorCopy = error;
  [(SUAutoInstallManager *)self _installAttemptDone];
  userInfo = [errorCopy userInfo];
  v6 = [userInfo safeObjectForKey:@"SUAutomaticInstallation" ofClass:objc_opt_class()];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    SULogInfo(@"[SUAutoInstallManager] A previous auto installation failed due to error %@, retrying...", v8, v9, v10, v11, v12, v13, v14, errorCopy);

    [(SUAutoInstallManager *)self trySchedulingAutoInstallAgainLater];
  }

  else
  {
    SULogInfo(@"[SUAutoInstallManager] A previous manual installation failed due to error %@, nothing to do here", v8, v9, v10, v11, v12, v13, v14, errorCopy);
  }
}

- (BOOL)_queue_isExpired
{
  dispatch_assert_queue_V2(self->_stateQueue);
  forecast = [(_SUAutoInstallOperationModel *)self->_operationModel forecast];
  suEndDate = [forecast suEndDate];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [suEndDate compare:date] == -1;

  return v6;
}

- (void)_queue_clearAutoInstallOperationForReason:(id)reason disableKeybagStash:(BOOL)stash
{
  stashCopy = stash;
  stateQueue = self->_stateQueue;
  reasonCopy = reason;
  dispatch_assert_queue_V2(stateQueue);
  SULogInfo(@"clearing autoInstallOperation for reason: %@, destroying keybag stash: %@", v8, v9, v10, v11, v12, v13, v14, reasonCopy);
  LODWORD(stateQueue) = [reasonCopy isEqualToString:@"InstallDidFinish"];

  v15 = +[SUScheduler sharedInstance];
  [v15 cancelAllAutoInstallTasksIncludingStartInstallTask:stateQueue ^ 1];

  [(SUManagerInterface *)self->_manager setIsInstallTonight:0];
  [(SUManagerInterface *)self->_manager setIsInstallTonightScheduled:0];
  SULogInfo(@"Setting isInstallTonightScheduled to NO", v16, v17, v18, v19, v20, v21, v22, v35);
  [(SUAutoUpdatePasscodePolicy *)self->_passcodePolicy setCurrentPolicyType:0];
  self->_autoInstallAttempted = 0;
  [(SUManagerInterface *)self->_manager dismissAutoUpdateBanner];
  if ((stateQueue & 1) == 0)
  {
    manager = self->_manager;
    download = [(SUManagerInterface *)manager download];
    descriptor = [download descriptor];
    [(SUManagerInterface *)manager badgeSettingsForManualSoftwareUpdate:descriptor];
  }

  if (stashCopy)
  {
    [(SUManagerInterface *)self->_manager destroyInstallationKeybag];
  }

  else
  {
    SULogInfo(@"No stashbag has been persisted.", v23, v24, v25, v26, v27, v28, v29, v36);
  }

  [(SUManagerInterface *)self->_manager removeUnlockCallback:@"unlockCallbackPersistStash"];
  operationModel = self->_operationModel;
  self->_operationModel = 0;

  [(SUState *)self->_state setLastAutoInstallOperationModel:0];
  state = self->_state;

  [(SUState *)state save];
}

- (id)_createOperationModel
{
  v2 = +[SUAutoInstallForecast createForecast];
  if (v2)
  {
    v3 = objc_alloc_init(_SUAutoInstallOperationModel);
    [(_SUAutoInstallOperationModel *)v3 setForecast:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_SUAutoInstallOperationModel)operationModel
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19;
  v11 = __Block_byref_object_dispose__19;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SUAutoInstallManager_operationModel__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_installAttemptDone
{
  v2 = +[SUScheduler sharedInstance];
  [v2 setAutoInstallActivityStateDone];
}

- (void)setFailedToAutoInstallError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SUAutoInstallManager_setFailedToAutoInstallError___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(stateQueue, v7);
}

- (void)_queue_setFailedToAutoInstallError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_stateQueue);
  SULogInfo(@"_failedToAutoInstallError changed from %@ to %@", v5, v6, v7, v8, v9, v10, v11, self->_failedToAutoInstallError);
  failedToAutoInstallError = self->_failedToAutoInstallError;
  self->_failedToAutoInstallError = errorCopy;
  v13 = errorCopy;

  [(SUState *)self->_state setFailedToAutoInstallError:v13];
  [(SUState *)self->_state save];
}

+ (id)rollbackRebootLaterTime
{
  v2 = objc_alloc_init(MEMORY[0x277CFE118]);
  v10 = v2;
  if (v2)
  {
    getUnlockAndSoftwareUpdateTimes = [v2 getUnlockAndSoftwareUpdateTimes];
    v19 = getUnlockAndSoftwareUpdateTimes;
    if (getUnlockAndSoftwareUpdateTimes)
    {
      v20 = [getUnlockAndSoftwareUpdateTimes objectForKeyedSubscript:*MEMORY[0x277CFE308]];
    }

    else
    {
      SULogInfo(@"No SoftwareUpdate times found from _CDSleepForAutoSu", v12, v13, v14, v15, v16, v17, v18, v22);
      v20 = 0;
    }
  }

  else
  {
    SULogInfo(@"Unable to allocate _CDSleepForAutoSu to get rollback reboot time", v3, v4, v5, v6, v7, v8, v9, v22);
    v20 = 0;
  }

  return v20;
}

- (SUAutoInstallManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end