@interface WFTriggerBootManager
+ (id)category;
+ (void)clearDeliveredNotificationsWithUserNotificationCenter:(id)center;
- (BOOL)canRunAutomations;
- (BOOL)createFirstUnlockTimeFile;
- (BOOL)enabledTriggers:(id)triggers;
- (BOOL)lastKnownBootUUIDDiffersFromCurrentBootUUID;
- (BOOL)shouldPostInitialBootNotification;
- (BOOL)shouldUpdateBootUUIDFile;
- (BOOL)triggerRunningTimeoutHasPassed;
- (WFTriggerBootManager)initWithDatabaseProvider:(id)provider notificationCenter:(id)center;
- (WFTriggerEventQueueDelegate)eventQueueDelegate;
- (WFTriggerManager)triggerManager;
- (id)bootUUIDFileURL;
- (id)firstUnlockDate;
- (id)firstUnlockTimeURL;
- (id)lastKnownBootUUID;
- (id)notificationContentForDeviceWithKnownUnlockedState:(BOOL)state;
- (id)runningThresholdDate;
- (void)clearDeliveredNotificationsWithUserNotificationCenter:(id)center;
- (void)configuredTriggersDidChange:(id)change;
- (void)createOrUpdateBootTimeFileIfNeeded;
- (void)deviceWasUnlockedForTheFirstTime;
- (void)postNotificationWithUserNotificationCenterIfNecessary:(id)necessary completionHandler:(id)handler;
- (void)queue_postNotification;
- (void)registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded:(id)needed;
- (void)registerForNotificationRemovalWithUserNotificationCenter:(id)center scheduleIfNeeded:(BOOL)needed;
- (void)replaceNotificationContentWithUpdatedTitleIfNeeded;
- (void)start;
- (void)updateBootUUIDFile;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)willRunAutomations;
@end

@implementation WFTriggerBootManager

- (WFTriggerEventQueueDelegate)eventQueueDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventQueueDelegate);

  return WeakRetained;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerBootManager.m" lineNumber:477 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v12 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    actionIdentifier = [responseCopy actionIdentifier];
    *buf = 136315394;
    v31 = "[WFTriggerBootManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]";
    v32 = 2114;
    v33 = actionIdentifier;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEFAULT, "%s WFTriggerBootManager didReceiveNotificationResponse with action (%{public}@)", buf, 0x16u);
  }

  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];
  v18 = [categoryIdentifier isEqualToString:*MEMORY[0x277D7CD98]];

  if (v18)
  {
    actionIdentifier2 = [responseCopy actionIdentifier];
    if ([actionIdentifier2 isEqualToString:*MEMORY[0x277CE20F0]])
    {
      v20 = getWFTriggerNotificationsLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v31 = "[WFTriggerBootManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]";
        _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_DEFAULT, "%s Automations enabled notification dismissed", buf, 0xCu);
      }
    }

    else
    {
      if ([actionIdentifier2 isEqualToString:@"disableAction"])
      {
        triggerManager = [(WFTriggerBootManager *)self triggerManager];
        [triggerManager disableAllTriggers];

        eventQueueDelegate = [(WFTriggerBootManager *)self eventQueueDelegate];
        [eventQueueDelegate clearWithCompletionHandler:handlerCopy];

LABEL_17:
        goto LABEL_18;
      }

      v20 = getWFTriggersLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        actionIdentifier3 = [responseCopy actionIdentifier];
        *buf = 136315650;
        v31 = "[WFTriggerBootManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]";
        v32 = 2114;
        v33 = actionIdentifier3;
        v34 = 2114;
        v35 = responseCopy;
        _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_FAULT, "%s unexpected actionIdentifier (%{public}@) from notification reponse (%{public}@)", buf, 0x20u);
      }
    }

    handlerCopy[2](handlerCopy);
    goto LABEL_17;
  }

  v21 = getWFTriggersLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    notification2 = [responseCopy notification];
    request2 = [notification2 request];
    identifier = [request2 identifier];
    *buf = 136315394;
    v31 = "[WFTriggerBootManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]";
    v32 = 2112;
    v33 = identifier;
    _os_log_impl(&dword_23103C000, v21, OS_LOG_TYPE_FAULT, "%s Recieved response for unrecognized category: %@", buf, 0x16u);
  }

  handlerCopy[2](handlerCopy);
LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
}

- (id)firstUnlockTimeURL
{
  v10 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CFC538] = [MEMORY[0x277CFC538] sharedAppGroupDirectoryURL];
  v3 = mEMORY[0x277CFC538];
  if (mEMORY[0x277CFC538])
  {
    v4 = [mEMORY[0x277CFC538] URLByAppendingPathComponent:@".FirstUnlock"];
  }

  else
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[WFTriggerBootManager firstUnlockTimeURL]";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_FAULT, "%s Could not get first unlock time url due to no sharedAppGroupDirectoryURL.", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)bootUUIDFileURL
{
  v10 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CFC538] = [MEMORY[0x277CFC538] sharedAppGroupDirectoryURL];
  v3 = mEMORY[0x277CFC538];
  if (mEMORY[0x277CFC538])
  {
    v4 = [mEMORY[0x277CFC538] URLByAppendingPathComponent:@".AutomationsEnabled"];
  }

  else
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[WFTriggerBootManager bootUUIDFileURL]";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_FAULT, "%s Could not get automations enabled marker url due to no sharedAppGroupDirectoryURL.", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)firstUnlockDate
{
  v18 = *MEMORY[0x277D85DE8];
  firstUnlockTimeURL = [(WFTriggerBootManager *)self firstUnlockTimeURL];
  if (firstUnlockTimeURL)
  {
    v13 = 0;
    v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:firstUnlockTimeURL options:0 error:&v13];
    v4 = v13;
    if (v3)
    {
      v12 = v4;
      v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v12];
      v6 = v12;

      if (v5)
      {
        v7 = v5;
        v8 = v7;
      }

      else
      {
        v9 = getWFTriggersLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v15 = "[WFTriggerBootManager firstUnlockDate]";
          v16 = 2112;
          v17 = v6;
          _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Could not unarchive first unlock date with error: %@", buf, 0x16u);
        }

        v7 = 0;
        v8 = 0;
      }
    }

    else
    {
      v7 = getWFTriggersLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "[WFTriggerBootManager firstUnlockDate]";
        v16 = 2112;
        v17 = 0;
        _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Could not get first unlock time data with error: %@", buf, 0x16u);
      }

      v8 = 0;
      v6 = v4;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)createFirstUnlockTimeFile
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[WFTriggerBootManager createFirstUnlockTimeFile]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEFAULT, "%s Creating first unlock time", buf, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  firstUnlockTimeURL = [(WFTriggerBootManager *)self firstUnlockTimeURL];
  if (firstUnlockTimeURL)
  {
    v17 = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:date requiringSecureCoding:1 error:&v17];
    v7 = v17;
    v8 = v7;
    if (v6)
    {
      v16 = v7;
      v9 = [v6 writeToURL:firstUnlockTimeURL options:0 error:&v16];
      v10 = v16;

      if (v9)
      {
        v11 = 1;
        v8 = v10;
LABEL_15:

        goto LABEL_16;
      }

      v8 = v10;
    }

    else
    {
      v12 = getWFTriggersLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[WFTriggerBootManager createFirstUnlockTimeFile]";
        v20 = 2112;
        v21 = 0;
        _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_ERROR, "%s Failed to create first unlock date with error: %@", buf, 0x16u);
      }
    }

    v13 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[WFTriggerBootManager createFirstUnlockTimeFile]";
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_DEFAULT, "%s Could not create first unlock date file due to error: %@", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)updateBootUUIDFile
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = WFGetBootSessionUUID();
  bootUUIDFileURL = [(WFTriggerBootManager *)self bootUUIDFileURL];
  if (bootUUIDFileURL)
  {
    v13 = 0;
    v5 = [v3 writeToURL:bootUUIDFileURL atomically:1 encoding:4 error:&v13];
    v6 = v13;
    v7 = getWFTriggerNotificationsLogObject();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "[WFTriggerBootManager updateBootUUIDFile]";
        v16 = 2112;
        v17 = v3;
        v9 = "%s Successfully updated boot UUID file with UUID: %@";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEFAULT;
LABEL_9:
        _os_log_impl(&dword_23103C000, v10, v11, v9, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[WFTriggerBootManager updateBootUUIDFile]";
      v16 = 2112;
      v17 = v6;
      v9 = "%s Failed to write boot UUID file: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v6 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v15 = "[WFTriggerBootManager updateBootUUIDFile]";
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_FAULT, "%s Boot UUID file URL unavailable.", buf, 0xCu);
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldUpdateBootUUIDFile
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = WFGetBootSessionUUID();
  lastKnownBootUUID = [(WFTriggerBootManager *)self lastKnownBootUUID];
  v5 = lastKnownBootUUID;
  if (!lastKnownBootUUID)
  {
    goto LABEL_11;
  }

  v6 = lastKnownBootUUID;
  v7 = v3;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (!v7)
    {

LABEL_11:
      v11 = 1;
      goto LABEL_12;
    }

    v9 = [v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[WFTriggerBootManager shouldUpdateBootUUIDFile]";
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Boot UUID is unchanged (%@); no update required.", &v14, 0x16u);
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)createOrUpdateBootTimeFileIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  queue = [(WFTriggerBootManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(WFTriggerBootManager *)self replaceNotificationContentWithUpdatedTitleIfNeeded];
  if (![(WFTriggerBootManager *)self shouldUpdateBootUUIDFile])
  {
    v6 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[WFTriggerBootManager createOrUpdateBootTimeFileIfNeeded]";
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Boot UUID file is already up to date; skipping.", &v8, 0xCu);
    }

    goto LABEL_9;
  }

  shouldPostInitialBootNotification = [(WFTriggerBootManager *)self shouldPostInitialBootNotification];
  [(WFTriggerBootManager *)self updateBootUUIDFile];
  if (!shouldPostInitialBootNotification)
  {
LABEL_9:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  v5 = *MEMORY[0x277D85DE8];

  [(WFTriggerBootManager *)self queue_postNotification];
}

- (BOOL)shouldPostInitialBootNotification
{
  bootUUIDFileURL = [(WFTriggerBootManager *)self bootUUIDFileURL];
  if ([bootUUIDFileURL wf_fileExists])
  {
    lastKnownBootUUID = [(WFTriggerBootManager *)self lastKnownBootUUID];
    if (lastKnownBootUUID)
    {
      lastKnownBootUUIDDiffersFromCurrentBootUUID = [(WFTriggerBootManager *)self lastKnownBootUUIDDiffersFromCurrentBootUUID];
    }

    else
    {
      lastKnownBootUUIDDiffersFromCurrentBootUUID = 0;
    }
  }

  else
  {
    lastKnownBootUUIDDiffersFromCurrentBootUUID = 0;
  }

  return lastKnownBootUUIDDiffersFromCurrentBootUUID;
}

- (id)lastKnownBootUUID
{
  v14 = *MEMORY[0x277D85DE8];
  bootUUIDFileURL = [(WFTriggerBootManager *)self bootUUIDFileURL];
  if (bootUUIDFileURL)
  {
    v9 = 0;
    v3 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:bootUUIDFileURL encoding:4 error:&v9];
    v4 = v9;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = getWFTriggersLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "[WFTriggerBootManager lastKnownBootUUID]";
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Could not get last logged boot data error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)enabledTriggers:(id)triggers
{
  v3 = [triggers if_firstObjectPassingTest:&__block_literal_global_276];
  v4 = v3 != 0;

  return v4;
}

- (void)configuredTriggersDidChange:(id)change
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(WFTriggerBootManager *)self enabledTriggers:change])
  {
    queue = [(WFTriggerBootManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__WFTriggerBootManager_configuredTriggersDidChange___block_invoke;
    block[3] = &unk_278900148;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    notificationCenter = [(WFTriggerBootManager *)self notificationCenter];
    [(WFTriggerBootManager *)self clearDeliveredNotificationsWithUserNotificationCenter:notificationCenter];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    bootUUIDFileURL = [(WFTriggerBootManager *)self bootUUIDFileURL];
    v12 = 0;
    v8 = [defaultManager removeItemAtURL:bootUUIDFileURL error:&v12];
    v9 = v12;

    if ((v8 & 1) == 0)
    {
      v10 = getWFTriggerNotificationsLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "[WFTriggerBootManager configuredTriggersDidChange:]";
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to remove file with error: %@", buf, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (WFTriggerManager)triggerManager
{
  v16 = *MEMORY[0x277D85DE8];
  triggerManager = self->_triggerManager;
  if (triggerManager)
  {
    goto LABEL_4;
  }

  databaseProvider = [(WFTriggerBootManager *)self databaseProvider];
  v13 = 0;
  v5 = [databaseProvider databaseWithError:&v13];
  v6 = v13;

  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:v5];
    v8 = self->_triggerManager;
    self->_triggerManager = v7;

    triggerManager = self->_triggerManager;
LABEL_4:
    v9 = triggerManager;
    goto LABEL_5;
  }

  v12 = getWFTriggersLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v15 = "[WFTriggerBootManager triggerManager]";
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_ERROR, "%s WFTriggerBootManager could not create trigger manager due to no database", buf, 0xCu);
  }

  v9 = 0;
LABEL_5:
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)replaceNotificationContentWithUpdatedTitleIfNeeded
{
  notificationCenter = [(WFTriggerBootManager *)self notificationCenter];
  v3 = [(WFTriggerBootManager *)self notificationContentForDeviceWithKnownUnlockedState:1];
  [notificationCenter replaceContentForRequestWithIdentifier:@"com.apple.siriactionsd.TriggersEnabledBootNotification" replacementContent:v3 completionHandler:&__block_literal_global_272];
}

void __74__WFTriggerBootManager_replaceNotificationContentWithUpdatedTitleIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = getWFTriggersLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[WFTriggerBootManager replaceNotificationContentWithUpdatedTitleIfNeeded]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEFAULT, "%s Attempted to replace content for delivered or pending notification with error %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deviceWasUnlockedForTheFirstTime
{
  [(WFTriggerBootManager *)self replaceNotificationContentWithUpdatedTitleIfNeeded];
  [(WFTriggerBootManager *)self createFirstUnlockTimeFile];
  queue = [(WFTriggerBootManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WFTriggerBootManager_deviceWasUnlockedForTheFirstTime__block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);

  notificationCenter = [(WFTriggerBootManager *)self notificationCenter];
  [(WFTriggerBootManager *)self registerForNotificationRemovalWithUserNotificationCenter:notificationCenter scheduleIfNeeded:1];
}

void __56__WFTriggerBootManager_deviceWasUnlockedForTheFirstTime__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 triggerManager];
  v3 = [v6 allConfiguredTriggers];
  if ([v2 enabledTriggers:v3])
  {
    v4 = [*(a1 + 32) lastKnownBootUUIDDiffersFromCurrentBootUUID];

    if (v4)
    {
      v5 = *(a1 + 32);

      [v5 createOrUpdateBootTimeFileIfNeeded];
    }
  }

  else
  {
  }
}

- (void)clearDeliveredNotificationsWithUserNotificationCenter:(id)center
{
  centerCopy = center;
  [objc_opt_class() clearDeliveredNotificationsWithUserNotificationCenter:centerCopy];
}

- (void)willRunAutomations
{
  v3 = objc_opt_class();
  notificationCenter = [(WFTriggerBootManager *)self notificationCenter];
  [v3 clearDeliveredNotificationsWithUserNotificationCenter:notificationCenter];
}

- (id)runningThresholdDate
{
  firstUnlockDate = [(WFTriggerBootManager *)self firstUnlockDate];
  v3 = [firstUnlockDate dateByAddingTimeInterval:120.0];

  return v3;
}

- (BOOL)triggerRunningTimeoutHasPassed
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  runningThresholdDate = [(WFTriggerBootManager *)self runningThresholdDate];
  v5 = runningThresholdDate;
  if (runningThresholdDate)
  {
    v6 = [runningThresholdDate compare:v3] + 1;
    v7 = v6 < 2;
    v8 = getWFTriggersLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[WFTriggerBootManager triggerRunningTimeoutHasPassed]";
      v13 = 1024;
      v14 = v6 < 2;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Trigger running threshold has passed: %d", &v11, 0x12u);
    }
  }

  else
  {
    v7 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)canRunAutomations
{
  bootUUIDFileURL = [(WFTriggerBootManager *)self bootUUIDFileURL];
  if ([bootUUIDFileURL wf_fileExists])
  {
    triggerRunningTimeoutHasPassed = [(WFTriggerBootManager *)self triggerRunningTimeoutHasPassed];
  }

  else
  {
    triggerRunningTimeoutHasPassed = 0;
  }

  return triggerRunningTimeoutHasPassed;
}

- (id)notificationContentForDeviceWithKnownUnlockedState:(BOOL)state
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = getWFTriggersLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[WFTriggerBootManager notificationContentForDeviceWithKnownUnlockedState:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Posting notification", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v7 = WFLocalizedString(@"Shortcuts");
  [v6 setTitle:v7];

  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  model = [currentDevice model];

  if (state || VCDeviceHasBeenUnlocked())
  {
    triggerManager = [(WFTriggerBootManager *)self triggerManager];
    allConfiguredTriggers = [triggerManager allConfiguredTriggers];
    v12 = [allConfiguredTriggers if_objectsPassingTest:&__block_literal_global_203];
    v13 = [v12 count];

    if (!v13)
    {
      v16 = 0;
      goto LABEL_28;
    }

    if ([model isEqualToString:@"iPhone"])
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = @"%d automations are enabled on your iPhone.";
    }

    else if ([model isEqualToString:@"iPod touch"])
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = @"%d automations are enabled on your iPod.";
    }

    else if ([model isEqualToString:@"iPad"])
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = @"%d automations are enabled on your iPad.";
    }

    else
    {
      v18 = [model isEqualToString:@"Mac"];
      v14 = MEMORY[0x277CCACA8];
      if (v18)
      {
        v15 = @"%d automations are enabled on your Mac.";
      }

      else
      {
        v15 = @"%d automations are enabled on your device.";
      }
    }

    v19 = WFLocalizedPluralString(v15);
    v20 = [v14 localizedStringWithFormat:v19, v13];
  }

  else
  {
    if ([model isEqualToString:@"iPhone"])
    {
      v17 = @"Automations will run once your iPhone is unlocked.";
    }

    else if ([model isEqualToString:@"iPod touch"])
    {
      v17 = @"Automations will run once your iPod is unlocked.";
    }

    else if ([model isEqualToString:@"iPad"])
    {
      v17 = @"Automations will run once your iPad is unlocked.";
    }

    else if ([model isEqualToString:@"Mac"])
    {
      v17 = @"Automations will run once your Mac is unlocked.";
    }

    else
    {
      v17 = @"Automations will run once your device is unlocked.";
    }

    v20 = WFLocalizedString(v17);
  }

  [v6 setBody:v20];
  [v6 setShouldIgnoreDoNotDisturb:1];
  [v6 setSound:0];
  [v6 setCategoryIdentifier:*MEMORY[0x277D7CD98]];
  [v6 setShouldSuppressDefaultAction:0];
  [v6 setShouldAuthenticateDefaultAction:0];
  v21 = [MEMORY[0x277CBEBC0] URLWithString:@"shortcuts://automations"];
  [v6 setDefaultActionURL:v21];

  v16 = v6;
LABEL_28:

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)postNotificationWithUserNotificationCenterIfNecessary:(id)necessary completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  necessaryCopy = necessary;
  v8 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[WFTriggerBootManager postNotificationWithUserNotificationCenterIfNecessary:completionHandler:]";
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Posting notification", buf, 0xCu);
  }

  v9 = [(WFTriggerBootManager *)self notificationContentForDeviceWithKnownUnlockedState:0];
  v10 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"com.apple.siriactionsd.TriggersEnabledBootNotification" content:v9 trigger:0 destinations:15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__WFTriggerBootManager_postNotificationWithUserNotificationCenterIfNecessary_completionHandler___block_invoke;
  v13[3] = &unk_2789001E0;
  v14 = handlerCopy;
  v11 = handlerCopy;
  [necessaryCopy addNotificationRequest:v10 withCompletionHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)registerForNotificationRemovalWithUserNotificationCenter:(id)center scheduleIfNeeded:(BOOL)needed
{
  v17 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  v7 = getWFTriggersLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[WFTriggerBootManager registerForNotificationRemovalWithUserNotificationCenter:scheduleIfNeeded:]";
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Registering for automation notification removal", buf, 0xCu);
  }

  v8 = [[WFXPCActivityScheduler alloc] initWithActivityIdentifier:@"com.apple.siriactionsd.TriggerLockscreenNotificationRemoval"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__WFTriggerBootManager_registerForNotificationRemovalWithUserNotificationCenter_scheduleIfNeeded___block_invoke;
  v13[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  neededCopy = needed;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__WFTriggerBootManager_registerForNotificationRemovalWithUserNotificationCenter_scheduleIfNeeded___block_invoke_193;
  v11[3] = &unk_2788FEE68;
  v11[4] = self;
  v12 = centerCopy;
  v9 = centerCopy;
  [(WFXPCActivityScheduler *)v8 scheduleWithCheckInHandler:v13 runHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __98__WFTriggerBootManager_registerForNotificationRemovalWithUserNotificationCenter_scheduleIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = xpc_activity_copy_criteria(v3);
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x2319269A0](v4);
    v7 = getWFTriggersLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[WFTriggerBootManager registerForNotificationRemovalWithUserNotificationCenter:scheduleIfNeeded:]_block_invoke";
      v17 = 2082;
      v18 = v6;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Criteria exists %{public}s, doing nothing", buf, 0x16u);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__WFTriggerBootManager_registerForNotificationRemovalWithUserNotificationCenter_scheduleIfNeeded___block_invoke_189;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v6;
    v8 = _Block_copy(aBlock);
    (*(v8 + 16))();
  }

  else if (*(a1 + 32) == 1)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_int64(v8, *MEMORY[0x277D86250], 120);
    xpc_dictionary_set_string(v8, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    v9 = MEMORY[0x2319269A0](v8);
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[WFTriggerBootManager registerForNotificationRemovalWithUserNotificationCenter:scheduleIfNeeded:]_block_invoke_2";
      v17 = 2082;
      v18 = v9;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Creating new criteria: %{public}s", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __98__WFTriggerBootManager_registerForNotificationRemovalWithUserNotificationCenter_scheduleIfNeeded___block_invoke_191;
    v13[3] = &__block_descriptor_40_e5_v8__0l;
    v13[4] = v9;
    v11 = _Block_copy(v13);
    xpc_activity_set_criteria(v3, v8);
    v11[2](v11);
  }

  else
  {
    v8 = getWFTriggersLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[WFTriggerBootManager registerForNotificationRemovalWithUserNotificationCenter:scheduleIfNeeded:]_block_invoke_2";
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Criteria does not exist, doing nothing", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __98__WFTriggerBootManager_registerForNotificationRemovalWithUserNotificationCenter_scheduleIfNeeded___block_invoke_193(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFTriggersLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[WFTriggerBootManager registerForNotificationRemovalWithUserNotificationCenter:scheduleIfNeeded:]_block_invoke";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Run handler called attempting to clear notification.", &v9, 0xCu);
  }

  [*(a1 + 32) clearDeliveredNotificationsWithUserNotificationCenter:*(a1 + 40)];
  v6 = [*(a1 + 32) eventQueueDelegate];
  [v6 resume];

  v4[2](v4);
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

void __98__WFTriggerBootManager_registerForNotificationRemovalWithUserNotificationCenter_scheduleIfNeeded___block_invoke_189(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    free(v1);
  }
}

void __98__WFTriggerBootManager_registerForNotificationRemovalWithUserNotificationCenter_scheduleIfNeeded___block_invoke_191(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    free(v1);
  }
}

- (void)queue_postNotification
{
  queue = [(WFTriggerBootManager *)self queue];
  dispatch_assert_queue_V2(queue);

  notificationCenter = [(WFTriggerBootManager *)self notificationCenter];
  [(WFTriggerBootManager *)self postNotificationWithUserNotificationCenterIfNecessary:notificationCenter completionHandler:&__block_literal_global_185];
}

void __46__WFTriggerBootManager_queue_postNotification__block_invoke(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[WFTriggerBootManager queue_postNotification]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Failed to post notification with error: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)lastKnownBootUUIDDiffersFromCurrentBootUUID
{
  v18 = *MEMORY[0x277D85DE8];
  lastKnownBootUUID = [(WFTriggerBootManager *)self lastKnownBootUUID];
  v3 = WFGetBootSessionUUID();
  v4 = lastKnownBootUUID;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
  }

  else
  {
    if (!v4 || !v5)
    {

LABEL_11:
      v9 = 1;
      goto LABEL_12;
    }

    v7 = [v4 isEqualToString:v5];

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v8 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[WFTriggerBootManager lastKnownBootUUIDDiffersFromCurrentBootUUID]";
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Not posting notification because we already have for this boot session (%@) (%@)", &v12, 0x20u);
  }

  v9 = 0;
LABEL_12:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded:(id)needed
{
  queue = [(WFTriggerBootManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__WFTriggerBootManager_registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded___block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);
}

void __92__WFTriggerBootManager_registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[WFTriggerBootManager registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded:]_block_invoke";
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s Registering for initial boot notification", buf, 0xCu);
  }

  v3 = [[WFXPCActivityScheduler alloc] initWithActivityIdentifier:@"com.apple.siriactionsd.TriggersEnabledBootNotification"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__WFTriggerBootManager_registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded___block_invoke_181;
  v5[3] = &unk_278900208;
  v5[4] = *(a1 + 32);
  [(WFXPCActivityScheduler *)v3 scheduleWithCheckInHandler:&__block_literal_global_2523 runHandler:v5];

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __92__WFTriggerBootManager_registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded___block_invoke_181(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__WFTriggerBootManager_registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded___block_invoke_2;
  block[3] = &unk_278900148;
  block[4] = *(a1 + 32);
  dispatch_async(v8, block);

  LOBYTE(a1) = xpc_activity_set_state(v7, 5);
  if ((a1 & 1) == 0)
  {
    v9 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v14 = "[WFTriggerBootManager registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded:]_block_invoke";
      v15 = 2114;
      v16 = @"com.apple.siriactionsd.TriggersEnabledBootNotification";
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_FAULT, "%s Failed to set %{public}@ to DONE", buf, 0x16u);
    }
  }

  v5[2](v5);

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

void __92__WFTriggerBootManager_registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded___block_invoke_177(int a1, xpc_activity_t activity)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = xpc_activity_copy_criteria(activity);
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x2319269A0](v2);
    v5 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "[WFTriggerBootManager registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded:]_block_invoke";
      v11 = 2082;
      v12 = v4;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Criteria exists %{public}s, running activity and setting state to DONE", buf, 0x16u);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__WFTriggerBootManager_registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded___block_invoke_179;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v4;
    v6 = _Block_copy(aBlock);
    (*(v6 + 16))();
  }

  else
  {
    v6 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[WFTriggerBootManager registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded:]_block_invoke_2";
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Criteria does not exist not running activity.", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __92__WFTriggerBootManager_registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded___block_invoke_179(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    free(v1);
  }
}

uint64_t __92__WFTriggerBootManager_registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) shouldPostInitialBootNotification];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 queue_postNotification];
  }

  return result;
}

- (void)start
{
  notificationCenter = [(WFTriggerBootManager *)self notificationCenter];
  [(WFTriggerBootManager *)self registerForInitialBootXPCActivityWithUserNotificationCenterIfNeeded:notificationCenter];

  notificationCenter2 = [(WFTriggerBootManager *)self notificationCenter];
  [(WFTriggerBootManager *)self registerForNotificationRemovalWithUserNotificationCenter:notificationCenter2 scheduleIfNeeded:0];
}

- (WFTriggerBootManager)initWithDatabaseProvider:(id)provider notificationCenter:(id)center
{
  providerCopy = provider;
  centerCopy = center;
  v21.receiver = self;
  v21.super_class = WFTriggerBootManager;
  v9 = [(WFTriggerBootManager *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_databaseProvider, provider);
    objc_storeStrong(&v10->_notificationCenter, center);
    [(UNUserNotificationCenter *)v10->_notificationCenter setDelegate:v10];
    [(UNUserNotificationCenter *)v10->_notificationCenter setWantsNotificationResponsesDelivered];
    notificationCenter = v10->_notificationCenter;
    v12 = MEMORY[0x277CBEB98];
    category = [objc_opt_class() category];
    v14 = [v12 setWithObject:category];
    [(UNUserNotificationCenter *)notificationCenter setNotificationCategories:v14];

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INITIATED, 0);

    v17 = dispatch_queue_create("com.apple.shortcuts.WFTriggerBootManager", v16);
    queue = v10->_queue;
    v10->_queue = v17;

    v19 = v10;
  }

  return v10;
}

+ (id)category
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CE1F50]);
  v3 = [v2 initWithIdentifier:*MEMORY[0x277D7CD98]];
  v4 = MEMORY[0x277CE1F80];
  v5 = WFLocalizedString(@"Disable All Automations");
  v6 = [v4 actionWithIdentifier:@"disableAction" title:v5 options:2 icon:0];

  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v3 setActions:v7];

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)clearDeliveredNotificationsWithUserNotificationCenter:(id)center
{
  v10 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "+[WFTriggerBootManager clearDeliveredNotificationsWithUserNotificationCenter:]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEFAULT, "%s Removing notification", buf, 0xCu);
  }

  v7 = @"com.apple.siriactionsd.TriggersEnabledBootNotification";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  [centerCopy removeDeliveredNotificationsWithIdentifiers:v5];

  v6 = *MEMORY[0x277D85DE8];
}

@end