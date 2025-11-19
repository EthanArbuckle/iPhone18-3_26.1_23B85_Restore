@interface SUDDMManager
+ (id)statePath;
+ (int64_t)_NSNumberToTriState:(id)a3;
- (BOOL)_evaluateAllDeclarations;
- (BOOL)_nonFatalScanError:(id)a3;
- (BOOL)cancelDDMDeclarationForKey:(id)a3 outError:(id *)a4;
- (BOOL)enableGlobalNotifications;
- (BOOL)enableRapidSecurityResponse;
- (BOOL)enableRapidSecurityResponseRollback;
- (BOOL)handleDDMDeclaration:(id)a3 outError:(id *)a4;
- (BOOL)setDDMGlobalSettings:(id)a3 outError:(id *)a4;
- (SUDDMManager)initWithDelegate:(id)a3;
- (id)_scanForUpdateForDeclaration:(id)a3 retryIfNecessary:(int)a4;
- (id)activeDDMDeclarationEnfrocedSU;
- (id)allDeclarations;
- (id)getDDMGlobalSettingsWithError:(id *)a3;
- (id)manager;
- (int64_t)alwaysEnableAutoDownload;
- (int64_t)alwaysEnableAutoInstallOSUpdates;
- (int64_t)alwaysEnableAutoInstallRapidSecurityResponse;
- (unint64_t)recommendedCadence;
- (unint64_t)updateDeferralPeriodDays;
- (void)_cancelCurrentDownloadAndDownload:(id)a3;
- (void)_cancelScheduledDownloadRetryForReason:(id)a3;
- (void)_downloadRequestCompletedWithStatus:(BOOL)a3 error:(id)a4 withDescriptor:(id)a5;
- (void)_evaluateDeclarationsWithNewDeclaration:(id)a3;
- (void)_handleExistingDownload:(id)a3 targetUpdate:(id)a4;
- (void)_handleScanResults:(id)a3;
- (void)_initiateDownloadWithDescriptor:(id)a3;
- (void)_notifyUI:(id)a3;
- (void)_purgeDownloadWithHandler:(id)a3;
- (void)_scheduleDownloadRetryForReason:(id)a3;
- (void)_setActiveDeclaration:(id)a3;
- (void)downloadDidFail:(id)a3 withError:(id)a4;
- (void)downloadDidFinish:(id)a3 withInstallPolicy:(id)a4;
- (void)downloadDidStart:(id)a3;
- (void)downloadWasInvalidated:(id)a3;
- (void)getActiveDDMDeclarationEnforcedSUWithResponse:(id)a3;
- (void)getDescriptorWithCallback:(id)a3;
- (void)installDidFinish:(id)a3;
- (void)resumeOrResetStateIfNecessary;
- (void)scanRequestDidFinishForOptions:(id)a3 results:(id)a4 error:(id)a5;
- (void)timeFiredForScheduler:(id)a3 withOptions:(id)a4 replyBlock:(id)a5;
@end

@implementation SUDDMManager

+ (id)statePath
{
  v2 = +[SUUtility systemContainerURL];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CCACA8];
    v14 = [v2 path];
    v5 = [v4 stringWithFormat:@"%@%@"];

    if (!v5)
    {
      SULogInfo(@"Failed to create state file path", v6, v7, v8, v9, v10, v11, v12, v14);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SUDDMManager)initWithDelegate:(id)a3
{
  v5 = a3;
  v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"was called"];
  SULogInfo(@"[DDM] %s: %@", v6, v7, v8, v9, v10, v11, v12, "[SUDDMManager initWithDelegate:]");

  if (v5)
  {
    v38.receiver = self;
    v38.super_class = SUDDMManager;
    v13 = [(SUDDMManager *)&v38 init];
    if (v13)
    {
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = dispatch_queue_create("com.apple.softwareupdateservices.ddmWorkQueue", v14);
      workQueue = v13->_workQueue;
      v13->_workQueue = v15;

      v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v18 = dispatch_queue_create("com.apple.softwareupdateservices.ddmWorkQueue.gs", v17);
      gsWorkQueue = v13->_gsWorkQueue;
      v13->_gsWorkQueue = v18;

      objc_storeStrong(&v13->_managerServerDelegate, a3);
      v20 = [objc_alloc(MEMORY[0x277D64170]) initWithDelegate:v13 options:&unk_287B6F7D8];
      evaluationScheduler = v13->_evaluationScheduler;
      v13->_evaluationScheduler = v20;

      v22 = [objc_alloc(MEMORY[0x277D64170]) initWithDelegate:v13 options:&unk_287B6F800];
      downloadScheduler = v13->_downloadScheduler;
      v13->_downloadScheduler = v22;

      ddmConfiguration = v13->_ddmConfiguration;
      v13->_ddmConfiguration = 0;

      activeDeclarationEnforcedSU = v13->_activeDeclarationEnforcedSU;
      v13->_activeDeclarationEnforcedSU = 0;

      globalSettings = v13->_globalSettings;
      v13->_globalSettings = 0;
    }

    self = v13;
    v27 = self;
  }

  else
  {
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"SUDDMManager failed to initiate as first call to sharedManager was made without a server delegate"];
    SULogInfo(@"[DDM] %s: %@", v28, v29, v30, v31, v32, v33, v34, "[SUDDMManager initWithDelegate:]");

    v27 = 0;
  }

  return v27;
}

- (void)resumeOrResetStateIfNecessary
{
  dispatch_assert_queue_not_V2(self->_workQueue);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUDDMManager_resumeOrResetStateIfNecessary__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(workQueue, block);
  dispatch_assert_queue_not_V2(self->_gsWorkQueue);
  gsWorkQueue = self->_gsWorkQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SUDDMManager_resumeOrResetStateIfNecessary__block_invoke_2;
  v5[3] = &unk_279CAA708;
  v5[4] = self;
  dispatch_sync(gsWorkQueue, v5);
}

void __45__SUDDMManager_resumeOrResetStateIfNecessary__block_invoke(uint64_t a1)
{
  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"was called"];
  SULogInfo(@"[DDM] %s: %@", v2, v3, v4, v5, v6, v7, v8, "[SUDDMManager resumeOrResetStateIfNecessary]_block_invoke");

  v9 = *(a1 + 32);
  v48 = [objc_opt_class() statePath];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"_ddmConfiguration persistence path: %@", v48, v45];
  SULogInfo(@"[DDM] %s: %@", v11, v12, v13, v14, v15, v16, v17, "[SUDDMManager resumeOrResetStateIfNecessary]_block_invoke");

  v18 = [objc_alloc(MEMORY[0x277D641B0]) initWithStatePersistencePath:v48];
  v19 = *(a1 + 32);
  v20 = *(v19 + 48);
  *(v19 + 48) = v18;

  v21 = *(*(a1 + 32) + 48);
  v22 = [v21 activeDeclarationKey];
  v23 = [v21 declarationForKey:v22];

  v24 = [*(a1 + 32) manager];
  v25 = [v24 download];

  v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Current active declaration = %@ current download = \n%@", v23, v25];;
  SULogInfo(@"[DDM] %s: %@", v26, v27, v28, v29, v30, v31, v32, "[SUDDMManager resumeOrResetStateIfNecessary]_block_invoke");

  if (v23 && ([v25 descriptor], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isRelevantToDeclaration:", v23), v33, v34))
  {
    objc_storeStrong((*(a1 + 32) + 72), v23);
    v35 = [v25 descriptor];
    v36 = *(a1 + 32);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;

    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found declaration %@ and corresponding update %@ from state", *(*(a1 + 32) + 72), *(*(a1 + 32) + 40)];
    SULogInfo(@"[DDM] %s: %@", v38, v39, v40, v41, v42, v43, v44, "[SUDDMManager resumeOrResetStateIfNecessary]_block_invoke");

    [*(a1 + 32) _notifyUI:v23];
  }

  else
  {
    [*(a1 + 32) _evaluateDeclarationsWithNewDeclaration:0];
  }
}

uint64_t __45__SUDDMManager_resumeOrResetStateIfNecessary__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) currentGlobalSettingsDeclaration];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = *(*(a1 + 32) + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    v9 = *(v7 + 80);

    return [v8 sendDDMGlobalSettingsToUI:v9];
  }

  return result;
}

- (id)manager
{
  dispatch_assert_queue_V2(self->_workQueue);
  manager = self->_manager;
  if (!manager)
  {
    v4 = +[SUManagerInterfaceFactory sharedInstance];
    v5 = self->_manager;
    self->_manager = v4;

    [(SUManagerInterface *)self->_manager addObserver:self];
    manager = self->_manager;
  }

  return manager;
}

- (void)_notifyUI:(id)a3
{
  v13 = a3;
  managerServerDelegate = self->_managerServerDelegate;
  if (objc_opt_respondsToSelector())
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending %@ to UI", v13];
    SULogInfo(@"[DDM] %s: %@", v5, v6, v7, v8, v9, v10, v11, "[SUDDMManager _notifyUI:]");

    [(SUManagerDelegate *)self->_managerServerDelegate sendDDMDeclarationToUI:v13];
  }
}

- (void)_setActiveDeclaration:(id)a3
{
  v15 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  ddmConfiguration = self->_ddmConfiguration;
  v5 = [v15 declarationKey];
  LODWORD(ddmConfiguration) = [(SUCorePolicyDDMConfiguration *)ddmConfiguration setActiveDeclarationKey:v5];

  if (ddmConfiguration)
  {
    v6 = v15;
    activeDeclarationEnforcedSU = self->_activeDeclarationEnforcedSU;
    self->_activeDeclarationEnforcedSU = v6;
  }

  else
  {
    activeDeclarationEnforcedSU = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to set %@ as active it must not be valid!!!", v15];;
    SULogError(@"[DDM] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUDDMManager _setActiveDeclaration:]");
  }
}

- (id)_scanForUpdateForDeclaration:(id)a3 retryIfNecessary:(int)a4
{
  v6 = a3;
  v97 = self;
  dispatch_assert_queue_V2(self->_workQueue);
  if (!v6)
  {
    v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"Don't scan for a null declaration"];
    SULogInfo(@"[DDM] %s: %@", v28, v29, v30, v31, v32, v33, v34, "[SUDDMManager _scanForUpdateForDeclaration:retryIfNecessary:]");

    v35 = 0;
    goto LABEL_21;
  }

  v7 = objc_opt_new();
  [v7 setClientName:@"com.apple.SoftwareUpdateServices.DDM"];
  [v7 setIdentifier:@"com.apple.SoftwareUpdateServices.DDM"];
  [v7 setForced:1];
  [v7 setScanType:2];
  v8 = [v6 versionString];
  [v7 setRequestedPMV:v8];

  v9 = [v6 buildVersionString];
  [v7 setRequestedBuild:v9];

  [v7 setMDMUseDelayPeriod:0];
  [v7 setMDMSoftwareUpdatePath:0];
  [v7 setMDMShowRapidSecurityResponse:1];
  v10 = dispatch_semaphore_create(0);
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__1;
  v112 = __Block_byref_object_dispose__1;
  v113 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__1;
  v106 = __Block_byref_object_dispose__1;
  v107 = 0;
  v11 = a4 + 1;
  while (1)
  {
    v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"Scanning for update for DDM declaration %@", v6, v90];
    SULogInfo(@"[DDM] %s: %@", v12, v13, v14, v15, v16, v17, v18, "[SUDDMManager _scanForUpdateForDeclaration:retryIfNecessary:]");

    v19 = [(SUDDMManager *)v97 manager];
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __62__SUDDMManager__scanForUpdateForDeclaration_retryIfNecessary___block_invoke;
    v98[3] = &unk_279CAAD50;
    v100 = &v108;
    v101 = &v102;
    v20 = v10;
    v99 = v20;
    [v19 scanForUpdates:v7 complete:v98];

    dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    if (!v103[5])
    {
      break;
    }

    v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"Scan hit an error %@, retrying in 5s: %d", v103[5], (v11 - 2)];
    SULogInfo(@"[DDM] %s: %@", v21, v22, v23, v24, v25, v26, v27, "[SUDDMManager _scanForUpdateForDeclaration:retryIfNecessary:]");

    [MEMORY[0x277CCACC8] sleepForTimeInterval:5.0];
    if (--v11 <= 1)
    {
      goto LABEL_16;
    }
  }

  v36 = [v109[5] preferredDescriptor];
  if (v36)
  {
    v37 = [v109[5] preferredDescriptor];
    v38 = [v37 isRelevantToDeclaration:v6];

    if (v38)
    {
      v35 = [v109[5] preferredDescriptor];
      v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Picked preferred descriptor from scan results"];
      SULogInfo(@"[DDM] %s: %@", v40, v41, v42, v43, v44, v45, v46, "[SUDDMManager _scanForUpdateForDeclaration:retryIfNecessary:]");
      goto LABEL_13;
    }
  }

  v47 = [v109[5] alternateDescriptor];
  if (v47)
  {
    v48 = [v109[5] alternateDescriptor];
    v49 = [v48 isRelevantToDeclaration:v6];

    if (v49)
    {
      v35 = [v109[5] alternateDescriptor];
      v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Picked alternate descriptor from scan results"];
      SULogInfo(@"[DDM] %s: %@", v50, v51, v52, v53, v54, v55, v56, "[SUDDMManager _scanForUpdateForDeclaration:retryIfNecessary:]");
LABEL_13:

      if (v35)
      {
        v57 = MEMORY[0x277CCACA8];
        v58 = [v35 humanReadableUpdateName];
        v93 = [v57 stringWithFormat:@"Update found for DDM declaration %@: %@ [%p]", v6, v58, v35];
        SULogInfo(@"[DDM] %s: %@", v59, v60, v61, v62, v63, v64, v65, "[SUDDMManager _scanForUpdateForDeclaration:retryIfNecessary:]");

        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

  v94 = [MEMORY[0x277CCACA8] stringWithFormat:@"Scan didn't find anything relevant don't retry"];;
  SULogInfo(@"[DDM] %s: %@", v66, v67, v68, v69, v70, v71, v72, "[SUDDMManager _scanForUpdateForDeclaration:retryIfNecessary:]");

LABEL_16:
  v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"No update found for DDM declaration %@ with error %@", v6, v103[5]];
  SULogInfo(@"[DDM] %s: %@", v73, v74, v75, v76, v77, v78, v79, "[SUDDMManager _scanForUpdateForDeclaration:retryIfNecessary:]");

  if (v103[5])
  {
    v80 = +[SUState currentState];
    v81 = [v103[5] description];
    [v80 setDdmPersistedErrorDescription:v81];

    if (![(SUDDMManager *)v97 _nonFatalScanError:v103[5]])
    {
      v96 = [MEMORY[0x277CCACA8] stringWithFormat:@"The last scan error %@ is fatal, notifying the status channel.", v103[5], v95];
      SULogInfo(@"[DDM] %s: %@", v82, v83, v84, v85, v86, v87, v88, "[SUDDMManager _scanForUpdateForDeclaration:retryIfNecessary:]");

      notify_post([*MEMORY[0x277D64248] UTF8String]);
    }
  }

  v35 = 0;
LABEL_20:
  _Block_object_dispose(&v102, 8);

  _Block_object_dispose(&v108, 8);
LABEL_21:

  return v35;
}

void __62__SUDDMManager__scanForUpdateForDeclaration_retryIfNecessary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_nonFatalScanError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:@"com.apple.softwareupdateservices.errors"])
    {
      v6 = [v4 code] == 3 || objc_msgSend(v4, "code") == 105 || objc_msgSend(v4, "code") == 22 || objc_msgSend(v4, "code") == 57;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_evaluateAllDeclarations
{
  v55 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_workQueue);
  v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Let's evaluate all declaraions!"];
  SULogInfo(@"[DDM] %s: %@", v3, v4, v5, v6, v7, v8, v9, "[SUDDMManager _evaluateAllDeclarations]");

  v10 = [(SUCorePolicyDDMConfiguration *)self->_ddmConfiguration invalidateAllInvalidDeclarationsReturningAllInvalid];
  v11 = [(SUCorePolicyDDMConfiguration *)self->_ddmConfiguration allDeclarations];
  v12 = v11;
  if (v11 && [v11 count])
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v51;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v50 + 1) + 8 * i);
          v19 = [(SUDDMManager *)self _scanForUpdateForDeclaration:v18 retryIfNecessary:3];
          if (v19)
          {
            v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Update found! Let's enforce %@", v18, v47];
            SULogInfo(@"[DDM] %s: %@", v36, v37, v38, v39, v40, v41, v42, "[SUDDMManager _evaluateAllDeclarations]");

            v27 = v18;
            goto LABEL_15;
          }

          v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"No updates found... Let's skip %@", v18, v47];
          SULogInfo(@"[DDM] %s: %@", v20, v21, v22, v23, v24, v25, v26, "[SUDDMManager _evaluateAllDeclarations]");
        }

        v15 = [v13 countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v19 = 0;
      v27 = 0;
    }

    else
    {
      v19 = 0;
      v27 = 0;
    }

LABEL_15:

    [(SUDDMManager *)self _setActiveDeclaration:v27];
    descriptor = self->_descriptor;
    self->_descriptor = v19;
    v44 = v19;

    v35 = 1;
  }

  else
  {
    v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"No declarations in configuration %@", self->_ddmConfiguration, v47];
    SULogInfo(@"[DDM] %s: %@", v28, v29, v30, v31, v32, v33, v34, "[SUDDMManager _evaluateAllDeclarations]");

    [(SUDDMManager *)self _setActiveDeclaration:0];
    v35 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v35;
}

- (void)_evaluateDeclarationsWithNewDeclaration:(id)a3
{
  v101 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v94 = [MEMORY[0x277CCACA8] stringWithFormat:@"was called"];
  SULogInfo(@"[DDM] %s: %@", v4, v5, v6, v7, v8, v9, v10, "[SUDDMManager _evaluateDeclarationsWithNewDeclaration:]");

  v11 = self->_activeDeclarationEnforcedSU;
  v12 = self->_descriptor;
  v13 = v12;
  v14 = 0;
  if (v11 && v12)
  {
    v14 = [(SUDescriptor *)v12 isRelevantToDeclaration:v11];
  }

  v15 = 0;
  v16 = v101;
  if (v101 && v11)
  {
    v17 = [v101 enforcedInstallDate];
    v18 = [(SUCoreDDMDeclaration *)v11 enforcedInstallDate];
    v15 = [v17 compare:v18] == -1;

    v16 = v101;
  }

  if (v14)
  {
    v19 = [v16 declarationKey];
    v20 = [(SUCoreDDMDeclaration *)v11 declarationKey];
    v21 = [v19 isEqualToString:v20];

    if (!v21)
    {
      if (v15)
      {
        v42 = [(SUDDMManager *)self _scanForUpdateForDeclaration:v101 retryIfNecessary:3];
        if (v42)
        {
          v97 = [MEMORY[0x277CCACA8] stringWithFormat:@"Update found for the new declaration %@ let's enforce it!", v101, v94];;
          SULogInfo(@"[DDM] %s: %@", v43, v44, v45, v46, v47, v48, v49, "[SUDDMManager _evaluateDeclarationsWithNewDeclaration:]");

          [(SUDDMManager *)self _setActiveDeclaration:v101];
          v50 = v42;
          descriptor = self->_descriptor;
          self->_descriptor = v50;
        }

        else
        {
          descriptor = [MEMORY[0x277CCACA8] stringWithFormat:@"Nothing found for the new declaration %@ let's keep the original one.", v101, v94];;
          SULogInfo(@"[DDM] %s: %@", v67, v68, v69, v70, v71, v72, v73, "[SUDDMManager _evaluateDeclarationsWithNewDeclaration:]");
        }
      }

      else
      {
        v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Current declaration is good and the new declaration isn't more urgent. Don't evaluate this time."];
        SULogInfo(@"[DDM] %s: %@", v60, v61, v62, v63, v64, v65, v66, "[SUDDMManager _evaluateDeclarationsWithNewDeclaration:]");
      }

      goto LABEL_21;
    }

    v22 = MEMORY[0x277D64400];
    v23 = [(SUCoreDDMDeclaration *)v11 versionString];
    v24 = [v101 versionString];
    if ([v22 stringIsEqual:v23 to:v24])
    {
      v25 = MEMORY[0x277D64400];
      v26 = [(SUCoreDDMDeclaration *)v11 buildVersionString];
      v27 = [v101 buildVersionString];
      LOBYTE(v25) = [v25 stringIsEqual:v26 to:v27];

      v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"Current declaration changed from %@ to %@", v11, v101];
      SULogInfo(@"[DDM] %s: %@", v28, v29, v30, v31, v32, v33, v34, "[SUDDMManager _evaluateDeclarationsWithNewDeclaration:]");

      if (v25)
      {
        v96 = [MEMORY[0x277CCACA8] stringWithFormat:@"No target versions changed no need to re-evaluate"];;
        SULogInfo(@"[DDM] %s: %@", v35, v36, v37, v38, v39, v40, v41, "[SUDDMManager _evaluateDeclarationsWithNewDeclaration:]");

        [(SUDDMManager *)self _setActiveDeclaration:v101];
LABEL_21:
        v59 = 1;
        goto LABEL_22;
      }
    }

    else
    {

      v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"Current declaration changed from %@ to %@", v11, v101];
      SULogInfo(@"[DDM] %s: %@", v52, v53, v54, v55, v56, v57, v58, "[SUDDMManager _evaluateDeclarationsWithNewDeclaration:]");
    }
  }

  v59 = [(SUDDMManager *)self _evaluateAllDeclarations];
LABEL_22:
  v74 = self->_activeDeclarationEnforcedSU;

  v75 = self->_descriptor;
  v76 = MEMORY[0x277CCACA8];
  v77 = [(SUDescriptor *)v75 humanReadableUpdateName];
  v99 = [v76 stringWithFormat:@"declarationToEnforce = %@, updateForDeclaration = %@ [%p]", v74, v77, v75];
  SULogInfo(@"[DDM] %s: %@", v78, v79, v80, v81, v82, v83, v84, "[SUDDMManager _evaluateDeclarationsWithNewDeclaration:]");

  [(SUCoreDDMActivityScheduler *)self->_evaluationScheduler disarmActivityScheduler];
  if (v74 && v75)
  {
    [(SUDDMManager *)self _initiateDownloadWithDescriptor:v75];
  }

  else if (v59)
  {
    v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find any updates for declarations will re-evaluate later"];;
    SULogInfo(@"[DDM] %s: %@", v85, v86, v87, v88, v89, v90, v91, "[SUDDMManager _evaluateDeclarationsWithNewDeclaration:]");

    evaluationScheduler = self->_evaluationScheduler;
    v93 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:21600.0];
    [(SUCoreDDMActivityScheduler *)evaluationScheduler armActivitySchedulerWithDate:v93];
  }

  [(SUDDMManager *)self _notifyUI:v74];
}

- (void)_scheduleDownloadRetryForReason:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
  v7 = MEMORY[0x277CCACA8];
  v25 = v6;
  v8 = [SUUtility prettyPrintDate:?];
  v9 = [v7 stringWithFormat:@"Schedule to retry downloading on %@ for reason: %@", v8, v5];

  SULogInfo(@"[DDM] %s: %@", v10, v11, v12, v13, v14, v15, v16, "[SUDDMManager _scheduleDownloadRetryForReason:]");
  if ([(SUCoreDDMActivityScheduler *)self->_downloadScheduler isArmed])
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"[ANOMALY] shouldn't have any previously scheduled activity!"];
    SULogInfo(@"[DDM] %s: %@", v17, v18, v19, v20, v21, v22, v23, "[SUDDMManager _scheduleDownloadRetryForReason:]");

    [(SUCoreDDMActivityScheduler *)self->_downloadScheduler disarmActivityScheduler];
  }

  [(SUCoreDDMActivityScheduler *)self->_downloadScheduler armActivitySchedulerWithDate:v25];
}

- (void)_cancelScheduledDownloadRetryForReason:(id)a3
{
  v12 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  if ([(SUCoreDDMActivityScheduler *)self->_downloadScheduler isArmed])
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cancel scheduled download retry for reason: %@", v12];
    SULogInfo(@"[DDM] %s: %@", v4, v5, v6, v7, v8, v9, v10, "[SUDDMManager _cancelScheduledDownloadRetryForReason:]");

    [(SUCoreDDMActivityScheduler *)self->_downloadScheduler disarmActivityScheduler];
  }
}

- (void)_initiateDownloadWithDescriptor:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = MEMORY[0x277CCACA8];
  v6 = [v4 humanReadableUpdateName];
  v54 = [v5 stringWithFormat:@"Downloading: %@ [%p]", v6, v4];
  SULogInfo(@"[DDM] %s: %@", v7, v8, v9, v10, v11, v12, v13, "[SUDDMManager _initiateDownloadWithDescriptor:]");

  if (v4)
  {
    v14 = [(SUDDMManager *)self manager];
    v15 = [v14 download];

    if (v15)
    {
      v16 = [(SUDDMManager *)self manager];
      v17 = [(SUDownloadOptions *)v16 download];
      [(SUDDMManager *)self _handleExistingDownload:v17 targetUpdate:v4];

LABEL_11:
      goto LABEL_12;
    }

    v18 = +[SUNetworkMonitor sharedInstance];
    v19 = [v18 currentNetworkType];

    v16 = [[SUDownloadOptions alloc] initWithDescriptor:v4];
    [(SUDownloadOptions *)v16 setActiveDownloadPolicyType:0];
    [(SUDownloadOptions *)v16 setAutoDownload:0];
    [(SUDownloadOptions *)v16 setDownloadOnly:1];
    [(SUDownloadOptions *)v16 setClientName:@"com.apple.sus.ddm"];
    [(SUDownloadOptions *)v16 setTermsAndConditionsAgreementStatus:1];
    if (v19 == 1)
    {
      goto LABEL_9;
    }

    if (!v19)
    {
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"No network connection try again later..."];;
      SULogInfo(@"[DDM] %s: %@", v20, v21, v22, v23, v24, v25, v26, "[SUDDMManager _initiateDownloadWithDescriptor:]");

      v27 = @"currently no network connection";
LABEL_7:
      [(SUDDMManager *)self _scheduleDownloadRetryForReason:v27];
      goto LABEL_11;
    }

    if ([(SUDownloadOptions *)v16 isEnabledForCellular])
    {
LABEL_9:
      v28 = [(SUDDMManager *)self manager];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __48__SUDDMManager__initiateDownloadWithDescriptor___block_invoke;
      v61[3] = &unk_279CAAD78;
      v61[4] = self;
      v62 = v4;
      [v28 startDownloadWithOptions:v16 withResult:v61];

      v29 = v62;
    }

    else
    {
      v30 = [(SUDownloadOptions *)v16 activeDownloadPolicy];
      v31 = [v30 isDownloadAllowableForCellular];

      v32 = MEMORY[0x277CCACA8];
      if (!v31)
      {
        v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"Download policy doesn't allow downloading over cellular try again later..."];;
        SULogInfo(@"[DDM] %s: %@", v47, v48, v49, v50, v51, v52, v53, "[SUDDMManager _initiateDownloadWithDescriptor:]");

        v27 = @"download policy doesn't allow downloading over cellular";
        goto LABEL_7;
      }

      v33 = SUStringFromNetworkType(v19);
      v56 = [v32 stringWithFormat:@"Current network: %@", v33, v54];
      SULogInfo(@"[DDM] %s: %@", v34, v35, v36, v37, v38, v39, v40, "[SUDDMManager _initiateDownloadWithDescriptor:]");

      v41 = +[SUAlertPresentationManager sharedInstance];
      [v41 dismissAlertsOfClass:objc_opt_class() animated:1];

      v42 = [SUCellularFeeAlertItem alloc];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __48__SUDDMManager__initiateDownloadWithDescriptor___block_invoke_2;
      v58[3] = &unk_279CAADC8;
      v58[4] = self;
      v59 = v16;
      v60 = v4;
      v43 = [(SUDescriptor *)self->_descriptor humanReadableUpdateName];
      v44 = [(SUCoreDDMDeclaration *)self->_activeDeclarationEnforcedSU enforcedInstallDate];
      v45 = [(SUCellularFeeAlertItem *)v42 initWithHandler:v58 updateName:v43 dueDate:v44];

      v46 = +[SUAlertPresentationManager sharedInstance];
      [v46 presentAlert:v45 animated:1];

      v29 = v59;
    }

    goto LABEL_11;
  }

LABEL_12:
}

void __48__SUDDMManager__initiateDownloadWithDescriptor___block_invoke_2(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SUDDMManager__initiateDownloadWithDescriptor___block_invoke_3;
  v7[3] = &unk_279CAADA0;
  v5 = *(a1 + 40);
  v11 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 48);
  dispatch_async(v4, v7);
}

void __48__SUDDMManager__initiateDownloadWithDescriptor___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setDownloadFeeAgreementStatus:*(a1 + 56)];
  v2 = [*(a1 + 40) manager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SUDDMManager__initiateDownloadWithDescriptor___block_invoke_4;
  v5[3] = &unk_279CAAD78;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v6 = v4;
  [v2 startDownloadWithOptions:v3 withResult:v5];
}

- (void)_handleExistingDownload:(id)a3 targetUpdate:(id)a4
{
  v26 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  if (!v26)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"No download"];
    SULogError(@"[DDM] %s: %@", v12, v13, v14, v15, v16, v17, v18, "[SUDDMManager _handleExistingDownload:targetUpdate:]");
LABEL_8:

    goto LABEL_9;
  }

  if (!v6)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = @"No target update; not handling the download";
    goto LABEL_7;
  }

  v7 = [v26 descriptor];
  v8 = [v7 isEqual:v6];

  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = @"Current download is what is encforced";
LABEL_7:
    v11 = [v9 stringWithFormat:v10];
    SULogInfo(@"[DDM] %s: %@", v19, v20, v21, v22, v23, v24, v25, "[SUDDMManager _handleExistingDownload:targetUpdate:]");
    goto LABEL_8;
  }

  [(SUDDMManager *)self _cancelCurrentDownloadAndDownload:v6];
LABEL_9:
}

- (void)_cancelCurrentDownloadAndDownload:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = MEMORY[0x277CCACA8];
  v6 = [v4 humanReadableUpdateName];
  v15 = [v5 stringWithFormat:@"Canceling the current download to download %@ [%p]", v6, v4];
  SULogInfo(@"[DDM] %s: %@", v7, v8, v9, v10, v11, v12, v13, "[SUDDMManager _cancelCurrentDownloadAndDownload:]");

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__SUDDMManager__cancelCurrentDownloadAndDownload___block_invoke;
  v16[3] = &unk_279CAAD78;
  v17 = v4;
  v18 = self;
  v14 = v4;
  [(SUDDMManager *)self _purgeDownloadWithHandler:v16];
}

uint64_t __50__SUDDMManager__cancelCurrentDownloadAndDownload___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) _initiateDownloadWithDescriptor:?];
  }

  return result;
}

- (void)_purgeDownloadWithHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = objc_opt_new();
  [v5 setUserRequested:0];
  [v5 setNotifyUser:0];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Purging download with options %@", v5];
  SULogInfo(@"[DDM] %s: %@", v6, v7, v8, v9, v10, v11, v12, "[SUDDMManager _purgeDownloadWithHandler:]");

  v13 = [(SUDDMManager *)self manager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__SUDDMManager__purgeDownloadWithHandler___block_invoke;
  v16[3] = &unk_279CAAE18;
  v16[4] = self;
  v17 = v4;
  v14 = v4;
  [v13 purgeDownloadWithOptions:v5 withResult:v16];
}

void __42__SUDDMManager__purgeDownloadWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Download was purged (result: %d error: %@)", a2, v5];;
  SULogInfo(@"[DDM] %s: %@", v6, v7, v8, v9, v10, v11, v12, "[SUDDMManager _purgeDownloadWithHandler:]_block_invoke");

  v13 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUDDMManager__purgeDownloadWithHandler___block_invoke_2;
  block[3] = &unk_279CAADF0;
  v14 = *(a1 + 40);
  v20 = a2;
  v18 = v5;
  v19 = v14;
  v15 = v5;
  dispatch_async(v13, block);
}

uint64_t __42__SUDDMManager__purgeDownloadWithHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)_downloadRequestCompletedWithStatus:(BOOL)a3 error:(id)a4 withDescriptor:(id)a5
{
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SUDDMManager__downloadRequestCompletedWithStatus_error_withDescriptor___block_invoke;
  block[3] = &unk_279CAAE40;
  v13 = a3;
  v11 = v7;
  v12 = self;
  v9 = v7;
  dispatch_async(workQueue, block);
}

void __73__SUDDMManager__downloadRequestCompletedWithStatus_error_withDescriptor___block_invoke(uint64_t a1)
{
  v2 = @"failed";
  if (*(a1 + 48))
  {
    v2 = @"succeeded";
  }

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Download %@ to start. Error: %@", v2, *(a1 + 32)];
  SULogInfo(@"[DDM] %s: %@", v3, v4, v5, v6, v7, v8, v9, "[SUDDMManager _downloadRequestCompletedWithStatus:error:withDescriptor:]_block_invoke");

  v10 = *(a1 + 32);
  if (v10 && ([v10 code] == 41 || objc_msgSend(*(a1 + 32), "code") == 11))
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Download already exists: %ld", objc_msgSend(*(a1 + 32), "code"), v24];
    SULogInfo(@"[DDM] %s: %@", v11, v12, v13, v14, v15, v16, v17, "[SUDDMManager _downloadRequestCompletedWithStatus:error:withDescriptor:]_block_invoke");

    v18 = *(a1 + 40);
    v26 = [v18 manager];
    v19 = [v26 download];
    [v18 _handleExistingDownload:v19 targetUpdate:*(*(a1 + 40) + 40)];

LABEL_14:

    return;
  }

  if (*(a1 + 48) == 1 && !*(a1 + 32))
  {
    return;
  }

  [*(a1 + 40) _scheduleDownloadRetryForReason:@"download failed to start"];
  notify_post([*MEMORY[0x277D64250] UTF8String]);
  v20 = *(a1 + 32);
  v21 = +[SUState currentState];
  v26 = v21;
  if (!v20)
  {
    [v21 setDdmPersistedError:0];
    goto LABEL_14;
  }

  v22 = [*(a1 + 32) description];
  [v26 setDdmPersistedErrorDescription:v22];

  v23 = [*MEMORY[0x277D64248] UTF8String];

  notify_post(v23);
}

- (void)_handleScanResults:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = [v4 preferredDescriptor];
  v6 = [v4 alternateDescriptor];
  if (v5 | v6)
  {
    v7 = self->_activeDeclarationEnforcedSU;
    v8 = self->_descriptor;
    v9 = v8;
    if (v7 && v8 && [(SUDescriptor *)v8 isRelevantToDeclaration:v7])
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Current declaration is good, nothing to do here"];
      SULogInfo(@"[DDM] %s: %@", v11, v12, v13, v14, v15, v16, v17, "[SUDDMManager _handleScanResults:]");
    }

    else
    {
      v25 = [(SUCorePolicyDDMConfiguration *)self->_ddmConfiguration invalidateAllInvalidDeclarationsReturningAllInvalid];
      v26 = [(SUCorePolicyDDMConfiguration *)self->_ddmConfiguration allDeclarations];
      v10 = v26;
      if (v26 && [v26 count])
      {
        v51 = v9;
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __35__SUDDMManager__handleScanResults___block_invoke;
        v56[3] = &unk_279CAAE68;
        v56[4] = self;
        v27 = MEMORY[0x26D668B30](v56);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v28 = v10;
        v29 = [v28 countByEnumeratingWithState:&v52 objects:v57 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v53;
          v50 = v10;
          while (2)
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v53 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v52 + 1) + 8 * i);
              if (v27[2](v27, v33, v5) & 1) != 0 || (v27[2](v27, v33, v6))
              {
                v10 = v50;
                goto LABEL_21;
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v52 objects:v57 count:16];
            v10 = v50;
            if (v30)
            {
              continue;
            }

            break;
          }
        }

        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nothing relevant found..."];
        SULogInfo(@"[DDM] %s: %@", v34, v35, v36, v37, v38, v39, v40, "[SUDDMManager _handleScanResults:]");
LABEL_21:

        v9 = v51;
      }

      else
      {
        v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"No declarations available, nothing to do here"];
        SULogInfo(@"[DDM] %s: %@", v41, v42, v43, v44, v45, v46, v47, "[SUDDMManager _handleScanResults:]");
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"No descriptors available"];
    SULogInfo(@"[DDM] %s: %@", v18, v19, v20, v21, v22, v23, v24, "[SUDDMManager _handleScanResults:]");
  }

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t __35__SUDDMManager__handleScanResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 isRelevantToDeclaration:v5];
  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v6 humanReadableUpdateName];
    v18 = [v8 stringWithFormat:@"Update found for declaration: %@ [%p], %@", v9, v6, v5];
    SULogInfo(@"[DDM] %s: %@", v10, v11, v12, v13, v14, v15, v16, "[SUDDMManager _handleScanResults:]_block_invoke");

    [*(a1 + 32) _setActiveDeclaration:v5];
    objc_storeStrong((*(a1 + 32) + 40), a3);
    [*(*(a1 + 32) + 56) disarmActivityScheduler];
    [*(a1 + 32) _initiateDownloadWithDescriptor:*(*(a1 + 32) + 40)];
  }

  return v7;
}

- (BOOL)handleDDMDeclaration:(id)a3 outError:(id *)a4
{
  v6 = a3;
  dispatch_assert_queue_not_V2(self->_workQueue);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  workQueue = self->_workQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__SUDDMManager_handleDDMDeclaration_outError___block_invoke;
  v11[3] = &unk_279CAAE90;
  v8 = v6;
  v14 = &v16;
  v15 = &v22;
  v12 = v8;
  v13 = self;
  dispatch_sync(workQueue, v11);
  if (a4)
  {
    *a4 = v17[5];
  }

  v9 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __46__SUDDMManager_handleDDMDeclaration_outError___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to handle null declaration"];
    SULogInfo(@"[DDM] %s: %@", v10, v11, v12, v13, v14, v15, v16, "[SUDDMManager handleDDMDeclaration:outError:]_block_invoke");

    v9 = 22;
    goto LABEL_5;
  }

  if (+[SUUtility isReturnToServiceModeActive])
  {
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Software Update not allowed because RRTS is on"];
    SULogInfo(@"[DDM] %s: %@", v2, v3, v4, v5, v6, v7, v8, "[SUDDMManager handleDDMDeclaration:outError:]_block_invoke");

    v9 = 106;
LABEL_5:
    v17 = [SUUtility errorWithCode:v9];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    MEMORY[0x2821F96F8]();
    return;
  }

  v20 = *(*(a1 + 40) + 48);
  v21 = [*(a1 + 32) dictionaryRepresentation];
  v22 = *(*(a1 + 48) + 8);
  v40 = *(v22 + 40);
  LOBYTE(v20) = [v20 addDeclaration:v21 returningError:&v40];
  objc_storeStrong((v22 + 40), v40);
  *(*(*(a1 + 56) + 8) + 24) = v20;

  v23 = *(a1 + 32);
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v24 = @"SUCCESS";
  }

  else
  {
    v24 = @"FAILURE";
  }

  v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Handled declaration %@: %@", *(a1 + 32), v24];
  SULogInfo(@"[DDM] %s: %@", v25, v26, v27, v28, v29, v30, v31, "[SUDDMManager handleDDMDeclaration:outError:]_block_invoke");

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    v34 = *(v33 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SUDDMManager_handleDDMDeclaration_outError___block_invoke_2;
    block[3] = &unk_279CAA7C0;
    block[4] = v33;
    v39 = v32;
    dispatch_async(v34, block);
  }
}

- (BOOL)cancelDDMDeclarationForKey:(id)a3 outError:(id *)a4
{
  v6 = a3;
  dispatch_assert_queue_not_V2(self->_workQueue);
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"About to cancel the declaration for key: %@", v6];
  SULogInfo(@"[DDM] %s: %@", v7, v8, v9, v10, v11, v12, v13, "[SUDDMManager cancelDDMDeclarationForKey:outError:]");

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (!v6)
  {
    v17 = [SUUtility errorWithCode:22];
    v18 = v37[5];
    v37[5] = v17;

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot cancel: key is nil"];
    SULogInfo(@"[DDM] %s: %@", v19, v20, v21, v22, v23, v24, v25, "[SUDDMManager cancelDDMDeclarationForKey:outError:]");

    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUDDMManager_cancelDDMDeclarationForKey_outError___block_invoke;
  block[3] = &unk_279CAAEE0;
  block[4] = self;
  v29 = v6;
  v30 = &v36;
  v31 = &v32;
  dispatch_sync(workQueue, block);

  if (a4)
  {
LABEL_3:
    *a4 = v37[5];
  }

LABEL_4:
  v15 = *(v33 + 24);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v15;
}

void __52__SUDDMManager_cancelDDMDeclarationForKey_outError___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) declarationForKey:*(a1 + 40)];
  if (v2)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 48) removeDeclarationForKey:*(a1 + 40)];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if ([v2 isEqual:*(*(a1 + 32) + 72)])
      {
        v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"The current active declaration was canceled, re-evaluate the declarations"];
        SULogInfo(@"[DDM] %s: %@", v3, v4, v5, v6, v7, v8, v9, "[SUDDMManager cancelDDMDeclarationForKey:outError:]_block_invoke");

        [*(a1 + 32) _setActiveDeclaration:0];
        v10 = *(a1 + 32);
        v11 = *(v10 + 40);
        *(v10 + 40) = 0;

        v12 = [*(a1 + 32) manager];
        v13 = [v12 download];
        v14 = [v13 descriptor];
        v15 = [v14 isRelevantToDeclaration:v2];

        if (v15)
        {
          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"The current download is relevant to the canceled declaration purge it"];;
          SULogInfo(@"[DDM] %s: %@", v16, v17, v18, v19, v20, v21, v22, "[SUDDMManager cancelDDMDeclarationForKey:outError:]_block_invoke");

          v23 = *(a1 + 32);
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __52__SUDDMManager_cancelDDMDeclarationForKey_outError___block_invoke_2;
          v52[3] = &unk_279CAAEB8;
          v52[4] = v23;
          [v23 _purgeDownloadWithHandler:v52];
        }

        else
        {
          v45 = *(a1 + 32);
          v46 = *(v45 + 8);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __52__SUDDMManager_cancelDDMDeclarationForKey_outError___block_invoke_3;
          block[3] = &unk_279CAA708;
          block[4] = v45;
          dispatch_async(v46, block);
        }
      }
    }

    else
    {
      v34 = *(a1 + 40);
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to remove declaration for key %@ from %@", v34, *(*(a1 + 32) + 48)];
      SULogInfo(@"[DDM] %s: %@", v35, v36, v37, v38, v39, v40, v41, "[SUDDMManager cancelDDMDeclarationForKey:outError:]_block_invoke");

      v42 = [SUUtility errorWithCode:-1];
      v43 = *(*(a1 + 48) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;
    }
  }

  else
  {
    v24 = [SUUtility errorWithCode:102];
    v25 = *(*(a1 + 48) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot cancel: key is unknown"];
    SULogInfo(@"[DDM] %s: %@", v27, v28, v29, v30, v31, v32, v33, "[SUDDMManager cancelDDMDeclarationForKey:outError:]_block_invoke");
  }
}

uint64_t __52__SUDDMManager_cancelDDMDeclarationForKey_outError___block_invoke_2(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);

  return [v2 _evaluateDeclarationsWithNewDeclaration:0];
}

- (id)allDeclarations
{
  dispatch_assert_queue_not_V2(self->_workQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  workQueue = self->_workQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SUDDMManager_allDeclarations__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __31__SUDDMManager_allDeclarations__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) allDeclarationsIncludingInvalid];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)scanRequestDidFinishForOptions:(id)a3 results:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Scan failed with error %@", a5];
    v22 = LABEL_7:;
    SULogInfo(@"[DDM] %s: %@", v13, v14, v15, v16, v17, v18, v19, "[SUDDMManager scanRequestDidFinishForOptions:results:error:]");

    goto LABEL_8;
  }

  v10 = [v8 clientName];
  if ([v10 isEqualToString:@"com.apple.SoftwareUpdateServices.DDM"])
  {

LABEL_6:
    [MEMORY[0x277CCACA8] stringWithFormat:@"Scan triggered by ddm, nothing to do here", v21];
    goto LABEL_7;
  }

  v11 = [v8 identifier];
  v12 = [v11 isEqualToString:@"com.apple.SoftwareUpdateServices.DDM"];

  if (v12)
  {
    goto LABEL_6;
  }

  if (v9)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SUDDMManager_scanRequestDidFinishForOptions_results_error___block_invoke;
    block[3] = &unk_279CAA7C0;
    block[4] = self;
    v24 = v9;
    dispatch_async(workQueue, block);
  }

LABEL_8:
}

uint64_t __61__SUDDMManager_scanRequestDidFinishForOptions_results_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleScanResults:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = v2[9];

  return [v2 _notifyUI:v3];
}

- (void)getDescriptorWithCallback:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUDDMManager_getDescriptorWithCallback___block_invoke;
  v7[3] = &unk_279CAAF08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

uint64_t __42__SUDDMManager_getDescriptorWithCallback___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 40));
  }

  return result;
}

- (id)activeDDMDeclarationEnfrocedSU
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  dispatch_assert_queue_not_V2(self->_workQueue);
  workQueue = self->_workQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SUDDMManager_activeDDMDeclarationEnfrocedSU__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)getActiveDDMDeclarationEnforcedSUWithResponse:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SUDDMManager_getActiveDDMDeclarationEnforcedSUWithResponse___block_invoke;
  v7[3] = &unk_279CAAF08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

uint64_t __62__SUDDMManager_getActiveDDMDeclarationEnforcedSUWithResponse___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 72), 0);
  }

  return result;
}

- (void)downloadDidStart:(id)a3
{
  v4 = a3;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"download did start: %@", v4];
  SULogInfo(@"[DDM] %s: %@", v5, v6, v7, v8, v9, v10, v11, "[SUDDMManager downloadDidStart:]");

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUDDMManager_downloadDidStart___block_invoke;
  block[3] = &unk_279CAA7C0;
  block[4] = self;
  v16 = v4;
  v13 = v4;
  dispatch_async(workQueue, block);
}

uint64_t __33__SUDDMManager_downloadDidStart___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelScheduledDownloadRetryForReason:@"download did start"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[5];

  return [v2 _handleExistingDownload:v3 targetUpdate:v4];
}

- (void)downloadDidFail:(id)a3 withError:(id)a4
{
  v6 = a3;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"download did fail: %@, error: %@", v6, a4];
  SULogInfo(@"[DDM] %s: %@", v7, v8, v9, v10, v11, v12, v13, "[SUDDMManager downloadDidFail:withError:]");

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUDDMManager_downloadDidFail_withError___block_invoke;
  block[3] = &unk_279CAA7C0;
  block[4] = self;
  v18 = v6;
  v15 = v6;
  dispatch_async(workQueue, block);
}

void __42__SUDDMManager_downloadDidFail_withError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelScheduledDownloadRetryForReason:@"download did fail"];
  v2 = [*(a1 + 40) descriptor];
  v3 = [v2 isEqual:*(*(a1 + 32) + 40)];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _scheduleDownloadRetryForReason:@"download failed"];
  }
}

- (void)downloadDidFinish:(id)a3 withInstallPolicy:(id)a4
{
  v6 = a3;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"download did finish: %@, install policy: %@", v6, a4];
  SULogInfo(@"[DDM] %s: %@", v7, v8, v9, v10, v11, v12, v13, "[SUDDMManager downloadDidFinish:withInstallPolicy:]");

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUDDMManager_downloadDidFinish_withInstallPolicy___block_invoke;
  block[3] = &unk_279CAA7C0;
  block[4] = self;
  v18 = v6;
  v15 = v6;
  dispatch_async(workQueue, block);
}

uint64_t __52__SUDDMManager_downloadDidFinish_withInstallPolicy___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelScheduledDownloadRetryForReason:@"download did finish"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[5];

  return [v2 _handleExistingDownload:v3 targetUpdate:v4];
}

- (void)downloadWasInvalidated:(id)a3
{
  v4 = a3;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"download was killed: %@", v4];
  SULogInfo(@"[DDM] %s: %@", v5, v6, v7, v8, v9, v10, v11, "[SUDDMManager downloadWasInvalidated:]");

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SUDDMManager_downloadWasInvalidated___block_invoke;
  block[3] = &unk_279CAA7C0;
  v16 = v4;
  v17 = self;
  v13 = v4;
  dispatch_async(workQueue, block);
}

void __39__SUDDMManager_downloadWasInvalidated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) descriptor];
  v3 = [v2 isEqual:*(*(a1 + 40) + 40)];

  if (v3)
  {
    [*(a1 + 40) _cancelScheduledDownloadRetryForReason:@"download was killed"];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Our download was killed it's time to re-evaluate the declarations"];;
    SULogInfo(@"[DDM] %s: %@", v4, v5, v6, v7, v8, v9, v10, "[SUDDMManager downloadWasInvalidated:]_block_invoke");

    v11 = *(a1 + 40);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    v13 = *(a1 + 40);

    [v13 _evaluateDeclarationsWithNewDeclaration:0];
  }
}

- (void)installDidFinish:(id)a3
{
  v4 = a3;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"update was successfully installed: %@", v4];
  SULogInfo(@"[DDM] %s: %@", v5, v6, v7, v8, v9, v10, v11, "[SUDDMManager installDidFinish:]");

  dispatch_assert_queue_not_V2(self->_workQueue);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUDDMManager_installDidFinish___block_invoke;
  block[3] = &unk_279CAA7C0;
  v16 = v4;
  v17 = self;
  v13 = v4;
  dispatch_sync(workQueue, block);
}

void __33__SUDDMManager_installDidFinish___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 40)])
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"The enforced update successfully finished invalidating the declaration ..."];;
    SULogInfo(@"[DDM] %s: %@", v3, v4, v5, v6, v7, v8, v9, "[SUDDMManager installDidFinish:]_block_invoke");

    v10 = *(a1 + 40);
    v11 = *(v10 + 48);
    v12 = [*(v10 + 72) declarationKey];
    [v11 invalidateDeclarationForKey:v12];

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Declaration invalidated!"];
    SULogInfo(@"[DDM] %s: %@", v13, v14, v15, v16, v17, v18, v19, "[SUDDMManager installDidFinish:]_block_invoke");
  }
}

- (void)timeFiredForScheduler:(id)a3 withOptions:(id)a4 replyBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SUDDMManager_timeFiredForScheduler_withOptions_replyBlock___block_invoke;
  block[3] = &unk_279CAA8F8;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(workQueue, block);
}

void __61__SUDDMManager_timeFiredForScheduler_withOptions_replyBlock___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) safeStringForKey:@"com.apple.sus.ddm"];
  if ([@"com.apple.sus.ddm.evaluate" isEqualToString:?])
  {
    [*(a1 + 40) _evaluateDeclarationsWithNewDeclaration:0];
  }

  else if ([@"com.apple.sus.ddm.download" isEqualToString:v3])
  {
    [*(a1 + 40) _initiateDownloadWithDescriptor:*(*(a1 + 40) + 40)];
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (BOOL)setDDMGlobalSettings:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  dispatch_assert_queue_not_V2(self->_gsWorkQueue);
  gsWorkQueue = self->_gsWorkQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__SUDDMManager_setDDMGlobalSettings_outError___block_invoke;
  v11[3] = &unk_279CAAF30;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v14 = &v22;
  v15 = &v16;
  dispatch_sync(gsWorkQueue, v11);
  if (a4)
  {
    *a4 = v17[5];
  }

  v9 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __46__SUDDMManager_setDDMGlobalSettings_outError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v3 + 48);
  if (v2)
  {
    v5 = [v2 dictionaryRepresentation];
    v6 = *(*(a1 + 56) + 8);
    obj = *(v6 + 40);
    v7 = [v4 addGlobalSettingsDeclaration:v5 returningError:&obj];
    objc_storeStrong((v6 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v7;
  }

  else
  {
    [*(v3 + 48) removeGlobalSettingsDeclaration];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to set global settings from %@ to %@, error: %@", *(*(a1 + 40) + 80), *(a1 + 32), *(*(*(a1 + 56) + 8) + 40)];
    SULogError(@"[DDM] %s: %@", v20, v21, v22, v23, v24, v25, v26, "[SUDDMManager setDDMGlobalSettings:outError:]_block_invoke");
    goto LABEL_21;
  }

  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Successfully set global settings from %@ to %@", *(*(a1 + 40) + 80), *(a1 + 32)];
  SULogInfo(@"[DDM] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUDDMManager setDDMGlobalSettings:outError:]_block_invoke");

  objc_storeStrong((*(a1 + 40) + 80), *(a1 + 32));
  v15 = +[SUPreferences sharedInstance];
  v16 = *(*(a1 + 40) + 80);
  if (v16)
  {
    v17 = [v16 automaticallyDownload];
    v18 = [SUDDMManager _NSNumberToTriState:v17];

    if (v18 == 1)
    {
      v19 = 1;
    }

    else
    {
      if (v18)
      {
        goto LABEL_12;
      }

      v19 = 0;
    }

    [v15 enableAutomaticDownload:v19];
LABEL_12:
    v27 = [*(*(a1 + 40) + 80) automaticallyInstallOSUpdates];
    v28 = [SUDDMManager _NSNumberToTriState:v27];

    if (v28 == 1)
    {
      v29 = 1;
    }

    else
    {
      if (v28)
      {
        goto LABEL_17;
      }

      v29 = 0;
    }

    [v15 enableAutomaticUpdateV2:v29];
LABEL_17:
    v30 = [*(*(a1 + 40) + 80) automaticallyInstallSystemAndSecurityUpdates];
    v31 = [SUDDMManager _NSNumberToTriState:v30];

    if (v31 <= 1)
    {
      [v15 enableAutoInstallSystemAndDataFiles:v31];
      [v15 enableAutoInstallSecurityResponse:v31];
    }
  }

  v32 = *(*(a1 + 40) + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 40) + 32) sendDDMGlobalSettingsToUI:*(*(a1 + 40) + 80)];
  }

LABEL_21:
}

- (id)getDDMGlobalSettingsWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  dispatch_assert_queue_not_V2(self->_gsWorkQueue);
  gsWorkQueue = self->_gsWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUDDMManager_getDDMGlobalSettingsWithError___block_invoke;
  block[3] = &unk_279CAA858;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(gsWorkQueue, block);
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"current global settings = %@", v17[5]];
  SULogDebug(@"[DDM] %s: %@", v5, v6, v7, v8, v9, v10, v11, "[SUDDMManager getDDMGlobalSettingsWithError:]");

  v12 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v12;
}

- (BOOL)enableGlobalNotifications
{
  v2 = self;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  dispatch_assert_queue_not_V2(self->_gsWorkQueue);
  gsWorkQueue = v2->_gsWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SUDDMManager_enableGlobalNotifications__block_invoke;
  block[3] = &unk_279CAA948;
  block[4] = v2;
  block[5] = &v14;
  dispatch_sync(gsWorkQueue, block);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"enableGlobalNotifications: %d", *(v15 + 24)];
  SULogDebug(@"[DDM] %s: %@", v4, v5, v6, v7, v8, v9, v10, "[SUDDMManager enableGlobalNotifications]");

  LOBYTE(v2) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v2;
}

void __41__SUDDMManager_enableGlobalNotifications__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) enableGlobalNotifications];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 80) enableGlobalNotifications];
    *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLValue];
  }
}

- (BOOL)enableRapidSecurityResponse
{
  v2 = self;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  dispatch_assert_queue_not_V2(self->_gsWorkQueue);
  gsWorkQueue = v2->_gsWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUDDMManager_enableRapidSecurityResponse__block_invoke;
  block[3] = &unk_279CAA948;
  block[4] = v2;
  block[5] = &v14;
  dispatch_sync(gsWorkQueue, block);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"enableRapidSecurityResponse: %d", *(v15 + 24)];
  SULogDebug(@"[DDM] %s: %@", v4, v5, v6, v7, v8, v9, v10, "[SUDDMManager enableRapidSecurityResponse]");

  LOBYTE(v2) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v2;
}

void __43__SUDDMManager_enableRapidSecurityResponse__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) enableRapidSecurityResponse];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 80) enableRapidSecurityResponse];
    *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLValue];
  }
}

- (BOOL)enableRapidSecurityResponseRollback
{
  v2 = self;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  dispatch_assert_queue_not_V2(self->_gsWorkQueue);
  gsWorkQueue = v2->_gsWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUDDMManager_enableRapidSecurityResponseRollback__block_invoke;
  block[3] = &unk_279CAA948;
  block[4] = v2;
  block[5] = &v14;
  dispatch_sync(gsWorkQueue, block);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"enableRapidSecurityResponseRollback: %d", *(v15 + 24)];
  SULogDebug(@"[DDM] %s: %@", v4, v5, v6, v7, v8, v9, v10, "[SUDDMManager enableRapidSecurityResponseRollback]");

  LOBYTE(v2) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v2;
}

void __51__SUDDMManager_enableRapidSecurityResponseRollback__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) enableRapidSecurityResponseRollback];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 80) enableRapidSecurityResponseRollback];
    *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLValue];
  }
}

- (unint64_t)updateDeferralPeriodDays
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  dispatch_assert_queue_not_V2(self->_gsWorkQueue);
  gsWorkQueue = self->_gsWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SUDDMManager_updateDeferralPeriodDays__block_invoke;
  block[3] = &unk_279CAA948;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(gsWorkQueue, block);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"updateDeferralPeriod: %lu", v16[3]];
  SULogDebug(@"[DDM] %s: %@", v4, v5, v6, v7, v8, v9, v10, "[SUDDMManager updateDeferralPeriodDays]");

  v11 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v11;
}

void __40__SUDDMManager_updateDeferralPeriodDays__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) combinedUpdatesDeferralPeriod];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 80) combinedUpdatesDeferralPeriod];
    *(*(*(a1 + 40) + 8) + 24) = [v3 unsignedIntegerValue];
  }
}

+ (int64_t)_NSNumberToTriState:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 intValue] == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2 * ([v4 intValue] != 0);
    }
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (int64_t)alwaysEnableAutoDownload
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 2;
  dispatch_assert_queue_not_V2(self->_gsWorkQueue);
  gsWorkQueue = self->_gsWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SUDDMManager_alwaysEnableAutoDownload__block_invoke;
  block[3] = &unk_279CAA948;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(gsWorkQueue, block);
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277D64400] stringFromTriState:v18[3]];
  v15 = [v4 stringWithFormat:@"alwaysEnableAutoDownload: %@", v5];
  SULogDebug(@"[DDM] %s: %@", v6, v7, v8, v9, v10, v11, v12, "[SUDDMManager alwaysEnableAutoDownload]");

  v13 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v13;
}

void __40__SUDDMManager_alwaysEnableAutoDownload__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    v3 = [v2 automaticallyDownload];
    *(*(*(a1 + 40) + 8) + 24) = [SUDDMManager _NSNumberToTriState:v3];
  }
}

- (int64_t)alwaysEnableAutoInstallOSUpdates
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 2;
  dispatch_assert_queue_not_V2(self->_gsWorkQueue);
  gsWorkQueue = self->_gsWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUDDMManager_alwaysEnableAutoInstallOSUpdates__block_invoke;
  block[3] = &unk_279CAA948;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(gsWorkQueue, block);
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277D64400] stringFromTriState:v18[3]];
  v15 = [v4 stringWithFormat:@"alwaysEnableAutoInstallOSUpdates: %@", v5];
  SULogDebug(@"[DDM] %s: %@", v6, v7, v8, v9, v10, v11, v12, "[SUDDMManager alwaysEnableAutoInstallOSUpdates]");

  v13 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v13;
}

void __48__SUDDMManager_alwaysEnableAutoInstallOSUpdates__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    v3 = [v2 automaticallyInstallOSUpdates];
    *(*(*(a1 + 40) + 8) + 24) = [SUDDMManager _NSNumberToTriState:v3];
  }
}

- (int64_t)alwaysEnableAutoInstallRapidSecurityResponse
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 2;
  dispatch_assert_queue_not_V2(self->_gsWorkQueue);
  gsWorkQueue = self->_gsWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SUDDMManager_alwaysEnableAutoInstallRapidSecurityResponse__block_invoke;
  block[3] = &unk_279CAA948;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(gsWorkQueue, block);
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277D64400] stringFromTriState:v18[3]];
  v15 = [v4 stringWithFormat:@"alwaysEnableAutoInstallRapidSecurityResponse: %@", v5];
  SULogDebug(@"[DDM] %s: %@", v6, v7, v8, v9, v10, v11, v12, "[SUDDMManager alwaysEnableAutoInstallRapidSecurityResponse]");

  v13 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v13;
}

void __60__SUDDMManager_alwaysEnableAutoInstallRapidSecurityResponse__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    v3 = [v2 automaticallyInstallSystemAndSecurityUpdates];
    *(*(*(a1 + 40) + 8) + 24) = [SUDDMManager _NSNumberToTriState:v3];
  }
}

- (unint64_t)recommendedCadence
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  dispatch_assert_queue_not_V2(self->_gsWorkQueue);
  gsWorkQueue = self->_gsWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SUDDMManager_recommendedCadence__block_invoke;
  block[3] = &unk_279CAA948;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(gsWorkQueue, block);
  v4 = MEMORY[0x277CCACA8];
  v5 = SUStringFromMDMSUPath(v18[3]);
  v15 = [v4 stringWithFormat:@"recommendedCadence: %@", v5];
  SULogDebug(@"[DDM] %s: %@", v6, v7, v8, v9, v10, v11, v12, "[SUDDMManager recommendedCadence]");

  v13 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v13;
}

void __34__SUDDMManager_recommendedCadence__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) recommendationCadence];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 80) recommendationCadence];
    v4 = [v3 intValue];

    if (v4)
    {
      v5 = [*(*(a1 + 32) + 80) recommendationCadence];
      v6 = [v5 intValue];

      if (v6 == 1)
      {
        v7 = 1;
      }

      else
      {
        v8 = [*(*(a1 + 32) + 80) recommendationCadence];
        v9 = [v8 intValue];

        if (v9 != 2)
        {
          return;
        }

        v7 = 2;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
}

@end