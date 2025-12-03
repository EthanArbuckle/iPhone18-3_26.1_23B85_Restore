@interface SUScheduler
+ (id)sharedInstance;
- (BOOL)_activityIsScheduled:(id)scheduled cancelIfExpired:(BOOL)expired scheduledActivity:(id *)activity;
- (BOOL)activityWasPreviouslyScheduledForFutureDate:(id)date passed:(BOOL *)passed copy:(id *)copy;
- (SUScheduler)init;
- (double)_autoDownloadTimeInterval;
- (id)_autoInstallActivityCriteriaWithInstallDate:(id)date descriptor:(id)descriptor;
- (id)_next7OClockFrom:(id)from after:(double)after;
- (id)nextScheduledAutoScan;
- (int)scanTypeForActivityName:(id)name;
- (void)_invalidateRetryAutoInstallaTimer;
- (void)_queue_cancelAutoInstallStartInstallTask;
- (void)_queue_handleActivity:(id)activity info:(id)info;
- (void)_queue_handleAnalyticsSubmission:(id)submission info:(id)info;
- (void)_queue_handleAutoDownload:(id)download info:(id)info;
- (void)_queue_handleAutoInstallEnd:(id)end info:(id)info;
- (void)_queue_handleAutoInstallGetKeybag:(id)keybag info:(id)info;
- (void)_queue_handleAutoInstallStart:(id)start info:(id)info;
- (void)_queue_handleAutoInstallUnlock:(id)unlock info:(id)info;
- (void)_queue_handleAutoScan:(id)scan info:(id)info rescheduler:(BOOL)rescheduler;
- (void)_queue_handleCancelPresentBannerOnUnlock;
- (void)_queue_handleInstallAlert:(id)alert info:(id)info;
- (void)_queue_handlePresentBanner:(id)banner info:(id)info;
- (void)_queue_handleScanIntervalConfigChange:(id)change;
- (void)_queue_handleServerConfigScan:(id)scan info:(id)info;
- (void)_queue_handleSplatFollowUp:(id)up info:(id)info;
- (void)_queue_invalidateRetryAutoInstallaTimer;
- (void)_queue_setAutoinstallActivity:(id)activity;
- (void)_queue_unscheduleActivity:(id)activity;
- (void)_queue_unscheduleAllActivitiesWithName:(id)name;
- (void)_scheduleActivity:(id)activity;
- (void)_scheduleAutoInstallGetKeybagTaskForDate:(id)date;
- (void)_unscheduleActivity:(id)activity;
- (void)cancelAllAutoInstallTasksIncludingStartInstallTask:(BOOL)task;
- (void)cancelAllAutoScanTasks;
- (void)cancelAllBackgroundScans;
- (void)cancelAllEmergencyBackgroundScans;
- (void)cancelAllStartupTasks;
- (void)cancelAutoDownloadTask;
- (void)cancelAutoInstallGetKeybagTask;
- (void)cancelAutoInstallStartInstallTask;
- (void)cancelAutoInstallUnlockWindowStartTask;
- (void)cancelAutoInstallWindowExpirationTask;
- (void)cancelInstallAlertRegistration;
- (void)cancelInstallAlertRegistrationButKeepAlive;
- (void)cancelPresentAutoUpdateBanner;
- (void)cancelRollbackReboot;
- (void)cancelSplatFollowUpNotification;
- (void)dealloc;
- (void)handleXPCEvent:(id)event;
- (void)scheduleAllAutoInstallUpdateTasks:(id)tasks descriptor:(id)descriptor;
- (void)scheduleAnalyticsSubmission:(id)submission;
- (void)scheduleAnalyticsSubmissionIfNecessary;
- (void)scheduleAutoDownloadIfNecessary;
- (void)scheduleAutoDownloadWithDate:(id)date requirePower:(int)power minimumPowerRquirement:(id)rquirement;
- (void)scheduleAutoInstallExpirationTask:(id)task;
- (void)scheduleAutoInstallGetKeybagTaskForDescriptor:(id)descriptor;
- (void)scheduleAutoInstallStartInstallTask:(id)task descriptor:(id)descriptor;
- (void)scheduleAutoInstallStartInstallTaskWithDate:(id)date descriptor:(id)descriptor fromFailure:(BOOL)failure;
- (void)scheduleAutoInstallUnlockWindowStartTask:(id)task;
- (void)scheduleBackgroundScan:(id)scan scanDate:(id)date;
- (void)scheduleBackgroundScanIfNecessary:(id)necessary scanType:(int *)type;
- (void)scheduleInstallAlertRegistration:(id)registration;
- (void)schedulePresentAutoUpdateBanner;
- (void)scheduleRollbackReboot:(id)reboot;
- (void)scheduleSimulatedAutoInstallTask;
- (void)scheduleSplatFollowUpNotification:(id)notification;
- (void)scheduleStartupTasksIfNecessary;
- (void)serverConfigManager:(id)manager configValuesChanged:(id)changed;
- (void)setAutoInstallActivityStateDone;
- (void)setAutoinstallActivity:(id)activity;
@end

@implementation SUScheduler

- (SUScheduler)init
{
  v38.receiver = self;
  v38.super_class = SUScheduler;
  v2 = [(SUScheduler *)&v38 init];
  if (v2)
  {
    v3 = +[SUPreferences sharedInstance];
    *(v2 + 16) = [v3 useSUCoreXPCActivityScheduler];

    if (*(v2 + 16))
    {
      mEMORY[0x277D64200] = [MEMORY[0x277D64200] sharedInstance];
      v5 = *(v2 + 3);
      *(v2 + 3) = mEMORY[0x277D64200];

      v6 = *(v2 + 1);
      *(v2 + 1) = 0;

      SULogInfo(@"Dumping scheduler state: %@", v7, v8, v9, v10, v11, v12, v13, *(v2 + 3));
    }

    else
    {
      mEMORY[0x277D64150] = [MEMORY[0x277D64150] sharedInstance];
      v15 = *(v2 + 1);
      *(v2 + 1) = mEMORY[0x277D64150];

      v16 = *(v2 + 3);
      *(v2 + 3) = 0;
    }

    v17 = +[SUServerConfigurationManager sharedInstance];
    v18 = *(v2 + 9);
    *(v2 + 9) = v17;

    [*(v2 + 9) addListener:v2];
    if (*(v2 + 16))
    {
      v26 = "new";
    }

    else
    {
      v26 = "legacy";
    }

    SULogInfo(@"Using %s scheduler", v19, v20, v21, v22, v23, v24, v25, v26);
    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_queue_create("com.apple.softwareupdateservicesd.scheduler", v27);
    v29 = *(v2 + 6);
    *(v2 + 6) = v28;

    v30 = +[SUManagerInterfaceFactory sharedInstance];
    v31 = *(v2 + 7);
    *(v2 + 7) = v30;

    v32 = +[SUManagerServer sharedInstance];
    autoInstallManager = [v32 autoInstallManager];
    v34 = *(v2 + 8);
    *(v2 + 8) = autoInstallManager;

    v35 = *(v2 + 4);
    *(v2 + 4) = 0;

    v36 = *(v2 + 5);
    *(v2 + 5) = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(SUServerConfigurationManager *)self->_serverConfigManager removeListener:self];
  [(SUScheduler *)self _invalidateRetryAutoInstallaTimer];
  v3.receiver = self;
  v3.super_class = SUScheduler;
  [(SUScheduler *)&v3 dealloc];
}

+ (id)sharedInstance
{
  if (sharedInstance_pred_3 != -1)
  {
    +[SUScheduler sharedInstance];
  }

  v3 = sharedInstance___instance_7;

  return v3;
}

uint64_t __29__SUScheduler_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SUScheduler);
  v1 = sharedInstance___instance_7;
  sharedInstance___instance_7 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)scheduleStartupTasksIfNecessary
{
  [(SUScheduler *)self scheduleBackgroundScanIfNecessary:@"com.apple.softwareupdateservicesd.activity.autoScan" scanType:0];
  [(SUScheduler *)self scheduleAutoDownloadIfNecessary];

  [(SUScheduler *)self scheduleAnalyticsSubmissionIfNecessary];
}

- (void)cancelAllStartupTasks
{
  [(SUScheduler *)self cancelAllAutoScanTasks];

  [(SUScheduler *)self cancelAutoDownloadTask];
}

- (void)cancelAllAutoScanTasks
{
  [(SUScheduler *)self cancelAllBackgroundScans];

  [(SUScheduler *)self cancelAllEmergencyBackgroundScans];
}

- (void)scheduleAllAutoInstallUpdateTasks:(id)tasks descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  tasksCopy = tasks;
  [(SUScheduler *)self scheduleAutoInstallExpirationTask:tasksCopy];
  [(SUScheduler *)self scheduleAutoInstallUnlockWindowStartTask:tasksCopy];
  [(SUScheduler *)self scheduleAutoInstallGetKeybagTaskForDescriptor:descriptorCopy];
  [(SUScheduler *)self scheduleAutoInstallStartInstallTask:tasksCopy descriptor:descriptorCopy];
}

- (void)cancelAllAutoInstallTasksIncludingStartInstallTask:(BOOL)task
{
  taskCopy = task;
  [(SUScheduler *)self cancelAutoInstallWindowExpirationTask];
  [(SUScheduler *)self cancelAutoInstallUnlockWindowStartTask];
  [(SUScheduler *)self cancelAutoInstallGetKeybagTask];
  if (taskCopy)
  {
    SULogDebug(@"Will cancelAutoInstallStartInstallTask", v5, v6, v7, v8, v9, v10, v11, v12);
    [(SUScheduler *)self cancelAutoInstallStartInstallTask];
  }

  else
  {
    SULogDebug(@"Will not cancelAutoInstallStartInstallTask", v5, v6, v7, v8, v9, v10, v11, v12);
  }

  [(SUScheduler *)self cancelPresentAutoUpdateBanner];
}

- (void)scheduleBackgroundScanIfNecessary:(id)necessary scanType:(int *)type
{
  necessaryCopy = necessary;
  v7 = [(SUScheduler *)self _activityIsScheduled:necessaryCopy cancelIfExpired:1];
  if (self->_useSUCoreXPCActivityManager)
  {
    v26 = 0;
    v8 = [(SUCoreXPCActivityManager *)self->_coreXPCActivityScheduler getExpectedRunDateForActivity:necessaryCopy];
    if ([(SUScheduler *)self activityWasPreviouslyScheduledForFutureDate:necessaryCopy passed:&v26 copy:0])
    {
      v24 = [SUUtility prettyPrintDate:v8];
      SULogInfo(@"%@ was previously scheduled to run at %@. Re-scheduling for the same time", v9, v10, v11, v12, v13, v14, v15, necessaryCopy);

      if (v8)
      {
LABEL_8:
        v25 = [SUUtility prettyPrintDate:v8];
        SULogInfo(@"Expired or no background scan activity found for %@. Rescheduling for %@", v17, v18, v19, v20, v21, v22, v23, necessaryCopy);

        [(SUScheduler *)self scheduleBackgroundScan:necessaryCopy scanDate:v8];
        goto LABEL_9;
      }

LABEL_7:
      [(SUScheduler *)self _randomizedAutoScanDelayForType:type];
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v16];
      goto LABEL_8;
    }
  }

  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_9:
}

- (void)scheduleBackgroundScan:(id)scan scanDate:(id)date
{
  scanCopy = scan;
  dateCopy = date;
  v7 = objc_alloc_init(MEMORY[0x277D64148]);
  v15 = v7;
  if (v7)
  {
    [v7 setRunDate:dateCopy];
    [v15 setNetworkState:2];
    [v15 setWaking:2];
    v16 = [objc_alloc(MEMORY[0x277D64140]) initWithActivityName:scanCopy options:v15];
    [(SUScheduler *)self _scheduleActivity:v16];
  }

  else
  {
    SULogError(@"Failed to create options for activity %@", v8, v9, v10, v11, v12, v13, v14, scanCopy);
  }
}

- (void)cancelAllBackgroundScans
{
  schedulerQueue = self->_schedulerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SUScheduler_cancelAllBackgroundScans__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
}

- (void)cancelAllEmergencyBackgroundScans
{
  schedulerQueue = self->_schedulerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUScheduler_cancelAllEmergencyBackgroundScans__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
}

- (void)scheduleAutoDownloadIfNecessary
{
  if (![(SUManagerInterface *)self->_manager isDownloading])
  {
    v10 = +[SUState currentState];
    lastAutoDownloadDate = [v10 lastAutoDownloadDate];

    if (!lastAutoDownloadDate)
    {
      SULogInfo(@"[Auto download] Setting last auto download date to now since it is nil", v12, v13, v14, v15, v16, v17, v18, v68);
      v19 = +[SUState currentState];
      date = [MEMORY[0x277CBEAA8] date];
      [v19 setLastAutoDownloadDate:date];
    }

    v72 = 0;
    v21 = [(SUScheduler *)self _activityIsScheduled:@"com.apple.softwareupdateservicesd.activity.autoDownload" cancelIfExpired:0 scheduledActivity:&v72];
    v22 = v72;
    v30 = v22;
    if (self->_useSUCoreXPCActivityManager)
    {
      v71 = 0;
      v70 = 0;
      v31 = [(SUScheduler *)self activityWasPreviouslyScheduledForFutureDate:@"com.apple.softwareupdateservicesd.activity.autoDownload" passed:&v71 copy:&v70];
      v32 = v70;
      v33 = v32;
      if (v31)
      {
        runDate = [v32 runDate];
        if (runDate)
        {
          runDate2 = [v33 runDate];
          SULogInfo(@"Found auto download which was previously set to run on %@ but is not currently scheduled", v43, v44, v45, v46, v47, v48, v49, runDate2);
        }

        else
        {
          SULogInfo(@"Found auto download which was previously set to run on %@ but is not currently scheduled", v34, v35, v36, v37, v38, v39, v40, @"Unknown Date");
        }
      }

      else
      {

        v33 = v30;
        if (!v21)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v33 = v22;
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SULogInfo(@"[Auto download] Found auto download activity: %@", v23, v24, v25, v26, v27, v28, v29, v33);
      [(SUScheduler *)self cancelAutoDownloadTask];
      runDate3 = [v33 runDate];
      if (runDate3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        date2 = [MEMORY[0x277CBEAA8] date];
        if ([date2 compare:runDate3] != 1)
        {
LABEL_26:

          plugInState = [v33 plugInState];
          batteryLevelGreaterThan = [v33 batteryLevelGreaterThan];
          [(SUScheduler *)self scheduleAutoDownloadWithDate:runDate3 requirePower:plugInState minimumPowerRquirement:batteryLevelGreaterThan];

          [(SUManagerInterface *)self->_manager loadBrainOnUnlock];
          goto LABEL_27;
        }

        SULogInfo(@"[Auto download] Auto download activity had a run date in the past(%@). Clearing it for next schedule attempt", v59, v60, v61, v62, v63, v64, v65, runDate3);
      }

      else
      {
        SULogInfo(@"[Auto download] Setting runDate for autoDownload activity to nil because of invalid/unset runDate on downloadActivity object", v50, v51, v52, v53, v54, v55, v56, v69);
        date2 = runDate3;
      }

      runDate3 = 0;
      goto LABEL_26;
    }

    v30 = v33;
LABEL_23:
    SULogInfo(@"[Auto download] Not re-scheduling autoDownload since it was not previously scheduled", v23, v24, v25, v26, v27, v28, v29, v68);
    v33 = v30;
LABEL_27:

    return;
  }

  SULogInfo(@"[Auto download] Not scheduling auto download: Currently Downloading", v3, v4, v5, v6, v7, v8, v9, v74);
}

- (void)scheduleAutoDownloadWithDate:(id)date requirePower:(int)power minimumPowerRquirement:(id)rquirement
{
  dateCopy = date;
  rquirementCopy = rquirement;
  [rquirementCopy intValue];
  SULogInfo(@"Scheduling an auto download for %@; requirePower=%d, minimumPowerRequirement=%d", v10, v11, v12, v13, v14, v15, v16, dateCopy);
  if (dateCopy)
  {
    v24 = objc_alloc_init(MEMORY[0x277D64148]);
    v25 = v24;
    if (power == 1)
    {
      powerCopy = 0;
    }

    else
    {
      powerCopy = power;
    }

    [v24 setPlugInState:powerCopy];
    [v25 setWifiState:2];
    [v25 setWaking:2];
    [v25 setRunDate:dateCopy];
    if (power == 1 && rquirementCopy)
    {
      [v25 setBatteryLevelGreaterThan:rquirementCopy];
    }

    v27 = [objc_alloc(MEMORY[0x277D64140]) initWithActivityName:@"com.apple.softwareupdateservicesd.activity.autoDownload" options:v25];
    [(SUScheduler *)self _scheduleActivity:v27];
  }

  else
  {
    SULogInfo(@"runDate is nil for auto download; start immediately", v17, v18, v19, v20, v21, v22, v23, v29);
    schedulerQueue = self->_schedulerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__SUScheduler_scheduleAutoDownloadWithDate_requirePower_minimumPowerRquirement___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(schedulerQueue, block);
  }
}

- (void)cancelAutoDownloadTask
{
  schedulerQueue = self->_schedulerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SUScheduler_cancelAutoDownloadTask__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
}

- (void)scheduleAutoInstallExpirationTask:(id)task
{
  suEndDate = [task suEndDate];
  if (suEndDate)
  {
    v7 = suEndDate;
    v5 = objc_alloc_init(MEMORY[0x277D64148]);
    [v5 setWaking:2];
    [v5 setRunDate:v7];
    v6 = [objc_alloc(MEMORY[0x277D64140]) initWithActivityName:@"com.apple.softwareupdateservicesd.activity.autoInstallEnd" options:v5];
    [(SUScheduler *)self _scheduleActivity:v6];

    suEndDate = v7;
  }
}

- (void)cancelAutoInstallWindowExpirationTask
{
  schedulerQueue = self->_schedulerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUScheduler_cancelAutoInstallWindowExpirationTask__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
}

- (void)scheduleAutoInstallUnlockWindowStartTask:(id)task
{
  unlockStartDate = [task unlockStartDate];
  if (unlockStartDate)
  {
    v7 = unlockStartDate;
    v5 = objc_alloc_init(MEMORY[0x277D64148]);
    [v5 setWaking:2];
    [v5 setRunDate:v7];
    v6 = [objc_alloc(MEMORY[0x277D64140]) initWithActivityName:@"com.apple.softwareupdateservicesd.activity.autoInstallUnlock" options:v5];
    [(SUScheduler *)self _scheduleActivity:v6];

    unlockStartDate = v7;
  }
}

- (void)cancelAutoInstallUnlockWindowStartTask
{
  schedulerQueue = self->_schedulerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUScheduler_cancelAutoInstallUnlockWindowStartTask__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
}

- (id)_next7OClockFrom:(id)from after:(double)after
{
  v4 = [from dateByAddingTimeInterval:after];
  v5 = specificTimeOnDate(v4, 7, 0, 0);
  v6 = specificTimeOnDate(v4, 19, 0, 0);
  v7 = [v5 dateByAddingTimeInterval:86400.0];
  v8 = v5;
  if ([v4 compare:v5] == 1)
  {
    if ([v4 compare:v6] == 1)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  v9 = v8;

  return v8;
}

- (void)_scheduleAutoInstallGetKeybagTaskForDate:(id)date
{
  if (date)
  {
    v4 = MEMORY[0x277D64148];
    dateCopy = date;
    v7 = objc_alloc_init(v4);
    [v7 setRunDate:dateCopy];

    v6 = [objc_alloc(MEMORY[0x277D64140]) initWithActivityName:@"com.apple.softwareupdateservicesd.activity.autoInstallGetKeybag" options:v7];
    [(SUScheduler *)self _scheduleActivity:v6];
  }
}

- (void)scheduleAutoInstallGetKeybagTaskForDescriptor:(id)descriptor
{
  v4 = MEMORY[0x277CBEAA8];
  descriptorCopy = descriptor;
  v18 = [v4 now];
  v6 = [(SUScheduler *)self _next7OClockFrom:0.0 after:?];
  v7 = +[SUKeybagInterface sharedInstance];
  v8 = [v7 installationKeybagStateForDescriptor:descriptorCopy];

  if (v8 == 1)
  {
    [v6 timeIntervalSinceDate:v18];
    if (v16 > 3600.0)
    {
      v17 = [v18 dateByAddingTimeInterval:5.0];

      v6 = v17;
    }
  }

  SULogDebug(@"%s: trigger date = %@", v9, v10, v11, v12, v13, v14, v15, "[SUScheduler scheduleAutoInstallGetKeybagTaskForDescriptor:]");
  [(SUScheduler *)self _scheduleAutoInstallGetKeybagTaskForDate:v6];
}

- (void)cancelAutoInstallGetKeybagTask
{
  schedulerQueue = self->_schedulerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUScheduler_cancelAutoInstallGetKeybagTask__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
}

- (void)scheduleAutoInstallStartInstallTask:(id)task descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  suStartDate = [task suStartDate];
  if (suStartDate)
  {
    [(SUScheduler *)self scheduleAutoInstallStartInstallTaskWithDate:suStartDate descriptor:descriptorCopy fromFailure:0];
    +[SUUtility writeAUKeepAliveFile];
  }
}

- (id)_autoInstallActivityCriteriaWithInstallDate:(id)date descriptor:(id)descriptor
{
  dateCopy = date;
  descriptorCopy = descriptor;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, *MEMORY[0x277D86270], 0);
  if (dateCopy)
  {
    v9 = *MEMORY[0x277D86250];
    [dateCopy timeIntervalSinceNow];
    xpc_dictionary_set_int64(empty, v9, v10);
  }

  xpc_dictionary_set_uint64(empty, *MEMORY[0x277D86358], 0x1C20uLL);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D862D8], 1);
  xpc_dictionary_set_string(empty, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86398], 1);
  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v11, [*MEMORY[0x277D06A78] UTF8String], 1);
  if ([(SUServerConfigurationManager *)self->_serverConfigManager defaultToOldInactivityPredictor])
  {
    SULogInfo(@"Defaulting to old inactivity predictor for autoInstall", v12, v13, v14, v15, v16, v17, v18, v29);
    xpc_dictionary_set_BOOL(v11, [*MEMORY[0x277D06A88] UTF8String], 1);
  }

  if (descriptorCopy)
  {
    v19 = objc_alloc_init(SUInstallOptions);
    [(SUInstallOptions *)v19 setAutomaticInstallation:1];
    v20 = (SURequiredBatteryLevelForInstallation(descriptorCopy, v19) * 100.0);
    SULogInfo(@"Require %lld battery for das to fire", v21, v22, v23, v24, v25, v26, v27, v20);
    xpc_dictionary_set_int64(v11, [*MEMORY[0x277D06A80] UTF8String], v20);
  }

  xpc_dictionary_set_value(empty, *MEMORY[0x277D86260], v11);

  return empty;
}

- (void)scheduleAutoInstallStartInstallTaskWithDate:(id)date descriptor:(id)descriptor fromFailure:(BOOL)failure
{
  failureCopy = failure;
  dateCopy = date;
  descriptorCopy = descriptor;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__SUScheduler_scheduleAutoInstallStartInstallTaskWithDate_descriptor_fromFailure___block_invoke;
  v18[3] = &unk_279CAA798;
  v18[4] = self;
  v10 = dateCopy;
  v19 = v10;
  v11 = descriptorCopy;
  v20 = v11;
  v12 = MEMORY[0x26D668B30](v18);
  dispatch_assert_queue_not_V2(self->_schedulerQueue);
  [v10 timeIntervalSinceNow];
  schedulerQueue = self->_schedulerQueue;
  if (failureCopy && v13 > 0.0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__SUScheduler_scheduleAutoInstallStartInstallTaskWithDate_descriptor_fromFailure___block_invoke_4;
    v15[3] = &unk_279CACA00;
    v15[4] = self;
    v17 = v13;
    v16 = v12;
    dispatch_sync(schedulerQueue, v15);
  }

  else
  {
    dispatch_sync(self->_schedulerQueue, v12);
  }
}

void __82__SUScheduler_scheduleAutoInstallStartInstallTaskWithDate_descriptor_fromFailure___block_invoke(id *a1)
{
  dispatch_assert_queue_V2(*(a1[4] + 6));
  [a1[4] _queue_cancelAutoInstallStartInstallTask];
  [a1[4] _queue_invalidateRetryAutoInstallaTimer];
  v2 = [@"com.apple.softwareupdate.autoinstall.startInstall" UTF8String];
  v3 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __82__SUScheduler_scheduleAutoInstallStartInstallTaskWithDate_descriptor_fromFailure___block_invoke_2;
  handler[3] = &unk_279CAC9B0;
  v4 = a1[5];
  v5 = a1[4];
  v7 = v4;
  v8 = v5;
  v9 = a1[6];
  xpc_activity_register(v2, v3, handler);
}

void __82__SUScheduler_scheduleAutoInstallStartInstallTaskWithDate_descriptor_fromFailure___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    SULogInfo(@"DAS fired autoInstallStart activity", v5, v6, v7, v8, v9, v10, v11, v32);
    [*(a1 + 40) setAutoinstallActivity:v3];
    if (xpc_activity_should_defer(v3))
    {
      if (!xpc_activity_set_state(v3, 3))
      {
        v23 = +[SUUtility mainWorkQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __82__SUScheduler_scheduleAutoInstallStartInstallTaskWithDate_descriptor_fromFailure___block_invoke_3;
        block[3] = &unk_279CAA708;
        block[4] = *(a1 + 40);
        dispatch_async(v23, block);
      }
    }

    else
    {
      if (xpc_activity_set_state(v3, 4))
      {
        SULogInfo(@"Successfully set %@ activity state to XPC_ACTIVITY_STATE_CONTINUE", v25, v26, v27, v28, v29, v30, v31, @"com.apple.softwareupdate.autoinstall.startInstall");
      }

      [*(a1 + 40) _queue_handleAutoInstallStart:@"com.apple.softwareupdate.autoinstall.startInstall" info:0];
    }

    goto LABEL_14;
  }

  if (state)
  {
    v32 = state;
    v24 = @"Unknown XPC activity state (%ld) for activity %@";
LABEL_10:
    SULogInfo(v24, v5, v6, v7, v8, v9, v10, v11, v32);
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v12 = xpc_activity_copy_criteria(v3);
  if (!v12)
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    if (v13)
    {
      v14 = v13;
      v15 = [SUUtility prettyPrintDate:*(a1 + 32)];
      SULogInfo(@"Scheduled autoInstall start time for: %@", v16, v17, v18, v19, v20, v21, v22, v15);

      v12 = [*(a1 + 40) _autoInstallActivityCriteriaWithInstallDate:*(a1 + 32) descriptor:*(a1 + 48)];

      xpc_activity_set_criteria(v3, v12);
      goto LABEL_15;
    }

    v24 = @"Failed to schedule AutoInstall start task";
    goto LABEL_10;
  }

LABEL_15:
}

uint64_t __82__SUScheduler_scheduleAutoInstallStartInstallTaskWithDate_descriptor_fromFailure___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SULogInfo(@"Attempted to defer autoInstallStart activity but failed.", a2, a3, a4, a5, a6, a7, a8, v11);
  v9 = *(*(a1 + 32) + 64);

  return [v9 trySchedulingAutoInstallAgainLater];
}

void __82__SUScheduler_scheduleAutoInstallStartInstallTaskWithDate_descriptor_fromFailure___block_invoke_4(double *a1)
{
  v2 = MEMORY[0x277CBEBB8];
  v3 = a1[6];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__SUScheduler_scheduleAutoInstallStartInstallTaskWithDate_descriptor_fromFailure___block_invoke_5;
  v18[3] = &unk_279CAC9D8;
  v4 = *(a1 + 5);
  *&v18[4] = a1[4];
  v19 = v4;
  v5 = [v2 timerWithTimeInterval:0 repeats:v18 block:v3];
  v6 = *(a1 + 4);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v8 addTimer:*(*(a1 + 4) + 40) forMode:*MEMORY[0x277CBE640]];

  v16 = [*(*(a1 + 4) + 40) fireDate];
  v17 = *(*(a1 + 4) + 40);
  SULogInfo(@"%s: Try to reschedule %@ on %@ due to a previous failure; timer (%p)", v9, v10, v11, v12, v13, v14, v15, "[SUScheduler scheduleAutoInstallStartInstallTaskWithDate:descriptor:fromFailure:]_block_invoke_4");
}

void __82__SUScheduler_scheduleAutoInstallStartInstallTaskWithDate_descriptor_fromFailure___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SULogInfo(@"%s: retryAutoInstallTimer(%@) fired!", a2, a3, a4, a5, a6, a7, a8, "[SUScheduler scheduleAutoInstallStartInstallTaskWithDate:descriptor:fromFailure:]_block_invoke_5");
  dispatch_assert_queue_not_V2(*(*(a1 + 32) + 48));
  v9 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 48);

  dispatch_sync(v10, v9);
}

- (void)scheduleSimulatedAutoInstallTask
{
  if (+[SUUtility currentReleaseTypeIsInternal])
  {
    SULogInfo(@"%s: Scheduled simulated auto install activity", v3, v4, v5, v6, v7, v8, v9, "[SUScheduler scheduleSimulatedAutoInstallTask]");
    v10 = [(SUScheduler *)self _autoInstallActivityCriteriaWithInstallDate:0 descriptor:0];
    uTF8String = [@"com.apple.softwareupdate.autoinstall.simulated.startInstall" UTF8String];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __47__SUScheduler_scheduleSimulatedAutoInstallTask__block_invoke;
    handler[3] = &unk_279CABC00;
    handler[4] = self;
    xpc_activity_register(uTF8String, v10, handler);
  }
}

void __47__SUScheduler_scheduleSimulatedAutoInstallTask__block_invoke(uint64_t a1, void *a2)
{
  activity = a2;
  v3 = xpc_activity_get_state(activity) == 2;
  v4 = activity;
  if (v3)
  {
    if (xpc_activity_should_defer(activity) && xpc_activity_set_state(activity, 3))
    {
      SULogInfo(@"%s: Simulated auto install activity deferred", v5, v6, v7, v8, v9, v10, v11, "[SUScheduler scheduleSimulatedAutoInstallTask]_block_invoke");
    }

    else
    {
      SULogInfo(@"%s: Simulated auto install activity called", v5, v6, v7, v8, v9, v10, v11, "[SUScheduler scheduleSimulatedAutoInstallTask]_block_invoke");
      [*(*(a1 + 32) + 56) reportSimulatedOTAAutoTriggeredEvent];
      if (!xpc_activity_set_state(activity, 5))
      {
        SULogInfo(@"%s: Failed to set %@ activity state to XPC_ACTIVITY_STATE_DONE", v12, v13, v14, v15, v16, v17, v18, "[SUScheduler scheduleSimulatedAutoInstallTask]_block_invoke");
      }

      xpc_activity_unregister([@"com.apple.softwareupdate.autoinstall.simulated.startInstall" UTF8String]);
    }

    v4 = activity;
  }
}

- (void)setAutoInstallActivityStateDone
{
  schedulerQueue = self->_schedulerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUScheduler_setAutoInstallActivityStateDone__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
}

void __46__SUScheduler_setAutoInstallActivityStateDone__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  if (v1)
  {
    if (xpc_activity_set_state(v1, 5))
    {
      v9 = @"Succeeded to set %@ activity state to XPC_ACTIVITY_STATE_DONE";
    }

    else
    {
      v9 = @"Failed to set %@ activity state to XPC_ACTIVITY_STATE_DONE";
    }

    SULogInfo(v9, v2, v3, v4, v5, v6, v7, v8, @"com.apple.softwareupdate.autoinstall.startInstall");
  }
}

- (void)cancelAutoInstallStartInstallTask
{
  schedulerQueue = self->_schedulerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUScheduler_cancelAutoInstallStartInstallTask__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
}

BOOL __48__SUScheduler_cancelAutoInstallStartInstallTask__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_cancelAutoInstallStartInstallTask];
  [*(a1 + 32) _queue_invalidateRetryAutoInstallaTimer];

  return +[SUUtility deleteAUKeepAliveFile];
}

- (void)_queue_cancelAutoInstallStartInstallTask
{
  dispatch_assert_queue_V2(self->_schedulerQueue);
  if (self->_autoInstallActivity)
  {
    [(SUScheduler *)self _queue_setAutoinstallActivity:0];
  }

  xpc_activity_unregister([@"com.apple.softwareupdate.autoinstall.startInstall" UTF8String]);
  SULogInfo(@"%s: Tried to cancel the previous auto-install activity %@", v3, v4, v5, v6, v7, v8, v9, "[SUScheduler _queue_cancelAutoInstallStartInstallTask]");
}

- (void)_invalidateRetryAutoInstallaTimer
{
  retryAutoInstallTimer = self->_retryAutoInstallTimer;
  SULogInfo(@"%s: About to invalidate the retryAutoInstallTimer (%@)", a2, v2, v3, v4, v5, v6, v7, "[SUScheduler _invalidateRetryAutoInstallaTimer]");
  v9 = self->_retryAutoInstallTimer;
  if (v9)
  {
    isValid = [(NSTimer *)v9 isValid];
    v9 = self->_retryAutoInstallTimer;
    if (isValid)
    {
      [(NSTimer *)v9 invalidate];
      v9 = self->_retryAutoInstallTimer;
    }
  }

  self->_retryAutoInstallTimer = 0;
}

- (void)_queue_invalidateRetryAutoInstallaTimer
{
  dispatch_assert_queue_V2(self->_schedulerQueue);

  [(SUScheduler *)self _invalidateRetryAutoInstallaTimer];
}

- (void)schedulePresentAutoUpdateBanner
{
  v3 = +[SUPreferences sharedInstance];
  bannerDelay = [v3 bannerDelay];

  v4 = 0x409C200000000000;
  if (bannerDelay)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [bannerDelay doubleValue];
      v4 = v5;
    }
  }

  v6 = SULogBadging();
  SULogInfoForSubsystem(v6, @"Delaying auto update for %f seconds", v7, v8, v9, v10, v11, v12, v4);

  v13 = objc_alloc_init(MEMORY[0x277D64148]);
  [v13 setWaking:2];
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:*&v4];
  [v13 setRunDate:v14];

  v15 = [objc_alloc(MEMORY[0x277D64140]) initWithActivityName:@"com.apple.softwareupdateservicesd.activity.presentBanner" options:v13];
  [(SUScheduler *)self _scheduleActivity:v15];
}

- (void)cancelPresentAutoUpdateBanner
{
  schedulerQueue = self->_schedulerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUScheduler_cancelPresentAutoUpdateBanner__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
}

uint64_t __44__SUScheduler_cancelPresentAutoUpdateBanner__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_unscheduleAllActivitiesWithName:@"com.apple.softwareupdateservicesd.activity.presentBanner"];
  v2 = *(a1 + 32);

  return [v2 _queue_handleCancelPresentBannerOnUnlock];
}

- (void)scheduleSplatFollowUpNotification:(id)notification
{
  v4 = MEMORY[0x277D64148];
  notificationCopy = notification;
  v15 = objc_alloc_init(v4);
  [v15 setWaking:2];
  [v15 setRunDate:notificationCopy];
  v6 = [objc_alloc(MEMORY[0x277D64140]) initWithActivityName:@"com.apple.softwareupdateservicesd.activity.splatFollowUp" options:v15];
  [(SUScheduler *)self _scheduleActivity:v6];
  v7 = [SUUtility prettyPrintDate:notificationCopy];

  SULogInfo(@"Scheduled splat follow-up notification for %@", v8, v9, v10, v11, v12, v13, v14, v7);
}

- (void)cancelSplatFollowUpNotification
{
  schedulerQueue = self->_schedulerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUScheduler_cancelSplatFollowUpNotification__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
  SULogInfo(@"Cancelled splat follow-up notification", v3, v4, v5, v6, v7, v8, v9, v10);
}

- (void)scheduleRollbackReboot:(id)reboot
{
  v4 = MEMORY[0x277D64148];
  rebootCopy = reboot;
  v7 = objc_alloc_init(v4);
  [v7 setWaking:2];
  [v7 setRunDate:rebootCopy];

  v6 = [objc_alloc(MEMORY[0x277D64140]) initWithActivityName:@"com.apple.softwareupdateservicesd.activity.rollbackReboot" options:v7];
  [(SUScheduler *)self _scheduleActivity:v6];
}

- (void)cancelRollbackReboot
{
  schedulerQueue = self->_schedulerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SUScheduler_cancelRollbackReboot__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
}

- (void)scheduleInstallAlertRegistration:(id)registration
{
  v4 = MEMORY[0x277D64148];
  registrationCopy = registration;
  v7 = objc_alloc_init(v4);
  [v7 setBatteryLevelGreaterThan:&unk_287B6F6D0];
  [v7 setPhoneCallState:1];
  [v7 setCarplayState:1];
  [v7 setMediaPlayingState:1];
  [v7 setNetworkState:2];
  [v7 setWaking:2];
  [v7 setRunDate:registrationCopy];

  v6 = [objc_alloc(MEMORY[0x277D64140]) initWithActivityName:@"com.apple.softwareupdateservicesd.activity.installAlert" options:v7];
  [(SUScheduler *)self _scheduleActivity:v6];
}

- (void)cancelInstallAlertRegistration
{
  +[SUUtility deleteKeepAliveFile];
  schedulerQueue = self->_schedulerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUScheduler_cancelInstallAlertRegistration__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
}

- (void)cancelInstallAlertRegistrationButKeepAlive
{
  schedulerQueue = self->_schedulerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SUScheduler_cancelInstallAlertRegistrationButKeepAlive__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
}

- (void)scheduleAnalyticsSubmissionIfNecessary
{
  v3 = [(SUScheduler *)self _activityIsScheduled:@"com.apple.softwareupdateservicesd.activity.analyticsSubmission" cancelIfExpired:1];
  if (self->_useSUCoreXPCActivityManager && [(SUScheduler *)self activityWasPreviouslyScheduledForFutureDate:@"com.apple.softwareupdateservicesd.activity.analyticsSubmission" passed:0 copy:0])
  {
    v4 = [(SUCoreXPCActivityManager *)self->_coreXPCActivityScheduler getExpectedRunDateForActivity:@"com.apple.softwareupdateservicesd.activity.analyticsSubmission"];
    v5 = [SUUtility prettyPrintDate:v4];
    SULogInfo(@"Found previously tracked but currently unscheduled analytics submission event expecte to run at %@. Will reschedule", v6, v7, v8, v9, v10, v11, v12, v5);
  }

  else if (v3)
  {
    v41 = SULogAnalytics();
    SULogInfoForSubsystem(v41, @"Analytics event already scheduled", v13, v14, v15, v16, v17, v18, v40);
    goto LABEL_13;
  }

  v19 = +[SUUtility currentReleaseType];
  v20 = [v19 isEqualToString:@"Internal"];

  if (v20 && (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v21 = objc_claimAutoreleasedReturnValue(), [v21 analyticsSubmissionIntervalOverride], v22 = objc_claimAutoreleasedReturnValue(), v21, v22))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = SULogAnalytics();
      unsignedIntValue = [v22 unsignedIntValue];
      SULogInfoForSubsystem(v23, @"Setting analytics submission delay to %u", v25, v26, v27, v28, v29, v30, unsignedIntValue);
    }

    v31 = +[SUUtility randomIntWithMinVal:maxVal:](SUUtility, "randomIntWithMinVal:maxVal:", 30, 60 * [v22 unsignedIntValue]);
  }

  else
  {
    v31 = [SUUtility randomIntWithMinVal:60 maxVal:86400];
  }

  v41 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v31];
  v32 = [SUUtility prettyPrintDate:v41];
  SULogInfo(@"Expired or no analytics submission scheduled. Rescheduling for %@", v33, v34, v35, v36, v37, v38, v39, v32);

  [(SUScheduler *)self scheduleAnalyticsSubmission:v41];
LABEL_13:
}

- (void)scheduleAnalyticsSubmission:(id)submission
{
  v4 = MEMORY[0x277D64148];
  submissionCopy = submission;
  v7 = objc_alloc_init(v4);
  [v7 setNetworkState:2];
  [v7 setWaking:2];
  [v7 setRunDate:submissionCopy];

  v6 = [objc_alloc(MEMORY[0x277D64140]) initWithActivityName:@"com.apple.softwareupdateservicesd.activity.analyticsSubmission" options:v7];
  [(SUScheduler *)self _scheduleActivity:v6];
}

- (void)_scheduleActivity:(id)activity
{
  activityCopy = activity;
  schedulerQueue = self->_schedulerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SUScheduler__scheduleActivity___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v8 = activityCopy;
  selfCopy = self;
  v6 = activityCopy;
  dispatch_async(schedulerQueue, v7);
}

void __33__SUScheduler__scheduleActivity___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(*(a1 + 40) + 16);
    v12 = [v10 activityName];
    v13 = [*(a1 + 32) runDate];
    v21 = [SUUtility prettyPrintDate:v13];
    if (v11 != 1)
    {
      SULogInfo(@"Scheduling Activity (%@, runDate = %@) with legacy scheduler", v14, v15, v16, v17, v18, v19, v20, v12);

      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      v26 = *(v25 + 8);
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __33__SUScheduler__scheduleActivity___block_invoke_4;
      v65[3] = &unk_279CACA28;
      v65[4] = v25;
      [v26 scheduleActivity:v24 withHandler:v65];
      return;
    }

    SULogInfo(@"Scheduling Activity (%@, runDate = %@) with XPCActivity scheduler", v14, v15, v16, v17, v18, v19, v20, v12);

    v22 = *(*(a1 + 40) + 24);
    v23 = [*(a1 + 32) activityName];
    if ([v22 isActivityScheduled:v23])
    {
    }

    else
    {
      v27 = *(*(a1 + 40) + 24);
      v28 = [*(a1 + 32) activityName];
      LODWORD(v27) = [v27 isActivityTrackedButUnsheduled:v28];

      if (!v27)
      {
LABEL_11:
        v39 = objc_alloc_init(MEMORY[0x277D64148]);
        v40 = [*(a1 + 32) runDate];
        [v39 setRunDate:v40];

        v41 = [*(a1 + 32) batteryLevelGreaterThan];
        [v39 setBatteryLevelGreaterThan:v41];

        v42 = [*(a1 + 32) batteryLevelLessThan];
        [v39 setBatteryLevelLessThan:v42];

        [v39 setPlugInState:{objc_msgSend(*(a1 + 32), "plugInState")}];
        [v39 setScreenOnState:{objc_msgSend(*(a1 + 32), "screenOnState")}];
        [v39 setNetworkState:{objc_msgSend(*(a1 + 32), "networkState")}];
        [v39 setWifiState:{objc_msgSend(*(a1 + 32), "wifiState")}];
        [v39 setPhoneCallState:{objc_msgSend(*(a1 + 32), "phoneCallState")}];
        [v39 setCarplayState:{objc_msgSend(*(a1 + 32), "carplayState")}];
        [v39 setMediaPlayingState:{objc_msgSend(*(a1 + 32), "mediaPlayingState")}];
        [v39 setWaking:{objc_msgSend(*(a1 + 32), "waking")}];
        v43 = [*(a1 + 32) activityName];
        SULogInfo(@"The options for activity %@ are %@", v44, v45, v46, v47, v48, v49, v50, v43);

        v51 = objc_alloc(MEMORY[0x277D641F8]);
        v52 = [*(a1 + 32) activityName];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __33__SUScheduler__scheduleActivity___block_invoke_2;
        v66[3] = &unk_279CABC00;
        v66[4] = *(a1 + 40);
        v53 = [v51 init:v52 options:v39 handler:v66];

        [*(*(a1 + 40) + 24) scheduleActivity:v53];
        v54 = *(*(a1 + 40) + 24);
        v55 = [*(a1 + 32) activityName];
        LODWORD(v54) = [v54 isActivityScheduled:v55];

        v63 = [*(a1 + 32) activityName];
        if (v54)
        {
          v64 = @"Successfully scheduled activity %@";
        }

        else
        {
          v64 = @"Failed to schedule activity %@";
        }

        SULogInfo(v64, v56, v57, v58, v59, v60, v61, v62, v63);

        return;
      }
    }

    v29 = [*(a1 + 32) activityName];
    SULogInfo(@"Unscheduling existing activity %@ before reshedule", v30, v31, v32, v33, v34, v35, v36, v29);

    v37 = *(*(a1 + 40) + 24);
    v38 = [*(a1 + 32) activityName];
    [v37 unscheduleActivity:v38];

    goto LABEL_11;
  }

  SULogInfo(@"Cannot schedule null activity", a2, a3, a4, a5, a6, a7, a8, a9);
}

void __33__SUScheduler__scheduleActivity___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = xpc_activity_copy_identifier();
  if (v10)
  {
    v18 = v10;
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
    free(v18);
    v20 = *(a1 + 32);
    v21 = *(v20 + 48);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __33__SUScheduler__scheduleActivity___block_invoke_3;
    v23[3] = &unk_279CAA7C0;
    v23[4] = v20;
    v24 = v19;
    v22 = v19;
    dispatch_async(v21, v23);
  }

  else
  {

    SULogInfo(@"Failed to read activity name from XPC activity. Unable to run scheduled task", v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void __33__SUScheduler__scheduleActivity___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUScheduler__scheduleActivity___block_invoke_5;
  block[3] = &unk_279CAA798;
  block[4] = v7;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

- (void)_unscheduleActivity:(id)activity
{
  activityCopy = activity;
  dispatch_assert_queue_not_V2(self->_schedulerQueue);
  schedulerQueue = self->_schedulerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUScheduler__unscheduleActivity___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v8 = activityCopy;
  selfCopy = self;
  v6 = activityCopy;
  dispatch_sync(schedulerQueue, v7);
}

void __35__SUScheduler__unscheduleActivity___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 32))
  {
    *(*(a1 + 40) + 16);
    SULogInfo(@"Unscheduling activity %@ with %@ scheduler", a2, a3, a4, a5, a6, a7, a8, *(a1 + 32));
    v10 = *(a1 + 40);
    if (*(v10 + 16) == 1)
    {
      v11 = *(v10 + 24);
      v12 = [*(a1 + 32) activityName];
      LODWORD(v11) = [v11 unscheduleActivity:v12];

      v13 = [*(a1 + 32) activityName];
      v22 = v13;
      if (v11)
      {
        SULogInfo(@"Failed to unshedule activity %@", v14, v15, v16, v17, v18, v19, v20, v13);
      }

      else
      {
        SULogInfo(@"Successfully unscheduled activity %@", v14, v15, v16, v17, v18, v19, v20, v13);
      }
    }

    else
    {
      v21 = *(a1 + 32);

      [v10 _queue_unscheduleActivity:v21];
    }
  }

  else
  {

    SULogInfo(@"Cannot unschedule null activity", a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

- (void)_queue_unscheduleAllActivitiesWithName:(id)name
{
  nameCopy = name;
  dispatch_assert_queue_V2(self->_schedulerQueue);
  if (self->_useSUCoreXPCActivityManager)
  {
    if ([(SUCoreXPCActivityManager *)self->_coreXPCActivityScheduler unscheduleActivity:nameCopy])
    {
      SULogInfo(@"Failed to unshedule activity %@", v4, v5, v6, v7, v8, v9, v10, nameCopy);
    }

    else
    {
      SULogInfo(@"Successfully unscheduled activity %@", v4, v5, v6, v7, v8, v9, v10, nameCopy);
    }
  }

  else
  {
    [(SUCoreActivityScheduler *)self->_coreScheduler unregisterActivitiesWithName:nameCopy];
  }
}

- (void)_queue_unscheduleActivity:(id)activity
{
  schedulerQueue = self->_schedulerQueue;
  activityCopy = activity;
  dispatch_assert_queue_V2(schedulerQueue);
  if (self->_useSUCoreXPCActivityManager)
  {
    activityName = [activityCopy activityName];

    [(SUScheduler *)self _queue_unscheduleAllActivitiesWithName:activityName];
    activityCopy = activityName;
  }

  else
  {
    [(SUCoreActivityScheduler *)self->_coreScheduler unregisterActivity:activityCopy];
  }
}

- (void)handleXPCEvent:(id)event
{
  eventCopy = event;
  schedulerQueue = self->_schedulerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__SUScheduler_handleXPCEvent___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(schedulerQueue, v7);
}

- (void)_queue_handleActivity:(id)activity info:(id)info
{
  activityCopy = activity;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_schedulerQueue);
  SULogInfo(@"Received activity: %@ with info: %@", v7, v8, v9, v10, v11, v12, v13, activityCopy);
  v14 = +[SUTransactionManager sharedInstance];
  [v14 beginTransaction:@"schedulerAction" keepAlive:1];
  if ([activityCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.autoScan"] || objc_msgSend(activityCopy, "isEqualToString:", @"com.apple.softwareupdateservicesd.activity.emergencyAutoScan") || objc_msgSend(activityCopy, "isEqualToString:", @"com.apple.softwareupdateservicesd.activity.splatAutoScan"))
  {
    selfCopy2 = self;
    v16 = activityCopy;
    v17 = infoCopy;
    v18 = 1;
LABEL_5:
    [(SUScheduler *)selfCopy2 _queue_handleAutoScan:v16 info:v17 rescheduler:v18];
    goto LABEL_6;
  }

  if ([activityCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.delayEndScan"])
  {
    selfCopy2 = self;
    v16 = activityCopy;
    v17 = infoCopy;
    v18 = 0;
    goto LABEL_5;
  }

  if ([activityCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.autoDownload"])
  {
    [(SUScheduler *)self _queue_handleAutoDownload:activityCopy info:infoCopy];
  }

  else if ([activityCopy isEqualToString:@"com.apple.softwareupdate.autoinstall.startInstall"])
  {
    [(SUScheduler *)self _queue_handleAutoInstallStart:activityCopy info:infoCopy];
  }

  else if ([activityCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.autoInstallEnd"])
  {
    [(SUScheduler *)self _queue_handleAutoInstallEnd:activityCopy info:infoCopy];
  }

  else if ([activityCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.autoInstallUnlock"])
  {
    [(SUScheduler *)self _queue_handleAutoInstallUnlock:activityCopy info:infoCopy];
  }

  else if ([activityCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.autoInstallGetKeybag"])
  {
    [(SUScheduler *)self _queue_handleAutoInstallGetKeybag:activityCopy info:infoCopy];
  }

  else if ([activityCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.installAlert"])
  {
    [(SUScheduler *)self _queue_handleInstallAlert:activityCopy info:infoCopy];
  }

  else if ([activityCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.presentBanner"])
  {
    [(SUScheduler *)self _queue_handlePresentBanner:activityCopy info:infoCopy];
  }

  else if ([activityCopy isEqualToString:@"com.apple.softwareupdateservicesd.SUCoreConfigScheduledScan"])
  {
    [(SUScheduler *)self _queue_handleServerConfigScan:activityCopy info:infoCopy];
  }

  else if ([activityCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.analyticsSubmission"])
  {
    [(SUScheduler *)self _queue_handleAnalyticsSubmission:activityCopy info:infoCopy];
  }

  else if ([activityCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.rollbackReboot"])
  {
    [(SUScheduler *)self _queue_handleRollbackReboot:activityCopy info:infoCopy];
  }

  else if ([activityCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.splatFollowUp"])
  {
    [(SUScheduler *)self _queue_handleSplatFollowUp:activityCopy info:infoCopy];
  }

  else
  {
    SULogError(@"Unknown activity: %@", v19, v20, v21, v22, v23, v24, v25, activityCopy);
  }

LABEL_6:
  [v14 endTransaction:@"schedulerAction"];
}

- (double)_autoDownloadTimeInterval
{
  v3 = +[SUPreferences sharedInstance];
  autoDownloadOverrideInterval = [v3 autoDownloadOverrideInterval];

  if (autoDownloadOverrideInterval)
  {
    v5 = +[SUPreferences sharedInstance];
    autoDownloadOverrideInterval2 = [v5 autoDownloadOverrideInterval];
    SULogInfo(@"[Auto download] Using auto download override value: %@", v7, v8, v9, v10, v11, v12, v13, autoDownloadOverrideInterval2);

    v14 = +[SUPreferences sharedInstance];
    autoDownloadOverrideInterval3 = [v14 autoDownloadOverrideInterval];
    intValue = [autoDownloadOverrideInterval3 intValue];

LABEL_5:
    return intValue;
  }

  softwareUpdateAutoScanInterval = [(SUServerConfigurationManager *)self->_serverConfigManager softwareUpdateAutoScanInterval];
  if (softwareUpdateAutoScanInterval)
  {
    v14 = softwareUpdateAutoScanInterval;
    intValue = (60 * [softwareUpdateAutoScanInterval intValue]);
    intValue2 = [v14 intValue];
    SULogInfo(@"[Auto download] Using server configured auto scan interval - download once every %d minutes", v19, v20, v21, v22, v23, v24, v25, intValue2);
    goto LABEL_5;
  }

  +[SUUtility autoDownloadTimeInterval];
  return result;
}

- (BOOL)activityWasPreviouslyScheduledForFutureDate:(id)date passed:(BOOL *)passed copy:(id *)copy
{
  dateCopy = date;
  if (!self->_useSUCoreXPCActivityManager)
  {
    SULogInfo(@"%s is not supported in this configuration", v8, v9, v10, v11, v12, v13, v14, "[SUScheduler activityWasPreviouslyScheduledForFutureDate:passed:copy:]");
LABEL_13:
    v38 = 0;
    goto LABEL_14;
  }

  v23 = [(SUCoreXPCActivityManager *)self->_coreXPCActivityScheduler isActivityTrackedButUnsheduled:dateCopy];
  if (copy)
  {
    v24 = [(SUCoreXPCActivityManager *)self->_coreXPCActivityScheduler getActivityForName:dateCopy];
    if (v24)
    {
      v25 = objc_alloc(MEMORY[0x277D64140]);
      activityName = [v24 activityName];
      activityOptions = [v24 activityOptions];
      *copy = [v25 initWithActivityName:activityName options:activityOptions];
    }
  }

  if (!v23)
  {
    SULogInfo(@"Activity %@ is not one that was previously tracked but unsheduled", v16, v17, v18, v19, v20, v21, v22, dateCopy);
    goto LABEL_13;
  }

  v28 = [(SUCoreXPCActivityManager *)self->_coreXPCActivityScheduler getExpectedRunDateForActivity:dateCopy];
  if (v28 && ([MEMORY[0x277CBEAA8] date], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "compare:", v29), v29, v30 == -1))
  {
    v48 = [MEMORY[0x277D64400] stringFromDate:v28];
    SULogInfo(@"Activity %@ is tracked, not currently scheduled and has a run date(%@) in the past", v40, v41, v42, v43, v44, v45, v46, dateCopy);

    v38 = 0;
    if (passed)
    {
      *passed = 1;
    }
  }

  else
  {
    v47 = [MEMORY[0x277D64400] stringFromDate:v28];
    SULogInfo(@"Activity %@ is tracked, not currently scheduled and has a rundate(%@) in the future", v31, v32, v33, v34, v35, v36, v37, dateCopy);

    v38 = 1;
  }

LABEL_14:
  return v38;
}

- (BOOL)_activityIsScheduled:(id)scheduled cancelIfExpired:(BOOL)expired scheduledActivity:(id *)activity
{
  expiredCopy = expired;
  v71 = *MEMORY[0x277D85DE8];
  scheduledCopy = scheduled;
  if (self->_useSUCoreXPCActivityManager)
  {
    v8 = [(SUCoreXPCActivityManager *)self->_coreXPCActivityScheduler isActivityTrackedButUnsheduled:scheduledCopy];
    v16 = [(SUCoreXPCActivityManager *)self->_coreXPCActivityScheduler isActivityScheduled:scheduledCopy];
    if (activity)
    {
      v17 = [(SUCoreXPCActivityManager *)self->_coreXPCActivityScheduler getActivityForName:scheduledCopy];
      if (v17)
      {
        v18 = objc_alloc(MEMORY[0x277D64140]);
        activityName = [v17 activityName];
        activityOptions = [v17 activityOptions];
        *activity = [v18 initWithActivityName:activityName options:activityOptions];
      }
    }

    if (((v16 | v8) & 1) == 0)
    {
      SULogInfo(@"Activity %@ is not scheduled", v9, v10, v11, v12, v13, v14, v15, scheduledCopy);
      goto LABEL_32;
    }

    SULogInfo(@"Activity %@ is %s", v9, v10, v11, v12, v13, v14, v15, scheduledCopy);
    if (expiredCopy)
    {
      v21 = [(SUCoreXPCActivityManager *)self->_coreXPCActivityScheduler getExpectedRunDateForActivity:scheduledCopy];
      if (!v21 || ([MEMORY[0x277CBEAA8] date], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "compare:", v22), v22, v23 != -1))
      {

        goto LABEL_37;
      }

      SULogInfo(@"Activity %@ is past its run date. Unscheduling", v24, v25, v26, v27, v28, v29, v30, scheduledCopy);
      [(SUCoreXPCActivityManager *)self->_coreXPCActivityScheduler unscheduleActivity:scheduledCopy];

LABEL_32:
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    copyScheduledActivities = [(SUCoreActivityScheduler *)self->_coreScheduler copyScheduledActivities];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = copyScheduledActivities;
    v32 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v32)
    {
      v33 = v32;
      activityCopy = activity;
      selfCopy = self;
      v34 = 0;
      v35 = 0;
      v36 = *v67;
      v64 = scheduledCopy;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v67 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v66 + 1) + 8 * i);
          activityName2 = [v38 activityName];
          v40 = [activityName2 isEqualToString:scheduledCopy];

          if (v40)
          {
            v48 = v35 + 1;
            SULogInfo(@"Found scheduled activity: %@", v41, v42, v43, v44, v45, v46, v47, v38);
            runDate = [v38 runDate];
            if (runDate)
            {
              v50 = runDate;
              v63 = v35;
              runDate2 = [v38 runDate];
              date = [MEMORY[0x277CBEAA8] date];
              v53 = v33;
              v54 = v36;
              v55 = v34;
              v56 = [runDate2 compare:date];

              v57 = v56 == -1;
              v34 = v55;
              v36 = v54;
              v33 = v53;
              v57 = !v57 || !expiredCopy;
              if (!v57)
              {
                [(SUScheduler *)selfCopy _unscheduleActivity:v38];
                v48 = v63;
              }
            }

            if (v48 < 1)
            {
              v35 = v48;
              scheduledCopy = v64;
            }

            else
            {
              scheduledCopy = v64;
              if (!v34)
              {
                v34 = v38;
              }

              v35 = v48;
            }
          }
        }

        v33 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v33);
      LOBYTE(v16) = v35 > 0;
      activity = activityCopy;
    }

    else
    {
      v34 = 0;
      LOBYTE(v16) = 0;
    }

    if (activity)
    {
      *activity = [v34 copy];
    }
  }

LABEL_37:

  v58 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)nextScheduledAutoScan
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_useSUCoreXPCActivityManager)
  {
    if ([(SUCoreXPCActivityManager *)self->_coreXPCActivityScheduler isActivityScheduled:@"com.apple.softwareupdateservicesd.activity.autoScan"])
    {
      runDate = [(SUCoreXPCActivityManager *)self->_coreXPCActivityScheduler getExpectedRunDateForActivity:@"com.apple.softwareupdateservicesd.activity.autoScan"];
      goto LABEL_15;
    }
  }

  else
  {
    copyScheduledActivities = [(SUCoreActivityScheduler *)self->_coreScheduler copyScheduledActivities];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = copyScheduledActivities;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          activityName = [v10 activityName];
          v12 = [activityName isEqualToString:@"com.apple.softwareupdateservicesd.activity.autoScan"];

          if (v12)
          {
            runDate = [v10 runDate];

            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  runDate = 0;
LABEL_15:
  v13 = *MEMORY[0x277D85DE8];

  return runDate;
}

- (void)_queue_setAutoinstallActivity:(id)activity
{
  activityCopy = activity;
  dispatch_assert_queue_V2(self->_schedulerQueue);
  autoInstallActivity = self->_autoInstallActivity;
  self->_autoInstallActivity = activityCopy;
}

- (void)setAutoinstallActivity:(id)activity
{
  activityCopy = activity;
  dispatch_assert_queue_not_V2(self->_schedulerQueue);
  schedulerQueue = self->_schedulerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SUScheduler_setAutoinstallActivity___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = activityCopy;
  v6 = activityCopy;
  dispatch_sync(schedulerQueue, v7);
}

- (void)_queue_handleScanIntervalConfigChange:(id)change
{
  dispatch_assert_queue_V2(self->_schedulerQueue);
  SULogInfo(@"Scan interval server configuration changed", v4, v5, v6, v7, v8, v9, v10, v14);
  nextScheduledAutoScan = [(SUScheduler *)self nextScheduledAutoScan];
  v11 = MEMORY[0x277CBEAA8];
  [(SUScheduler *)self _autoScanTimeIntervalForType:0];
  v12 = [v11 dateWithTimeIntervalSinceNow:?];
  if (!nextScheduledAutoScan && v12 || nextScheduledAutoScan && v12 && ([nextScheduledAutoScan laterDate:v12], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == nextScheduledAutoScan))
  {
    [(SUScheduler *)self cancelAllBackgroundScans];
    [(SUScheduler *)self scheduleBackgroundScan:v12];
  }
}

- (void)_queue_handleAutoScan:(id)scan info:(id)info rescheduler:(BOOL)rescheduler
{
  reschedulerCopy = rescheduler;
  scanCopy = scan;
  dispatch_assert_queue_V2(self->_schedulerQueue);
  SULogInfo(@"Handling auto scan: %@", v8, v9, v10, v11, v12, v13, v14, scanCopy);
  v15 = [(SUScheduler *)self scanTypeForActivityName:scanCopy];
  [(SUScheduler *)self _queue_unscheduleAllActivitiesWithName:scanCopy];
  if (reschedulerCopy)
  {
    v16 = +[SUUtility mainWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SUScheduler__queue_handleAutoScan_info_rescheduler___block_invoke;
    block[3] = &unk_279CACA78;
    block[4] = self;
    v19 = v15;
    v18 = scanCopy;
    dispatch_async(v16, block);
  }
}

void __54__SUScheduler__queue_handleAutoScan_info_rescheduler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 56);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SUScheduler__queue_handleAutoScan_info_rescheduler___block_invoke_2;
  v6[3] = &unk_279CACA50;
  v6[4] = v3;
  v7 = v2;
  v8 = *(a1 + 48);
  [v4 autoScanAndDownloadIfAvailable:v5 downloadNow:0 withResult:v6];
}

void __54__SUScheduler__queue_handleAutoScan_info_rescheduler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = MEMORY[0x277CBEAA8];
  [v1 _autoScanTimeIntervalForType:*(a1 + 48)];
  v4 = [v3 dateWithTimeIntervalSinceNow:?];
  [v1 scheduleBackgroundScan:v2 scanDate:v4];
}

- (int)scanTypeForActivityName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.autoScan"])
  {
    v4 = 0;
  }

  else if ([nameCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.emergencyAutoScan"])
  {
    v4 = 3;
  }

  else if ([nameCopy isEqualToString:@"com.apple.softwareupdateservicesd.activity.splatAutoScan"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_queue_handleAutoDownload:(id)download info:(id)info
{
  downloadCopy = download;
  SULogInfo(@"Handling auto download: %@", v6, v7, v8, v9, v10, v11, v12, downloadCopy);
  [(SUScheduler *)self _queue_unscheduleAllActivitiesWithName:downloadCopy];

  v13 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUScheduler__queue_handleAutoDownload_info___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v13, block);
}

- (void)_queue_handleAutoInstallStart:(id)start info:(id)info
{
  v5 = [SUUtility mainWorkQueue:start];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUScheduler__queue_handleAutoInstallStart_info___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)_queue_handleAutoInstallEnd:(id)end info:(id)info
{
  v5 = [SUUtility mainWorkQueue:end];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUScheduler__queue_handleAutoInstallEnd_info___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v5, block);
}

uint64_t __48__SUScheduler__queue_handleAutoInstallEnd_info___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 64) noteAutoInstallOperationDidExpire];
  v2 = *(a1 + 32);

  return [v2 cancelAutoInstallWindowExpirationTask];
}

- (void)_queue_handleAutoInstallUnlock:(id)unlock info:(id)info
{
  v5 = [SUUtility mainWorkQueue:unlock];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUScheduler__queue_handleAutoInstallUnlock_info___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v5, block);
}

uint64_t __51__SUScheduler__queue_handleAutoInstallUnlock_info___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 64) noteAutoInstallOperationUnlockWindowDidBegin];
  v2 = *(a1 + 32);

  return [v2 cancelAutoInstallUnlockWindowStartTask];
}

- (void)_queue_handleAutoInstallGetKeybag:(id)keybag info:(id)info
{
  v5 = [SUUtility mainWorkQueue:keybag];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SUScheduler__queue_handleAutoInstallGetKeybag_info___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v5, block);
}

void __54__SUScheduler__queue_handleAutoInstallGetKeybag_info___block_invoke(uint64_t a1)
{
  v12 = objc_opt_new();
  [v12 setPasscodePolicy:2];
  SULogInfo(@"%s: set passcode policy to required", v2, v3, v4, v5, v6, v7, v8, "[SUScheduler _queue_handleAutoInstallGetKeybag:info:]_block_invoke");
  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [v9 _next7OClockFrom:v10 after:126000.0];
  [v9 _scheduleAutoInstallGetKeybagTaskForDate:v11];
}

- (void)_queue_handleInstallAlert:(id)alert info:(id)info
{
  v5 = [SUUtility mainWorkQueue:alert];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUScheduler__queue_handleInstallAlert_info___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)_queue_handlePresentBanner:(id)banner info:(id)info
{
  v5 = [SUUtility mainWorkQueue:banner];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUScheduler__queue_handlePresentBanner_info___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v5, block);
}

uint64_t __47__SUScheduler__queue_handlePresentBanner_info___block_invoke(uint64_t a1)
{
  v2 = +[SUKeybagInterface sharedInstance];
  v3 = [v2 isPasscodeLocked];

  v4 = *(*(a1 + 32) + 56);
  if (v3)
  {

    return [v4 addUnlockCallback:sel__presentAutoUpdateBannerOnUnlock forKey:@"unlockCallbackPresentAutoUpdateBanner"];
  }

  else
  {

    return [v4 presentAutoUpdateBanner:0];
  }
}

- (void)_queue_handleServerConfigScan:(id)scan info:(id)info
{
  v4 = [SUUtility mainWorkQueue:scan];
  dispatch_async(v4, &__block_literal_global_602);
}

void __50__SUScheduler__queue_handleServerConfigScan_info___block_invoke()
{
  v0 = [MEMORY[0x277D64168] sharedServerSettings];
  [v0 installServerSettings];
}

- (void)_queue_handleAnalyticsSubmission:(id)submission info:(id)info
{
  v5 = [SUUtility mainWorkQueue:submission];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUScheduler__queue_handleAnalyticsSubmission_info___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v5, block);
}

void __53__SUScheduler__queue_handleAnalyticsSubmission_info___block_invoke(uint64_t a1)
{
  v2 = [@"/var/MobileSoftwareUpdate/Controller/SUCoreAnalytics/" stringByAppendingPathComponent:@"updateDate"];
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v2];
  v4 = +[SUAnalyticsManager sharedManager];
  v5 = SULogAnalytics();
  SULogInfoForSubsystem(v5, @"Determining days since update", v6, v7, v8, v9, v10, v11, v71);

  if (v3)
  {
    v74 = 0;
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v74];
    if (v12)
    {
      v13 = v74 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      v14 = SULogAnalytics();
      SULogErrorForSubsystem(v14, @"Failed to read valid update date", v15, v16, v17, v18, v19, v20, v72);
LABEL_30:

      goto LABEL_31;
    }

    v14 = [[SUAnalyticsEvent alloc] initWithEventName:@"com.apple.SoftwareUpdate.EmbeddedSoftwareUpdateUsage"];
    v27 = [MEMORY[0x277CBEA80] currentCalendar];
    v28 = [MEMORY[0x277CBEAA8] date];
    v29 = [v27 components:16 fromDate:v12 toDate:v28 options:0];

    v30 = [v29 day];
    if ((v30 & 0x8000000000000000) != 0)
    {
      v31 = 0;
    }

    else if (v30 >= 0x1C)
    {
      if (v30 > 0x45)
      {
        if (v30 > 0x6F)
        {
          if (v30 > 0xDE)
          {
            v31 = 421;
            if (v30 != 223 && v30 <= 0x1A3)
            {
              v31 = v30 - v30 % 0x38u;
            }

            goto LABEL_20;
          }

          v33 = v30 / 0x1Cu;
          v34 = 28;
        }

        else
        {
          v33 = v30 / 0xEu;
          v34 = 14;
        }

        LOBYTE(v32) = v30 - v33 * v34;
      }

      else
      {
        v32 = v30 - 7 * ((((v30 - ((37 * v30) >> 8)) >> 1) + ((37 * v30) >> 8)) >> 2);
      }

      v31 = v30 - v32;
    }

    else
    {
      v31 = v30;
    }

LABEL_20:
    v35 = SULogAnalytics();
    SULogInfoForSubsystem(v35, @"%ld(bucketed) days since last successful ota", v36, v37, v38, v39, v40, v41, v31);

    v42 = [MEMORY[0x277CCABB0] numberWithInteger:v31];
    [(SUAnalyticsEvent *)v14 setEventPayloadEntry:@"DaysSinceLastUpdate" numberValue:v42];

    v43 = +[SUPreferences sharedInstance];
    v44 = [v43 isAutomaticUpdateV2Enabled];

    v45 = +[SUPreferences sharedInstance];
    v46 = [v45 autoUpdateForceOn];

    if (v46)
    {
      v47 = 1;
    }

    else
    {
      v48 = +[SUPreferences sharedInstance];
      v49 = [v48 autoUpdateForceOff];

      v47 = (v49 ^ 1) & v44;
    }

    [(SUAnalyticsEvent *)v14 setEventPayloadEntry:@"CurrentAutoUpdateStatus" BOOLValue:v47];
    v50 = +[SUPreferences sharedInstance];
    v51 = [v50 autoInstallSystemAndDataFiles];

    v52 = +[SUPreferences sharedInstance];
    v53 = [v52 autoInstallSystemDataFilesForceOn];

    if (v53)
    {
      v54 = 1;
    }

    else
    {
      v55 = +[SUPreferences sharedInstance];
      v56 = [v55 autoInstallSystemDataFilesForceOff];

      v54 = (v56 ^ 1) & v51;
    }

    [(SUAnalyticsEvent *)v14 setEventPayloadEntry:@"CurrentAutoInstallSystemDataFilesStatus" BOOLValue:v54];
    v57 = +[SUPreferences sharedInstance];
    v58 = [v57 autoInstallSecurityResponse];

    v59 = +[SUPreferences sharedInstance];
    v60 = [v59 autoInstallSecurityResponseForceOn];

    if (v60)
    {
      v61 = 1;
    }

    else
    {
      v62 = +[SUPreferences sharedInstance];
      v63 = [v62 autoInstallSecurityResponseForceOff];

      v61 = (v63 ^ 1) & v58;
    }

    [(SUAnalyticsEvent *)v14 setEventPayloadEntry:@"kSUCurrentAutoInstallSecurityResponseStatus" BOOLValue:v61];
    [v4 setEvent:v14];

    goto LABEL_30;
  }

  v12 = SULogAnalytics();
  SULogErrorForSubsystem(v12, @"Unable to read updateDate file..bailing", v21, v22, v23, v24, v25, v26, v72);
LABEL_31:

  v64 = SULogAnalytics();
  SULogInfoForSubsystem(v64, @"Submitting SU Coreanalytics events", v65, v66, v67, v68, v69, v70, v73);

  [v4 submitAllEvents];
  [*(a1 + 32) scheduleAnalyticsSubmissionIfNecessary];
}

- (void)_queue_handleCancelPresentBannerOnUnlock
{
  v3 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUScheduler__queue_handleCancelPresentBannerOnUnlock__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_queue_handleSplatFollowUp:(id)up info:(id)info
{
  SULogInfo(@"Handling splat follow-up notification activity", a2, up, info, v4, v5, v6, v7, v10);
  v9 = +[SUUtility mainWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUScheduler__queue_handleSplatFollowUp_info___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(v9, block);
}

- (void)serverConfigManager:(id)manager configValuesChanged:(id)changed
{
  changedCopy = changed;
  schedulerQueue = self->_schedulerQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SUScheduler_serverConfigManager_configValuesChanged___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v9 = changedCopy;
  selfCopy = self;
  v7 = changedCopy;
  dispatch_async(schedulerQueue, v8);
}

void __55__SUScheduler_serverConfigManager_configValuesChanged___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v47;
    v6 = *MEMORY[0x277D64518];
    v36 = *v47;
    v35 = v2;
    do
    {
      v7 = 0;
      v37 = v4;
      do
      {
        if (*v47 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v46 + 1) + 8 * v7);
        if ([v8 isEqualToString:@"Changed"])
        {
          v16 = [*(a1 + 32) objectForKeyedSubscript:v8];
          if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            SULogInfo(@"%@ is unexpected type", v9, v10, v11, v12, v13, v14, v15, @"Changed");
            goto LABEL_38;
          }

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v17 = [v16 allKeys];
          v18 = [v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v43;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v43 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                if ([*(*(&v42 + 1) + 8 * i) isEqualToString:v6])
                {
                  v22 = [v16 objectForKeyedSubscript:v6];
                  if (v22)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [*(a1 + 40) _queue_handleScanIntervalConfigChange:v22];
                    }
                  }
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
            }

            while (v19);
          }

          v2 = v35;
        }

        else
        {
          if (![v8 isEqualToString:@"Removed"])
          {
            goto LABEL_39;
          }

          v16 = [*(a1 + 32) objectForKeyedSubscript:v8];
          if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            SULogInfo(@"%@ is unexpected type", v23, v24, v25, v26, v27, v28, v29, @"Removed");
            goto LABEL_38;
          }

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v16 = v16;
          v30 = [v16 countByEnumeratingWithState:&v38 objects:v50 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v39;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v39 != v32)
                {
                  objc_enumerationMutation(v16);
                }

                if ([*(*(&v38 + 1) + 8 * j) isEqualToString:v6])
                {
                  [*(a1 + 40) _queue_handleScanIntervalConfigChange:0];
                }
              }

              v31 = [v16 countByEnumeratingWithState:&v38 objects:v50 count:16];
            }

            while (v31);
          }
        }

        v5 = v36;
        v4 = v37;
LABEL_38:

LABEL_39:
        ++v7;
      }

      while (v7 != v4);
      v4 = [v2 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v4);
  }

  v34 = *MEMORY[0x277D85DE8];
}

@end