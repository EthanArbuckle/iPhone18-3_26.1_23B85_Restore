@interface SUSUISoftwareUpdateManager
+ (double)timeRemainingForProgress:(id)progress isValid:(BOOL *)valid;
- (BOOL)_SUDownloadPhaseIsQueued:(id)queued;
- (BOOL)automaticDownloadEnabled:(BOOL *)enabled;
- (BOOL)automaticInstallSystemDataFilesStatusEnabled:(BOOL *)enabled;
- (BOOL)automaticUpdateEnabled:(BOOL *)enabled;
- (BOOL)automaticUpdatePreviousUserSpecifiedStatus:(BOOL *)status;
- (BOOL)canCancelAutoInstall;
- (BOOL)clearingSpaceForDownload;
- (BOOL)enableUpdateButtonForError:(id)error;
- (BOOL)errorsAreEqual:(id)equal error2:(id)error2 oldDescription:(id)description;
- (BOOL)previousUserSpecifiedSecurityResponseStatus:(BOOL *)status;
- (BOOL)readyToDownload;
- (BOOL)securityResponseStatus:(BOOL *)status;
- (BOOL)shouldIgnoreUpdateError:(id)error;
- (BOOL)shouldSetStateForInstallError:(id)error outError:(id *)outError outState:(int *)state;
- (BOOL)shouldShowPreferredUpdateAsAlternate;
- (NSString)actionString;
- (NSString)prettyUpdateName;
- (NSString)progressString;
- (SUDescriptor)update;
- (SUDownload)download;
- (SUSUISoftwareUpdateManager)initWithDelegate:(id)delegate hostController:(id)controller;
- (SUSUISoftwareUpdateManagerDelegate)delegate;
- (UIViewController)hostController;
- (id)actionStringForBuddy;
- (id)betaUpdatesAppleID;
- (id)buildVersionIncludingRSR;
- (id)humanReadableDescriptionForError:(id)error;
- (id)humanReadableDescriptionForError:(id)error enableButton:(BOOL *)button;
- (id)humanReadableDescriptionForError:(id)error enableButton:(BOOL *)button showAsButtonFooter:(BOOL *)footer;
- (id)humanReadableTitleForError:(id)error;
- (id)prettyNameForUpdate:(id)update;
- (id)productVersionWithExtra;
- (id)statusStringForBuddy;
- (id)timeRemainingStringForProgress:(id)progress;
- (void)_alertForDownloadConstraintsWithCompletion:(id)completion;
- (void)_batteryLevelChanged:(id)changed;
- (void)_batteryStateChanged:(id)changed;
- (void)_didBecomeActive:(id)active;
- (void)_notifyScanFailed:(id)failed;
- (void)_reallyDownloadAndInstall:(unint64_t)install update:(id)update AcceptingCellularFees:(int)fees completion:(id)completion;
- (void)_reallyDownloadAndInstallDidFinishWithResult:(BOOL)result andError:(id)error forUpdate:(id)update withDownload:(id)download andDownloadError:(id)downloadError usingCompletionHandler:(id)handler;
- (void)_reallyResumeDownloadAcceptingCellularFees:(int)fees;
- (void)_requestLayoutSubviews;
- (void)_scanForBetaProgramsWithSeedingDevice:(id)device;
- (void)_setState:(int)state preferredUpdateError:(id)error alternateUpdateError:(id)updateError;
- (void)_updateDownloadProgressWithDownload:(id)download stateFromDownload:(int *)fromDownload;
- (void)assignScanResults:(id)results;
- (void)cancelOrPurgeIfNecessaryWithUpdate:(id)update completion:(id)completion;
- (void)checkAndSetReadyToInstall;
- (void)checkAutoInstall;
- (void)clearPastScanResults;
- (void)dealloc;
- (void)enrollInBetaUpdatesForProgram:(id)program completion:(id)completion;
- (void)handleDownloadError:(id)error;
- (void)handleRollbackApplied;
- (void)handleScanError:(id)error;
- (void)hideAlternateUpdate;
- (void)hidePreferredUpdate;
- (void)manager:(id)manager autoUpdateScheduleStateChanged:(BOOL)changed autoInstallOperation:(id)operation;
- (void)manager:(id)manager clearingSpaceForDownload:(id)download clearingSpace:(BOOL)space;
- (void)manager:(id)manager downloadDidFail:(id)fail withError:(id)error;
- (void)manager:(id)manager downloadDidFinish:(id)finish withInstallPolicy:(id)policy;
- (void)manager:(id)manager downloadDidStart:(id)start;
- (void)manager:(id)manager downloadProgressDidChange:(id)change;
- (void)manager:(id)manager downloadWasInvalidatedForNewUpdatesAvailable:(id)available;
- (void)manager:(id)manager handleDDMDeclaration:(id)declaration;
- (void)manager:(id)manager inUserInteraction:(id)interaction;
- (void)manager:(id)manager installDidFail:(id)fail withError:(id)error;
- (void)manager:(id)manager installDidFinish:(id)finish;
- (void)manager:(id)manager installDidStart:(id)start;
- (void)manager:(id)manager rollingBackStateChanged:(BOOL)changed rollback:(id)rollback;
- (void)manager:(id)manager scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error;
- (void)manager:(id)manager scanRequestDidStartForOptions:(id)options;
- (void)networkChangedFromNetworkType:(int)type toNetworkType:(int)networkType;
- (void)presentTermsIfNecessaryCompletion:(id)completion;
- (void)presentTermsIfNecessaryForUpdate:(id)update completion:(id)completion;
- (void)promptForDevicePasscodeForDescriptor:(id)descriptor unattendedInstall:(BOOL)install completion:(id)completion;
- (void)purgeCurrentDownloadWithHandler:(id)handler;
- (void)refreshErrors:(id)errors alternateError:(id)error completion:(id)completion;
- (void)refreshState;
- (void)rescanForUpdatesInBackgroundWithOptions:(id)options andCompletionHandler:(id)handler;
- (void)resumeDownload;
- (void)revealHiddenAlteranteUpdate;
- (void)revealHiddenPreferredUpdate;
- (void)runEntryScan:(BOOL)scan;
- (void)scanFinishedWithUpdates:(id)updates options:(id)options andError:(id)error;
- (void)scanForBetaPrograms;
- (void)scanForUpdateCompletion:(id)completion;
- (void)scanForUpdatesCompletion:(id)completion;
- (void)scanForUpdatesWithOptions:(id)options andCompletion:(id)completion;
- (void)setAlternateUpdateError:(id)error;
- (void)setAutoInstall:(id)install;
- (void)setClearingSpaceForDownload:(BOOL)download;
- (void)setDownload:(id)download;
- (void)setPreferredUpdateError:(id)error;
- (void)setState:(int)state withDownloadUpdateError:(id)error;
- (void)startDownloadAndInstall:(unint64_t)install update:(id)update withHandler:(id)handler;
- (void)startDownloadAndInstall:(unint64_t)install withHandler:(id)handler;
- (void)startInstallWithHandler:(id)handler;
- (void)startRollbackWithOptions:(id)options withHandler:(id)handler;
- (void)unenrollBetaUpdatesWithCompletion:(id)completion;
- (void)updateStateFromDownload:(id)download;
- (void)upgradeDownloadToUserInitiated;
@end

@implementation SUSUISoftwareUpdateManager

- (SUSUISoftwareUpdateManager)initWithDelegate:(id)delegate hostController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v36 = 0;
  objc_storeStrong(&v36, controller);
  v4 = selfCopy;
  selfCopy = 0;
  v35.receiver = v4;
  v35.super_class = SUSUISoftwareUpdateManager;
  selfCopy = [(SUSUISoftwareUpdateManager *)&v35 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = dispatch_queue_create("com.apple.softwareupdatesettings._concurrentqueue", 0);
    concurrentQueue = selfCopy->_concurrentQueue;
    selfCopy->_concurrentQueue = v5;
    MEMORY[0x277D82BD8](concurrentQueue);
    v24 = +[SUSUIServiceManager sharedInstance];
    v34 = [(SUSUIServiceManager *)v24 classForService:objc_opt_class()];
    MEMORY[0x277D82BD8](v24);
    v27 = [v34 alloc];
    v26 = selfCopy;
    v25 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    v28 = v25;
    v8 = [v27 initWithDelegate:v26 completionQueue:?];
    suClient = selfCopy->_suClient;
    selfCopy->_suClient = v8;
    MEMORY[0x277D82BD8](suClient);
    MEMORY[0x277D82BD8](v28);
    suManagerClient = [(SUSUISoftwareUpdateClientManager *)selfCopy->_suClient suManagerClient];
    SUManager = selfCopy->_SUManager;
    selfCopy->_SUManager = suManagerClient;
    MEMORY[0x277D82BD8](SUManager);
    objc_storeWeak(&selfCopy->_delegate, location[0]);
    objc_storeWeak(&selfCopy->_hostController, v36);
    selfCopy->_clearingSpaceForDownload = 0;
    sharedInstance = [getSUNetworkMonitorClass_0() sharedInstance];
    currentNetworkType = [sharedInstance currentNetworkType];
    selfCopy->_networkType = currentNetworkType;
    [sharedInstance addObserver:selfCopy];
    PSSetBatteryMonitoringEnabled();
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    batteryState = [currentDevice batteryState];
    MEMORY[0x277D82BD8](currentDevice);
    v31 = 1;
    if (batteryState != 2)
    {
      v31 = batteryState == 3;
    }

    selfCopy->_connectedToPowerSource = v31;
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    [currentDevice2 batteryLevel];
    selfCopy->_batteryLevel = v13;
    MEMORY[0x277D82BD8](currentDevice2);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:selfCopy selector:sel__batteryStateChanged_ name:*MEMORY[0x277D76870] object:?];
    MEMORY[0x277D82BD8](defaultCenter);
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:selfCopy selector:sel__batteryLevelChanged_ name:*MEMORY[0x277D76868] object:0];
    MEMORY[0x277D82BD8](defaultCenter2);
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:selfCopy selector:sel__didBecomeActive_ name:*MEMORY[0x277D76648] object:0];
    MEMORY[0x277D82BD8](defaultCenter3);
    v14 = SBSSpringBoardServerPort();
    MEMORY[0x26D66A030](v14, &selfCopy->_originalCellFlag, &selfCopy->_originalWifiFlag);
    v15 = SBSSpringBoardServerPort();
    MEMORY[0x26D66A050](v15, 1);
    selfCopy->_previousTimeRemaining = -1.0;
    selfCopy->_hidingPreferredUpdate = 0;
    selfCopy->_hidingAlternateUpdate = 0;
    v16 = objc_alloc_init(SUSUIUpdateAgreementManager);
    updateAgreementManager = selfCopy->_updateAgreementManager;
    selfCopy->_updateAgreementManager = v16;
    MEMORY[0x277D82BD8](updateAgreementManager);
    objc_storeStrong(&selfCopy->_enrolledBetaProgram, 0);
    objc_storeStrong(&selfCopy->_currentSeedingDevice, 0);
    objc_storeStrong(&sharedInstance, 0);
  }

  v19 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v19;
}

- (void)dealloc
{
  selfCopy = self;
  v9 = a2;
  v2 = SBSSpringBoardServerPort();
  MEMORY[0x26D66A050](v2, selfCopy->_originalCellFlag, selfCopy->_originalWifiFlag);
  sharedInstance = [getSUNetworkMonitorClass_0() sharedInstance];
  [sharedInstance removeObserver:selfCopy];
  MEMORY[0x277D82BD8](sharedInstance);
  PSSetBatteryMonitoringEnabled();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy];
  MEMORY[0x277D82BD8](defaultCenter);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_hostController);
  presentedViewController = [WeakRetained presentedViewController];
  MEMORY[0x277D82BD8](presentedViewController);
  MEMORY[0x277D82BD8](WeakRetained);
  if (presentedViewController)
  {
    v3 = objc_loadWeakRetained(&selfCopy->_hostController);
    [v3 dismissViewControllerAnimated:0 completion:0];
    MEMORY[0x277D82BD8](v3);
  }

  v8.receiver = selfCopy;
  v8.super_class = SUSUISoftwareUpdateManager;
  [(SUSUISoftwareUpdateManager *)&v8 dealloc];
}

- (void)setPreferredUpdateError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  objc_storeStrong(&selfCopy->_preferredUpdateError, location[0]);
  v3 = [(SUSUISoftwareUpdateManager *)selfCopy humanReadableDescriptionForError:location[0] enableButton:0];
  [(SUSUISoftwareUpdateManager *)selfCopy setPreferredUpdateErrorDescription:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)setAlternateUpdateError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  objc_storeStrong(&selfCopy->_alternateUpdateError, location[0]);
  v3 = [(SUSUISoftwareUpdateManager *)selfCopy humanReadableDescriptionForError:location[0] enableButton:0];
  [(SUSUISoftwareUpdateManager *)selfCopy setAlternateUpdateErrorDescription:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

+ (double)timeRemainingForProgress:(id)progress isValid:(BOOL *)valid
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, progress);
  if (valid)
  {
    *valid = 0;
  }

  if (!location[0])
  {
    goto LABEL_13;
  }

  [location[0] timeRemaining];
  v7 = v4;
  if (v4 < 0.0)
  {
    goto LABEL_13;
  }

  if (v4 > 0.0 && v4 < 1.0)
  {
    v7 = 1.0;
  }

  if (v7 < 0x93A80uLL && v7 > 0.0)
  {
    if (valid)
    {
      *valid = 1;
    }

    v9 = v7;
  }

  else
  {
LABEL_13:
    v9 = -1.0;
  }

  objc_storeStrong(location, 0);
  return v9;
}

- (id)timeRemainingStringForProgress:(id)progress
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, progress);
  v39 = 0;
  v17 = 0;
  if (location[0])
  {
    phase = [location[0] phase];
    v39 = 1;
    v17 = 0;
    if ([phase isEqualToString:*MEMORY[0x277D64A00]])
    {
      [location[0] percentComplete];
      v17 = v3 >= 1.0;
    }
  }

  if (v39)
  {
    MEMORY[0x277D82BD8](phase);
  }

  if (v17)
  {
    download = [(SUSUISoftwareUpdateManager *)selfCopy download];
    descriptor = [(SUDownload *)download descriptor];
    v37 = 0;
    v35 = 0;
    v33 = 0;
    v31 = 0;
    if (([(SUDescriptor *)descriptor isSplatOnly]& 1) != 0)
    {
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v37 = 1;
      v36 = [v38 localizedStringForKey:@"PREPARING_RSR" value:&stru_287B79370 table:@"Software Update"];
      v35 = 1;
      v4 = MEMORY[0x277D82BE0](v36);
    }

    else
    {
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v33 = 1;
      v32 = [v34 localizedStringForKey:@"PREPARING_UPDATE" value:&stru_287B79370 table:@"Software Update"];
      v31 = 1;
      v4 = MEMORY[0x277D82BE0](v32);
    }

    v43 = v4;
    if (v31)
    {
      MEMORY[0x277D82BD8](v32);
    }

    if (v33)
    {
      MEMORY[0x277D82BD8](v34);
    }

    if (v35)
    {
      MEMORY[0x277D82BD8](v36);
    }

    if (v37)
    {
      MEMORY[0x277D82BD8](v38);
    }

    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](download);
    v30 = 1;
  }

  else
  {
    download2 = [(SUSUISoftwareUpdateManager *)selfCopy download];
    descriptor2 = [(SUDownload *)download2 descriptor];
    v27 = 0;
    v25 = 0;
    v23 = 0;
    v21 = 0;
    if (([(SUDescriptor *)descriptor2 isSplatOnly]& 1) != 0)
    {
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = 1;
      v26 = [v28 localizedStringForKey:@"RSR_REQUESTED" value:&stru_287B79370 table:@"Software Update"];
      v25 = 1;
      v5 = MEMORY[0x277D82BE0](v26);
    }

    else
    {
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = 1;
      v22 = [v24 localizedStringForKey:@"UPDATE_REQUESTED" value:&stru_287B79370 table:@"Software Update"];
      v21 = 1;
      v5 = MEMORY[0x277D82BE0](v22);
    }

    v29 = v5;
    if (v21)
    {
      MEMORY[0x277D82BD8](v22);
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](v24);
    }

    if (v25)
    {
      MEMORY[0x277D82BD8](v26);
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](v28);
    }

    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](download2);
    v20 = 0;
    [SUSUISoftwareUpdateManager timeRemainingForProgress:location[0] isValid:&v20];
    v19 = v6;
    if (v20)
    {
      v18 = 0;
      v7 = objc_alloc_init(MEMORY[0x277CCA958]);
      v8 = v18;
      v18 = v7;
      MEMORY[0x277D82BD8](v8);
      [v18 setUnitsStyle:3];
      [v18 setAllowedUnits:240];
      [v18 setMaximumUnitCount:1];
      [v18 setIncludesApproximationPhrase:1];
      [v18 setIncludesTimeRemainingPhrase:1];
      [v18 setFormattingContext:2];
      v9 = [v18 stringFromTimeInterval:v19];
      v10 = v29;
      v29 = v9;
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v18, 0);
    }

    v43 = MEMORY[0x277D82BE0](v29);
    v30 = 1;
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(location, 0);
  v11 = v43;

  return v11;
}

- (id)statusStringForBuddy
{
  selfCopy = self;
  v60 = a2;
  state = self->_state;
  download = [(SUSUISoftwareUpdateManager *)self download];
  progress = [(SUDownload *)download progress];
  MEMORY[0x277D82BD8](download);
  phase = [progress phase];
  [progress percentComplete];
  v56 = v2;
  download2 = [(SUSUISoftwareUpdateManager *)selfCopy download];
  descriptor = [(SUDownload *)download2 descriptor];
  isSplatOnly = [(SUDescriptor *)descriptor isSplatOnly];
  MEMORY[0x277D82BD8](descriptor);
  MEMORY[0x277D82BD8](download2);
  v55 = isSplatOnly;
  location = [(SUSUISoftwareUpdateManager *)selfCopy preferredUpdateError];
  if (!location || [(SUSUISoftwareUpdateManager *)selfCopy shouldIgnoreUpdateError:location])
  {
    if (state != 6 && state != 9 && state != 8)
    {
      if (state != 11 && state != 10)
      {
        if (state != 13 && state != 12)
        {
          if (state == 14)
          {
            v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v62 = [v10 localizedStringForKey:@"PAUSED" value:&stru_287B79370 table:@"Software Update"];
            MEMORY[0x277D82BD8](v10);
          }

          else
          {
            v62 = MEMORY[0x277D82BE0](&stru_287B79370);
          }
        }

        else
        {
          v11 = getkSUDownloadPhasePreparingForInstallation_1();
          v12 = [phase isEqualToString:?];
          MEMORY[0x277D82BD8](v11);
          if (v12)
          {
            v36 = 0;
            v34 = 0;
            v32 = 0;
            v30 = 0;
            if (v55)
            {
              v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v36 = 1;
              v35 = [v37 localizedStringForKey:@"PREPARING_RSR" value:&stru_287B79370 table:@"Software Update"];
              v34 = 1;
              v5 = MEMORY[0x277D82BE0](v35);
            }

            else
            {
              v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v32 = 1;
              v31 = [v33 localizedStringForKey:@"PREPARING_UPDATE" value:&stru_287B79370 table:@"Software Update"];
              v30 = 1;
              v5 = MEMORY[0x277D82BE0](v31);
            }

            v62 = v5;
            if (v30)
            {
              MEMORY[0x277D82BD8](v31);
            }

            if (v32)
            {
              MEMORY[0x277D82BD8](v33);
            }

            if (v34)
            {
              MEMORY[0x277D82BD8](v35);
            }

            if (v36)
            {
              MEMORY[0x277D82BD8](v37);
            }
          }

          else if (v56 >= 0.005)
          {
            v62 = [(SUSUISoftwareUpdateManager *)selfCopy timeRemainingStringForProgress:progress];
          }

          else
          {
            v28 = 0;
            v26 = 0;
            v24 = 0;
            v22 = 0;
            if (v55)
            {
              v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v28 = 1;
              v27 = [v29 localizedStringForKey:@"RSR_REQUESTED" value:&stru_287B79370 table:@"Software Update"];
              v26 = 1;
              v6 = MEMORY[0x277D82BE0](v27);
            }

            else
            {
              v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v24 = 1;
              v23 = [v25 localizedStringForKey:@"UPDATE_REQUESTED" value:&stru_287B79370 table:@"Software Update"];
              v22 = 1;
              v6 = MEMORY[0x277D82BE0](v23);
            }

            v62 = v6;
            if (v22)
            {
              MEMORY[0x277D82BD8](v23);
            }

            if (v24)
            {
              MEMORY[0x277D82BD8](v25);
            }

            if (v26)
            {
              MEMORY[0x277D82BD8](v27);
            }

            if (v28)
            {
              MEMORY[0x277D82BD8](v29);
            }
          }
        }
      }

      else
      {
        v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v62 = [v9 localizedStringForKey:@"DOWNLOADED" value:&stru_287B79370 table:@"Software Update"];
        MEMORY[0x277D82BD8](v9);
      }
    }

    else if ([(SUSUISoftwareUpdateManager *)selfCopy clearingSpaceForDownload])
    {
      v44 = 0;
      v42 = 0;
      v40 = 0;
      v38 = 0;
      if (v55)
      {
        v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v44 = 1;
        v4 = [v45 localizedStringForKey:@"RSR_REQUESTED" value:&stru_287B79370 table:@"Software Update"];
        v43 = v4;
        v42 = 1;
      }

      else
      {
        v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v40 = 1;
        v4 = [v41 localizedStringForKey:@"UPDATE_REQUESTED" value:&stru_287B79370 table:@"Software Update"];
        v39 = v4;
        v38 = 1;
      }

      v62 = MEMORY[0x277D82BE0](v4);
      if (v38)
      {
        MEMORY[0x277D82BD8](v39);
      }

      if (v40)
      {
        MEMORY[0x277D82BD8](v41);
      }

      if (v42)
      {
        MEMORY[0x277D82BD8](v43);
      }

      if (v44)
      {
        MEMORY[0x277D82BD8](v45);
      }
    }

    else
    {
      v13 = MEMORY[0x277CCA8E8];
      preferredUpdate = [(SUSUISoftwareUpdateManager *)selfCopy preferredUpdate];
      v62 = [v13 stringFromByteCount:-[SUDescriptor downloadSize](preferredUpdate countStyle:{"downloadSize"), 2}];
      MEMORY[0x277D82BD8](preferredUpdate);
    }
  }

  else
  {
    download3 = [(SUSUISoftwareUpdateManager *)selfCopy download];
    descriptor2 = [(SUDownload *)download3 descriptor];
    preferredUpdate2 = [(SUSUISoftwareUpdateManager *)selfCopy preferredUpdate];
    v52 = 0;
    v50 = 0;
    v48 = 0;
    v46 = 0;
    if (([(SUDescriptor *)descriptor2 isEqual:?]& 1) != 0 && state >= 0xA)
    {
      v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v52 = 1;
      v51 = [v53 localizedStringForKey:@"UNABLE_TO_INSTALL" value:&stru_287B79370 table:@"Software Update"];
      v50 = 1;
      v3 = MEMORY[0x277D82BE0](v51);
    }

    else
    {
      v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v48 = 1;
      v47 = [v49 localizedStringForKey:@"UNABLE_TO_DOWNLOAD" value:&stru_287B79370 table:@"Software Update"];
      v46 = 1;
      v3 = MEMORY[0x277D82BE0](v47);
    }

    v62 = v3;
    if (v46)
    {
      MEMORY[0x277D82BD8](v47);
    }

    if (v48)
    {
      MEMORY[0x277D82BD8](v49);
    }

    if (v50)
    {
      MEMORY[0x277D82BD8](v51);
    }

    if (v52)
    {
      MEMORY[0x277D82BD8](v53);
    }

    MEMORY[0x277D82BD8](preferredUpdate2);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](download3);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&phase, 0);
  objc_storeStrong(&progress, 0);
  v7 = v62;

  return v7;
}

- (NSString)progressString
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v5[1] = a2;
  if (PSIsRunningInAssistant())
  {
    v5[0] = [(SUSUISoftwareUpdateManager *)selfCopy statusStringForBuddy];
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v8, "[SUSUISoftwareUpdateManager progressString]", v5[0]);
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: %@", v8, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v7 = MEMORY[0x277D82BE0](v5[0]);
    objc_storeStrong(v5, 0);
  }

  else
  {
    v7 = MEMORY[0x277D82BE0](selfCopy->_progressString);
  }

  *MEMORY[0x277D85DE8];
  v2 = v7;

  return v2;
}

- (id)actionStringForBuddy
{
  state = self->_state;
  if (state != 6 && state != 9 && state != 8)
  {
    if (state != 11 && state != 10)
    {
      if (state != 13 && state != 12)
      {
        if (state == 14)
        {
          v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v9 = [v6 localizedStringForKey:@"PAUSED" value:&stru_287B79370 table:@"Software Update"];
          MEMORY[0x277D82BD8](v6);
        }

        else if (state != 16 && state != 15)
        {
          v9 = MEMORY[0x277D82BE0](&stru_287B79370);
        }

        else
        {
          v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v9 = [v3 localizedStringForKey:@"INSTALLING" value:&stru_287B79370 table:@"Software Update"];
          MEMORY[0x277D82BD8](v3);
        }
      }

      else
      {
        v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v5 localizedStringForKey:@"DOWNLOADING_IN_PROGRESS" value:&stru_287B79370 table:@"Software Update"];
        MEMORY[0x277D82BD8](v5);
      }
    }

    else
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v4 localizedStringForKey:@"INSTALL_NOW" value:&stru_287B79370 table:@"Software Update"];
      MEMORY[0x277D82BD8](v4);
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v7 localizedStringForKey:@"UPDATE_NOW" value:&stru_287B79370 table:@"Software Update"];
    MEMORY[0x277D82BD8](v7);
  }

  return v9;
}

- (NSString)actionString
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v5[1] = a2;
  if (PSIsRunningInAssistant())
  {
    v5[0] = [(SUSUISoftwareUpdateManager *)selfCopy actionStringForBuddy];
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v8, "[SUSUISoftwareUpdateManager actionString]", v5[0]);
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: %@", v8, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v7 = MEMORY[0x277D82BE0](v5[0]);
    objc_storeStrong(v5, 0);
  }

  else
  {
    v7 = MEMORY[0x277D82BE0](selfCopy->_actionString);
  }

  *MEMORY[0x277D85DE8];
  v2 = v7;

  return v2;
}

- (void)_setState:(int)state preferredUpdateError:(id)error alternateUpdateError:(id)updateError
{
  obj = updateError;
  v99 = "[SUSUISoftwareUpdateManager _setState:preferredUpdateError:alternateUpdateError:]";
  v175 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v171 = a2;
  stateCopy = state;
  location = 0;
  objc_storeStrong(&location, error);
  v168 = 0;
  objc_storeStrong(&v168, obj);
  if (selfCopy->_runningInitialScan)
  {
    oslog = _SUSUILoggingFacility();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v95 = type;
      v96 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
      v97 = MEMORY[0x277D82BE0](v96);
      v165 = v97;
      state = selfCopy->_state;
      preferredUpdate = selfCopy->_preferredUpdate;
      v163 = 0;
      if (preferredUpdate)
      {
        humanReadableUpdateName = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
        v163 = 1;
        v93 = humanReadableUpdateName;
      }

      else
      {
        v93 = @"N/A";
      }

      v90 = v93;
      v91 = selfCopy->_preferredUpdate;
      preferredUpdateError = selfCopy->_preferredUpdateError;
      alternateUpdate = selfCopy->_alternateUpdate;
      v161 = 0;
      if (alternateUpdate)
      {
        humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
        v161 = 1;
        v89 = humanReadableUpdateName2;
      }

      else
      {
        v89 = @"N/A";
      }

      v85 = v89;
      v86 = selfCopy->_alternateUpdate;
      alternateUpdateError = selfCopy->_alternateUpdateError;
      download = selfCopy->_download;
      v7 = selfCopy->_download;
      v159 = 0;
      v157 = 0;
      v155 = 0;
      if (v7 && (v160 = [(SUDownload *)selfCopy->_download descriptor], v159 = 1, v160))
      {
        descriptor = [(SUDownload *)selfCopy->_download descriptor];
        v83 = 1;
        v157 = 1;
        humanReadableUpdateName3 = [(SUDescriptor *)descriptor humanReadableUpdateName];
        v155 = 1;
        v84 = humanReadableUpdateName3;
      }

      else
      {
        v84 = @"N/A";
      }

      v80 = v84;
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      v82 = objc_loadWeakRetained(&selfCopy->_delegate);
      v153 = 0;
      v151 = 0;
      if (v82)
      {
        v154 = objc_loadWeakRetained(&selfCopy->_delegate);
        v78 = 1;
        v153 = 1;
        v8 = objc_opt_class();
        v152 = NSStringFromClass(v8);
        v151 = 1;
        v79 = v152;
      }

      else
      {
        v79 = @"N/A";
      }

      v75 = v79;
      v76 = objc_loadWeakRetained(&selfCopy->_hostController);
      v77 = objc_loadWeakRetained(&selfCopy->_hostController);
      v149 = 0;
      v147 = 0;
      if (v77)
      {
        v150 = objc_loadWeakRetained(&selfCopy->_hostController);
        v73 = 1;
        v149 = 1;
        v9 = objc_opt_class();
        v148 = NSStringFromClass(v9);
        v147 = 1;
        v74 = v148;
      }

      else
      {
        v74 = @"N/A";
      }

      v66 = v74;
      v72 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
      v67 = MEMORY[0x277D82BE0](v72);
      v146 = v67;
      v68 = selfCopy->_state;
      v71 = SUSUISoftwareUpdateStateToString(stateCopy);
      v145 = MEMORY[0x277D82BE0](v71);
      v69 = &v15;
      buf = v174;
      __os_log_helper_16_2_19_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_66_4_0_8_66_4_0(v174, v99, v97, state, v90, v91, preferredUpdateError, v85, v86, alternateUpdateError, download, v80, WeakRetained, v75, v76, v74, v67, v68, v145, stateCopy);
      _os_log_impl(&dword_26AC94000, log, v95[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nSkipping setting state due to initial scan. _state: %{public}@ (%d), new state: %{public}@ (%d)", buf, 0xB4u);
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v72);
      if (v147)
      {
        MEMORY[0x277D82BD8](v148);
      }

      if (v149)
      {
        MEMORY[0x277D82BD8](v150);
      }

      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v76);
      if (v151)
      {
        MEMORY[0x277D82BD8](v152);
      }

      if (v153)
      {
        MEMORY[0x277D82BD8](v154);
      }

      MEMORY[0x277D82BD8](v82);
      MEMORY[0x277D82BD8](WeakRetained);
      if (v155)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName3);
      }

      if (v157)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v159)
      {
        MEMORY[0x277D82BD8](v160);
      }

      if (v161)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName2);
      }

      if (v163)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName);
      }

      MEMORY[0x277D82BD8](v96);
      v65 = 0;
      objc_storeStrong(&v145, 0);
      objc_storeStrong(&v146, v65);
      objc_storeStrong(&v165, v65);
    }

    objc_storeStrong(&oslog, 0);
    v144 = 1;
  }

  else
  {
    v143 = _SUSUILoggingFacility();
    v142 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
    {
      v60 = v143;
      *v61 = v142;
      v62 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
      v63 = MEMORY[0x277D82BE0](v62);
      v141 = v63;
      v64 = selfCopy->_state;
      v10 = selfCopy->_preferredUpdate;
      v139 = 0;
      if (v10)
      {
        humanReadableUpdateName4 = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
        v139 = 1;
        v59 = humanReadableUpdateName4;
      }

      else
      {
        v59 = @"N/A";
      }

      v56 = v59;
      v57 = selfCopy->_preferredUpdate;
      v58 = selfCopy->_preferredUpdateError;
      v11 = selfCopy->_alternateUpdate;
      v137 = 0;
      if (v11)
      {
        humanReadableUpdateName5 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
        v137 = 1;
        v55 = humanReadableUpdateName5;
      }

      else
      {
        v55 = @"N/A";
      }

      v51 = v55;
      v52 = selfCopy->_alternateUpdate;
      v53 = selfCopy->_alternateUpdateError;
      v54 = selfCopy->_download;
      v12 = selfCopy->_download;
      v135 = 0;
      v133 = 0;
      v131 = 0;
      if (v12 && (v136 = [(SUDownload *)selfCopy->_download descriptor], v135 = 1, v136))
      {
        descriptor2 = [(SUDownload *)selfCopy->_download descriptor];
        v49 = 1;
        v133 = 1;
        humanReadableUpdateName6 = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
        v131 = 1;
        v50 = humanReadableUpdateName6;
      }

      else
      {
        v50 = @"N/A";
      }

      v46 = v50;
      v47 = objc_loadWeakRetained(&selfCopy->_delegate);
      v48 = objc_loadWeakRetained(&selfCopy->_delegate);
      v129 = 0;
      v127 = 0;
      if (v48)
      {
        v130 = objc_loadWeakRetained(&selfCopy->_delegate);
        v44 = 1;
        v129 = 1;
        v13 = objc_opt_class();
        v128 = NSStringFromClass(v13);
        v127 = 1;
        v45 = v128;
      }

      else
      {
        v45 = @"N/A";
      }

      v41 = v45;
      v42 = objc_loadWeakRetained(&selfCopy->_hostController);
      v43 = objc_loadWeakRetained(&selfCopy->_hostController);
      v125 = 0;
      v123 = 0;
      if (v43)
      {
        v126 = objc_loadWeakRetained(&selfCopy->_hostController);
        v39 = 1;
        v125 = 1;
        v14 = objc_opt_class();
        v124 = NSStringFromClass(v14);
        v123 = 1;
        v40 = v124;
      }

      else
      {
        v40 = @"N/A";
      }

      v32 = v40;
      v38 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
      v33 = MEMORY[0x277D82BE0](v38);
      v122 = v33;
      v34 = selfCopy->_state;
      v37 = SUSUISoftwareUpdateStateToString(stateCopy);
      v121 = MEMORY[0x277D82BE0](v37);
      v35 = &v15;
      v36 = v173;
      __os_log_helper_16_2_21_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_66_4_0_8_66_4_0_8_66_8_66(v173, v99, v63, v64, v56, v57, v58, v51, v52, v53, v54, v46, v47, v41, v42, v40, v33, v34, v121, stateCopy, location, v168);
      _os_log_impl(&dword_26AC94000, v60, v61[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nAssigning new state: %{public}@ (%d) -> %{public}@ (%d). preferredUpdateError: %{public}@, alternateUpdateError: %{public}@", v36, 0xC8u);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v38);
      if (v123)
      {
        MEMORY[0x277D82BD8](v124);
      }

      if (v125)
      {
        MEMORY[0x277D82BD8](v126);
      }

      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v42);
      if (v127)
      {
        MEMORY[0x277D82BD8](v128);
      }

      if (v129)
      {
        MEMORY[0x277D82BD8](v130);
      }

      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v47);
      if (v131)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName6);
      }

      if (v133)
      {
        MEMORY[0x277D82BD8](descriptor2);
      }

      if (v135)
      {
        MEMORY[0x277D82BD8](v136);
      }

      if (v137)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName5);
      }

      if (v139)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName4);
      }

      MEMORY[0x277D82BD8](v62);
      v31 = 0;
      objc_storeStrong(&v121, 0);
      objc_storeStrong(&v122, v31);
      objc_storeStrong(&v141, v31);
    }

    objc_storeStrong(&v143, 0);
    v120 = selfCopy->_state;
    v119 = MEMORY[0x277D82BE0](selfCopy->_preferredUpdateError);
    v118 = MEMORY[0x277D82BE0](selfCopy->_preferredUpdateErrorDescription);
    v117 = MEMORY[0x277D82BE0](selfCopy->_alternateUpdateError);
    v116 = MEMORY[0x277D82BE0](selfCopy->_alternateUpdateErrorDescription);
    v30 = &v107;
    v107 = MEMORY[0x277D85DD0];
    v108 = -1073741824;
    v109 = 0;
    v110 = __82__SUSUISoftwareUpdateManager__setState_preferredUpdateError_alternateUpdateError___block_invoke;
    v111 = &unk_279CBE618;
    v23 = v112;
    v112[0] = MEMORY[0x277D82BE0](selfCopy);
    v113 = stateCopy;
    v24 = v30 + 5;
    v112[1] = MEMORY[0x277D82BE0](v119);
    v25 = v30 + 6;
    v112[2] = MEMORY[0x277D82BE0](v118);
    v26 = v30 + 7;
    v112[3] = MEMORY[0x277D82BE0](v117);
    v27 = v30 + 8;
    v112[4] = MEMORY[0x277D82BE0](v116);
    v28 = v30 + 9;
    v112[5] = MEMORY[0x277D82BE0](location);
    v29 = v30 + 10;
    v112[6] = MEMORY[0x277D82BE0](v168);
    v114 = v120;
    v115 = MEMORY[0x26D66A460](v30);
    if (stateCopy < 5)
    {
      (*(v115 + 2))();
    }

    else
    {
      v21 = selfCopy;
      v18 = location;
      v19 = v168;
      v20 = &v101;
      v101 = MEMORY[0x277D85DD0];
      v102 = -1073741824;
      v103 = 0;
      v104 = __82__SUSUISoftwareUpdateManager__setState_preferredUpdateError_alternateUpdateError___block_invoke_2;
      v105 = &unk_279CB9438;
      v22 = &v106;
      v106 = MEMORY[0x277D82BE0](v115);
      [(SUSUISoftwareUpdateManager *)v21 refreshErrors:v18 alternateError:v19 completion:v20];
      objc_storeStrong(v22, 0);
    }

    v17 = 0;
    objc_storeStrong(&v115, 0);
    objc_storeStrong(v29, v17);
    objc_storeStrong(v28, v17);
    objc_storeStrong(v27, v17);
    objc_storeStrong(v26, v17);
    objc_storeStrong(v25, v17);
    objc_storeStrong(v24, v17);
    objc_storeStrong(v23, v17);
    objc_storeStrong(&v116, v17);
    objc_storeStrong(&v117, v17);
    objc_storeStrong(&v118, v17);
    objc_storeStrong(&v119, v17);
    v144 = 0;
  }

  v16 = 0;
  objc_storeStrong(&v168, 0);
  objc_storeStrong(&location, v16);
  *MEMORY[0x277D85DE8];
}

void __82__SUSUISoftwareUpdateManager__setState_preferredUpdateError_alternateUpdateError___block_invoke(uint64_t a1)
{
  v59 = a1;
  v60 = "[SUSUISoftwareUpdateManager _setState:preferredUpdateError:alternateUpdateError:]_block_invoke";
  v92 = *MEMORY[0x277D85DE8];
  v90[2] = a1;
  v90[1] = a1;
  if (*(*(a1 + 32) + 88) == *(a1 + 88) && ([*(v59 + 32) errorsAreEqual:*(*(v59 + 32) + 160) error2:*(v59 + 40) oldDescription:*(v59 + 48)] & 1) != 0 && (objc_msgSend(*(v59 + 32), "errorsAreEqual:error2:oldDescription:", *(*(v59 + 32) + 168), *(v59 + 56), *(v59 + 64)) & 1) != 0)
  {
    v90[0] = _SUSUILoggingFacility();
    v89 = 0;
    if (os_log_type_enabled(v90[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v90[0];
      *type = v89;
      v56 = SUSUISoftwareUpdateStateToString(*(*(v59 + 32) + 88));
      v57 = MEMORY[0x277D82BE0](v56);
      v88 = v57;
      v58 = *(*(v59 + 32) + 88);
      v1 = *(*(v59 + 32) + 120);
      v86 = 0;
      if (v1)
      {
        v87 = [*(*(v59 + 32) + 120) humanReadableUpdateName];
        v86 = 1;
        v53 = v87;
      }

      else
      {
        v53 = @"N/A";
      }

      v50 = v53;
      v51 = *(*(v59 + 32) + 120);
      v52 = *(*(v59 + 32) + 160);
      v2 = *(*(v59 + 32) + 128);
      v84 = 0;
      if (v2)
      {
        v85 = [*(*(v59 + 32) + 128) humanReadableUpdateName];
        v84 = 1;
        v49 = v85;
      }

      else
      {
        v49 = @"N/A";
      }

      v45 = v49;
      v46 = *(*(v59 + 32) + 128);
      v47 = *(*(v59 + 32) + 168);
      v48 = *(*(v59 + 32) + 8);
      v3 = *(*(v59 + 32) + 8);
      v82 = 0;
      v80 = 0;
      v78 = 0;
      if (v3 && (v83 = [*(*(v59 + 32) + 8) descriptor], v82 = 1, v83))
      {
        v81 = [*(*(v59 + 32) + 8) descriptor];
        v43 = 1;
        v80 = 1;
        v79 = [v81 humanReadableUpdateName];
        v78 = 1;
        v44 = v79;
      }

      else
      {
        v44 = @"N/A";
      }

      v40 = v44;
      WeakRetained = objc_loadWeakRetained((*(v59 + 32) + 104));
      v42 = objc_loadWeakRetained((*(v59 + 32) + 104));
      v76 = 0;
      v74 = 0;
      if (v42)
      {
        v77 = objc_loadWeakRetained((*(v59 + 32) + 104));
        v38 = 1;
        v76 = 1;
        v4 = objc_opt_class();
        v75 = NSStringFromClass(v4);
        v74 = 1;
        v39 = v75;
      }

      else
      {
        v39 = @"N/A";
      }

      v35 = v39;
      v36 = objc_loadWeakRetained((*(v59 + 32) + 112));
      v37 = objc_loadWeakRetained((*(v59 + 32) + 112));
      v72 = 0;
      v70 = 0;
      if (v37)
      {
        v73 = objc_loadWeakRetained((*(v59 + 32) + 112));
        v33 = 1;
        v72 = 1;
        v5 = objc_opt_class();
        v71 = NSStringFromClass(v5);
        v70 = 1;
        v34 = v71;
      }

      else
      {
        v34 = @"N/A";
      }

      v29 = v34;
      v32 = SUSUISoftwareUpdateStateToString(*(*(v59 + 32) + 88));
      location = MEMORY[0x277D82BE0](v32);
      v6 = *(*(v59 + 32) + 88);
      v7 = *(v59 + 72);
      v8 = *(v59 + 80);
      v30 = &v11;
      buf = v91;
      __os_log_helper_16_2_19_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_66_4_0_8_66_8_66(v91, v60, v57, v58, v50, v51, v52, v45, v46, v47, v48, v40, WeakRetained, v35, v36, v34, location, v6, v7, v8);
      _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nSkipping setting state due to same error. _state: %{public}@ (%d), preferredError: %{public}@ alternateError: %{public}@", buf, 0xB8u);
      MEMORY[0x277D82BD8](v32);
      if (v70)
      {
        MEMORY[0x277D82BD8](v71);
      }

      if (v72)
      {
        MEMORY[0x277D82BD8](v73);
      }

      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v36);
      if (v74)
      {
        MEMORY[0x277D82BD8](v75);
      }

      if (v76)
      {
        MEMORY[0x277D82BD8](v77);
      }

      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](WeakRetained);
      if (v78)
      {
        MEMORY[0x277D82BD8](v79);
      }

      if (v80)
      {
        MEMORY[0x277D82BD8](v81);
      }

      if (v82)
      {
        MEMORY[0x277D82BD8](v83);
      }

      if (v84)
      {
        MEMORY[0x277D82BD8](v85);
      }

      if (v86)
      {
        MEMORY[0x277D82BD8](v87);
      }

      MEMORY[0x277D82BD8](v56);
      obj = 0;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v88, obj);
    }

    objc_storeStrong(v90, 0);
  }

  else
  {
    v9 = v59;
    *(*(v59 + 32) + 88) = *(v59 + 88);
    v27 = *(*(v9 + 32) + 88);
    if (v27 != 6 && v27 != 9 && v27 != 8)
    {
      switch(v27)
      {
        case 12:
          v23 = *(v59 + 32);
          v24 = [*(v59 + 32) download];
          [v23 _updateDownloadProgressWithDownload:? stateFromDownload:?];
          MEMORY[0x277D82BD8](v24);
          break;
        case 13:
          if (*(*(v59 + 32) + 54))
          {
            v21 = *(v59 + 32);
            v22 = [*(v59 + 32) download];
            [v21 _updateDownloadProgressWithDownload:? stateFromDownload:?];
            MEMORY[0x277D82BD8](v22);
          }

          else
          {
            [*(v59 + 32) hidePreferredUpdate];
          }

          break;
        case 14:
          v25 = *(v59 + 32);
          v26 = [*(v59 + 32) download];
          [v25 _updateDownloadProgressWithDownload:? stateFromDownload:?];
          MEMORY[0x277D82BD8](v26);
          break;
      }
    }

    v19 = objc_loadWeakRetained((*(v59 + 32) + 104));
    v20 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v19);
    if (v20)
    {
      v18 = objc_loadWeakRetained((*(v59 + 32) + 104));
      [v18 manager:*(v59 + 32) didTransitionToState:*(v59 + 88) fromState:*(v59 + 92)];
      MEMORY[0x277D82BD8](v18);
    }

    else
    {
      v16 = objc_loadWeakRetained((*(v59 + 32) + 104));
      v17 = objc_opt_respondsToSelector();
      MEMORY[0x277D82BD8](v16);
      if (v17)
      {
        v12 = MEMORY[0x277D85CD0];
        v10 = MEMORY[0x277D85CD0];
        queue = v12;
        block = &v61;
        v61 = MEMORY[0x277D85DD0];
        v62 = -1073741824;
        v63 = 0;
        v64 = __82__SUSUISoftwareUpdateManager__setState_preferredUpdateError_alternateUpdateError___block_invoke_423;
        v65 = &unk_279CB97F8;
        v15 = &v66;
        v66 = MEMORY[0x277D82BE0](*(v59 + 32));
        v67 = *(v59 + 88);
        v68 = *(v59 + 92);
        dispatch_async(queue, &v61);
        MEMORY[0x277D82BD8](queue);
        objc_storeStrong(&v66, 0);
      }
    }
  }

  *MEMORY[0x277D85DE8];
}

uint64_t __82__SUSUISoftwareUpdateManager__setState_preferredUpdateError_alternateUpdateError___block_invoke_423(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained manager:*(a1 + 32) didTransitionToState:*(a1 + 40) fromState:*(a1 + 44) error:*(*(a1 + 32) + 160)];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)setState:(int)state withDownloadUpdateError:(id)error
{
  selfCopy = self;
  v12 = a2;
  stateCopy = state;
  location = 0;
  objc_storeStrong(&location, error);
  download = [(SUSUISoftwareUpdateManager *)selfCopy download];
  descriptor = [(SUDownload *)download descriptor];
  v9 = [(SUDescriptor *)descriptor isEqual:selfCopy->_preferredUpdate];
  MEMORY[0x277D82BD8](descriptor);
  MEMORY[0x277D82BD8](download);
  if (v9)
  {
    [(SUSUISoftwareUpdateManager *)selfCopy _setState:stateCopy preferredUpdateError:location alternateUpdateError:selfCopy->_alternateUpdateError];
  }

  else
  {
    download2 = [(SUSUISoftwareUpdateManager *)selfCopy download];
    descriptor2 = [(SUDownload *)download2 descriptor];
    v6 = [(SUDescriptor *)descriptor2 isEqual:selfCopy->_alternateUpdate];
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](download2);
    if (v6)
    {
      [(SUSUISoftwareUpdateManager *)selfCopy _setState:stateCopy preferredUpdateError:selfCopy->_preferredUpdateError alternateUpdateError:location];
    }
  }

  objc_storeStrong(&location, 0);
}

- (void)setClearingSpaceForDownload:(BOOL)download
{
  selfCopy = self;
  v12 = a2;
  downloadCopy = download;
  queue = self->_concurrentQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __58__SUSUISoftwareUpdateManager_setClearingSpaceForDownload___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](self);
  v10 = downloadCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
}

void __58__SUSUISoftwareUpdateManager_setClearingSpaceForDownload___block_invoke(uint64_t a1)
{
  v40 = &v60;
  v41 = a1;
  v42 = "[SUSUISoftwareUpdateManager setClearingSpaceForDownload:]_block_invoke";
  v65 = *MEMORY[0x277D85DE8];
  v63[2] = a1;
  v63[1] = a1;
  if ((*(*(a1 + 32) + 53) & 1) != (*(a1 + 40) & 1))
  {
    v1 = _SUSUILoggingFacility();
    v2 = v40;
    v40[3] = v1;
    v62 = 0;
    if (os_log_type_enabled(v2[3], OS_LOG_TYPE_DEFAULT))
    {
      log = v40[3];
      *type = v62;
      v37 = SUSUISoftwareUpdateStateToString(*(*(v41 + 32) + 88));
      v3 = MEMORY[0x277D82BE0](v37);
      v4 = v41;
      v38 = v3;
      v40[1] = v3;
      v39 = *(*(v4 + 32) + 88);
      v5 = *(*(v4 + 32) + 120);
      v59 = 0;
      if (v5)
      {
        v6 = [*(*(v41 + 32) + 120) humanReadableUpdateName];
        *v40 = v6;
        v59 = 1;
        v34 = v6;
      }

      else
      {
        v34 = @"N/A";
      }

      v31 = v34;
      v32 = *(*(v41 + 32) + 120);
      v33 = *(*(v41 + 32) + 160);
      v7 = *(*(v41 + 32) + 128);
      v57 = 0;
      if (v7)
      {
        v58 = [*(*(v41 + 32) + 128) humanReadableUpdateName];
        v57 = 1;
        v30 = v58;
      }

      else
      {
        v30 = @"N/A";
      }

      v26 = v30;
      v27 = *(*(v41 + 32) + 128);
      v28 = *(*(v41 + 32) + 168);
      v29 = *(*(v41 + 32) + 8);
      v8 = *(*(v41 + 32) + 8);
      v55 = 0;
      v53 = 0;
      v51 = 0;
      if (v8 && (v56 = [*(*(v41 + 32) + 8) descriptor], v55 = 1, v56))
      {
        v54 = [*(*(v41 + 32) + 8) descriptor];
        v24 = 1;
        v53 = 1;
        v52 = [v54 humanReadableUpdateName];
        v51 = 1;
        v25 = v52;
      }

      else
      {
        v25 = @"N/A";
      }

      v21 = v25;
      WeakRetained = objc_loadWeakRetained((*(v41 + 32) + 104));
      v23 = objc_loadWeakRetained((*(v41 + 32) + 104));
      v49 = 0;
      v47 = 0;
      if (v23)
      {
        v50 = objc_loadWeakRetained((*(v41 + 32) + 104));
        v19 = 1;
        v49 = 1;
        v9 = objc_opt_class();
        v48 = NSStringFromClass(v9);
        v47 = 1;
        v20 = v48;
      }

      else
      {
        v20 = @"N/A";
      }

      v16 = v20;
      v17 = objc_loadWeakRetained((*(v41 + 32) + 112));
      v18 = objc_loadWeakRetained((*(v41 + 32) + 112));
      v45 = 0;
      v43 = 0;
      if (v18)
      {
        v46 = objc_loadWeakRetained((*(v41 + 32) + 112));
        v14 = 1;
        v45 = 1;
        v10 = objc_opt_class();
        v44 = NSStringFromClass(v10);
        v43 = 1;
        v15 = v44;
      }

      else
      {
        v15 = @"N/A";
      }

      v11 = @"YES";
      if ((*(v41 + 40) & 1) == 0)
      {
        v11 = @"NO";
      }

      v12[9] = v12;
      buf = v64;
      __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_66(v64, v42, v38, v39, v31, v32, v33, v26, v27, v28, v29, v21, WeakRetained, v16, v17, v15, v11);
      _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nUpdating _clearingSpaceForDownload to %{public}@", buf, 0x9Eu);
      if (v43)
      {
        MEMORY[0x277D82BD8](v44);
      }

      if (v45)
      {
        MEMORY[0x277D82BD8](v46);
      }

      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v17);
      if (v47)
      {
        MEMORY[0x277D82BD8](v48);
      }

      if (v49)
      {
        MEMORY[0x277D82BD8](v50);
      }

      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](WeakRetained);
      if (v51)
      {
        MEMORY[0x277D82BD8](v52);
      }

      if (v53)
      {
        MEMORY[0x277D82BD8](v54);
      }

      if (v55)
      {
        MEMORY[0x277D82BD8](v56);
      }

      if (v57)
      {
        MEMORY[0x277D82BD8](v58);
      }

      if (v59)
      {
        MEMORY[0x277D82BD8](*v40);
      }

      MEMORY[0x277D82BD8](v37);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(v63, 0);
    *(*(v41 + 32) + 53) = *(v41 + 40) & 1;
  }

  *MEMORY[0x277D85DE8];
}

- (BOOL)clearingSpaceForDownload
{
  selfCopy = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = self->_concurrentQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __54__SUSUISoftwareUpdateManager_clearingSpaceForDownload__block_invoke;
  v9 = &unk_279CBE160;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](self);
  dispatch_sync(queue, &v5);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

- (void)checkAndSetReadyToInstall
{
  selfCopy = self;
  v14 = a2;
  state = self->_state;
  v12 = objc_alloc_init(MEMORY[0x277D648A0]);
  ignorableConstraints = [(SUSUISoftwareUpdateManager *)selfCopy ignorableConstraints];
  [v12 setIgnorableConstraints:ignorableConstraints];
  suClient = selfCopy->_suClient;
  v3 = v12;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __55__SUSUISoftwareUpdateManager_checkAndSetReadyToInstall__block_invoke;
  v9 = &unk_279CBE640;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  v11 = state;
  [(SUSUISoftwareUpdateClientManager *)suClient isUpdateReadyForInstallationWithOptions:v3 completion:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
}

void __55__SUSUISoftwareUpdateManager_checkAndSetReadyToInstall__block_invoke(uint64_t a1, char a2, id obj)
{
  v41 = a1;
  v40 = "[SUSUISoftwareUpdateManager checkAndSetReadyToInstall]_block_invoke";
  v70 = *MEMORY[0x277D85DE8];
  v68 = a1;
  v67 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v65[1] = v41;
  v65[0] = _SUSUILoggingFacility();
  v64 = 0;
  if (os_log_type_enabled(v65[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v65[0];
    *type = v64;
    v37 = SUSUISoftwareUpdateStateToString(*(*(v41 + 32) + 88));
    v38 = MEMORY[0x277D82BE0](v37);
    v63 = v38;
    v39 = *(*(v41 + 32) + 88);
    v3 = *(*(v41 + 32) + 120);
    v61 = 0;
    if (v3)
    {
      v62 = [*(*(v41 + 32) + 120) humanReadableUpdateName];
      v61 = 1;
      v34 = v62;
    }

    else
    {
      v34 = @"N/A";
    }

    v31 = v34;
    v32 = *(*(v41 + 32) + 120);
    v33 = *(*(v41 + 32) + 160);
    v4 = *(*(v41 + 32) + 128);
    v59 = 0;
    if (v4)
    {
      v60 = [*(*(v41 + 32) + 128) humanReadableUpdateName];
      v59 = 1;
      v30 = v60;
    }

    else
    {
      v30 = @"N/A";
    }

    v26 = v30;
    v27 = *(*(v41 + 32) + 128);
    v28 = *(*(v41 + 32) + 168);
    v29 = *(*(v41 + 32) + 8);
    v5 = *(*(v41 + 32) + 8);
    v57 = 0;
    v55 = 0;
    v53 = 0;
    if (v5 && (v58 = [*(*(v41 + 32) + 8) descriptor], v57 = 1, v58))
    {
      v56 = [*(*(v41 + 32) + 8) descriptor];
      v24 = 1;
      v55 = 1;
      v54 = [v56 humanReadableUpdateName];
      v53 = 1;
      v25 = v54;
    }

    else
    {
      v25 = @"N/A";
    }

    v21 = v25;
    WeakRetained = objc_loadWeakRetained((*(v41 + 32) + 104));
    v23 = objc_loadWeakRetained((*(v41 + 32) + 104));
    v51 = 0;
    v49 = 0;
    if (v23)
    {
      v52 = objc_loadWeakRetained((*(v41 + 32) + 104));
      v19 = 1;
      v51 = 1;
      v6 = objc_opt_class();
      v50 = NSStringFromClass(v6);
      v49 = 1;
      v20 = v50;
    }

    else
    {
      v20 = @"N/A";
    }

    v16 = v20;
    v17 = objc_loadWeakRetained((*(v41 + 32) + 112));
    v18 = objc_loadWeakRetained((*(v41 + 32) + 112));
    v47 = 0;
    v45 = 0;
    if (v18)
    {
      v48 = objc_loadWeakRetained((*(v41 + 32) + 112));
      v14 = 1;
      v47 = 1;
      v7 = objc_opt_class();
      v46 = NSStringFromClass(v7);
      v45 = 1;
      v15 = v46;
    }

    else
    {
      v15 = @"N/A";
    }

    v12 = &v9;
    buf = v69;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0_8_66(v69, v40, v38, v39, v31, v32, v33, v26, v27, v28, v29, v21, WeakRetained, v16, v17, v15, v67 & 1, location);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nisReady: %d; error: %{public}@", buf, 0xA4u);
    if (v45)
    {
      MEMORY[0x277D82BD8](v46);
    }

    if (v47)
    {
      MEMORY[0x277D82BD8](v48);
    }

    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v17);
    if (v49)
    {
      MEMORY[0x277D82BD8](v50);
    }

    if (v51)
    {
      MEMORY[0x277D82BD8](v52);
    }

    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v53)
    {
      MEMORY[0x277D82BD8](v54);
    }

    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    if (v57)
    {
      MEMORY[0x277D82BD8](v58);
    }

    if (v59)
    {
      MEMORY[0x277D82BD8](v60);
    }

    if (v61)
    {
      MEMORY[0x277D82BD8](v62);
    }

    MEMORY[0x277D82BD8](v37);
    objc_storeStrong(&v63, 0);
  }

  objc_storeStrong(v65, 0);
  if (*(*(v41 + 32) + 88) == *(v41 + 40))
  {
    if (location)
    {
      v44 = 0;
      v10 = &v43;
      v43 = 0;
      v8 = *(v41 + 32);
      obja = 0;
      v11 = [v8 shouldSetStateForInstallError:location outError:&obja outState:&v44];
      objc_storeStrong(v10, obja);
      if (v11)
      {
        [*(v41 + 32) setState:v44 withDownloadUpdateError:v43];
      }

      objc_storeStrong(&v43, 0);
    }

    else
    {
      [*(v41 + 32) setState:10 withDownloadUpdateError:0];
    }
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)runEntryScan:(BOOL)scan
{
  [(SUSUISoftwareUpdateManager *)self setState:?];
  self->_runningInitialScan = scan;
  self->_userInitiatedRescan = 0;
  [(SUSUISoftwareUpdateManager *)self scanForUpdatesCompletion:0];
}

- (void)refreshState
{
  v44 = "[SUSUISoftwareUpdateManager refreshState]";
  v77 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v73[1] = a2;
  v73[0] = _SUSUILoggingFacility();
  v72 = 0;
  if (os_log_type_enabled(v73[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v73[0];
    *type = v72;
    v41 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
    v42 = MEMORY[0x277D82BE0](v41);
    location = v42;
    state = selfCopy->_state;
    preferredUpdate = selfCopy->_preferredUpdate;
    v69 = 0;
    if (preferredUpdate)
    {
      humanReadableUpdateName = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
      v69 = 1;
      v38 = humanReadableUpdateName;
    }

    else
    {
      v38 = @"N/A";
    }

    v35 = v38;
    v36 = selfCopy->_preferredUpdate;
    preferredUpdateError = selfCopy->_preferredUpdateError;
    alternateUpdate = selfCopy->_alternateUpdate;
    v67 = 0;
    if (alternateUpdate)
    {
      humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
      v67 = 1;
      v34 = humanReadableUpdateName2;
    }

    else
    {
      v34 = @"N/A";
    }

    v30 = v34;
    v31 = selfCopy->_alternateUpdate;
    alternateUpdateError = selfCopy->_alternateUpdateError;
    download = selfCopy->_download;
    v4 = selfCopy->_download;
    v65 = 0;
    v63 = 0;
    v61 = 0;
    if (v4 && (v66 = [(SUDownload *)selfCopy->_download descriptor], v65 = 1, v66))
    {
      descriptor = [(SUDownload *)selfCopy->_download descriptor];
      v28 = 1;
      v63 = 1;
      humanReadableUpdateName3 = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v61 = 1;
      v29 = humanReadableUpdateName3;
    }

    else
    {
      v29 = @"N/A";
    }

    v25 = v29;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v27 = objc_loadWeakRetained(&selfCopy->_delegate);
    v59 = 0;
    v57 = 0;
    if (v27)
    {
      v60 = objc_loadWeakRetained(&selfCopy->_delegate);
      v23 = 1;
      v59 = 1;
      v5 = objc_opt_class();
      v58 = NSStringFromClass(v5);
      v57 = 1;
      v24 = v58;
    }

    else
    {
      v24 = @"N/A";
    }

    v20 = v24;
    v21 = objc_loadWeakRetained(&selfCopy->_hostController);
    v22 = objc_loadWeakRetained(&selfCopy->_hostController);
    v55 = 0;
    v53 = 0;
    if (v22)
    {
      v56 = objc_loadWeakRetained(&selfCopy->_hostController);
      v18 = 1;
      v55 = 1;
      v6 = objc_opt_class();
      v54 = NSStringFromClass(v6);
      v53 = 1;
      v19 = v54;
    }

    else
    {
      v19 = @"N/A";
    }

    v16 = &v7;
    buf = v76;
    __os_log_helper_16_2_15_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66(v76, v44, v42, state, v35, v36, preferredUpdateError, v30, v31, alternateUpdateError, download, v25, WeakRetained, v20, v21, v19);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\n", buf, 0x94u);
    if (v53)
    {
      MEMORY[0x277D82BD8](v54);
    }

    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v21);
    if (v57)
    {
      MEMORY[0x277D82BD8](v58);
    }

    if (v59)
    {
      MEMORY[0x277D82BD8](v60);
    }

    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v61)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v63)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](v66);
    }

    if (v67)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v69)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    MEMORY[0x277D82BD8](v41);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v73, 0);
  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  hasSemiSplatActive = [mEMORY[0x277D64418] hasSemiSplatActive];
  MEMORY[0x277D82BD8](mEMORY[0x277D64418]);
  if (hasSemiSplatActive)
  {
    oslog = _SUSUILoggingFacility();
    v51 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = oslog;
      *v12 = v51;
      v13 = v75;
      __os_log_helper_16_2_1_8_32(v75, v44);
      _os_log_impl(&dword_26AC94000, v11, v12[0], "%s: Rollback already applied, show the user an alert to reboot, and show no available updates", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSUISoftwareUpdateManager *)selfCopy clearPastScanResults];
    [(SUSUISoftwareUpdateManager *)selfCopy setState:3];
    [(SUSUISoftwareUpdateManager *)selfCopy handleRollbackApplied];
  }

  else
  {
    if (!selfCopy->_state)
    {
      [(SUSUISoftwareUpdateManager *)selfCopy setState:1];
    }

    suClient = selfCopy->_suClient;
    v8 = &v45;
    v45 = MEMORY[0x277D85DD0];
    v46 = -1073741824;
    v47 = 0;
    v48 = __42__SUSUISoftwareUpdateManager_refreshState__block_invoke;
    v49 = &unk_279CBE668;
    v10 = &v50;
    v50 = MEMORY[0x277D82BE0](selfCopy);
    [(SUSUISoftwareUpdateClientManager *)suClient download:v8];
    objc_storeStrong(v10, 0);
  }

  *MEMORY[0x277D85DE8];
}

void __42__SUSUISoftwareUpdateManager_refreshState__block_invoke(id *a1, void *a2, void *a3)
{
  v57 = a1;
  obj = a3;
  v55 = "[SUSUISoftwareUpdateManager refreshState]_block_invoke";
  v89 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v86 = 0;
  objc_storeStrong(&v86, obj);
  v85[1] = v57;
  v85[0] = _SUSUILoggingFacility();
  v84 = 0;
  if (os_log_type_enabled(v85[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v85[0];
    *type = v84;
    v52 = SUSUISoftwareUpdateStateToString(*(v57[4] + 22));
    v53 = MEMORY[0x277D82BE0](v52);
    v83 = v53;
    v54 = *(v57[4] + 22);
    v3 = *(v57[4] + 15);
    v81 = 0;
    if (v3)
    {
      v82 = [*(v57[4] + 15) humanReadableUpdateName];
      v81 = 1;
      v49 = v82;
    }

    else
    {
      v49 = @"N/A";
    }

    v46 = v49;
    v47 = *(v57[4] + 15);
    v48 = *(v57[4] + 20);
    v4 = *(v57[4] + 16);
    v79 = 0;
    if (v4)
    {
      v80 = [*(v57[4] + 16) humanReadableUpdateName];
      v79 = 1;
      v45 = v80;
    }

    else
    {
      v45 = @"N/A";
    }

    v41 = v45;
    v42 = *(v57[4] + 16);
    v43 = *(v57[4] + 21);
    v44 = *(v57[4] + 1);
    v5 = *(v57[4] + 1);
    v77 = 0;
    v75 = 0;
    v73 = 0;
    if (v5 && (v78 = [*(v57[4] + 1) descriptor], v77 = 1, v78))
    {
      v76 = [*(v57[4] + 1) descriptor];
      v39 = 1;
      v75 = 1;
      v74 = [v76 humanReadableUpdateName];
      v73 = 1;
      v40 = v74;
    }

    else
    {
      v40 = @"N/A";
    }

    v36 = v40;
    WeakRetained = objc_loadWeakRetained(v57[4] + 13);
    v38 = objc_loadWeakRetained(v57[4] + 13);
    v71 = 0;
    v69 = 0;
    if (v38)
    {
      v72 = objc_loadWeakRetained(v57[4] + 13);
      v34 = 1;
      v71 = 1;
      v6 = objc_opt_class();
      v70 = NSStringFromClass(v6);
      v69 = 1;
      v35 = v70;
    }

    else
    {
      v35 = @"N/A";
    }

    v31 = v35;
    v32 = objc_loadWeakRetained(v57[4] + 14);
    v33 = objc_loadWeakRetained(v57[4] + 14);
    v67 = 0;
    v65 = 0;
    if (v33)
    {
      v68 = objc_loadWeakRetained(v57[4] + 14);
      v29 = 1;
      v67 = 1;
      v7 = objc_opt_class();
      v66 = NSStringFromClass(v7);
      v65 = 1;
      v30 = v66;
    }

    else
    {
      v30 = @"N/A";
    }

    v24 = v30;
    v25 = location[0];
    v28 = [location[0] descriptor];
    v64 = MEMORY[0x277D82BE0](v28);
    v26 = &v8;
    buf = v88;
    __os_log_helper_16_2_18_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_0_8_66(v88, v55, v53, v54, v46, v47, v48, v41, v42, v43, v44, v36, WeakRetained, v31, v32, v30, v25, v64, v86);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\ndownload: %p (owner SUDescriptor: %p), error: %{public}@", buf, 0xB2u);
    MEMORY[0x277D82BD8](v28);
    if (v65)
    {
      MEMORY[0x277D82BD8](v66);
    }

    if (v67)
    {
      MEMORY[0x277D82BD8](v68);
    }

    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v32);
    if (v69)
    {
      MEMORY[0x277D82BD8](v70);
    }

    if (v71)
    {
      MEMORY[0x277D82BD8](v72);
    }

    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v73)
    {
      MEMORY[0x277D82BD8](v74);
    }

    if (v75)
    {
      MEMORY[0x277D82BD8](v76);
    }

    if (v77)
    {
      MEMORY[0x277D82BD8](v78);
    }

    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    MEMORY[0x277D82BD8](v52);
    v23 = 0;
    objc_storeStrong(&v64, 0);
    objc_storeStrong(&v83, v23);
  }

  objc_storeStrong(v85, 0);
  [v57[4] setDownload:location[0]];
  if (location[0])
  {
    v16 = *(v57[4] + 8);
    v18 = [location[0] downloadOptions];
    v15 = [v18 downloadFeeAgreementStatus];
    v17 = [location[0] descriptor];
    [v16 setCellularFeeAgreementStatus:v15 forUpdate:?];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    v20 = *(v57[4] + 8);
    v22 = [location[0] downloadOptions];
    v19 = [v22 termsAndConditionsAgreementStatus];
    v21 = [location[0] descriptor];
    [v20 setTermsAgreementStatus:v19 forUpdate:?];
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
  }

  v10 = *(v57[4] + 7);
  v9 = &v58;
  v58 = MEMORY[0x277D85DD0];
  v59 = -1073741824;
  v60 = 0;
  v61 = __42__SUSUISoftwareUpdateManager_refreshState__block_invoke_434;
  v62 = &unk_279CB9690;
  v12 = v63;
  v63[0] = MEMORY[0x277D82BE0](v57[4]);
  v11 = (v9 + 5);
  v13 = location;
  v63[1] = MEMORY[0x277D82BE0](location[0]);
  [v10 isScanning:v9];
  v14 = 0;
  objc_storeStrong(v11, 0);
  objc_storeStrong(v12, v14);
  objc_storeStrong(&v86, v14);
  objc_storeStrong(v13, v14);
  *MEMORY[0x277D85DE8];
}

void __42__SUSUISoftwareUpdateManager_refreshState__block_invoke_434(id *a1, char a2, id obj)
{
  v57 = &v76;
  v56 = a1;
  v55 = "[SUSUISoftwareUpdateManager refreshState]_block_invoke";
  v88 = *MEMORY[0x277D85DE8];
  v86 = a1;
  v85 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v83[1] = v56;
  v83[0] = _SUSUILoggingFacility();
  v82 = 0;
  if (os_log_type_enabled(v83[0], OS_LOG_TYPE_DEFAULT))
  {
    log = *(v57 + 11);
    *type = v82;
    v52 = SUSUISoftwareUpdateStateToString(*(v56[4] + 22));
    v3 = MEMORY[0x277D82BE0](v52);
    v4 = v56;
    v53 = v3;
    *(v57 + 9) = v3;
    v54 = *(v4[4] + 22);
    v5 = *(v4[4] + 15);
    v80 = 0;
    if (v5)
    {
      v6 = [*(v56[4] + 15) humanReadableUpdateName];
      *(v57 + 8) = v6;
      v80 = 1;
      v49 = v6;
    }

    else
    {
      v49 = @"N/A";
    }

    v46 = v49;
    v47 = *(v56[4] + 15);
    v48 = *(v56[4] + 20);
    v7 = *(v56[4] + 16);
    v79 = 0;
    if (v7)
    {
      v8 = [*(v56[4] + 16) humanReadableUpdateName];
      *(v57 + 6) = v8;
      v79 = 1;
      v45 = v8;
    }

    else
    {
      v45 = @"N/A";
    }

    v41 = v45;
    v42 = *(v56[4] + 16);
    v43 = *(v56[4] + 21);
    v44 = *(v56[4] + 1);
    v9 = *(v56[4] + 1);
    v78 = 0;
    v77 = 0;
    v75 = 0;
    if (v9 && (v10 = [*(v56[4] + 1) descriptor], *(v57 + 4) = v10, v78 = 1, v10))
    {
      v11 = [*(v56[4] + 1) descriptor];
      *(v57 + 2) = v11;
      v39 = 1;
      v77 = 1;
      v12 = [v11 humanReadableUpdateName];
      *v57 = v12;
      v75 = 1;
      v40 = v12;
    }

    else
    {
      v40 = @"N/A";
    }

    v36 = v40;
    WeakRetained = objc_loadWeakRetained(v56[4] + 13);
    v38 = objc_loadWeakRetained(v56[4] + 13);
    v73 = 0;
    v71 = 0;
    if (v38)
    {
      v74 = objc_loadWeakRetained(v56[4] + 13);
      v34 = 1;
      v73 = 1;
      v13 = objc_opt_class();
      v72 = NSStringFromClass(v13);
      v71 = 1;
      v35 = v72;
    }

    else
    {
      v35 = @"N/A";
    }

    v31 = v35;
    v32 = objc_loadWeakRetained(v56[4] + 14);
    v33 = objc_loadWeakRetained(v56[4] + 14);
    v69 = 0;
    v67 = 0;
    if (v33)
    {
      v70 = objc_loadWeakRetained(v56[4] + 14);
      v29 = 1;
      v69 = 1;
      v14 = objc_opt_class();
      v68 = NSStringFromClass(v14);
      v67 = 1;
      v30 = v68;
    }

    else
    {
      v30 = @"N/A";
    }

    v15 = *(v57 + 13);
    v27 = &v17;
    buf = v87;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0_8_66(v87, v55, v53, v54, v46, v47, v48, v41, v42, v43, v44, v36, WeakRetained, v31, v32, v30, v85 & 1, v15);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nisScanning: %d; error: %{public}@", buf, 0xA4u);
    if (v67)
    {
      MEMORY[0x277D82BD8](v68);
    }

    if (v69)
    {
      MEMORY[0x277D82BD8](v70);
    }

    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v32);
    if (v71)
    {
      MEMORY[0x277D82BD8](v72);
    }

    if (v73)
    {
      MEMORY[0x277D82BD8](v74);
    }

    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v75)
    {
      MEMORY[0x277D82BD8](*v57);
    }

    if (v77)
    {
      MEMORY[0x277D82BD8](*(v57 + 2));
    }

    if (v78)
    {
      MEMORY[0x277D82BD8](*(v57 + 4));
    }

    if (v79)
    {
      MEMORY[0x277D82BD8](*(v57 + 6));
    }

    if (v80)
    {
      MEMORY[0x277D82BD8](*(v57 + 8));
    }

    MEMORY[0x277D82BD8](v52);
    objc_storeStrong(&v81, 0);
  }

  objc_storeStrong(v83, 0);
  v66 = [v56[4] download];
  if (v85)
  {
    goto LABEL_58;
  }

  v64 = 0;
  v62 = 0;
  v60 = 0;
  v58 = 0;
  v26 = 0;
  if (v66)
  {
    v24 = [v56[5] descriptor];
    v65 = v24;
    v23 = 1;
    v64 = 1;
    v63 = [v56[4] preferredUpdate];
    v62 = v23 & 1;
    v16 = [v24 isEqual:?];
    v25 = 1;
    if ((v16 & 1) == 0)
    {
      v22 = [v56[5] descriptor];
      v61 = v22;
      v21 = 1;
      v60 = 1;
      v59 = [v56[4] alternateUpdate];
      v58 = v21 & 1;
      v25 = [v22 isEqual:?];
    }

    v26 = v25;
  }

  v20 = v26;
  if (v58)
  {
    MEMORY[0x277D82BD8](v59);
  }

  if (v60)
  {
    MEMORY[0x277D82BD8](v61);
  }

  if (v62)
  {
    MEMORY[0x277D82BD8](v63);
  }

  if (v64)
  {
    MEMORY[0x277D82BD8](v65);
  }

  if (v20)
  {
    [v56[4] updateStateFromDownload:v66];
    goto LABEL_59;
  }

  if ([v56[4] shouldShowPreferredUpdateAsAlternate])
  {
    [v56[4] setState:6];
    goto LABEL_59;
  }

  v19 = [v56[4] preferredUpdate];
  MEMORY[0x277D82BD8](v19);
  if (v19)
  {
    [v56[4] setState:8];
    goto LABEL_59;
  }

  if (*(v56[4] + 22) != 3 && *(v56[4] + 22) != 4)
  {
LABEL_58:
    [v56[4] scanForUpdatesCompletion:0];
  }

LABEL_59:
  obja = 0;
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&location, obja);
  *MEMORY[0x277D85DE8];
}

- (SUDescriptor)update
{
  selfCopy = self;
  v4[1] = a2;
  v4[0] = [objc_alloc(MEMORY[0x277D64900]) initWithPreferredDescriptor:selfCopy->_preferredUpdate alternateDescriptor:selfCopy->_alternateUpdate];
  latestUpdate = [v4[0] latestUpdate];
  objc_storeStrong(v4, 0);

  return latestUpdate;
}

- (void)hidePreferredUpdate
{
  selfCopy = self;
  v2[1] = a2;
  objc_storeStrong(&self->_hiddenPreferredUpdate, self->_preferredUpdate);
  objc_storeStrong(&selfCopy->_preferredUpdate, selfCopy->_alternateUpdate);
  objc_storeStrong(&selfCopy->_alternateUpdate, 0);
  v2[0] = MEMORY[0x277D82BE0](selfCopy->_preferredUpdateError);
  [(SUSUISoftwareUpdateManager *)selfCopy setPreferredUpdateError:selfCopy->_alternateUpdateError];
  [(SUSUISoftwareUpdateManager *)selfCopy setAlternateUpdateError:v2[0]];
  selfCopy->_hidingPreferredUpdate = 1;
  objc_storeStrong(v2, 0);
}

- (void)revealHiddenPreferredUpdate
{
  selfCopy = self;
  v2[1] = a2;
  objc_storeStrong(&self->_alternateUpdate, self->_preferredUpdate);
  objc_storeStrong(&selfCopy->_preferredUpdate, selfCopy->_hiddenPreferredUpdate);
  objc_storeStrong(&selfCopy->_hiddenPreferredUpdate, 0);
  v2[0] = MEMORY[0x277D82BE0](selfCopy->_preferredUpdateError);
  [(SUSUISoftwareUpdateManager *)selfCopy setPreferredUpdateError:selfCopy->_alternateUpdateError];
  [(SUSUISoftwareUpdateManager *)selfCopy setAlternateUpdateError:v2[0]];
  selfCopy->_hidingPreferredUpdate = 0;
  objc_storeStrong(v2, 0);
}

- (void)hideAlternateUpdate
{
  objc_storeStrong(&self->_hiddenAlternateUpdate, self->_alternateUpdate);
  objc_storeStrong(&self->_alternateUpdate, 0);
  self->_hidingAlternateUpdate = 1;
}

- (void)revealHiddenAlteranteUpdate
{
  objc_storeStrong(&self->_alternateUpdate, self->_hiddenAlternateUpdate);
  objc_storeStrong(&self->_hiddenAlternateUpdate, 0);
  self->_hidingAlternateUpdate = 0;
}

- (void)refreshErrors:(id)errors alternateError:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, errors);
  v23 = 0;
  objc_storeStrong(&v23, error);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  v5 = objc_alloc(MEMORY[0x277D64890]);
  v21 = [v5 initWithDescriptor:selfCopy->_preferredUpdate];
  [v21 setAllowUnrestrictedCellularDownload:{-[SUSUISoftwareUpdateManager allowCellularOverride](selfCopy, "allowCellularOverride")}];
  [v21 setDownloadFeeAgreementStatus:{-[SUSUIUpdateAgreementManager cellularFeeAgreementStatusForUpdate:](selfCopy->_updateAgreementManager, "cellularFeeAgreementStatusForUpdate:", selfCopy->_preferredUpdate)}];
  v6 = objc_alloc(MEMORY[0x277D64890]);
  v20 = [v6 initWithDescriptor:selfCopy->_alternateUpdate];
  [v20 setAllowUnrestrictedCellularDownload:{-[SUSUISoftwareUpdateManager allowCellularOverride](selfCopy, "allowCellularOverride")}];
  [v20 setDownloadFeeAgreementStatus:{-[SUSUIUpdateAgreementManager cellularFeeAgreementStatusForUpdate:](selfCopy->_updateAgreementManager, "cellularFeeAgreementStatusForUpdate:", selfCopy->_alternateUpdate)}];
  suClient = selfCopy->_suClient;
  v9 = v21;
  v10 = v20;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __70__SUSUISoftwareUpdateManager_refreshErrors_alternateError_completion___block_invoke;
  v15 = &unk_279CBE690;
  v16 = MEMORY[0x277D82BE0](selfCopy);
  v17 = MEMORY[0x277D82BE0](location[0]);
  v18 = MEMORY[0x277D82BE0](v23);
  v19 = MEMORY[0x277D82BE0](v22);
  [(SUSUISoftwareUpdateClientManager *)suClient updatesDownloadable:v9 alternateUpdate:v10 completion:?];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

void __70__SUSUISoftwareUpdateManager_refreshErrors_alternateError_completion___block_invoke(NSObject *a1, char a2, char a3, id obj, void *a5)
{
  v66 = &v84;
  v65 = a1;
  obja = a5;
  v63 = "[SUSUISoftwareUpdateManager refreshErrors:alternateError:completion:]_block_invoke";
  v94 = *MEMORY[0x277D85DE8];
  v92 = a1;
  v91 = a2;
  v90 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v88 = 0;
  objc_storeStrong(&v88, obja);
  v87[1] = v65;
  v87[0] = _SUSUILoggingFacility();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v87[0], OS_LOG_TYPE_DEFAULT))
  {
    log = *(v66 + 3);
    *v59 = type;
    v60 = SUSUISoftwareUpdateStateToString(*(v65[4].isa + 22));
    v5 = MEMORY[0x277D82BE0](v60);
    v6 = v65;
    v61 = v5;
    *(v66 + 1) = v5;
    v62 = *(v6[4].isa + 22);
    v7 = *(v6[4].isa + 15);
    v83 = 0;
    if (v7)
    {
      v8 = [*(v65[4].isa + 15) humanReadableUpdateName];
      *v66 = v8;
      v83 = 1;
      v57 = v8;
    }

    else
    {
      v57 = @"N/A";
    }

    v54 = v57;
    v55 = *(v65[4].isa + 15);
    v56 = *(v65[4].isa + 20);
    v9 = *(v65[4].isa + 16);
    v81 = 0;
    if (v9)
    {
      v82 = [*(v65[4].isa + 16) humanReadableUpdateName];
      v81 = 1;
      v53 = v82;
    }

    else
    {
      v53 = @"N/A";
    }

    v49 = v53;
    v50 = *(v65[4].isa + 16);
    v51 = *(v65[4].isa + 21);
    v52 = *(v65[4].isa + 1);
    v10 = *(v65[4].isa + 1);
    v79 = 0;
    v77 = 0;
    v75 = 0;
    if (v10 && (v80 = [*(v65[4].isa + 1) descriptor], v79 = 1, v80))
    {
      v78 = [*(v65[4].isa + 1) descriptor];
      v47 = 1;
      v77 = 1;
      v76 = [v78 humanReadableUpdateName];
      v75 = 1;
      v48 = v76;
    }

    else
    {
      v48 = @"N/A";
    }

    v44 = v48;
    WeakRetained = objc_loadWeakRetained(v65[4].isa + 13);
    v46 = objc_loadWeakRetained(v65[4].isa + 13);
    v73 = 0;
    v71 = 0;
    if (v46)
    {
      v74 = objc_loadWeakRetained(v65[4].isa + 13);
      v42 = 1;
      v73 = 1;
      v11 = objc_opt_class();
      v72 = NSStringFromClass(v11);
      v71 = 1;
      v43 = v72;
    }

    else
    {
      v43 = @"N/A";
    }

    v39 = v43;
    v40 = objc_loadWeakRetained(v65[4].isa + 14);
    v41 = objc_loadWeakRetained(v65[4].isa + 14);
    v69 = 0;
    v67 = 0;
    if (v41)
    {
      v70 = objc_loadWeakRetained(v65[4].isa + 14);
      v37 = 1;
      v69 = 1;
      v12 = objc_opt_class();
      v68 = NSStringFromClass(v12);
      v67 = 1;
      v38 = v68;
    }

    else
    {
      v38 = @"N/A";
    }

    v13 = *(v66 + 6);
    v14 = *(v66 + 5);
    v35 = &v16;
    buf = v93;
    __os_log_helper_16_2_19_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0_8_66_4_0_8_66(v93, v63, v61, v62, v54, v55, v56, v49, v50, v51, v52, v44, WeakRetained, v39, v40, v38, v91 & 1, v13, v90 & 1, v14);
    _os_log_impl(&dword_26AC94000, log, v59[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\npreferredDownloadable: %d, preferredError: %{public}@, alternateDownloadable: %d, alternateError: %{public}@", buf, 0xB4u);
    if (v67)
    {
      MEMORY[0x277D82BD8](v68);
    }

    if (v69)
    {
      MEMORY[0x277D82BD8](v70);
    }

    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v40);
    if (v71)
    {
      MEMORY[0x277D82BD8](v72);
    }

    if (v73)
    {
      MEMORY[0x277D82BD8](v74);
    }

    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v75)
    {
      MEMORY[0x277D82BD8](v76);
    }

    if (v77)
    {
      MEMORY[0x277D82BD8](v78);
    }

    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](*v66);
    }

    MEMORY[0x277D82BD8](v60);
    objc_storeStrong(&v85, 0);
  }

  objc_storeStrong(v87, 0);
  v15 = v65;
  *(v65[4].isa + 48) = v91 & 1;
  *(v15[4].isa + 49) = v90 & 1;
  v33 = [(objc_class *)v15[4].isa download];
  v32 = [v33 progress];
  v34 = [v32 isDone];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  if (v34)
  {
    v30 = [(objc_class *)v65[4].isa download];
    v29 = [v30 descriptor];
    v28 = [(objc_class *)v65[4].isa preferredUpdate];
    v31 = [v29 isEqual:?];
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    if (v31)
    {
      objc_storeStrong(&location, 0);
    }

    else
    {
      v26 = [(objc_class *)v65[4].isa download];
      v25 = [v26 descriptor];
      v24 = [(objc_class *)v65[4].isa alternateUpdate];
      v27 = [v25 isEqual:?];
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      if (v27)
      {
        objc_storeStrong(&v88, 0);
      }
    }
  }

  isa = v65[4].isa;
  v23 = v65[5].isa;
  if (v23)
  {
    v21 = v23;
  }

  else
  {
    v21 = *(v66 + 6);
  }

  [(objc_class *)isa setPreferredUpdateError:v21];
  v19 = v65[4].isa;
  v20 = v65[6].isa;
  if (v20)
  {
    v18 = v20;
  }

  else
  {
    v18 = *(v66 + 5);
  }

  [(objc_class *)v19 setAlternateUpdateError:v18];
  if (v65[7].isa)
  {
    (*(v65[7].isa + 2))();
  }

  v17 = 0;
  objc_storeStrong(&v88, 0);
  objc_storeStrong(&location, v17);
  *MEMORY[0x277D85DE8];
}

- (BOOL)errorsAreEqual:(id)equal error2:(id)error2 oldDescription:(id)description
{
  selfCopy = self;
  v19 = a2;
  *(&v18 + 1) = 0;
  objc_storeStrong(&v18 + 1, equal);
  *&v18 = 0;
  objc_storeStrong(&v18, error2);
  v17 = 0;
  objc_storeStrong(&v17, description);
  if (v18 == 0)
  {
    v21 = 1;
    v16 = 1;
  }

  else
  {
    domain = [*(&v18 + 1) domain];
    domain2 = [v18 domain];
    v9 = 1;
    if ([domain isEqualToString:?])
    {
      code = [*(&v18 + 1) code];
      v9 = code != [v18 code];
    }

    MEMORY[0x277D82BD8](domain2);
    MEMORY[0x277D82BD8](domain);
    if (v9)
    {
      v21 = 0;
      v16 = 1;
    }

    else
    {
      v15 = 0;
      v14 = 0;
      v13 = [(SUSUISoftwareUpdateManager *)selfCopy humanReadableDescriptionForError:*(&v18 + 1) enableButton:&v15];
      v12 = [(SUSUISoftwareUpdateManager *)selfCopy humanReadableDescriptionForError:v18 enableButton:&v14];
      if ((v15 & 1) == (v14 & 1))
      {
        if (v13 || v12)
        {
          if (v12 && ([v13 isEqualToString:v12] & 1) != 0)
          {
            v21 = ([v17 isEqualToString:v13] & 1) != 0;
            v16 = 1;
          }

          else
          {
            v21 = 0;
            v16 = 1;
          }
        }

        else
        {
          v21 = v17 == 0;
          v16 = 1;
        }
      }

      else
      {
        v21 = 0;
        v16 = 1;
      }

      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v18 + 1, 0);
  return v21;
}

- (void)_requestLayoutSubviews
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v4)
  {
    v2 = objc_loadWeakRetained(&self->_delegate);
    [v2 manager:self needsLayoutSubviewsForState:self->_state];
    MEMORY[0x277D82BD8](v2);
  }
}

- (void)_batteryStateChanged:(id)changed
{
  v46 = &v65;
  v43 = "[SUSUISoftwareUpdateManager _batteryStateChanged:]";
  v73 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  batteryState = [currentDevice batteryState];
  MEMORY[0x277D82BD8](currentDevice);
  v70 = batteryState;
  v47 = 1;
  if (batteryState != 2)
  {
    v47 = *(v46 + 5) == 3;
  }

  v69 = v47;
  v3 = _SUSUILoggingFacility();
  v4 = v46;
  *(v46 + 3) = v3;
  v67 = 0;
  if (os_log_type_enabled(v4[3], OS_LOG_TYPE_DEFAULT))
  {
    log = *(v46 + 3);
    *type = v67;
    v40 = SUSUISoftwareUpdateStateToString(*(*(v46 + 8) + 88));
    v5 = MEMORY[0x277D82BE0](v40);
    v6 = v46;
    v41 = v5;
    *(v46 + 1) = v5;
    v42 = *(*(v6 + 8) + 88);
    v7 = *(*(v6 + 8) + 120);
    v64 = 0;
    if (v7)
    {
      humanReadableUpdateName = [*(*(v46 + 8) + 120) humanReadableUpdateName];
      *v46 = humanReadableUpdateName;
      v64 = 1;
      v37 = humanReadableUpdateName;
    }

    else
    {
      v37 = @"N/A";
    }

    v34 = v37;
    v35 = *(*(v46 + 8) + 120);
    v36 = *(*(v46 + 8) + 160);
    v9 = *(*(v46 + 8) + 128);
    v62 = 0;
    if (v9)
    {
      humanReadableUpdateName2 = [*(*(v46 + 8) + 128) humanReadableUpdateName];
      v62 = 1;
      v33 = humanReadableUpdateName2;
    }

    else
    {
      v33 = @"N/A";
    }

    v29 = v33;
    v30 = *(*(v46 + 8) + 128);
    v31 = *(*(v46 + 8) + 168);
    v32 = *(*(v46 + 8) + 8);
    v10 = *(*(v46 + 8) + 8);
    v60 = 0;
    v58 = 0;
    v56 = 0;
    if (v10 && (v61 = [*(*(v46 + 8) + 8) descriptor], v60 = 1, v61))
    {
      descriptor = [*(*(v46 + 8) + 8) descriptor];
      v27 = 1;
      v58 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      v56 = 1;
      v28 = humanReadableUpdateName3;
    }

    else
    {
      v28 = @"N/A";
    }

    v24 = v28;
    WeakRetained = objc_loadWeakRetained((*(v46 + 8) + 104));
    v26 = objc_loadWeakRetained((*(v46 + 8) + 104));
    v54 = 0;
    v52 = 0;
    if (v26)
    {
      v55 = objc_loadWeakRetained((*(v46 + 8) + 104));
      v22 = 1;
      v54 = 1;
      v11 = objc_opt_class();
      v53 = NSStringFromClass(v11);
      v52 = 1;
      v23 = v53;
    }

    else
    {
      v23 = @"N/A";
    }

    v19 = v23;
    v20 = objc_loadWeakRetained((*(v46 + 8) + 112));
    v21 = objc_loadWeakRetained((*(v46 + 8) + 112));
    v50 = 0;
    v48 = 0;
    if (v21)
    {
      v51 = objc_loadWeakRetained((*(v46 + 8) + 112));
      v17 = 1;
      v50 = 1;
      v12 = objc_opt_class();
      v49 = NSStringFromClass(v12);
      v48 = 1;
      v18 = v49;
    }

    else
    {
      v18 = @"N/A";
    }

    v13 = *(*(v46 + 8) + 24) & 1;
    v15[9] = v15;
    buf = v72;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0_4_0(v72, v43, v41, v42, v34, v35, v36, v29, v30, v31, v32, v24, WeakRetained, v19, v20, v18, v13, v69);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nBattery state changed: %d -> %d", buf, 0xA0u);
    if (v48)
    {
      MEMORY[0x277D82BD8](v49);
    }

    if (v50)
    {
      MEMORY[0x277D82BD8](v51);
    }

    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v20);
    if (v52)
    {
      MEMORY[0x277D82BD8](v53);
    }

    if (v54)
    {
      MEMORY[0x277D82BD8](v55);
    }

    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v56)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v58)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v60)
    {
      MEMORY[0x277D82BD8](v61);
    }

    if (v62)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](*v46);
    }

    MEMORY[0x277D82BD8](v40);
    objc_storeStrong(&v66, 0);
  }

  objc_storeStrong(&v68, 0);
  if ((*(*(v46 + 8) + 24) & 1) != v69)
  {
    v14 = v46;
    *(*(v46 + 8) + 24) = v69;
    [v14[8] refreshState];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_batteryLevelChanged:(id)changed
{
  v47 = &v66;
  v45 = "[SUSUISoftwareUpdateManager _batteryLevelChanged:]";
  v76 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  v48 = 0.2;
  v72 = 1045220557;
  v71 = 0.5;
  batteryLevel = selfCopy->_batteryLevel;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice batteryLevel];
  v3 = currentDevice;
  selfCopy->_batteryLevel = v4;
  MEMORY[0x277D82BD8](v3);
  if (*(*(v47 + 8) + 28) < v48 && *(v47 + 9) >= 0.2 || *(*(v47 + 8) + 28) >= 0.2 && *(v47 + 9) < 0.2 || *(*(v47 + 8) + 28) < 0.5 && *(v47 + 9) >= 0.5 || *(*(v47 + 8) + 28) >= 0.5 && *(v47 + 9) < 0.5)
  {
    v5 = _SUSUILoggingFacility();
    v6 = v47;
    *(v47 + 3) = v5;
    v68 = 0;
    if (os_log_type_enabled(v6[3], OS_LOG_TYPE_DEFAULT))
    {
      log = *(v47 + 3);
      *type = v68;
      v42 = SUSUISoftwareUpdateStateToString(*(*(v47 + 8) + 88));
      v7 = MEMORY[0x277D82BE0](v42);
      v8 = v47;
      v43 = v7;
      *(v47 + 1) = v7;
      v44 = *(*(v8 + 8) + 88);
      v9 = *(*(v8 + 8) + 120);
      v65 = 0;
      if (v9)
      {
        humanReadableUpdateName = [*(*(v47 + 8) + 120) humanReadableUpdateName];
        *v47 = humanReadableUpdateName;
        v65 = 1;
        v39 = humanReadableUpdateName;
      }

      else
      {
        v39 = @"N/A";
      }

      v36 = v39;
      v37 = *(*(v47 + 8) + 120);
      v38 = *(*(v47 + 8) + 160);
      v11 = *(*(v47 + 8) + 128);
      v63 = 0;
      if (v11)
      {
        humanReadableUpdateName2 = [*(*(v47 + 8) + 128) humanReadableUpdateName];
        v63 = 1;
        v35 = humanReadableUpdateName2;
      }

      else
      {
        v35 = @"N/A";
      }

      v31 = v35;
      v32 = *(*(v47 + 8) + 128);
      v33 = *(*(v47 + 8) + 168);
      v34 = *(*(v47 + 8) + 8);
      v12 = *(*(v47 + 8) + 8);
      v61 = 0;
      v59 = 0;
      v57 = 0;
      if (v12 && (v62 = [*(*(v47 + 8) + 8) descriptor], v61 = 1, v62))
      {
        descriptor = [*(*(v47 + 8) + 8) descriptor];
        v29 = 1;
        v59 = 1;
        humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
        v57 = 1;
        v30 = humanReadableUpdateName3;
      }

      else
      {
        v30 = @"N/A";
      }

      v26 = v30;
      WeakRetained = objc_loadWeakRetained((*(v47 + 8) + 104));
      v28 = objc_loadWeakRetained((*(v47 + 8) + 104));
      v55 = 0;
      v53 = 0;
      if (v28)
      {
        v56 = objc_loadWeakRetained((*(v47 + 8) + 104));
        v24 = 1;
        v55 = 1;
        v13 = objc_opt_class();
        v54 = NSStringFromClass(v13);
        v53 = 1;
        v25 = v54;
      }

      else
      {
        v25 = @"N/A";
      }

      v21 = v25;
      v22 = objc_loadWeakRetained((*(v47 + 8) + 112));
      v23 = objc_loadWeakRetained((*(v47 + 8) + 112));
      v51 = 0;
      v49 = 0;
      if (v23)
      {
        v52 = objc_loadWeakRetained((*(v47 + 8) + 112));
        v19 = 1;
        v51 = 1;
        v14 = objc_opt_class();
        v50 = NSStringFromClass(v14);
        v49 = 1;
        v20 = v50;
      }

      else
      {
        v20 = @"N/A";
      }

      *&v15 = *(v47 + 9);
      *&v16 = *(*(v47 + 8) + 28);
      v17[10] = v17;
      buf = v75;
      __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_0(v75, v45, v43, v44, v36, v37, v38, v31, v32, v33, v34, v26, WeakRetained, v21, v22, v20, v15, v16);
      _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nBattery level changed: %f -> %f", buf, 0xA8u);
      if (v49)
      {
        MEMORY[0x277D82BD8](v50);
      }

      if (v51)
      {
        MEMORY[0x277D82BD8](v52);
      }

      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v22);
      if (v53)
      {
        MEMORY[0x277D82BD8](v54);
      }

      if (v55)
      {
        MEMORY[0x277D82BD8](v56);
      }

      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](WeakRetained);
      if (v57)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName3);
      }

      if (v59)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v61)
      {
        MEMORY[0x277D82BD8](v62);
      }

      if (v63)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName2);
      }

      if (v65)
      {
        MEMORY[0x277D82BD8](*v47);
      }

      MEMORY[0x277D82BD8](v42);
      objc_storeStrong(&v67, 0);
    }

    objc_storeStrong(&v69, 0);
    [*(v47 + 8) refreshState];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_didBecomeActive:(id)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  if (selfCopy->_state != 1)
  {
    [(SUSUISoftwareUpdateManager *)selfCopy refreshState];
  }

  objc_storeStrong(location, 0);
}

- (void)networkChangedFromNetworkType:(int)type toNetworkType:(int)networkType
{
  selfCopy = self;
  v17 = a2;
  typeCopy = type;
  networkTypeCopy = networkType;
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __74__SUSUISoftwareUpdateManager_networkChangedFromNetworkType_toNetworkType___block_invoke;
  v11 = &unk_279CB97F8;
  v13 = networkTypeCopy;
  v12 = MEMORY[0x277D82BE0](selfCopy);
  v14 = typeCopy;
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
}

uint64_t __74__SUSUISoftwareUpdateManager_networkChangedFromNetworkType_toNetworkType___block_invoke(uint64_t result)
{
  v54 = &v74;
  v55 = result;
  v56 = "[SUSUISoftwareUpdateManager networkChangedFromNetworkType:toNetworkType:]_block_invoke";
  v81 = *MEMORY[0x277D85DE8];
  v79[2] = result;
  v79[1] = result;
  if (*(result + 40) != *(*(result + 32) + 20))
  {
    v1 = _SUSUILoggingFacility();
    v2 = v54;
    v54[7] = v1;
    v78 = 0;
    if (os_log_type_enabled(v2[7], OS_LOG_TYPE_DEFAULT))
    {
      log = v54[7];
      *type = v78;
      v51 = SUSUISoftwareUpdateStateToString(*(*(v55 + 32) + 88));
      v3 = MEMORY[0x277D82BE0](v51);
      v4 = v55;
      v52 = v3;
      v54[5] = v3;
      v53 = *(*(v4 + 32) + 88);
      v5 = *(*(v4 + 32) + 120);
      v76 = 0;
      if (v5)
      {
        v6 = [*(*(v55 + 32) + 120) humanReadableUpdateName];
        v54[4] = v6;
        v76 = 1;
        v48 = v6;
      }

      else
      {
        v48 = @"N/A";
      }

      v45 = v48;
      v46 = *(*(v55 + 32) + 120);
      v47 = *(*(v55 + 32) + 160);
      v7 = *(*(v55 + 32) + 128);
      v75 = 0;
      if (v7)
      {
        v8 = [*(*(v55 + 32) + 128) humanReadableUpdateName];
        v54[2] = v8;
        v75 = 1;
        v44 = v8;
      }

      else
      {
        v44 = @"N/A";
      }

      v40 = v44;
      v41 = *(*(v55 + 32) + 128);
      v42 = *(*(v55 + 32) + 168);
      v43 = *(*(v55 + 32) + 8);
      v9 = *(*(v55 + 32) + 8);
      v73 = 0;
      v71 = 0;
      v69 = 0;
      if (v9 && (v10 = [*(*(v55 + 32) + 8) descriptor], *v54 = v10, v73 = 1, v10))
      {
        v72 = [*(*(v55 + 32) + 8) descriptor];
        v38 = 1;
        v71 = 1;
        v70 = [v72 humanReadableUpdateName];
        v69 = 1;
        v39 = v70;
      }

      else
      {
        v39 = @"N/A";
      }

      v35 = v39;
      WeakRetained = objc_loadWeakRetained((*(v55 + 32) + 104));
      v37 = objc_loadWeakRetained((*(v55 + 32) + 104));
      v67 = 0;
      v65 = 0;
      if (v37)
      {
        v68 = objc_loadWeakRetained((*(v55 + 32) + 104));
        v33 = 1;
        v67 = 1;
        v11 = objc_opt_class();
        v66 = NSStringFromClass(v11);
        v65 = 1;
        v34 = v66;
      }

      else
      {
        v34 = @"N/A";
      }

      v30 = v34;
      v31 = objc_loadWeakRetained((*(v55 + 32) + 112));
      v32 = objc_loadWeakRetained((*(v55 + 32) + 112));
      v63 = 0;
      v61 = 0;
      if (v32)
      {
        v64 = objc_loadWeakRetained((*(v55 + 32) + 112));
        v28 = 1;
        v63 = 1;
        v12 = objc_opt_class();
        v62 = NSStringFromClass(v12);
        v61 = 1;
        v29 = v62;
      }

      else
      {
        v29 = @"N/A";
      }

      v21 = v29;
      v13 = *(v55 + 44);
      v27 = SUStringFromNetworkType();
      v22 = MEMORY[0x277D82BE0](v27);
      v60 = v22;
      v23 = *(v55 + 44);
      v14 = *(v55 + 40);
      v26 = SUStringFromNetworkType();
      location = MEMORY[0x277D82BE0](v26);
      v15 = *(v55 + 40);
      v24 = &v17;
      buf = v80;
      __os_log_helper_16_2_19_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64_4_0_8_66_4_0(v80, v56, v52, v53, v45, v46, v47, v40, v41, v42, v43, v35, WeakRetained, v30, v31, v29, v22, v23, location, v15);
      _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nChanged network type: %@ (%d) -> %{public}@ (%d)", buf, 0xB4u);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      if (v61)
      {
        MEMORY[0x277D82BD8](v62);
      }

      if (v63)
      {
        MEMORY[0x277D82BD8](v64);
      }

      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v31);
      if (v65)
      {
        MEMORY[0x277D82BD8](v66);
      }

      if (v67)
      {
        MEMORY[0x277D82BD8](v68);
      }

      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](WeakRetained);
      if (v69)
      {
        MEMORY[0x277D82BD8](v70);
      }

      if (v71)
      {
        MEMORY[0x277D82BD8](v72);
      }

      if (v73)
      {
        MEMORY[0x277D82BD8](*v54);
      }

      if (v75)
      {
        MEMORY[0x277D82BD8](v54[2]);
      }

      if (v76)
      {
        MEMORY[0x277D82BD8](v54[4]);
      }

      MEMORY[0x277D82BD8](v51);
      obj = 0;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v60, obj);
      objc_storeStrong(&v77, obj);
    }

    objc_storeStrong(v79, 0);
    v16 = v55;
    *(*(v55 + 32) + 20) = *(v55 + 40);
    LODWORD(v16) = *(*(v16 + 32) + 20);
    v57 = 0;
    v19 = 0;
    if (v16)
    {
      v58 = [*(v55 + 32) preferredUpdate];
      v57 = 1;
      v19 = 0;
      if (!v58)
      {
        v19 = *(*(v55 + 32) + 88) != 3;
      }
    }

    v18 = v19;
    if (v57)
    {
      MEMORY[0x277D82BD8](v58);
    }

    if (v18)
    {
      result = [*(v55 + 32) setState:0];
    }

    else
    {
      result = [*(v55 + 32) refreshState];
    }
  }

  *MEMORY[0x277D85DE8];
  return result;
}

- (NSString)prettyUpdateName
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(SUSUISoftwareUpdateManager *)self update];
  if (location[0])
  {
    v6 = [(SUSUISoftwareUpdateManager *)selfCopy prettyNameForUpdate:location[0]];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v6;

  return v2;
}

- (id)prettyNameForUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v36 = 0;
  if (location[0])
  {
    humanReadableUpdateName = [location[0] humanReadableUpdateName];
    v4 = v36;
    v36 = humanReadableUpdateName;
    MEMORY[0x277D82BD8](v4);
  }

  if (!v36 || ![v36 length])
  {
    v35 = 0;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_isiPad = [currentDevice sf_isiPad];
    MEMORY[0x277D82BD8](currentDevice);
    if (sf_isiPad)
    {
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v26 localizedStringForKey:@"iPadOS_VERSION" value:&stru_287B79370 table:@"Software Update"];
      v6 = v35;
      v35 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v26);
    }

    else
    {
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v25 localizedStringForKey:@"iOS_VERSION" value:&stru_287B79370 table:@"Software Update"];
      v8 = v35;
      v35 = v7;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v25);
    }

    systemVersion = 0;
    v32 = 0;
    v24 = 0;
    if (location[0])
    {
      productVersion = [location[0] productVersion];
      v32 = 1;
      v24 = productVersion != 0;
    }

    if (v32)
    {
      MEMORY[0x277D82BD8](productVersion);
    }

    if (v24)
    {
      productVersion2 = [location[0] productVersion];
      v10 = systemVersion;
      systemVersion = productVersion2;
      MEMORY[0x277D82BD8](v10);
    }

    else
    {
      productVersionWithExtra = [(SUSUISoftwareUpdateManager *)selfCopy productVersionWithExtra];
      v12 = systemVersion;
      systemVersion = productVersionWithExtra;
      MEMORY[0x277D82BD8](v12);
      if (!systemVersion)
      {
        currentDevice2 = [MEMORY[0x277D75418] currentDevice];
        systemVersion = [currentDevice2 systemVersion];
        MEMORY[0x277D82BD8](0);
        MEMORY[0x277D82BD8](currentDevice2);
      }
    }

    v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v35 validFormatSpecifiers:@"%@" error:systemVersion];
    v14 = v36;
    v36 = v13;
    MEMORY[0x277D82BD8](v14);
    objc_storeStrong(&systemVersion, 0);
    objc_storeStrong(&v35, 0);
  }

  v30 = 0;
  sf_isInternalInstall = 0;
  if (!location[0])
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    v30 = 1;
    sf_isInternalInstall = [currentDevice3 sf_isInternalInstall];
  }

  if (v30)
  {
    MEMORY[0x277D82BD8](currentDevice3);
  }

  if (sf_isInternalInstall)
  {
    buildVersionIncludingRSR = [(SUSUISoftwareUpdateManager *)selfCopy buildVersionIncludingRSR];
    v19 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v21 localizedStringForKey:@"%@ (%@)" value:&stru_287B79370 table:@"Software Update"];
    v15 = [v19 stringWithFormat:v36, buildVersionIncludingRSR];
    v16 = v36;
    v36 = v15;
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    objc_storeStrong(&buildVersionIncludingRSR, 0);
  }

  v18 = MEMORY[0x277D82BE0](v36);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);

  return v18;
}

- (id)productVersionWithExtra
{
  v7[2] = self;
  v7[1] = a2;
  v7[0] = 0;
  location = _CFCopySupplementalVersionDictionary();
  if (location)
  {
    v2 = [location objectForKeyedSubscript:*MEMORY[0x277CBEC90]];
    v3 = v7[0];
    v7[0] = v2;
    MEMORY[0x277D82BD8](v3);
  }

  v5 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);

  return v5;
}

- (id)buildVersionIncludingRSR
{
  v7[2] = self;
  v7[1] = a2;
  v7[0] = 0;
  location = _CFCopySupplementalVersionDictionary();
  if (location)
  {
    v2 = [location objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
    v3 = v7[0];
    v7[0] = v2;
    MEMORY[0x277D82BD8](v3);
  }

  v5 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);

  return v5;
}

- (BOOL)readyToDownload
{
  v3 = 1;
  if (![(SUSUISoftwareUpdateManager *)self readyToDownloadPreferredUpdate])
  {
    return [(SUSUISoftwareUpdateManager *)self readyToDownloadAlternateUpdate];
  }

  return v3;
}

- (BOOL)canCancelAutoInstall
{
  installPolicy = [(SUSUISoftwareUpdateManager *)self installPolicy];
  v4 = [(SUInstallPolicy *)installPolicy type]!= 1;
  MEMORY[0x277D82BD8](installPolicy);
  return v4;
}

- (void)purgeCurrentDownloadWithHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  suClient = selfCopy->_suClient;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __62__SUSUISoftwareUpdateManager_purgeCurrentDownloadWithHandler___block_invoke;
  v8 = &unk_279CBE6B8;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [(SUSUISoftwareUpdateClientManager *)suClient purgeDownload:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __62__SUSUISoftwareUpdateManager_purgeCurrentDownloadWithHandler___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

- (SUDownload)download
{
  obj = MEMORY[0x277D82BE0](self);
  objc_sync_enter(obj);
  v4 = MEMORY[0x277D82BE0](self->_download);
  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);

  return v4;
}

- (void)setDownload:(id)download
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  obj = MEMORY[0x277D82BE0](selfCopy);
  objc_sync_enter(obj);
  if (location[0] != selfCopy->_download || (v11 = selfCopy->_download, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v25 = _SUSUILoggingFacility();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 0;
      v21 = 0;
      v19 = 0;
      if (selfCopy->_download && (v24 = [(SUDownload *)selfCopy->_download descriptor], v23 = 1, v24))
      {
        descriptor = [(SUDownload *)selfCopy->_download descriptor];
        v21 = 1;
        humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
        v19 = 1;
        v10 = humanReadableUpdateName;
      }

      else
      {
        v10 = @"N/A";
      }

      download = selfCopy->_download;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v3 = @"YES";
      if ((isKindOfClass & 1) == 0)
      {
        v3 = @"NO";
      }

      v7 = v3;
      v17 = 0;
      v15 = 0;
      v13 = 0;
      if (location[0] && (v18 = [location[0] descriptor], v17 = 1, v18))
      {
        descriptor2 = [location[0] descriptor];
        v15 = 1;
        humanReadableUpdateName2 = [descriptor2 humanReadableUpdateName];
        v13 = 1;
        v6 = humanReadableUpdateName2;
      }

      else
      {
        v6 = @"N/A";
      }

      v5 = location[0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      __os_log_helper_16_2_7_8_32_8_66_8_0_8_66_8_66_8_0_8_66(v28, "[SUSUISoftwareUpdateManager setDownload:]", v10, download, v7, v6, v5, v4);
      _os_log_impl(&dword_26AC94000, v25, OS_LOG_TYPE_DEFAULT, "%s: Replacing the current download object with a new one.\n\tCurrent: %{public}@ (%p, is SUSUIUninitializedDownload? %{public}@)\n\tNew: %{public}@ (%p, is SUSUIUninitializedDownload? %{public}@)\n", v28, 0x48u);
      if (v13)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName2);
      }

      if (v15)
      {
        MEMORY[0x277D82BD8](descriptor2);
      }

      if (v17)
      {
        MEMORY[0x277D82BD8](v18);
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName);
      }

      if (v21)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v23)
      {
        MEMORY[0x277D82BD8](v24);
      }
    }

    objc_storeStrong(&v25, 0);
    objc_storeStrong(&selfCopy->_download, location[0]);
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_reallyDownloadAndInstall:(unint64_t)install update:(id)update AcceptingCellularFees:(int)fees completion:(id)completion
{
  v75 = &v93;
  feesCopy = fees;
  obj = completion;
  v78 = "[SUSUISoftwareUpdateManager _reallyDownloadAndInstall:update:AcceptingCellularFees:completion:]";
  v108 = *MEMORY[0x277D85DE8];
  location[3] = self;
  location[2] = a2;
  location[1] = install;
  location[0] = 0;
  objc_storeStrong(location, update);
  v105 = feesCopy;
  v104 = 0;
  objc_storeStrong(&v104, obj);
  v74 = _SUSUILoggingFacility();
  v103 = v74;
  v102 = 0;
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v75 + 17);
    *type = v102;
    updated = SUSUISoftwareUpdateStateToString(*(*(v75 + 23) + 88));
    v68 = updated;
    v6 = MEMORY[0x277D82BE0](v68);
    v7 = v75;
    v69 = v6;
    *(v75 + 15) = v6;
    v70 = *(*(v7 + 23) + 88);
    v8 = *(*(v7 + 23) + 120);
    v100 = 0;
    if (v8)
    {
      humanReadableUpdateName = [*(*(v75 + 23) + 120) humanReadableUpdateName];
      v9 = humanReadableUpdateName;
      *(v75 + 14) = v9;
      v100 = 1;
      v66 = v9;
    }

    else
    {
      v66 = @"N/A";
    }

    v63 = v66;
    v64 = *(*(v75 + 23) + 120);
    v65 = *(*(v75 + 23) + 160);
    v10 = *(*(v75 + 23) + 128);
    v99 = 0;
    if (v10)
    {
      humanReadableUpdateName2 = [*(*(v75 + 23) + 128) humanReadableUpdateName];
      v11 = humanReadableUpdateName2;
      *(v75 + 12) = v11;
      v99 = 1;
      v61 = v11;
    }

    else
    {
      v61 = @"N/A";
    }

    v57 = v61;
    v58 = *(*(v75 + 23) + 128);
    v59 = *(*(v75 + 23) + 168);
    v60 = *(*(v75 + 23) + 8);
    v12 = *(*(v75 + 23) + 8);
    v98 = 0;
    v97 = 0;
    v96 = 0;
    if (v12 && (v56 = [*(*(v75 + 23) + 8) descriptor], v13 = v56, *(v75 + 10) = v13, v98 = 1, v13))
    {
      descriptor = [*(*(v75 + 23) + 8) descriptor];
      v14 = descriptor;
      *(v75 + 8) = v14;
      v97 = 1;
      humanReadableUpdateName3 = [v14 humanReadableUpdateName];
      v15 = humanReadableUpdateName3;
      *(v75 + 6) = v15;
      v96 = 1;
      v53 = v15;
    }

    else
    {
      v53 = @"N/A";
    }

    v51 = v53;
    WeakRetained = objc_loadWeakRetained((*(v75 + 23) + 104));
    v50 = objc_loadWeakRetained((*(v75 + 23) + 104));
    v95 = 0;
    v94 = 0;
    if (v50)
    {
      v49 = objc_loadWeakRetained((*(v75 + 23) + 104));
      *(v75 + 4) = v49;
      v95 = 1;
      aClass = objc_opt_class();
      v47 = NSStringFromClass(aClass);
      v16 = v47;
      *(v75 + 2) = v16;
      v94 = 1;
      v46 = v16;
    }

    else
    {
      v46 = @"N/A";
    }

    v44 = v46;
    v45 = objc_loadWeakRetained((*(v75 + 23) + 112));
    v43 = objc_loadWeakRetained((*(v75 + 23) + 112));
    v92 = 0;
    v90 = 0;
    if (v43)
    {
      v42 = objc_loadWeakRetained((*(v75 + 23) + 112));
      *v75 = v42;
      v92 = 1;
      v41 = objc_opt_class();
      v40 = NSStringFromClass(v41);
      v91 = v40;
      v90 = 1;
      v39 = v91;
    }

    else
    {
      v39 = @"N/A";
    }

    v37 = v39;
    humanReadableUpdateName4 = [*(v75 + 20) humanReadableUpdateName];
    v36 = humanReadableUpdateName4;
    v89 = MEMORY[0x277D82BE0](v36);
    v34 = &v18;
    buf = v107;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_66_4_0(v107, v78, v69, v70, v63, v64, v65, v57, v58, v59, v60, v51, WeakRetained, v44, v45, v39, v89, v105);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nStarting the download and install of '%{public}@'. cellularFeeAcceptance: %d", buf, 0xA4u);
    MEMORY[0x277D82BD8](v36);
    if (v90)
    {
      MEMORY[0x277D82BD8](v91);
    }

    if (v92)
    {
      MEMORY[0x277D82BD8](*v75);
    }

    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v45);
    if (v94)
    {
      MEMORY[0x277D82BD8](*(v75 + 2));
    }

    if (v95)
    {
      MEMORY[0x277D82BD8](*(v75 + 4));
    }

    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v96)
    {
      MEMORY[0x277D82BD8](*(v75 + 6));
    }

    if (v97)
    {
      MEMORY[0x277D82BD8](*(v75 + 8));
    }

    if (v98)
    {
      MEMORY[0x277D82BD8](*(v75 + 10));
    }

    if (v99)
    {
      MEMORY[0x277D82BD8](*(v75 + 12));
    }

    if (v100)
    {
      MEMORY[0x277D82BD8](*(v75 + 14));
    }

    MEMORY[0x277D82BD8](v68);
    objc_storeStrong(&v89, 0);
    objc_storeStrong(&v101, 0);
  }

  objc_storeStrong(&v103, 0);
  v33 = objc_alloc(MEMORY[0x277D64890]);
  v32 = [v33 initWithDescriptor:*(v75 + 20)];
  v88 = v32;
  SUDownloadPolicyFactoryClass_0 = getSUDownloadPolicyFactoryClass_0();
  v29 = *(v75 + 20);
  allowCellularOverride = [*(v75 + 23) allowCellularOverride];
  v28 = [SUDownloadPolicyFactoryClass_0 userDownloadPolicyForDescriptor:v29 existingPolicy:0 allowCellularOverride:allowCellularOverride];
  v87 = v28;
  v27 = *(v75 + 21);
  if (!v27)
  {
    goto LABEL_40;
  }

  if (v27 == 2)
  {
    [v88 setUserUpdateTonight:1];
LABEL_40:
    [v88 setDownloadOnly:1];
  }

  [v88 setActiveDownloadPolicy:v87];
  [v88 setDownloadFeeAgreementStatus:v105];
  [v88 setTermsAndConditionsAgreementStatus:1];
  v17 = v75;
  *(*(v75 + 23) + 40) = -1.0;
  objc_initWeak(&from, v17[23]);
  v22 = *(*(v75 + 23) + 56);
  v23 = v88;
  v25 = &v79;
  v79 = MEMORY[0x277D85DD0];
  v80 = -1073741824;
  v81 = 0;
  v82 = __96__SUSUISoftwareUpdateManager__reallyDownloadAndInstall_update_AcceptingCellularFees_completion___block_invoke;
  v83 = &unk_279CBE758;
  v24 = &v84;
  v84 = MEMORY[0x277D82BE0](*(v75 + 23));
  v26 = v25 + 7;
  objc_copyWeak(v25 + 7, &from);
  v21 = &v79;
  v19 = v85;
  v85[0] = MEMORY[0x277D82BE0](*(v75 + 20));
  v20 = (v21 + 6);
  v85[1] = MEMORY[0x277D82BE0](*(v75 + 18));
  v85[3] = *(v75 + 21);
  [v22 startDownloadWithOptions:v23 completion:v21];
  objc_storeStrong(v20, 0);
  objc_storeStrong(v19, 0);
  objc_destroyWeak(v26);
  objc_storeStrong(v24, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v88, 0);
  objc_storeStrong(&v104, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __96__SUSUISoftwareUpdateManager__reallyDownloadAndInstall_update_AcceptingCellularFees_completion___block_invoke(NSObject *a1, char a2, id obj)
{
  v69 = &v85;
  v70 = a1;
  v71 = "[SUSUISoftwareUpdateManager _reallyDownloadAndInstall:update:AcceptingCellularFees:completion:]_block_invoke";
  v99 = *MEMORY[0x277D85DE8];
  v97 = a1;
  v96 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v94[1] = v70;
  v68 = _SUSUILoggingFacility();
  v94[0] = v68;
  v93 = 0;
  if (os_log_type_enabled(v94[0], OS_LOG_TYPE_DEFAULT))
  {
    log = *(v69 + 15);
    *type = v93;
    updated = SUSUISoftwareUpdateStateToString(*(v70[4].isa + 22));
    v62 = updated;
    v3 = MEMORY[0x277D82BE0](v62);
    v4 = v70;
    v63 = v3;
    *(v69 + 13) = v3;
    v64 = *(v4[4].isa + 22);
    v5 = *(v4[4].isa + 15);
    v91 = 0;
    if (v5)
    {
      v61 = [*(v70[4].isa + 15) humanReadableUpdateName];
      v6 = v61;
      *(v69 + 12) = v6;
      v91 = 1;
      v60 = v6;
    }

    else
    {
      v60 = @"N/A";
    }

    v57 = v60;
    v58 = *(v70[4].isa + 15);
    v59 = *(v70[4].isa + 20);
    v7 = *(v70[4].isa + 16);
    v90 = 0;
    if (v7)
    {
      v56 = [*(v70[4].isa + 16) humanReadableUpdateName];
      v8 = v56;
      *(v69 + 10) = v8;
      v90 = 1;
      v55 = v8;
    }

    else
    {
      v55 = @"N/A";
    }

    v51 = v55;
    v52 = *(v70[4].isa + 16);
    v53 = *(v70[4].isa + 21);
    v54 = *(v70[4].isa + 1);
    v9 = *(v70[4].isa + 1);
    v89 = 0;
    v88 = 0;
    v87 = 0;
    if (v9 && (v50 = [*(v70[4].isa + 1) descriptor], v10 = v50, *(v69 + 8) = v10, v89 = 1, v10))
    {
      v49 = [*(v70[4].isa + 1) descriptor];
      v11 = v49;
      *(v69 + 6) = v11;
      v88 = 1;
      v48 = [v11 humanReadableUpdateName];
      v12 = v48;
      *(v69 + 4) = v12;
      v87 = 1;
      v47 = v12;
    }

    else
    {
      v47 = @"N/A";
    }

    v45 = v47;
    WeakRetained = objc_loadWeakRetained(v70[4].isa + 13);
    v44 = objc_loadWeakRetained(v70[4].isa + 13);
    v86 = 0;
    v84 = 0;
    if (v44)
    {
      v43 = objc_loadWeakRetained(v70[4].isa + 13);
      *(v69 + 2) = v43;
      v86 = 1;
      aClass = objc_opt_class();
      v41 = NSStringFromClass(aClass);
      v13 = v41;
      *v69 = v13;
      v84 = 1;
      v40 = v13;
    }

    else
    {
      v40 = @"N/A";
    }

    v38 = v40;
    v39 = objc_loadWeakRetained(v70[4].isa + 14);
    v37 = objc_loadWeakRetained(v70[4].isa + 14);
    v82 = 0;
    v80 = 0;
    if (v37)
    {
      v36 = objc_loadWeakRetained(v70[4].isa + 14);
      v83 = v36;
      v82 = 1;
      v35 = objc_opt_class();
      v34 = NSStringFromClass(v35);
      v81 = v34;
      v80 = 1;
      v33 = v81;
    }

    else
    {
      v33 = @"N/A";
    }

    v14 = *(v69 + 17);
    v31 = &v15;
    buf = v98;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0_8_66(v98, v71, v63, v64, v57, v58, v59, v51, v52, v53, v54, v45, WeakRetained, v38, v39, v33, v96 & 1, v14);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nstartDownloadWithOptions - successfullyStarted: %d; error: %{public}@", buf, 0xA4u);
    if (v80)
    {
      MEMORY[0x277D82BD8](v81);
    }

    if (v82)
    {
      MEMORY[0x277D82BD8](v83);
    }

    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v39);
    if (v84)
    {
      MEMORY[0x277D82BD8](*v69);
    }

    if (v86)
    {
      MEMORY[0x277D82BD8](*(v69 + 2));
    }

    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v87)
    {
      MEMORY[0x277D82BD8](*(v69 + 4));
    }

    if (v88)
    {
      MEMORY[0x277D82BD8](*(v69 + 6));
    }

    if (v89)
    {
      MEMORY[0x277D82BD8](*(v69 + 8));
    }

    if (v90)
    {
      MEMORY[0x277D82BD8](*(v69 + 10));
    }

    if (v91)
    {
      MEMORY[0x277D82BD8](*(v69 + 12));
    }

    MEMORY[0x277D82BD8](v62);
    objc_storeStrong(&v92, 0);
  }

  objc_storeStrong(v94, 0);
  v30 = [*(v69 + 17) domain];
  v28 = v30;
  SUErrorDomain_3 = getSUErrorDomain_3();
  v26 = SUErrorDomain_3;
  v27 = [v28 isEqualToString:?];
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v28);
  if (v27)
  {
    v25 = [*(v69 + 17) code];
    if (v25 == 11 || (v24 = [*(v69 + 17) code], v24 == 41))
    {
      v96 = 1;
    }
  }

  v20 = *(v70[4].isa + 7);
  v22 = &v72;
  v72 = MEMORY[0x277D85DD0];
  v73 = -1073741824;
  v74 = 0;
  v75 = __96__SUSUISoftwareUpdateManager__reallyDownloadAndInstall_update_AcceptingCellularFees_completion___block_invoke_454;
  v76 = &unk_279CBE730;
  v21 = &v77;
  v77 = MEMORY[0x277D82BE0](v70[4].isa);
  v23 = v22 + 8;
  objc_copyWeak(v22 + 8, &v70[7].isa);
  v19 = &v72;
  v16 = v78;
  v78[0] = MEMORY[0x277D82BE0](v70[5].isa);
  v79 = v96 & 1;
  v17 = (v19 + 6);
  v78[1] = MEMORY[0x277D82BE0](*(v69 + 17));
  v18 = (v19 + 7);
  v78[2] = MEMORY[0x277D82BE0](v70[6].isa);
  v78[4] = v70[8].isa;
  [v20 download:v19];
  objc_storeStrong(v18, 0);
  objc_storeStrong(v17, 0);
  objc_storeStrong(v16, 0);
  objc_destroyWeak(v23);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __96__SUSUISoftwareUpdateManager__reallyDownloadAndInstall_update_AcceptingCellularFees_completion___block_invoke_454(id *a1, void *a2, void *a3)
{
  v64 = a1;
  obj = a3;
  v66 = "[SUSUISoftwareUpdateManager _reallyDownloadAndInstall:update:AcceptingCellularFees:completion:]_block_invoke";
  v67 = "[SUSUISoftwareUpdateManager _reallyDownloadAndInstall:update:AcceptingCellularFees:completion:]_block_invoke_3";
  v111 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v107 = 0;
  objc_storeStrong(&v107, obj);
  v106[1] = v64;
  v63 = _SUSUILoggingFacility();
  v106[0] = v63;
  v105 = 0;
  if (os_log_type_enabled(v106[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v106[0];
    *type = v105;
    updated = SUSUISoftwareUpdateStateToString(*(v64[4] + 22));
    v57 = updated;
    v58 = MEMORY[0x277D82BE0](v57);
    v104 = v58;
    v59 = *(v64[4] + 22);
    v3 = *(v64[4] + 15);
    v102 = 0;
    if (v3)
    {
      v56 = [*(v64[4] + 15) humanReadableUpdateName];
      v103 = v56;
      v102 = 1;
      v55 = v103;
    }

    else
    {
      v55 = @"N/A";
    }

    v52 = v55;
    v53 = *(v64[4] + 15);
    v54 = *(v64[4] + 20);
    v4 = *(v64[4] + 16);
    v100 = 0;
    if (v4)
    {
      v51 = [*(v64[4] + 16) humanReadableUpdateName];
      v101 = v51;
      v100 = 1;
      v50 = v101;
    }

    else
    {
      v50 = @"N/A";
    }

    v46 = v50;
    v47 = *(v64[4] + 16);
    v48 = *(v64[4] + 21);
    v49 = *(v64[4] + 1);
    v5 = *(v64[4] + 1);
    v98 = 0;
    v96 = 0;
    v94 = 0;
    if (v5 && (v45 = [*(v64[4] + 1) descriptor], v99 = v45, v98 = 1, v99))
    {
      v44 = [*(v64[4] + 1) descriptor];
      v97 = v44;
      v96 = 1;
      v43 = [v97 humanReadableUpdateName];
      v95 = v43;
      v94 = 1;
      v42 = v95;
    }

    else
    {
      v42 = @"N/A";
    }

    v40 = v42;
    WeakRetained = objc_loadWeakRetained(v64[4] + 13);
    v39 = objc_loadWeakRetained(v64[4] + 13);
    v92 = 0;
    v90 = 0;
    if (v39)
    {
      v38 = objc_loadWeakRetained(v64[4] + 13);
      v93 = v38;
      v92 = 1;
      aClass = objc_opt_class();
      v36 = NSStringFromClass(aClass);
      v91 = v36;
      v90 = 1;
      v35 = v91;
    }

    else
    {
      v35 = @"N/A";
    }

    v33 = v35;
    v34 = objc_loadWeakRetained(v64[4] + 14);
    v32 = objc_loadWeakRetained(v64[4] + 14);
    v88 = 0;
    v86 = 0;
    if (v32)
    {
      v31 = objc_loadWeakRetained(v64[4] + 14);
      v89 = v31;
      v88 = 1;
      v30 = objc_opt_class();
      v29 = NSStringFromClass(v30);
      v87 = v29;
      v86 = 1;
      v28 = v87;
    }

    else
    {
      v28 = @"N/A";
    }

    v26 = &v6;
    buf = v110;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_66_8_66(v110, v66, v58, v59, v52, v53, v54, v46, v47, v48, v49, v40, WeakRetained, v33, v34, v28, location[0], v107);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\ndownload fetched the initiated download object - download: %{public}@, downloadError: %{public}@", buf, 0xA8u);
    if (v86)
    {
      MEMORY[0x277D82BD8](v87);
    }

    if (v88)
    {
      MEMORY[0x277D82BD8](v89);
    }

    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v34);
    if (v90)
    {
      MEMORY[0x277D82BD8](v91);
    }

    if (v92)
    {
      MEMORY[0x277D82BD8](v93);
    }

    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v94)
    {
      MEMORY[0x277D82BD8](v95);
    }

    if (v96)
    {
      MEMORY[0x277D82BD8](v97);
    }

    if (v98)
    {
      MEMORY[0x277D82BD8](v99);
    }

    if (v100)
    {
      MEMORY[0x277D82BD8](v101);
    }

    if (v102)
    {
      MEMORY[0x277D82BD8](v103);
    }

    MEMORY[0x277D82BD8](v57);
    objc_storeStrong(&v104, 0);
  }

  objc_storeStrong(v106, 0);
  v25 = objc_loadWeakRetained(v64 + 8);
  v85 = v25;
  v76 = MEMORY[0x277D85DD0];
  v77 = -1073741824;
  v78 = 0;
  v79 = __96__SUSUISoftwareUpdateManager__reallyDownloadAndInstall_update_AcceptingCellularFees_completion___block_invoke_455;
  v80 = &unk_279CBE708;
  v24 = &v82;
  objc_copyWeak(&v82, v64 + 8);
  v22 = &v76;
  v15 = v81;
  v81[0] = MEMORY[0x277D82BE0](v64[4]);
  v16 = v22 + 5;
  v81[1] = MEMORY[0x277D82BE0](v85);
  v17 = v22 + 6;
  v81[2] = MEMORY[0x277D82BE0](v64[5]);
  v18 = v22 + 7;
  v81[3] = MEMORY[0x277D82BE0](location[0]);
  v19 = v22 + 8;
  v81[4] = MEMORY[0x277D82BE0](v107);
  v83 = v64[10] & 1;
  v20 = v22 + 9;
  v81[5] = MEMORY[0x277D82BE0](v64[6]);
  v21 = v22 + 10;
  v81[6] = MEMORY[0x277D82BE0](v64[7]);
  v23 = MEMORY[0x26D66A460](v22);
  v84 = v23;
  if (v64[9] == 2)
  {
    v14 = _SUSUILoggingFacility();
    oslog = v14;
    v74 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = oslog;
      *v12 = v74;
      v13 = v109;
      __os_log_helper_16_2_1_8_32(v109, v67);
      _os_log_impl(&dword_26AC94000, v11, v12[0], "%s: Attempts to schedule the download for auto-installation", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v10 = v85;
    v9 = &v68;
    v68 = MEMORY[0x277D85DD0];
    v69 = -1073741824;
    v70 = 0;
    v71 = __96__SUSUISoftwareUpdateManager__reallyDownloadAndInstall_update_AcceptingCellularFees_completion___block_invoke_458;
    v72 = &unk_279CBBA40;
    v7 = v73;
    v73[0] = MEMORY[0x277D82BE0](v64[4]);
    v8 = (v9 + 5);
    v73[1] = MEMORY[0x277D82BE0](v84);
    [v10 setAutoInstall:v9];
    objc_storeStrong(v8, 0);
    objc_storeStrong(v7, 0);
  }

  else
  {
    (*(v84 + 2))();
  }

  objc_storeStrong(&v84, 0);
  objc_storeStrong(v21, 0);
  objc_storeStrong(v20, 0);
  objc_storeStrong(v19, 0);
  objc_storeStrong(v18, 0);
  objc_storeStrong(v17, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(v15, 0);
  objc_destroyWeak(v24);
  objc_storeStrong(&v85, 0);
  objc_storeStrong(&v107, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __96__SUSUISoftwareUpdateManager__reallyDownloadAndInstall_update_AcceptingCellularFees_completion___block_invoke_455(uint64_t a1)
{
  v26[2] = a1;
  v26[1] = a1;
  v26[0] = objc_loadWeakRetained((a1 + 88));
  if (v26[0])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
    v24 = 0;
    v9 = 0;
    if (WeakRetained)
    {
      v25 = objc_loadWeakRetained((*(a1 + 32) + 104));
      v24 = 1;
      v9 = objc_opt_respondsToSelector();
    }

    if (v24)
    {
      MEMORY[0x277D82BD8](v25);
    }

    MEMORY[0x277D82BD8](WeakRetained);
    if (v9)
    {
      v7 = objc_loadWeakRetained((*(a1 + 32) + 104));
      v1 = *(a1 + 40);
      v2 = *(a1 + 48);
      v3 = *(a1 + 56);
      v4 = *(a1 + 64);
      v5 = *(a1 + 96);
      v6 = *(a1 + 72);
      v11 = MEMORY[0x277D85DD0];
      v12 = -1073741824;
      v13 = 0;
      v14 = __96__SUSUISoftwareUpdateManager__reallyDownloadAndInstall_update_AcceptingCellularFees_completion___block_invoke_2;
      v15 = &unk_279CBE6E0;
      objc_copyWeak(&v22, (a1 + 88));
      v16 = MEMORY[0x277D82BE0](*(a1 + 40));
      v23 = *(a1 + 96) & 1;
      v17 = MEMORY[0x277D82BE0](*(a1 + 72));
      v18 = MEMORY[0x277D82BE0](*(a1 + 48));
      v19 = MEMORY[0x277D82BE0](*(a1 + 56));
      v20 = MEMORY[0x277D82BE0](*(a1 + 64));
      v21 = MEMORY[0x277D82BE0](*(a1 + 80));
      [v7 manager:v1 prepareToDownloadAndInstall:v2 withDownload:v3 andDownloadError:v4 didSuccessfullyStart:v5 & 1 withError:v6 usingCompletionHandler:&v11];
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v16, 0);
      objc_destroyWeak(&v22);
    }

    else
    {
      [v26[0] _reallyDownloadAndInstallDidFinishWithResult:*(a1 + 96) & 1 andError:*(a1 + 72) forUpdate:*(a1 + 48) withDownload:*(a1 + 56) andDownloadError:*(a1 + 64) usingCompletionHandler:*(a1 + 80)];
    }
  }

  objc_storeStrong(v26, 0);
}

void __96__SUSUISoftwareUpdateManager__reallyDownloadAndInstall_update_AcceptingCellularFees_completion___block_invoke_2(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 80));
  if (location[0])
  {
    [*(a1 + 32) _reallyDownloadAndInstallDidFinishWithResult:*(a1 + 88) & 1 andError:*(a1 + 40) forUpdate:*(a1 + 48) withDownload:*(a1 + 56) andDownloadError:*(a1 + 64) usingCompletionHandler:*(a1 + 72)];
  }

  objc_storeStrong(location, 0);
}

void __96__SUSUISoftwareUpdateManager__reallyDownloadAndInstall_update_AcceptingCellularFees_completion___block_invoke_458(NSObject *a1, char a2, id obj)
{
  v45 = &v63;
  v44 = a1;
  v43 = "[SUSUISoftwareUpdateManager _reallyDownloadAndInstall:update:AcceptingCellularFees:completion:]_block_invoke";
  v71 = *MEMORY[0x277D85DE8];
  v69 = a1;
  v68 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v66[1] = v44;
  v66[0] = _SUSUILoggingFacility();
  v65 = 0;
  if (os_log_type_enabled(v66[0], OS_LOG_TYPE_DEFAULT))
  {
    log = *(v45 + 3);
    *type = v65;
    v40 = SUSUISoftwareUpdateStateToString(*(v44[4].isa + 22));
    v3 = MEMORY[0x277D82BE0](v40);
    v4 = v44;
    v41 = v3;
    *(v45 + 1) = v3;
    v42 = *(v4[4].isa + 22);
    v5 = *(v4[4].isa + 15);
    v62 = 0;
    if (v5)
    {
      v6 = [*(v44[4].isa + 15) humanReadableUpdateName];
      *v45 = v6;
      v62 = 1;
      v37 = v6;
    }

    else
    {
      v37 = @"N/A";
    }

    v34 = v37;
    v35 = *(v44[4].isa + 15);
    v36 = *(v44[4].isa + 20);
    v7 = *(v44[4].isa + 16);
    v60 = 0;
    if (v7)
    {
      v61 = [*(v44[4].isa + 16) humanReadableUpdateName];
      v60 = 1;
      v33 = v61;
    }

    else
    {
      v33 = @"N/A";
    }

    v29 = v33;
    v30 = *(v44[4].isa + 16);
    v31 = *(v44[4].isa + 21);
    v32 = *(v44[4].isa + 1);
    v8 = *(v44[4].isa + 1);
    v58 = 0;
    v56 = 0;
    v54 = 0;
    if (v8 && (v59 = [*(v44[4].isa + 1) descriptor], v58 = 1, v59))
    {
      v57 = [*(v44[4].isa + 1) descriptor];
      v27 = 1;
      v56 = 1;
      v55 = [v57 humanReadableUpdateName];
      v54 = 1;
      v28 = v55;
    }

    else
    {
      v28 = @"N/A";
    }

    v24 = v28;
    WeakRetained = objc_loadWeakRetained(v44[4].isa + 13);
    v26 = objc_loadWeakRetained(v44[4].isa + 13);
    v52 = 0;
    v50 = 0;
    if (v26)
    {
      v53 = objc_loadWeakRetained(v44[4].isa + 13);
      v22 = 1;
      v52 = 1;
      v9 = objc_opt_class();
      v51 = NSStringFromClass(v9);
      v50 = 1;
      v23 = v51;
    }

    else
    {
      v23 = @"N/A";
    }

    v19 = v23;
    v20 = objc_loadWeakRetained(v44[4].isa + 14);
    v21 = objc_loadWeakRetained(v44[4].isa + 14);
    v48 = 0;
    v46 = 0;
    if (v21)
    {
      v49 = objc_loadWeakRetained(v44[4].isa + 14);
      v17 = 1;
      v48 = 1;
      v10 = objc_opt_class();
      v47 = NSStringFromClass(v10);
      v46 = 1;
      v18 = v47;
    }

    else
    {
      v18 = @"N/A";
    }

    v11 = @"Failed to";
    if (v68)
    {
      v11 = @"Successfully";
    }

    v12 = *(v45 + 5);
    v15 = &v13;
    buf = v70;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64_8_64(v70, v43, v41, v42, v34, v35, v36, v29, v30, v31, v32, v24, WeakRetained, v19, v20, v18, v11, v12);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\n%@ setup auto install error: %@", buf, 0xA8u);
    if (v46)
    {
      MEMORY[0x277D82BD8](v47);
    }

    if (v48)
    {
      MEMORY[0x277D82BD8](v49);
    }

    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v20);
    if (v50)
    {
      MEMORY[0x277D82BD8](v51);
    }

    if (v52)
    {
      MEMORY[0x277D82BD8](v53);
    }

    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v54)
    {
      MEMORY[0x277D82BD8](v55);
    }

    if (v56)
    {
      MEMORY[0x277D82BD8](v57);
    }

    if (v58)
    {
      MEMORY[0x277D82BD8](v59);
    }

    if (v60)
    {
      MEMORY[0x277D82BD8](v61);
    }

    if (v62)
    {
      MEMORY[0x277D82BD8](*v45);
    }

    MEMORY[0x277D82BD8](v40);
    objc_storeStrong(&v64, 0);
  }

  obja = 0;
  objc_storeStrong(v66, 0);
  (*(v44[5].isa + 2))();
  objc_storeStrong(&location, obja);
  *MEMORY[0x277D85DE8];
}

- (void)_reallyDownloadAndInstallDidFinishWithResult:(BOOL)result andError:(id)error forUpdate:(id)update withDownload:(id)download andDownloadError:(id)downloadError usingCompletionHandler:(id)handler
{
  v89 = &v108;
  obj = update;
  downloadCopy = download;
  downloadErrorCopy = downloadError;
  handlerCopy = handler;
  v84 = "[SUSUISoftwareUpdateManager _reallyDownloadAndInstallDidFinishWithResult:andError:forUpdate:withDownload:andDownloadError:usingCompletionHandler:]";
  v127 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v122 = a2;
  resultCopy = result;
  location = 0;
  objc_storeStrong(&location, error);
  v119 = 0;
  objc_storeStrong(&v119, obj);
  v118 = 0;
  objc_storeStrong(&v118, downloadCopy);
  v117 = 0;
  objc_storeStrong(&v117, downloadErrorCopy);
  v116 = 0;
  objc_storeStrong(&v116, handlerCopy);
  v115 = _SUSUILoggingFacility();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v89 + 11);
    *v80 = type;
    v81 = SUSUISoftwareUpdateStateToString(*(*(v89 + 19) + 88));
    v8 = MEMORY[0x277D82BE0](v81);
    v9 = v89;
    v82 = v8;
    *(v89 + 9) = v8;
    v83 = *(*(v9 + 19) + 88);
    v10 = *(*(v9 + 19) + 120);
    v112 = 0;
    if (v10)
    {
      humanReadableUpdateName = [*(*(v89 + 19) + 120) humanReadableUpdateName];
      *(v89 + 8) = humanReadableUpdateName;
      v112 = 1;
      v78 = humanReadableUpdateName;
    }

    else
    {
      v78 = @"N/A";
    }

    v75 = v78;
    v76 = *(*(v89 + 19) + 120);
    v77 = *(*(v89 + 19) + 160);
    v12 = *(*(v89 + 19) + 128);
    v111 = 0;
    if (v12)
    {
      humanReadableUpdateName2 = [*(*(v89 + 19) + 128) humanReadableUpdateName];
      *(v89 + 6) = humanReadableUpdateName2;
      v111 = 1;
      v74 = humanReadableUpdateName2;
    }

    else
    {
      v74 = @"N/A";
    }

    v70 = v74;
    v71 = *(*(v89 + 19) + 128);
    v72 = *(*(v89 + 19) + 168);
    v73 = *(*(v89 + 19) + 8);
    v14 = *(*(v89 + 19) + 8);
    v110 = 0;
    v109 = 0;
    v107 = 0;
    if (v14 && (v15 = [*(*(v89 + 19) + 8) descriptor], *(v89 + 4) = v15, v110 = 1, v15))
    {
      descriptor = [*(*(v89 + 19) + 8) descriptor];
      *(v89 + 2) = descriptor;
      v68 = 1;
      v109 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      *v89 = humanReadableUpdateName3;
      v107 = 1;
      v69 = humanReadableUpdateName3;
    }

    else
    {
      v69 = @"N/A";
    }

    v65 = v69;
    WeakRetained = objc_loadWeakRetained((*(v89 + 19) + 104));
    v67 = objc_loadWeakRetained((*(v89 + 19) + 104));
    v105 = 0;
    v103 = 0;
    if (v67)
    {
      v106 = objc_loadWeakRetained((*(v89 + 19) + 104));
      v63 = 1;
      v105 = 1;
      v18 = objc_opt_class();
      v104 = NSStringFromClass(v18);
      v103 = 1;
      v64 = v104;
    }

    else
    {
      v64 = @"N/A";
    }

    v60 = v64;
    v61 = objc_loadWeakRetained((*(v89 + 19) + 112));
    v62 = objc_loadWeakRetained((*(v89 + 19) + 112));
    v101 = 0;
    v99 = 0;
    if (v62)
    {
      v102 = objc_loadWeakRetained((*(v89 + 19) + 112));
      v58 = 1;
      v101 = 1;
      v19 = objc_opt_class();
      v100 = NSStringFromClass(v19);
      v99 = 1;
      v59 = v100;
    }

    else
    {
      v59 = @"N/A";
    }

    v54 = v59;
    humanReadableUpdateName4 = [*(v89 + 15) humanReadableUpdateName];
    v98 = MEMORY[0x277D82BE0](humanReadableUpdateName4);
    v20 = *(v89 + 16);
    v21 = *(v89 + 14);
    v22 = *(v89 + 13);
    v55 = &v31;
    buf = v126;
    __os_log_helper_16_2_19_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_66(v126, v84, v82, v83, v75, v76, v77, v70, v71, v72, v73, v65, WeakRetained, v60, v61, v59, v98, v20, v21, v22);
    _os_log_impl(&dword_26AC94000, log, v80[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nupdate: %{public}@, error: %{public}@, download: %{public}@, downloadError: %{public}@", buf, 0xBCu);
    MEMORY[0x277D82BD8](humanReadableUpdateName4);
    if (v99)
    {
      MEMORY[0x277D82BD8](v100);
    }

    if (v101)
    {
      MEMORY[0x277D82BD8](v102);
    }

    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v61);
    if (v103)
    {
      MEMORY[0x277D82BD8](v104);
    }

    if (v105)
    {
      MEMORY[0x277D82BD8](v106);
    }

    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v107)
    {
      MEMORY[0x277D82BD8](*v89);
    }

    if (v109)
    {
      MEMORY[0x277D82BD8](*(v89 + 2));
    }

    if (v110)
    {
      MEMORY[0x277D82BD8](*(v89 + 4));
    }

    if (v111)
    {
      MEMORY[0x277D82BD8](*(v89 + 6));
    }

    if (v112)
    {
      MEMORY[0x277D82BD8](*(v89 + 8));
    }

    MEMORY[0x277D82BD8](v81);
    v53 = 0;
    objc_storeStrong(&v98, 0);
    objc_storeStrong(&v113, v53);
  }

  objc_storeStrong(&v115, 0);
  v23 = *(v89 + 14);
  v96 = 0;
  v94 = 0;
  v52 = 0;
  if (!v23)
  {
    domain = [*(v89 + 16) domain];
    v97 = domain;
    v50 = 1;
    v96 = 1;
    v95 = getSUErrorDomain_3();
    v94 = v50 & 1;
    v24 = [domain isEqualToString:?];
    v52 = 0;
    if (v24)
    {
      v52 = [*(v89 + 16) code] == 11;
    }
  }

  v49 = v52;
  if (v94)
  {
    MEMORY[0x277D82BD8](v95);
  }

  if (v96)
  {
    MEMORY[0x277D82BD8](v97);
  }

  if (v49)
  {
    v25 = [SUSUIUninitializedDownload alloc];
    v26 = [(SUSUIUninitializedDownload *)v25 initWithDescriptor:*(v89 + 15)];
    v27 = *(v89 + 14);
    *(v89 + 14) = v26;
    MEMORY[0x277D82BD8](v27);
    oslog = _SUSUILoggingFacility();
    v92 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v46 = oslog;
      *v47 = v92;
      v28 = *(v89 + 16);
      v29 = *(v89 + 14);
      v48 = v125;
      __os_log_helper_16_2_3_8_32_8_66_8_66(v125, v84, v28, v29);
      _os_log_impl(&dword_26AC94000, v46, v47[0], "%s: Received a nil download and SUErrorCodeDownloadInProgress error (%{public}@) - assigned SUDownloadUninitialized to the download object: %{public}@", v48, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
  }

  [*(v89 + 19) setDownload:*(v89 + 14)];
  if (*(v89 + 14))
  {
    v39 = *(*(v89 + 19) + 64);
    downloadOptions = [*(v89 + 14) downloadOptions];
    downloadFeeAgreementStatus = [downloadOptions downloadFeeAgreementStatus];
    descriptor2 = [*(v89 + 14) descriptor];
    [v39 setCellularFeeAgreementStatus:downloadFeeAgreementStatus forUpdate:?];
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](downloadOptions);
    v43 = *(*(v89 + 19) + 64);
    downloadOptions2 = [*(v89 + 14) downloadOptions];
    termsAndConditionsAgreementStatus = [downloadOptions2 termsAndConditionsAgreementStatus];
    descriptor3 = [*(v89 + 14) descriptor];
    [v43 setTermsAgreementStatus:termsAndConditionsAgreementStatus forUpdate:?];
    MEMORY[0x277D82BD8](descriptor3);
    MEMORY[0x277D82BD8](downloadOptions2);
  }

  if (resultCopy)
  {
    progress = [*(v89 + 14) progress];
    isDone = [progress isDone];
    MEMORY[0x277D82BD8](progress);
    if (isDone)
    {
      [*(v89 + 19) setState:10];
    }

    else
    {
      [*(v89 + 19) setState:12];
    }
  }

  else
  {
    v91 = _SUSUILoggingFacility();
    v90 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v91;
      *v34 = v90;
      v35 = v124;
      __os_log_helper_16_2_1_8_32(v124, v84);
      _os_log_impl(&dword_26AC94000, v33, v34[0], "%s: failed to start download successfuly, calling destroyInstallationKeybag", v35, 0xCu);
    }

    objc_storeStrong(&v91, 0);
    [*(*(v89 + 19) + 96) destroyInstallationKeybag];
  }

  if (*(v89 + 12))
  {
    v30 = *(v89 + 16);
    (*(*(v89 + 12) + 16))();
  }

  if (!resultCopy)
  {
    [*(v89 + 19) handleDownloadError:*(v89 + 16)];
  }

  v32 = 0;
  objc_storeStrong(&v116, 0);
  objc_storeStrong(&v117, v32);
  objc_storeStrong(&v118, v32);
  objc_storeStrong(&v119, v32);
  objc_storeStrong(&location, v32);
  *MEMORY[0x277D85DE8];
}

- (void)startDownloadAndInstall:(unint64_t)install withHandler:(id)handler
{
  selfCopy = self;
  v9 = a2;
  installCopy = install;
  location = 0;
  objc_storeStrong(&location, handler);
  v5 = selfCopy;
  v4 = installCopy;
  update = [(SUSUISoftwareUpdateManager *)selfCopy update];
  [SUSUISoftwareUpdateManager startDownloadAndInstall:v5 update:"startDownloadAndInstall:update:withHandler:" withHandler:v4];
  MEMORY[0x277D82BD8](update);
  objc_storeStrong(&location, 0);
}

- (void)startDownloadAndInstall:(unint64_t)install update:(id)update withHandler:(id)handler
{
  obj = handler;
  v55 = "[SUSUISoftwareUpdateManager startDownloadAndInstall:update:withHandler:]";
  v94 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v91 = a2;
  installCopy = install;
  location = 0;
  objc_storeStrong(&location, update);
  v88 = 0;
  objc_storeStrong(&v88, obj);
  oslog = _SUSUILoggingFacility();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v51 = type;
    v52 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
    v53 = MEMORY[0x277D82BE0](v52);
    v85 = v53;
    state = selfCopy->_state;
    preferredUpdate = selfCopy->_preferredUpdate;
    v83 = 0;
    if (preferredUpdate)
    {
      humanReadableUpdateName = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
      v83 = 1;
      v49 = humanReadableUpdateName;
    }

    else
    {
      v49 = @"N/A";
    }

    v46 = v49;
    v47 = selfCopy->_preferredUpdate;
    preferredUpdateError = selfCopy->_preferredUpdateError;
    alternateUpdate = selfCopy->_alternateUpdate;
    v81 = 0;
    if (alternateUpdate)
    {
      humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
      v81 = 1;
      v45 = humanReadableUpdateName2;
    }

    else
    {
      v45 = @"N/A";
    }

    v41 = v45;
    v42 = selfCopy->_alternateUpdate;
    alternateUpdateError = selfCopy->_alternateUpdateError;
    download = selfCopy->_download;
    v7 = selfCopy->_download;
    v79 = 0;
    v77 = 0;
    v75 = 0;
    if (v7 && (v80 = [(SUDownload *)selfCopy->_download descriptor], v79 = 1, v80))
    {
      descriptor = [(SUDownload *)selfCopy->_download descriptor];
      v39 = 1;
      v77 = 1;
      humanReadableUpdateName3 = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v75 = 1;
      v40 = humanReadableUpdateName3;
    }

    else
    {
      v40 = @"N/A";
    }

    v36 = v40;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v38 = objc_loadWeakRetained(&selfCopy->_delegate);
    v73 = 0;
    v71 = 0;
    if (v38)
    {
      v74 = objc_loadWeakRetained(&selfCopy->_delegate);
      v34 = 1;
      v73 = 1;
      v8 = objc_opt_class();
      v72 = NSStringFromClass(v8);
      v71 = 1;
      v35 = v72;
    }

    else
    {
      v35 = @"N/A";
    }

    v31 = v35;
    v32 = objc_loadWeakRetained(&selfCopy->_hostController);
    v33 = objc_loadWeakRetained(&selfCopy->_hostController);
    v69 = 0;
    v67 = 0;
    if (v33)
    {
      v70 = objc_loadWeakRetained(&selfCopy->_hostController);
      v29 = 1;
      v69 = 1;
      v9 = objc_opt_class();
      v68 = NSStringFromClass(v9);
      v67 = 1;
      v30 = v68;
    }

    else
    {
      v30 = @"N/A";
    }

    v22 = v30;
    v28 = SUInstallationTypeToString(installCopy);
    v23 = MEMORY[0x277D82BE0](v28);
    v66 = v23;
    v24 = installCopy;
    humanReadableUpdateName4 = [location humanReadableUpdateName];
    v65 = MEMORY[0x277D82BE0](humanReadableUpdateName4);
    v25 = &v10;
    buf = v93;
    __os_log_helper_16_2_19_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64_8_0_8_64_8_0(v93, v55, v53, state, v46, v47, preferredUpdateError, v41, v42, alternateUpdateError, download, v36, WeakRetained, v31, v32, v30, v23, v24, v65, location);
    _os_log_impl(&dword_26AC94000, log, v51[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\ninstallationType: %@ (%lu), update: %@ (%p)", buf, 0xBCu);
    MEMORY[0x277D82BD8](humanReadableUpdateName4);
    MEMORY[0x277D82BD8](v28);
    if (v67)
    {
      MEMORY[0x277D82BD8](v68);
    }

    if (v69)
    {
      MEMORY[0x277D82BD8](v70);
    }

    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v32);
    if (v71)
    {
      MEMORY[0x277D82BD8](v72);
    }

    if (v73)
    {
      MEMORY[0x277D82BD8](v74);
    }

    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v75)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v77)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    MEMORY[0x277D82BD8](v52);
    v21 = 0;
    objc_storeStrong(&v65, 0);
    objc_storeStrong(&v66, v21);
    objc_storeStrong(&v85, v21);
  }

  objc_storeStrong(&oslog, 0);
  v20 = 1;
  if (installCopy != 2)
  {
    v20 = installCopy == 1;
  }

  v64 = v20;
  v13 = selfCopy;
  p_location = &location;
  v11 = location;
  v12 = &v57;
  v57 = MEMORY[0x277D85DD0];
  v58 = -1073741824;
  v59 = 0;
  v60 = __73__SUSUISoftwareUpdateManager_startDownloadAndInstall_update_withHandler___block_invoke;
  v61 = &unk_279CBE7F8;
  v16 = v62;
  v62[0] = MEMORY[0x277D82BE0](selfCopy);
  v15 = (v12 + 5);
  v62[1] = MEMORY[0x277D82BE0](location);
  v63 = v64;
  v62[3] = installCopy;
  v14 = (v12 + 6);
  v17 = &v88;
  v62[2] = MEMORY[0x277D82BE0](v88);
  [(SUSUISoftwareUpdateManager *)v13 cancelOrPurgeIfNecessaryWithUpdate:v11 completion:v12];
  v19 = 0;
  objc_storeStrong(v14, 0);
  objc_storeStrong(v15, v19);
  objc_storeStrong(v16, v19);
  objc_storeStrong(v17, v19);
  objc_storeStrong(p_location, v19);
  *MEMORY[0x277D85DE8];
}

void __73__SUSUISoftwareUpdateManager_startDownloadAndInstall_update_withHandler___block_invoke(uint64_t a1, char a2, id obj)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = a1;
  v22 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v20[2] = a1;
  if ((v22 & 1) == 0 || location)
  {
    if (v22)
    {
      if (location)
      {
        oslog = _SUSUILoggingFacility();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_64(v24, location);
          _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "Error canceling update: %@", v24, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      v12 = _SUSUILoggingFacility();
      v11 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        log = v12;
        type = v11;
        __os_log_helper_16_0_0(v10);
        _os_log_impl(&dword_26AC94000, log, type, "User denied canceling update", v10, 2u);
      }

      objc_storeStrong(&v12, 0);
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 64);
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __73__SUSUISoftwareUpdateManager_startDownloadAndInstall_update_withHandler___block_invoke_2;
    v17 = &unk_279CBE7D0;
    v18 = MEMORY[0x277D82BE0](*(a1 + 32));
    v19 = MEMORY[0x277D82BE0](*(a1 + 40));
    v20[1] = *(a1 + 56);
    v20[0] = MEMORY[0x277D82BE0](*(a1 + 48));
    [v7 promptForDevicePasscodeForDescriptor:v5 unattendedInstall:v6 & 1 completion:&v13];
    objc_storeStrong(v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __73__SUSUISoftwareUpdateManager_startDownloadAndInstall_update_withHandler___block_invoke_2(NSObject *a1, char a2, id obj)
{
  v62 = &v78;
  v61 = a1;
  v60 = "[SUSUISoftwareUpdateManager startDownloadAndInstall:update:withHandler:]_block_invoke_2";
  v91 = *MEMORY[0x277D85DE8];
  v89 = a1;
  v88 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v86[1] = v61;
  v86[0] = _SUSUILoggingFacility();
  v85 = 0;
  if (os_log_type_enabled(v86[0], OS_LOG_TYPE_DEFAULT))
  {
    log = *(v62 + 13);
    *type = v85;
    v57 = SUSUISoftwareUpdateStateToString(*(v61[4].isa + 22));
    v3 = MEMORY[0x277D82BE0](v57);
    v4 = v61;
    v58 = v3;
    *(v62 + 11) = v3;
    v59 = *(v4[4].isa + 22);
    v5 = *(v4[4].isa + 15);
    v83 = 0;
    if (v5)
    {
      v6 = [*(v61[4].isa + 15) humanReadableUpdateName];
      *(v62 + 10) = v6;
      v83 = 1;
      v54 = v6;
    }

    else
    {
      v54 = @"N/A";
    }

    v51 = v54;
    v52 = *(v61[4].isa + 15);
    v53 = *(v61[4].isa + 20);
    v7 = *(v61[4].isa + 16);
    v82 = 0;
    if (v7)
    {
      v8 = [*(v61[4].isa + 16) humanReadableUpdateName];
      *(v62 + 8) = v8;
      v82 = 1;
      v50 = v8;
    }

    else
    {
      v50 = @"N/A";
    }

    v46 = v50;
    v47 = *(v61[4].isa + 16);
    v48 = *(v61[4].isa + 21);
    v49 = *(v61[4].isa + 1);
    v9 = *(v61[4].isa + 1);
    v81 = 0;
    v80 = 0;
    v79 = 0;
    if (v9 && (v10 = [*(v61[4].isa + 1) descriptor], *(v62 + 6) = v10, v81 = 1, v10))
    {
      v11 = [*(v61[4].isa + 1) descriptor];
      *(v62 + 4) = v11;
      v44 = 1;
      v80 = 1;
      v12 = [v11 humanReadableUpdateName];
      *(v62 + 2) = v12;
      v79 = 1;
      v45 = v12;
    }

    else
    {
      v45 = @"N/A";
    }

    v41 = v45;
    WeakRetained = objc_loadWeakRetained(v61[4].isa + 13);
    v43 = objc_loadWeakRetained(v61[4].isa + 13);
    v77 = 0;
    v75 = 0;
    if (v43)
    {
      *v62 = objc_loadWeakRetained(v61[4].isa + 13);
      v39 = 1;
      v77 = 1;
      v13 = objc_opt_class();
      v76 = NSStringFromClass(v13);
      v75 = 1;
      v40 = v76;
    }

    else
    {
      v40 = @"N/A";
    }

    v36 = v40;
    v37 = objc_loadWeakRetained(v61[4].isa + 14);
    v38 = objc_loadWeakRetained(v61[4].isa + 14);
    v73 = 0;
    v71 = 0;
    if (v38)
    {
      v74 = objc_loadWeakRetained(v61[4].isa + 14);
      v34 = 1;
      v73 = 1;
      v14 = objc_opt_class();
      v72 = NSStringFromClass(v14);
      v71 = 1;
      v35 = v72;
    }

    else
    {
      v35 = @"N/A";
    }

    v15 = *(v62 + 15);
    v32 = &v19;
    buf = v90;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0_8_64(v90, v60, v58, v59, v51, v52, v53, v46, v47, v48, v49, v41, WeakRetained, v36, v37, v35, v88 & 1, v15);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nsuccess: %d, passcodeError: %@", buf, 0xA4u);
    if (v71)
    {
      MEMORY[0x277D82BD8](v72);
    }

    if (v73)
    {
      MEMORY[0x277D82BD8](v74);
    }

    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v37);
    if (v75)
    {
      MEMORY[0x277D82BD8](v76);
    }

    if (v77)
    {
      MEMORY[0x277D82BD8](*v62);
    }

    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v79)
    {
      MEMORY[0x277D82BD8](*(v62 + 2));
    }

    if (v80)
    {
      MEMORY[0x277D82BD8](*(v62 + 4));
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](*(v62 + 6));
    }

    if (v82)
    {
      MEMORY[0x277D82BD8](*(v62 + 8));
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](*(v62 + 10));
    }

    MEMORY[0x277D82BD8](v57);
    objc_storeStrong(&v84, 0);
  }

  objc_storeStrong(v86, 0);
  if (v88)
  {
    isa = v61[4].isa;
    v25 = v61[5].isa;
    v26 = &v65;
    v65 = MEMORY[0x277D85DD0];
    v66 = -1073741824;
    v67 = 0;
    v68 = __73__SUSUISoftwareUpdateManager_startDownloadAndInstall_update_withHandler___block_invoke_465;
    v69 = &unk_279CBE7D0;
    v30 = v70;
    v70[0] = MEMORY[0x277D82BE0](v61[4].isa);
    v29 = (v26 + 5);
    v70[1] = MEMORY[0x277D82BE0](v61[5].isa);
    v70[3] = v61[7].isa;
    v28 = (v26 + 6);
    v70[2] = MEMORY[0x277D82BE0](v61[6].isa);
    [(objc_class *)isa presentTermsIfNecessaryForUpdate:v25 completion:v26];
    obja = 0;
    objc_storeStrong(v28, 0);
    objc_storeStrong(v29, obja);
    objc_storeStrong(v30, obja);
  }

  else
  {
    v16 = *(v62 + 15);
    v63 = 0;
    v24 = 0;
    if (v16)
    {
      v64 = [(objc_class *)v61[4].isa delegate];
      v63 = 1;
      v24 = objc_opt_respondsToSelector();
    }

    v23 = v24;
    if (v63)
    {
      MEMORY[0x277D82BD8](v64);
    }

    if (v23)
    {
      v22 = [(objc_class *)v61[4].isa delegate];
      v20 = v61[4].isa;
      v21 = [(objc_class *)v61[4].isa download];
      v17 = *(v62 + 15);
      [v22 manager:v20 download:? failedWithError:?];
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
    }

    if (v61[6].isa)
    {
      v18 = *(v62 + 15);
      (*(v61[6].isa + 2))();
    }
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __73__SUSUISoftwareUpdateManager_startDownloadAndInstall_update_withHandler___block_invoke_465(uint64_t a1, char a2, id obj)
{
  v56 = a1;
  v54 = "[SUSUISoftwareUpdateManager startDownloadAndInstall:update:withHandler:]_block_invoke";
  v55 = "[SUSUISoftwareUpdateManager startDownloadAndInstall:update:withHandler:]_block_invoke_2";
  v100 = *MEMORY[0x277D85DE8];
  v97 = a1;
  v96 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v94[1] = v56;
  v94[0] = _SUSUILoggingFacility();
  v93 = 0;
  if (os_log_type_enabled(v94[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v94[0];
    *type = v93;
    v51 = SUSUISoftwareUpdateStateToString(*(*(v56 + 32) + 88));
    v52 = MEMORY[0x277D82BE0](v51);
    v92 = v52;
    v53 = *(*(v56 + 32) + 88);
    v3 = *(*(v56 + 32) + 120);
    v90 = 0;
    if (v3)
    {
      v91 = [*(*(v56 + 32) + 120) humanReadableUpdateName];
      v90 = 1;
      v48 = v91;
    }

    else
    {
      v48 = @"N/A";
    }

    v45 = v48;
    v46 = *(*(v56 + 32) + 120);
    v47 = *(*(v56 + 32) + 160);
    v4 = *(*(v56 + 32) + 128);
    v88 = 0;
    if (v4)
    {
      v89 = [*(*(v56 + 32) + 128) humanReadableUpdateName];
      v88 = 1;
      v44 = v89;
    }

    else
    {
      v44 = @"N/A";
    }

    v40 = v44;
    v41 = *(*(v56 + 32) + 128);
    v42 = *(*(v56 + 32) + 168);
    v43 = *(*(v56 + 32) + 8);
    v5 = *(*(v56 + 32) + 8);
    v86 = 0;
    v84 = 0;
    v82 = 0;
    if (v5 && (v87 = [*(*(v56 + 32) + 8) descriptor], v86 = 1, v87))
    {
      v85 = [*(*(v56 + 32) + 8) descriptor];
      v38 = 1;
      v84 = 1;
      v83 = [v85 humanReadableUpdateName];
      v82 = 1;
      v39 = v83;
    }

    else
    {
      v39 = @"N/A";
    }

    v35 = v39;
    WeakRetained = objc_loadWeakRetained((*(v56 + 32) + 104));
    v37 = objc_loadWeakRetained((*(v56 + 32) + 104));
    v80 = 0;
    v78 = 0;
    if (v37)
    {
      v81 = objc_loadWeakRetained((*(v56 + 32) + 104));
      v33 = 1;
      v80 = 1;
      v6 = objc_opt_class();
      v79 = NSStringFromClass(v6);
      v78 = 1;
      v34 = v79;
    }

    else
    {
      v34 = @"N/A";
    }

    v30 = v34;
    v31 = objc_loadWeakRetained((*(v56 + 32) + 112));
    v32 = objc_loadWeakRetained((*(v56 + 32) + 112));
    v76 = 0;
    v74 = 0;
    if (v32)
    {
      v77 = objc_loadWeakRetained((*(v56 + 32) + 112));
      v28 = 1;
      v76 = 1;
      v7 = objc_opt_class();
      v75 = NSStringFromClass(v7);
      v74 = 1;
      v29 = v75;
    }

    else
    {
      v29 = @"N/A";
    }

    v26 = &v9;
    buf = v99;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0_8_64(v99, v54, v52, v53, v45, v46, v47, v40, v41, v42, v43, v35, WeakRetained, v30, v31, v29, v96 & 1, location);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\ntermsAccepted: %d, termsError: %@", buf, 0xA4u);
    if (v74)
    {
      MEMORY[0x277D82BD8](v75);
    }

    if (v76)
    {
      MEMORY[0x277D82BD8](v77);
    }

    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v31);
    if (v78)
    {
      MEMORY[0x277D82BD8](v79);
    }

    if (v80)
    {
      MEMORY[0x277D82BD8](v81);
    }

    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v82)
    {
      MEMORY[0x277D82BD8](v83);
    }

    if (v84)
    {
      MEMORY[0x277D82BD8](v85);
    }

    if (v86)
    {
      MEMORY[0x277D82BD8](v87);
    }

    if (v88)
    {
      MEMORY[0x277D82BD8](v89);
    }

    if (v90)
    {
      MEMORY[0x277D82BD8](v91);
    }

    MEMORY[0x277D82BD8](v51);
    objc_storeStrong(&v92, 0);
  }

  objc_storeStrong(v94, 0);
  if (v96)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v73 = v8;
  v25 = [*(v56 + 32) download];
  v24 = [v25 downloadOptions];
  [v24 setTermsAndConditionsAgreementStatus:v73];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  if (v96)
  {
    v19 = *(v56 + 32);
    v18 = &v66;
    v66 = MEMORY[0x277D85DD0];
    v67 = -1073741824;
    v68 = 0;
    v69 = __73__SUSUISoftwareUpdateManager_startDownloadAndInstall_update_withHandler___block_invoke_466;
    v70 = &unk_279CBE780;
    v22 = v71;
    v71[0] = MEMORY[0x277D82BE0](*(v56 + 32));
    v21 = (v18 + 5);
    v71[1] = MEMORY[0x277D82BE0](*(v56 + 40));
    v72 = v73;
    v71[3] = *(v56 + 56);
    v20 = (v18 + 6);
    v71[2] = MEMORY[0x277D82BE0](*(v56 + 48));
    [v19 _alertForDownloadConstraintsWithCompletion:v18];
    obja = 0;
    objc_storeStrong(v20, 0);
    objc_storeStrong(v21, obja);
    objc_storeStrong(v22, obja);
  }

  else
  {
    oslog = _SUSUILoggingFacility();
    v64 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = oslog;
      *v16 = v64;
      v17 = v98;
      __os_log_helper_16_2_1_8_32(v98, v55);
      _os_log_impl(&dword_26AC94000, v15, v16[0], "%s: terms not accepted, calling destroyInstallationKeybag", v17, 0xCu);
    }

    v14 = 0;
    objc_storeStrong(&oslog, 0);
    v11 = *(*(v56 + 32) + 56);
    v10 = &v57;
    v57 = MEMORY[0x277D85DD0];
    v58 = -1073741824;
    v59 = 0;
    v60 = __73__SUSUISoftwareUpdateManager_startDownloadAndInstall_update_withHandler___block_invoke_468;
    v61 = &unk_279CBE7A8;
    v13 = &v63;
    v63 = MEMORY[0x277D82BE0](*(v56 + 48));
    v12 = (v10 + 4);
    v62 = MEMORY[0x277D82BE0](location);
    [v11 destroyInstallationKeybag:v10];
    objc_storeStrong(v12, v14);
    objc_storeStrong(v13, v14);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __73__SUSUISoftwareUpdateManager_startDownloadAndInstall_update_withHandler___block_invoke_466(uint64_t a1, unsigned int a2)
{
  [*(*(a1 + 32) + 64) setCellularFeeAgreementStatus:a2 forUpdate:*(a1 + 40)];
  [*(*(a1 + 32) + 64) setTermsAgreementStatus:*(a1 + 64) forUpdate:*(a1 + 40)];
  return [*(a1 + 32) _reallyDownloadAndInstall:*(a1 + 56) update:*(a1 + 40) AcceptingCellularFees:a2 completion:*(a1 + 48)];
}

void __73__SUSUISoftwareUpdateManager_startDownloadAndInstall_update_withHandler___block_invoke_468(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
}

- (void)_reallyResumeDownloadAcceptingCellularFees:(int)fees
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  feesCopy = fees;
  download = [(SUSUISoftwareUpdateManager *)self download];
  downloadOptions = [(SUDownload *)download downloadOptions];
  [downloadOptions setDownloadFeeAgreementStatus:feesCopy];
  location = _SUSUILoggingFacility();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v18, feesCopy);
    _os_log_impl(&dword_26AC94000, location, v11, "Resuming SU download with cellular fee acceptance state: %d", v18, 8u);
  }

  objc_storeStrong(&location, 0);
  sUManager = [(SUSUISoftwareUpdateManager *)selfCopy SUManager];
  downloadOptions2 = [(SUDownload *)download downloadOptions];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __73__SUSUISoftwareUpdateManager__reallyResumeDownloadAcceptingCellularFees___block_invoke;
  v9 = &unk_279CBE0E8;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  [(SUManagerClient *)sUManager updateDownloadOptions:downloadOptions2 withResult:&v5];
  MEMORY[0x277D82BD8](downloadOptions2);
  MEMORY[0x277D82BD8](sUManager);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&downloadOptions, 0);
  objc_storeStrong(&download, 0);
  *MEMORY[0x277D85DE8];
}

void __73__SUSUISoftwareUpdateManager__reallyResumeDownloadAcceptingCellularFees___block_invoke(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_32_4_0_8_66(v8, "[SUSUISoftwareUpdateManager _reallyResumeDownloadAcceptingCellularFees:]_block_invoke", v6 & 1, location);
    _os_log_impl(&dword_26AC94000, oslog[0], OS_LOG_TYPE_DEFAULT, "%s - resumeSuccessful: %d; error: %{public}@", v8, 0x1Cu);
  }

  objc_storeStrong(oslog, 0);
  if (v6)
  {
    [(objc_class *)a1[4].isa refreshState];
  }

  else
  {
    [(objc_class *)a1[4].isa handleDownloadError:location];
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)resumeDownload
{
  v8[2] = self;
  v8[1] = a2;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __44__SUSUISoftwareUpdateManager_resumeDownload__block_invoke;
  v7 = &unk_279CBE820;
  v8[0] = MEMORY[0x277D82BE0](self);
  [(SUSUISoftwareUpdateManager *)self _alertForDownloadConstraintsWithCompletion:?];
  objc_storeStrong(v8, 0);
}

- (void)_updateDownloadProgressWithDownload:(id)download stateFromDownload:(int *)fromDownload
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  fromDownloadCopy = fromDownload;
  progress = [location[0] progress];
  v24 = 0;
  [progress normalizedPercentComplete];
  v23 = v4;
  [progress percentComplete];
  v22 = v5;
  phase = [progress phase];
  if (fromDownload)
  {
    *fromDownloadCopy = selfCopy->_state;
  }

  v20 = _SUSUILoggingFacility();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    state = [(SUSUISoftwareUpdateManager *)selfCopy state];
    [progress timeRemaining];
    __os_log_helper_16_2_6_8_32_8_0_8_64_8_0_4_0_8_0(v30, "[SUSUISoftwareUpdateManager _updateDownloadProgressWithDownload:stateFromDownload:]", COERCE__INT64(v22), phase, COERCE__INT64(v23), state, v6);
    _os_log_impl(&dword_26AC94000, v20, v19, "%s - progress: %.02f; phase: %@; totalProgress: %.02f; state: %d; time remaining: %f", v30, 0x3Au);
  }

  objc_storeStrong(&v20, 0);
  preferredUpdate = [(SUSUISoftwareUpdateManager *)selfCopy preferredUpdate];
  MEMORY[0x277D82BD8](preferredUpdate);
  if (preferredUpdate)
  {
    if (SUPrefsDownloadPhaseIsStalled_0(phase))
    {
      if (fromDownloadCopy)
      {
        *fromDownloadCopy = 14;
      }

      v24 = 2;
    }

    else if ([(SUSUISoftwareUpdateManager *)selfCopy _SUDownloadPhaseIsQueued:phase])
    {
      if (fromDownloadCopy)
      {
        *fromDownloadCopy = 5;
      }
    }

    else if (([progress isDone] & 1) == 0)
    {
      [progress timeRemaining];
      v14 = 0;
      if (v7 < 604800.0)
      {
        [progress timeRemaining];
        v14 = v8 > 0.0;
      }

      v11 = phase;
      v12 = getkSUDownloadPhasePreparingForInstallation_1();
      v13 = 1;
      if (([v11 isEqualToString:?] & 1) == 0)
      {
        v10 = 0;
        if (v22 >= 0.005)
        {
          v10 = v14;
        }

        v13 = v10;
      }

      MEMORY[0x277D82BD8](v12);
      if (v13)
      {
        v24 = 1;
      }

      if (fromDownloadCopy)
      {
        if (selfCopy->_state == 13)
        {
          *fromDownloadCopy = 13;
        }

        else
        {
          *fromDownloadCopy = 12;
        }
      }
    }
  }

  else
  {
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v29, "[SUSUISoftwareUpdateManager _updateDownloadProgressWithDownload:stateFromDownload:]");
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s - no preferred update yet, ignoring progress update", v29, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  delegate = [(SUSUISoftwareUpdateManager *)selfCopy delegate];
  [(SUSUISoftwareUpdateManagerDelegate *)delegate manager:selfCopy downloadProgressChanged:location[0] displayStyle:v24];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(&phase, 0);
  objc_storeStrong(&progress, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)upgradeDownloadToUserInitiated
{
  selfCopy = self;
  v3[1] = a2;
  download = [(SUSUISoftwareUpdateManager *)self download];
  v3[0] = [(SUDownload *)download downloadOptions];
  MEMORY[0x277D82BD8](download);
  [v3[0] setAutoDownload:0];
  [(SUSUISoftwareUpdateClientManager *)selfCopy->_suClient updateDownloadOptions:v3[0] completion:&__block_literal_global_5];
  objc_storeStrong(v3, 0);
}

void __60__SUSUISoftwareUpdateManager_upgradeDownloadToUserInitiated__block_invoke(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if ((v6 & 1) == 0)
  {
    oslog[0] = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v8, location);
      _os_log_impl(&dword_26AC94000, oslog[0], OS_LOG_TYPE_DEFAULT, "Failed to update download options: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)setAutoInstall:(id)install
{
  v45 = "[SUSUISoftwareUpdateManager setAutoInstall:]";
  v76 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  v72 = _SUSUILoggingFacility();
  v71 = 0;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    log = v72;
    *type = v71;
    v42 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
    v43 = MEMORY[0x277D82BE0](v42);
    v70 = v43;
    state = selfCopy->_state;
    preferredUpdate = selfCopy->_preferredUpdate;
    v68 = 0;
    if (preferredUpdate)
    {
      humanReadableUpdateName = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
      v68 = 1;
      v39 = humanReadableUpdateName;
    }

    else
    {
      v39 = @"N/A";
    }

    v36 = v39;
    v37 = selfCopy->_preferredUpdate;
    preferredUpdateError = selfCopy->_preferredUpdateError;
    alternateUpdate = selfCopy->_alternateUpdate;
    v66 = 0;
    if (alternateUpdate)
    {
      humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
      v66 = 1;
      v35 = humanReadableUpdateName2;
    }

    else
    {
      v35 = @"N/A";
    }

    v31 = v35;
    v32 = selfCopy->_alternateUpdate;
    alternateUpdateError = selfCopy->_alternateUpdateError;
    download = selfCopy->_download;
    v5 = selfCopy->_download;
    v64 = 0;
    v62 = 0;
    v60 = 0;
    if (v5 && (v65 = [(SUDownload *)selfCopy->_download descriptor], v64 = 1, v65))
    {
      descriptor = [(SUDownload *)selfCopy->_download descriptor];
      v29 = 1;
      v62 = 1;
      humanReadableUpdateName3 = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v60 = 1;
      v30 = humanReadableUpdateName3;
    }

    else
    {
      v30 = @"N/A";
    }

    v26 = v30;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v28 = objc_loadWeakRetained(&selfCopy->_delegate);
    v58 = 0;
    v56 = 0;
    if (v28)
    {
      v59 = objc_loadWeakRetained(&selfCopy->_delegate);
      v24 = 1;
      v58 = 1;
      v6 = objc_opt_class();
      v57 = NSStringFromClass(v6);
      v56 = 1;
      v25 = v57;
    }

    else
    {
      v25 = @"N/A";
    }

    v21 = v25;
    v22 = objc_loadWeakRetained(&selfCopy->_hostController);
    v23 = objc_loadWeakRetained(&selfCopy->_hostController);
    v54 = 0;
    v52 = 0;
    if (v23)
    {
      v55 = objc_loadWeakRetained(&selfCopy->_hostController);
      v19 = 1;
      v54 = 1;
      v7 = objc_opt_class();
      v53 = NSStringFromClass(v7);
      v52 = 1;
      v20 = v53;
    }

    else
    {
      v20 = @"N/A";
    }

    v17 = &v8;
    buf = v75;
    __os_log_helper_16_2_15_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66(v75, v45, v43, state, v36, v37, preferredUpdateError, v31, v32, alternateUpdateError, download, v26, WeakRetained, v21, v22, v20);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\n", buf, 0x94u);
    if (v52)
    {
      MEMORY[0x277D82BD8](v53);
    }

    if (v54)
    {
      MEMORY[0x277D82BD8](v55);
    }

    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v22);
    if (v56)
    {
      MEMORY[0x277D82BD8](v57);
    }

    if (v58)
    {
      MEMORY[0x277D82BD8](v59);
    }

    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v60)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v62)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    MEMORY[0x277D82BD8](v42);
    objc_storeStrong(&v70, 0);
  }

  obj = 0;
  objc_storeStrong(&v72, 0);
  v10 = selfCopy;
  download = [(SUSUISoftwareUpdateManager *)selfCopy download];
  descriptor2 = [(SUDownload *)download descriptor];
  v9 = &v46;
  v46 = MEMORY[0x277D85DD0];
  v47 = -1073741824;
  v48 = 0;
  v49 = __45__SUSUISoftwareUpdateManager_setAutoInstall___block_invoke;
  v50 = &unk_279CBBA40;
  v14 = v51;
  v51[0] = MEMORY[0x277D82BE0](selfCopy);
  v13 = (v9 + 5);
  v15 = location;
  v51[1] = MEMORY[0x277D82BE0](location[0]);
  [(SUSUISoftwareUpdateManager *)v10 promptForDevicePasscodeForDescriptor:descriptor2 unattendedInstall:1 completion:v9];
  MEMORY[0x277D82BD8](descriptor2);
  MEMORY[0x277D82BD8](download);
  objc_storeStrong(v13, obj);
  objc_storeStrong(v14, obj);
  objc_storeStrong(v15, obj);
  *MEMORY[0x277D85DE8];
}

void __45__SUSUISoftwareUpdateManager_setAutoInstall___block_invoke(void *a1, char a2, id obj)
{
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13[1] = a1;
  if (v15)
  {
    v3 = a1[4];
    v5 = [v3 download];
    v4 = [v5 descriptor];
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __45__SUSUISoftwareUpdateManager_setAutoInstall___block_invoke_2;
    v11 = &unk_279CBBA40;
    v12 = MEMORY[0x277D82BE0](a1[4]);
    v13[0] = MEMORY[0x277D82BE0](a1[5]);
    [v3 presentTermsIfNecessaryForUpdate:v4 completion:&v7];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(v13, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __45__SUSUISoftwareUpdateManager_setAutoInstall___block_invoke_2(NSObject *a1, char a2, id obj)
{
  v54 = &v74;
  v53 = a1;
  v51 = "[SUSUISoftwareUpdateManager setAutoInstall:]_block_invoke_2";
  v52 = "[SUSUISoftwareUpdateManager setAutoInstall:]_block_invoke";
  v86 = *MEMORY[0x277D85DE8];
  v83 = a1;
  v82 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v80[1] = v53;
  v80[0] = _SUSUILoggingFacility();
  v79 = 0;
  if (os_log_type_enabled(v80[0], OS_LOG_TYPE_DEFAULT))
  {
    log = *(v54 + 9);
    *type = v79;
    v48 = SUSUISoftwareUpdateStateToString(*(v53[4].isa + 22));
    v3 = MEMORY[0x277D82BE0](v48);
    v4 = v53;
    v49 = v3;
    *(v54 + 7) = v3;
    v50 = *(v4[4].isa + 22);
    v5 = *(v4[4].isa + 15);
    v77 = 0;
    if (v5)
    {
      v6 = [*(v53[4].isa + 15) humanReadableUpdateName];
      *(v54 + 6) = v6;
      v77 = 1;
      v45 = v6;
    }

    else
    {
      v45 = @"N/A";
    }

    v42 = v45;
    v43 = *(v53[4].isa + 15);
    v44 = *(v53[4].isa + 20);
    v7 = *(v53[4].isa + 16);
    v76 = 0;
    if (v7)
    {
      v8 = [*(v53[4].isa + 16) humanReadableUpdateName];
      *(v54 + 4) = v8;
      v76 = 1;
      v41 = v8;
    }

    else
    {
      v41 = @"N/A";
    }

    v37 = v41;
    v38 = *(v53[4].isa + 16);
    v39 = *(v53[4].isa + 21);
    v40 = *(v53[4].isa + 1);
    v9 = *(v53[4].isa + 1);
    v75 = 0;
    v73 = 0;
    v71 = 0;
    if (v9 && (v10 = [*(v53[4].isa + 1) descriptor], *(v54 + 2) = v10, v75 = 1, v10))
    {
      v11 = [*(v53[4].isa + 1) descriptor];
      *v54 = v11;
      v35 = 1;
      v73 = 1;
      v72 = [v11 humanReadableUpdateName];
      v71 = 1;
      v36 = v72;
    }

    else
    {
      v36 = @"N/A";
    }

    v32 = v36;
    WeakRetained = objc_loadWeakRetained(v53[4].isa + 13);
    v34 = objc_loadWeakRetained(v53[4].isa + 13);
    v69 = 0;
    v67 = 0;
    if (v34)
    {
      v70 = objc_loadWeakRetained(v53[4].isa + 13);
      v30 = 1;
      v69 = 1;
      v12 = objc_opt_class();
      v68 = NSStringFromClass(v12);
      v67 = 1;
      v31 = v68;
    }

    else
    {
      v31 = @"N/A";
    }

    v27 = v31;
    v28 = objc_loadWeakRetained(v53[4].isa + 14);
    v29 = objc_loadWeakRetained(v53[4].isa + 14);
    v65 = 0;
    v63 = 0;
    if (v29)
    {
      v66 = objc_loadWeakRetained(v53[4].isa + 14);
      v25 = 1;
      v65 = 1;
      v13 = objc_opt_class();
      v64 = NSStringFromClass(v13);
      v63 = 1;
      v26 = v64;
    }

    else
    {
      v26 = @"N/A";
    }

    v14 = *(v54 + 11);
    v23 = &v16;
    buf = v85;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0_8_64(v85, v51, v49, v50, v42, v43, v44, v37, v38, v39, v40, v32, WeakRetained, v27, v28, v26, v82 & 1, v14);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\naccepted: %d, error: %@", buf, 0xA4u);
    if (v63)
    {
      MEMORY[0x277D82BD8](v64);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](v66);
    }

    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v28);
    if (v67)
    {
      MEMORY[0x277D82BD8](v68);
    }

    if (v69)
    {
      MEMORY[0x277D82BD8](v70);
    }

    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v71)
    {
      MEMORY[0x277D82BD8](v72);
    }

    if (v73)
    {
      MEMORY[0x277D82BD8](*v54);
    }

    if (v75)
    {
      MEMORY[0x277D82BD8](*(v54 + 2));
    }

    if (v76)
    {
      MEMORY[0x277D82BD8](*(v54 + 4));
    }

    if (v77)
    {
      MEMORY[0x277D82BD8](*(v54 + 6));
    }

    MEMORY[0x277D82BD8](v48);
    objc_storeStrong(&v78, 0);
  }

  objc_storeStrong(v80, 0);
  if (v82)
  {
    v21 = *(v53[4].isa + 7);
    v20 = &v57;
    v57 = MEMORY[0x277D85DD0];
    v58 = -1073741824;
    v59 = 0;
    v60 = __45__SUSUISoftwareUpdateManager_setAutoInstall___block_invoke_471;
    v61 = &unk_279CBE868;
    v22 = &v62;
    v62 = MEMORY[0x277D82BE0](v53[5].isa);
    [v21 currentAutoInstallOperation:1 completion:v20];
    objc_storeStrong(v22, 0);
  }

  else
  {
    oslog = _SUSUILoggingFacility();
    v55 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = oslog;
      *v18 = v55;
      v19 = v84;
      __os_log_helper_16_2_1_8_32(v84, v52);
      _os_log_impl(&dword_26AC94000, v17, v18[0], "%s: Auto install failed (T&C not accepted)", v19, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (v53[5].isa)
    {
      v15 = *(v54 + 11);
      (*(v53[5].isa + 2))();
    }
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __45__SUSUISoftwareUpdateManager_setAutoInstall___block_invoke_471(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = a1;
  if (a1[4])
  {
    LOBYTE(v3) = 0;
    if ([location[0] agreementStatus] == 1)
    {
      v3 = [location[0] isCanceled] ^ 1;
    }

    v7 = v3 & 1;
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_4_0(v11, "[SUSUISoftwareUpdateManager setAutoInstall:]_block_invoke", v7 & 1);
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: Auto install started successfully - %d", v11, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)checkAutoInstall
{
  download = [(SUSUISoftwareUpdateManager *)self download];
  progress = [(SUDownload *)download progress];
  isDone = [(SUOperationProgress *)progress isDone];
  MEMORY[0x277D82BD8](progress);
  MEMORY[0x277D82BD8](download);
  if (isDone)
  {
    if ([(SUSUISoftwareUpdateClientManager *)self->_suClient isAutoUpdateArmedAndReady])
    {
      v2 = 11;
    }

    else
    {
      v2 = 10;
    }

    [(SUSUISoftwareUpdateManager *)self setState:v2];
  }
}

- (BOOL)automaticUpdateEnabled:(BOOL *)enabled
{
  if (enabled)
  {
    *enabled = 0;
  }

  return [(SUSUISoftwareUpdateClientManager *)self->_suClient isAutoInstallEnabled];
}

- (BOOL)automaticUpdatePreviousUserSpecifiedStatus:(BOOL *)status
{
  if (status)
  {
    *status = 0;
  }

  return [(SUSUISoftwareUpdateClientManager *)self->_suClient isAutoInstallPreviousUserSettingsEnabled];
}

- (BOOL)automaticDownloadEnabled:(BOOL *)enabled
{
  if (enabled)
  {
    *enabled = 0;
  }

  return [(SUSUISoftwareUpdateClientManager *)self->_suClient isAutoDownloadEnabled];
}

- (BOOL)securityResponseStatus:(BOOL *)status
{
  if (status)
  {
    *status = 0;
  }

  return [(SUSUISoftwareUpdateClientManager *)self->_suClient isSecurityResponseEnabled];
}

- (BOOL)previousUserSpecifiedSecurityResponseStatus:(BOOL *)status
{
  if (status)
  {
    *status = 0;
  }

  return [(SUSUISoftwareUpdateClientManager *)self->_suClient previousUserSpecifiedSecurityResponseEnabled];
}

- (BOOL)automaticInstallSystemDataFilesStatusEnabled:(BOOL *)enabled
{
  if (enabled)
  {
    *enabled = 0;
  }

  return [(SUSUISoftwareUpdateClientManager *)self->_suClient isAutomaticInstallSystemDataFilesEnabled];
}

- (void)startRollbackWithOptions:(id)options withHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v5 = 0;
  objc_storeStrong(&v5, handler);
  [(SUSUISoftwareUpdateClientManager *)selfCopy->_suClient rollbackUpdateWithOptions:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)startInstallWithHandler:(id)handler
{
  v46 = "[SUSUISoftwareUpdateManager startInstallWithHandler:]";
  v77 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v73 = _SUSUILoggingFacility();
  v72 = 0;
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    log = v73;
    *type = v72;
    v43 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
    v44 = MEMORY[0x277D82BE0](v43);
    v71 = v44;
    state = selfCopy->_state;
    preferredUpdate = selfCopy->_preferredUpdate;
    v69 = 0;
    if (preferredUpdate)
    {
      humanReadableUpdateName = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
      v69 = 1;
      v40 = humanReadableUpdateName;
    }

    else
    {
      v40 = @"N/A";
    }

    v37 = v40;
    v38 = selfCopy->_preferredUpdate;
    preferredUpdateError = selfCopy->_preferredUpdateError;
    alternateUpdate = selfCopy->_alternateUpdate;
    v67 = 0;
    if (alternateUpdate)
    {
      humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
      v67 = 1;
      v36 = humanReadableUpdateName2;
    }

    else
    {
      v36 = @"N/A";
    }

    v32 = v36;
    v33 = selfCopy->_alternateUpdate;
    alternateUpdateError = selfCopy->_alternateUpdateError;
    download = selfCopy->_download;
    v5 = selfCopy->_download;
    v65 = 0;
    v63 = 0;
    v61 = 0;
    if (v5 && (v66 = [(SUDownload *)selfCopy->_download descriptor], v65 = 1, v66))
    {
      descriptor = [(SUDownload *)selfCopy->_download descriptor];
      v30 = 1;
      v63 = 1;
      humanReadableUpdateName3 = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v61 = 1;
      v31 = humanReadableUpdateName3;
    }

    else
    {
      v31 = @"N/A";
    }

    v27 = v31;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v29 = objc_loadWeakRetained(&selfCopy->_delegate);
    v59 = 0;
    v57 = 0;
    if (v29)
    {
      v60 = objc_loadWeakRetained(&selfCopy->_delegate);
      v25 = 1;
      v59 = 1;
      v6 = objc_opt_class();
      v58 = NSStringFromClass(v6);
      v57 = 1;
      v26 = v58;
    }

    else
    {
      v26 = @"N/A";
    }

    v22 = v26;
    v23 = objc_loadWeakRetained(&selfCopy->_hostController);
    v24 = objc_loadWeakRetained(&selfCopy->_hostController);
    v55 = 0;
    v53 = 0;
    if (v24)
    {
      v56 = objc_loadWeakRetained(&selfCopy->_hostController);
      v20 = 1;
      v55 = 1;
      v7 = objc_opt_class();
      v54 = NSStringFromClass(v7);
      v53 = 1;
      v21 = v54;
    }

    else
    {
      v21 = @"N/A";
    }

    v18 = &v8;
    buf = v76;
    __os_log_helper_16_2_15_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66(v76, v46, v44, state, v37, v38, preferredUpdateError, v32, v33, alternateUpdateError, download, v27, WeakRetained, v22, v23, v21);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\n", buf, 0x94u);
    if (v53)
    {
      MEMORY[0x277D82BD8](v54);
    }

    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v23);
    if (v57)
    {
      MEMORY[0x277D82BD8](v58);
    }

    if (v59)
    {
      MEMORY[0x277D82BD8](v60);
    }

    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v61)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v63)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](v66);
    }

    if (v67)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v69)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    MEMORY[0x277D82BD8](v43);
    objc_storeStrong(&v71, 0);
  }

  obj = 0;
  objc_storeStrong(&v73, 0);
  v11 = selfCopy;
  download = [(SUSUISoftwareUpdateManager *)selfCopy download];
  descriptor2 = [(SUDownload *)download descriptor];
  v10 = &v47;
  v47 = MEMORY[0x277D85DD0];
  v48 = -1073741824;
  v9 = 0;
  v49 = 0;
  v50 = __54__SUSUISoftwareUpdateManager_startInstallWithHandler___block_invoke;
  v51 = &unk_279CBBA40;
  v15 = v52;
  v52[0] = MEMORY[0x277D82BE0](selfCopy);
  v14 = (v10 + 5);
  v16 = location;
  v52[1] = MEMORY[0x277D82BE0](location[0]);
  [(SUSUISoftwareUpdateManager *)v11 promptForDevicePasscodeForDescriptor:descriptor2 unattendedInstall:v9 & 1 completion:v10];
  MEMORY[0x277D82BD8](descriptor2);
  MEMORY[0x277D82BD8](download);
  objc_storeStrong(v14, obj);
  objc_storeStrong(v15, obj);
  objc_storeStrong(v16, obj);
  *MEMORY[0x277D85DE8];
}

void __54__SUSUISoftwareUpdateManager_startInstallWithHandler___block_invoke(uint64_t a1, char a2, id obj)
{
  v45 = a1;
  v44 = "[SUSUISoftwareUpdateManager startInstallWithHandler:]_block_invoke";
  v77 = *MEMORY[0x277D85DE8];
  v75 = a1;
  v74 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v72[1] = v45;
  v72[0] = _SUSUILoggingFacility();
  v71 = 0;
  if (os_log_type_enabled(v72[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v72[0];
    *type = v71;
    v41 = SUSUISoftwareUpdateStateToString(*(*(v45 + 32) + 88));
    v42 = MEMORY[0x277D82BE0](v41);
    v70 = v42;
    v43 = *(*(v45 + 32) + 88);
    v3 = *(*(v45 + 32) + 120);
    v68 = 0;
    if (v3)
    {
      v69 = [*(*(v45 + 32) + 120) humanReadableUpdateName];
      v68 = 1;
      v38 = v69;
    }

    else
    {
      v38 = @"N/A";
    }

    v35 = v38;
    v36 = *(*(v45 + 32) + 120);
    v37 = *(*(v45 + 32) + 160);
    v4 = *(*(v45 + 32) + 128);
    v66 = 0;
    if (v4)
    {
      v67 = [*(*(v45 + 32) + 128) humanReadableUpdateName];
      v66 = 1;
      v34 = v67;
    }

    else
    {
      v34 = @"N/A";
    }

    v30 = v34;
    v31 = *(*(v45 + 32) + 128);
    v32 = *(*(v45 + 32) + 168);
    v33 = *(*(v45 + 32) + 8);
    v5 = *(*(v45 + 32) + 8);
    v64 = 0;
    v62 = 0;
    v60 = 0;
    if (v5 && (v65 = [*(*(v45 + 32) + 8) descriptor], v64 = 1, v65))
    {
      v63 = [*(*(v45 + 32) + 8) descriptor];
      v28 = 1;
      v62 = 1;
      v61 = [v63 humanReadableUpdateName];
      v60 = 1;
      v29 = v61;
    }

    else
    {
      v29 = @"N/A";
    }

    v25 = v29;
    WeakRetained = objc_loadWeakRetained((*(v45 + 32) + 104));
    v27 = objc_loadWeakRetained((*(v45 + 32) + 104));
    v58 = 0;
    v56 = 0;
    if (v27)
    {
      v59 = objc_loadWeakRetained((*(v45 + 32) + 104));
      v23 = 1;
      v58 = 1;
      v6 = objc_opt_class();
      v57 = NSStringFromClass(v6);
      v56 = 1;
      v24 = v57;
    }

    else
    {
      v24 = @"N/A";
    }

    v20 = v24;
    v21 = objc_loadWeakRetained((*(v45 + 32) + 112));
    v22 = objc_loadWeakRetained((*(v45 + 32) + 112));
    v54 = 0;
    v52 = 0;
    if (v22)
    {
      v55 = objc_loadWeakRetained((*(v45 + 32) + 112));
      v18 = 1;
      v54 = 1;
      v7 = objc_opt_class();
      v53 = NSStringFromClass(v7);
      v52 = 1;
      v19 = v53;
    }

    else
    {
      v19 = @"N/A";
    }

    v16 = &v8;
    buf = v76;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0_8_64(v76, v44, v42, v43, v35, v36, v37, v30, v31, v32, v33, v25, WeakRetained, v20, v21, v19, v74 & 1, location);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nsuccess; %d, passcodeError: %@", buf, 0xA4u);
    if (v52)
    {
      MEMORY[0x277D82BD8](v53);
    }

    if (v54)
    {
      MEMORY[0x277D82BD8](v55);
    }

    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v21);
    if (v56)
    {
      MEMORY[0x277D82BD8](v57);
    }

    if (v58)
    {
      MEMORY[0x277D82BD8](v59);
    }

    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v60)
    {
      MEMORY[0x277D82BD8](v61);
    }

    if (v62)
    {
      MEMORY[0x277D82BD8](v63);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](v67);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](v69);
    }

    MEMORY[0x277D82BD8](v41);
    objc_storeStrong(&v70, 0);
  }

  objc_storeStrong(v72, 0);
  if (v74)
  {
    v10 = *(v45 + 32);
    v12 = [*(v45 + 32) download];
    v11 = [v12 descriptor];
    v9 = &v46;
    v46 = MEMORY[0x277D85DD0];
    v47 = -1073741824;
    v48 = 0;
    v49 = __54__SUSUISoftwareUpdateManager_startInstallWithHandler___block_invoke_473;
    v50 = &unk_279CBBA40;
    v14 = v51;
    v51[0] = MEMORY[0x277D82BE0](*(v45 + 32));
    v13 = (v9 + 5);
    v51[1] = MEMORY[0x277D82BE0](*(v45 + 40));
    [v10 presentTermsIfNecessaryForUpdate:v11 completion:v9];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    obja = 0;
    objc_storeStrong(v13, 0);
    objc_storeStrong(v14, obja);
  }

  else
  {
    (*(*(v45 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __54__SUSUISoftwareUpdateManager_startInstallWithHandler___block_invoke_473(uint64_t a1, char a2, id obj)
{
  v47 = a1;
  v46 = "[SUSUISoftwareUpdateManager startInstallWithHandler:]_block_invoke";
  v81 = *MEMORY[0x277D85DE8];
  v79 = a1;
  v78 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v76[1] = v47;
  v76[0] = _SUSUILoggingFacility();
  v75 = 0;
  if (os_log_type_enabled(v76[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v76[0];
    *type = v75;
    v43 = SUSUISoftwareUpdateStateToString(*(*(v47 + 32) + 88));
    v44 = MEMORY[0x277D82BE0](v43);
    v74 = v44;
    v45 = *(*(v47 + 32) + 88);
    v3 = *(*(v47 + 32) + 120);
    v72 = 0;
    if (v3)
    {
      v73 = [*(*(v47 + 32) + 120) humanReadableUpdateName];
      v72 = 1;
      v40 = v73;
    }

    else
    {
      v40 = @"N/A";
    }

    v37 = v40;
    v38 = *(*(v47 + 32) + 120);
    v39 = *(*(v47 + 32) + 160);
    v4 = *(*(v47 + 32) + 128);
    v70 = 0;
    if (v4)
    {
      v71 = [*(*(v47 + 32) + 128) humanReadableUpdateName];
      v70 = 1;
      v36 = v71;
    }

    else
    {
      v36 = @"N/A";
    }

    v32 = v36;
    v33 = *(*(v47 + 32) + 128);
    v34 = *(*(v47 + 32) + 168);
    v35 = *(*(v47 + 32) + 8);
    v5 = *(*(v47 + 32) + 8);
    v68 = 0;
    v66 = 0;
    v64 = 0;
    if (v5 && (v69 = [*(*(v47 + 32) + 8) descriptor], v68 = 1, v69))
    {
      v67 = [*(*(v47 + 32) + 8) descriptor];
      v30 = 1;
      v66 = 1;
      v65 = [v67 humanReadableUpdateName];
      v64 = 1;
      v31 = v65;
    }

    else
    {
      v31 = @"N/A";
    }

    v27 = v31;
    WeakRetained = objc_loadWeakRetained((*(v47 + 32) + 104));
    v29 = objc_loadWeakRetained((*(v47 + 32) + 104));
    v62 = 0;
    v60 = 0;
    if (v29)
    {
      v63 = objc_loadWeakRetained((*(v47 + 32) + 104));
      v25 = 1;
      v62 = 1;
      v6 = objc_opt_class();
      v61 = NSStringFromClass(v6);
      v60 = 1;
      v26 = v61;
    }

    else
    {
      v26 = @"N/A";
    }

    v22 = v26;
    v23 = objc_loadWeakRetained((*(v47 + 32) + 112));
    v24 = objc_loadWeakRetained((*(v47 + 32) + 112));
    v58 = 0;
    v56 = 0;
    if (v24)
    {
      v59 = objc_loadWeakRetained((*(v47 + 32) + 112));
      v20 = 1;
      v58 = 1;
      v7 = objc_opt_class();
      v57 = NSStringFromClass(v7);
      v56 = 1;
      v21 = v57;
    }

    else
    {
      v21 = @"N/A";
    }

    v18 = &v10;
    buf = v80;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0_8_64(v80, v46, v44, v45, v37, v38, v39, v32, v33, v34, v35, v27, WeakRetained, v22, v23, v21, v78 & 1, location);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\naccepted: %d, error: %@", buf, 0xA4u);
    if (v56)
    {
      MEMORY[0x277D82BD8](v57);
    }

    if (v58)
    {
      MEMORY[0x277D82BD8](v59);
    }

    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v23);
    if (v60)
    {
      MEMORY[0x277D82BD8](v61);
    }

    if (v62)
    {
      MEMORY[0x277D82BD8](v63);
    }

    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](v67);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](v69);
    }

    if (v70)
    {
      MEMORY[0x277D82BD8](v71);
    }

    if (v72)
    {
      MEMORY[0x277D82BD8](v73);
    }

    MEMORY[0x277D82BD8](v43);
    objc_storeStrong(&v74, 0);
  }

  objc_storeStrong(v76, 0);
  if (v78)
  {
    [*(v47 + 32) setState:15];
    v8 = objc_alloc_init(MEMORY[0x277D648A0]);
    v16 = &v55;
    v55 = v8;
    v9 = [*(v47 + 32) ignorableConstraints];
    [v55 setIgnorableConstraints:v9];
    v13 = *(*(v47 + 32) + 56);
    v11 = v55;
    v12 = &v48;
    v48 = MEMORY[0x277D85DD0];
    v49 = -1073741824;
    v50 = 0;
    v51 = __54__SUSUISoftwareUpdateManager_startInstallWithHandler___block_invoke_474;
    v52 = &unk_279CBE7A8;
    v15 = &v54;
    v54 = MEMORY[0x277D82BE0](*(v47 + 40));
    v14 = (v12 + 4);
    v53 = MEMORY[0x277D82BE0](*(v47 + 32));
    [v13 installUpdateWithOptions:v11 completion:v12];
    obja = 0;
    objc_storeStrong(v14, 0);
    objc_storeStrong(v15, obja);
    objc_storeStrong(v16, obja);
  }

  else if (*(v47 + 40))
  {
    (*(*(v47 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __54__SUSUISoftwareUpdateManager_startInstallWithHandler___block_invoke_474(uint64_t a1, char a2, id obj)
{
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v9 = a1;
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  if ((v11 & 1) == 0)
  {
    v8 = 0;
    v7 = 0;
    v3 = *(a1 + 32);
    obja = 0;
    v4 = [v3 shouldSetStateForInstallError:location outError:&obja outState:&v8];
    objc_storeStrong(&v7, obja);
    if (v4)
    {
      [*(a1 + 32) setState:v8 withDownloadUpdateError:v7];
    }

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)_notifyScanFailed:(id)failed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, failed);
  objc_storeStrong(&selfCopy->_scanError, location[0]);
  delegate = [(SUSUISoftwareUpdateManager *)selfCopy delegate];
  v5 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](delegate);
  if (v5)
  {
    delegate2 = [(SUSUISoftwareUpdateManager *)selfCopy delegate];
    [(SUSUISoftwareUpdateManagerDelegate *)delegate2 manager:selfCopy scanFoundUpdates:0 error:location[0]];
    MEMORY[0x277D82BD8](delegate2);
  }

  objc_storeStrong(location, 0);
}

- (void)handleScanError:(id)error
{
  v124 = "[SUSUISoftwareUpdateManager handleScanError:]";
  v182 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v176 = 0;
  v174 = 0;
  v125 = 0;
  if (![(SUSUISoftwareUpdateManager *)selfCopy clientIsBuddy])
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v176 = 1;
    v125 = 0;
    if (WeakRetained)
    {
      delegate = [(SUSUISoftwareUpdateManager *)selfCopy delegate];
      v174 = 1;
      v125 = objc_opt_respondsToSelector();
    }
  }

  v123 = v125;
  if (v174)
  {
    MEMORY[0x277D82BD8](delegate);
  }

  if (v176)
  {
    MEMORY[0x277D82BD8](WeakRetained);
  }

  if (v123)
  {
    objc_storeStrong(&selfCopy->_scanError, location[0]);
    delegate2 = [(SUSUISoftwareUpdateManager *)selfCopy delegate];
    [(SUSUISoftwareUpdateManagerDelegate *)delegate2 manager:selfCopy scanFailedWithError:location[0]];
    MEMORY[0x277D82BD8](delegate2);
    v173 = 1;
  }

  else
  {
    v171 = 0;
    v121 = 0;
    if ([(SUSUISoftwareUpdateManager *)selfCopy clientIsBuddy])
    {
      delegate3 = [(SUSUISoftwareUpdateManager *)selfCopy delegate];
      v171 = 1;
      v121 = objc_opt_respondsToSelector();
    }

    v120 = v121;
    if (v171)
    {
      MEMORY[0x277D82BD8](delegate3);
    }

    if (v120 & 1) == 0 || (v118 = [(SUSUISoftwareUpdateManager *)selfCopy delegate], v119 = [(SUSUISoftwareUpdateManagerDelegate *)v118 manager:selfCopy shouldShowAlertForScanError:location[0]], MEMORY[0x277D82BD8](v118), (v119))
    {
      v168 = _SUSUILoggingFacility();
      v167 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
      {
        v110 = v168;
        *v111 = v167;
        v112 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
        v113 = MEMORY[0x277D82BE0](v112);
        v166 = v113;
        state = selfCopy->_state;
        preferredUpdate = selfCopy->_preferredUpdate;
        v164 = 0;
        if (preferredUpdate)
        {
          humanReadableUpdateName = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
          v164 = 1;
          v109 = humanReadableUpdateName;
        }

        else
        {
          v109 = @"N/A";
        }

        v106 = v109;
        v107 = selfCopy->_preferredUpdate;
        preferredUpdateError = selfCopy->_preferredUpdateError;
        alternateUpdate = selfCopy->_alternateUpdate;
        v162 = 0;
        if (alternateUpdate)
        {
          humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
          v162 = 1;
          v105 = humanReadableUpdateName2;
        }

        else
        {
          v105 = @"N/A";
        }

        v101 = v105;
        v102 = selfCopy->_alternateUpdate;
        alternateUpdateError = selfCopy->_alternateUpdateError;
        download = selfCopy->_download;
        v5 = selfCopy->_download;
        v160 = 0;
        v158 = 0;
        v156 = 0;
        if (v5 && (v161 = [(SUDownload *)selfCopy->_download descriptor], v160 = 1, v161))
        {
          descriptor = [(SUDownload *)selfCopy->_download descriptor];
          v99 = 1;
          v158 = 1;
          humanReadableUpdateName3 = [(SUDescriptor *)descriptor humanReadableUpdateName];
          v156 = 1;
          v100 = humanReadableUpdateName3;
        }

        else
        {
          v100 = @"N/A";
        }

        v96 = v100;
        v97 = objc_loadWeakRetained(&selfCopy->_delegate);
        v98 = objc_loadWeakRetained(&selfCopy->_delegate);
        v154 = 0;
        v152 = 0;
        if (v98)
        {
          v155 = objc_loadWeakRetained(&selfCopy->_delegate);
          v94 = 1;
          v154 = 1;
          v6 = objc_opt_class();
          v153 = NSStringFromClass(v6);
          v152 = 1;
          v95 = v153;
        }

        else
        {
          v95 = @"N/A";
        }

        v91 = v95;
        v92 = objc_loadWeakRetained(&selfCopy->_hostController);
        v93 = objc_loadWeakRetained(&selfCopy->_hostController);
        v150 = 0;
        v148 = 0;
        if (v93)
        {
          v151 = objc_loadWeakRetained(&selfCopy->_hostController);
          v89 = 1;
          v150 = 1;
          v7 = objc_opt_class();
          v149 = NSStringFromClass(v7);
          v148 = 1;
          v90 = v149;
        }

        else
        {
          v90 = @"N/A";
        }

        v85 = v90;
        v86 = location[0];
        v87 = &v17;
        v88 = v180;
        __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64_4_0(v180, v124, v113, state, v106, v107, preferredUpdateError, v101, v102, alternateUpdateError, download, v96, v97, v91, v92, v90, location[0], [(SUSUISoftwareUpdateManager *)selfCopy state]);
        _os_log_impl(&dword_26AC94000, v110, v111[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nScan error: %@; state: %d", v88, 0xA4u);
        if (v148)
        {
          MEMORY[0x277D82BD8](v149);
        }

        if (v150)
        {
          MEMORY[0x277D82BD8](v151);
        }

        MEMORY[0x277D82BD8](v93);
        MEMORY[0x277D82BD8](v92);
        if (v152)
        {
          MEMORY[0x277D82BD8](v153);
        }

        if (v154)
        {
          MEMORY[0x277D82BD8](v155);
        }

        MEMORY[0x277D82BD8](v98);
        MEMORY[0x277D82BD8](v97);
        if (v156)
        {
          MEMORY[0x277D82BD8](humanReadableUpdateName3);
        }

        if (v158)
        {
          MEMORY[0x277D82BD8](descriptor);
        }

        if (v160)
        {
          MEMORY[0x277D82BD8](v161);
        }

        if (v162)
        {
          MEMORY[0x277D82BD8](humanReadableUpdateName2);
        }

        if (v164)
        {
          MEMORY[0x277D82BD8](humanReadableUpdateName);
        }

        MEMORY[0x277D82BD8](v112);
        objc_storeStrong(&v166, 0);
      }

      objc_storeStrong(&v168, 0);
      domain = [location[0] domain];
      v83 = getSUErrorDomain_3();
      v8 = [domain isEqualToString:?];
      v84 = 0;
      if (v8)
      {
        v84 = [location[0] code] == 26;
      }

      v81 = v84;
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](domain);
      if (v81)
      {
        v59 = MEMORY[0x277D75110];
        v64 = 0x277CCA000uLL;
        v57 = MEMORY[0x277CCA8D8];
        v65 = 0x277D64000uLL;
        v63 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v67 = &stru_287B79370;
        v68 = @"Software Update";
        v62 = [v63 localizedStringForKey:@"UNABLE_TO_CHECK_FOR_UPDATE" value:? table:?];
        v58 = *(v64 + 2264);
        v9 = *(v65 + 2712);
        v61 = [v58 bundleForClass:objc_opt_class()];
        v60 = [v61 localizedStringForKey:@"NETWORK_SCAN_ERROR" value:v67 table:v68];
        v69 = 1;
        v10 = [v59 alertControllerWithTitle:v62 message:? preferredStyle:?];
        v79 = &v147;
        v147 = v10;
        MEMORY[0x277D82BD8](v60);
        MEMORY[0x277D82BD8](v61);
        MEMORY[0x277D82BD8](v62);
        MEMORY[0x277D82BD8](v63);
        v72 = v147;
        v71 = MEMORY[0x277D750F8];
        v66 = *(v64 + 2264);
        v11 = *(v65 + 2712);
        v75 = [v66 bundleForClass:objc_opt_class()];
        v74 = [v75 localizedStringForKey:@"CANCEL" value:v67 table:v68];
        v70 = &v141;
        v141 = MEMORY[0x277D85DD0];
        v142 = -1073741824;
        v143 = 0;
        v144 = __46__SUSUISoftwareUpdateManager_handleScanError___block_invoke;
        v145 = &unk_279CBE890;
        v78 = v146;
        v146[0] = MEMORY[0x277D82BE0](selfCopy);
        v77 = (v70 + 5);
        v146[1] = MEMORY[0x277D82BE0](location[0]);
        v73 = [v71 actionWithTitle:v74 style:v69 handler:v70];
        [v72 addAction:?];
        MEMORY[0x277D82BD8](v73);
        MEMORY[0x277D82BD8](v74);
        MEMORY[0x277D82BD8](v75);
        v76 = objc_loadWeakRetained(&selfCopy->_hostController);
        obj = 0;
        [v76 presentViewController:v147 animated:1 completion:?];
        MEMORY[0x277D82BD8](v76);
        objc_storeStrong(v77, obj);
        objc_storeStrong(v78, obj);
        objc_storeStrong(v79, obj);
      }

      else
      {
        v140 = 0;
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        sf_isInternalInstall = [currentDevice sf_isInternalInstall];
        MEMORY[0x277D82BD8](currentDevice);
        if (sf_isInternalInstall)
        {
          userInfo = [location[0] userInfo];
          v139 = [userInfo objectForKey:*MEMORY[0x277CCA498]];
          MEMORY[0x277D82BD8](userInfo);
          if (!v139)
          {
            objc_storeStrong(&v139, @"Verify that you are connected to the Internal Network; trigger VPN manually if applicable.");
          }

          v50 = MEMORY[0x277CCACA8];
          v49 = MEMORY[0x277CCA8D8];
          v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v51 = [v52 localizedStringForKey:@"GENERIC_SCAN_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v53 = &v139;
          v139 = [v50 stringWithFormat:@"%@\n\n[Internal Only]\n%@", v51, v139];
          v13 = v140;
          v140 = v139;
          MEMORY[0x277D82BD8](v13);
          MEMORY[0x277D82BD8](v51);
          MEMORY[0x277D82BD8](v52);
          objc_storeStrong(v53, 0);
        }

        else
        {
          v47 = MEMORY[0x277CCA8D8];
          v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v14 = [v48 localizedStringForKey:@"GENERIC_SCAN_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v15 = v140;
          v140 = v14;
          MEMORY[0x277D82BD8](v15);
          MEMORY[0x277D82BD8](v48);
        }

        v30 = MEMORY[0x277D75110];
        v33 = 0x277CCA000uLL;
        v29 = MEMORY[0x277CCA8D8];
        v34 = 0x277D64000uLL;
        v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v36 = &stru_287B79370;
        v37 = @"Software Update";
        v31 = [v32 localizedStringForKey:@"UNABLE_TO_CHECK_FOR_UPDATE" value:? table:?];
        v40 = 1;
        v138 = [v30 alertControllerWithTitle:? message:? preferredStyle:?];
        MEMORY[0x277D82BD8](v31);
        MEMORY[0x277D82BD8](v32);
        v43 = v138;
        v42 = MEMORY[0x277D750F8];
        v35 = *(v33 + 2264);
        v16 = *(v34 + 2712);
        v46 = [v35 bundleForClass:objc_opt_class()];
        v45 = [v46 localizedStringForKey:@"CANCEL" value:v36 table:v37];
        v41 = &v132;
        v132 = MEMORY[0x277D85DD0];
        v133 = -1073741824;
        v134 = 0;
        v135 = __46__SUSUISoftwareUpdateManager_handleScanError___block_invoke_2;
        v136 = &unk_279CBE890;
        v38 = v137;
        v137[0] = MEMORY[0x277D82BE0](selfCopy);
        v39 = (v41 + 5);
        v137[1] = MEMORY[0x277D82BE0](location[0]);
        v44 = [v42 actionWithTitle:v45 style:v40 handler:v41];
        [v43 addAction:?];
        MEMORY[0x277D82BD8](v44);
        MEMORY[0x277D82BD8](v45);
        MEMORY[0x277D82BD8](v46);
        if (![(SUSUISoftwareUpdateManager *)selfCopy clientIsBuddy])
        {
          v24 = v138;
          v23 = MEMORY[0x277D750F8];
          v21 = MEMORY[0x277CCA8D8];
          v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v26 = [v27 localizedStringForKey:@"TRY_AGAIN" value:&stru_287B79370 table:@"Software Update"];
          v22 = &v126;
          v126 = MEMORY[0x277D85DD0];
          v127 = -1073741824;
          v128 = 0;
          v129 = __46__SUSUISoftwareUpdateManager_handleScanError___block_invoke_3;
          v130 = &unk_279CB9068;
          v28 = &v131;
          v131 = MEMORY[0x277D82BE0](selfCopy);
          v25 = [v23 actionWithTitle:v26 style:0 handler:v22];
          [v24 addAction:?];
          MEMORY[0x277D82BD8](v25);
          MEMORY[0x277D82BD8](v26);
          MEMORY[0x277D82BD8](v27);
          objc_storeStrong(v28, 0);
        }

        v18 = objc_loadWeakRetained(&selfCopy->_hostController);
        v19 = &v138;
        v20 = 0;
        [v18 presentViewController:v138 animated:1 completion:?];
        MEMORY[0x277D82BD8](v18);
        objc_storeStrong(v39, v20);
        objc_storeStrong(v38, v20);
        objc_storeStrong(v19, v20);
        objc_storeStrong(&v140, v20);
      }

      v173 = 0;
    }

    else
    {
      oslog = _SUSUILoggingFacility();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        *v116 = type;
        buf = v181;
        __os_log_helper_16_2_2_8_32_8_64(v181, v124, location[0]);
        _os_log_impl(&dword_26AC94000, oslog, type, "%s: Buddy: don't show the alert for %@", v181, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      [(SUSUISoftwareUpdateManager *)selfCopy _notifyScanFailed:location[0]];
      v173 = 1;
    }
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __46__SUSUISoftwareUpdateManager_handleScanError___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) _notifyScanFailed:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

void __46__SUSUISoftwareUpdateManager_handleScanError___block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) _notifyScanFailed:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

void __46__SUSUISoftwareUpdateManager_handleScanError___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] setState:0];
  objc_storeStrong(location, 0);
}

- (void)handleRollbackApplied
{
  v70 = "[SUSUISoftwareUpdateManager handleRollbackApplied]";
  v102 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v99[1] = a2;
  v99[0] = _SUSUILoggingFacility();
  v98 = 0;
  if (os_log_type_enabled(v99[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v99[0];
    *type = v98;
    v67 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
    v68 = MEMORY[0x277D82BE0](v67);
    location = v68;
    state = selfCopy->_state;
    preferredUpdate = selfCopy->_preferredUpdate;
    v95 = 0;
    if (preferredUpdate)
    {
      humanReadableUpdateName = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
      v95 = 1;
      v64 = humanReadableUpdateName;
    }

    else
    {
      v64 = @"N/A";
    }

    v61 = v64;
    v62 = selfCopy->_preferredUpdate;
    preferredUpdateError = selfCopy->_preferredUpdateError;
    alternateUpdate = selfCopy->_alternateUpdate;
    v93 = 0;
    if (alternateUpdate)
    {
      humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
      v93 = 1;
      v60 = humanReadableUpdateName2;
    }

    else
    {
      v60 = @"N/A";
    }

    v56 = v60;
    v57 = selfCopy->_alternateUpdate;
    alternateUpdateError = selfCopy->_alternateUpdateError;
    download = selfCopy->_download;
    v4 = selfCopy->_download;
    v91 = 0;
    v89 = 0;
    v87 = 0;
    if (v4 && (v92 = [(SUDownload *)selfCopy->_download descriptor], v91 = 1, v92))
    {
      descriptor = [(SUDownload *)selfCopy->_download descriptor];
      v54 = 1;
      v89 = 1;
      humanReadableUpdateName3 = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v87 = 1;
      v55 = humanReadableUpdateName3;
    }

    else
    {
      v55 = @"N/A";
    }

    v51 = v55;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v53 = objc_loadWeakRetained(&selfCopy->_delegate);
    v85 = 0;
    v83 = 0;
    if (v53)
    {
      v86 = objc_loadWeakRetained(&selfCopy->_delegate);
      v49 = 1;
      v85 = 1;
      v5 = objc_opt_class();
      v84 = NSStringFromClass(v5);
      v83 = 1;
      v50 = v84;
    }

    else
    {
      v50 = @"N/A";
    }

    v46 = v50;
    v47 = objc_loadWeakRetained(&selfCopy->_hostController);
    v48 = objc_loadWeakRetained(&selfCopy->_hostController);
    v81 = 0;
    v79 = 0;
    if (v48)
    {
      v82 = objc_loadWeakRetained(&selfCopy->_hostController);
      v44 = 1;
      v81 = 1;
      v6 = objc_opt_class();
      v80 = NSStringFromClass(v6);
      v79 = 1;
      v45 = v80;
    }

    else
    {
      v45 = @"N/A";
    }

    v42 = v12;
    buf = v101;
    __os_log_helper_16_2_15_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66(v101, v70, v68, state, v61, v62, preferredUpdateError, v56, v57, alternateUpdateError, download, v51, WeakRetained, v46, v47, v45);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nHandle rollback already applied", buf, 0x94u);
    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v47);
    if (v83)
    {
      MEMORY[0x277D82BD8](v84);
    }

    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v87)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v89)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v91)
    {
      MEMORY[0x277D82BD8](v92);
    }

    if (v93)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v95)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    MEMORY[0x277D82BD8](v67);
    objc_storeStrong(&location, 0);
  }

  obj = 0;
  objc_storeStrong(v99, 0);
  v27 = 0x277CCA000uLL;
  v12[8] = MEMORY[0x277CCA8D8];
  v28 = 0x277D64000uLL;
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v30 = &stru_287B79370;
  v31 = @"Software Update";
  v7 = [v13 localizedStringForKey:@"ROLLBACK_APPLIED_ALERT_BODY" value:? table:?];
  v40 = &v78;
  v78 = v7;
  MEMORY[0x277D82BD8](v13);
  v15 = MEMORY[0x277D75110];
  v14 = *(v27 + 2264);
  v8 = *(v28 + 2712);
  v17 = [v14 bundleForClass:objc_opt_class()];
  v16 = [v17 localizedStringForKey:@"ROLLBACK_APPLIED_ALERT_TITLE" value:v30 table:v31];
  v19 = 1;
  v9 = [v15 alertControllerWithTitle:? message:? preferredStyle:?];
  v39 = &v77;
  v77 = v9;
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v22 = v77;
  v26 = 0x277D75000uLL;
  v21 = MEMORY[0x277D750F8];
  v18 = *(v27 + 2264);
  v10 = *(v28 + 2712);
  v25 = [v18 bundleForClass:objc_opt_class()];
  v24 = [v25 localizedStringForKey:@"CANCEL" value:v30 table:v31];
  v20 = &v71;
  v71 = MEMORY[0x277D85DD0];
  v72 = -1073741824;
  v73 = 0;
  v74 = __51__SUSUISoftwareUpdateManager_handleRollbackApplied__block_invoke;
  v75 = &unk_279CB9068;
  v38 = &v76;
  v76 = MEMORY[0x277D82BE0](selfCopy);
  v23 = [v21 actionWithTitle:v24 style:v19 handler:v20];
  [v22 addAction:?];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  v33 = v77;
  v32 = *(v26 + 248);
  v29 = *(v27 + 2264);
  v11 = *(v28 + 2712);
  v36 = [v29 bundleForClass:objc_opt_class()];
  v35 = [v36 localizedStringForKey:@"ROLLBACK_APPLIED_ALERT_BUTTON_REBOOT_NOW" value:v30 table:v31];
  v34 = [v32 actionWithTitle:? style:? handler:?];
  [v33 addAction:?];
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  v37 = objc_loadWeakRetained(&selfCopy->_hostController);
  [v37 presentViewController:v77 animated:1 completion:obj];
  MEMORY[0x277D82BD8](v37);
  objc_storeStrong(v38, obj);
  objc_storeStrong(v39, obj);
  objc_storeStrong(v40, obj);
  *MEMORY[0x277D85DE8];
}

void __51__SUSUISoftwareUpdateManager_handleRollbackApplied__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _notifyScanFailed:0];
  objc_storeStrong(location, 0);
}

void __51__SUSUISoftwareUpdateManager_handleRollbackApplied__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4[1] = a1;
  v4[0] = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"Reboot for rollback apply"];
  [v4[0] setRebootType:1];
  v3 = objc_alloc_init(MEMORY[0x277D0AE18]);
  [v3 shutdownWithOptions:v4[0]];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(v4, 0);
  objc_storeStrong(location, 0);
}

- (void)handleDownloadError:(id)error
{
  v119 = &v137;
  v118 = "[SUSUISoftwareUpdateManager handleDownloadError:]";
  v169 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v166 = _SUSUILoggingFacility();
  v165 = 0;
  if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v119 + 53);
    *type = v165;
    v115 = SUSUISoftwareUpdateStateToString(*(*(v119 + 56) + 88));
    v3 = MEMORY[0x277D82BE0](v115);
    v4 = v119;
    v116 = v3;
    *(v119 + 51) = v3;
    v117 = *(*(v4 + 56) + 88);
    v5 = *(*(v4 + 56) + 120);
    v163 = 0;
    if (v5)
    {
      humanReadableUpdateName = [*(*(v119 + 56) + 120) humanReadableUpdateName];
      *(v119 + 50) = humanReadableUpdateName;
      v163 = 1;
      v112 = humanReadableUpdateName;
    }

    else
    {
      v112 = @"N/A";
    }

    v109 = v112;
    v110 = *(*(v119 + 56) + 120);
    v111 = *(*(v119 + 56) + 160);
    v7 = *(*(v119 + 56) + 128);
    v162 = 0;
    if (v7)
    {
      humanReadableUpdateName2 = [*(*(v119 + 56) + 128) humanReadableUpdateName];
      *(v119 + 48) = humanReadableUpdateName2;
      v162 = 1;
      v108 = humanReadableUpdateName2;
    }

    else
    {
      v108 = @"N/A";
    }

    v104 = v108;
    v105 = *(*(v119 + 56) + 128);
    v106 = *(*(v119 + 56) + 168);
    v107 = *(*(v119 + 56) + 8);
    v9 = *(*(v119 + 56) + 8);
    v161 = 0;
    v160 = 0;
    v159 = 0;
    if (v9 && (v10 = [*(*(v119 + 56) + 8) descriptor], *(v119 + 46) = v10, v161 = 1, v10))
    {
      descriptor = [*(*(v119 + 56) + 8) descriptor];
      *(v119 + 44) = descriptor;
      v102 = 1;
      v160 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      *(v119 + 42) = humanReadableUpdateName3;
      v159 = 1;
      v103 = humanReadableUpdateName3;
    }

    else
    {
      v103 = @"N/A";
    }

    v99 = v103;
    WeakRetained = objc_loadWeakRetained((*(v119 + 56) + 104));
    v101 = objc_loadWeakRetained((*(v119 + 56) + 104));
    v158 = 0;
    v157 = 0;
    if (v101)
    {
      *(v119 + 40) = objc_loadWeakRetained((*(v119 + 56) + 104));
      v97 = 1;
      v158 = 1;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *(v119 + 38) = v14;
      v157 = 1;
      v98 = v14;
    }

    else
    {
      v98 = @"N/A";
    }

    v94 = v98;
    v95 = objc_loadWeakRetained((*(v119 + 56) + 112));
    v96 = objc_loadWeakRetained((*(v119 + 56) + 112));
    v156 = 0;
    v155 = 0;
    if (v96)
    {
      *(v119 + 36) = objc_loadWeakRetained((*(v119 + 56) + 112));
      v92 = 1;
      v156 = 1;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *(v119 + 34) = v16;
      v155 = 1;
      v93 = v16;
    }

    else
    {
      v93 = @"N/A";
    }

    v17 = *(v119 + 54);
    v90 = v45;
    buf = v168;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64(v168, v118, v116, v117, v109, v110, v111, v104, v105, v106, v107, v99, WeakRetained, v94, v95, v93, v17);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nError: %@", buf, 0x9Eu);
    if (v155)
    {
      MEMORY[0x277D82BD8](*(v119 + 34));
    }

    if (v156)
    {
      MEMORY[0x277D82BD8](*(v119 + 36));
    }

    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v95);
    if (v157)
    {
      MEMORY[0x277D82BD8](*(v119 + 38));
    }

    if (v158)
    {
      MEMORY[0x277D82BD8](*(v119 + 40));
    }

    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v159)
    {
      MEMORY[0x277D82BD8](*(v119 + 42));
    }

    if (v160)
    {
      MEMORY[0x277D82BD8](*(v119 + 44));
    }

    if (v161)
    {
      MEMORY[0x277D82BD8](*(v119 + 46));
    }

    if (v162)
    {
      MEMORY[0x277D82BD8](*(v119 + 48));
    }

    if (v163)
    {
      MEMORY[0x277D82BD8](*(v119 + 50));
    }

    MEMORY[0x277D82BD8](v115);
    objc_storeStrong(&v164, 0);
  }

  objc_storeStrong(&v166, 0);
  domain = [*(v119 + 54) domain];
  v89 = [domain isEqualToString:*MEMORY[0x277D64910]];
  MEMORY[0x277D82BD8](domain);
  if (v89)
  {
    code = [*(v119 + 54) code];
    if (code == 1)
    {
      if (*(*(v119 + 56) + 120))
      {
        if ([*(v119 + 56) shouldShowPreferredUpdateAsAlternate])
        {
          [*(v119 + 56) setState:6];
        }

        else
        {
          [*(v119 + 56) setState:8];
        }
      }

      else
      {
        [*(v119 + 56) setState:3];
      }

      goto LABEL_127;
    }

    if (code == 3)
    {
LABEL_52:
      v86 = MEMORY[0x277D75110];
      v18 = *(*(v119 + 56) + 8);
      v153 = 0;
      v152 = 0;
      v151 = 0;
      v150 = 0;
      v149 = 0;
      v148 = 0;
      if (v18 && (v19 = [*(*(v119 + 56) + 8) descriptor], *(v119 + 31) = v19, v153 = 1, v19) && (v20 = objc_msgSend(*(*(v119 + 56) + 8), "descriptor"), *(v119 + 29) = v20, v152 = 1, (objc_msgSend(v20, "isSplatOnly") & 1) != 0))
      {
        v83 = MEMORY[0x277CCA8D8];
        v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        *(v119 + 27) = v21;
        v84 = 1;
        v151 = 1;
        v22 = [v21 localizedStringForKey:@"RSR_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
        v23 = v84;
        *(v119 + 25) = v22;
        v150 = v23 & 1;
        v85 = v22;
      }

      else
      {
        v81 = MEMORY[0x277CCA8D8];
        v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        *(v119 + 23) = v24;
        v82 = 1;
        v149 = 1;
        v25 = [v24 localizedStringForKey:@"DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
        v26 = v82;
        *(v119 + 21) = v25;
        v148 = v26 & 1;
        v85 = v25;
      }

      v80 = v85;
      v27 = *(*(v119 + 56) + 8);
      v147 = 0;
      v146 = 0;
      v145 = 0;
      v144 = 0;
      v143 = 0;
      v142 = 0;
      if (v27 && (v28 = [*(*(v119 + 56) + 8) descriptor], *(v119 + 19) = v28, v147 = 1, v28) && (v29 = objc_msgSend(*(*(v119 + 56) + 8), "descriptor"), *(v119 + 17) = v29, v146 = 1, (objc_msgSend(v29, "isSplatOnly") & 1) != 0))
      {
        v77 = MEMORY[0x277CCA8D8];
        v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        *(v119 + 15) = v30;
        v78 = 1;
        v145 = 1;
        v31 = [v30 localizedStringForKey:@"RSR_DOWNLOAD_ERROR_DETAILS" value:&stru_287B79370 table:@"Software Update"];
        v32 = v78;
        *(v119 + 13) = v31;
        v144 = v32 & 1;
        v79 = v31;
      }

      else
      {
        v75 = MEMORY[0x277CCA8D8];
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        *(v119 + 11) = v33;
        v76 = 1;
        v143 = 1;
        v34 = [v33 localizedStringForKey:@"DOWNLOAD_ERROR_DETAILS" value:&stru_287B79370 table:@"Software Update"];
        v35 = v76;
        *(v119 + 9) = v34;
        v142 = v35 & 1;
        v79 = v34;
      }

      v36 = [v86 alertControllerWithTitle:v80 message:v79 preferredStyle:1];
      *(v119 + 32) = v36;
      if (v142)
      {
        MEMORY[0x277D82BD8](*(v119 + 9));
      }

      if (v143)
      {
        MEMORY[0x277D82BD8](*(v119 + 11));
      }

      if (v144)
      {
        MEMORY[0x277D82BD8](*(v119 + 13));
      }

      if (v145)
      {
        MEMORY[0x277D82BD8](*(v119 + 15));
      }

      if (v146)
      {
        MEMORY[0x277D82BD8](*(v119 + 17));
      }

      if (v147)
      {
        MEMORY[0x277D82BD8](*(v119 + 19));
      }

      if (v148)
      {
        MEMORY[0x277D82BD8](*(v119 + 21));
      }

      if (v149)
      {
        MEMORY[0x277D82BD8](*(v119 + 23));
      }

      if (v150)
      {
        MEMORY[0x277D82BD8](*(v119 + 25));
      }

      if (v151)
      {
        MEMORY[0x277D82BD8](*(v119 + 27));
      }

      if (v152)
      {
        MEMORY[0x277D82BD8](*(v119 + 29));
      }

      if (v153)
      {
        MEMORY[0x277D82BD8](*(v119 + 31));
      }

      v73 = &v154;
      v68 = *(v119 + 32);
      v67 = MEMORY[0x277D750F8];
      v66 = MEMORY[0x277CCA8D8];
      v71 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v70 = [v71 localizedStringForKey:@"OK" value:&stru_287B79370 table:@"Software Update"];
      obj = 0;
      v69 = [v67 actionWithTitle:? style:? handler:?];
      [v68 addAction:?];
      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v70);
      MEMORY[0x277D82BD8](v71);
      v72 = objc_loadWeakRetained((*(v119 + 56) + 112));
      [v72 presentViewController:*(v119 + 32) animated:1 completion:obj];
      MEMORY[0x277D82BD8](v72);
      [*(v119 + 56) setState:3];
      objc_storeStrong(v73, obj);
      goto LABEL_127;
    }

    if (code != 6)
    {
      if (code == 11)
      {
        [*(v119 + 56) setState:12];
        goto LABEL_127;
      }

      if (code != 14 && code != 24)
      {
        if (code == 55)
        {
          [*(v119 + 56) setState:4];
        }

        else if ([*(v119 + 56) state] != 8 && objc_msgSend(*(v119 + 56), "state") != 6 && objc_msgSend(*(v119 + 56), "state") != 14)
        {
          [*(v119 + 56) setState:8 withDownloadUpdateError:*(v119 + 54)];
        }

        goto LABEL_127;
      }

      goto LABEL_52;
    }

    v65 = MEMORY[0x277D75110];
    v37 = *(*(v119 + 56) + 8);
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v136 = 0;
    v134 = 0;
    v132 = 0;
    if (v37 && (v38 = [*(*(v119 + 56) + 8) descriptor], *(v119 + 6) = v38, v140 = 1, v38) && (v39 = objc_msgSend(*(*(v119 + 56) + 8), "descriptor"), *(v119 + 4) = v39, v139 = 1, (objc_msgSend(v39, "isSplatOnly") & 1) != 0))
    {
      v62 = MEMORY[0x277CCA8D8];
      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      *(v119 + 2) = v40;
      v63 = 1;
      v138 = 1;
      v41 = [v40 localizedStringForKey:@"RSR_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
      v42 = v63;
      *v119 = v41;
      v136 = v42 & 1;
      v64 = v41;
    }

    else
    {
      v60 = MEMORY[0x277CCA8D8];
      v135 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v61 = 1;
      v134 = 1;
      v133 = [v135 localizedStringForKey:@"DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
      v132 = v61 & 1;
      v64 = v133;
    }

    v59 = v64;
    v43 = *(*(v119 + 56) + 8);
    v130 = 0;
    v128 = 0;
    v126 = 0;
    v124 = 0;
    v122 = 0;
    v120 = 0;
    if (v43 && (v131 = [*(*(v119 + 56) + 8) descriptor], v130 = 1, v131) && (v129 = objc_msgSend(*(*(v119 + 56) + 8), "descriptor"), v128 = 1, (objc_msgSend(v129, "isSplatOnly") & 1) != 0))
    {
      v56 = MEMORY[0x277CCA8D8];
      v127 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v57 = 1;
      v126 = 1;
      v125 = [v127 localizedStringForKey:@"RSR_DOWNLOAD_ERROR_INSUFFICIENT_SPACE" value:&stru_287B79370 table:@"Software Update"];
      v124 = v57 & 1;
      v58 = v125;
    }

    else
    {
      v54 = MEMORY[0x277CCA8D8];
      v123 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v55 = 1;
      v122 = 1;
      v121 = [v123 localizedStringForKey:@"DOWNLOAD_ERROR_INSUFFICIENT_SPACE" value:&stru_287B79370 table:@"Software Update"];
      v120 = v55 & 1;
      v58 = v121;
    }

    v44 = [v65 alertControllerWithTitle:v59 message:v58 preferredStyle:1];
    *(v119 + 7) = v44;
    if (v120)
    {
      MEMORY[0x277D82BD8](v121);
    }

    if (v122)
    {
      MEMORY[0x277D82BD8](v123);
    }

    if (v124)
    {
      MEMORY[0x277D82BD8](v125);
    }

    if (v126)
    {
      MEMORY[0x277D82BD8](v127);
    }

    if (v128)
    {
      MEMORY[0x277D82BD8](v129);
    }

    if (v130)
    {
      MEMORY[0x277D82BD8](v131);
    }

    if (v132)
    {
      MEMORY[0x277D82BD8](v133);
    }

    if (v134)
    {
      MEMORY[0x277D82BD8](v135);
    }

    if (v136)
    {
      MEMORY[0x277D82BD8](*v119);
    }

    if (v138)
    {
      MEMORY[0x277D82BD8](*(v119 + 2));
    }

    if (v139)
    {
      MEMORY[0x277D82BD8](*(v119 + 4));
    }

    if (v140)
    {
      MEMORY[0x277D82BD8](*(v119 + 6));
    }

    v52 = &v141;
    v47 = *(v119 + 7);
    v46 = MEMORY[0x277D750F8];
    v45[10] = MEMORY[0x277CCA8D8];
    v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v49 = [v50 localizedStringForKey:@"OK" value:&stru_287B79370 table:@"Software Update"];
    v53 = 0;
    v48 = [v46 actionWithTitle:? style:? handler:?];
    [v47 addAction:?];
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    v51 = objc_loadWeakRetained((*(v119 + 56) + 112));
    [v51 presentViewController:*(v119 + 7) animated:1 completion:v53];
    MEMORY[0x277D82BD8](v51);
    [*(v119 + 56) setState:8];
    objc_storeStrong(v52, v53);
  }

LABEL_127:
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)shouldIgnoreUpdateError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  code = [location[0] code];
  domain = [location[0] domain];
  v13 = [domain isEqualToString:*MEMORY[0x277D64910]];
  MEMORY[0x277D82BD8](domain);
  if (v13)
  {
    if (code == 3 || code == 11 || code == 13)
    {
      v22 = 1;
      v18 = 1;
      goto LABEL_36;
    }

    download = selfCopy->_download;
    v16 = 0;
    v11 = 0;
    if (download)
    {
      progress = [(SUDownload *)selfCopy->_download progress];
      v16 = 1;
      v11 = 0;
      if (progress)
      {
        v10 = 1;
        if (selfCopy->_state != 12)
        {
          v10 = selfCopy->_state == 13;
        }

        v11 = v10;
      }
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](progress);
    }

    if (!v11)
    {
LABEL_35:
      v22 = 0;
      v18 = 1;
      goto LABEL_36;
    }

    progress2 = [(SUDownload *)selfCopy->_download progress];
    phase = [progress2 phase];
    v9 = 0;
    if ([phase isEqualToString:*MEMORY[0x277D64A00]])
    {
      [progress2 percentComplete];
      v9 = v4 >= 1.0;
    }

    MEMORY[0x277D82BD8](phase);
    if (!v9)
    {
      goto LABEL_33;
    }

    if (code == 33 || code == 34 || code == 8 || code == 31 || code == 9 || code == 83)
    {
      v22 = 1;
      v18 = 1;
      goto LABEL_34;
    }

    if (code == 6)
    {
      v22 = 1;
      v18 = 1;
      goto LABEL_34;
    }

    if (code != 20)
    {
      goto LABEL_33;
    }

    userInfo = [location[0] userInfo];
    v6 = getkSUInstallationConstraintsUnmetKey_1();
    v14 = [userInfo objectForKey:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](userInfo);
    if (v14 && [v14 unsignedIntegerValue] == 4)
    {
      v22 = 1;
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    objc_storeStrong(&v14, 0);
    if (!v18)
    {
LABEL_33:
      v18 = 0;
    }

LABEL_34:
    objc_storeStrong(&progress2, 0);
    if (v18)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v22 = 0;
  v18 = 1;
LABEL_36:
  objc_storeStrong(location, 0);
  return v22 & 1;
}

- (BOOL)shouldSetStateForInstallError:(id)error outError:(id *)outError outState:(int *)state
{
  v72 = &v92;
  outErrorCopy = outError;
  stateCopy = state;
  v69 = "[SUSUISoftwareUpdateManager shouldSetStateForInstallError:outError:outState:]";
  v106 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v100[2] = outErrorCopy;
  v100[1] = stateCopy;
  v100[0] = _SUSUILoggingFacility();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v100[0], OS_LOG_TYPE_DEFAULT))
  {
    log = *(v72 + 13);
    *v65 = type;
    v66 = SUSUISoftwareUpdateStateToString(*(*(v72 + 18) + 88));
    v5 = MEMORY[0x277D82BE0](v66);
    v6 = v72;
    v67 = v5;
    *(v72 + 11) = v5;
    v68 = *(*(v6 + 18) + 88);
    v7 = *(*(v6 + 18) + 120);
    v97 = 0;
    if (v7)
    {
      humanReadableUpdateName = [*(*(v72 + 18) + 120) humanReadableUpdateName];
      *(v72 + 10) = humanReadableUpdateName;
      v97 = 1;
      v63 = humanReadableUpdateName;
    }

    else
    {
      v63 = @"N/A";
    }

    v60 = v63;
    v61 = *(*(v72 + 18) + 120);
    v62 = *(*(v72 + 18) + 160);
    v9 = *(*(v72 + 18) + 128);
    v96 = 0;
    if (v9)
    {
      humanReadableUpdateName2 = [*(*(v72 + 18) + 128) humanReadableUpdateName];
      *(v72 + 8) = humanReadableUpdateName2;
      v96 = 1;
      v59 = humanReadableUpdateName2;
    }

    else
    {
      v59 = @"N/A";
    }

    v55 = v59;
    v56 = *(*(v72 + 18) + 128);
    v57 = *(*(v72 + 18) + 168);
    v58 = *(*(v72 + 18) + 8);
    v11 = *(*(v72 + 18) + 8);
    v95 = 0;
    v94 = 0;
    v93 = 0;
    if (v11 && (v12 = [*(*(v72 + 18) + 8) descriptor], *(v72 + 6) = v12, v95 = 1, v12))
    {
      descriptor = [*(*(v72 + 18) + 8) descriptor];
      *(v72 + 4) = descriptor;
      v53 = 1;
      v94 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      *(v72 + 2) = humanReadableUpdateName3;
      v93 = 1;
      v54 = humanReadableUpdateName3;
    }

    else
    {
      v54 = @"N/A";
    }

    v50 = v54;
    WeakRetained = objc_loadWeakRetained((*(v72 + 18) + 104));
    v52 = objc_loadWeakRetained((*(v72 + 18) + 104));
    v91 = 0;
    v89 = 0;
    if (v52)
    {
      *v72 = objc_loadWeakRetained((*(v72 + 18) + 104));
      v48 = 1;
      v91 = 1;
      v15 = objc_opt_class();
      v90 = NSStringFromClass(v15);
      v89 = 1;
      v49 = v90;
    }

    else
    {
      v49 = @"N/A";
    }

    v45 = v49;
    v46 = objc_loadWeakRetained((*(v72 + 18) + 112));
    v47 = objc_loadWeakRetained((*(v72 + 18) + 112));
    v87 = 0;
    v85 = 0;
    if (v47)
    {
      v88 = objc_loadWeakRetained((*(v72 + 18) + 112));
      v43 = 1;
      v87 = 1;
      v16 = objc_opt_class();
      v86 = NSStringFromClass(v16);
      v85 = 1;
      v44 = v86;
    }

    else
    {
      v44 = @"N/A";
    }

    v17 = *(v72 + 16);
    v41 = &v22;
    buf = v105;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64(v105, v69, v67, v68, v60, v61, v62, v55, v56, v57, v58, v50, WeakRetained, v45, v46, v44, v17);
    _os_log_impl(&dword_26AC94000, log, v65[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nerror: %@", buf, 0x9Eu);
    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
    }

    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v46);
    if (v89)
    {
      MEMORY[0x277D82BD8](v90);
    }

    if (v91)
    {
      MEMORY[0x277D82BD8](*v72);
    }

    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v93)
    {
      MEMORY[0x277D82BD8](*(v72 + 2));
    }

    if (v94)
    {
      MEMORY[0x277D82BD8](*(v72 + 4));
    }

    if (v95)
    {
      MEMORY[0x277D82BD8](*(v72 + 6));
    }

    if (v96)
    {
      MEMORY[0x277D82BD8](*(v72 + 8));
    }

    if (v97)
    {
      MEMORY[0x277D82BD8](*(v72 + 10));
    }

    MEMORY[0x277D82BD8](v66);
    objc_storeStrong(&v98, 0);
  }

  objc_storeStrong(v100, 0);
  if (*(v72 + 15))
  {
    v40 = *(v72 + 16);
    v18 = v40;
    **(v72 + 15) = v40;
  }

  if (*(v72 + 14))
  {
    **(v72 + 14) = 10;
  }

  code = [*(v72 + 16) code];
  switch(code)
  {
    case 3:
    case 11:
      goto LABEL_62;
    case 13:
      goto LABEL_61;
    case 14:
      if (*(v72 + 14))
      {
        **(v72 + 14) = 15;
      }

      if (*(v72 + 15))
      {
        **(v72 + 15) = 0;
      }

      v102 = 1;
      v84 = 1;
      break;
    case 17:
LABEL_61:
      v102 = 1;
      v84 = 1;
      break;
    case 18:
LABEL_62:
      oslog = _SUSUILoggingFacility();
      v82 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v36 = oslog;
        *v37 = v82;
        v19 = *(v72 + 16);
        v38 = v104;
        __os_log_helper_16_2_2_8_32_8_64(v104, v69, v19);
        _os_log_impl(&dword_26AC94000, v36, v37[0], "%s: Starting a new scan due to installation error: %@", v38, 0x16u);
      }

      obj = 0;
      objc_storeStrong(&oslog, 0);
      v32 = *(v72 + 18);
      v31 = &v76;
      v76 = MEMORY[0x277D85DD0];
      v77 = -1073741824;
      v33 = 0;
      v78 = 0;
      v79 = __78__SUSUISoftwareUpdateManager_shouldSetStateForInstallError_outError_outState___block_invoke;
      v80 = &unk_279CBE8B8;
      v34 = &v81;
      v81 = MEMORY[0x277D82BE0](*(v72 + 18));
      [v32 scanForUpdatesCompletion:v31];
      v102 = v33 & 1;
      v84 = 1;
      objc_storeStrong(v34, obj);
      break;
    case 19:
      goto LABEL_61;
    case 20:
      userInfo = [*(v72 + 16) userInfo];
      v28 = getkSUInstallationConstraintsUnmetKey_1();
      v27 = [userInfo objectForKey:?];
      unsignedIntegerValue = [v27 unsignedIntegerValue];
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](userInfo);
      v75 = unsignedIntegerValue;
      if (unsignedIntegerValue != 16 && v75 != 32 && v75 != 48)
      {
        goto LABEL_71;
      }

      if (*(v72 + 15))
      {
        **(v72 + 15) = 0;
      }

      v102 = 1;
      v84 = 1;
      break;
    case 42:
      if (*(v72 + 14))
      {
        **(v72 + 14) = 16;
      }

      if (*(v72 + 15))
      {
        **(v72 + 15) = 0;
      }

      v102 = 1;
      v84 = 1;
      break;
    default:
LABEL_71:
      v74 = _SUSUILoggingFacility();
      v73 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v74;
        *v25 = v73;
        v20 = *(v72 + 16);
        v26 = v103;
        __os_log_helper_16_2_2_8_32_8_64(v103, v69, v20);
        _os_log_impl(&dword_26AC94000, v24, v25[0], "%s: Couldn't resolve the installation error: %@", v26, 0x16u);
      }

      objc_storeStrong(&v74, 0);
      v102 = 1;
      v84 = 1;
      break;
  }

  objc_storeStrong(location, 0);
  v23 = v102;
  *MEMORY[0x277D85DE8];
  return v102 & 1;
}

void __78__SUSUISoftwareUpdateManager_shouldSetStateForInstallError_outError_outState___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (v5)
  {
    [a1[4] handleScanError:v5];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)humanReadableDescriptionForError:(id)error enableButton:(BOOL *)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  if (button)
  {
    *button = [(SUSUISoftwareUpdateManager *)selfCopy enableUpdateButtonForError:location[0]];
  }

  location = [(SUSUISoftwareUpdateManager *)selfCopy humanReadableDescriptionForError:location[0], location];
  objc_storeStrong(v5, 0);

  return location;
}

- (BOOL)enableUpdateButtonForError:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  if (![(SUSUISoftwareUpdateManager *)selfCopy shouldIgnoreUpdateError:location[0]])
  {
    domain = [location[0] domain];
    v11 = getSUErrorDomain_3();
    v13 = [domain isEqualToString:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](domain);
    if (v13)
    {
      code = [location[0] code];
      if ((code - 33) > 1 || [(SUSUISoftwareUpdateManager *)selfCopy state]!= 14)
      {
        goto LABEL_23;
      }

      v23 = 0;
      v8 = objc_alloc(MEMORY[0x277CC37B0]);
      v9 = dispatch_get_global_queue(33, 0);
      v22 = [v8 initWithQueue:?];
      MEMORY[0x277D82BD8](v9);
      v21 = 0;
      v19 = 0;
      v10 = [v22 getPreferredDataSubscriptionContextSync:&v19];
      objc_storeStrong(&v21, v19);
      v20 = v10;
      if (v10)
      {
        v16 = 0;
        obj = 0;
        v6 = [v22 copyRegistrationStatus:v20 error:&obj];
        objc_storeStrong(&v16, obj);
        v3 = v23;
        v23 = v6;
        MEMORY[0x277D82BD8](v3);
        if (!v23)
        {
          oslog = _SUSUILoggingFacility();
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v5 = [v16 description];
            __os_log_helper_16_2_1_8_64(v29, v5);
            _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "Failed to copyRegistrationStatus from CoreTelephony. %@", v29, 0xCu);
            MEMORY[0x277D82BD8](v5);
          }

          objc_storeStrong(&oslog, 0);
        }

        objc_storeStrong(&v16, 0);
      }

      else
      {
        v18 = _SUSUILoggingFacility();
        v17 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [v21 description];
          __os_log_helper_16_2_1_8_64(v30, v7);
          _os_log_impl(&dword_26AC94000, v18, v17, "Failed to get preferred CTXPCServiceSubscriptionContext. %@", v30, 0xCu);
          MEMORY[0x277D82BD8](v7);
        }

        objc_storeStrong(&v18, 0);
      }

      if ([v23 isEqualToString:*MEMORY[0x277CC3E70]])
      {
        if (PSIsDataRoamingEnabled())
        {
          v28 = 1;
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }
      }

      else
      {
        v25 = 0;
      }

      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v23, 0);
      if (!v25)
      {
LABEL_23:
        v28 = 0;
        v25 = 1;
        goto LABEL_25;
      }

      if (v25 != 2)
      {
        goto LABEL_25;
      }
    }

    v28 = 0;
    v25 = 1;
    goto LABEL_25;
  }

  v28 = 0;
  v25 = 1;
LABEL_25:
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v28 & 1;
}

- (id)humanReadableTitleForError:(id)error
{
  v58 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v53 = 0;
  if ([(SUSUISoftwareUpdateManager *)selfCopy shouldIgnoreUpdateError:location[0]])
  {
    v56 = 0;
    v52 = 1;
    goto LABEL_37;
  }

  domain = [location[0] domain];
  v41 = getSUErrorDomain_3();
  v43 = [domain isEqualToString:?];
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](domain);
  if (v43)
  {
    code = [location[0] code];
    if (code == 6)
    {
      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v3 = [v40 localizedStringForKey:@"UPDATE_ERROR_TITLE_INSUFFICIENT_DISK_SPACE" value:&stru_287B79370 table:@"Software Update"];
      v4 = v53;
      v53 = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v40);
    }

    else
    {
      if ((code - 7) > 2)
      {
        switch(code)
        {
          case 17:
          case 19:
LABEL_30:
            v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v17 = [v24 localizedStringForKey:@"UPDATE_ERROR_TITLE_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
            v18 = v53;
            v53 = v17;
            MEMORY[0x277D82BD8](v18);
            MEMORY[0x277D82BD8](v24);
            goto LABEL_32;
          case 20:
            preferredUpdate = [(SUSUISoftwareUpdateManager *)selfCopy preferredUpdate];
            v48 = 0;
            if (preferredUpdate)
            {
              preferredUpdate2 = [(SUSUISoftwareUpdateManager *)selfCopy preferredUpdate];
              v48 = 1;
              SURequiredBatteryLevelForInstallForDescriptor();
            }

            else
            {
              SUPrefsRequiredBatteryLevelForInstall();
            }

            v36 = v9;
            if (v48)
            {
              MEMORY[0x277D82BD8](preferredUpdate2);
            }

            MEMORY[0x277D82BD8](preferredUpdate);
            v50 = v36;
            userInfo = [location[0] userInfo];
            v33 = getkSUInstallationConstraintsUnmetKey_1();
            v32 = [userInfo objectForKey:?];
            unsignedIntegerValue = [v32 unsignedIntegerValue];
            MEMORY[0x277D82BD8](v32);
            MEMORY[0x277D82BD8](v33);
            MEMORY[0x277D82BD8](userInfo);
            v47 = unsignedIntegerValue;
            if ([(SUSUISoftwareUpdateManager *)selfCopy clientIsBuddy]|| (v47 & 4) == 0)
            {
              if (v47)
              {
                v12 = floorf(100.0 * v50) / 100.0;
                *&v12 = v12;
                v46 = LODWORD(v12);
                v26 = MEMORY[0x277CCABB8];
                v27 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
                v45 = [v26 localizedStringFromNumber:? numberStyle:?];
                MEMORY[0x277D82BD8](v27);
                v28 = MEMORY[0x277CCACA8];
                v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v29 = [v30 localizedStringForKey:@"UPDATE_ERROR_TITLE_LOW_BATTERY" value:&stru_287B79370 table:@"Software Update"];
                v13 = [v28 stringWithFormat:v45];
                v14 = v53;
                v53 = v13;
                MEMORY[0x277D82BD8](v14);
                MEMORY[0x277D82BD8](v29);
                MEMORY[0x277D82BD8](v30);
                objc_storeStrong(&v45, 0);
              }

              else
              {
                v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v15 = [v25 localizedStringForKey:@"UPDATE_ERROR_TITLE_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                v16 = v53;
                v53 = v15;
                MEMORY[0x277D82BD8](v16);
                MEMORY[0x277D82BD8](v25);
              }
            }

            else
            {
              v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v10 = [v31 localizedStringForKey:@"UPDATE_ERROR_TITLE_INSUFFICIENT_DISK_SPACE" value:&stru_287B79370 table:@"Software Update"];
              v11 = v53;
              v53 = v10;
              MEMORY[0x277D82BD8](v11);
              MEMORY[0x277D82BD8](v31);
            }

            goto LABEL_32;
          case 31:
            v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v7 = [v38 localizedStringForKey:@"UPDATE_ERROR_TITLE_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
            v8 = v53;
            v53 = v7;
            MEMORY[0x277D82BD8](v8);
            MEMORY[0x277D82BD8](v38);
            goto LABEL_32;
        }

        if ((code - 33) > 1 && code != 57 && code != 83)
        {
          if (code == 104)
          {
            objc_storeStrong(&v53, @"Unable to Update");
            goto LABEL_32;
          }

          if (code != 106)
          {
            goto LABEL_32;
          }

          goto LABEL_30;
        }
      }

      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v39 localizedStringForKey:@"UPDATE_ERROR_TITLE_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
      v6 = v53;
      v53 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v39);
    }
  }

LABEL_32:
  if (!v53)
  {
    v44 = _SUSUILoggingFacility();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v57, location[0]);
      _os_log_impl(&dword_26AC94000, v44, OS_LOG_TYPE_DEFAULT, "SU generic title for error: %@", v57, 0xCu);
    }

    objc_storeStrong(&v44, 0);
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v23 localizedStringForKey:@"UPDATE_ERROR_TITLE_GENERAL_ERROR" value:&stru_287B79370 table:@"Software Update"];
    v20 = v53;
    v53 = v19;
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v23);
  }

  v56 = MEMORY[0x277D82BE0](v53);
  v52 = 1;
LABEL_37:
  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v21 = v56;

  return v21;
}

- (id)humanReadableDescriptionForError:(id)error
{
  v452 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v445 = 0;
  if ([(SUSUISoftwareUpdateManager *)selfCopy shouldIgnoreUpdateError:location[0]])
  {
    v448 = 0;
    v444 = 1;
  }

  else
  {
    domain = [location[0] domain];
    v133 = getSUErrorDomain_3();
    v135 = [domain isEqualToString:?];
    MEMORY[0x277D82BD8](v133);
    MEMORY[0x277D82BD8](domain);
    if (v135)
    {
      code = [location[0] code];
      switch(code)
      {
        case 6:
          v110 = MEMORY[0x277CCA8E8];
          v109 = MEMORY[0x277D64908];
          preferredUpdate = [(SUSUISoftwareUpdateManager *)selfCopy preferredUpdate];
          v397 = [v110 stringFromByteCount:objc_msgSend(v109 countStyle:{"totalDiskSpaceForUpdate:"), 2}];
          MEMORY[0x277D82BD8](preferredUpdate);
          v112 = MEMORY[0x277CCACA8];
          download = selfCopy->_download;
          v395 = 0;
          v393 = 0;
          v391 = 0;
          v389 = 0;
          v387 = 0;
          v385 = 0;
          if (download && (v396 = [(SUDownload *)selfCopy->_download descriptor], v395 = 1, v396) && (v394 = [(SUDownload *)selfCopy->_download descriptor], v393 = 1, ([(SUDescriptor *)v394 isSplatOnly]& 1) != 0))
          {
            v392 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v391 = 1;
            v390 = [v392 localizedStringForKey:@"RSR_STORAGE_DOWNLOAD_ERROR_%@" value:&stru_287B79370 table:@"Software Update"];
            v389 = 1;
            v108 = v390;
          }

          else
          {
            v388 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v387 = 1;
            v386 = [v388 localizedStringForKey:@"STORAGE_DOWNLOAD_ERROR_%@" value:&stru_287B79370 table:@"Software Update"];
            v385 = 1;
            v108 = v386;
          }

          v397 = [v112 stringWithFormat:v108, v397];
          v26 = v445;
          v445 = v397;
          MEMORY[0x277D82BD8](v26);
          if (v385)
          {
            MEMORY[0x277D82BD8](v386);
          }

          if (v387)
          {
            MEMORY[0x277D82BD8](v388);
          }

          if (v389)
          {
            MEMORY[0x277D82BD8](v390);
          }

          if (v391)
          {
            MEMORY[0x277D82BD8](v392);
          }

          if (v393)
          {
            MEMORY[0x277D82BD8](v394);
          }

          if (v395)
          {
            MEMORY[0x277D82BD8](v396);
          }

          v444 = 2;
          objc_storeStrong(&v397, 0);
          break;
        case 7:
        case 57:
          v3 = selfCopy->_download;
          v441 = 0;
          v439 = 0;
          v437 = 0;
          v435 = 0;
          v433 = 0;
          v431 = 0;
          if (v3 && (v442 = [(SUDownload *)selfCopy->_download descriptor], v441 = 1, v442) && (v440 = [(SUDownload *)selfCopy->_download descriptor], v439 = 1, ([(SUDescriptor *)v440 isSplatOnly]& 1) != 0))
          {
            v438 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v437 = 1;
            v436 = [v438 localizedStringForKey:@"RSR_ANY_NETWORK_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
            v435 = 1;
            objc_storeStrong(&v445, v436);
          }

          else
          {
            v434 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v433 = 1;
            v432 = [v434 localizedStringForKey:@"ANY_NETWORK_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
            v431 = 1;
            objc_storeStrong(&v445, v432);
          }

          if (v431)
          {
            MEMORY[0x277D82BD8](v432);
          }

          if (v433)
          {
            MEMORY[0x277D82BD8](v434);
          }

          if (v435)
          {
            MEMORY[0x277D82BD8](v436);
          }

          if (v437)
          {
            MEMORY[0x277D82BD8](v438);
          }

          if (v439)
          {
            MEMORY[0x277D82BD8](v440);
          }

          if (v441)
          {
            MEMORY[0x277D82BD8](v442);
          }

          break;
        case 8:
          goto LABEL_59;
        case 9:
        case 83:
          if ([(SUSUISoftwareUpdateManager *)selfCopy state]== 14)
          {
            v116 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v115 = SFLocalizableWAPIStringKeyForKey();
            v19 = [v116 localizedStringForKey:? value:? table:?];
            v20 = v445;
            v445 = v19;
            MEMORY[0x277D82BD8](v20);
            MEMORY[0x277D82BD8](v115);
            MEMORY[0x277D82BD8](v116);
          }

          else
          {
            v114 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v21 = selfCopy->_download;
            v400 = 0;
            v398 = 0;
            if (v21)
            {
              descriptor = [(SUDownload *)selfCopy->_download descriptor];
              v400 = 1;
              if (descriptor)
              {
                descriptor2 = [(SUDownload *)selfCopy->_download descriptor];
                v398 = 1;
                [(SUDescriptor *)descriptor2 isSplatOnly];
              }
            }

            v113 = SFLocalizableWAPIStringKeyForKey();
            v22 = [v114 localizedStringForKey:? value:? table:?];
            v23 = v445;
            v445 = v22;
            MEMORY[0x277D82BD8](v23);
            MEMORY[0x277D82BD8](v113);
            if (v398)
            {
              MEMORY[0x277D82BD8](descriptor2);
            }

            if (v400)
            {
              MEMORY[0x277D82BD8](descriptor);
            }

            MEMORY[0x277D82BD8](v114);
          }

          break;
        case 17:
          v64 = selfCopy->_download;
          v165 = 0;
          v163 = 0;
          v161 = 0;
          v159 = 0;
          v157 = 0;
          v155 = 0;
          v153 = 0;
          v151 = 0;
          if (v64 && (v166 = [(SUDownload *)selfCopy->_download descriptor], v165 = 1, v166) && (v164 = [(SUDownload *)selfCopy->_download descriptor], v163 = 1, ([(SUDescriptor *)v164 isSplatOnly]& 1) != 0))
          {
            v162 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v161 = 1;
            v160 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"RSR_VERIFICATION_FAILED"];
            v159 = 1;
            v158 = [v162 localizedStringForKey:? value:? table:?];
            v157 = 1;
            objc_storeStrong(&v445, v158);
          }

          else
          {
            v156 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v155 = 1;
            v154 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"VERIFICATION_FAILED"];
            v153 = 1;
            v152 = [v156 localizedStringForKey:? value:? table:?];
            v151 = 1;
            objc_storeStrong(&v445, v152);
          }

          if (v151)
          {
            MEMORY[0x277D82BD8](v152);
          }

          if (v153)
          {
            MEMORY[0x277D82BD8](v154);
          }

          if (v155)
          {
            MEMORY[0x277D82BD8](v156);
          }

          if (v157)
          {
            MEMORY[0x277D82BD8](v158);
          }

          if (v159)
          {
            MEMORY[0x277D82BD8](v160);
          }

          if (v161)
          {
            MEMORY[0x277D82BD8](v162);
          }

          if (v163)
          {
            MEMORY[0x277D82BD8](v164);
          }

          if (v165)
          {
            MEMORY[0x277D82BD8](v166);
          }

          break;
        case 19:
          v81 = MEMORY[0x277CCACA8];
          v65 = selfCopy->_download;
          v149 = 0;
          v147 = 0;
          v145 = 0;
          v143 = 0;
          v141 = 0;
          v139 = 0;
          if (v65 && (v150 = [(SUDownload *)selfCopy->_download descriptor], v149 = 1, v150) && (v148 = [(SUDownload *)selfCopy->_download descriptor], v147 = 1, ([(SUDescriptor *)v148 isSplatOnly]& 1) != 0))
          {
            v146 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v145 = 1;
            v144 = [v146 localizedStringForKey:@"RSR_PERSONALIZATION_FAILED" value:&stru_287B79370 table:@"Software Update"];
            v143 = 1;
            v80 = v144;
          }

          else
          {
            v142 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v141 = 1;
            v140 = [v142 localizedStringForKey:@"PERSONALIZATION_FAILED" value:&stru_287B79370 table:@"Software Update"];
            v139 = 1;
            v80 = v140;
          }

          preferredUpdate2 = [(SUSUISoftwareUpdateManager *)selfCopy preferredUpdate];
          humanReadableUpdateName = [(SUDescriptor *)preferredUpdate2 humanReadableUpdateName];
          v66 = [v81 stringWithFormat:v80, humanReadableUpdateName];
          v67 = v445;
          v445 = v66;
          MEMORY[0x277D82BD8](v67);
          MEMORY[0x277D82BD8](humanReadableUpdateName);
          MEMORY[0x277D82BD8](preferredUpdate2);
          if (v139)
          {
            MEMORY[0x277D82BD8](v140);
          }

          if (v141)
          {
            MEMORY[0x277D82BD8](v142);
          }

          if (v143)
          {
            MEMORY[0x277D82BD8](v144);
          }

          if (v145)
          {
            MEMORY[0x277D82BD8](v146);
          }

          if (v147)
          {
            MEMORY[0x277D82BD8](v148);
          }

          if (v149)
          {
            MEMORY[0x277D82BD8](v150);
          }

          break;
        case 20:
          preferredUpdate3 = [(SUSUISoftwareUpdateManager *)selfCopy preferredUpdate];
          SURequiredBatteryLevelForInstallation();
          v101 = v27;
          MEMORY[0x277D82BD8](preferredUpdate3);
          v28 = 100.0 * v101;
          v29 = floorf(v28) / 100.0;
          v384 = v29;
          v102 = MEMORY[0x277CCA8E8];
          preferredUpdate4 = [(SUSUISoftwareUpdateManager *)selfCopy preferredUpdate];
          v383 = [v102 stringFromByteCount:-[SUDescriptor installationSize](preferredUpdate4 countStyle:{"installationSize"), 2}];
          MEMORY[0x277D82BD8](preferredUpdate4);
          userInfo = [location[0] userInfo];
          v105 = getkSUInstallationConstraintsUnmetKey_1();
          v104 = [userInfo objectForKey:?];
          unsignedIntegerValue = [v104 unsignedIntegerValue];
          MEMORY[0x277D82BD8](v104);
          MEMORY[0x277D82BD8](v105);
          MEMORY[0x277D82BD8](userInfo);
          v382 = unsignedIntegerValue;
          if ((unsignedIntegerValue & 8) != 0)
          {
            v31 = selfCopy->_download;
            v380 = 0;
            v378 = 0;
            v376 = 0;
            v374 = 0;
            v372 = 0;
            v370 = 0;
            v368 = 0;
            v366 = 0;
            if (v31 && (v381 = [(SUDownload *)selfCopy->_download descriptor], v380 = 1, v381) && (v379 = [(SUDownload *)selfCopy->_download descriptor], v378 = 1, ([(SUDescriptor *)v379 isSplatOnly]& 1) != 0))
            {
              v377 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v376 = 1;
              v375 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"RSR_INSTALL_DELAYED_OTA_RESTORE"];
              v374 = 1;
              v373 = [v377 localizedStringForKey:? value:? table:?];
              v372 = 1;
              objc_storeStrong(&v445, v373);
            }

            else
            {
              v371 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v370 = 1;
              v369 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"INSTALL_DELAYED_OTA_RESTORE"];
              v368 = 1;
              v367 = [v371 localizedStringForKey:? value:? table:?];
              v366 = 1;
              objc_storeStrong(&v445, v367);
            }

            if (v366)
            {
              MEMORY[0x277D82BD8](v367);
            }

            if (v368)
            {
              MEMORY[0x277D82BD8](v369);
            }

            if (v370)
            {
              MEMORY[0x277D82BD8](v371);
            }

            if (v372)
            {
              MEMORY[0x277D82BD8](v373);
            }

            if (v374)
            {
              MEMORY[0x277D82BD8](v375);
            }

            if (v376)
            {
              MEMORY[0x277D82BD8](v377);
            }

            if (v378)
            {
              MEMORY[0x277D82BD8](v379);
            }

            if (v380)
            {
              MEMORY[0x277D82BD8](v381);
            }

            v444 = 2;
          }

          else
          {
            v365 = 7;
            v364 = 3;
            v363 = 5;
            v362 = 6;
            v98 = MEMORY[0x277CCABB8];
            *&v30 = v384;
            v99 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
            v361 = [v98 localizedStringFromNumber:? numberStyle:?];
            MEMORY[0x277D82BD8](v99);
            v360 = 0;
            v359 = SUPrefsconnectedToCharger(&v360);
            if ((v382 & v365) == v365)
            {
              v97 = MEMORY[0x277CCACA8];
              v32 = selfCopy->_download;
              v357 = 0;
              v355 = 0;
              v353 = 0;
              v351 = 0;
              v349 = 0;
              v347 = 0;
              if (v32 && (v358 = [(SUDownload *)selfCopy->_download descriptor], v357 = 1, v358) && (v356 = [(SUDownload *)selfCopy->_download descriptor], v355 = 1, ([(SUDescriptor *)v356 isSplatOnly]& 1) != 0))
              {
                v354 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v353 = 1;
                v352 = [v354 localizedStringForKey:@"RSR_BATTERY_STORAGE_AND_NETWORK_ERROR" value:&stru_287B79370 table:@"Software Update"];
                v351 = 1;
                v96 = v352;
              }

              else
              {
                v350 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v349 = 1;
                v348 = [v350 localizedStringForKey:@"BATTERY_STORAGE_AND_NETWORK_ERROR" value:&stru_287B79370 table:@"Software Update"];
                v347 = 1;
                v96 = v348;
              }

              v383 = [v97 stringWithFormat:v96, v361, v383];
              v34 = v445;
              v445 = v383;
              MEMORY[0x277D82BD8](v34);
              if (v347)
              {
                MEMORY[0x277D82BD8](v348);
              }

              if (v349)
              {
                MEMORY[0x277D82BD8](v350);
              }

              if (v351)
              {
                MEMORY[0x277D82BD8](v352);
              }

              if (v353)
              {
                MEMORY[0x277D82BD8](v354);
              }

              if (v355)
              {
                MEMORY[0x277D82BD8](v356);
              }

              if (v357)
              {
                MEMORY[0x277D82BD8](v358);
              }
            }

            else if ((v382 & v362) == v362)
            {
              v95 = MEMORY[0x277CCACA8];
              v35 = selfCopy->_download;
              v345 = 0;
              v343 = 0;
              v341 = 0;
              v339 = 0;
              v337 = 0;
              v335 = 0;
              if (v35 && (v346 = [(SUDownload *)selfCopy->_download descriptor], v345 = 1, v346) && (v344 = [(SUDownload *)selfCopy->_download descriptor], v343 = 1, ([(SUDescriptor *)v344 isSplatOnly]& 1) != 0))
              {
                v342 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v341 = 1;
                v340 = [v342 localizedStringForKey:@"RSR_STORAGE_AND_NETWORK_ERROR" value:&stru_287B79370 table:@"Software Update"];
                v339 = 1;
                v94 = v340;
              }

              else
              {
                v338 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v337 = 1;
                v336 = [v338 localizedStringForKey:@"STORAGE_AND_NETWORK_ERROR" value:&stru_287B79370 table:@"Software Update"];
                v335 = 1;
                v94 = v336;
              }

              v3832 = [v95 stringWithFormat:v94, v383];
              v37 = v445;
              v445 = v3832;
              MEMORY[0x277D82BD8](v37);
              if (v335)
              {
                MEMORY[0x277D82BD8](v336);
              }

              if (v337)
              {
                MEMORY[0x277D82BD8](v338);
              }

              if (v339)
              {
                MEMORY[0x277D82BD8](v340);
              }

              if (v341)
              {
                MEMORY[0x277D82BD8](v342);
              }

              if (v343)
              {
                MEMORY[0x277D82BD8](v344);
              }

              if (v345)
              {
                MEMORY[0x277D82BD8](v346);
              }
            }

            else if ((v382 & v364) == v364)
            {
              v93 = MEMORY[0x277CCACA8];
              v38 = selfCopy->_download;
              v333 = 0;
              v331 = 0;
              v329 = 0;
              v327 = 0;
              v325 = 0;
              v323 = 0;
              if (v38 && (v334 = [(SUDownload *)selfCopy->_download descriptor], v333 = 1, v334) && (v332 = [(SUDownload *)selfCopy->_download descriptor], v331 = 1, ([(SUDescriptor *)v332 isSplatOnly]& 1) != 0))
              {
                v330 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v329 = 1;
                v328 = [v330 localizedStringForKey:@"RSR_BATTERY_AND_NETWORK_ERROR" value:&stru_287B79370 table:@"Software Update"];
                v327 = 1;
                v92 = v328;
              }

              else
              {
                v326 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v325 = 1;
                v324 = [v326 localizedStringForKey:@"BATTERY_AND_NETWORK_ERROR" value:&stru_287B79370 table:@"Software Update"];
                v323 = 1;
                v92 = v324;
              }

              v361 = [v93 stringWithFormat:v92, v361];
              v40 = v445;
              v445 = v361;
              MEMORY[0x277D82BD8](v40);
              if (v323)
              {
                MEMORY[0x277D82BD8](v324);
              }

              if (v325)
              {
                MEMORY[0x277D82BD8](v326);
              }

              if (v327)
              {
                MEMORY[0x277D82BD8](v328);
              }

              if (v329)
              {
                MEMORY[0x277D82BD8](v330);
              }

              if (v331)
              {
                MEMORY[0x277D82BD8](v332);
              }

              if (v333)
              {
                MEMORY[0x277D82BD8](v334);
              }
            }

            else if ((v382 & v363) == v363)
            {
              v91 = MEMORY[0x277CCACA8];
              v41 = selfCopy->_download;
              v321 = 0;
              v319 = 0;
              v317 = 0;
              v315 = 0;
              v313 = 0;
              v311 = 0;
              if (v41 && (v322 = [(SUDownload *)selfCopy->_download descriptor], v321 = 1, v322) && (v320 = [(SUDownload *)selfCopy->_download descriptor], v319 = 1, ([(SUDescriptor *)v320 isSplatOnly]& 1) != 0))
              {
                v318 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v317 = 1;
                v316 = [v318 localizedStringForKey:@"RSR_BATTERY_AND_STORAGE_ERROR" value:&stru_287B79370 table:@"Software Update"];
                v315 = 1;
                v90 = v316;
              }

              else
              {
                v314 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v313 = 1;
                v312 = [v314 localizedStringForKey:@"BATTERY_AND_STORAGE_ERROR" value:&stru_287B79370 table:@"Software Update"];
                v311 = 1;
                v90 = v312;
              }

              v3833 = [v91 stringWithFormat:v90, v361, v383];
              v43 = v445;
              v445 = v3833;
              MEMORY[0x277D82BD8](v43);
              if (v311)
              {
                MEMORY[0x277D82BD8](v312);
              }

              if (v313)
              {
                MEMORY[0x277D82BD8](v314);
              }

              if (v315)
              {
                MEMORY[0x277D82BD8](v316);
              }

              if (v317)
              {
                MEMORY[0x277D82BD8](v318);
              }

              if (v319)
              {
                MEMORY[0x277D82BD8](v320);
              }

              if (v321)
              {
                MEMORY[0x277D82BD8](v322);
              }
            }

            else if (v382 & 1) == 0 || (v359)
            {
              if ((v382 & 1) != 0 && (v359 & 1) != 0 && (v360 & 1) == 0)
              {
                v87 = MEMORY[0x277CCACA8];
                v47 = selfCopy->_download;
                v297 = 0;
                v295 = 0;
                v293 = 0;
                v291 = 0;
                v289 = 0;
                v287 = 0;
                if (v47 && (v298 = [(SUDownload *)selfCopy->_download descriptor], v297 = 1, v298) && (v296 = [(SUDownload *)selfCopy->_download descriptor], v295 = 1, ([(SUDescriptor *)v296 isSplatOnly]& 1) != 0))
                {
                  v294 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v293 = 1;
                  v292 = [v294 localizedStringForKey:@"RSR_BATTERY_WIRED_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v291 = 1;
                  v86 = v292;
                }

                else
                {
                  v290 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v289 = 1;
                  v288 = [v290 localizedStringForKey:@"BATTERY_WIRED_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v287 = 1;
                  v86 = v288;
                }

                v3612 = [v87 stringWithFormat:v86, v361];
                v49 = v445;
                v445 = v3612;
                MEMORY[0x277D82BD8](v49);
                if (v287)
                {
                  MEMORY[0x277D82BD8](v288);
                }

                if (v289)
                {
                  MEMORY[0x277D82BD8](v290);
                }

                if (v291)
                {
                  MEMORY[0x277D82BD8](v292);
                }

                if (v293)
                {
                  MEMORY[0x277D82BD8](v294);
                }

                if (v295)
                {
                  MEMORY[0x277D82BD8](v296);
                }

                if (v297)
                {
                  MEMORY[0x277D82BD8](v298);
                }
              }

              else if (v382 & 1) != 0 && (v359 & 1) != 0 && (v360)
              {
                v85 = MEMORY[0x277CCACA8];
                v50 = selfCopy->_download;
                v285 = 0;
                v283 = 0;
                v281 = 0;
                v279 = 0;
                v277 = 0;
                v275 = 0;
                if (v50 && (v286 = [(SUDownload *)selfCopy->_download descriptor], v285 = 1, v286) && (v284 = [(SUDownload *)selfCopy->_download descriptor], v283 = 1, ([(SUDescriptor *)v284 isSplatOnly]& 1) != 0))
                {
                  v282 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v281 = 1;
                  v280 = [v282 localizedStringForKey:@"RSR_BATTERY_WIRELESS_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v279 = 1;
                  v84 = v280;
                }

                else
                {
                  v278 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v277 = 1;
                  v276 = [v278 localizedStringForKey:@"BATTERY_WIRELESS_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v275 = 1;
                  v84 = v276;
                }

                v3613 = [v85 stringWithFormat:v84, v361];
                v52 = v445;
                v445 = v3613;
                MEMORY[0x277D82BD8](v52);
                if (v275)
                {
                  MEMORY[0x277D82BD8](v276);
                }

                if (v277)
                {
                  MEMORY[0x277D82BD8](v278);
                }

                if (v279)
                {
                  MEMORY[0x277D82BD8](v280);
                }

                if (v281)
                {
                  MEMORY[0x277D82BD8](v282);
                }

                if (v283)
                {
                  MEMORY[0x277D82BD8](v284);
                }

                if (v285)
                {
                  MEMORY[0x277D82BD8](v286);
                }
              }

              else if ((v382 & 4) != 0)
              {
                v83 = MEMORY[0x277CCACA8];
                v53 = selfCopy->_download;
                v273 = 0;
                v271 = 0;
                v269 = 0;
                v267 = 0;
                v265 = 0;
                v263 = 0;
                if (v53 && (v274 = [(SUDownload *)selfCopy->_download descriptor], v273 = 1, v274) && (v272 = [(SUDownload *)selfCopy->_download descriptor], v271 = 1, ([(SUDescriptor *)v272 isSplatOnly]& 1) != 0))
                {
                  v270 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v269 = 1;
                  v268 = [v270 localizedStringForKey:@"RSR_STORAGE_DOWNLOAD_ERROR_%@" value:&stru_287B79370 table:@"Software Update"];
                  v267 = 1;
                  v82 = v268;
                }

                else
                {
                  v266 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v265 = 1;
                  v264 = [v266 localizedStringForKey:@"STORAGE_DOWNLOAD_ERROR_%@" value:&stru_287B79370 table:@"Software Update"];
                  v263 = 1;
                  v82 = v264;
                }

                v3834 = [v83 stringWithFormat:v82, v383];
                v55 = v445;
                v445 = v3834;
                MEMORY[0x277D82BD8](v55);
                if (v263)
                {
                  MEMORY[0x277D82BD8](v264);
                }

                if (v265)
                {
                  MEMORY[0x277D82BD8](v266);
                }

                if (v267)
                {
                  MEMORY[0x277D82BD8](v268);
                }

                if (v269)
                {
                  MEMORY[0x277D82BD8](v270);
                }

                if (v271)
                {
                  MEMORY[0x277D82BD8](v272);
                }

                if (v273)
                {
                  MEMORY[0x277D82BD8](v274);
                }
              }

              else if ((v382 & 2) != 0)
              {
                v56 = selfCopy->_download;
                v261 = 0;
                v259 = 0;
                v257 = 0;
                v255 = 0;
                v253 = 0;
                v251 = 0;
                if (v56 && (v262 = [(SUDownload *)selfCopy->_download descriptor], v261 = 1, v262) && (v260 = [(SUDownload *)selfCopy->_download descriptor], v259 = 1, ([(SUDescriptor *)v260 isSplatOnly]& 1) != 0))
                {
                  v258 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v257 = 1;
                  v256 = [v258 localizedStringForKey:@"RSR_NETWORK_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v255 = 1;
                  objc_storeStrong(&v445, v256);
                }

                else
                {
                  v254 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v253 = 1;
                  v252 = [v254 localizedStringForKey:@"NETWORK_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v251 = 1;
                  objc_storeStrong(&v445, v252);
                }

                if (v251)
                {
                  MEMORY[0x277D82BD8](v252);
                }

                if (v253)
                {
                  MEMORY[0x277D82BD8](v254);
                }

                if (v255)
                {
                  MEMORY[0x277D82BD8](v256);
                }

                if (v257)
                {
                  MEMORY[0x277D82BD8](v258);
                }

                if (v259)
                {
                  MEMORY[0x277D82BD8](v260);
                }

                if (v261)
                {
                  MEMORY[0x277D82BD8](v262);
                }
              }

              else if ((v382 & 0x80) != 0)
              {
                v57 = selfCopy->_download;
                v249 = 0;
                v247 = 0;
                v245 = 0;
                v243 = 0;
                v241 = 0;
                v239 = 0;
                if (v57 && (v250 = [(SUDownload *)selfCopy->_download descriptor], v249 = 1, v250) && (v248 = [(SUDownload *)selfCopy->_download descriptor], v247 = 1, ([(SUDescriptor *)v248 isSplatOnly]& 1) != 0))
                {
                  v246 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v245 = 1;
                  v244 = [v246 localizedStringForKey:@"RSR_SYNCING_DATA_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v243 = 1;
                  objc_storeStrong(&v445, v244);
                }

                else
                {
                  v242 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v241 = 1;
                  v240 = [v242 localizedStringForKey:@"SYNCING_DATA_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v239 = 1;
                  objc_storeStrong(&v445, v240);
                }

                if (v239)
                {
                  MEMORY[0x277D82BD8](v240);
                }

                if (v241)
                {
                  MEMORY[0x277D82BD8](v242);
                }

                if (v243)
                {
                  MEMORY[0x277D82BD8](v244);
                }

                if (v245)
                {
                  MEMORY[0x277D82BD8](v246);
                }

                if (v247)
                {
                  MEMORY[0x277D82BD8](v248);
                }

                if (v249)
                {
                  MEMORY[0x277D82BD8](v250);
                }
              }

              else if ((v382 & 0x100) != 0)
              {
                v58 = selfCopy->_download;
                v237 = 0;
                v235 = 0;
                v233 = 0;
                v231 = 0;
                v229 = 0;
                v227 = 0;
                if (v58 && (v238 = [(SUDownload *)selfCopy->_download descriptor], v237 = 1, v238) && (v236 = [(SUDownload *)selfCopy->_download descriptor], v235 = 1, ([(SUDescriptor *)v236 isSplatOnly]& 1) != 0))
                {
                  v234 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v233 = 1;
                  v232 = [v234 localizedStringForKey:@"RSR_PHONE_CALL_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v231 = 1;
                  objc_storeStrong(&v445, v232);
                }

                else
                {
                  v230 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v229 = 1;
                  v228 = [v230 localizedStringForKey:@"PHONE_CALL_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v227 = 1;
                  objc_storeStrong(&v445, v228);
                }

                if (v227)
                {
                  MEMORY[0x277D82BD8](v228);
                }

                if (v229)
                {
                  MEMORY[0x277D82BD8](v230);
                }

                if (v231)
                {
                  MEMORY[0x277D82BD8](v232);
                }

                if (v233)
                {
                  MEMORY[0x277D82BD8](v234);
                }

                if (v235)
                {
                  MEMORY[0x277D82BD8](v236);
                }

                if (v237)
                {
                  MEMORY[0x277D82BD8](v238);
                }
              }

              else if ((v382 & 0x40) != 0)
              {
                v59 = selfCopy->_download;
                v225 = 0;
                v223 = 0;
                v221 = 0;
                v219 = 0;
                v217 = 0;
                v215 = 0;
                if (v59 && (v226 = [(SUDownload *)selfCopy->_download descriptor], v225 = 1, v226) && (v224 = [(SUDownload *)selfCopy->_download descriptor], v223 = 1, ([(SUDescriptor *)v224 isSplatOnly]& 1) != 0))
                {
                  v222 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v221 = 1;
                  v220 = [v222 localizedStringForKey:@"RSR_RESTORING_FROM_BACKUP_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v219 = 1;
                  objc_storeStrong(&v445, v220);
                }

                else
                {
                  v218 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v217 = 1;
                  v216 = [v218 localizedStringForKey:@"RESTORING_FROM_BACKUP_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v215 = 1;
                  objc_storeStrong(&v445, v216);
                }

                if (v215)
                {
                  MEMORY[0x277D82BD8](v216);
                }

                if (v217)
                {
                  MEMORY[0x277D82BD8](v218);
                }

                if (v219)
                {
                  MEMORY[0x277D82BD8](v220);
                }

                if (v221)
                {
                  MEMORY[0x277D82BD8](v222);
                }

                if (v223)
                {
                  MEMORY[0x277D82BD8](v224);
                }

                if (v225)
                {
                  MEMORY[0x277D82BD8](v226);
                }
              }

              else if ((v382 & 0x200) != 0)
              {
                v60 = selfCopy->_download;
                v213 = 0;
                v211 = 0;
                v209 = 0;
                v207 = 0;
                v205 = 0;
                v203 = 0;
                if (v60 && (v214 = [(SUDownload *)selfCopy->_download descriptor], v213 = 1, v214) && (v212 = [(SUDownload *)selfCopy->_download descriptor], v211 = 1, ([(SUDescriptor *)v212 isSplatOnly]& 1) != 0))
                {
                  v210 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v209 = 1;
                  v208 = [v210 localizedStringForKey:@"RSR_CARPLAY_CONNECTED_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v207 = 1;
                  objc_storeStrong(&v445, v208);
                }

                else
                {
                  v206 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v205 = 1;
                  v204 = [v206 localizedStringForKey:@"CARPLAY_CONNECTED_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v203 = 1;
                  objc_storeStrong(&v445, v204);
                }

                if (v203)
                {
                  MEMORY[0x277D82BD8](v204);
                }

                if (v205)
                {
                  MEMORY[0x277D82BD8](v206);
                }

                if (v207)
                {
                  MEMORY[0x277D82BD8](v208);
                }

                if (v209)
                {
                  MEMORY[0x277D82BD8](v210);
                }

                if (v211)
                {
                  MEMORY[0x277D82BD8](v212);
                }

                if (v213)
                {
                  MEMORY[0x277D82BD8](v214);
                }
              }

              else if ((v382 & 0x400) != 0)
              {
                v61 = selfCopy->_download;
                v201 = 0;
                v199 = 0;
                v197 = 0;
                v195 = 0;
                v193 = 0;
                v191 = 0;
                if (v61 && (v202 = [(SUDownload *)selfCopy->_download descriptor], v201 = 1, v202) && (v200 = [(SUDownload *)selfCopy->_download descriptor], v199 = 1, ([(SUDescriptor *)v200 isSplatOnly]& 1) != 0))
                {
                  v198 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v197 = 1;
                  v196 = [v198 localizedStringForKey:@"RSR_MEDIA_PLAYING_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v195 = 1;
                  objc_storeStrong(&v445, v196);
                }

                else
                {
                  v194 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v193 = 1;
                  v192 = [v194 localizedStringForKey:@"MEDIA_PLAYING_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v191 = 1;
                  objc_storeStrong(&v445, v192);
                }

                if (v191)
                {
                  MEMORY[0x277D82BD8](v192);
                }

                if (v193)
                {
                  MEMORY[0x277D82BD8](v194);
                }

                if (v195)
                {
                  MEMORY[0x277D82BD8](v196);
                }

                if (v197)
                {
                  MEMORY[0x277D82BD8](v198);
                }

                if (v199)
                {
                  MEMORY[0x277D82BD8](v200);
                }

                if (v201)
                {
                  MEMORY[0x277D82BD8](v202);
                }
              }

              else if ((v382 & 0x800) != 0)
              {
                v62 = selfCopy->_download;
                v189 = 0;
                v187 = 0;
                v185 = 0;
                v183 = 0;
                v181 = 0;
                v179 = 0;
                if (v62 && (v190 = [(SUDownload *)selfCopy->_download descriptor], v189 = 1, v190) && (v188 = [(SUDownload *)selfCopy->_download descriptor], v187 = 1, ([(SUDescriptor *)v188 isSplatOnly]& 1) != 0))
                {
                  v186 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v185 = 1;
                  v184 = [v186 localizedStringForKey:@"RSR_DRIVING_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v183 = 1;
                  objc_storeStrong(&v445, v184);
                }

                else
                {
                  v182 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v181 = 1;
                  v180 = [v182 localizedStringForKey:@"DRIVING_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v179 = 1;
                  objc_storeStrong(&v445, v180);
                }

                if (v179)
                {
                  MEMORY[0x277D82BD8](v180);
                }

                if (v181)
                {
                  MEMORY[0x277D82BD8](v182);
                }

                if (v183)
                {
                  MEMORY[0x277D82BD8](v184);
                }

                if (v185)
                {
                  MEMORY[0x277D82BD8](v186);
                }

                if (v187)
                {
                  MEMORY[0x277D82BD8](v188);
                }

                if (v189)
                {
                  MEMORY[0x277D82BD8](v190);
                }
              }

              else if ((v382 & 0x1000) != 0)
              {
                v63 = selfCopy->_download;
                v177 = 0;
                v175 = 0;
                v173 = 0;
                v171 = 0;
                v169 = 0;
                v167 = 0;
                if (v63 && (v178 = [(SUDownload *)selfCopy->_download descriptor], v177 = 1, v178) && (v176 = [(SUDownload *)selfCopy->_download descriptor], v175 = 1, ([(SUDescriptor *)v176 isSplatOnly]& 1) != 0))
                {
                  v174 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v173 = 1;
                  v172 = [v174 localizedStringForKey:@"RSR_WOMBAT_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v171 = 1;
                  objc_storeStrong(&v445, v172);
                }

                else
                {
                  v170 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v169 = 1;
                  v168 = [v170 localizedStringForKey:@"WOMBAT_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                  v167 = 1;
                  objc_storeStrong(&v445, v168);
                }

                if (v167)
                {
                  MEMORY[0x277D82BD8](v168);
                }

                if (v169)
                {
                  MEMORY[0x277D82BD8](v170);
                }

                if (v171)
                {
                  MEMORY[0x277D82BD8](v172);
                }

                if (v173)
                {
                  MEMORY[0x277D82BD8](v174);
                }

                if (v175)
                {
                  MEMORY[0x277D82BD8](v176);
                }

                if (v177)
                {
                  MEMORY[0x277D82BD8](v178);
                }
              }
            }

            else
            {
              v89 = MEMORY[0x277CCACA8];
              v44 = selfCopy->_download;
              v309 = 0;
              v307 = 0;
              v305 = 0;
              v303 = 0;
              v301 = 0;
              v299 = 0;
              if (v44 && (v310 = [(SUDownload *)selfCopy->_download descriptor], v309 = 1, v310) && (v308 = [(SUDownload *)selfCopy->_download descriptor], v307 = 1, ([(SUDescriptor *)v308 isSplatOnly]& 1) != 0))
              {
                v306 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v305 = 1;
                v304 = [v306 localizedStringForKey:@"RSR_BATTERY_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                v303 = 1;
                v88 = v304;
              }

              else
              {
                v302 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v301 = 1;
                v300 = [v302 localizedStringForKey:@"BATTERY_INSTALL_ERROR" value:&stru_287B79370 table:@"Software Update"];
                v299 = 1;
                v88 = v300;
              }

              v3614 = [v89 stringWithFormat:v88, v361];
              v46 = v445;
              v445 = v3614;
              MEMORY[0x277D82BD8](v46);
              if (v299)
              {
                MEMORY[0x277D82BD8](v300);
              }

              if (v301)
              {
                MEMORY[0x277D82BD8](v302);
              }

              if (v303)
              {
                MEMORY[0x277D82BD8](v304);
              }

              if (v305)
              {
                MEMORY[0x277D82BD8](v306);
              }

              if (v307)
              {
                MEMORY[0x277D82BD8](v308);
              }

              if (v309)
              {
                MEMORY[0x277D82BD8](v310);
              }
            }

            v444 = 2;
            objc_storeStrong(&v361, 0);
          }

          objc_storeStrong(&v383, 0);
          break;
        case 31:
          v119 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v118 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"UPDATE_NOT_OTA_DOWNLOADABLE"];
          v15 = [v119 localizedStringForKey:? value:? table:?];
          v16 = v445;
          v445 = v15;
          MEMORY[0x277D82BD8](v16);
          MEMORY[0x277D82BD8](v118);
          MEMORY[0x277D82BD8](v119);
          break;
        case 33:
        case 34:
          if ([(SUSUISoftwareUpdateManager *)selfCopy state]!= 14)
          {
            goto LABEL_59;
          }

          v430 = 0;
          v130 = objc_alloc(MEMORY[0x277CC37B0]);
          v131 = dispatch_get_global_queue(33, 0);
          v429 = [v130 initWithQueue:?];
          MEMORY[0x277D82BD8](v131);
          v428 = 0;
          v426 = 0;
          v132 = [v429 getPreferredDataSubscriptionContextSync:&v426];
          objc_storeStrong(&v428, v426);
          v427 = v132;
          if (v132)
          {
            v423 = 0;
            v422 = 0;
            v128 = [v429 copyRegistrationStatus:v427 error:&v422];
            objc_storeStrong(&v423, v422);
            v4 = v430;
            v430 = v128;
            MEMORY[0x277D82BD8](v4);
            if (!v430)
            {
              v421 = _SUSUILoggingFacility();
              v420 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v421, OS_LOG_TYPE_DEFAULT))
              {
                v127 = [v423 description];
                __os_log_helper_16_2_1_8_64(v450, v127);
                _os_log_impl(&dword_26AC94000, v421, v420, "Failed to copyRegistrationStatus from CoreTelephony. %@", v450, 0xCu);
                MEMORY[0x277D82BD8](v127);
              }

              objc_storeStrong(&v421, 0);
            }

            objc_storeStrong(&v423, 0);
          }

          else
          {
            v425 = _SUSUILoggingFacility();
            type = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v425, OS_LOG_TYPE_DEFAULT))
            {
              v129 = [v428 description];
              __os_log_helper_16_2_1_8_64(v451, v129);
              _os_log_impl(&dword_26AC94000, v425, type, "Failed to get preferred CTXPCServiceSubscriptionContext. %@", v451, 0xCu);
              MEMORY[0x277D82BD8](v129);
            }

            objc_storeStrong(&v425, 0);
          }

          v419 = [v430 isEqualToString:*MEMORY[0x277CC3E70]];
          if (v419)
          {
            v418 = PSIsDataRoamingEnabled();
            if (v418)
            {
              v126 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v5 = [v126 localizedStringForKey:@"DOWNLOAD_RESUME_ROAMING_REQUIRED" value:&stru_287B79370 table:@"Software Update"];
              v6 = v445;
              v445 = v5;
              MEMORY[0x277D82BD8](v6);
              MEMORY[0x277D82BD8](v126);
            }

            else
            {
              v125 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v124 = SFLocalizableWAPIStringKeyForKey();
              v7 = [v125 localizedStringForKey:? value:? table:?];
              v8 = v445;
              v445 = v7;
              MEMORY[0x277D82BD8](v8);
              MEMORY[0x277D82BD8](v124);
              MEMORY[0x277D82BD8](v125);
            }

            v444 = 2;
          }

          else if (code == 33)
          {
            v9 = selfCopy->_download;
            v416 = 0;
            v414 = 0;
            v412 = 0;
            v410 = 0;
            v408 = 0;
            v406 = 0;
            if (v9 && (v417 = [(SUDownload *)selfCopy->_download descriptor], v416 = 1, v417) && (v415 = [(SUDownload *)selfCopy->_download descriptor], v414 = 1, ([(SUDescriptor *)v415 isSplatOnly]& 1) != 0))
            {
              v413 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v412 = 1;
              v411 = [v413 localizedStringForKey:@"RSR_ANY_NETWORK_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
              v410 = 1;
              objc_storeStrong(&v445, v411);
            }

            else
            {
              v409 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v408 = 1;
              v407 = [v409 localizedStringForKey:@"ANY_NETWORK_DOWNLOAD_ERROR" value:&stru_287B79370 table:@"Software Update"];
              v406 = 1;
              objc_storeStrong(&v445, v407);
            }

            if (v406)
            {
              MEMORY[0x277D82BD8](v407);
            }

            if (v408)
            {
              MEMORY[0x277D82BD8](v409);
            }

            if (v410)
            {
              MEMORY[0x277D82BD8](v411);
            }

            if (v412)
            {
              MEMORY[0x277D82BD8](v413);
            }

            if (v414)
            {
              MEMORY[0x277D82BD8](v415);
            }

            if (v416)
            {
              MEMORY[0x277D82BD8](v417);
            }

            v444 = 2;
          }

          else
          {
            v444 = 0;
          }

          objc_storeStrong(&v427, 0);
          objc_storeStrong(&v428, 0);
          objc_storeStrong(&v429, 0);
          objc_storeStrong(&v430, 0);
          if (!v444)
          {
LABEL_59:
            if ([(SUSUISoftwareUpdateManager *)selfCopy state]== 14)
            {
              v123 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v122 = SFLocalizableWAPIStringKeyForKey();
              v10 = [v123 localizedStringForKey:? value:? table:?];
              v11 = v445;
              v445 = v10;
              MEMORY[0x277D82BD8](v11);
              MEMORY[0x277D82BD8](v122);
              MEMORY[0x277D82BD8](v123);
            }

            else
            {
              v121 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v12 = selfCopy->_download;
              v404 = 0;
              v402 = 0;
              if (v12)
              {
                descriptor3 = [(SUDownload *)selfCopy->_download descriptor];
                v404 = 1;
                if (descriptor3)
                {
                  descriptor4 = [(SUDownload *)selfCopy->_download descriptor];
                  v402 = 1;
                  [(SUDescriptor *)descriptor4 isSplatOnly];
                }
              }

              v120 = SFLocalizableWAPIStringKeyForKey();
              v13 = [v121 localizedStringForKey:? value:? table:?];
              v14 = v445;
              v445 = v13;
              MEMORY[0x277D82BD8](v14);
              MEMORY[0x277D82BD8](v120);
              if (v402)
              {
                MEMORY[0x277D82BD8](descriptor4);
              }

              if (v404)
              {
                MEMORY[0x277D82BD8](descriptor3);
              }

              MEMORY[0x277D82BD8](v121);
            }
          }

          break;
        case 104:
          objc_storeStrong(&v445, @"INTERNAL ONLY: Device needs to be rooted from snapshot to update.\nAs root user, run 'snapshottool golive 0' then 'reboot'.\nYou'll be able to update once the device boots back.");
          break;
        case 106:
          v117 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v17 = [v117 localizedStringForKey:@"UPDATE_NOT_OTA_INSTALLABLE" value:&stru_287B79370 table:@"Software Update"];
          v18 = v445;
          v445 = v17;
          MEMORY[0x277D82BD8](v18);
          MEMORY[0x277D82BD8](v117);
          break;
        default:
          break;
      }
    }

    else
    {
      domain2 = [location[0] domain];
      v77 = [domain2 isEqualToString:@"com.apple.preferences.softwareupdate"];
      MEMORY[0x277D82BD8](domain2);
      if ((v77 & 1) != 0 && [location[0] code] == 1)
      {
        v75 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v68 = [v75 localizedStringForKey:@"UPDATE_REQUESTED_EXPLANATION" value:&stru_287B79370 table:@"Software Update"];
        v69 = v445;
        v445 = v68;
        MEMORY[0x277D82BD8](v69);
        MEMORY[0x277D82BD8](v75);
      }
    }

    if (location[0] && !v445)
    {
      oslog = _SUSUILoggingFacility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v449, location[0]);
        _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "SU generic error: %@", v449, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      objc_storeStrong(&v445, &stru_287B79370);
    }

    v136 = 0;
    sf_isInternalInstall = 0;
    if (location[0])
    {
      sf_isInternalInstall = 0;
      if ([v445 isEqualToString:&stru_287B79370])
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        v136 = 1;
        sf_isInternalInstall = [currentDevice sf_isInternalInstall];
      }
    }

    if (v136)
    {
      MEMORY[0x277D82BD8](currentDevice);
    }

    if (sf_isInternalInstall)
    {
      v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Internal Only] An unresolvable error has occurred, please file a radar. Error Code: %ld.", objc_msgSend(location[0], "code")];
      v71 = v445;
      v445 = v70;
      MEMORY[0x277D82BD8](v71);
    }

    v448 = MEMORY[0x277D82BE0](v445);
    v444 = 1;
  }

  objc_storeStrong(&v445, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v72 = v448;

  return v72;
}

- (id)humanReadableDescriptionForError:(id)error enableButton:(BOOL *)button showAsButtonFooter:(BOOL *)footer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  if (footer)
  {
    *footer = 0;
  }

  v6 = [(SUSUISoftwareUpdateManager *)selfCopy humanReadableDescriptionForError:location[0] enableButton:button];
  objc_storeStrong(location, 0);

  return v6;
}

- (void)promptForDevicePasscodeForDescriptor:(id)descriptor unattendedInstall:(BOOL)install completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  installCopy = install;
  v13 = 0;
  objc_storeStrong(&v13, completion);
  suClient = selfCopy->_suClient;
  v7 = location[0];
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = MEMORY[0x277D82BE0](location[0]);
  v12 = installCopy;
  v11 = MEMORY[0x277D82BE0](v13);
  [(SUSUISoftwareUpdateClientManager *)suClient isInstallationKeybagRequiredForDescriptor:v7 result:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __96__SUSUISoftwareUpdateManager_promptForDevicePasscodeForDescriptor_unattendedInstall_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v72 = &v94;
  v71 = a1;
  v70 = "[SUSUISoftwareUpdateManager promptForDevicePasscodeForDescriptor:unattendedInstall:completion:]_block_invoke";
  v114 = *MEMORY[0x277D85DE8];
  v110 = a1;
  v109 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v107[1] = v71;
  v107[0] = _SUSUILoggingFacility();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v107[0], OS_LOG_TYPE_DEFAULT))
  {
    log = *(v72 + 21);
    *v66 = type;
    v67 = SUSUISoftwareUpdateStateToString(*(*(v71 + 32) + 88));
    v3 = MEMORY[0x277D82BE0](v67);
    v4 = v71;
    v68 = v3;
    *(v72 + 19) = v3;
    v69 = *(*(v4 + 32) + 88);
    v5 = *(*(v4 + 32) + 120);
    v104 = 0;
    if (v5)
    {
      v6 = [*(*(v71 + 32) + 120) humanReadableUpdateName];
      *(v72 + 18) = v6;
      v104 = 1;
      v64 = v6;
    }

    else
    {
      v64 = @"N/A";
    }

    v61 = v64;
    v62 = *(*(v71 + 32) + 120);
    v63 = *(*(v71 + 32) + 160);
    v7 = *(*(v71 + 32) + 128);
    v103 = 0;
    if (v7)
    {
      v8 = [*(*(v71 + 32) + 128) humanReadableUpdateName];
      *(v72 + 16) = v8;
      v103 = 1;
      v60 = v8;
    }

    else
    {
      v60 = @"N/A";
    }

    v56 = v60;
    v57 = *(*(v71 + 32) + 128);
    v58 = *(*(v71 + 32) + 168);
    v59 = *(*(v71 + 32) + 8);
    v9 = *(*(v71 + 32) + 8);
    v102 = 0;
    v101 = 0;
    v100 = 0;
    if (v9 && (v10 = [*(*(v71 + 32) + 8) descriptor], *(v72 + 14) = v10, v102 = 1, v10))
    {
      v11 = [*(*(v71 + 32) + 8) descriptor];
      *(v72 + 12) = v11;
      v54 = 1;
      v101 = 1;
      v12 = [v11 humanReadableUpdateName];
      *(v72 + 10) = v12;
      v100 = 1;
      v55 = v12;
    }

    else
    {
      v55 = @"N/A";
    }

    v51 = v55;
    WeakRetained = objc_loadWeakRetained((*(v71 + 32) + 104));
    v53 = objc_loadWeakRetained((*(v71 + 32) + 104));
    v99 = 0;
    v98 = 0;
    if (v53)
    {
      *(v72 + 8) = objc_loadWeakRetained((*(v71 + 32) + 104));
      v49 = 1;
      v99 = 1;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *(v72 + 6) = v14;
      v98 = 1;
      v50 = v14;
    }

    else
    {
      v50 = @"N/A";
    }

    v46 = v50;
    v47 = objc_loadWeakRetained((*(v71 + 32) + 112));
    v48 = objc_loadWeakRetained((*(v71 + 32) + 112));
    v97 = 0;
    v96 = 0;
    if (v48)
    {
      *(v72 + 4) = objc_loadWeakRetained((*(v71 + 32) + 112));
      v44 = 1;
      v97 = 1;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *(v72 + 2) = v16;
      v96 = 1;
      v45 = v16;
    }

    else
    {
      v45 = @"N/A";
    }

    v42 = &v19;
    buf = v113;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0(v113, v70, v68, v69, v61, v62, v63, v56, v57, v58, v59, v51, WeakRetained, v46, v47, v45, v109 & 1);
    _os_log_impl(&dword_26AC94000, log, v66[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nisKeybagRequired: %d", buf, 0x9Au);
    if (v96)
    {
      MEMORY[0x277D82BD8](*(v72 + 2));
    }

    if (v97)
    {
      MEMORY[0x277D82BD8](*(v72 + 4));
    }

    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v47);
    if (v98)
    {
      MEMORY[0x277D82BD8](*(v72 + 6));
    }

    if (v99)
    {
      MEMORY[0x277D82BD8](*(v72 + 8));
    }

    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v100)
    {
      MEMORY[0x277D82BD8](*(v72 + 10));
    }

    if (v101)
    {
      MEMORY[0x277D82BD8](*(v72 + 12));
    }

    if (v102)
    {
      MEMORY[0x277D82BD8](*(v72 + 14));
    }

    if (v103)
    {
      MEMORY[0x277D82BD8](*(v72 + 16));
    }

    if (v104)
    {
      MEMORY[0x277D82BD8](*(v72 + 18));
    }

    MEMORY[0x277D82BD8](v67);
    objc_storeStrong(&v105, 0);
  }

  objc_storeStrong(v107, 0);
  v95 = v109 & 1;
  v93 = 0;
  v41 = 0;
  if ((v109 & 1) == 0)
  {
    v17 = [*(v71 + 40) isSplatOnly];
    v41 = 0;
    if (v17)
    {
      v18 = [MEMORY[0x277D648A8] sharedInstance];
      *v72 = v18;
      v93 = 1;
      v41 = [v18 hasPasscodeSet];
    }
  }

  v40 = v41;
  if (v93)
  {
    MEMORY[0x277D82BD8](*v72);
  }

  if (v40)
  {
    oslog = _SUSUILoggingFacility();
    v91 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v37 = oslog;
      *v38 = v91;
      v39 = v112;
      __os_log_helper_16_2_1_8_32(v112, v70);
      _os_log_impl(&dword_26AC94000, v37, v38[0], "%s: prompting for passcode for splat-only update, but not generating an installation keybag", v39, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v95 = 1;
  }

  if (v95)
  {
    v35 = [*(v71 + 32) delegate];
    v36 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v35);
    if (v36)
    {
      v31 = [*(v71 + 32) delegate];
      v29 = *(v71 + 32);
      v30 = &v83;
      v83 = MEMORY[0x277D85DD0];
      v84 = -1073741824;
      v85 = 0;
      v86 = __96__SUSUISoftwareUpdateManager_promptForDevicePasscodeForDescriptor_unattendedInstall_completion___block_invoke_727;
      v87 = &unk_279CBE8E0;
      v89 = v109 & 1;
      v90 = *(v71 + 56) & 1;
      v33 = v88;
      v88[0] = MEMORY[0x277D82BE0](*(v71 + 32));
      v32 = (v30 + 5);
      v88[1] = MEMORY[0x277D82BE0](*(v71 + 48));
      [v31 manager:v29 promptForDeviceLAContextWithDescriptorCompletion:v30];
      MEMORY[0x277D82BD8](v31);
      obja = 0;
      objc_storeStrong(v32, 0);
      objc_storeStrong(v33, obja);
    }

    else
    {
      v25 = [*(v71 + 32) delegate];
      v23 = *(v71 + 32);
      v24 = &v75;
      v75 = MEMORY[0x277D85DD0];
      v76 = -1073741824;
      v77 = 0;
      v78 = __96__SUSUISoftwareUpdateManager_promptForDevicePasscodeForDescriptor_unattendedInstall_completion___block_invoke_730;
      v79 = &unk_279CBE908;
      v81 = v109 & 1;
      v82 = *(v71 + 56) & 1;
      v27 = v80;
      v80[0] = MEMORY[0x277D82BE0](*(v71 + 32));
      v26 = (v24 + 5);
      v80[1] = MEMORY[0x277D82BE0](*(v71 + 48));
      [v25 manager:v23 promptForDevicePasscodeWithDescriptorCompletion:v24];
      MEMORY[0x277D82BD8](v25);
      v28 = 0;
      objc_storeStrong(v26, 0);
      objc_storeStrong(v27, v28);
    }
  }

  else if (*(v71 + 48))
  {
    (*(*(v71 + 48) + 16))();
  }

  else
  {
    v74 = _SUSUILoggingFacility();
    v73 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v74;
      *v21 = v73;
      v22 = v111;
      __os_log_helper_16_2_1_8_32(v111, v70);
      _os_log_impl(&dword_26AC94000, v20, v21[0], "%s: No completion callback has been supplied.", v22, 0xCu);
    }

    objc_storeStrong(&v74, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __96__SUSUISoftwareUpdateManager_promptForDevicePasscodeForDescriptor_unattendedInstall_completion___block_invoke_727(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8[1] = a1;
  if (*(a1 + 48))
  {
    if (location[0])
    {
      v8[0] = _SUSUILoggingFacility();
      v7 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v8[0], OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_32_4_0(v12, "[SUSUISoftwareUpdateManager promptForDevicePasscodeForDescriptor:unattendedInstall:completion:]_block_invoke", *(a1 + 49) & 1);
        _os_log_impl(&dword_26AC94000, v8[0], v7, "%s: asynchronously creating installation keybag - forUnattendedInstall:%d", v12, 0x12u);
      }

      objc_storeStrong(v8, 0);
      v6 = objc_alloc_init(MEMORY[0x277D648B0]);
      [v6 setLaContext:location[0]];
      [v6 setDescriptor:v9];
      [v6 setKeybagType:(*(a1 + 49) & 1) != 0];
      [*(*(a1 + 32) + 56) createInstallationKeybagWithOptions:v6 completion:*(a1 + 40)];
      objc_storeStrong(&v6, 0);
    }

    else
    {
      oslog = _SUSUILoggingFacility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_32(v11, "[SUSUISoftwareUpdateManager promptForDevicePasscodeForDescriptor:unattendedInstall:completion:]_block_invoke");
        _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: failed to get user passcode", v11, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (*(a1 + 40))
      {
        (*(*(a1 + 40) + 16))();
      }
    }
  }

  else if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), location[0] != 0, 0);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __96__SUSUISoftwareUpdateManager_promptForDevicePasscodeForDescriptor_unattendedInstall_completion___block_invoke_730(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8[1] = a1;
  if (*(a1 + 48))
  {
    if (location[0])
    {
      v8[0] = _SUSUILoggingFacility();
      v7 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v8[0], OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_32_4_0(v12, "[SUSUISoftwareUpdateManager promptForDevicePasscodeForDescriptor:unattendedInstall:completion:]_block_invoke", *(a1 + 49) & 1);
        _os_log_impl(&dword_26AC94000, v8[0], v7, "%s: asynchronously creating installation keybag - forUnattendedInstall:%d", v12, 0x12u);
      }

      objc_storeStrong(v8, 0);
      v6 = objc_alloc_init(MEMORY[0x277D648B0]);
      [v6 setPasscode:location[0]];
      [v6 setDescriptor:v9];
      [v6 setKeybagType:(*(a1 + 49) & 1) != 0];
      [*(*(a1 + 32) + 56) createInstallationKeybagWithOptions:v6 completion:*(a1 + 40)];
      objc_storeStrong(&v6, 0);
    }

    else
    {
      oslog = _SUSUILoggingFacility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_32(v11, "[SUSUISoftwareUpdateManager promptForDevicePasscodeForDescriptor:unattendedInstall:completion:]_block_invoke");
        _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: failed to get user passcode", v11, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (*(a1 + 40))
      {
        (*(*(a1 + 40) + 16))();
      }
    }
  }

  else if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), location[0] != 0, 0);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_alertForDownloadConstraintsWithCompletion:(id)completion
{
  v106 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if (location[0])
  {
    v98 = 0;
    v97 = 0;
    SUDownloadPolicyFactoryClass_0 = getSUDownloadPolicyFactoryClass_0();
    preferredUpdate = [(SUSUISoftwareUpdateManager *)selfCopy preferredUpdate];
    download = [(SUSUISoftwareUpdateManager *)selfCopy download];
    downloadOptions = [(SUDownload *)download downloadOptions];
    activeDownloadPolicy = [(SUDownloadOptions *)downloadOptions activeDownloadPolicy];
    v96 = [SUDownloadPolicyFactoryClass_0 userDownloadPolicyForDescriptor:preferredUpdate existingPolicy:activeDownloadPolicy allowCellularOverride:{-[SUSUISoftwareUpdateManager allowCellularOverride](selfCopy, "allowCellularOverride")}];
    MEMORY[0x277D82BD8](activeDownloadPolicy);
    MEMORY[0x277D82BD8](downloadOptions);
    MEMORY[0x277D82BD8](download);
    MEMORY[0x277D82BD8](preferredUpdate);
    v95 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:0];
    if (!v95)
    {
      goto LABEL_65;
    }

    v94 = [v95 getInternetDataStatusSync:0];
    if (!v94 || ([v94 cellularDataPossible] & 1) != 0)
    {
      v99 = 0;
    }

    else
    {
      v93 = _SUSUILoggingFacility();
      v92 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v93;
        v40 = v92;
        __os_log_helper_16_0_0(v91);
        _os_log_impl(&dword_26AC94000, v39, v40, "Cellular data not possible on device. Not prompting for cellular download acceptance.", v91, 2u);
      }

      objc_storeStrong(&v93, 0);
      (*(location[0] + 2))(location[0], 0);
      v99 = 1;
    }

    objc_storeStrong(&v94, 0);
    if (!v99)
    {
LABEL_65:
      if (![(SUSUISoftwareUpdateManager *)selfCopy clientIsBuddy])
      {
        goto LABEL_21;
      }

      mEMORY[0x277D648C0] = [MEMORY[0x277D648C0] sharedInstance];
      if ([mEMORY[0x277D648C0] isBootstrap] & 1) == 0 || (objc_msgSend(mEMORY[0x277D648C0], "isPathSatisfied"))
      {
        v99 = 0;
      }

      else
      {
        v89 = _SUSUILoggingFacility();
        v88 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v89;
          v38 = v88;
          __os_log_helper_16_0_0(v87);
          _os_log_impl(&dword_26AC94000, v37, v38, "Can't download update in bootstrap network. Not prompting for cellular download acceptance", v87, 2u);
        }

        objc_storeStrong(&v89, 0);
        (*(location[0] + 2))(location[0], 0);
        v99 = 1;
      }

      objc_storeStrong(&mEMORY[0x277D648C0], 0);
      if (!v99)
      {
LABEL_21:
        v86 = MGGetBoolAnswer();
        if (v86)
        {
          if ([v96 isDownloadAllowableForCellular])
          {
            if (selfCopy->_networkType == 1)
            {
              v79 = _SUSUILoggingFacility();
              v78 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                v31 = v79;
                v32 = v78;
                __os_log_helper_16_0_0(v77);
                _os_log_impl(&dword_26AC94000, v31, v32, "Device is currently using Wi-Fi. Not prompting for cellular download acceptance.", v77, 2u);
              }

              objc_storeStrong(&v79, 0);
              (*(location[0] + 2))(location[0], 0);
              v99 = 1;
            }

            else if ([v96 is5GDownloadAllowed])
            {
              oslog = _SUSUILoggingFacility();
              v75 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
              {
                v29 = oslog;
                v30 = v75;
                __os_log_helper_16_0_0(v74);
                _os_log_impl(&dword_26AC94000, v29, v30, "Device is using inexpensive HDM. Not prompting for cellular download acceptance.", v74, 2u);
              }

              objc_storeStrong(&oslog, 0);
              (*(location[0] + 2))(location[0], 0);
              v99 = 1;
            }

            else
            {
              isDownloadFreeForCellular = [v96 isDownloadFreeForCellular];
              v72 = 0;
              v71 = 0;
              v70 = _SUSUILoggingFacility();
              v69 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
              {
                __os_log_helper_16_0_1_4_0(v104, isDownloadFreeForCellular & 1);
                _os_log_impl(&dword_26AC94000, v70, v69, "Alerting user about cellular fees. zero rated = %d", v104, 8u);
              }

              objc_storeStrong(&v70, 0);
              v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v67 = 0;
              v65 = 0;
              v63 = 0;
              v61 = 0;
              if (isDownloadFreeForCellular)
              {
                isSplatOnly = 0;
                if (selfCopy->_download)
                {
                  descriptor = [(SUDownload *)selfCopy->_download descriptor];
                  v67 = 1;
                  isSplatOnly = 0;
                  if (descriptor)
                  {
                    descriptor2 = [(SUDownload *)selfCopy->_download descriptor];
                    v65 = 1;
                    isSplatOnly = [(SUDescriptor *)descriptor2 isSplatOnly];
                  }
                }

                v3 = @"RSR_CELLULAR_DOWNLOAD_ACCEPT_POSSIBLE_FEES";
                if ((isSplatOnly & 1) == 0)
                {
                  v3 = @"CELLULAR_DOWNLOAD_ACCEPT_POSSIBLE_FEES";
                }

                v26 = v3;
              }

              else
              {
                isSplatOnly2 = 0;
                if (selfCopy->_download)
                {
                  descriptor3 = [(SUDownload *)selfCopy->_download descriptor];
                  v63 = 1;
                  isSplatOnly2 = 0;
                  if (descriptor3)
                  {
                    descriptor4 = [(SUDownload *)selfCopy->_download descriptor];
                    v61 = 1;
                    isSplatOnly2 = [(SUDescriptor *)descriptor4 isSplatOnly];
                  }
                }

                v4 = @"RSR_CELLULAR_DOWNLOAD_ACCEPT_DEFINITE_FEES";
                if ((isSplatOnly2 & 1) == 0)
                {
                  v4 = @"CELLULAR_DOWNLOAD_ACCEPT_DEFINITE_FEES";
                }

                v26 = v4;
              }

              v5 = [v28 localizedStringForKey:v26 value:&stru_287B79370 table:@"Software Update"];
              v6 = v97;
              v97 = v5;
              MEMORY[0x277D82BD8](v6);
              if (v61)
              {
                MEMORY[0x277D82BD8](descriptor4);
              }

              if (v63)
              {
                MEMORY[0x277D82BD8](descriptor3);
              }

              if (v65)
              {
                MEMORY[0x277D82BD8](descriptor2);
              }

              if (v67)
              {
                MEMORY[0x277D82BD8](descriptor);
              }

              MEMORY[0x277D82BD8](v28);
              v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v7 = [v13 localizedStringForKey:@"CONTINUE" value:? table:?];
              v8 = v72;
              v72 = v7;
              MEMORY[0x277D82BD8](v8);
              MEMORY[0x277D82BD8](v13);
              v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v9 = [v14 localizedStringForKey:@"CANCEL" value:&stru_287B79370 table:@"Software Update"];
              v10 = v71;
              v71 = v9;
              MEMORY[0x277D82BD8](v10);
              MEMORY[0x277D82BD8](v14);
              v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v11 = [v15 localizedStringForKey:@"ALLOW_CELLULAR_DOWNLOAD" value:&stru_287B79370 table:@"Software Update"];
              v12 = v98;
              v98 = v11;
              MEMORY[0x277D82BD8](v12);
              MEMORY[0x277D82BD8](v15);
              v60 = [MEMORY[0x277D75110] alertControllerWithTitle:v98 message:v97 preferredStyle:?];
              v18 = v60;
              v17 = MEMORY[0x277D750F8];
              v16 = v72;
              v53 = MEMORY[0x277D85DD0];
              v54 = -1073741824;
              v55 = 0;
              v56 = __73__SUSUISoftwareUpdateManager__alertForDownloadConstraintsWithCompletion___block_invoke;
              v57 = &unk_279CBE958;
              v58 = MEMORY[0x277D82BE0](v72);
              v59 = MEMORY[0x277D82BE0](location[0]);
              v19 = [v17 actionWithTitle:v16 style:0 handler:&v53];
              [v18 addAction:?];
              MEMORY[0x277D82BD8](v19);
              v22 = v60;
              v21 = MEMORY[0x277D750F8];
              v20 = v71;
              v46 = MEMORY[0x277D85DD0];
              v47 = -1073741824;
              v48 = 0;
              v49 = __73__SUSUISoftwareUpdateManager__alertForDownloadConstraintsWithCompletion___block_invoke_754;
              v50 = &unk_279CBE958;
              v51 = MEMORY[0x277D82BE0](v71);
              v52 = MEMORY[0x277D82BE0](location[0]);
              v23 = [v21 actionWithTitle:v20 style:1 handler:&v46];
              [v22 addAction:?];
              MEMORY[0x277D82BD8](v23);
              WeakRetained = objc_loadWeakRetained(&selfCopy->_hostController);
              [WeakRetained presentViewController:v60 animated:1 completion:?];
              MEMORY[0x277D82BD8](WeakRetained);
              objc_storeStrong(&v52, 0);
              objc_storeStrong(&v51, 0);
              objc_storeStrong(&v59, 0);
              objc_storeStrong(&v58, 0);
              objc_storeStrong(&v60, 0);
              objc_storeStrong(&v71, 0);
              objc_storeStrong(&v72, 0);
              v99 = 0;
            }
          }

          else
          {
            v82 = _SUSUILoggingFacility();
            v81 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              v33 = v82;
              v34 = v81;
              __os_log_helper_16_0_0(v80);
              _os_log_impl(&dword_26AC94000, v33, v34, "Download policy doesn't allow cellular. Not prompting for cellular download acceptance.", v80, 2u);
            }

            objc_storeStrong(&v82, 0);
            (*(location[0] + 2))(location[0], 0);
            v99 = 1;
          }
        }

        else
        {
          v85 = _SUSUILoggingFacility();
          v84 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v85;
            v36 = v84;
            __os_log_helper_16_0_0(v83);
            _os_log_impl(&dword_26AC94000, v35, v36, "Cellular data not possible on device (2nd check). Not prompting for cellular download acceptance.", v83, 2u);
          }

          objc_storeStrong(&v85, 0);
          (*(location[0] + 2))(location[0], 0);
          v99 = 1;
        }
      }
    }

    objc_storeStrong(&v95, 0);
    objc_storeStrong(&v96, 0);
    objc_storeStrong(&v97, 0);
    objc_storeStrong(&v98, 0);
  }

  else
  {
    v101 = _SUSUILoggingFacility();
    v100 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v105, "[SUSUISoftwareUpdateManager _alertForDownloadConstraintsWithCompletion:]");
      _os_log_error_impl(&dword_26AC94000, v101, v100, "[%s] completion is nil. Do nothing", v105, 0xCu);
    }

    objc_storeStrong(&v101, 0);
    v99 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __73__SUSUISoftwareUpdateManager__alertForDownloadConstraintsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v5, *(a1 + 32));
    _os_log_impl(&dword_26AC94000, oslog[0], OS_LOG_TYPE_DEFAULT, "User clicked %@. Allowing cellular.", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __73__SUSUISoftwareUpdateManager__alertForDownloadConstraintsWithCompletion___block_invoke_754(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v5, *(a1 + 32));
    _os_log_impl(&dword_26AC94000, oslog[0], OS_LOG_TYPE_DEFAULT, "User clicked %@. Declining cellular.", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)cancelOrPurgeIfNecessaryWithUpdate:(id)update completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  suClient = selfCopy->_suClient;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __76__SUSUISoftwareUpdateManager_cancelOrPurgeIfNecessaryWithUpdate_completion___block_invoke;
  v10 = &unk_279CBE980;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v13 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](selfCopy);
  [(SUSUISoftwareUpdateClientManager *)suClient download:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __76__SUSUISoftwareUpdateManager_cancelOrPurgeIfNecessaryWithUpdate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v60 = 0;
  objc_storeStrong(&v60, a3);
  v59[1] = a1;
  v31 = [location[0] descriptor];
  v32 = [v31 isEqual:*(a1 + 32)];
  MEMORY[0x277D82BD8](v31);
  if (v32)
  {
    v59[0] = _SUSUILoggingFacility();
    v58 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v59[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v62, *(a1 + 32));
      _os_log_impl(&dword_26AC94000, v59[0], v58, "Currently downloading descriptor is the same as requested descriptor, do not purge (%@)", v62, 0xCu);
    }

    objc_storeStrong(v59, 0);
    if (*(a1 + 48))
    {
      (*(*(a1 + 48) + 16))();
    }

    v57 = 1;
  }

  else
  {
    if (location[0])
    {
      if ([*(a1 + 40) clientIsBuddy])
      {
        v7 = *(*(a1 + 40) + 56);
        v33 = MEMORY[0x277D85DD0];
        v34 = -1073741824;
        v35 = 0;
        v36 = __76__SUSUISoftwareUpdateManager_cancelOrPurgeIfNecessaryWithUpdate_completion___block_invoke_4;
        v37 = &unk_279CBE6B8;
        v38 = MEMORY[0x277D82BE0](*(a1 + 48));
        [v7 purgeDownload:&v33];
        objc_storeStrong(&v38, 0);
      }

      else
      {
        v56 = 0;
        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v55 = [v19 localizedStringForKey:@"CANCEL" value:? table:?];
        MEMORY[0x277D82BD8](v19);
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v54 = [v20 localizedStringForKey:@"OK" value:&stru_287B79370 table:@"Software Update"];
        MEMORY[0x277D82BD8](v20);
        v21 = MEMORY[0x277CCACA8];
        v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v25 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DELETE_CONFIRMATION_TITLE"];
        v24 = [v26 localizedStringForKey:? value:? table:?];
        v23 = [location[0] descriptor];
        v22 = [v23 productVersion];
        v53 = [v21 stringWithFormat:v24, v22];
        MEMORY[0x277D82BD8](v22);
        MEMORY[0x277D82BD8](v23);
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
        MEMORY[0x277D82BD8](v26);
        v27 = [location[0] progress];
        v28 = [v27 isDone];
        MEMORY[0x277D82BD8](v27);
        if (v28)
        {
          v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v3 = [v18 localizedStringForKey:@"DELETE_CONFIRMATION_BODY_DOWNLOADED" value:&stru_287B79370 table:@"Software Update"];
          v4 = v56;
          v56 = v3;
          MEMORY[0x277D82BD8](v4);
          MEMORY[0x277D82BD8](v18);
        }

        else
        {
          v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v5 = [v17 localizedStringForKey:@"DELETE_CONFIRMATION_BODY_DOWNLOADING" value:&stru_287B79370 table:@"Software Update"];
          v6 = v56;
          v56 = v5;
          MEMORY[0x277D82BD8](v6);
          MEMORY[0x277D82BD8](v17);
        }

        v52 = [MEMORY[0x277D75110] alertControllerWithTitle:v53 message:v56 preferredStyle:?];
        v10 = v52;
        v9 = MEMORY[0x277D750F8];
        v8 = v55;
        v46 = MEMORY[0x277D85DD0];
        v47 = -1073741824;
        v48 = 0;
        v49 = __76__SUSUISoftwareUpdateManager_cancelOrPurgeIfNecessaryWithUpdate_completion___block_invoke_764;
        v50 = &unk_279CBA670;
        v51 = MEMORY[0x277D82BE0](*(a1 + 48));
        v11 = [v9 actionWithTitle:v8 style:1 handler:&v46];
        [v10 addAction:?];
        MEMORY[0x277D82BD8](v11);
        v14 = v52;
        v13 = MEMORY[0x277D750F8];
        v12 = v54;
        v39 = MEMORY[0x277D85DD0];
        v40 = -1073741824;
        v41 = 0;
        v42 = __76__SUSUISoftwareUpdateManager_cancelOrPurgeIfNecessaryWithUpdate_completion___block_invoke_2;
        v43 = &unk_279CBE958;
        v44 = MEMORY[0x277D82BE0](*(a1 + 40));
        v45 = MEMORY[0x277D82BE0](*(a1 + 48));
        v15 = [v13 actionWithTitle:v12 style:0 handler:&v39];
        [v14 addAction:?];
        MEMORY[0x277D82BD8](v15);
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 112));
        [WeakRetained presentViewController:v52 animated:1 completion:?];
        MEMORY[0x277D82BD8](WeakRetained);
        objc_storeStrong(&v45, 0);
        objc_storeStrong(&v44, 0);
        objc_storeStrong(&v51, 0);
        objc_storeStrong(&v52, 0);
        objc_storeStrong(&v53, 0);
        objc_storeStrong(&v54, 0);
        objc_storeStrong(&v55, 0);
        objc_storeStrong(&v56, 0);
      }
    }

    else if (*(a1 + 48))
    {
      (*(*(a1 + 48) + 16))();
    }

    v57 = 0;
  }

  objc_storeStrong(&v60, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __76__SUSUISoftwareUpdateManager_cancelOrPurgeIfNecessaryWithUpdate_completion___block_invoke_764(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __76__SUSUISoftwareUpdateManager_cancelOrPurgeIfNecessaryWithUpdate_completion___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v3 = *(a1[4] + 56);
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __76__SUSUISoftwareUpdateManager_cancelOrPurgeIfNecessaryWithUpdate_completion___block_invoke_3;
  v8 = &unk_279CBE6B8;
  v9[0] = MEMORY[0x277D82BE0](a1[5]);
  [v3 purgeDownload:?];
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
}

void __76__SUSUISoftwareUpdateManager_cancelOrPurgeIfNecessaryWithUpdate_completion___block_invoke_3(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __76__SUSUISoftwareUpdateManager_cancelOrPurgeIfNecessaryWithUpdate_completion___block_invoke_4(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

- (void)presentTermsIfNecessaryCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(SUSUISoftwareUpdateManager *)selfCopy presentTermsIfNecessaryForUpdate:0 completion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)presentTermsIfNecessaryForUpdate:(id)update completion:(id)completion
{
  obj = completion;
  v161 = "[SUSUISoftwareUpdateManager presentTermsIfNecessaryForUpdate:completion:]";
  v259 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v253 = 0;
  objc_storeStrong(&v253, obj);
  v246 = 0;
  v247 = &v246;
  v248 = 838860800;
  v249 = 48;
  v250 = __Block_byref_object_copy__0;
  v251 = __Block_byref_object_dispose__0;
  v159 = objc_opt_new();
  v252 = v159;
  v158 = &v252;
  [v247[5] setServerFlowStyle:selfCopy->_serverFlowStyle];
  download = [(SUSUISoftwareUpdateManager *)selfCopy download];
  v245 = download;
  if (!v245)
  {
    goto LABEL_42;
  }

  v156 = _SUSUILoggingFacility();
  oslog = v156;
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v154 = type;
    updated = SUSUISoftwareUpdateStateToString(selfCopy->_state);
    v150 = updated;
    v151 = MEMORY[0x277D82BE0](v150);
    v242 = v151;
    state = selfCopy->_state;
    preferredUpdate = selfCopy->_preferredUpdate;
    v240 = 0;
    if (preferredUpdate)
    {
      humanReadableUpdateName = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
      v241 = humanReadableUpdateName;
      v240 = 1;
      v148 = v241;
    }

    else
    {
      v148 = @"N/A";
    }

    v145 = v148;
    v146 = selfCopy->_preferredUpdate;
    preferredUpdateError = selfCopy->_preferredUpdateError;
    alternateUpdate = selfCopy->_alternateUpdate;
    v238 = 0;
    if (alternateUpdate)
    {
      humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
      v239 = humanReadableUpdateName2;
      v238 = 1;
      v143 = v239;
    }

    else
    {
      v143 = @"N/A";
    }

    v139 = v143;
    v140 = selfCopy->_alternateUpdate;
    alternateUpdateError = selfCopy->_alternateUpdateError;
    download = selfCopy->_download;
    v6 = selfCopy->_download;
    v236 = 0;
    v234 = 0;
    v232 = 0;
    if (v6 && (v138 = [(SUDownload *)selfCopy->_download descriptor], v237 = v138, v236 = 1, v237))
    {
      descriptor = [(SUDownload *)selfCopy->_download descriptor];
      v235 = descriptor;
      v234 = 1;
      humanReadableUpdateName3 = [v235 humanReadableUpdateName];
      v233 = humanReadableUpdateName3;
      v232 = 1;
      v135 = v233;
    }

    else
    {
      v135 = @"N/A";
    }

    v133 = v135;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v132 = objc_loadWeakRetained(&selfCopy->_delegate);
    v230 = 0;
    v228 = 0;
    if (v132)
    {
      v131 = objc_loadWeakRetained(&selfCopy->_delegate);
      v231 = v131;
      v230 = 1;
      aClass = objc_opt_class();
      v129 = NSStringFromClass(aClass);
      v229 = v129;
      v228 = 1;
      v128 = v229;
    }

    else
    {
      v128 = @"N/A";
    }

    v126 = v128;
    v127 = objc_loadWeakRetained(&selfCopy->_hostController);
    v125 = objc_loadWeakRetained(&selfCopy->_hostController);
    v226 = 0;
    v224 = 0;
    if (v125)
    {
      v124 = objc_loadWeakRetained(&selfCopy->_hostController);
      v227 = v124;
      v226 = 1;
      v123 = objc_opt_class();
      v122 = NSStringFromClass(v123);
      v225 = v122;
      v224 = 1;
      v121 = v225;
    }

    else
    {
      v121 = @"N/A";
    }

    v119 = v121;
    downloadOptions = [v245 downloadOptions];
    v117 = downloadOptions;
    termsAndConditionsAgreementStatus = [v117 termsAndConditionsAgreementStatus];
    v115 = &v15;
    buf = v258;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0(v258, v161, v151, state, v145, v146, preferredUpdateError, v139, v140, alternateUpdateError, download, v133, WeakRetained, v126, v127, v121, termsAndConditionsAgreementStatus);
    _os_log_impl(&dword_26AC94000, log, v154[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nSU Terms: Agreement status %i", buf, 0x9Au);
    MEMORY[0x277D82BD8](v117);
    if (v224)
    {
      MEMORY[0x277D82BD8](v225);
    }

    if (v226)
    {
      MEMORY[0x277D82BD8](v227);
    }

    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](v127);
    if (v228)
    {
      MEMORY[0x277D82BD8](v229);
    }

    if (v230)
    {
      MEMORY[0x277D82BD8](v231);
    }

    MEMORY[0x277D82BD8](v132);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v232)
    {
      MEMORY[0x277D82BD8](v233);
    }

    if (v234)
    {
      MEMORY[0x277D82BD8](v235);
    }

    if (v236)
    {
      MEMORY[0x277D82BD8](v237);
    }

    if (v238)
    {
      MEMORY[0x277D82BD8](v239);
    }

    if (v240)
    {
      MEMORY[0x277D82BD8](v241);
    }

    MEMORY[0x277D82BD8](v150);
    objc_storeStrong(&v242, 0);
  }

  objc_storeStrong(&oslog, 0);
  downloadOptions2 = [v245 downloadOptions];
  v112 = downloadOptions2;
  termsAndConditionsAgreementStatus2 = [v112 termsAndConditionsAgreementStatus];
  MEMORY[0x277D82BD8](v112);
  if (termsAndConditionsAgreementStatus2 == 1)
  {
    if (v253)
    {
      v7 = MEMORY[0x277D85CD0];
      queue = MEMORY[0x277D85CD0];
      block = &v218;
      v218 = MEMORY[0x277D85DD0];
      v219 = -1073741824;
      v220 = 0;
      v221 = __74__SUSUISoftwareUpdateManager_presentTermsIfNecessaryForUpdate_completion___block_invoke;
      v222 = &unk_279CB9438;
      v109 = &v223;
      v223 = MEMORY[0x277D82BE0](v253);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      objc_storeStrong(v109, 0);
    }

    v217 = 1;
  }

  else
  {
LABEL_42:
    if (location[0])
    {
      isSplatOnly = [location[0] isSplatOnly];
      v107 = isSplatOnly;
    }

    else
    {
      isSplatOnly2 = [(SUDescriptor *)selfCopy->_preferredUpdate isSplatOnly];
      v107 = isSplatOnly2;
    }

    v216 = v107 != 0;
    if (v107)
    {
      v105 = _SUSUILoggingFacility();
      v215 = v105;
      v214 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
      {
        v102 = v215;
        *v103 = v214;
        v104 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
        v99 = v104;
        v100 = MEMORY[0x277D82BE0](v99);
        v213 = v100;
        v101 = selfCopy->_state;
        v8 = selfCopy->_preferredUpdate;
        v211 = 0;
        if (v8)
        {
          humanReadableUpdateName4 = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
          v212 = humanReadableUpdateName4;
          v211 = 1;
          v97 = v212;
        }

        else
        {
          v97 = @"N/A";
        }

        v94 = v97;
        v95 = selfCopy->_preferredUpdate;
        v96 = selfCopy->_preferredUpdateError;
        v9 = selfCopy->_alternateUpdate;
        v209 = 0;
        if (v9)
        {
          humanReadableUpdateName5 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
          v210 = humanReadableUpdateName5;
          v209 = 1;
          v92 = v210;
        }

        else
        {
          v92 = @"N/A";
        }

        v88 = v92;
        v89 = selfCopy->_alternateUpdate;
        v90 = selfCopy->_alternateUpdateError;
        v91 = selfCopy->_download;
        v10 = selfCopy->_download;
        v207 = 0;
        v205 = 0;
        v203 = 0;
        if (v10 && (v87 = [(SUDownload *)selfCopy->_download descriptor], v208 = v87, v207 = 1, v208))
        {
          descriptor2 = [(SUDownload *)selfCopy->_download descriptor];
          v206 = descriptor2;
          v205 = 1;
          humanReadableUpdateName6 = [v206 humanReadableUpdateName];
          v204 = humanReadableUpdateName6;
          v203 = 1;
          v84 = v204;
        }

        else
        {
          v84 = @"N/A";
        }

        v82 = v84;
        v83 = objc_loadWeakRetained(&selfCopy->_delegate);
        v81 = objc_loadWeakRetained(&selfCopy->_delegate);
        v201 = 0;
        v199 = 0;
        if (v81)
        {
          v80 = objc_loadWeakRetained(&selfCopy->_delegate);
          v202 = v80;
          v201 = 1;
          v79 = objc_opt_class();
          v78 = NSStringFromClass(v79);
          v200 = v78;
          v199 = 1;
          v77 = v200;
        }

        else
        {
          v77 = @"N/A";
        }

        v75 = v77;
        v76 = objc_loadWeakRetained(&selfCopy->_hostController);
        v74 = objc_loadWeakRetained(&selfCopy->_hostController);
        v197 = 0;
        v195 = 0;
        if (v74)
        {
          v73 = objc_loadWeakRetained(&selfCopy->_hostController);
          v198 = v73;
          v197 = 1;
          v72 = objc_opt_class();
          v71 = NSStringFromClass(v72);
          v196 = v71;
          v195 = 1;
          v70 = v196;
        }

        else
        {
          v70 = @"N/A";
        }

        v68 = &v15;
        v69 = v257;
        __os_log_helper_16_2_15_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66(v257, v161, v100, v101, v94, v95, v96, v88, v89, v90, v91, v82, v83, v75, v76, v70);
        _os_log_impl(&dword_26AC94000, v102, v103[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nRapid Security Response - Skipping SU Terms presentation", v69, 0x94u);
        if (v195)
        {
          MEMORY[0x277D82BD8](v196);
        }

        if (v197)
        {
          MEMORY[0x277D82BD8](v198);
        }

        MEMORY[0x277D82BD8](v74);
        MEMORY[0x277D82BD8](v76);
        if (v199)
        {
          MEMORY[0x277D82BD8](v200);
        }

        if (v201)
        {
          MEMORY[0x277D82BD8](v202);
        }

        MEMORY[0x277D82BD8](v81);
        MEMORY[0x277D82BD8](v83);
        if (v203)
        {
          MEMORY[0x277D82BD8](v204);
        }

        if (v205)
        {
          MEMORY[0x277D82BD8](v206);
        }

        if (v207)
        {
          MEMORY[0x277D82BD8](v208);
        }

        if (v209)
        {
          MEMORY[0x277D82BD8](v210);
        }

        if (v211)
        {
          MEMORY[0x277D82BD8](v212);
        }

        MEMORY[0x277D82BD8](v99);
        objc_storeStrong(&v213, 0);
      }

      objc_storeStrong(&v215, 0);
      if (v253)
      {
        v11 = MEMORY[0x277D85CD0];
        v67 = MEMORY[0x277D85CD0];
        v66 = &v189;
        v189 = MEMORY[0x277D85DD0];
        v190 = -1073741824;
        v191 = 0;
        v192 = __74__SUSUISoftwareUpdateManager_presentTermsIfNecessaryForUpdate_completion___block_invoke_766;
        v193 = &unk_279CB9438;
        v65 = &v194;
        v194 = MEMORY[0x277D82BE0](v253);
        dispatch_async(v67, v66);
        MEMORY[0x277D82BD8](v67);
        objc_storeStrong(v65, 0);
      }

      v217 = 1;
    }

    else if ([(SUSUISoftwareUpdateManager *)selfCopy bypassTermsAndConditions])
    {
      v63 = _SUSUILoggingFacility();
      v188 = v63;
      v187 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v188;
        *v61 = v187;
        v62 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
        v57 = v62;
        v58 = MEMORY[0x277D82BE0](v57);
        v186 = v58;
        v59 = selfCopy->_state;
        v12 = selfCopy->_preferredUpdate;
        v184 = 0;
        if (v12)
        {
          humanReadableUpdateName7 = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
          v185 = humanReadableUpdateName7;
          v184 = 1;
          v55 = v185;
        }

        else
        {
          v55 = @"N/A";
        }

        v52 = v55;
        v53 = selfCopy->_preferredUpdate;
        v54 = selfCopy->_preferredUpdateError;
        v13 = selfCopy->_alternateUpdate;
        v182 = 0;
        if (v13)
        {
          humanReadableUpdateName8 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
          v183 = humanReadableUpdateName8;
          v182 = 1;
          v50 = v183;
        }

        else
        {
          v50 = @"N/A";
        }

        v46 = v50;
        v47 = selfCopy->_alternateUpdate;
        v48 = selfCopy->_alternateUpdateError;
        v49 = selfCopy->_download;
        v14 = selfCopy->_download;
        v180 = 0;
        v178 = 0;
        v176 = 0;
        if (v14 && (v45 = [(SUDownload *)selfCopy->_download descriptor], v181 = v45, v180 = 1, v181))
        {
          descriptor3 = [(SUDownload *)selfCopy->_download descriptor];
          v179 = descriptor3;
          v178 = 1;
          humanReadableUpdateName9 = [v179 humanReadableUpdateName];
          v177 = humanReadableUpdateName9;
          v176 = 1;
          v42 = v177;
        }

        else
        {
          v42 = @"N/A";
        }

        v40 = v42;
        v41 = objc_loadWeakRetained(&selfCopy->_delegate);
        v39 = objc_loadWeakRetained(&selfCopy->_delegate);
        v174 = 0;
        v172 = 0;
        if (v39)
        {
          v38 = objc_loadWeakRetained(&selfCopy->_delegate);
          v175 = v38;
          v174 = 1;
          v37 = objc_opt_class();
          v36 = NSStringFromClass(v37);
          v173 = v36;
          v172 = 1;
          v35 = v173;
        }

        else
        {
          v35 = @"N/A";
        }

        v33 = v35;
        v34 = objc_loadWeakRetained(&selfCopy->_hostController);
        v32 = objc_loadWeakRetained(&selfCopy->_hostController);
        v170 = 0;
        v168 = 0;
        if (v32)
        {
          v31 = objc_loadWeakRetained(&selfCopy->_hostController);
          v171 = v31;
          v170 = 1;
          v30 = objc_opt_class();
          v29 = NSStringFromClass(v30);
          v169 = v29;
          v168 = 1;
          v28 = v169;
        }

        else
        {
          v28 = @"N/A";
        }

        v26 = &v15;
        v27 = v256;
        __os_log_helper_16_2_15_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66(v256, v161, v58, v59, v52, v53, v54, v46, v47, v48, v49, v40, v41, v33, v34, v28);
        _os_log_impl(&dword_26AC94000, v60, v61[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nBypassing TOS because bypassTermsAndConditions=YES", v27, 0x94u);
        if (v168)
        {
          MEMORY[0x277D82BD8](v169);
        }

        if (v170)
        {
          MEMORY[0x277D82BD8](v171);
        }

        MEMORY[0x277D82BD8](v32);
        MEMORY[0x277D82BD8](v34);
        if (v172)
        {
          MEMORY[0x277D82BD8](v173);
        }

        if (v174)
        {
          MEMORY[0x277D82BD8](v175);
        }

        MEMORY[0x277D82BD8](v39);
        MEMORY[0x277D82BD8](v41);
        if (v176)
        {
          MEMORY[0x277D82BD8](v177);
        }

        if (v178)
        {
          MEMORY[0x277D82BD8](v179);
        }

        if (v180)
        {
          MEMORY[0x277D82BD8](v181);
        }

        if (v182)
        {
          MEMORY[0x277D82BD8](v183);
        }

        if (v184)
        {
          MEMORY[0x277D82BD8](v185);
        }

        MEMORY[0x277D82BD8](v57);
        objc_storeStrong(&v186, 0);
      }

      objc_storeStrong(&v188, 0);
      if (v253)
      {
        (*(v253 + 2))(v253, 1, 0);
      }

      objc_storeStrong(v247 + 5, 0);
      v217 = 1;
    }

    else
    {
      v24 = v247[5];
      v25 = location[0];
      if (location[0])
      {
        v23 = v25;
      }

      else
      {
        v23 = selfCopy->_preferredUpdate;
      }

      v21 = v23;
      v22 = objc_loadWeakRetained(&selfCopy->_hostController);
      v20 = &v162;
      v162 = MEMORY[0x277D85DD0];
      v163 = -1073741824;
      v19 = 0;
      v164 = 0;
      v165 = __74__SUSUISoftwareUpdateManager_presentTermsIfNecessaryForUpdate_completion___block_invoke_767;
      v166 = &unk_279CBE9A8;
      v16 = v167;
      v167[0] = MEMORY[0x277D82BE0](selfCopy);
      v17 = (v20 + 5);
      v167[1] = MEMORY[0x277D82BE0](location[0]);
      v18 = (v20 + 6);
      v167[2] = MEMORY[0x277D82BE0](v253);
      v167[3] = &v246;
      [v24 presentTermsIfNecessaryForUpdate:v21 overController:v22 showLoadSpinner:v19 & 1 completion:v20];
      MEMORY[0x277D82BD8](v22);
      objc_storeStrong(v18, 0);
      objc_storeStrong(v17, 0);
      objc_storeStrong(v16, 0);
      v217 = 0;
    }
  }

  objc_storeStrong(&v245, 0);
  _Block_object_dispose(&v246, 8);
  objc_storeStrong(v158, 0);
  objc_storeStrong(&v253, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __74__SUSUISoftwareUpdateManager_presentTermsIfNecessaryForUpdate_completion___block_invoke_767(NSObject *a1, char a2, id obj)
{
  v49 = &v67;
  v48 = a1;
  v47 = "[SUSUISoftwareUpdateManager presentTermsIfNecessaryForUpdate:completion:]_block_invoke";
  v75 = *MEMORY[0x277D85DE8];
  v73 = a1;
  v72 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v70[1] = v48;
  v70[0] = _SUSUILoggingFacility();
  v69 = 0;
  if (os_log_type_enabled(v70[0], OS_LOG_TYPE_DEFAULT))
  {
    log = *(v49 + 3);
    *type = v69;
    v44 = SUSUISoftwareUpdateStateToString(*(v48[4].isa + 22));
    v3 = MEMORY[0x277D82BE0](v44);
    v4 = v48;
    v45 = v3;
    *(v49 + 1) = v3;
    v46 = *(v4[4].isa + 22);
    v5 = *(v4[4].isa + 15);
    v66 = 0;
    if (v5)
    {
      v6 = [*(v48[4].isa + 15) humanReadableUpdateName];
      *v49 = v6;
      v66 = 1;
      v41 = v6;
    }

    else
    {
      v41 = @"N/A";
    }

    v38 = v41;
    v39 = *(v48[4].isa + 15);
    v40 = *(v48[4].isa + 20);
    v7 = *(v48[4].isa + 16);
    v64 = 0;
    if (v7)
    {
      v65 = [*(v48[4].isa + 16) humanReadableUpdateName];
      v64 = 1;
      v37 = v65;
    }

    else
    {
      v37 = @"N/A";
    }

    v33 = v37;
    v34 = *(v48[4].isa + 16);
    v35 = *(v48[4].isa + 21);
    v36 = *(v48[4].isa + 1);
    v8 = *(v48[4].isa + 1);
    v62 = 0;
    v60 = 0;
    v58 = 0;
    if (v8 && (v63 = [*(v48[4].isa + 1) descriptor], v62 = 1, v63))
    {
      v61 = [*(v48[4].isa + 1) descriptor];
      v31 = 1;
      v60 = 1;
      v59 = [v61 humanReadableUpdateName];
      v58 = 1;
      v32 = v59;
    }

    else
    {
      v32 = @"N/A";
    }

    v28 = v32;
    WeakRetained = objc_loadWeakRetained(v48[4].isa + 13);
    v30 = objc_loadWeakRetained(v48[4].isa + 13);
    v56 = 0;
    v54 = 0;
    if (v30)
    {
      v57 = objc_loadWeakRetained(v48[4].isa + 13);
      v26 = 1;
      v56 = 1;
      v9 = objc_opt_class();
      v55 = NSStringFromClass(v9);
      v54 = 1;
      v27 = v55;
    }

    else
    {
      v27 = @"N/A";
    }

    v23 = v27;
    v24 = objc_loadWeakRetained(v48[4].isa + 14);
    v25 = objc_loadWeakRetained(v48[4].isa + 14);
    v52 = 0;
    v50 = 0;
    if (v25)
    {
      v53 = objc_loadWeakRetained(v48[4].isa + 14);
      v21 = 1;
      v52 = 1;
      v10 = objc_opt_class();
      v51 = NSStringFromClass(v10);
      v50 = 1;
      v22 = v51;
    }

    else
    {
      v22 = @"N/A";
    }

    v19 = v22;
    isa = v48[5].isa;
    if (isa)
    {
      v18 = isa;
    }

    else
    {
      v18 = *(v48[4].isa + 15);
    }

    v11 = *(v49 + 5);
    v16 = &v14;
    buf = v74;
    __os_log_helper_16_2_18_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_4_0_8_64(v74, v47, v45, v46, v38, v39, v40, v33, v34, v35, v36, v28, WeakRetained, v23, v24, v19, v18, v72 & 1, v11);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nAccepted TOS for update %p: %d, error: %@", buf, 0xAEu);
    if (v50)
    {
      MEMORY[0x277D82BD8](v51);
    }

    if (v52)
    {
      MEMORY[0x277D82BD8](v53);
    }

    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v24);
    if (v54)
    {
      MEMORY[0x277D82BD8](v55);
    }

    if (v56)
    {
      MEMORY[0x277D82BD8](v57);
    }

    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v58)
    {
      MEMORY[0x277D82BD8](v59);
    }

    if (v60)
    {
      MEMORY[0x277D82BD8](v61);
    }

    if (v62)
    {
      MEMORY[0x277D82BD8](v63);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](*v49);
    }

    MEMORY[0x277D82BD8](v44);
    objc_storeStrong(&v68, 0);
  }

  objc_storeStrong(v70, 0);
  if (v48[6].isa)
  {
    v12 = *(v49 + 5);
    (*(v48[6].isa + 2))();
  }

  v13 = (*(v48[7].isa + 1) + 40);
  obja = 0;
  objc_storeStrong(v13, 0);
  objc_storeStrong(&location, obja);
  *MEMORY[0x277D85DE8];
}

- (void)scanForUpdateCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = selfCopy;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54__SUSUISoftwareUpdateManager_scanForUpdateCompletion___block_invoke;
  v8 = &unk_279CBE9D0;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [(SUSUISoftwareUpdateManager *)v3 scanForUpdatesCompletion:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __54__SUSUISoftwareUpdateManager_scanForUpdateCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  if (a1[4])
  {
    v3 = (a1[4] + 16);
    v4 = [location[0] latestUpdate];
    (*v3)();
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)scanForUpdatesCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  selfCopy->_userInitiatedRescan = 0;
  [(SUSUISoftwareUpdateManager *)selfCopy scanForUpdatesWithOptions:0 andCompletion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)rescanForUpdatesInBackgroundWithOptions:(id)options andCompletionHandler:(id)handler
{
  v49 = &v67;
  obj = handler;
  v47 = "[SUSUISoftwareUpdateManager rescanForUpdatesInBackgroundWithOptions:andCompletionHandler:]";
  v74 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v71 = 0;
  objc_storeStrong(&v71, obj);
  v70 = _SUSUILoggingFacility();
  v69 = 0;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v49 + 3);
    *type = v69;
    v44 = SUSUISoftwareUpdateStateToString(*(*(v49 + 7) + 88));
    v4 = MEMORY[0x277D82BE0](v44);
    v5 = v49;
    v45 = v4;
    *(v49 + 1) = v4;
    v46 = *(*(v5 + 7) + 88);
    v6 = *(*(v5 + 7) + 120);
    v66 = 0;
    if (v6)
    {
      humanReadableUpdateName = [*(*(v49 + 7) + 120) humanReadableUpdateName];
      *v49 = humanReadableUpdateName;
      v66 = 1;
      v41 = humanReadableUpdateName;
    }

    else
    {
      v41 = @"N/A";
    }

    v38 = v41;
    v39 = *(*(v49 + 7) + 120);
    v40 = *(*(v49 + 7) + 160);
    v8 = *(*(v49 + 7) + 128);
    v64 = 0;
    if (v8)
    {
      humanReadableUpdateName2 = [*(*(v49 + 7) + 128) humanReadableUpdateName];
      v64 = 1;
      v37 = humanReadableUpdateName2;
    }

    else
    {
      v37 = @"N/A";
    }

    v33 = v37;
    v34 = *(*(v49 + 7) + 128);
    v35 = *(*(v49 + 7) + 168);
    v36 = *(*(v49 + 7) + 8);
    v9 = *(*(v49 + 7) + 8);
    v62 = 0;
    v60 = 0;
    v58 = 0;
    if (v9 && (v63 = [*(*(v49 + 7) + 8) descriptor], v62 = 1, v63))
    {
      descriptor = [*(*(v49 + 7) + 8) descriptor];
      v31 = 1;
      v60 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      v58 = 1;
      v32 = humanReadableUpdateName3;
    }

    else
    {
      v32 = @"N/A";
    }

    v28 = v32;
    WeakRetained = objc_loadWeakRetained((*(v49 + 7) + 104));
    v30 = objc_loadWeakRetained((*(v49 + 7) + 104));
    v56 = 0;
    v54 = 0;
    if (v30)
    {
      v57 = objc_loadWeakRetained((*(v49 + 7) + 104));
      v26 = 1;
      v56 = 1;
      v10 = objc_opt_class();
      v55 = NSStringFromClass(v10);
      v54 = 1;
      v27 = v55;
    }

    else
    {
      v27 = @"N/A";
    }

    v23 = v27;
    v24 = objc_loadWeakRetained((*(v49 + 7) + 112));
    v25 = objc_loadWeakRetained((*(v49 + 7) + 112));
    v52 = 0;
    v50 = 0;
    if (v25)
    {
      v53 = objc_loadWeakRetained((*(v49 + 7) + 112));
      v21 = 1;
      v52 = 1;
      v11 = objc_opt_class();
      v51 = NSStringFromClass(v11);
      v50 = 1;
      v22 = v51;
    }

    else
    {
      v22 = @"N/A";
    }

    v19 = &v15;
    buf = v73;
    __os_log_helper_16_2_15_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66(v73, v47, v45, v46, v38, v39, v40, v33, v34, v35, v36, v28, WeakRetained, v23, v24, v22);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\n", buf, 0x94u);
    if (v50)
    {
      MEMORY[0x277D82BD8](v51);
    }

    if (v52)
    {
      MEMORY[0x277D82BD8](v53);
    }

    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v24);
    if (v54)
    {
      MEMORY[0x277D82BD8](v55);
    }

    if (v56)
    {
      MEMORY[0x277D82BD8](v57);
    }

    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v58)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v60)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v62)
    {
      MEMORY[0x277D82BD8](v63);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](*v49);
    }

    MEMORY[0x277D82BD8](v44);
    objc_storeStrong(&v68, 0);
  }

  v18 = 0;
  objc_storeStrong(&v70, 0);
  v12 = v49;
  *(*(v49 + 7) + 18) = 1;
  v13 = *(v12 + 7);
  v17 = location;
  v14 = *(v12 + 5);
  v16 = &v71;
  [v13 scanForUpdatesWithOptions:v14 andCompletion:*(v12 + 4)];
  objc_storeStrong(v16, v18);
  objc_storeStrong(v17, v18);
  *MEMORY[0x277D85DE8];
}

- (void)scanForUpdatesWithOptions:(id)options andCompletion:(id)completion
{
  obj = completion;
  v60 = "[SUSUISoftwareUpdateManager scanForUpdatesWithOptions:andCompletion:]";
  v99 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v95 = 0;
  objc_storeStrong(&v95, obj);
  v58 = _SUSUILoggingFacility();
  v94 = v58;
  v93 = 0;
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    log = v94;
    *type = v93;
    updated = SUSUISoftwareUpdateStateToString(selfCopy->_state);
    v52 = updated;
    v53 = MEMORY[0x277D82BE0](v52);
    v92 = v53;
    state = selfCopy->_state;
    preferredUpdate = selfCopy->_preferredUpdate;
    v90 = 0;
    if (preferredUpdate)
    {
      humanReadableUpdateName = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
      v91 = humanReadableUpdateName;
      v90 = 1;
      v50 = v91;
    }

    else
    {
      v50 = @"N/A";
    }

    v47 = v50;
    v48 = selfCopy->_preferredUpdate;
    preferredUpdateError = selfCopy->_preferredUpdateError;
    alternateUpdate = selfCopy->_alternateUpdate;
    v88 = 0;
    if (alternateUpdate)
    {
      humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
      v89 = humanReadableUpdateName2;
      v88 = 1;
      v45 = v89;
    }

    else
    {
      v45 = @"N/A";
    }

    v41 = v45;
    v42 = selfCopy->_alternateUpdate;
    alternateUpdateError = selfCopy->_alternateUpdateError;
    download = selfCopy->_download;
    v6 = selfCopy->_download;
    v86 = 0;
    v84 = 0;
    v82 = 0;
    if (v6 && (v40 = [(SUDownload *)selfCopy->_download descriptor], v87 = v40, v86 = 1, v87))
    {
      descriptor = [(SUDownload *)selfCopy->_download descriptor];
      v85 = descriptor;
      v84 = 1;
      humanReadableUpdateName3 = [v85 humanReadableUpdateName];
      v83 = humanReadableUpdateName3;
      v82 = 1;
      v37 = v83;
    }

    else
    {
      v37 = @"N/A";
    }

    v35 = v37;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v34 = objc_loadWeakRetained(&selfCopy->_delegate);
    v80 = 0;
    v78 = 0;
    if (v34)
    {
      v33 = objc_loadWeakRetained(&selfCopy->_delegate);
      v81 = v33;
      v80 = 1;
      aClass = objc_opt_class();
      v31 = NSStringFromClass(aClass);
      v79 = v31;
      v78 = 1;
      v30 = v79;
    }

    else
    {
      v30 = @"N/A";
    }

    v28 = v30;
    v29 = objc_loadWeakRetained(&selfCopy->_hostController);
    v27 = objc_loadWeakRetained(&selfCopy->_hostController);
    v76 = 0;
    v74 = 0;
    if (v27)
    {
      v26 = objc_loadWeakRetained(&selfCopy->_hostController);
      v77 = v26;
      v76 = 1;
      v25 = objc_opt_class();
      v24 = NSStringFromClass(v25);
      v75 = v24;
      v74 = 1;
      v23 = v75;
    }

    else
    {
      v23 = @"N/A";
    }

    userInitiatedRescan = selfCopy->_userInitiatedRescan;
    v21 = &v9;
    buf = v98;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0(v98, v60, v53, state, v47, v48, preferredUpdateError, v41, v42, alternateUpdateError, download, v35, WeakRetained, v28, v29, v23, userInitiatedRescan);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nis user-initiated rescan: %d", buf, 0x9Au);
    if (v74)
    {
      MEMORY[0x277D82BD8](v75);
    }

    if (v76)
    {
      MEMORY[0x277D82BD8](v77);
    }

    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v29);
    if (v78)
    {
      MEMORY[0x277D82BD8](v79);
    }

    if (v80)
    {
      MEMORY[0x277D82BD8](v81);
    }

    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v82)
    {
      MEMORY[0x277D82BD8](v83);
    }

    if (v84)
    {
      MEMORY[0x277D82BD8](v85);
    }

    if (v86)
    {
      MEMORY[0x277D82BD8](v87);
    }

    if (v88)
    {
      MEMORY[0x277D82BD8](v89);
    }

    if (v90)
    {
      MEMORY[0x277D82BD8](v91);
    }

    MEMORY[0x277D82BD8](v52);
    objc_storeStrong(&v92, 0);
  }

  objc_storeStrong(&v94, 0);
  v20 = MEMORY[0x277D82BE0](selfCopy);
  objc_sync_enter(v20);
  if (!selfCopy->_userInitiatedRescan && selfCopy->_state != 1)
  {
    [(SUSUISoftwareUpdateManager *)selfCopy setState:1];
  }

  if (selfCopy->_manuallyStartedScan)
  {
    selfCopy->_userInitiatedRescan = 0;
    v73 = 1;
  }

  else
  {
    selfCopy->_manuallyStartedScan = 1;
    if (!location[0])
    {
      SUScanOptionsClass = getSUScanOptionsClass();
      v18 = objc_alloc_init(SUScanOptionsClass);
      v8 = location[0];
      location[0] = v18;
      MEMORY[0x277D82BD8](v8);
      [location[0] setForced:1];
      [location[0] setIdentifier:@"com.apple.Preferences.software_update"];
    }

    v73 = 0;
  }

  objc_sync_exit(v20);
  MEMORY[0x277D82BD8](v20);
  if (!v73)
  {
    [(SUSUISoftwareUpdateManager *)selfCopy scanForBetaPrograms];
    suClient = selfCopy->_suClient;
    v16 = &v67;
    v67 = MEMORY[0x277D85DD0];
    v68 = -1073741824;
    v69 = 0;
    v70 = __70__SUSUISoftwareUpdateManager_scanForUpdatesWithOptions_andCompletion___block_invoke;
    v71 = &unk_279CBE9F8;
    v15 = &v72;
    v72 = MEMORY[0x277D82BE0](selfCopy);
    [(SUSUISoftwareUpdateClientManager *)suClient getDDMDeclaration:v16];
    v14 = selfCopy->_suClient;
    v13 = &v61;
    v61 = MEMORY[0x277D85DD0];
    v62 = -1073741824;
    v63 = 0;
    v64 = __70__SUSUISoftwareUpdateManager_scanForUpdatesWithOptions_andCompletion___block_invoke_769;
    v65 = &unk_279CBEA48;
    v10 = v66;
    v66[0] = MEMORY[0x277D82BE0](selfCopy);
    v11 = (v13 + 5);
    v66[1] = MEMORY[0x277D82BE0](location[0]);
    v12 = (v13 + 6);
    v66[2] = MEMORY[0x277D82BE0](v95);
    [(SUSUISoftwareUpdateClientManager *)v14 softwareUpdatePathRestriction:v13];
    objc_storeStrong(v12, 0);
    objc_storeStrong(v11, 0);
    objc_storeStrong(v10, 0);
    objc_storeStrong(v15, 0);
    v73 = 0;
  }

  objc_storeStrong(&v95, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __70__SUSUISoftwareUpdateManager_scanForUpdatesWithOptions_andCompletion___block_invoke(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  if (v6)
  {
    oslog[0] = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v8, v6);
      _os_log_impl(&dword_26AC94000, oslog[0], OS_LOG_TYPE_DEFAULT, "Failed to get a ddm declaration: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    [(objc_class *)a1[4].isa setDdmDeclaration:location[0]];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __70__SUSUISoftwareUpdateManager_scanForUpdatesWithOptions_andCompletion___block_invoke_769(void *a1, void *a2, id obj)
{
  v15 = a1;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v12[2] = a1;
  v4 = *(a1[4] + 56);
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __70__SUSUISoftwareUpdateManager_scanForUpdatesWithOptions_andCompletion___block_invoke_2;
  v9 = &unk_279CBE7D0;
  v10 = MEMORY[0x277D82BE0](a1[4]);
  v12[1] = v14;
  v11 = MEMORY[0x277D82BE0](a1[5]);
  v12[0] = MEMORY[0x277D82BE0](a1[6]);
  [v4 isDelayingUpdates:?];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void __70__SUSUISoftwareUpdateManager_scanForUpdatesWithOptions_andCompletion___block_invoke_2(uint64_t a1, char a2, id obj)
{
  v47 = a1;
  v46 = "[SUSUISoftwareUpdateManager scanForUpdatesWithOptions:andCompletion:]_block_invoke_2";
  v79 = *MEMORY[0x277D85DE8];
  v77 = a1;
  v76 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v74[1] = v47;
  v74[0] = _SUSUILoggingFacility();
  v73 = 0;
  if (os_log_type_enabled(v74[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v74[0];
    *type = v73;
    v43 = SUSUISoftwareUpdateStateToString(*(*(v47 + 32) + 88));
    v44 = MEMORY[0x277D82BE0](v43);
    v72 = v44;
    v45 = *(*(v47 + 32) + 88);
    v3 = *(*(v47 + 32) + 120);
    v70 = 0;
    if (v3)
    {
      v71 = [*(*(v47 + 32) + 120) humanReadableUpdateName];
      v70 = 1;
      v40 = v71;
    }

    else
    {
      v40 = @"N/A";
    }

    v37 = v40;
    v38 = *(*(v47 + 32) + 120);
    v39 = *(*(v47 + 32) + 160);
    v4 = *(*(v47 + 32) + 128);
    v68 = 0;
    if (v4)
    {
      v69 = [*(*(v47 + 32) + 128) humanReadableUpdateName];
      v68 = 1;
      v36 = v69;
    }

    else
    {
      v36 = @"N/A";
    }

    v32 = v36;
    v33 = *(*(v47 + 32) + 128);
    v34 = *(*(v47 + 32) + 168);
    v35 = *(*(v47 + 32) + 8);
    v5 = *(*(v47 + 32) + 8);
    v66 = 0;
    v64 = 0;
    v62 = 0;
    if (v5 && (v67 = [*(*(v47 + 32) + 8) descriptor], v66 = 1, v67))
    {
      v65 = [*(*(v47 + 32) + 8) descriptor];
      v30 = 1;
      v64 = 1;
      v63 = [v65 humanReadableUpdateName];
      v62 = 1;
      v31 = v63;
    }

    else
    {
      v31 = @"N/A";
    }

    v27 = v31;
    WeakRetained = objc_loadWeakRetained((*(v47 + 32) + 104));
    v29 = objc_loadWeakRetained((*(v47 + 32) + 104));
    v60 = 0;
    v58 = 0;
    if (v29)
    {
      v61 = objc_loadWeakRetained((*(v47 + 32) + 104));
      v25 = 1;
      v60 = 1;
      v6 = objc_opt_class();
      v59 = NSStringFromClass(v6);
      v58 = 1;
      v26 = v59;
    }

    else
    {
      v26 = @"N/A";
    }

    v22 = v26;
    v23 = objc_loadWeakRetained((*(v47 + 32) + 112));
    v24 = objc_loadWeakRetained((*(v47 + 32) + 112));
    v56 = 0;
    v54 = 0;
    if (v24)
    {
      v57 = objc_loadWeakRetained((*(v47 + 32) + 112));
      v20 = 1;
      v56 = 1;
      v7 = objc_opt_class();
      v55 = NSStringFromClass(v7);
      v54 = 1;
      v21 = v55;
    }

    else
    {
      v21 = @"N/A";
    }

    v8 = *(v47 + 56);
    v18 = &v10;
    buf = v78;
    __os_log_helper_16_2_18_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0_8_0_8_64(v78, v46, v44, v45, v37, v38, v39, v32, v33, v34, v35, v27, WeakRetained, v22, v23, v21, v76 & 1, v8, location);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nisDelaying: %d; pathRestriction: %lu, error: %@", buf, 0xAEu);
    if (v54)
    {
      MEMORY[0x277D82BD8](v55);
    }

    if (v56)
    {
      MEMORY[0x277D82BD8](v57);
    }

    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v23);
    if (v58)
    {
      MEMORY[0x277D82BD8](v59);
    }

    if (v60)
    {
      MEMORY[0x277D82BD8](v61);
    }

    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v62)
    {
      MEMORY[0x277D82BD8](v63);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](v67);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](v69);
    }

    if (v70)
    {
      MEMORY[0x277D82BD8](v71);
    }

    MEMORY[0x277D82BD8](v43);
    objc_storeStrong(&v72, 0);
  }

  obja = 0;
  objc_storeStrong(v74, 0);
  [*(v47 + 32) setIsDelayingUpdates:v76 & 1];
  [*(v47 + 32) setSuPathsRestricted:*(v47 + 56) != 0];
  v9 = v47;
  *(*(v47 + 32) + 17) = 1;
  v13 = *(*(v9 + 32) + 56);
  v11 = *(v9 + 40);
  v12 = &v48;
  v48 = MEMORY[0x277D85DD0];
  v49 = -1073741824;
  v50 = 0;
  v51 = __70__SUSUISoftwareUpdateManager_scanForUpdatesWithOptions_andCompletion___block_invoke_770;
  v52 = &unk_279CBEA20;
  v16 = v53;
  v53[0] = MEMORY[0x277D82BE0](*(v9 + 32));
  v15 = (v12 + 5);
  v53[1] = MEMORY[0x277D82BE0](*(v47 + 40));
  v14 = (v12 + 6);
  v53[2] = MEMORY[0x277D82BE0](*(v47 + 48));
  [v13 scanforUpdatesWithOptions:v11 completion:v12];
  objc_storeStrong(v14, obja);
  objc_storeStrong(v15, obja);
  objc_storeStrong(v16, obja);
  objc_storeStrong(&location, obja);
  *MEMORY[0x277D85DE8];
}

void __70__SUSUISoftwareUpdateManager_scanForUpdatesWithOptions_andCompletion___block_invoke_770(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  v11[0] = _SUSUILoggingFacility();
  if (os_log_type_enabled(v11[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_32_4_0_4_0(v14, "[SUSUISoftwareUpdateManager scanForUpdatesWithOptions:andCompletion:]_block_invoke", *(*(a1 + 32) + 51) & 1, *(*(a1 + 32) + 18) & 1);
    _os_log_impl(&dword_26AC94000, v11[0], OS_LOG_TYPE_DEFAULT, "%s: _runningInitialScan: %d, _userInitiatedRescan: %d", v14, 0x18u);
  }

  objc_storeStrong(v11, 0);
  v5 = MEMORY[0x277D82BE0](*(a1 + 32));
  objc_sync_enter(v5);
  *(*(a1 + 32) + 51) = 0;
  objc_sync_exit(v5);
  MEMORY[0x277D82BD8](v5);
  v9 = 0;
  v6 = 0;
  if (*(*(a1 + 32) + 18))
  {
    v10 = [*(a1 + 32) delegate];
    v9 = 1;
    v6 = objc_opt_respondsToSelector();
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if (v6)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 managerDidFinishRescan:*(a1 + 32)];
    MEMORY[0x277D82BD8](v4);
  }

  [*(a1 + 32) scanFinishedWithUpdates:location[0] options:*(a1 + 40) andError:v12];
  v3 = MEMORY[0x277D82BE0](*(a1 + 32));
  objc_sync_enter(v3);
  *(*(a1 + 32) + 18) = 0;
  *(*(a1 + 32) + 16) = 0;
  objc_sync_exit(v3);
  MEMORY[0x277D82BD8](v3);
  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)_SUDownloadPhaseIsQueued:(id)queued
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, queued);
  v5 = location[0];
  v6 = getkSUDownloadPhaseBrainFetchingQueuedRemote();
  v8 = 0;
  v7 = 1;
  if (([v5 isEqualToString:?] & 1) == 0)
  {
    v4 = location[0];
    v9 = getkSUDownloadPhaseUpdateFetchingQueuedRemote();
    v8 = 1;
    v7 = [v4 isEqualToString:?];
  }

  v11 = v7 & 1;
  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (void)updateStateFromDownload:(id)download
{
  v58 = &v77;
  v57 = "[SUSUISoftwareUpdateManager updateStateFromDownload:]";
  v86 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  progress = [location[0] progress];
  v81 = _SUSUILoggingFacility();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v58 + 5);
    *v53 = type;
    v54 = SUSUISoftwareUpdateStateToString(*(*(v58 + 9) + 88));
    v3 = MEMORY[0x277D82BE0](v54);
    v4 = v58;
    v55 = v3;
    *(v58 + 3) = v3;
    v56 = *(*(v4 + 9) + 88);
    v5 = *(*(v4 + 9) + 120);
    v78 = 0;
    if (v5)
    {
      humanReadableUpdateName = [*(*(v58 + 9) + 120) humanReadableUpdateName];
      *(v58 + 2) = humanReadableUpdateName;
      v78 = 1;
      v51 = humanReadableUpdateName;
    }

    else
    {
      v51 = @"N/A";
    }

    v48 = v51;
    v49 = *(*(v58 + 9) + 120);
    v50 = *(*(v58 + 9) + 160);
    v7 = *(*(v58 + 9) + 128);
    v76 = 0;
    if (v7)
    {
      humanReadableUpdateName2 = [*(*(v58 + 9) + 128) humanReadableUpdateName];
      *v58 = humanReadableUpdateName2;
      v76 = 1;
      v47 = humanReadableUpdateName2;
    }

    else
    {
      v47 = @"N/A";
    }

    v43 = v47;
    v44 = *(*(v58 + 9) + 128);
    v45 = *(*(v58 + 9) + 168);
    v46 = *(*(v58 + 9) + 8);
    v9 = *(*(v58 + 9) + 8);
    v74 = 0;
    v72 = 0;
    v70 = 0;
    if (v9 && (v75 = [*(*(v58 + 9) + 8) descriptor], v74 = 1, v75))
    {
      descriptor = [*(*(v58 + 9) + 8) descriptor];
      v41 = 1;
      v72 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      v70 = 1;
      v42 = humanReadableUpdateName3;
    }

    else
    {
      v42 = @"N/A";
    }

    v38 = v42;
    WeakRetained = objc_loadWeakRetained((*(v58 + 9) + 104));
    v40 = objc_loadWeakRetained((*(v58 + 9) + 104));
    v68 = 0;
    v66 = 0;
    if (v40)
    {
      v69 = objc_loadWeakRetained((*(v58 + 9) + 104));
      v36 = 1;
      v68 = 1;
      v10 = objc_opt_class();
      v67 = NSStringFromClass(v10);
      v66 = 1;
      v37 = v67;
    }

    else
    {
      v37 = @"N/A";
    }

    v33 = v37;
    v34 = objc_loadWeakRetained((*(v58 + 9) + 112));
    v35 = objc_loadWeakRetained((*(v58 + 9) + 112));
    v64 = 0;
    v62 = 0;
    if (v35)
    {
      v65 = objc_loadWeakRetained((*(v58 + 9) + 112));
      v31 = 1;
      v64 = 1;
      v11 = objc_opt_class();
      v63 = NSStringFromClass(v11);
      v62 = 1;
      v32 = v63;
    }

    else
    {
      v32 = @"N/A";
    }

    v27 = v32;
    v28 = *(v58 + 6);
    isDone = [*(v58 + 6) isDone];
    v29 = &v15;
    buf = v85;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64_4_0(v85, v57, v55, v56, v48, v49, v50, v43, v44, v45, v46, v38, WeakRetained, v33, v34, v32, v28, isDone);
    _os_log_impl(&dword_26AC94000, log, v53[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\noperationProgress: %@; download done: %d", buf, 0xA4u);
    if (v62)
    {
      MEMORY[0x277D82BD8](v63);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v34);
    if (v66)
    {
      MEMORY[0x277D82BD8](v67);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](v69);
    }

    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v70)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v72)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v74)
    {
      MEMORY[0x277D82BD8](v75);
    }

    if (v76)
    {
      MEMORY[0x277D82BD8](*v58);
    }

    if (v78)
    {
      MEMORY[0x277D82BD8](*(v58 + 2));
    }

    MEMORY[0x277D82BD8](v54);
    objc_storeStrong(&v79, 0);
  }

  objc_storeStrong(&v81, 0);
  downloadOptions = [*(v58 + 7) downloadOptions];
  isAutoDownload = [downloadOptions isAutoDownload];
  v26 = 0;
  if ((isAutoDownload & 1) == 0)
  {
    v14 = *(*(v58 + 9) + 55);
    v26 = 0;
    if ((v14 & 1) == 0)
    {
      v26 = *(*(v58 + 9) + 54) ^ 1;
    }
  }

  v24 = v26;
  MEMORY[0x277D82BD8](downloadOptions);
  if (v24)
  {
    descriptor2 = [*(v58 + 7) descriptor];
    v23 = [descriptor2 isEqual:*(*(v58 + 9) + 120)];
    MEMORY[0x277D82BD8](descriptor2);
    if (v23)
    {
      [*(v58 + 9) hideAlternateUpdate];
    }

    else
    {
      descriptor3 = [*(v58 + 7) descriptor];
      v21 = [descriptor3 isEqual:*(*(v58 + 9) + 128)];
      MEMORY[0x277D82BD8](descriptor3);
      if (v21)
      {
        [*(v58 + 9) hidePreferredUpdate];
      }
    }
  }

  if ([*(v58 + 6) isDone])
  {
    [*(v58 + 9) checkAndSetReadyToInstall];
  }

  else
  {
    phase = [*(v58 + 6) phase];
    oslog = _SUSUILoggingFacility();
    v59 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = oslog;
      *v18 = v59;
      v19 = v84;
      __os_log_helper_16_2_2_8_32_8_64(v84, v57, phase);
      _os_log_impl(&dword_26AC94000, v17, v18[0], "%s - phase: %@", v19, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (SUPrefsDownloadPhaseIsStalled_0(phase))
    {
      [*(v58 + 9) setState:14];
    }

    else if ([*(v58 + 9) _SUDownloadPhaseIsQueued:phase])
    {
      [*(v58 + 9) setState:5];
    }

    else
    {
      [*(v58 + 9) setState:12];
    }

    objc_storeStrong(&phase, 0);
  }

  obj = 0;
  objc_storeStrong(&progress, 0);
  objc_storeStrong(location, obj);
  *MEMORY[0x277D85DE8];
}

- (void)scanFinishedWithUpdates:(id)updates options:(id)options andError:(id)error
{
  v129 = v149;
  obj = options;
  errorCopy = error;
  v132 = "[SUSUISoftwareUpdateManager scanFinishedWithUpdates:options:andError:]";
  v179 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, updates);
  v174 = 0;
  objc_storeStrong(&v174, obj);
  v173 = 0;
  objc_storeStrong(&v173, errorCopy);
  v128 = _SUSUILoggingFacility();
  v172 = v128;
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v129 + 35);
    *v126 = type;
    updated = SUSUISoftwareUpdateStateToString(*(*(v129 + 40) + 88));
    v122 = updated;
    v5 = MEMORY[0x277D82BE0](v122);
    v6 = v129;
    v123 = v5;
    *(v129 + 33) = v5;
    v124 = *(*(v6 + 40) + 88);
    v7 = *(*(v6 + 40) + 120);
    v169 = 0;
    if (v7)
    {
      humanReadableUpdateName = [*(*(v129 + 40) + 120) humanReadableUpdateName];
      v8 = humanReadableUpdateName;
      *(v129 + 32) = v8;
      v169 = 1;
      v120 = v8;
    }

    else
    {
      v120 = @"N/A";
    }

    v117 = v120;
    v118 = *(*(v129 + 40) + 120);
    v119 = *(*(v129 + 40) + 160);
    v9 = *(*(v129 + 40) + 128);
    v168 = 0;
    if (v9)
    {
      humanReadableUpdateName2 = [*(*(v129 + 40) + 128) humanReadableUpdateName];
      v10 = humanReadableUpdateName2;
      *(v129 + 30) = v10;
      v168 = 1;
      v115 = v10;
    }

    else
    {
      v115 = @"N/A";
    }

    v111 = v115;
    v112 = *(*(v129 + 40) + 128);
    v113 = *(*(v129 + 40) + 168);
    v114 = *(*(v129 + 40) + 8);
    v11 = *(*(v129 + 40) + 8);
    v167 = 0;
    v166 = 0;
    v165 = 0;
    if (v11 && (v110 = [*(*(v129 + 40) + 8) descriptor], v12 = v110, *(v129 + 28) = v12, v167 = 1, v12))
    {
      descriptor = [*(*(v129 + 40) + 8) descriptor];
      v13 = descriptor;
      *(v129 + 26) = v13;
      v166 = 1;
      humanReadableUpdateName3 = [v13 humanReadableUpdateName];
      v14 = humanReadableUpdateName3;
      *(v129 + 24) = v14;
      v165 = 1;
      v107 = v14;
    }

    else
    {
      v107 = @"N/A";
    }

    v105 = v107;
    WeakRetained = objc_loadWeakRetained((*(v129 + 40) + 104));
    v104 = objc_loadWeakRetained((*(v129 + 40) + 104));
    v164 = 0;
    v163 = 0;
    if (v104)
    {
      v103 = objc_loadWeakRetained((*(v129 + 40) + 104));
      *(v129 + 22) = v103;
      v164 = 1;
      aClass = objc_opt_class();
      v101 = NSStringFromClass(aClass);
      v15 = v101;
      *(v129 + 20) = v15;
      v163 = 1;
      v100 = v15;
    }

    else
    {
      v100 = @"N/A";
    }

    v98 = v100;
    v99 = objc_loadWeakRetained((*(v129 + 40) + 112));
    v97 = objc_loadWeakRetained((*(v129 + 40) + 112));
    v162 = 0;
    v161 = 0;
    if (v97)
    {
      v96 = objc_loadWeakRetained((*(v129 + 40) + 112));
      *(v129 + 18) = v96;
      v162 = 1;
      v95 = objc_opt_class();
      v94 = NSStringFromClass(v95);
      v16 = v94;
      *(v129 + 16) = v16;
      v161 = 1;
      v93 = v16;
    }

    else
    {
      v93 = @"N/A";
    }

    v91 = v93;
    identifier = [*(v129 + 37) identifier];
    v89 = identifier;
    clientName = [*(v129 + 37) clientName];
    v88 = clientName;
    v17 = *(v129 + 36);
    v18 = *(v129 + 38);
    v86 = &v30;
    buf = v178;
    __os_log_helper_16_2_19_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_64(v178, v132, v123, v124, v117, v118, v119, v111, v112, v113, v114, v105, WeakRetained, v98, v99, v93, v89, v88, v17, v18);
    _os_log_impl(&dword_26AC94000, log, v126[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nscanId: %{public}@ (client: %{public}@), error: %{public}@; SUScanResults: %@", buf, 0xBCu);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v89);
    if (v161)
    {
      MEMORY[0x277D82BD8](*(v129 + 16));
    }

    if (v162)
    {
      MEMORY[0x277D82BD8](*(v129 + 18));
    }

    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v99);
    if (v163)
    {
      MEMORY[0x277D82BD8](*(v129 + 20));
    }

    if (v164)
    {
      MEMORY[0x277D82BD8](*(v129 + 22));
    }

    MEMORY[0x277D82BD8](v104);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v165)
    {
      MEMORY[0x277D82BD8](*(v129 + 24));
    }

    if (v166)
    {
      MEMORY[0x277D82BD8](*(v129 + 26));
    }

    if (v167)
    {
      MEMORY[0x277D82BD8](*(v129 + 28));
    }

    if (v168)
    {
      MEMORY[0x277D82BD8](*(v129 + 30));
    }

    if (v169)
    {
      MEMORY[0x277D82BD8](*(v129 + 32));
    }

    MEMORY[0x277D82BD8](v122);
    objc_storeStrong(&v170, 0);
  }

  objc_storeStrong(&v172, 0);
  if (*(*(v129 + 40) + 17))
  {
    mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
    v79 = mEMORY[0x277D64418];
    hasSemiSplatActive = [v79 hasSemiSplatActive];
    MEMORY[0x277D82BD8](v79);
    if (hasSemiSplatActive)
    {
      SULogInfo();
      [*(v129 + 40) clearPastScanResults];
      [*(v129 + 40) setState:3];
      [*(v129 + 40) handleRollbackApplied];
      v158 = 1;
    }

    else
    {
      v21 = v129;
      *(*(v129 + 40) + 17) = 0;
      objc_storeStrong((*(v21 + 40) + 152), 0);
      if (*(v129 + 36))
      {
        domain = [*(v129 + 36) domain];
        v44 = domain;
        SUErrorDomain_3 = getSUErrorDomain_3();
        v42 = SUErrorDomain_3;
        v43 = [v44 isEqualToString:?];
        v41 = 0;
        if (v43)
        {
          code = [*(v129 + 36) code];
          v41 = code == 3;
        }

        v39 = v41;
        MEMORY[0x277D82BD8](v42);
        MEMORY[0x277D82BD8](v44);
        if (v39)
        {
          [*(v129 + 40) clearPastScanResults];
          [*(v129 + 40) setState:3];
        }

        else
        {
          domain2 = [*(v129 + 36) domain];
          v36 = domain2;
          v37 = getSUErrorDomain_3();
          v34 = v37;
          v35 = [v36 isEqualToString:?];
          v33 = 0;
          if (v35)
          {
            code2 = [*(v129 + 36) code];
            v33 = code2 == 55;
          }

          v31 = v33;
          MEMORY[0x277D82BD8](v34);
          MEMORY[0x277D82BD8](v36);
          if (v31)
          {
            [*(v129 + 40) setState:4];
          }

          else
          {
            [*(v129 + 40) handleScanError:*(v129 + 36)];
          }
        }
      }

      else
      {
        objc_initWeak(&from, *(v129 + 40));
        v22 = *(*(v129 + 40) + 88);
        v155 = 0;
        v78 = 1;
        if (v22 != 1)
        {
          download = [*(v129 + 40) download];
          v23 = download;
          *(v129 + 8) = v23;
          v155 = 1;
          v78 = 1;
          if (!v23)
          {
            v78 = *(*(v129 + 40) + 18);
          }
        }

        v76 = v78;
        if (v155)
        {
          MEMORY[0x277D82BD8](*(v129 + 8));
        }

        v24 = v129;
        v156 = v76 & 1;
        *v129 = MEMORY[0x277D85DD0];
        v150 = -1073741824;
        v151 = 0;
        *(v24 + 2) = __71__SUSUISoftwareUpdateManager_scanFinishedWithUpdates_options_andError___block_invoke;
        *(v24 + 3) = &unk_279CBEA70;
        v75 = &v152;
        objc_copyWeak(&v152, &from);
        v153 = v156 & 1;
        v74 = MEMORY[0x26D66A460](v149);
        v25 = v129;
        *(v129 + 6) = v74;
        if (*(v25 + 38))
        {
          v26 = *(*(v129 + 40) + 54);
          v147 = 0;
          v145 = 0;
          v143 = 0;
          v73 = 0;
          if (v26)
          {
            v71 = *(*(v129 + 40) + 216);
            preferredDescriptor = [*(v129 + 38) preferredDescriptor];
            v148 = preferredDescriptor;
            v147 = 1;
            v70 = [v71 isEqual:?];
            v73 = 0;
            if (v70)
            {
              if (*(*(v129 + 40) + 120) || (v69 = [*(v129 + 38) alternateDescriptor], v146 = v69, v145 = 1, v68 = 1, v146))
              {
                v27 = *(*(v129 + 40) + 120);
                v67 = 0;
                if (v27)
                {
                  v65 = *(*(v129 + 40) + 120);
                  alternateDescriptor = [*(v129 + 38) alternateDescriptor];
                  v144 = alternateDescriptor;
                  v143 = 1;
                  v64 = [v65 isEqual:?];
                  v67 = v64;
                }

                v68 = v67;
              }

              v73 = v68;
            }
          }

          v63 = v73;
          if (v143)
          {
            MEMORY[0x277D82BD8](v144);
          }

          if (v145)
          {
            MEMORY[0x277D82BD8](v146);
          }

          if (v147)
          {
            MEMORY[0x277D82BD8](v148);
          }

          if (v63)
          {
            v62 = _SUSUILoggingFacility();
            oslog = v62;
            v141 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              v59 = oslog;
              *v60 = v141;
              v28 = *(v129 + 38);
              v61 = v176;
              __os_log_helper_16_2_2_8_32_8_64(v176, v132, v28);
              _os_log_impl(&dword_26AC94000, v59, v60[0], "%s: Skipping on assigning the results preferred update and alternate update as _hidingPreferredUpdate = YES while _hiddenPreferredUpdate = results.preferredDescriptor and _preferredUpdate = results.alternateDescriptor. Results: %@", v61, 0x16u);
            }

            objc_storeStrong(&oslog, 0);
          }

          else
          {
            [*(v129 + 40) assignScanResults:*(v129 + 38)];
          }

          if (v156)
          {
            v57 = *(*(v129 + 40) + 56);
            v134 = MEMORY[0x277D85DD0];
            v135 = -1073741824;
            v136 = 0;
            v137 = __71__SUSUISoftwareUpdateManager_scanFinishedWithUpdates_options_andError___block_invoke_777;
            v138 = &unk_279CBEAC0;
            v58 = &v140;
            objc_copyWeak(&v140, &from);
            v56 = &v134;
            v53 = v139;
            v139[0] = MEMORY[0x277D82BE0](*(v129 + 40));
            v54 = (v56 + 5);
            v139[1] = MEMORY[0x277D82BE0](*(v129 + 38));
            v55 = (v56 + 6);
            v139[2] = MEMORY[0x277D82BE0](*(v129 + 6));
            [v57 download:v56];
            objc_storeStrong(v55, 0);
            objc_storeStrong(v54, 0);
            objc_storeStrong(v53, 0);
            objc_destroyWeak(v58);
          }

          else
          {
            [*(v129 + 40) _requestLayoutSubviews];
          }
        }

        else
        {
          download2 = [*(v129 + 40) download];
          v51 = download2;
          MEMORY[0x277D82BD8](v51);
          if (v51)
          {
            if (v156)
            {
              v49 = *(v129 + 40);
              download3 = [*(v129 + 40) download];
              v48 = download3;
              [v49 updateStateFromDownload:?];
              MEMORY[0x277D82BD8](v48);
            }
          }

          else if (*(*(v129 + 40) + 120))
          {
            shouldShowPreferredUpdateAsAlternate = [*(v129 + 40) shouldShowPreferredUpdateAsAlternate];
            if (shouldShowPreferredUpdateAsAlternate)
            {
              v29 = 6;
            }

            else
            {
              v29 = 8;
            }

            v133 = v29;
            (*(*(v129 + 6) + 16))();
          }

          else
          {
            (*(*(v129 + 6) + 16))();
          }
        }

        objc_storeStrong(&v154, 0);
        objc_destroyWeak(v75);
        objc_destroyWeak(&from);
      }

      v158 = 0;
    }
  }

  else
  {
    v85 = _SUSUILoggingFacility();
    v19 = v85;
    v20 = v129;
    *(v129 + 14) = v19;
    v159 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20[14], OS_LOG_TYPE_ERROR))
    {
      v82 = *(v129 + 14);
      *v83 = v159;
      v84 = v177;
      __os_log_helper_16_2_1_8_32(v177, v132);
      _os_log_error_impl(&dword_26AC94000, v82, v83[0], "%s: Called while _anyScanInProgress = NO. Stopping.", v84, 0xCu);
    }

    objc_storeStrong(&v160, 0);
    v158 = 1;
  }

  objc_storeStrong(&v173, 0);
  objc_storeStrong(&v174, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __71__SUSUISoftwareUpdateManager_scanFinishedWithUpdates_options_andError___block_invoke(uint64_t a1, unsigned int a2)
{
  v5 = a1;
  v4 = a2;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 32));
  if (location[0])
  {
    if (*(a1 + 40))
    {
      [location[0] setState:v4];
    }

    else
    {
      [location[0] _requestLayoutSubviews];
    }
  }

  objc_storeStrong(location, 0);
}

void __71__SUSUISoftwareUpdateManager_scanFinishedWithUpdates_options_andError___block_invoke_777(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v35 = 0;
  objc_storeStrong(&v35, a3);
  v34[1] = a1;
  v34[0] = objc_loadWeakRetained((a1 + 56));
  if (v34[0])
  {
    [v34[0] setDownload:location[0]];
    if (!location[0])
    {
      [v34[0] setHiddenAlternateUpdate:?];
      [v34[0] setHiddenPreferredUpdate:0];
      *(*(a1 + 32) + 55) = 0;
      *(*(a1 + 32) + 54) = 0;
      v16 = *(a1 + 32);
      v17 = [*(a1 + 40) preferredDescriptor];
      [v16 setPreferredUpdate:?];
      MEMORY[0x277D82BD8](v17);
      v18 = *(a1 + 32);
      v19 = [*(a1 + 40) alternateDescriptor];
      [v18 setAlternateUpdate:?];
      MEMORY[0x277D82BD8](v19);
      if ([v34[0] shouldShowPreferredUpdateAsAlternate])
      {
        v3 = 6;
      }

      else
      {
        v3 = 8;
      }

      v33 = v3;
      (*(*(a1 + 48) + 16))();
      v32 = 1;
      goto LABEL_16;
    }

    v9 = *(*(a1 + 32) + 64);
    v11 = [location[0] downloadOptions];
    v8 = [v11 downloadFeeAgreementStatus];
    v10 = [location[0] descriptor];
    [v9 setCellularFeeAgreementStatus:v8 forUpdate:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    v13 = *(*(a1 + 32) + 64);
    v15 = [location[0] downloadOptions];
    v12 = [v15 termsAndConditionsAgreementStatus];
    v14 = [location[0] descriptor];
    [v13 setTermsAgreementStatus:v12 forUpdate:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    v6 = [location[0] descriptor];
    v4 = [v6 isEqual:*(*(a1 + 32) + 120)];
    v29 = 0;
    v7 = 1;
    if ((v4 & 1) == 0)
    {
      v30 = [location[0] descriptor];
      v29 = 1;
      v7 = [v30 isEqual:*(*(a1 + 32) + 128)];
    }

    if (v29)
    {
      MEMORY[0x277D82BD8](v30);
    }

    MEMORY[0x277D82BD8](v6);
    v31 = v7 & 1;
    if (v7)
    {
      [v34[0] updateStateFromDownload:location[0]];
    }

    else if (*(*(a1 + 32) + 88) == 1)
    {
      v5 = *(*(a1 + 32) + 56);
      v22 = MEMORY[0x277D85DD0];
      v23 = -1073741824;
      v24 = 0;
      v25 = __71__SUSUISoftwareUpdateManager_scanFinishedWithUpdates_options_andError___block_invoke_2;
      v26 = &unk_279CBEA98;
      objc_copyWeak(&v28, (a1 + 56));
      v27 = MEMORY[0x277D82BE0](*(a1 + 48));
      [v5 isClearingSpaceForDownload:&v22];
      objc_storeStrong(&v27, 0);
      objc_destroyWeak(&v28);
    }
  }

  v32 = 0;
LABEL_16:
  objc_storeStrong(v34, 0);
  if (!v32)
  {
    v32 = 0;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

void __71__SUSUISoftwareUpdateManager_scanFinishedWithUpdates_options_andError___block_invoke_2(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v4[1] = a1;
  v4[0] = objc_loadWeakRetained((a1 + 40));
  if (v4[0])
  {
    [v4[0] setClearingSpaceForDownload:v6 & 1];
    [v4[0] shouldShowPreferredUpdateAsAlternate];
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(v4, 0);
  objc_storeStrong(&location, 0);
}

- (void)clearPastScanResults
{
  [(SUSUISoftwareUpdateManager *)self setPreferredUpdate:?];
  [(SUSUISoftwareUpdateManager *)self setAlternateUpdate:0];
  [(SUSUISoftwareUpdateManager *)self setHiddenAlternateUpdate:0];
  [(SUSUISoftwareUpdateManager *)self setHiddenPreferredUpdate:0];
  self->_hidingAlternateUpdate = 0;
  self->_hidingPreferredUpdate = 0;
}

- (BOOL)shouldShowPreferredUpdateAsAlternate
{
  if (self->_preferredUpdate && [(SUDescriptor *)self->_preferredUpdate audienceType]== 1 && !self->_alternateUpdate)
  {
    return [(SUDescriptor *)self->_preferredUpdate promoteAlternateUpdate]& 1;
  }

  else
  {
    return 0;
  }
}

- (void)assignScanResults:(id)results
{
  v65 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  preferredDescriptor = [location[0] preferredDescriptor];
  v57 = 0;
  v55 = 0;
  if (preferredDescriptor || (v26 = 1, selfCopy->_preferredUpdate))
  {
    preferredDescriptor2 = [location[0] preferredDescriptor];
    v57 = 1;
    v25 = 0;
    if (preferredDescriptor2)
    {
      preferredDescriptor3 = [location[0] preferredDescriptor];
      v55 = 1;
      v25 = [preferredDescriptor3 isEqual:selfCopy->_preferredUpdate];
    }

    v26 = v25;
  }

  if (v55)
  {
    MEMORY[0x277D82BD8](preferredDescriptor3);
  }

  if (v57)
  {
    MEMORY[0x277D82BD8](preferredDescriptor2);
  }

  MEMORY[0x277D82BD8](preferredDescriptor);
  if (v26)
  {
    v46 = _SUSUILoggingFacility();
    v45 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      preferredUpdate = selfCopy->_preferredUpdate;
      v43 = 0;
      if (preferredUpdate)
      {
        humanReadableUpdateName = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
        v43 = 1;
        v17 = humanReadableUpdateName;
      }

      else
      {
        v17 = @"N/A";
      }

      __os_log_helper_16_2_4_8_32_8_64_8_0_8_64(v63, "[SUSUISoftwareUpdateManager assignScanResults:]", v17, selfCopy->_preferredUpdate, selfCopy->_preferredUpdateError);
      _os_log_impl(&dword_26AC94000, v46, v45, "%s: The previous stored preferred update %@ (%p) is the same as the new received one. Keeping it with its related error: %@", v63, 0x2Au);
      if (v43)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName);
      }
    }

    objc_storeStrong(&v46, 0);
  }

  else
  {
    v54 = _SUSUILoggingFacility();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v3 = selfCopy->_preferredUpdate;
      v51 = 0;
      if (v3)
      {
        humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
        v51 = 1;
        v24 = humanReadableUpdateName2;
      }

      else
      {
        v24 = @"N/A";
      }

      v22 = selfCopy->_preferredUpdate;
      preferredDescriptor4 = [location[0] preferredDescriptor];
      v49 = 0;
      v47 = 0;
      if (preferredDescriptor4)
      {
        preferredDescriptor5 = [location[0] preferredDescriptor];
        v49 = 1;
        humanReadableUpdateName3 = [preferredDescriptor5 humanReadableUpdateName];
        v47 = 1;
        v21 = humanReadableUpdateName3;
      }

      else
      {
        v21 = @"N/A";
      }

      preferredDescriptor6 = [location[0] preferredDescriptor];
      __os_log_helper_16_2_6_8_32_8_64_8_0_8_64_8_0_8_64(v64, "[SUSUISoftwareUpdateManager assignScanResults:]", v24, v22, v21, preferredDescriptor6, selfCopy->_preferredUpdateError);
      _os_log_impl(&dword_26AC94000, v54, type, "%s: Replacing the previous stored preferred update %@ (%p) with a new, different, preferred update: %@ (%p) and clearing the previous preferred update error: %@", v64, 0x3Eu);
      MEMORY[0x277D82BD8](preferredDescriptor6);
      if (v47)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName3);
      }

      if (v49)
      {
        MEMORY[0x277D82BD8](preferredDescriptor5);
      }

      MEMORY[0x277D82BD8](preferredDescriptor4);
      if (v51)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName2);
      }
    }

    objc_storeStrong(&v54, 0);
    v18 = selfCopy;
    preferredDescriptor7 = [location[0] preferredDescriptor];
    [(SUSUISoftwareUpdateManager *)v18 setPreferredUpdate:?];
    MEMORY[0x277D82BD8](preferredDescriptor7);
    [(SUSUISoftwareUpdateManager *)selfCopy setPreferredUpdateError:0];
  }

  alternateDescriptor = [location[0] alternateDescriptor];
  v41 = 0;
  v39 = 0;
  if (alternateDescriptor || (v15 = 1, selfCopy->_alternateUpdate))
  {
    alternateDescriptor2 = [location[0] alternateDescriptor];
    v41 = 1;
    v14 = 0;
    if (alternateDescriptor2)
    {
      alternateDescriptor3 = [location[0] alternateDescriptor];
      v39 = 1;
      v14 = [alternateDescriptor3 isEqual:selfCopy->_alternateUpdate];
    }

    v15 = v14;
  }

  if (v39)
  {
    MEMORY[0x277D82BD8](alternateDescriptor3);
  }

  if (v41)
  {
    MEMORY[0x277D82BD8](alternateDescriptor2);
  }

  MEMORY[0x277D82BD8](alternateDescriptor);
  if (v15)
  {
    v30 = _SUSUILoggingFacility();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 0;
      if (selfCopy->_alternateUpdate)
      {
        humanReadableUpdateName4 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
        v28 = 1;
        v6 = humanReadableUpdateName4;
      }

      else
      {
        v6 = @"N/A";
      }

      __os_log_helper_16_2_4_8_32_8_64_8_0_8_64(v61, "[SUSUISoftwareUpdateManager assignScanResults:]", v6, selfCopy->_alternateUpdate, selfCopy->_alternateUpdateError);
      _os_log_impl(&dword_26AC94000, v30, OS_LOG_TYPE_DEFAULT, "%s: The previous stored alternate update %@ (%p) is the same as the new received one. Keeping it with its related error: %@", v61, 0x2Au);
      if (v28)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName4);
      }
    }

    objc_storeStrong(&v30, 0);
  }

  else
  {
    oslog = _SUSUILoggingFacility();
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      alternateUpdate = selfCopy->_alternateUpdate;
      v35 = 0;
      if (alternateUpdate)
      {
        humanReadableUpdateName5 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
        v35 = 1;
        v13 = humanReadableUpdateName5;
      }

      else
      {
        v13 = @"N/A";
      }

      v11 = selfCopy->_alternateUpdate;
      alternateDescriptor4 = [location[0] alternateDescriptor];
      v33 = 0;
      v31 = 0;
      if (alternateDescriptor4)
      {
        alternateDescriptor5 = [location[0] alternateDescriptor];
        v33 = 1;
        humanReadableUpdateName6 = [alternateDescriptor5 humanReadableUpdateName];
        v31 = 1;
        v10 = humanReadableUpdateName6;
      }

      else
      {
        v10 = @"N/A";
      }

      alternateDescriptor6 = [location[0] alternateDescriptor];
      __os_log_helper_16_2_6_8_32_8_64_8_0_8_64_8_0_8_64(v62, "[SUSUISoftwareUpdateManager assignScanResults:]", v13, v11, v10, alternateDescriptor6, selfCopy->_alternateUpdateError);
      _os_log_impl(&dword_26AC94000, oslog, v37, "%s: Replacing the previous stored alternate update %@ (%p) with a new, different, alternate update: %@ (%p) and clearing the previous alternate update error: %@", v62, 0x3Eu);
      MEMORY[0x277D82BD8](alternateDescriptor6);
      if (v31)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName6);
      }

      if (v33)
      {
        MEMORY[0x277D82BD8](alternateDescriptor5);
      }

      MEMORY[0x277D82BD8](alternateDescriptor4);
      if (v35)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName5);
      }
    }

    objc_storeStrong(&oslog, 0);
    v7 = selfCopy;
    alternateDescriptor7 = [location[0] alternateDescriptor];
    [(SUSUISoftwareUpdateManager *)v7 setAlternateUpdate:?];
    MEMORY[0x277D82BD8](alternateDescriptor7);
    [(SUSUISoftwareUpdateManager *)selfCopy setAlternateUpdateError:0];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)enrollInBetaUpdatesForProgram:(id)program completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, program);
  v28 = 0;
  objc_storeStrong(&v28, completion);
  if (_os_feature_enabled_impl())
  {
    betaPrograms = [(SUSUISoftwareUpdateManager *)selfCopy betaPrograms];
    v23 = 0;
    v11 = 1;
    if (betaPrograms)
    {
      betaPrograms2 = [(SUSUISoftwareUpdateManager *)selfCopy betaPrograms];
      v23 = 1;
      v11 = [(NSArray *)betaPrograms2 count]== 0;
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](betaPrograms2);
    }

    MEMORY[0x277D82BD8](betaPrograms);
    if (v11)
    {
      v22 = _SUSUILoggingFacility();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_32(v31, "[SUSUISoftwareUpdateManager enrollInBetaUpdatesForProgram:completion:]");
        _os_log_impl(&dword_26AC94000, v22, v21, "%s: No programs to enroll in, aborting", v31, 0xCu);
      }

      objc_storeStrong(&v22, 0);
      [(SUSUISoftwareUpdateManager *)selfCopy scanForUpdatesCompletion:0];
      (*(v28 + 2))(v28, 0);
      v25 = 1;
    }

    else
    {
      if (!location[0])
      {
        betaPrograms3 = [(SUSUISoftwareUpdateManager *)selfCopy betaPrograms];
        firstObject = [(NSArray *)betaPrograms3 firstObject];
        v5 = location[0];
        location[0] = firstObject;
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](betaPrograms3);
      }

      mEMORY[0x277D4D310] = [MEMORY[0x277D4D310] sharedManager];
      currentSeedingDevice = [(SUSUISoftwareUpdateManager *)selfCopy currentSeedingDevice];
      v6 = location[0];
      v13 = MEMORY[0x277D85DD0];
      v14 = -1073741824;
      v15 = 0;
      v16 = __71__SUSUISoftwareUpdateManager_enrollInBetaUpdatesForProgram_completion___block_invoke;
      v17 = &unk_279CB9960;
      v18 = MEMORY[0x277D82BE0](selfCopy);
      v19 = MEMORY[0x277D82BE0](location[0]);
      v20 = MEMORY[0x277D82BE0](v28);
      [mEMORY[0x277D4D310] enrollDevice:currentSeedingDevice inBetaProgram:v6 completion:&v13];
      MEMORY[0x277D82BD8](currentSeedingDevice);
      MEMORY[0x277D82BD8](mEMORY[0x277D4D310]);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
      v25 = 0;
    }
  }

  else
  {
    v27 = _SUSUILoggingFacility();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v32, "[SUSUISoftwareUpdateManager enrollInBetaUpdatesForProgram:completion:]");
      _os_log_impl(&dword_26AC94000, v27, v26, "%s: enrollInBetaUpdates feature is not enabled", v32, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    (*(v28 + 2))(v28, 0);
    v25 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __71__SUSUISoftwareUpdateManager_enrollInBetaUpdatesForProgram_completion___block_invoke(void *a1, void *a2)
{
  v48 = a1;
  v47 = "[SUSUISoftwareUpdateManager enrollInBetaUpdatesForProgram:completion:]_block_invoke";
  v78 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v75[1] = v48;
  v75[0] = _SUSUILoggingFacility();
  v74 = 0;
  if (os_log_type_enabled(v75[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v75[0];
    *type = v74;
    v44 = SUSUISoftwareUpdateStateToString(*(v48[4] + 88));
    v45 = MEMORY[0x277D82BE0](v44);
    v73 = v45;
    v46 = *(v48[4] + 88);
    v2 = *(v48[4] + 120);
    v71 = 0;
    if (v2)
    {
      v72 = [*(v48[4] + 120) humanReadableUpdateName];
      v71 = 1;
      v41 = v72;
    }

    else
    {
      v41 = @"N/A";
    }

    v38 = v41;
    v39 = *(v48[4] + 120);
    v40 = *(v48[4] + 160);
    v3 = *(v48[4] + 128);
    v69 = 0;
    if (v3)
    {
      v70 = [*(v48[4] + 128) humanReadableUpdateName];
      v69 = 1;
      v37 = v70;
    }

    else
    {
      v37 = @"N/A";
    }

    v33 = v37;
    v34 = *(v48[4] + 128);
    v35 = *(v48[4] + 168);
    v36 = *(v48[4] + 8);
    v4 = *(v48[4] + 8);
    v67 = 0;
    v65 = 0;
    v63 = 0;
    if (v4 && (v68 = [*(v48[4] + 8) descriptor], v67 = 1, v68))
    {
      v66 = [*(v48[4] + 8) descriptor];
      v31 = 1;
      v65 = 1;
      v64 = [v66 humanReadableUpdateName];
      v63 = 1;
      v32 = v64;
    }

    else
    {
      v32 = @"N/A";
    }

    v28 = v32;
    WeakRetained = objc_loadWeakRetained((v48[4] + 104));
    v30 = objc_loadWeakRetained((v48[4] + 104));
    v61 = 0;
    v59 = 0;
    if (v30)
    {
      v62 = objc_loadWeakRetained((v48[4] + 104));
      v26 = 1;
      v61 = 1;
      v5 = objc_opt_class();
      v60 = NSStringFromClass(v5);
      v59 = 1;
      v27 = v60;
    }

    else
    {
      v27 = @"N/A";
    }

    v23 = v27;
    v24 = objc_loadWeakRetained((v48[4] + 112));
    v25 = objc_loadWeakRetained((v48[4] + 112));
    v57 = 0;
    v55 = 0;
    if (v25)
    {
      v58 = objc_loadWeakRetained((v48[4] + 112));
      v21 = 1;
      v57 = 1;
      v6 = objc_opt_class();
      v56 = NSStringFromClass(v6);
      v55 = 1;
      v22 = v56;
    }

    else
    {
      v22 = @"N/A";
    }

    v7 = v48[5];
    v19 = &v9;
    buf = v77;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64_8_64(v77, v47, v45, v46, v38, v39, v40, v33, v34, v35, v36, v28, WeakRetained, v23, v24, v22, v7, location[0]);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nEnroll in program: %@, error: %@", buf, 0xA8u);
    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    if (v57)
    {
      MEMORY[0x277D82BD8](v58);
    }

    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v24);
    if (v59)
    {
      MEMORY[0x277D82BD8](v60);
    }

    if (v61)
    {
      MEMORY[0x277D82BD8](v62);
    }

    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v63)
    {
      MEMORY[0x277D82BD8](v64);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](v66);
    }

    if (v67)
    {
      MEMORY[0x277D82BD8](v68);
    }

    if (v69)
    {
      MEMORY[0x277D82BD8](v70);
    }

    if (v71)
    {
      MEMORY[0x277D82BD8](v72);
    }

    MEMORY[0x277D82BD8](v44);
    objc_storeStrong(&v73, 0);
  }

  obj = 0;
  objc_storeStrong(v75, 0);
  v10 = MEMORY[0x277D85CD0];
  v8 = MEMORY[0x277D85CD0];
  queue = v10;
  block = &v49;
  v49 = MEMORY[0x277D85DD0];
  v50 = -1073741824;
  v51 = 0;
  v52 = __71__SUSUISoftwareUpdateManager_enrollInBetaUpdatesForProgram_completion___block_invoke_781;
  v53 = &unk_279CBEAE8;
  v16 = v54;
  v17 = location;
  v54[0] = MEMORY[0x277D82BE0](location[0]);
  v15 = (block + 56);
  v54[3] = MEMORY[0x277D82BE0](v48[6]);
  v14 = (block + 40);
  v54[1] = MEMORY[0x277D82BE0](v48[4]);
  v13 = (block + 48);
  v54[2] = MEMORY[0x277D82BE0](v48[5]);
  dispatch_async(queue, block);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v13, obj);
  objc_storeStrong(v14, obj);
  objc_storeStrong(v15, obj);
  objc_storeStrong(v16, obj);
  objc_storeStrong(v17, obj);
  *MEMORY[0x277D85DE8];
}

void __71__SUSUISoftwareUpdateManager_enrollInBetaUpdatesForProgram_completion___block_invoke_781(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  if (*(a1 + 32))
  {
    (*(*(a1 + 56) + 16))();
    location[0] = _SUSUILoggingFacility();
    v3 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v6, "[SUSUISoftwareUpdateManager enrollInBetaUpdatesForProgram:completion:]_block_invoke");
      _os_log_error_impl(&dword_26AC94000, location[0], v3, "%s: Failed to enroll device in seeding", v6, 0xCu);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v5, "[SUSUISoftwareUpdateManager enrollInBetaUpdatesForProgram:completion:]_block_invoke");
      _os_log_error_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_ERROR, "%s: Finished to enroll device in seeding", v5, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [*(a1 + 40) setEnrolledBetaProgram:*(a1 + 48)];
    [*(a1 + 40) scanForUpdatesCompletion:0];
  }

  *MEMORY[0x277D85DE8];
}

- (void)unenrollBetaUpdatesWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if (_os_feature_enabled_impl())
  {
    mEMORY[0x277D4D310] = [MEMORY[0x277D4D310] sharedManager];
    currentSeedingDevice = [(SUSUISoftwareUpdateManager *)selfCopy currentSeedingDevice];
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __64__SUSUISoftwareUpdateManager_unenrollBetaUpdatesWithCompletion___block_invoke;
    v9 = &unk_279CB9780;
    v10 = MEMORY[0x277D82BE0](selfCopy);
    v11 = MEMORY[0x277D82BE0](location[0]);
    [mEMORY[0x277D4D310] unenrollDevice:currentSeedingDevice completion:&v5];
    MEMORY[0x277D82BD8](currentSeedingDevice);
    MEMORY[0x277D82BD8](mEMORY[0x277D4D310]);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  objc_storeStrong(location, 0);
}

void __64__SUSUISoftwareUpdateManager_unenrollBetaUpdatesWithCompletion___block_invoke(void *a1, char a2)
{
  v43 = a1;
  v44 = "[SUSUISoftwareUpdateManager unenrollBetaUpdatesWithCompletion:]_block_invoke";
  v77 = *MEMORY[0x277D85DE8];
  v75 = a1;
  v74 = a2;
  v73[1] = a1;
  v73[0] = _SUSUILoggingFacility();
  v72 = 0;
  if (os_log_type_enabled(v73[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v73[0];
    *type = v72;
    v40 = SUSUISoftwareUpdateStateToString(*(*(v43 + 4) + 88));
    v41 = MEMORY[0x277D82BE0](v40);
    location = v41;
    v42 = *(*(v43 + 4) + 88);
    v2 = *(*(v43 + 4) + 120);
    v69 = 0;
    if (v2)
    {
      v70 = [*(*(v43 + 4) + 120) humanReadableUpdateName];
      v69 = 1;
      v37 = v70;
    }

    else
    {
      v37 = @"N/A";
    }

    v34 = v37;
    v35 = *(*(v43 + 4) + 120);
    v36 = *(*(v43 + 4) + 160);
    v3 = *(*(v43 + 4) + 128);
    v67 = 0;
    if (v3)
    {
      v68 = [*(*(v43 + 4) + 128) humanReadableUpdateName];
      v67 = 1;
      v33 = v68;
    }

    else
    {
      v33 = @"N/A";
    }

    v29 = v33;
    v30 = *(*(v43 + 4) + 128);
    v31 = *(*(v43 + 4) + 168);
    v32 = *(*(v43 + 4) + 8);
    v4 = *(*(v43 + 4) + 8);
    v65 = 0;
    v63 = 0;
    v61 = 0;
    if (v4 && (v66 = [*(*(v43 + 4) + 8) descriptor], v65 = 1, v66))
    {
      v64 = [*(*(v43 + 4) + 8) descriptor];
      v27 = 1;
      v63 = 1;
      v62 = [v64 humanReadableUpdateName];
      v61 = 1;
      v28 = v62;
    }

    else
    {
      v28 = @"N/A";
    }

    v24 = v28;
    WeakRetained = objc_loadWeakRetained((*(v43 + 4) + 104));
    v26 = objc_loadWeakRetained((*(v43 + 4) + 104));
    v59 = 0;
    v57 = 0;
    if (v26)
    {
      v60 = objc_loadWeakRetained((*(v43 + 4) + 104));
      v22 = 1;
      v59 = 1;
      v5 = objc_opt_class();
      v58 = NSStringFromClass(v5);
      v57 = 1;
      v23 = v58;
    }

    else
    {
      v23 = @"N/A";
    }

    v19 = v23;
    v20 = objc_loadWeakRetained((*(v43 + 4) + 112));
    v21 = objc_loadWeakRetained((*(v43 + 4) + 112));
    v55 = 0;
    v53 = 0;
    if (v21)
    {
      v56 = objc_loadWeakRetained((*(v43 + 4) + 112));
      v17 = 1;
      v55 = 1;
      v6 = objc_opt_class();
      v54 = NSStringFromClass(v6);
      v53 = 1;
      v18 = v54;
    }

    else
    {
      v18 = @"N/A";
    }

    v15 = &v8;
    buf = v76;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0(v76, v44, v41, v42, v34, v35, v36, v29, v30, v31, v32, v24, WeakRetained, v19, v20, v18, v74 & 1);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nUn-enroll from beta program success: %d", buf, 0x9Au);
    if (v53)
    {
      MEMORY[0x277D82BD8](v54);
    }

    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v20);
    if (v57)
    {
      MEMORY[0x277D82BD8](v58);
    }

    if (v59)
    {
      MEMORY[0x277D82BD8](v60);
    }

    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v61)
    {
      MEMORY[0x277D82BD8](v62);
    }

    if (v63)
    {
      MEMORY[0x277D82BD8](v64);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](v66);
    }

    if (v67)
    {
      MEMORY[0x277D82BD8](v68);
    }

    if (v69)
    {
      MEMORY[0x277D82BD8](v70);
    }

    MEMORY[0x277D82BD8](v40);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v73, 0);
  if (v74)
  {
    [*(v43 + 4) setEnrolledBetaProgram:0];
  }

  v9 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85CD0];
  queue = v9;
  block = &v45;
  v45 = MEMORY[0x277D85DD0];
  v46 = -1073741824;
  v47 = 0;
  v48 = __64__SUSUISoftwareUpdateManager_unenrollBetaUpdatesWithCompletion___block_invoke_783;
  v49 = &unk_279CB95F0;
  v13 = &v51;
  v51 = MEMORY[0x277D82BE0](*(v43 + 5));
  v52 = v74 & 1;
  v12 = (block + 32);
  v50 = MEMORY[0x277D82BE0](*(v43 + 4));
  dispatch_async(queue, block);
  MEMORY[0x277D82BD8](queue);
  obj = 0;
  objc_storeStrong(v12, 0);
  objc_storeStrong(v13, obj);
  *MEMORY[0x277D85DE8];
}

uint64_t __64__SUSUISoftwareUpdateManager_unenrollBetaUpdatesWithCompletion___block_invoke_783(uint64_t a1)
{
  v1 = *(a1 + 48);
  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) scanForUpdatesCompletion:0];
}

- (void)scanForBetaPrograms
{
  v38 = "[SUSUISoftwareUpdateManager scanForBetaPrograms]";
  v68 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v65[1] = a2;
  if (_os_feature_enabled_impl())
  {
    if ([(SUSUISoftwareUpdateManager *)selfCopy clientIsBuddy])
    {
      v65[0] = _SUSUILoggingFacility();
      v64 = 0;
      if (os_log_type_enabled(v65[0], OS_LOG_TYPE_DEFAULT))
      {
        log = v65[0];
        *type = v64;
        v35 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
        v36 = MEMORY[0x277D82BE0](v35);
        location = v36;
        state = selfCopy->_state;
        preferredUpdate = selfCopy->_preferredUpdate;
        v61 = 0;
        if (preferredUpdate)
        {
          humanReadableUpdateName = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
          v61 = 1;
          v32 = humanReadableUpdateName;
        }

        else
        {
          v32 = @"N/A";
        }

        v29 = v32;
        v30 = selfCopy->_preferredUpdate;
        preferredUpdateError = selfCopy->_preferredUpdateError;
        alternateUpdate = selfCopy->_alternateUpdate;
        v59 = 0;
        if (alternateUpdate)
        {
          humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
          v59 = 1;
          v28 = humanReadableUpdateName2;
        }

        else
        {
          v28 = @"N/A";
        }

        v24 = v28;
        v25 = selfCopy->_alternateUpdate;
        alternateUpdateError = selfCopy->_alternateUpdateError;
        download = selfCopy->_download;
        v4 = selfCopy->_download;
        v57 = 0;
        v55 = 0;
        v53 = 0;
        if (v4 && (v58 = [(SUDownload *)selfCopy->_download descriptor], v57 = 1, v58))
        {
          descriptor = [(SUDownload *)selfCopy->_download descriptor];
          v22 = 1;
          v55 = 1;
          humanReadableUpdateName3 = [(SUDescriptor *)descriptor humanReadableUpdateName];
          v53 = 1;
          v23 = humanReadableUpdateName3;
        }

        else
        {
          v23 = @"N/A";
        }

        v19 = v23;
        WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
        v21 = objc_loadWeakRetained(&selfCopy->_delegate);
        v51 = 0;
        v49 = 0;
        if (v21)
        {
          v52 = objc_loadWeakRetained(&selfCopy->_delegate);
          v17 = 1;
          v51 = 1;
          v5 = objc_opt_class();
          v50 = NSStringFromClass(v5);
          v49 = 1;
          v18 = v50;
        }

        else
        {
          v18 = @"N/A";
        }

        v14 = v18;
        v15 = objc_loadWeakRetained(&selfCopy->_hostController);
        v16 = objc_loadWeakRetained(&selfCopy->_hostController);
        v47 = 0;
        v45 = 0;
        if (v16)
        {
          v48 = objc_loadWeakRetained(&selfCopy->_hostController);
          v12 = 1;
          v47 = 1;
          v6 = objc_opt_class();
          v46 = NSStringFromClass(v6);
          v45 = 1;
          v13 = v46;
        }

        else
        {
          v13 = @"N/A";
        }

        v10 = v7;
        buf = v67;
        __os_log_helper_16_2_15_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66(v67, v38, v36, state, v29, v30, preferredUpdateError, v24, v25, alternateUpdateError, download, v19, WeakRetained, v14, v15, v13);
        _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nNot scanning for beta programs because this is buddy.", buf, 0x94u);
        if (v45)
        {
          MEMORY[0x277D82BD8](v46);
        }

        if (v47)
        {
          MEMORY[0x277D82BD8](v48);
        }

        MEMORY[0x277D82BD8](v16);
        MEMORY[0x277D82BD8](v15);
        if (v49)
        {
          MEMORY[0x277D82BD8](v50);
        }

        if (v51)
        {
          MEMORY[0x277D82BD8](v52);
        }

        MEMORY[0x277D82BD8](v21);
        MEMORY[0x277D82BD8](WeakRetained);
        if (v53)
        {
          MEMORY[0x277D82BD8](humanReadableUpdateName3);
        }

        if (v55)
        {
          MEMORY[0x277D82BD8](descriptor);
        }

        if (v57)
        {
          MEMORY[0x277D82BD8](v58);
        }

        if (v59)
        {
          MEMORY[0x277D82BD8](humanReadableUpdateName2);
        }

        if (v61)
        {
          MEMORY[0x277D82BD8](humanReadableUpdateName);
        }

        MEMORY[0x277D82BD8](v35);
        objc_storeStrong(&location, 0);
      }

      objc_storeStrong(v65, 0);
    }

    else if (selfCopy->_currentSeedingDevice)
    {
      [(SUSUISoftwareUpdateManager *)selfCopy _scanForBetaProgramsWithSeedingDevice:selfCopy->_currentSeedingDevice];
    }

    else
    {
      v8 = MEMORY[0x277D4D320];
      v7[9] = &v39;
      v39 = MEMORY[0x277D85DD0];
      v40 = -1073741824;
      v41 = 0;
      v42 = __49__SUSUISoftwareUpdateManager_scanForBetaPrograms__block_invoke;
      v43 = &unk_279CBEB10;
      v9 = &v44;
      v44 = MEMORY[0x277D82BE0](selfCopy);
      [v8 getCurrentDevice:&v39];
      objc_storeStrong(&v44, 0);
    }
  }

  *MEMORY[0x277D85DE8];
}

void __49__SUSUISoftwareUpdateManager_scanForBetaPrograms__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(a1[4] + 31, location[0]);
  [a1[4] _scanForBetaProgramsWithSeedingDevice:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_scanForBetaProgramsWithSeedingDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  if (location[0])
  {
    mEMORY[0x277D4D310] = [MEMORY[0x277D4D310] sharedManager];
    v4 = mEMORY[0x277D4D310];
    platform = [location[0] platform];
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __68__SUSUISoftwareUpdateManager__scanForBetaProgramsWithSeedingDevice___block_invoke;
    v11 = &unk_279CBEB88;
    v12 = MEMORY[0x277D82BE0](selfCopy);
    v13 = MEMORY[0x277D82BE0](mEMORY[0x277D4D310]);
    v14 = MEMORY[0x277D82BE0](location[0]);
    [v4 queryProgramsForSystemAccountsWithPlatforms:platform completion:&v7];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&mEMORY[0x277D4D310], 0);
    v16 = 0;
  }

  else
  {
    v19 = _SUSUILoggingFacility();
    v18 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      type = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_error_impl(&dword_26AC94000, log, type, "Tried to scan for beta programs without a seeding device.", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    v16 = 1;
  }

  objc_storeStrong(location, 0);
}

void __68__SUSUISoftwareUpdateManager__scanForBetaProgramsWithSeedingDevice___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = a3;
  v16[2] = a1;
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __68__SUSUISoftwareUpdateManager__scanForBetaProgramsWithSeedingDevice___block_invoke_2;
  v12 = &unk_279CBEB60;
  v13 = MEMORY[0x277D82BE0](a1[4]);
  v16[1] = v17;
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](a1[5]);
  v16[0] = MEMORY[0x277D82BE0](a1[6]);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __68__SUSUISoftwareUpdateManager__scanForBetaProgramsWithSeedingDevice___block_invoke_2(void *a1)
{
  v55 = a1;
  v56 = "[SUSUISoftwareUpdateManager _scanForBetaProgramsWithSeedingDevice:]_block_invoke_2";
  v92 = *MEMORY[0x277D85DE8];
  v88[2] = a1;
  v88[1] = a1;
  v88[0] = _SUSUILoggingFacility();
  v87 = 0;
  if (os_log_type_enabled(v88[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v88[0];
    *type = v87;
    v52 = SUSUISoftwareUpdateStateToString(*(*(v55 + 4) + 88));
    v53 = MEMORY[0x277D82BE0](v52);
    location = v53;
    v54 = *(*(v55 + 4) + 88);
    v1 = *(*(v55 + 4) + 120);
    v84 = 0;
    if (v1)
    {
      v85 = [*(*(v55 + 4) + 120) humanReadableUpdateName];
      v84 = 1;
      v49 = v85;
    }

    else
    {
      v49 = @"N/A";
    }

    v46 = v49;
    v47 = *(*(v55 + 4) + 120);
    v48 = *(*(v55 + 4) + 160);
    v2 = *(*(v55 + 4) + 128);
    v82 = 0;
    if (v2)
    {
      v83 = [*(*(v55 + 4) + 128) humanReadableUpdateName];
      v82 = 1;
      v45 = v83;
    }

    else
    {
      v45 = @"N/A";
    }

    v41 = v45;
    v42 = *(*(v55 + 4) + 128);
    v43 = *(*(v55 + 4) + 168);
    v44 = *(*(v55 + 4) + 8);
    v3 = *(*(v55 + 4) + 8);
    v80 = 0;
    v78 = 0;
    v76 = 0;
    if (v3 && (v81 = [*(*(v55 + 4) + 8) descriptor], v80 = 1, v81))
    {
      v79 = [*(*(v55 + 4) + 8) descriptor];
      v39 = 1;
      v78 = 1;
      v77 = [v79 humanReadableUpdateName];
      v76 = 1;
      v40 = v77;
    }

    else
    {
      v40 = @"N/A";
    }

    v36 = v40;
    WeakRetained = objc_loadWeakRetained((*(v55 + 4) + 104));
    v38 = objc_loadWeakRetained((*(v55 + 4) + 104));
    v74 = 0;
    v72 = 0;
    if (v38)
    {
      v75 = objc_loadWeakRetained((*(v55 + 4) + 104));
      v34 = 1;
      v74 = 1;
      v4 = objc_opt_class();
      v73 = NSStringFromClass(v4);
      v72 = 1;
      v35 = v73;
    }

    else
    {
      v35 = @"N/A";
    }

    v31 = v35;
    v32 = objc_loadWeakRetained((*(v55 + 4) + 112));
    v33 = objc_loadWeakRetained((*(v55 + 4) + 112));
    v70 = 0;
    v68 = 0;
    if (v33)
    {
      v71 = objc_loadWeakRetained((*(v55 + 4) + 112));
      v29 = 1;
      v70 = 1;
      v5 = objc_opt_class();
      v69 = NSStringFromClass(v5);
      v68 = 1;
      v30 = v69;
    }

    else
    {
      v30 = @"N/A";
    }

    v27 = &v9;
    buf = v91;
    __os_log_helper_16_2_15_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66(v91, v56, v53, v54, v46, v47, v48, v41, v42, v43, v44, v36, WeakRetained, v31, v32, v30);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nCompleted beta program scan.", buf, 0x94u);
    if (v68)
    {
      MEMORY[0x277D82BD8](v69);
    }

    if (v70)
    {
      MEMORY[0x277D82BD8](v71);
    }

    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v32);
    if (v72)
    {
      MEMORY[0x277D82BD8](v73);
    }

    if (v74)
    {
      MEMORY[0x277D82BD8](v75);
    }

    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v76)
    {
      MEMORY[0x277D82BD8](v77);
    }

    if (v78)
    {
      MEMORY[0x277D82BD8](v79);
    }

    if (v80)
    {
      MEMORY[0x277D82BD8](v81);
    }

    if (v82)
    {
      MEMORY[0x277D82BD8](v83);
    }

    if (v84)
    {
      MEMORY[0x277D82BD8](v85);
    }

    MEMORY[0x277D82BD8](v52);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v88, 0);
  if (*(v55 + 8))
  {
    objc_storeStrong((*(v55 + 4) + 256), MEMORY[0x277CBEBF8]);
    v6 = v55;
    *(*(v55 + 4) + 85) = 1;
    v25 = [v6[4] delegate];
    v26 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v25);
    if (v26)
    {
      v24 = [*(v55 + 4) delegate];
      [v24 manager:*(v55 + 4) didReceiveBetaPrograms:*(*(v55 + 4) + 256)];
      MEMORY[0x277D82BD8](v24);
    }

    oslog = _SUSUILoggingFacility();
    v66 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v21 = oslog;
      *v22 = v66;
      v7 = *(v55 + 8);
      v23 = v90;
      __os_log_helper_16_0_1_8_0(v90, v7);
      _os_log_error_impl(&dword_26AC94000, v21, v22[0], "error fetching new beta programs: %ld", v23, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    objc_storeStrong((*(v55 + 4) + 256), *(v55 + 5));
    v65 = _SUSUILoggingFacility();
    v64 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v65;
      *v17 = v64;
      v19 = [*(*(v55 + 4) + 256) valueForKey:@"programID"];
      v8 = MEMORY[0x277D82BE0](v19);
      v20 = &v63;
      v63 = v8;
      v18 = v89;
      __os_log_helper_16_2_1_8_64(v89, v8);
      _os_log_impl(&dword_26AC94000, v16, v17[0], "got new beta programs: %@", v18, 0xCu);
      MEMORY[0x277D82BD8](v19);
      objc_storeStrong(v20, 0);
    }

    obj = 0;
    objc_storeStrong(&v65, 0);
    v12 = *(v55 + 6);
    v10 = *(v55 + 7);
    v11 = &v57;
    v57 = MEMORY[0x277D85DD0];
    v58 = -1073741824;
    v59 = 0;
    v60 = __68__SUSUISoftwareUpdateManager__scanForBetaProgramsWithSeedingDevice___block_invoke_792;
    v61 = &unk_279CBEB38;
    v14 = v62;
    v62[0] = MEMORY[0x277D82BE0](*(v55 + 4));
    v13 = (v11 + 5);
    v62[1] = MEMORY[0x277D82BE0](*(v55 + 5));
    [v12 enrolledBetaProgramForDevice:v10 completion:v11];
    objc_storeStrong(v13, obj);
    objc_storeStrong(v14, obj);
  }

  *MEMORY[0x277D85DE8];
}

void __68__SUSUISoftwareUpdateManager__scanForBetaProgramsWithSeedingDevice___block_invoke_792(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13[1] = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __68__SUSUISoftwareUpdateManager__scanForBetaProgramsWithSeedingDevice___block_invoke_2_793;
  v10 = &unk_279CB94B0;
  v11 = MEMORY[0x277D82BE0](a1[4]);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13[0] = MEMORY[0x277D82BE0](a1[5]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __68__SUSUISoftwareUpdateManager__scanForBetaProgramsWithSeedingDevice___block_invoke_2_793(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  objc_storeStrong((*(a1 + 32) + 264), *(a1 + 40));
  *(*(a1 + 32) + 85) = 1;
  location[0] = _SUSUILoggingFacility();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v7, *(a1 + 40));
    _os_log_impl(&dword_26AC94000, location[0], OS_LOG_TYPE_DEFAULT, "refreshed current beta program: %@", v7, 0xCu);
  }

  objc_storeStrong(location, 0);
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](v3);
  result = v4;
  if (v4)
  {
    v2 = [*(a1 + 32) delegate];
    [v2 manager:*(a1 + 32) didReceiveBetaPrograms:*(a1 + 48)];
    result = MEMORY[0x277D82BD8](v2);
  }

  *MEMORY[0x277D85DE8];
  return result;
}

- (id)betaUpdatesAppleID
{
  mEMORY[0x277D4D310] = [MEMORY[0x277D4D310] sharedManager];
  seedingAppleIDUsernameForCurrentDevice = [mEMORY[0x277D4D310] seedingAppleIDUsernameForCurrentDevice];
  MEMORY[0x277D82BD8](mEMORY[0x277D4D310]);

  return seedingAppleIDUsernameForCurrentDevice;
}

- (void)manager:(id)manager scanRequestDidStartForOptions:(id)options
{
  v47 = &v67;
  obj = options;
  v45 = "[SUSUISoftwareUpdateManager manager:scanRequestDidStartForOptions:]";
  v74 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v71 = 0;
  objc_storeStrong(&v71, obj);
  identifier = [v71 identifier];
  v49 = [identifier isEqualToString:@"com.apple.Preferences.software_update"];
  MEMORY[0x277D82BD8](identifier);
  if (v49)
  {
    v4 = _SUSUILoggingFacility();
    v5 = v47;
    *(v47 + 3) = v4;
    v69 = 0;
    if (os_log_type_enabled(v5[3], OS_LOG_TYPE_DEFAULT))
    {
      log = *(v47 + 3);
      *type = v69;
      v42 = SUSUISoftwareUpdateStateToString(*(*(v47 + 7) + 88));
      v6 = MEMORY[0x277D82BE0](v42);
      v7 = v47;
      v43 = v6;
      *(v47 + 1) = v6;
      v44 = *(*(v7 + 7) + 88);
      v8 = *(*(v7 + 7) + 120);
      v66 = 0;
      if (v8)
      {
        humanReadableUpdateName = [*(*(v47 + 7) + 120) humanReadableUpdateName];
        *v47 = humanReadableUpdateName;
        v66 = 1;
        v39 = humanReadableUpdateName;
      }

      else
      {
        v39 = @"N/A";
      }

      v36 = v39;
      v37 = *(*(v47 + 7) + 120);
      v38 = *(*(v47 + 7) + 160);
      v10 = *(*(v47 + 7) + 128);
      v64 = 0;
      if (v10)
      {
        humanReadableUpdateName2 = [*(*(v47 + 7) + 128) humanReadableUpdateName];
        v64 = 1;
        v35 = humanReadableUpdateName2;
      }

      else
      {
        v35 = @"N/A";
      }

      v31 = v35;
      v32 = *(*(v47 + 7) + 128);
      v33 = *(*(v47 + 7) + 168);
      v34 = *(*(v47 + 7) + 8);
      v11 = *(*(v47 + 7) + 8);
      v62 = 0;
      v60 = 0;
      v58 = 0;
      if (v11 && (v63 = [*(*(v47 + 7) + 8) descriptor], v62 = 1, v63))
      {
        descriptor = [*(*(v47 + 7) + 8) descriptor];
        v29 = 1;
        v60 = 1;
        humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
        v58 = 1;
        v30 = humanReadableUpdateName3;
      }

      else
      {
        v30 = @"N/A";
      }

      v26 = v30;
      WeakRetained = objc_loadWeakRetained((*(v47 + 7) + 104));
      v28 = objc_loadWeakRetained((*(v47 + 7) + 104));
      v56 = 0;
      v54 = 0;
      if (v28)
      {
        v57 = objc_loadWeakRetained((*(v47 + 7) + 104));
        v24 = 1;
        v56 = 1;
        v12 = objc_opt_class();
        v55 = NSStringFromClass(v12);
        v54 = 1;
        v25 = v55;
      }

      else
      {
        v25 = @"N/A";
      }

      v21 = v25;
      v22 = objc_loadWeakRetained((*(v47 + 7) + 112));
      v23 = objc_loadWeakRetained((*(v47 + 7) + 112));
      v52 = 0;
      v50 = 0;
      if (v23)
      {
        v53 = objc_loadWeakRetained((*(v47 + 7) + 112));
        v19 = 1;
        v52 = 1;
        v13 = objc_opt_class();
        v51 = NSStringFromClass(v13);
        v50 = 1;
        v20 = v51;
      }

      else
      {
        v20 = @"N/A";
      }

      v17 = &v15;
      buf = v73;
      __os_log_helper_16_2_15_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66(v73, v45, v43, v44, v36, v37, v38, v31, v32, v33, v34, v26, WeakRetained, v21, v22, v20);
      _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\n", buf, 0x94u);
      if (v50)
      {
        MEMORY[0x277D82BD8](v51);
      }

      if (v52)
      {
        MEMORY[0x277D82BD8](v53);
      }

      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v22);
      if (v54)
      {
        MEMORY[0x277D82BD8](v55);
      }

      if (v56)
      {
        MEMORY[0x277D82BD8](v57);
      }

      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](WeakRetained);
      if (v58)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName3);
      }

      if (v60)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v62)
      {
        MEMORY[0x277D82BD8](v63);
      }

      if (v64)
      {
        MEMORY[0x277D82BD8](humanReadableUpdateName2);
      }

      if (v66)
      {
        MEMORY[0x277D82BD8](*v47);
      }

      MEMORY[0x277D82BD8](v42);
      objc_storeStrong(&v68, 0);
    }

    objc_storeStrong(&v70, 0);
    v14 = v47;
    *(*(v47 + 7) + 17) = 1;
    if (*(*(v14 + 7) + 88) != 1 && (*(*(v47 + 7) + 18) & 1) == 0)
    {
      [*(v47 + 7) setState:1];
    }
  }

  v16 = 0;
  objc_storeStrong(&v71, 0);
  objc_storeStrong(location, v16);
  *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error
{
  v56 = &v74;
  obj = options;
  resultsCopy = results;
  errorCopy = error;
  v52 = "[SUSUISoftwareUpdateManager manager:scanRequestDidFinishForOptions:results:error:]";
  v84 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v81 = 0;
  objc_storeStrong(&v81, obj);
  v80 = 0;
  objc_storeStrong(&v80, resultsCopy);
  v79 = 0;
  objc_storeStrong(&v79, errorCopy);
  v78 = _SUSUILoggingFacility();
  v77 = 0;
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v56 + 5);
    *type = v77;
    v49 = SUSUISoftwareUpdateStateToString(*(*(v56 + 11) + 88));
    v6 = MEMORY[0x277D82BE0](v49);
    v7 = v56;
    v50 = v6;
    *(v56 + 3) = v6;
    v51 = *(*(v7 + 11) + 88);
    v8 = *(*(v7 + 11) + 120);
    v75 = 0;
    if (v8)
    {
      humanReadableUpdateName = [*(*(v56 + 11) + 120) humanReadableUpdateName];
      *(v56 + 2) = humanReadableUpdateName;
      v75 = 1;
      v46 = humanReadableUpdateName;
    }

    else
    {
      v46 = @"N/A";
    }

    v43 = v46;
    v44 = *(*(v56 + 11) + 120);
    v45 = *(*(v56 + 11) + 160);
    v10 = *(*(v56 + 11) + 128);
    v73 = 0;
    if (v10)
    {
      humanReadableUpdateName2 = [*(*(v56 + 11) + 128) humanReadableUpdateName];
      *v56 = humanReadableUpdateName2;
      v73 = 1;
      v42 = humanReadableUpdateName2;
    }

    else
    {
      v42 = @"N/A";
    }

    v38 = v42;
    v39 = *(*(v56 + 11) + 128);
    v40 = *(*(v56 + 11) + 168);
    v41 = *(*(v56 + 11) + 8);
    v12 = *(*(v56 + 11) + 8);
    v71 = 0;
    v69 = 0;
    v67 = 0;
    if (v12 && (v72 = [*(*(v56 + 11) + 8) descriptor], v71 = 1, v72))
    {
      descriptor = [*(*(v56 + 11) + 8) descriptor];
      v36 = 1;
      v69 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      v67 = 1;
      v37 = humanReadableUpdateName3;
    }

    else
    {
      v37 = @"N/A";
    }

    v33 = v37;
    WeakRetained = objc_loadWeakRetained((*(v56 + 11) + 104));
    v35 = objc_loadWeakRetained((*(v56 + 11) + 104));
    v65 = 0;
    v63 = 0;
    if (v35)
    {
      v66 = objc_loadWeakRetained((*(v56 + 11) + 104));
      v31 = 1;
      v65 = 1;
      v13 = objc_opt_class();
      v64 = NSStringFromClass(v13);
      v63 = 1;
      v32 = v64;
    }

    else
    {
      v32 = @"N/A";
    }

    v28 = v32;
    v29 = objc_loadWeakRetained((*(v56 + 11) + 112));
    v30 = objc_loadWeakRetained((*(v56 + 11) + 112));
    v61 = 0;
    v59 = 0;
    if (v30)
    {
      v62 = objc_loadWeakRetained((*(v56 + 11) + 112));
      v26 = 1;
      v61 = 1;
      v14 = objc_opt_class();
      v60 = NSStringFromClass(v14);
      v59 = 1;
      v27 = v60;
    }

    else
    {
      v27 = @"N/A";
    }

    v15 = *(v56 + 8);
    v24 = &v19;
    buf = v83;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_66(v83, v52, v50, v51, v43, v44, v45, v38, v39, v40, v41, v33, WeakRetained, v28, v29, v27, v15);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\noptions: %{public}@", buf, 0x9Eu);
    if (v59)
    {
      MEMORY[0x277D82BD8](v60);
    }

    if (v61)
    {
      MEMORY[0x277D82BD8](v62);
    }

    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v29);
    if (v63)
    {
      MEMORY[0x277D82BD8](v64);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](v66);
    }

    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v67)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v69)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v71)
    {
      MEMORY[0x277D82BD8](v72);
    }

    if (v73)
    {
      MEMORY[0x277D82BD8](*v56);
    }

    if (v75)
    {
      MEMORY[0x277D82BD8](*(v56 + 2));
    }

    MEMORY[0x277D82BD8](v49);
    objc_storeStrong(&v76, 0);
  }

  objc_storeStrong(&v78, 0);
  isForced = [*(v56 + 8) isForced];
  v57 = 0;
  v23 = 0;
  if (!isForced)
  {
    types = [*(v56 + 8) types];
    v57 = 1;
    v17 = [types count];
    v22 = 0;
    if (v17 == 1)
    {
      v22 = [*(v56 + 8) containsType:3];
    }

    v23 = v22 ^ 1;
  }

  v21 = v23;
  if (v57)
  {
    MEMORY[0x277D82BD8](types);
  }

  if (v21)
  {
    v18 = v56;
    *(*(v56 + 11) + 17) = 1;
    [v18[11] scanFinishedWithUpdates:v18[7] options:v18[8] andError:v18[6]];
  }

  v20 = 0;
  objc_storeStrong(&v79, 0);
  objc_storeStrong(&v80, v20);
  objc_storeStrong(&v81, v20);
  objc_storeStrong(location, v20);
  *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager downloadDidStart:(id)start
{
  v50 = &v68;
  obj = start;
  v48 = "[SUSUISoftwareUpdateManager manager:downloadDidStart:]";
  v76 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v73 = 0;
  objc_storeStrong(&v73, obj);
  v72 = _SUSUILoggingFacility();
  v71 = 0;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v50 + 5);
    *type = v71;
    v45 = SUSUISoftwareUpdateStateToString(*(*(v50 + 9) + 88));
    v4 = MEMORY[0x277D82BE0](v45);
    v5 = v50;
    v46 = v4;
    *(v50 + 3) = v4;
    v47 = *(*(v5 + 9) + 88);
    v6 = *(*(v5 + 9) + 120);
    v69 = 0;
    if (v6)
    {
      humanReadableUpdateName = [*(*(v50 + 9) + 120) humanReadableUpdateName];
      *(v50 + 2) = humanReadableUpdateName;
      v69 = 1;
      v42 = humanReadableUpdateName;
    }

    else
    {
      v42 = @"N/A";
    }

    v39 = v42;
    v40 = *(*(v50 + 9) + 120);
    v41 = *(*(v50 + 9) + 160);
    v8 = *(*(v50 + 9) + 128);
    v67 = 0;
    if (v8)
    {
      humanReadableUpdateName2 = [*(*(v50 + 9) + 128) humanReadableUpdateName];
      *v50 = humanReadableUpdateName2;
      v67 = 1;
      v38 = humanReadableUpdateName2;
    }

    else
    {
      v38 = @"N/A";
    }

    v34 = v38;
    v35 = *(*(v50 + 9) + 128);
    v36 = *(*(v50 + 9) + 168);
    v37 = *(*(v50 + 9) + 8);
    v10 = *(*(v50 + 9) + 8);
    v65 = 0;
    v63 = 0;
    v61 = 0;
    if (v10 && (v66 = [*(*(v50 + 9) + 8) descriptor], v65 = 1, v66))
    {
      descriptor = [*(*(v50 + 9) + 8) descriptor];
      v32 = 1;
      v63 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      v61 = 1;
      v33 = humanReadableUpdateName3;
    }

    else
    {
      v33 = @"N/A";
    }

    v29 = v33;
    WeakRetained = objc_loadWeakRetained((*(v50 + 9) + 104));
    v31 = objc_loadWeakRetained((*(v50 + 9) + 104));
    v59 = 0;
    v57 = 0;
    if (v31)
    {
      v60 = objc_loadWeakRetained((*(v50 + 9) + 104));
      v27 = 1;
      v59 = 1;
      v11 = objc_opt_class();
      v58 = NSStringFromClass(v11);
      v57 = 1;
      v28 = v58;
    }

    else
    {
      v28 = @"N/A";
    }

    v24 = v28;
    v25 = objc_loadWeakRetained((*(v50 + 9) + 112));
    v26 = objc_loadWeakRetained((*(v50 + 9) + 112));
    v55 = 0;
    v53 = 0;
    if (v26)
    {
      v56 = objc_loadWeakRetained((*(v50 + 9) + 112));
      v22 = 1;
      v55 = 1;
      v12 = objc_opt_class();
      v54 = NSStringFromClass(v12);
      v53 = 1;
      v23 = v54;
    }

    else
    {
      v23 = @"N/A";
    }

    v13 = *(v50 + 6);
    v20 = &v14;
    buf = v75;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64(v75, v48, v46, v47, v39, v40, v41, v34, v35, v36, v37, v29, WeakRetained, v24, v25, v23, v13);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nStarting to download: %@", buf, 0x9Eu);
    if (v53)
    {
      MEMORY[0x277D82BD8](v54);
    }

    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v25);
    if (v57)
    {
      MEMORY[0x277D82BD8](v58);
    }

    if (v59)
    {
      MEMORY[0x277D82BD8](v60);
    }

    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v61)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v63)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](v66);
    }

    if (v67)
    {
      MEMORY[0x277D82BD8](*v50);
    }

    if (v69)
    {
      MEMORY[0x277D82BD8](*(v50 + 2));
    }

    MEMORY[0x277D82BD8](v45);
    objc_storeStrong(&v70, 0);
  }

  objc_storeStrong(&v72, 0);
  [*(v50 + 9) setDownload:*(v50 + 6)];
  [*(v50 + 9) updateStateFromDownload:*(v50 + 6)];
  delegate = [*(v50 + 9) delegate];
  v51 = 0;
  v19 = 0;
  if (delegate)
  {
    delegate2 = [*(v50 + 9) delegate];
    v51 = 1;
    v19 = objc_opt_respondsToSelector();
  }

  v17 = v19;
  if (v51)
  {
    MEMORY[0x277D82BD8](delegate2);
  }

  MEMORY[0x277D82BD8](delegate);
  if (v17)
  {
    delegate3 = [*(v50 + 9) delegate];
    [delegate3 manager:*(v50 + 9) downloadDidStart:*(v50 + 6)];
    MEMORY[0x277D82BD8](delegate3);
  }

  v15 = 0;
  objc_storeStrong(&v73, 0);
  objc_storeStrong(location, v15);
  *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager downloadProgressDidChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v23 = 0;
  objc_storeStrong(&v23, change);
  [(SUSUISoftwareUpdateManager *)selfCopy setDownload:v23];
  progress = [v23 progress];
  [progress normalizedPercentComplete];
  v21 = v4;
  phase = [progress phase];
  oslog = _SUSUILoggingFacility();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v13 = type;
    *&v8 = v21;
    v9 = phase;
    v14 = SUSUISoftwareUpdateStateToString([(SUSUISoftwareUpdateManager *)selfCopy state]);
    v10 = MEMORY[0x277D82BE0](v14);
    v17 = v10;
    state = [(SUSUISoftwareUpdateManager *)selfCopy state];
    [progress timeRemaining];
    __os_log_helper_16_2_7_8_32_8_0_8_64_8_64_4_0_8_0_8_0(v26, "[SUSUISoftwareUpdateManager manager:downloadProgressDidChange:]", v8, v9, v10, state, v5, v23);
    _os_log_impl(&dword_26AC94000, log, v13, "%s - progress: %.02f; phase: %@; state: %@ (%d); time remaining: %f, download: %p", v26, 0x44u);
    MEMORY[0x277D82BD8](v14);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&oslog, 0);
  state = selfCopy->_state;
  [(SUSUISoftwareUpdateManager *)selfCopy _updateDownloadProgressWithDownload:v23 stateFromDownload:&state];
  progress2 = [v23 progress];
  v7 = 0;
  if ([progress2 isDone])
  {
    v7 = 0;
    if (selfCopy->_state == state)
    {
      v7 = state == 10;
    }
  }

  MEMORY[0x277D82BD8](progress2);
  if (v7)
  {
    [(SUSUISoftwareUpdateManager *)selfCopy checkAndSetReadyToInstall];
  }

  else
  {
    [(SUSUISoftwareUpdateManager *)selfCopy setState:state];
  }

  objc_storeStrong(&phase, 0);
  objc_storeStrong(&progress, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager downloadDidFinish:(id)finish withInstallPolicy:(id)policy
{
  v50 = &v68;
  obj = finish;
  policyCopy = policy;
  v47 = "[SUSUISoftwareUpdateManager manager:downloadDidFinish:withInstallPolicy:]";
  v76 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v73 = 0;
  objc_storeStrong(&v73, obj);
  v72 = 0;
  objc_storeStrong(&v72, policyCopy);
  v71 = _SUSUILoggingFacility();
  v70 = 0;
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v50 + 3);
    *type = v70;
    v44 = SUSUISoftwareUpdateStateToString(*(*(v50 + 8) + 88));
    v5 = MEMORY[0x277D82BE0](v44);
    v6 = v50;
    v45 = v5;
    *(v50 + 1) = v5;
    v46 = *(*(v6 + 8) + 88);
    v7 = *(*(v6 + 8) + 120);
    v67 = 0;
    if (v7)
    {
      humanReadableUpdateName = [*(*(v50 + 8) + 120) humanReadableUpdateName];
      *v50 = humanReadableUpdateName;
      v67 = 1;
      v41 = humanReadableUpdateName;
    }

    else
    {
      v41 = @"N/A";
    }

    v38 = v41;
    v39 = *(*(v50 + 8) + 120);
    v40 = *(*(v50 + 8) + 160);
    v9 = *(*(v50 + 8) + 128);
    v65 = 0;
    if (v9)
    {
      humanReadableUpdateName2 = [*(*(v50 + 8) + 128) humanReadableUpdateName];
      v65 = 1;
      v37 = humanReadableUpdateName2;
    }

    else
    {
      v37 = @"N/A";
    }

    v33 = v37;
    v34 = *(*(v50 + 8) + 128);
    v35 = *(*(v50 + 8) + 168);
    v36 = *(*(v50 + 8) + 8);
    v10 = *(*(v50 + 8) + 8);
    v63 = 0;
    v61 = 0;
    v59 = 0;
    if (v10 && (v64 = [*(*(v50 + 8) + 8) descriptor], v63 = 1, v64))
    {
      descriptor = [*(*(v50 + 8) + 8) descriptor];
      v31 = 1;
      v61 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      v59 = 1;
      v32 = humanReadableUpdateName3;
    }

    else
    {
      v32 = @"N/A";
    }

    v28 = v32;
    WeakRetained = objc_loadWeakRetained((*(v50 + 8) + 104));
    v30 = objc_loadWeakRetained((*(v50 + 8) + 104));
    v57 = 0;
    v55 = 0;
    if (v30)
    {
      v58 = objc_loadWeakRetained((*(v50 + 8) + 104));
      v26 = 1;
      v57 = 1;
      v11 = objc_opt_class();
      v56 = NSStringFromClass(v11);
      v55 = 1;
      v27 = v56;
    }

    else
    {
      v27 = @"N/A";
    }

    v23 = v27;
    v24 = objc_loadWeakRetained((*(v50 + 8) + 112));
    v25 = objc_loadWeakRetained((*(v50 + 8) + 112));
    v53 = 0;
    v51 = 0;
    if (v25)
    {
      v54 = objc_loadWeakRetained((*(v50 + 8) + 112));
      v21 = 1;
      v53 = 1;
      v12 = objc_opt_class();
      v52 = NSStringFromClass(v12);
      v51 = 1;
      v22 = v52;
    }

    else
    {
      v22 = @"N/A";
    }

    v13 = *(v50 + 5);
    v19 = &v14;
    buf = v75;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64(v75, v47, v45, v46, v38, v39, v40, v33, v34, v35, v36, v28, WeakRetained, v23, v24, v22, v13);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nFinished to download: %@", buf, 0x9Eu);
    if (v51)
    {
      MEMORY[0x277D82BD8](v52);
    }

    if (v53)
    {
      MEMORY[0x277D82BD8](v54);
    }

    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v24);
    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    if (v57)
    {
      MEMORY[0x277D82BD8](v58);
    }

    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v59)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v61)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v63)
    {
      MEMORY[0x277D82BD8](v64);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v67)
    {
      MEMORY[0x277D82BD8](*v50);
    }

    MEMORY[0x277D82BD8](v44);
    objc_storeStrong(&v69, 0);
  }

  objc_storeStrong(&v71, 0);
  [*(v50 + 8) setDownload:*(v50 + 5)];
  [*(v50 + 8) setInstallPolicy:*(v50 + 4)];
  [*(v50 + 8) checkAndSetReadyToInstall];
  delegate = [*(v50 + 8) delegate];
  v18 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](delegate);
  if (v18)
  {
    delegate2 = [*(v50 + 8) delegate];
    [delegate2 manager:*(v50 + 8) downloadFinished:*(v50 + 5)];
    MEMORY[0x277D82BD8](delegate2);
  }

  v15 = 0;
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, v15);
  objc_storeStrong(location, v15);
  *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager downloadWasInvalidatedForNewUpdatesAvailable:(id)available
{
  obj = available;
  v40 = "[SUSUISoftwareUpdateManager manager:downloadWasInvalidatedForNewUpdatesAvailable:]";
  v68 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v64 = 0;
  objc_storeStrong(&v64, obj);
  v63 = _SUSUILoggingFacility();
  v62 = 0;
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    log = v63;
    *type = v62;
    v37 = SUSUISoftwareUpdateStateToString(selfCopy->_state);
    v38 = MEMORY[0x277D82BE0](v37);
    v61 = v38;
    state = selfCopy->_state;
    preferredUpdate = selfCopy->_preferredUpdate;
    v59 = 0;
    if (preferredUpdate)
    {
      humanReadableUpdateName = [(SUDescriptor *)selfCopy->_preferredUpdate humanReadableUpdateName];
      v59 = 1;
      v34 = humanReadableUpdateName;
    }

    else
    {
      v34 = @"N/A";
    }

    v31 = v34;
    v32 = selfCopy->_preferredUpdate;
    preferredUpdateError = selfCopy->_preferredUpdateError;
    alternateUpdate = selfCopy->_alternateUpdate;
    v57 = 0;
    if (alternateUpdate)
    {
      humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_alternateUpdate humanReadableUpdateName];
      v57 = 1;
      v30 = humanReadableUpdateName2;
    }

    else
    {
      v30 = @"N/A";
    }

    v26 = v30;
    v27 = selfCopy->_alternateUpdate;
    alternateUpdateError = selfCopy->_alternateUpdateError;
    download = selfCopy->_download;
    v6 = selfCopy->_download;
    v55 = 0;
    v53 = 0;
    v51 = 0;
    if (v6 && (v56 = [(SUDownload *)selfCopy->_download descriptor], v55 = 1, v56))
    {
      descriptor = [(SUDownload *)selfCopy->_download descriptor];
      v24 = 1;
      v53 = 1;
      humanReadableUpdateName3 = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v51 = 1;
      v25 = humanReadableUpdateName3;
    }

    else
    {
      v25 = @"N/A";
    }

    v21 = v25;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v23 = objc_loadWeakRetained(&selfCopy->_delegate);
    v49 = 0;
    v47 = 0;
    if (v23)
    {
      v50 = objc_loadWeakRetained(&selfCopy->_delegate);
      v19 = 1;
      v49 = 1;
      v7 = objc_opt_class();
      v48 = NSStringFromClass(v7);
      v47 = 1;
      v20 = v48;
    }

    else
    {
      v20 = @"N/A";
    }

    v16 = v20;
    v17 = objc_loadWeakRetained(&selfCopy->_hostController);
    v18 = objc_loadWeakRetained(&selfCopy->_hostController);
    v45 = 0;
    v43 = 0;
    if (v18)
    {
      v46 = objc_loadWeakRetained(&selfCopy->_hostController);
      v14 = 1;
      v45 = 1;
      v8 = objc_opt_class();
      v44 = NSStringFromClass(v8);
      v43 = 1;
      v15 = v44;
    }

    else
    {
      v15 = @"N/A";
    }

    v12 = &v9;
    buf = v67;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0(v67, v40, v38, state, v31, v32, preferredUpdateError, v26, v27, alternateUpdateError, download, v21, WeakRetained, v16, v17, v15, v64);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nNew scan results: %p", buf, 0x9Eu);
    if (v43)
    {
      MEMORY[0x277D82BD8](v44);
    }

    if (v45)
    {
      MEMORY[0x277D82BD8](v46);
    }

    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v17);
    if (v47)
    {
      MEMORY[0x277D82BD8](v48);
    }

    if (v49)
    {
      MEMORY[0x277D82BD8](v50);
    }

    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v51)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v53)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    if (v57)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v59)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName);
    }

    MEMORY[0x277D82BD8](v37);
    objc_storeStrong(&v61, 0);
  }

  v11 = 0;
  objc_storeStrong(&v63, 0);
  [(SUSUISoftwareUpdateManager *)selfCopy setDownload:v11];
  v42 = 8;
  if (selfCopy->_hidingPreferredUpdate)
  {
    v42 = 9;
    [(SUSUISoftwareUpdateManager *)selfCopy revealHiddenPreferredUpdate];
  }

  if (selfCopy->_hidingAlternateUpdate)
  {
    v42 = 9;
    [(SUSUISoftwareUpdateManager *)selfCopy revealHiddenAlteranteUpdate];
  }

  [(SUSUISoftwareUpdateManager *)selfCopy setState:v42];
  v10 = 0;
  objc_storeStrong(&v64, 0);
  objc_storeStrong(location, v10);
  *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager downloadDidFail:(id)fail withError:(id)error
{
  v66 = &v86;
  obj = fail;
  errorCopy = error;
  v63 = "[SUSUISoftwareUpdateManager manager:downloadDidFail:withError:]";
  v98 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v94 = 0;
  objc_storeStrong(&v94, obj);
  v93 = 0;
  objc_storeStrong(&v93, errorCopy);
  v92 = _SUSUILoggingFacility();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v66 + 9);
    *v59 = type;
    v60 = SUSUISoftwareUpdateStateToString(*(*(v66 + 14) + 88));
    v5 = MEMORY[0x277D82BE0](v60);
    v6 = v66;
    v61 = v5;
    *(v66 + 7) = v5;
    v62 = *(*(v6 + 14) + 88);
    v7 = *(*(v6 + 14) + 120);
    v89 = 0;
    if (v7)
    {
      humanReadableUpdateName = [*(*(v66 + 14) + 120) humanReadableUpdateName];
      *(v66 + 6) = humanReadableUpdateName;
      v89 = 1;
      v57 = humanReadableUpdateName;
    }

    else
    {
      v57 = @"N/A";
    }

    v54 = v57;
    v55 = *(*(v66 + 14) + 120);
    v56 = *(*(v66 + 14) + 160);
    v9 = *(*(v66 + 14) + 128);
    v88 = 0;
    if (v9)
    {
      humanReadableUpdateName2 = [*(*(v66 + 14) + 128) humanReadableUpdateName];
      *(v66 + 4) = humanReadableUpdateName2;
      v88 = 1;
      v53 = humanReadableUpdateName2;
    }

    else
    {
      v53 = @"N/A";
    }

    v49 = v53;
    v50 = *(*(v66 + 14) + 128);
    v51 = *(*(v66 + 14) + 168);
    v52 = *(*(v66 + 14) + 8);
    v11 = *(*(v66 + 14) + 8);
    v87 = 0;
    v85 = 0;
    v83 = 0;
    if (v11 && (v12 = [*(*(v66 + 14) + 8) descriptor], *(v66 + 2) = v12, v87 = 1, v12))
    {
      descriptor = [*(*(v66 + 14) + 8) descriptor];
      *v66 = descriptor;
      v47 = 1;
      v85 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      v83 = 1;
      v48 = humanReadableUpdateName3;
    }

    else
    {
      v48 = @"N/A";
    }

    v44 = v48;
    WeakRetained = objc_loadWeakRetained((*(v66 + 14) + 104));
    v46 = objc_loadWeakRetained((*(v66 + 14) + 104));
    v81 = 0;
    v79 = 0;
    if (v46)
    {
      v82 = objc_loadWeakRetained((*(v66 + 14) + 104));
      v42 = 1;
      v81 = 1;
      v14 = objc_opt_class();
      v80 = NSStringFromClass(v14);
      v79 = 1;
      v43 = v80;
    }

    else
    {
      v43 = @"N/A";
    }

    v39 = v43;
    v40 = objc_loadWeakRetained((*(v66 + 14) + 112));
    v41 = objc_loadWeakRetained((*(v66 + 14) + 112));
    v77 = 0;
    v75 = 0;
    if (v41)
    {
      v78 = objc_loadWeakRetained((*(v66 + 14) + 112));
      v37 = 1;
      v77 = 1;
      v15 = objc_opt_class();
      v76 = NSStringFromClass(v15);
      v75 = 1;
      v38 = v76;
    }

    else
    {
      v38 = @"N/A";
    }

    v16 = *(v66 + 10);
    v35 = &v20;
    buf = v97;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64(v97, v63, v61, v62, v54, v55, v56, v49, v50, v51, v52, v44, WeakRetained, v39, v40, v38, v16);
    _os_log_impl(&dword_26AC94000, log, v59[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nDownload failed with error: %@", buf, 0x9Eu);
    if (v75)
    {
      MEMORY[0x277D82BD8](v76);
    }

    if (v77)
    {
      MEMORY[0x277D82BD8](v78);
    }

    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v40);
    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v83)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v85)
    {
      MEMORY[0x277D82BD8](*v66);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](*(v66 + 2));
    }

    if (v88)
    {
      MEMORY[0x277D82BD8](*(v66 + 4));
    }

    if (v89)
    {
      MEMORY[0x277D82BD8](*(v66 + 6));
    }

    MEMORY[0x277D82BD8](v60);
    objc_storeStrong(&v90, 0);
  }

  v34 = 0;
  objc_storeStrong(&v92, 0);
  v74 = 0;
  [*(v66 + 14) setDownload:v34];
  [*(*(v66 + 14) + 96) destroyInstallationKeybag];
  if (*(*(v66 + 14) + 54))
  {
    v74 = 1;
    [*(v66 + 14) revealHiddenPreferredUpdate];
  }

  if (*(*(v66 + 14) + 55))
  {
    v74 = 1;
    [*(v66 + 14) revealHiddenAlteranteUpdate];
  }

  domain = [*(v66 + 10) domain];
  v32 = getSUErrorDomain_3();
  v17 = [domain isEqualToString:?];
  v72 = 0;
  v70 = 0;
  bOOLValue = 0;
  if (v17)
  {
    code = [*(v66 + 10) code];
    bOOLValue = 0;
    if (code == 16)
    {
      userInfo = [*(v66 + 10) userInfo];
      v30 = 1;
      v72 = 1;
      v71 = [userInfo objectForKey:*MEMORY[0x277D64A90]];
      v70 = v30 & 1;
      bOOLValue = [v71 BOOLValue];
    }
  }

  v29 = bOOLValue;
  if (v70)
  {
    MEMORY[0x277D82BD8](v71);
  }

  if (v72)
  {
    MEMORY[0x277D82BD8](userInfo);
  }

  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](domain);
  if (v29)
  {
    v69 = 0;
    if ([*(v66 + 14) shouldShowPreferredUpdateAsAlternate])
    {
      v69 = 6;
    }

    else
    {
      if (v74)
      {
        v19 = 9;
      }

      else
      {
        v19 = 8;
      }

      v69 = v19;
    }

    [*(v66 + 14) setState:v69];
  }

  else
  {
    oslog = _SUSUILoggingFacility();
    v67 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v26 = oslog;
      *v27 = v67;
      v28 = v96;
      __os_log_helper_16_2_1_8_32(v96, v63);
      _os_log_impl(&dword_26AC94000, v26, v27[0], "%s: Rescanning for update", v28, 0xCu);
    }

    v25 = 0;
    objc_storeStrong(&oslog, 0);
    [*(v66 + 14) scanForUpdatesCompletion:v25];
  }

  delegate = [*(v66 + 14) delegate];
  v24 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](delegate);
  if (v24)
  {
    delegate2 = [*(v66 + 14) delegate];
    [delegate2 manager:*(v66 + 14) download:*(v66 + 11) failedWithError:*(v66 + 10)];
    MEMORY[0x277D82BD8](delegate2);
  }

  v21 = 0;
  objc_storeStrong(&v93, 0);
  objc_storeStrong(&v94, v21);
  objc_storeStrong(location, v21);
  *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager clearingSpaceForDownload:(id)download clearingSpace:(BOOL)space
{
  v51 = &v69;
  obj = download;
  spaceCopy = space;
  v48 = "[SUSUISoftwareUpdateManager manager:clearingSpaceForDownload:clearingSpace:]";
  v77 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v74 = 0;
  objc_storeStrong(&v74, obj);
  v73 = spaceCopy;
  v72 = _SUSUILoggingFacility();
  v71 = 0;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v51 + 3);
    *type = v71;
    v45 = SUSUISoftwareUpdateStateToString(*(*(v51 + 8) + 88));
    v5 = MEMORY[0x277D82BE0](v45);
    v6 = v51;
    v46 = v5;
    *(v51 + 1) = v5;
    v47 = *(*(v6 + 8) + 88);
    v7 = *(*(v6 + 8) + 120);
    v68 = 0;
    if (v7)
    {
      humanReadableUpdateName = [*(*(v51 + 8) + 120) humanReadableUpdateName];
      *v51 = humanReadableUpdateName;
      v68 = 1;
      v42 = humanReadableUpdateName;
    }

    else
    {
      v42 = @"N/A";
    }

    v39 = v42;
    v40 = *(*(v51 + 8) + 120);
    v41 = *(*(v51 + 8) + 160);
    v9 = *(*(v51 + 8) + 128);
    v66 = 0;
    if (v9)
    {
      humanReadableUpdateName2 = [*(*(v51 + 8) + 128) humanReadableUpdateName];
      v66 = 1;
      v38 = humanReadableUpdateName2;
    }

    else
    {
      v38 = @"N/A";
    }

    v34 = v38;
    v35 = *(*(v51 + 8) + 128);
    v36 = *(*(v51 + 8) + 168);
    v37 = *(*(v51 + 8) + 8);
    v10 = *(*(v51 + 8) + 8);
    v64 = 0;
    v62 = 0;
    v60 = 0;
    if (v10 && (v65 = [*(*(v51 + 8) + 8) descriptor], v64 = 1, v65))
    {
      descriptor = [*(*(v51 + 8) + 8) descriptor];
      v32 = 1;
      v62 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      v60 = 1;
      v33 = humanReadableUpdateName3;
    }

    else
    {
      v33 = @"N/A";
    }

    v29 = v33;
    WeakRetained = objc_loadWeakRetained((*(v51 + 8) + 104));
    v31 = objc_loadWeakRetained((*(v51 + 8) + 104));
    v58 = 0;
    v56 = 0;
    if (v31)
    {
      v59 = objc_loadWeakRetained((*(v51 + 8) + 104));
      v27 = 1;
      v58 = 1;
      v11 = objc_opt_class();
      v57 = NSStringFromClass(v11);
      v56 = 1;
      v28 = v57;
    }

    else
    {
      v28 = @"N/A";
    }

    v24 = v28;
    v25 = objc_loadWeakRetained((*(v51 + 8) + 112));
    v26 = objc_loadWeakRetained((*(v51 + 8) + 112));
    v54 = 0;
    v52 = 0;
    if (v26)
    {
      v55 = objc_loadWeakRetained((*(v51 + 8) + 112));
      v22 = 1;
      v54 = 1;
      v12 = objc_opt_class();
      v53 = NSStringFromClass(v12);
      v52 = 1;
      v23 = v53;
    }

    else
    {
      v23 = @"N/A";
    }

    v13 = @"YES";
    if (!v73)
    {
      v13 = @"NO";
    }

    v20 = &v15;
    buf = v76;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64(v76, v48, v46, v47, v39, v40, v41, v34, v35, v36, v37, v29, WeakRetained, v24, v25, v23, v13);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nclearing: %@", buf, 0x9Eu);
    if (v52)
    {
      MEMORY[0x277D82BD8](v53);
    }

    if (v54)
    {
      MEMORY[0x277D82BD8](v55);
    }

    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v25);
    if (v56)
    {
      MEMORY[0x277D82BD8](v57);
    }

    if (v58)
    {
      MEMORY[0x277D82BD8](v59);
    }

    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v60)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v62)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](*v51);
    }

    MEMORY[0x277D82BD8](v45);
    objc_storeStrong(&v70, 0);
  }

  objc_storeStrong(&v72, 0);
  clearingSpaceForDownload = [*(v51 + 8) clearingSpaceForDownload];
  if (clearingSpaceForDownload != v73)
  {
    [*(v51 + 8) setClearingSpaceForDownload:v73];
    delegate = [*(v51 + 8) delegate];
    v19 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](delegate);
    if (v19)
    {
      delegate2 = [*(v51 + 8) delegate];
      [delegate2 manager:*(v51 + 8) clearingSpaceForDownload:v73];
      MEMORY[0x277D82BD8](delegate2);
    }
  }

  v16 = 0;
  objc_storeStrong(&v74, 0);
  objc_storeStrong(location, v16);
  *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager installDidStart:(id)start
{
  v48 = &v66;
  obj = start;
  v46 = "[SUSUISoftwareUpdateManager manager:installDidStart:]";
  v73 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v70 = 0;
  objc_storeStrong(&v70, obj);
  v69 = _SUSUILoggingFacility();
  v68 = 0;
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v48 + 3);
    *type = v68;
    v43 = SUSUISoftwareUpdateStateToString(*(*(v48 + 7) + 88));
    v4 = MEMORY[0x277D82BE0](v43);
    v5 = v48;
    v44 = v4;
    *(v48 + 1) = v4;
    v45 = *(*(v5 + 7) + 88);
    v6 = *(*(v5 + 7) + 120);
    v65 = 0;
    if (v6)
    {
      humanReadableUpdateName = [*(*(v48 + 7) + 120) humanReadableUpdateName];
      *v48 = humanReadableUpdateName;
      v65 = 1;
      v40 = humanReadableUpdateName;
    }

    else
    {
      v40 = @"N/A";
    }

    v37 = v40;
    v38 = *(*(v48 + 7) + 120);
    v39 = *(*(v48 + 7) + 160);
    v8 = *(*(v48 + 7) + 128);
    v63 = 0;
    if (v8)
    {
      humanReadableUpdateName2 = [*(*(v48 + 7) + 128) humanReadableUpdateName];
      v63 = 1;
      v36 = humanReadableUpdateName2;
    }

    else
    {
      v36 = @"N/A";
    }

    v32 = v36;
    v33 = *(*(v48 + 7) + 128);
    v34 = *(*(v48 + 7) + 168);
    v35 = *(*(v48 + 7) + 8);
    v9 = *(*(v48 + 7) + 8);
    v61 = 0;
    v59 = 0;
    v57 = 0;
    if (v9 && (v62 = [*(*(v48 + 7) + 8) descriptor], v61 = 1, v62))
    {
      descriptor = [*(*(v48 + 7) + 8) descriptor];
      v30 = 1;
      v59 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      v57 = 1;
      v31 = humanReadableUpdateName3;
    }

    else
    {
      v31 = @"N/A";
    }

    v27 = v31;
    WeakRetained = objc_loadWeakRetained((*(v48 + 7) + 104));
    v29 = objc_loadWeakRetained((*(v48 + 7) + 104));
    v55 = 0;
    v53 = 0;
    if (v29)
    {
      v56 = objc_loadWeakRetained((*(v48 + 7) + 104));
      v25 = 1;
      v55 = 1;
      v10 = objc_opt_class();
      v54 = NSStringFromClass(v10);
      v53 = 1;
      v26 = v54;
    }

    else
    {
      v26 = @"N/A";
    }

    v22 = v26;
    v23 = objc_loadWeakRetained((*(v48 + 7) + 112));
    v24 = objc_loadWeakRetained((*(v48 + 7) + 112));
    v51 = 0;
    v49 = 0;
    if (v24)
    {
      v52 = objc_loadWeakRetained((*(v48 + 7) + 112));
      v20 = 1;
      v51 = 1;
      v11 = objc_opt_class();
      v50 = NSStringFromClass(v11);
      v49 = 1;
      v21 = v50;
    }

    else
    {
      v21 = @"N/A";
    }

    v12 = *(v48 + 4);
    v18 = &v13;
    buf = v72;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64(v72, v46, v44, v45, v37, v38, v39, v32, v33, v34, v35, v27, WeakRetained, v22, v23, v21, v12);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nUpdate: %@", buf, 0x9Eu);
    if (v49)
    {
      MEMORY[0x277D82BD8](v50);
    }

    if (v51)
    {
      MEMORY[0x277D82BD8](v52);
    }

    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v23);
    if (v53)
    {
      MEMORY[0x277D82BD8](v54);
    }

    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v57)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v59)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v61)
    {
      MEMORY[0x277D82BD8](v62);
    }

    if (v63)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](*v48);
    }

    MEMORY[0x277D82BD8](v43);
    objc_storeStrong(&v67, 0);
  }

  objc_storeStrong(&v69, 0);
  [*(v48 + 7) setState:15];
  delegate = [*(v48 + 7) delegate];
  v17 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](delegate);
  if (v17)
  {
    delegate2 = [*(v48 + 7) delegate];
    [delegate2 manager:*(v48 + 7) installStartedForUpdate:*(v48 + 4)];
    MEMORY[0x277D82BD8](delegate2);
  }

  v14 = 0;
  objc_storeStrong(&v70, 0);
  objc_storeStrong(location, v14);
  *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager installDidFail:(id)fail withError:(id)error
{
  v51 = &v69;
  obj = fail;
  errorCopy = error;
  v48 = "[SUSUISoftwareUpdateManager manager:installDidFail:withError:]";
  v77 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v74 = 0;
  objc_storeStrong(&v74, obj);
  v73 = 0;
  objc_storeStrong(&v73, errorCopy);
  v72 = _SUSUILoggingFacility();
  v71 = 0;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v51 + 3);
    *type = v71;
    v45 = SUSUISoftwareUpdateStateToString(*(*(v51 + 8) + 88));
    v5 = MEMORY[0x277D82BE0](v45);
    v6 = v51;
    v46 = v5;
    *(v51 + 1) = v5;
    v47 = *(*(v6 + 8) + 88);
    v7 = *(*(v6 + 8) + 120);
    v68 = 0;
    if (v7)
    {
      humanReadableUpdateName = [*(*(v51 + 8) + 120) humanReadableUpdateName];
      *v51 = humanReadableUpdateName;
      v68 = 1;
      v42 = humanReadableUpdateName;
    }

    else
    {
      v42 = @"N/A";
    }

    v39 = v42;
    v40 = *(*(v51 + 8) + 120);
    v41 = *(*(v51 + 8) + 160);
    v9 = *(*(v51 + 8) + 128);
    v66 = 0;
    if (v9)
    {
      humanReadableUpdateName2 = [*(*(v51 + 8) + 128) humanReadableUpdateName];
      v66 = 1;
      v38 = humanReadableUpdateName2;
    }

    else
    {
      v38 = @"N/A";
    }

    v34 = v38;
    v35 = *(*(v51 + 8) + 128);
    v36 = *(*(v51 + 8) + 168);
    v37 = *(*(v51 + 8) + 8);
    v10 = *(*(v51 + 8) + 8);
    v64 = 0;
    v62 = 0;
    v60 = 0;
    if (v10 && (v65 = [*(*(v51 + 8) + 8) descriptor], v64 = 1, v65))
    {
      descriptor = [*(*(v51 + 8) + 8) descriptor];
      v32 = 1;
      v62 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      v60 = 1;
      v33 = humanReadableUpdateName3;
    }

    else
    {
      v33 = @"N/A";
    }

    v29 = v33;
    WeakRetained = objc_loadWeakRetained((*(v51 + 8) + 104));
    v31 = objc_loadWeakRetained((*(v51 + 8) + 104));
    v58 = 0;
    v56 = 0;
    if (v31)
    {
      v59 = objc_loadWeakRetained((*(v51 + 8) + 104));
      v27 = 1;
      v58 = 1;
      v11 = objc_opt_class();
      v57 = NSStringFromClass(v11);
      v56 = 1;
      v28 = v57;
    }

    else
    {
      v28 = @"N/A";
    }

    v24 = v28;
    v25 = objc_loadWeakRetained((*(v51 + 8) + 112));
    v26 = objc_loadWeakRetained((*(v51 + 8) + 112));
    v54 = 0;
    v52 = 0;
    if (v26)
    {
      v55 = objc_loadWeakRetained((*(v51 + 8) + 112));
      v22 = 1;
      v54 = 1;
      v12 = objc_opt_class();
      v53 = NSStringFromClass(v12);
      v52 = 1;
      v23 = v53;
    }

    else
    {
      v23 = @"N/A";
    }

    v13 = *(v51 + 5);
    v14 = *(v51 + 4);
    v20 = &v15;
    buf = v76;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64_8_64(v76, v48, v46, v47, v39, v40, v41, v34, v35, v36, v37, v29, WeakRetained, v24, v25, v23, v13, v14);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nUpdate: %@, error: %@", buf, 0xA8u);
    if (v52)
    {
      MEMORY[0x277D82BD8](v53);
    }

    if (v54)
    {
      MEMORY[0x277D82BD8](v55);
    }

    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v25);
    if (v56)
    {
      MEMORY[0x277D82BD8](v57);
    }

    if (v58)
    {
      MEMORY[0x277D82BD8](v59);
    }

    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v60)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v62)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](*v51);
    }

    MEMORY[0x277D82BD8](v45);
    objc_storeStrong(&v70, 0);
  }

  objc_storeStrong(&v72, 0);
  delegate = [*(v51 + 8) delegate];
  v19 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](delegate);
  if (v19)
  {
    delegate2 = [*(v51 + 8) delegate];
    [delegate2 manager:*(v51 + 8) installFailedWithError:*(v51 + 4)];
    MEMORY[0x277D82BD8](delegate2);
  }

  [*(v51 + 8) refreshState];
  v16 = 0;
  objc_storeStrong(&v73, 0);
  objc_storeStrong(&v74, v16);
  objc_storeStrong(location, v16);
  *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager installDidFinish:(id)finish
{
  v48 = &v66;
  obj = finish;
  v46 = "[SUSUISoftwareUpdateManager manager:installDidFinish:]";
  v73 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v70 = 0;
  objc_storeStrong(&v70, obj);
  v69 = _SUSUILoggingFacility();
  v68 = 0;
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v48 + 3);
    *type = v68;
    v43 = SUSUISoftwareUpdateStateToString(*(*(v48 + 7) + 88));
    v4 = MEMORY[0x277D82BE0](v43);
    v5 = v48;
    v44 = v4;
    *(v48 + 1) = v4;
    v45 = *(*(v5 + 7) + 88);
    v6 = *(*(v5 + 7) + 120);
    v65 = 0;
    if (v6)
    {
      humanReadableUpdateName = [*(*(v48 + 7) + 120) humanReadableUpdateName];
      *v48 = humanReadableUpdateName;
      v65 = 1;
      v40 = humanReadableUpdateName;
    }

    else
    {
      v40 = @"N/A";
    }

    v37 = v40;
    v38 = *(*(v48 + 7) + 120);
    v39 = *(*(v48 + 7) + 160);
    v8 = *(*(v48 + 7) + 128);
    v63 = 0;
    if (v8)
    {
      humanReadableUpdateName2 = [*(*(v48 + 7) + 128) humanReadableUpdateName];
      v63 = 1;
      v36 = humanReadableUpdateName2;
    }

    else
    {
      v36 = @"N/A";
    }

    v32 = v36;
    v33 = *(*(v48 + 7) + 128);
    v34 = *(*(v48 + 7) + 168);
    v35 = *(*(v48 + 7) + 8);
    v9 = *(*(v48 + 7) + 8);
    v61 = 0;
    v59 = 0;
    v57 = 0;
    if (v9 && (v62 = [*(*(v48 + 7) + 8) descriptor], v61 = 1, v62))
    {
      descriptor = [*(*(v48 + 7) + 8) descriptor];
      v30 = 1;
      v59 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      v57 = 1;
      v31 = humanReadableUpdateName3;
    }

    else
    {
      v31 = @"N/A";
    }

    v27 = v31;
    WeakRetained = objc_loadWeakRetained((*(v48 + 7) + 104));
    v29 = objc_loadWeakRetained((*(v48 + 7) + 104));
    v55 = 0;
    v53 = 0;
    if (v29)
    {
      v56 = objc_loadWeakRetained((*(v48 + 7) + 104));
      v25 = 1;
      v55 = 1;
      v10 = objc_opt_class();
      v54 = NSStringFromClass(v10);
      v53 = 1;
      v26 = v54;
    }

    else
    {
      v26 = @"N/A";
    }

    v22 = v26;
    v23 = objc_loadWeakRetained((*(v48 + 7) + 112));
    v24 = objc_loadWeakRetained((*(v48 + 7) + 112));
    v51 = 0;
    v49 = 0;
    if (v24)
    {
      v52 = objc_loadWeakRetained((*(v48 + 7) + 112));
      v20 = 1;
      v51 = 1;
      v11 = objc_opt_class();
      v50 = NSStringFromClass(v11);
      v49 = 1;
      v21 = v50;
    }

    else
    {
      v21 = @"N/A";
    }

    v12 = *(v48 + 4);
    v18 = &v13;
    buf = v72;
    __os_log_helper_16_2_16_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64(v72, v46, v44, v45, v37, v38, v39, v32, v33, v34, v35, v27, WeakRetained, v22, v23, v21, v12);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nUpdate: %@", buf, 0x9Eu);
    if (v49)
    {
      MEMORY[0x277D82BD8](v50);
    }

    if (v51)
    {
      MEMORY[0x277D82BD8](v52);
    }

    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v23);
    if (v53)
    {
      MEMORY[0x277D82BD8](v54);
    }

    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v57)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v59)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v61)
    {
      MEMORY[0x277D82BD8](v62);
    }

    if (v63)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](*v48);
    }

    MEMORY[0x277D82BD8](v43);
    objc_storeStrong(&v67, 0);
  }

  objc_storeStrong(&v69, 0);
  [*(v48 + 7) setState:16];
  delegate = [*(v48 + 7) delegate];
  v17 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](delegate);
  if (v17)
  {
    delegate2 = [*(v48 + 7) delegate];
    [delegate2 manager:*(v48 + 7) installFinished:*(v48 + 4)];
    MEMORY[0x277D82BD8](delegate2);
  }

  v14 = 0;
  objc_storeStrong(&v70, 0);
  objc_storeStrong(location, v14);
  *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager autoUpdateScheduleStateChanged:(BOOL)changed autoInstallOperation:(id)operation
{
  v50 = &v68;
  changedCopy = changed;
  obj = operation;
  v47 = "[SUSUISoftwareUpdateManager manager:autoUpdateScheduleStateChanged:autoInstallOperation:]";
  v76 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v73 = changedCopy;
  v72 = 0;
  objc_storeStrong(&v72, obj);
  v71 = _SUSUILoggingFacility();
  v70 = 0;
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v50 + 3);
    *type = v70;
    v44 = SUSUISoftwareUpdateStateToString(*(*(v50 + 8) + 88));
    v5 = MEMORY[0x277D82BE0](v44);
    v6 = v50;
    v45 = v5;
    *(v50 + 1) = v5;
    v46 = *(*(v6 + 8) + 88);
    v7 = *(*(v6 + 8) + 120);
    v67 = 0;
    if (v7)
    {
      humanReadableUpdateName = [*(*(v50 + 8) + 120) humanReadableUpdateName];
      *v50 = humanReadableUpdateName;
      v67 = 1;
      v41 = humanReadableUpdateName;
    }

    else
    {
      v41 = @"N/A";
    }

    v38 = v41;
    v39 = *(*(v50 + 8) + 120);
    v40 = *(*(v50 + 8) + 160);
    v9 = *(*(v50 + 8) + 128);
    v65 = 0;
    if (v9)
    {
      humanReadableUpdateName2 = [*(*(v50 + 8) + 128) humanReadableUpdateName];
      v65 = 1;
      v37 = humanReadableUpdateName2;
    }

    else
    {
      v37 = @"N/A";
    }

    v33 = v37;
    v34 = *(*(v50 + 8) + 128);
    v35 = *(*(v50 + 8) + 168);
    v36 = *(*(v50 + 8) + 8);
    v10 = *(*(v50 + 8) + 8);
    v63 = 0;
    v61 = 0;
    v59 = 0;
    if (v10 && (v64 = [*(*(v50 + 8) + 8) descriptor], v63 = 1, v64))
    {
      descriptor = [*(*(v50 + 8) + 8) descriptor];
      v31 = 1;
      v61 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      v59 = 1;
      v32 = humanReadableUpdateName3;
    }

    else
    {
      v32 = @"N/A";
    }

    v28 = v32;
    WeakRetained = objc_loadWeakRetained((*(v50 + 8) + 104));
    v30 = objc_loadWeakRetained((*(v50 + 8) + 104));
    v57 = 0;
    v55 = 0;
    if (v30)
    {
      v58 = objc_loadWeakRetained((*(v50 + 8) + 104));
      v26 = 1;
      v57 = 1;
      v11 = objc_opt_class();
      v56 = NSStringFromClass(v11);
      v55 = 1;
      v27 = v56;
    }

    else
    {
      v27 = @"N/A";
    }

    v23 = v27;
    v24 = objc_loadWeakRetained((*(v50 + 8) + 112));
    v25 = objc_loadWeakRetained((*(v50 + 8) + 112));
    v53 = 0;
    v51 = 0;
    if (v25)
    {
      v54 = objc_loadWeakRetained((*(v50 + 8) + 112));
      v21 = 1;
      v53 = 1;
      v12 = objc_opt_class();
      v52 = NSStringFromClass(v12);
      v51 = 1;
      v22 = v52;
    }

    else
    {
      v22 = @"N/A";
    }

    v13 = *(v50 + 4);
    v19 = &v14;
    buf = v75;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_4_0_8_64(v75, v47, v45, v46, v38, v39, v40, v33, v34, v35, v36, v28, WeakRetained, v23, v24, v22, v73, v13);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nAuto-update scheduled: %d, operation: %@", buf, 0xA4u);
    if (v51)
    {
      MEMORY[0x277D82BD8](v52);
    }

    if (v53)
    {
      MEMORY[0x277D82BD8](v54);
    }

    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v24);
    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    if (v57)
    {
      MEMORY[0x277D82BD8](v58);
    }

    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v59)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v61)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v63)
    {
      MEMORY[0x277D82BD8](v64);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v67)
    {
      MEMORY[0x277D82BD8](*v50);
    }

    MEMORY[0x277D82BD8](v44);
    objc_storeStrong(&v69, 0);
  }

  objc_storeStrong(&v71, 0);
  v17 = objc_loadWeakRetained((*(v50 + 8) + 104));
  v18 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](v17);
  if (v18)
  {
    v16 = objc_loadWeakRetained((*(v50 + 8) + 104));
    [v16 manager:*(v50 + 8) autoUpdateScheduledStatusChanged:v73];
    MEMORY[0x277D82BD8](v16);
  }

  v15 = 0;
  objc_storeStrong(&v72, 0);
  objc_storeStrong(location, v15);
  *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager rollingBackStateChanged:(BOOL)changed rollback:(id)rollback
{
  v51 = &v69;
  changedCopy = changed;
  obj = rollback;
  v48 = "[SUSUISoftwareUpdateManager manager:rollingBackStateChanged:rollback:]";
  v77 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v74 = changedCopy;
  v73 = 0;
  objc_storeStrong(&v73, obj);
  v72 = _SUSUILoggingFacility();
  v71 = 0;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    log = *(v51 + 3);
    *type = v71;
    v45 = SUSUISoftwareUpdateStateToString(*(*(v51 + 8) + 88));
    v5 = MEMORY[0x277D82BE0](v45);
    v6 = v51;
    v46 = v5;
    *(v51 + 1) = v5;
    v47 = *(*(v6 + 8) + 88);
    v7 = *(*(v6 + 8) + 120);
    v68 = 0;
    if (v7)
    {
      humanReadableUpdateName = [*(*(v51 + 8) + 120) humanReadableUpdateName];
      *v51 = humanReadableUpdateName;
      v68 = 1;
      v42 = humanReadableUpdateName;
    }

    else
    {
      v42 = @"N/A";
    }

    v39 = v42;
    v40 = *(*(v51 + 8) + 120);
    v41 = *(*(v51 + 8) + 160);
    v9 = *(*(v51 + 8) + 128);
    v66 = 0;
    if (v9)
    {
      humanReadableUpdateName2 = [*(*(v51 + 8) + 128) humanReadableUpdateName];
      v66 = 1;
      v38 = humanReadableUpdateName2;
    }

    else
    {
      v38 = @"N/A";
    }

    v34 = v38;
    v35 = *(*(v51 + 8) + 128);
    v36 = *(*(v51 + 8) + 168);
    v37 = *(*(v51 + 8) + 8);
    v10 = *(*(v51 + 8) + 8);
    v64 = 0;
    v62 = 0;
    v60 = 0;
    if (v10 && (v65 = [*(*(v51 + 8) + 8) descriptor], v64 = 1, v65))
    {
      descriptor = [*(*(v51 + 8) + 8) descriptor];
      v32 = 1;
      v62 = 1;
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      v60 = 1;
      v33 = humanReadableUpdateName3;
    }

    else
    {
      v33 = @"N/A";
    }

    v29 = v33;
    WeakRetained = objc_loadWeakRetained((*(v51 + 8) + 104));
    v31 = objc_loadWeakRetained((*(v51 + 8) + 104));
    v58 = 0;
    v56 = 0;
    if (v31)
    {
      v59 = objc_loadWeakRetained((*(v51 + 8) + 104));
      v27 = 1;
      v58 = 1;
      v11 = objc_opt_class();
      v57 = NSStringFromClass(v11);
      v56 = 1;
      v28 = v57;
    }

    else
    {
      v28 = @"N/A";
    }

    v24 = v28;
    v25 = objc_loadWeakRetained((*(v51 + 8) + 112));
    v26 = objc_loadWeakRetained((*(v51 + 8) + 112));
    v54 = 0;
    v52 = 0;
    if (v26)
    {
      v55 = objc_loadWeakRetained((*(v51 + 8) + 112));
      v22 = 1;
      v54 = 1;
      v12 = objc_opt_class();
      v53 = NSStringFromClass(v12);
      v52 = 1;
      v23 = v53;
    }

    else
    {
      v23 = @"N/A";
    }

    v13 = @"NO";
    if (v74)
    {
      v13 = @"YES";
    }

    v14 = *(v51 + 4);
    v20 = &v15;
    buf = v76;
    __os_log_helper_16_2_17_8_32_8_66_4_0_8_66_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_64_8_64(v76, v48, v46, v47, v39, v40, v41, v34, v35, v36, v37, v29, WeakRetained, v24, v25, v23, v13, v14);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Update Manager Checkpoint\n\tstate: %{public}@ (%d)\n\tpreferredUpdate: %{public}@ (%p)\n\tpreferredUpdateError: %{public}@\n\talternateUpdate: %{public}@ (%p)\n\talternateUpdateError: %{public}@\n\tdownload: %p (%{public}@)\n\tdelegate: %p (%{public}@)\n\thostController: %p (%{public}@)\n\nisRollingBack: %@; rollback: %@", buf, 0xA8u);
    if (v52)
    {
      MEMORY[0x277D82BD8](v53);
    }

    if (v54)
    {
      MEMORY[0x277D82BD8](v55);
    }

    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v25);
    if (v56)
    {
      MEMORY[0x277D82BD8](v57);
    }

    if (v58)
    {
      MEMORY[0x277D82BD8](v59);
    }

    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](WeakRetained);
    if (v60)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
    }

    if (v62)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](v65);
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
    }

    if (v68)
    {
      MEMORY[0x277D82BD8](*v51);
    }

    MEMORY[0x277D82BD8](v45);
    objc_storeStrong(&v70, 0);
  }

  objc_storeStrong(&v72, 0);
  v18 = objc_loadWeakRetained((*(v51 + 8) + 104));
  v19 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](v18);
  if (v19)
  {
    v17 = objc_loadWeakRetained((*(v51 + 8) + 104));
    [v17 manager:*(v51 + 8) rollingBackStateChanged:v74 rollback:*(v51 + 4)];
    MEMORY[0x277D82BD8](v17);
  }

  v16 = 0;
  objc_storeStrong(&v73, 0);
  objc_storeStrong(location, v16);
  *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager inUserInteraction:(id)interaction
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v8 = 0;
  objc_storeStrong(&v8, interaction);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v4 manager:selfCopy inUserInteraction:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager handleDDMDeclaration:(id)declaration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v8 = 0;
  objc_storeStrong(&v8, declaration);
  [(SUSUISoftwareUpdateManager *)selfCopy setDdmDeclaration:v8];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v7 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v7)
  {
    v4 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v4 manager:selfCopy handleDDMDeclaration:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (SUSUISoftwareUpdateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

@end