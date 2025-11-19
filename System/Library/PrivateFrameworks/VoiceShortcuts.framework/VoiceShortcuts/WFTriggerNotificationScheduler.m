@interface WFTriggerNotificationScheduler
+ (BOOL)shortenTimeIntervalsForTesting;
- (WFTriggerNotificationScheduler)initWithUserNotificationManager:(id)a3 databaseProvider:(id)a4;
- (id)initialRunDateForConfiguredTrigger:(id)a3;
- (int)updateTriggerNotificationLevels:(id)a3 database:(id)a4;
- (void)cancelActivitiesFromTrigger:(id)a3;
- (void)cancelActivitiesFromTriggerIdentifier:(id)a3;
- (void)cancelAllActivitiesFromTriggers:(id)a3;
- (void)migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:(id)a3;
- (void)postBackgroundRunningNotificationForTrigger:(id)a3;
- (void)registerConfiguredTrigger:(id)a3 delay:(id)a4;
- (void)registerWithDatabaseProvider:(id)a3;
- (void)scheduleTriggerForNotifications:(id)a3;
@end

@implementation WFTriggerNotificationScheduler

- (void)migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLForKey:@"WFTriggerNotificationLevelMigrationPerformed"];
    v9 = getWFTriggerNotificationsLogObject();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 136315138;
        v21 = "[WFTriggerNotificationScheduler migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:]";
        v11 = "%s Migration has already occured not doing anything.";
        v12 = v9;
        v13 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
        _os_log_impl(&dword_23103C000, v12, v13, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v10)
      {
        *buf = 136315138;
        v21 = "[WFTriggerNotificationScheduler migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:]";
        _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s Migrating old triggers.", buf, 0xCu);
      }

      v14 = [v4 allConfiguredTriggers];
      v9 = [v14 descriptors];

      v15 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:v4];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __95__WFTriggerNotificationScheduler_migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase___block_invoke;
      v18[3] = &unk_2788FE198;
      v19 = v15;
      v16 = v15;
      [v9 enumerateObjectsUsingBlock:v18];
      [v7 setBool:1 forKey:@"WFTriggerNotificationLevelMigrationPerformed"];
    }
  }

  else
  {
    v9 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[WFTriggerNotificationScheduler migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:]";
      v11 = "%s Could not get system shortcut user defaults not migrating.";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __95__WFTriggerNotificationScheduler_migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 updateNotificationLevel:2 forConfiguredTrigger:a2 error:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[WFTriggerNotificationScheduler migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:]_block_invoke";
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Could not migrate trigger to WFTriggerNotificationLevelMonth with error: %{public}@", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)initialRunDateForConfiguredTrigger:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(WFTriggerNotificationScheduler *)self databaseProvider];
  v21 = 0;
  v7 = [v6 databaseWithError:&v21];
  v8 = v21;

  if (!v7)
  {
    v12 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[WFTriggerNotificationScheduler initialRunDateForConfiguredTrigger:]";
      v24 = 2114;
      v25 = v8;
      _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_ERROR, "%s Failed to get initial run date for configured trigger because database is not available: %{public}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  v9 = [v4 identifier];
  v10 = [v7 sortedRunEventsForTriggerID:v9];
  v11 = [v10 descriptors];
  v12 = [v11 lastObject];

  v13 = getWFTriggerNotificationsLogObject();
  v14 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = [v4 identifier];
      *buf = 136315394;
      v23 = "[WFTriggerNotificationScheduler initialRunDateForConfiguredTrigger:]";
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_ERROR, "%s No run events found for trigger with id: %@", buf, 0x16u);
    }

    v12 = 0;
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v4 identifier];
    v16 = [v12 date];
    *buf = 136315650;
    v23 = "[WFTriggerNotificationScheduler initialRunDateForConfiguredTrigger:]";
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEFAULT, "%s initial run event date for trigger: %@ - %@", buf, 0x20u);
  }

  v17 = [v12 date];
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)cancelActivitiesFromTriggerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFTriggerNotificationScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__WFTriggerNotificationScheduler_cancelActivitiesFromTriggerIdentifier___block_invoke;
  block[3] = &unk_278900148;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __72__WFTriggerNotificationScheduler_cancelActivitiesFromTriggerIdentifier___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.siriactionsd.TriggerNotification.%@", *(a1 + 32)];
  v2 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v5 = "[WFTriggerNotificationScheduler cancelActivitiesFromTriggerIdentifier:]_block_invoke";
    v6 = 2114;
    v7 = v1;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s Unregistering trigger notification activities for identifier: %{public}@", buf, 0x16u);
  }

  xpc_activity_unregister([v1 UTF8String]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)cancelActivitiesFromTrigger:(id)a3
{
  v4 = a3;
  v5 = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 identifier];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.siriactionsd.TriggerNotification.%@", v6];

  v7 = v8;
  xpc_activity_unregister([v8 UTF8String]);
}

- (void)cancelAllActivitiesFromTriggers:(id)a3
{
  v4 = a3;
  v5 = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(v5);

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__WFTriggerNotificationScheduler_cancelAllActivitiesFromTriggers___block_invoke;
  v6[3] = &unk_2788FE198;
  v6[4] = self;
  [v4 enumerateObjectsUsingBlock:v6];
}

- (int)updateTriggerNotificationLevels:(id)a3 database:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(v8);

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__WFTriggerNotificationScheduler_updateTriggerNotificationLevels_database___block_invoke;
  v20[3] = &unk_2788FE820;
  v20[4] = &v21;
  [v6 enumerateObjectsUsingBlock:v20];
  v9 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v22 + 6);
    v11 = WFReadableTriggerNotificationLevel();
    *buf = 136315394;
    v26 = "[WFTriggerNotificationScheduler updateTriggerNotificationLevels:database:]";
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s Updating scheduled trigger notifications for runs in the last 7 days to level: %@", buf, 0x16u);
  }

  v12 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:v7];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__WFTriggerNotificationScheduler_updateTriggerNotificationLevels_database___block_invoke_190;
  v17[3] = &unk_2788FE2A0;
  v13 = v12;
  v18 = v13;
  v19 = &v21;
  [v6 enumerateObjectsUsingBlock:v17];
  v14 = *(v22 + 6);

  _Block_object_dispose(&v21, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void __75__WFTriggerNotificationScheduler_updateTriggerNotificationLevels_database___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (![v6 shouldPrompt] || (objc_msgSend(v6, "shouldNotify") & 1) == 0)
  {
    v3 = *(*(*(a1 + 32) + 8) + 24);
    v4 = [v6 notificationLevel];
    if (v3 <= v4 + 1)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = v3;
    }

    if (v5 >= 3)
    {
      v5 = 3;
    }

    *(*(*(a1 + 32) + 8) + 24) = v5;
  }
}

void __75__WFTriggerNotificationScheduler_updateTriggerNotificationLevels_database___block_invoke_190(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v11 = 0;
  v5 = [v3 updateNotificationLevel:v4 forConfiguredTrigger:a2 error:&v11];
  v6 = v11;
  if ((v5 & 1) == 0)
  {
    v7 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 40) + 8) + 24);
      v9 = WFReadableTriggerNotificationLevel();
      *buf = 136315650;
      v13 = "[WFTriggerNotificationScheduler updateTriggerNotificationLevels:database:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Could not increment trigger to level: %@ due to error: %@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)postBackgroundRunningNotificationForTrigger:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]";
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Posting background notification", buf, 0xCu);
  }

  v7 = [(WFTriggerNotificationScheduler *)self databaseProvider];
  v39 = 0;
  v8 = [v7 databaseWithError:&v39];
  v9 = v39;

  if (v8)
  {
    if ([v4 notificationLevel] < 3)
    {
      v12 = MEMORY[0x277CBEB98];
      v13 = [v8 triggerRunEventsInTheLastWeek];
      v14 = [v13 descriptors];
      v15 = [v14 if_compactMap:&__block_literal_global_78];
      v16 = [v12 setWithArray:v15];
      v17 = [v4 identifier];
      v18 = [v16 setByAddingObject:v17];

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __78__WFTriggerNotificationScheduler_postBackgroundRunningNotificationForTrigger___block_invoke_2;
      v37[3] = &unk_2788FE228;
      v19 = v8;
      v38 = v19;
      v20 = [v18 if_compactMap:v37];
      v21 = [v20 allObjects];

      if ([v21 count])
      {
        [(WFTriggerNotificationScheduler *)self cancelAllActivitiesFromTriggers:v21];
        v22 = os_transaction_create();
        v23 = WFTriggerIDsToDisableNotificationUserInfoFromTriggers();
        v24 = [(WFTriggerNotificationScheduler *)self userNotificationManager];
        v36 = v9;
        [v24 postBackgroundRunningNotificationWithConfiguredTriggers:v21 userInfo:v23 error:&v36];
        v31 = v36;

        v25 = [(WFTriggerNotificationScheduler *)self updateTriggerNotificationLevels:v21 database:v19];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __78__WFTriggerNotificationScheduler_postBackgroundRunningNotificationForTrigger___block_invoke_186;
        v34[3] = &unk_2788FE250;
        v35 = v19;
        v26 = [v21 if_compactMap:v34];

        v27 = getWFTriggerNotificationsLogObject();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (v25 > 2)
        {
          if (v28)
          {
            *buf = 136315138;
            v41 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]";
            _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_DEFAULT, "%s Level is at WFTriggerNotificationLevelNever not rescheduling triggers", buf, 0xCu);
          }
        }

        else
        {
          if (v28)
          {
            v29 = WFReadableTriggerNotificationLevel();
            *buf = 136315394;
            v41 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]";
            v42 = 2112;
            v43 = v29;
            _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_DEFAULT, "%s Re-registering triggers to level: %@", buf, 0x16u);
          }

          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __78__WFTriggerNotificationScheduler_postBackgroundRunningNotificationForTrigger___block_invoke_188;
          v32[3] = &unk_2788FE278;
          v32[4] = self;
          v33 = v25;
          [v26 enumerateObjectsUsingBlock:v32];
        }

        v9 = v31;
      }

      else
      {
        v22 = getWFTriggerNotificationsLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v41 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]";
          _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_ERROR, "%s Failed to post background running notification due to no configured triggers being recently ran", buf, 0xCu);
        }

        v26 = v21;
      }
    }

    else
    {
      v10 = getWFTriggerNotificationsLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v41 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]";
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Attempted to post background running notification but trigger was in WFTriggerNotificationLevelNever, cancelling all activities", buf, 0xCu);
      }

      [(WFTriggerNotificationScheduler *)self cancelActivitiesFromTrigger:v4];
    }
  }

  else
  {
    v11 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]";
      v42 = 2114;
      v43 = v9;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Failed to post background notification because database is not available: %{public}@", buf, 0x16u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

id __78__WFTriggerNotificationScheduler_postBackgroundRunningNotificationForTrigger___block_invoke_186(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 configuredTriggerForTriggerID:v3];

  return v4;
}

void __78__WFTriggerNotificationScheduler_postBackgroundRunningNotificationForTrigger___block_invoke_188(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) initialRunDateForConfiguredTrigger:v3];
  if (v4)
  {
    v5 = WFTimeIntervalForNotificationLevelFromDate(*(a1 + 40), v4);
    [*(a1 + 32) registerConfiguredTrigger:v3 delay:v5];
  }

  else
  {
    v6 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[WFTriggerNotificationScheduler postBackgroundRunningNotificationForTrigger:]_block_invoke";
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Skipping rescheduling of trigger due to initial run date not being found", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)registerConfiguredTrigger:(id)a3 delay:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WFTriggerNotificationScheduler *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 identifier];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.siriactionsd.TriggerNotification.%@", v9];

  v11 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[WFTriggerNotificationScheduler registerConfiguredTrigger:delay:]";
    v22 = 1024;
    v23 = [v7 intValue];
    v24 = 2114;
    v25 = v10;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Registering trigger - creating activity with delay: %i for identifier: %{public}@", buf, 0x1Cu);
  }

  v12 = [[WFXPCActivityScheduler alloc] initWithActivityIdentifier:v10];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke;
  v18[3] = &unk_2788FE1E0;
  v19 = v7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_180;
  v16[3] = &unk_2788FEE68;
  v16[4] = self;
  v17 = v6;
  v13 = v6;
  v14 = v7;
  [(WFXPCActivityScheduler *)v12 scheduleWithCheckInHandler:v18 runHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], [*(a1 + 32) intValue]);
  v5 = xpc_activity_copy_criteria(v3);
  v6 = v5;
  if (v5)
  {
    v7 = xpc_equal(v5, v4);
    v8 = MEMORY[0x2319269A0](v6);
    v9 = MEMORY[0x2319269A0](v4);
    v10 = getWFTriggerNotificationsLogObject();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v11)
      {
        *buf = 136315650;
        v31 = "[WFTriggerNotificationScheduler registerConfiguredTrigger:delay:]_block_invoke";
        v32 = 2082;
        v33 = v8;
        v34 = 2082;
        v35 = v9;
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Criteria exists %{public}s and it is equal to new criteria: %{public}s doing nothing", buf, 0x20u);
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_176;
      v29[3] = &__block_descriptor_48_e5_v8__0l;
      v29[4] = v8;
      v29[5] = v9;
      v12 = v29;
    }

    else
    {
      if (v11)
      {
        *buf = 136315650;
        v31 = "[WFTriggerNotificationScheduler registerConfiguredTrigger:delay:]_block_invoke_2";
        v32 = 2082;
        v33 = v8;
        v34 = 2082;
        v35 = v9;
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Criteria exists %{public}s but it is NOT equal: %{public}s setting", buf, 0x20u);
      }

      xpc_activity_set_criteria(v3, v4);
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_178;
      v26 = &__block_descriptor_48_e5_v8__0l;
      v27 = v8;
      v28 = v9;
      v12 = &v23;
    }

    v14 = _Block_copy(v12);
    v14[2](v14, v15, v16, v17, v18, v19, v20, v21, v23, v24, v25, v26);
  }

  else
  {
    v13 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[WFTriggerNotificationScheduler registerConfiguredTrigger:delay:]_block_invoke_2";
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_DEFAULT, "%s Criteria does not exist, setting a new one", buf, 0xCu);
    }

    xpc_activity_set_criteria(v3, v4);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_180(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_2;
  block[3] = &unk_2788FFF98;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v4;
  v8 = v4;
  dispatch_async(v5, block);

  return 0;
}

uint64_t __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v6 = 136315394;
    v7 = "[WFTriggerNotificationScheduler registerConfiguredTrigger:delay:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s Registering triggers - Run handler called: %@", &v6, 0x16u);
  }

  [*(a1 + 40) postBackgroundRunningNotificationForTrigger:*(a1 + 32)];
  result = (*(*(a1 + 48) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_176(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    free(v3);
  }
}

void __66__WFTriggerNotificationScheduler_registerConfiguredTrigger_delay___block_invoke_178(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    free(v3);
  }
}

- (void)registerWithDatabaseProvider:(id)a3
{
  v4 = a3;
  v5 = [(WFTriggerNotificationScheduler *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__WFTriggerNotificationScheduler_registerWithDatabaseProvider___block_invoke;
  v7[3] = &unk_2788FFFC0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __63__WFTriggerNotificationScheduler_registerWithDatabaseProvider___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v10 = 0;
  v3 = [v2 databaseWithError:&v10];
  v4 = v10;
  if (v3)
  {
    [*(a1 + 40) migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:v3];
    v5 = [v3 allConfiguredTriggersNeedingRunningNotifications];
    v6 = [v5 descriptors];

    v7 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[WFTriggerNotificationScheduler registerWithDatabaseProvider:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Possibly registering triggers: %@", buf, 0x16u);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__WFTriggerNotificationScheduler_registerWithDatabaseProvider___block_invoke_174;
    v9[3] = &unk_2788FE198;
    v9[4] = *(a1 + 40);
    [v6 enumerateObjectsUsingBlock:v9];
  }

  else
  {
    v6 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[WFTriggerNotificationScheduler registerWithDatabaseProvider:]_block_invoke";
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Failed to schedule trigger notifications because database is not available: %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __63__WFTriggerNotificationScheduler_registerWithDatabaseProvider___block_invoke_174(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) initialRunDateForConfiguredTrigger:v3];
  v5 = getWFTriggerNotificationsLogObject();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[WFTriggerNotificationScheduler registerWithDatabaseProvider:]_block_invoke";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Registering triggers with initial run date - %@", &v8, 0x16u);
    }

    v6 = WFTimeIntervalForNotificationLevelFromDate([v3 notificationLevel], v4);
    [*(a1 + 32) registerConfiguredTrigger:v3 delay:v6];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[WFTriggerNotificationScheduler registerWithDatabaseProvider:]_block_invoke";
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Skipping scheduling of trigger due to initial run date not being found", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)scheduleTriggerForNotifications:(id)a3
{
  v4 = a3;
  v5 = [(WFTriggerNotificationScheduler *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__WFTriggerNotificationScheduler_scheduleTriggerForNotifications___block_invoke;
  v7[3] = &unk_2788FFFC0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __66__WFTriggerNotificationScheduler_scheduleTriggerForNotifications___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) notificationLevel] < 3)
  {
    v3 = [*(a1 + 40) databaseProvider];
    v7 = 0;
    v4 = [v3 databaseWithError:&v7];
    v2 = v7;

    if (v4)
    {
      [*(a1 + 40) migrateAllTriggersCreatedBeforeBackgroundRunningWithDatabase:v4];
      v5 = WFTimeIntervalForNotificationLevel([*(a1 + 32) notificationLevel]);
      [*(a1 + 40) registerConfiguredTrigger:*(a1 + 32) delay:v5];
    }

    else
    {
      v5 = getWFTriggerNotificationsLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "[WFTriggerNotificationScheduler scheduleTriggerForNotifications:]_block_invoke";
        v10 = 2114;
        v11 = v2;
        _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Failed to schedule trigger notifications because database is not available: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v2 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "[WFTriggerNotificationScheduler scheduleTriggerForNotifications:]_block_invoke";
      _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_ERROR, "%s Attempted to schedule trigger that was already in WFTriggerNotificationLevelNever state", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (WFTriggerNotificationScheduler)initWithUserNotificationManager:(id)a3 databaseProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = WFTriggerNotificationScheduler;
  v9 = [(WFTriggerNotificationScheduler *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userNotificationManager, a3);
    objc_storeStrong(&v10->_databaseProvider, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);

    v13 = dispatch_queue_create("com.apple.siriactionsd.WFTriggerNotificationScheduler", v12);
    queue = v10->_queue;
    v10->_queue = v13;

    v15 = v10;
  }

  return v10;
}

+ (BOOL)shortenTimeIntervalsForTesting
{
  v2 = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
  if ([v2 BOOLForKey:*MEMORY[0x277D7CF90]])
  {
    v3 = VCIsInternalBuild();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end