@interface REMDaemonUserDefaults
+ (id)storageNumberForTodayNotificationTime:(id)a3;
+ (id)todayNotificationFireTimeFromStorageNumber:(id)a3;
- (BOOL)cloudKitMigrationDisableCleanUp;
- (BOOL)databaseMigrationTestModeEnabled;
- (BOOL)databaseMigrationTimedOut;
- (BOOL)debugForceSupportCloudKitSchemaCatchUpSyncBackgroundScheduling;
- (BOOL)debugSimulateSqliteFull;
- (BOOL)didShowReminderDeletePrivacyWarning;
- (BOOL)disableAlarmEngineDataSourcePrefetching;
- (BOOL)enableAssignmentNotifications;
- (BOOL)enableAutoCompleteReminders;
- (BOOL)enableGroceryFeedbackSurvey;
- (BOOL)enableHashingUserIdentifiablesWithPersonIDSalt;
- (BOOL)enableInAppDebugMenu;
- (BOOL)enableWelcomeScreen;
- (BOOL)excludeExistingSectionsForAutoCategorizationEnabled;
- (BOOL)extraneousAlarmsCollectorContainerDeemedClean;
- (BOOL)forceBasicAAAccountEligibleForCloudKitReminders;
- (BOOL)forceEligibleForAutoCloudKitMigration;
- (BOOL)forceShowWelcomeScreen;
- (BOOL)forceShowWhatsNewScreen;
- (BOOL)groceryTipDismissed;
- (BOOL)hasCreatedGroceryList;
- (BOOL)hasSeenGroceryFeedbackSurvey;
- (BOOL)hasViewedContactsAccessAlertForCalDAVSharing;
- (BOOL)hasViewedContactsAccessAlertForLocation;
- (BOOL)hasViewedContactsAccessAlertForMessaging;
- (BOOL)hideEmptySectionsForGroceryList:(id)a3;
- (BOOL)isAutoCategorizationLoggingEnabled;
- (BOOL)isDatabaseMigrated;
- (BOOL)isSpotlightQueryLoggingEnabled;
- (BOOL)sharedListActivityNotifications_demoMode;
- (BOOL)shouldIncludeRemindersDueTodayInBadgeCount;
- (BOOL)showRemindersAsOverdueWithShouldBypassCache:(BOOL)a3;
- (BOOL)simulateMAIDAccount;
- (BOOL)staledFileAttachmentCleanupContainerDeemedClean;
- (BOOL)timeZoneOverrideEnabled;
- (BOOL)treatRemindersAsNotOverdue;
- (NSArray)acAccountIdentifiersToMigrateInactivatedCalDavData;
- (NSArray)automaticSecondaryGroceryLocales;
- (NSArray)imageDeduplicationLegacyAttachmentsMarkedForDeletion;
- (NSArray)preferredLocalizations;
- (NSArray)savedImageDeduplicationLegacyAttachmentsMarkedForDeletion;
- (NSData)accountsListCategorizedCountsCache;
- (NSData)hashtagLabelsInCustomSmartListFilterCache;
- (NSData)lastSuggestedAttributesAutoTrainingToken;
- (NSData)userInteractionsData;
- (NSDate)analyticsActivityLastExecutionDate;
- (NSDate)automaticSecondaryGroceryLocalesLastModifiedDate;
- (NSDate)cloudKitMergeLocalLastDateMaxRetryReached;
- (NSDate)cloudKitSchemaCatchUpSyncLastScheduledDate;
- (NSDate)cloudKitSchemaCatchUpSyncLastSuccessDate;
- (NSDate)imageDeduplicationLastExecutionDate;
- (NSDate)lastCloudConfigurationDownload;
- (NSDate)lastDataSeparationMigrationDate;
- (NSDate)lastDismissedNotificationsPermissionInlineRequestDate;
- (NSDate)lastExtraneousAlarmsCollectorExecutionDate;
- (NSDate)lastPresentAlarmDate;
- (NSDate)lastSuggestedAttributesAutoTrainingExecutionDate;
- (NSDate)lastSyncPoll;
- (NSDate)lastViewedNotificationsPermissionWarmingSheetDate;
- (NSDate)nextScheduledAlarmDate;
- (NSDate)savedImageDeduplicationLastExecutionDate;
- (NSDate)staledFileAttachmentCleanupLastExecutionDate;
- (NSDate)suggestConversionToGroceryListLastExecutionDate;
- (NSDateComponents)todayNotificationFireTime;
- (NSDictionary)dataSeparationAppDocumentsURLDebugOverride;
- (NSDictionary)hideEmptySectionsForGroceryList;
- (NSDictionary)muteNotificationForSharedList;
- (NSDictionary)suggestedAttributesHarvestingOverrides;
- (NSDictionary)suggestedAttributesTrainingOverrides;
- (NSDictionary)syncActivityNotificationEngine_accountSignInTime;
- (NSNumber)cloudKitMaxNumAlarmIDsInReminderCKRecordDebugOverride;
- (NSNumber)cloudKitMigrationDelayAfterError;
- (NSNumber)cloudKitMigrationMaxNumFailures;
- (NSNumber)cloudKitMigrationMaxNumInvocations;
- (NSNumber)cloudKitMigrationObserverPollingInterval;
- (NSNumber)cloudKitMigrationSimulatedError;
- (NSNumber)cloudKitResultsLimitPerSyncOperation;
- (NSNumber)cloudKitSchemaCatchUpSyncSchedulingState;
- (NSNumber)debugSimulatedCKErrorCode;
- (NSNumber)remCurrentRuntimeVersionDebuggingOverride;
- (NSNumber)spotlightIndexVersion;
- (NSNumber)tipKitCachedCountOfCustomSmartLists;
- (NSNumber)tipKitCachedCountOfHashtags;
- (NSNumber)tipKitCachedCountOfLists;
- (NSNumber)tipKitCachedCountOfListsWithCustomBadge;
- (NSNumber)tipKitCachedCountOfUncompletedReminders;
- (NSString)acAccountIdentifierToMergeLocalDataIntoSyncData;
- (NSString)cloudKitMergeLocalLastBuildVersionMaxRetryReached;
- (NSString)cloudKitSchemaCatchUpSyncLastSuccessBuildVersion;
- (NSString)lastDatabaseMigrationSystemBuildVersion;
- (NSString)timeZoneOverride;
- (NSString)trialAssetsDirectoryDebugOverride;
- (NSURL)preferredDefaultListObjectIDUrl;
- (REMDaemonUserDefaults)initWithSuiteName:(id)a3 containerURL:(id)a4;
- (REMObjectID)preferredDefaultListID;
- (id)observeEnableAssignmentNotificationsWithBlock:(id)a3;
- (id)observeEnableAutoCompleteRemindersWithBlock:(id)a3;
- (id)observePreferredDefaultListIDWithBlock:(id)a3;
- (id)observeShouldIncludeRemindersDueTodayInBadgeCountWithBlock:(id)a3;
- (id)observeShowRemindersAsOverdueWithBlock:(id)a3;
- (id)observeTimeZoneOverrideEnabledWithBlock:(id)a3;
- (id)observeTimeZoneOverrideWithBlock:(id)a3;
- (id)observeTodayNotificationFireTimeWithBlock:(id)a3;
- (id)observeTreatRemindersAsNotOverdueWithBlock:(id)a3;
- (id)streamShouldIncludeRemindersDueTodayInBadgeCount:(id)a3;
- (id)streamTodayNotificationFireTime:(id)a3;
- (unint64_t)muteNotificationOptionsForSharedList:(id)a3;
- (void)deletePreferredDefaultListID;
- (void)deletePreferredDefaultListObjectIDUrl;
- (void)ppt_handleInstall;
- (void)ppt_handleRestore;
- (void)removeHideEmptySectionsForGroceryList:(id)a3;
- (void)removeMuteNotificationOptionsForSharedList:(id)a3;
- (void)setAcAccountIdentifierToMergeLocalDataIntoSyncData:(id)a3;
- (void)setAcAccountIdentifiersToMigrateInactivatedCalDavData:(id)a3;
- (void)setAccountsListCategorizedCountsCache:(id)a3;
- (void)setAnalyticsActivityLastExecutionDate:(id)a3;
- (void)setAutomaticSecondaryGroceryLocales:(id)a3;
- (void)setAutomaticSecondaryGroceryLocalesLastModifiedDate:(id)a3;
- (void)setBestKForKNN:(id)a3;
- (void)setCloudKitMaxNumAlarmIDsInReminderCKRecordDebugOverride:(id)a3;
- (void)setCloudKitMergeLocalLastBuildVersionMaxRetryReached:(id)a3;
- (void)setCloudKitMergeLocalLastDateMaxRetryReached:(id)a3;
- (void)setCloudKitMigrationDelayAfterError:(id)a3;
- (void)setCloudKitMigrationMaxNumFailures:(id)a3;
- (void)setCloudKitMigrationMaxNumInvocations:(id)a3;
- (void)setCloudKitMigrationObserverPollingInterval:(id)a3;
- (void)setCloudKitMigrationSimulatedError:(id)a3;
- (void)setCloudKitResultsLimitPerSyncOperation:(id)a3;
- (void)setCloudKitSchemaCatchUpSyncLastScheduledDate:(id)a3;
- (void)setCloudKitSchemaCatchUpSyncLastSuccessBuildVersion:(id)a3;
- (void)setCloudKitSchemaCatchUpSyncLastSuccessDate:(id)a3;
- (void)setCloudKitSchemaCatchUpSyncSchedulingState:(id)a3;
- (void)setCoreBehaviorTrainingParameters:(id)a3;
- (void)setDataSeparationAppDocumentsURLDebugOverride:(id)a3;
- (void)setDebugSimulatedCKErrorCode:(id)a3;
- (void)setHashtagLabelsInCustomSmartListFilterCache:(id)a3;
- (void)setHideEmptySectionsForGroceryList:(id)a3;
- (void)setImageDeduplicationLastExecutionDate:(id)a3;
- (void)setImageDeduplicationLegacyAttachmentsMarkedForDeletion:(id)a3;
- (void)setLastCloudConfigurationDownload:(id)a3;
- (void)setLastDataSeparationMigrationDate:(id)a3;
- (void)setLastDatabaseMigrationSystemBuildVersion:(id)a3;
- (void)setLastDismissedNotificationsPermissionInlineRequestDate:(id)a3;
- (void)setLastExtraneousAlarmsCollectorExecutionDate:(id)a3;
- (void)setLastPresentAlarmDate:(id)a3;
- (void)setLastSuggestedAttributesAutoTrainingExecutionDate:(id)a3;
- (void)setLastSuggestedAttributesAutoTrainingToken:(id)a3;
- (void)setLastSyncPoll:(id)a3;
- (void)setLastViewedNotificationsPermissionWarmingSheetDate:(id)a3;
- (void)setMuteNotificationForSharedList:(id)a3;
- (void)setMuteNotificationOptions:(unint64_t)a3 forSharedList:(id)a4;
- (void)setNextScheduledAlarmDate:(id)a3;
- (void)setPreferredDefaultListID:(id)a3;
- (void)setPreferredDefaultListObjectIDUrl:(id)a3;
- (void)setPreferredLocalizations:(id)a3;
- (void)setRemCurrentRuntimeVersionDebuggingOverride:(id)a3;
- (void)setSavedImageDeduplicationLastExecutionDate:(id)a3;
- (void)setSavedImageDeduplicationLegacyAttachmentsMarkedForDeletion:(id)a3;
- (void)setSpotlightIndexVersion:(id)a3;
- (void)setStaledFileAttachmentCleanupLastExecutionDate:(id)a3;
- (void)setSuggestConversionToGroceryListLastExecutionDate:(id)a3;
- (void)setSuggestedAttributesHarvestingOverrides:(id)a3;
- (void)setSuggestedAttributesTrainingOverrides:(id)a3;
- (void)setSyncActivityNotificationEngine_accountSignInTime:(id)a3;
- (void)setTimeZoneOverride:(id)a3;
- (void)setTipKitCachedCountOfCustomSmartLists:(id)a3;
- (void)setTipKitCachedCountOfHashtags:(id)a3;
- (void)setTipKitCachedCountOfLists:(id)a3;
- (void)setTipKitCachedCountOfListsWithCustomBadge:(id)a3;
- (void)setTipKitCachedCountOfUncompletedReminders:(id)a3;
- (void)setTodayNotificationFireTime:(id)a3;
- (void)setTrialAssetsDirectoryDebugOverride:(id)a3;
- (void)setUserInteractionsData:(id)a3;
@end

@implementation REMDaemonUserDefaults

- (BOOL)timeZoneOverrideEnabled
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"timeZoneOverrideEnabled"];

  return v3;
}

- (NSNumber)remCurrentRuntimeVersionDebuggingOverride
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"remCurrentRuntimeVersionDebuggingOverride"];

  return v3;
}

- (NSData)accountsListCategorizedCountsCache
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"accountsListCategorizedCountsCache"];

  return v3;
}

- (NSURL)preferredDefaultListObjectIDUrl
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"preferredDefaultListObjectIDUrl"];

  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];

  return v4;
}

- (NSData)hashtagLabelsInCustomSmartListFilterCache
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"hashtagLabelsInCustomSmartListFilterCache"];

  return v3;
}

- (NSDate)lastDismissedNotificationsPermissionInlineRequestDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"lastDismissedNotificationsPermissionInlineRequestDate"];

  return v3;
}

- (REMDaemonUserDefaults)initWithSuiteName:(id)a3 containerURL:(id)a4
{
  v10.receiver = self;
  v10.super_class = REMDaemonUserDefaults;
  v4 = [(REMUserDefaults *)&v10 initWithSuiteName:a3 containerURL:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(REMUserDefaults *)v4 userDefaults];
    v7 = +[REMDaemonUserDefaults defaultValues];
    [v6 registerDefaults:v7];

    v8 = [(REMUserDefaults *)v5 userDefaults];
    -[REMUserDefaults setShowRemindersAsOverdue_cached:](v5, "setShowRemindersAsOverdue_cached:", [v8 BOOLForKey:@"showRemindersAsOverdue"]);
  }

  return v5;
}

- (BOOL)databaseMigrationTestModeEnabled
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"databaseMigrationTestModeEnabled"];

  return v3;
}

- (BOOL)isDatabaseMigrated
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"isDatabaseMigrated"];

  return v3;
}

- (BOOL)databaseMigrationTimedOut
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"databaseMigrationTimedOut"];

  return v3;
}

- (NSString)lastDatabaseMigrationSystemBuildVersion
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 stringForKey:@"lastDatabaseMigrationSystemBuildVersion"];

  return v3;
}

- (void)setLastDatabaseMigrationSystemBuildVersion:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"lastDatabaseMigrationSystemBuildVersion"];
}

- (NSNumber)cloudKitMigrationMaxNumInvocations
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"cloudKitMigrationMaxNumInvocations"];

  return v3;
}

- (void)setCloudKitMigrationMaxNumInvocations:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"cloudKitMigrationMaxNumInvocations"];
}

- (NSNumber)cloudKitMigrationMaxNumFailures
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"cloudKitMigrationMaxNumFailures"];

  return v3;
}

- (void)setCloudKitMigrationMaxNumFailures:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"cloudKitMigrationMaxNumFailures"];
}

- (NSNumber)cloudKitMigrationDelayAfterError
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"cloudKitMigrationDelayAfterError"];

  return v3;
}

- (void)setCloudKitMigrationDelayAfterError:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"cloudKitMigrationDelayAfterError"];
}

- (NSNumber)cloudKitMigrationObserverPollingInterval
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"cloudKitMigrationObserverPollingInterval"];

  return v3;
}

- (void)setCloudKitMigrationObserverPollingInterval:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"cloudKitMigrationObserverPollingInterval"];
}

- (NSNumber)cloudKitMigrationSimulatedError
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"cloudKitMigrationSimulatedError"];

  return v3;
}

- (void)setCloudKitMigrationSimulatedError:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"cloudKitMigrationSimulatedError"];
}

- (NSNumber)cloudKitResultsLimitPerSyncOperation
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"cloudKitResultsLimitPerSyncOperation"];

  return v3;
}

- (void)setCloudKitResultsLimitPerSyncOperation:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"cloudKitResultsLimitPerSyncOperation"];
}

- (BOOL)cloudKitMigrationDisableCleanUp
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"cloudKitMigrationDisableCleanUp"];

  return v3;
}

- (REMObjectID)preferredDefaultListID
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"preferredDefaultListID"];

  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  if (v4)
  {
    v5 = [REMObjectID objectIDWithURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPreferredDefaultListID:(id)a3
{
  v4 = a3;
  [(REMDaemonUserDefaults *)self deletePreferredDefaultListObjectIDUrl];
  v5 = [v4 urlRepresentation];

  v6 = [v5 absoluteString];

  v7 = [(REMUserDefaults *)self userDefaults];
  [v7 setObject:v6 forKey:@"preferredDefaultListID"];

  v8 = +[REMLog utility];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_DEFAULT, "Trigger NPS sync for preferredDefaultListID to paired device.", v12, 2u);
  }

  v9 = objc_opt_new();
  v10 = [(REMUserDefaults *)self suiteName];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D99988];
  [v9 synchronizeUserDefaultsDomain:v10 keys:v11];
}

- (void)deletePreferredDefaultListID
{
  [(REMDaemonUserDefaults *)self deletePreferredDefaultListObjectIDUrl];
  v3 = [(REMUserDefaults *)self userDefaults];
  [v3 removeObjectForKey:@"preferredDefaultListID"];
}

- (void)deletePreferredDefaultListObjectIDUrl
{
  v2 = [(REMUserDefaults *)self userDefaults];
  [v2 removeObjectForKey:@"preferredDefaultListObjectIDUrl"];
}

- (id)observePreferredDefaultListIDWithBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__REMDaemonUserDefaults_observePreferredDefaultListIDWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(REMUserDefaults *)self _startObservingValuesForKey:@"preferredDefaultListID" block:v8];

  return v6;
}

void __64__REMDaemonUserDefaults_observePreferredDefaultListIDWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) preferredDefaultListID];
  (*(v1 + 16))(v1, v2);
}

- (void)setPreferredDefaultListObjectIDUrl:(id)a3
{
  v5 = [a3 absoluteString];
  v4 = [(REMUserDefaults *)self userDefaults];
  [v4 setObject:v5 forKey:@"preferredDefaultListObjectIDUrl"];
}

- (NSArray)preferredLocalizations
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"preferredLocalizations"];

  return v3;
}

- (void)setPreferredLocalizations:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"preferredLocalizations"];
}

- (NSString)acAccountIdentifierToMergeLocalDataIntoSyncData
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"acAccountIdentifierToMergeLocalDataIntoSyncData"];

  return v3;
}

- (void)setAcAccountIdentifierToMergeLocalDataIntoSyncData:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"acAccountIdentifierToMergeLocalDataIntoSyncData"];
}

- (NSArray)acAccountIdentifiersToMigrateInactivatedCalDavData
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"acAccountIdentifiersToMigrateInactivatedCalDavData"];

  return v3;
}

- (void)setAcAccountIdentifiersToMigrateInactivatedCalDavData:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"acAccountIdentifiersToMigrateInactivatedCalDavData"];
}

- (NSDate)cloudKitMergeLocalLastDateMaxRetryReached
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"cloudKitMergeLocalLastDateMaxRetryReached"];

  return v3;
}

- (void)setCloudKitMergeLocalLastDateMaxRetryReached:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"cloudKitMergeLocalLastDateMaxRetryReached"];
}

- (NSString)cloudKitMergeLocalLastBuildVersionMaxRetryReached
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"cloudKitMergeLocalLastBuildVersionMaxRetryReached"];

  return v3;
}

- (void)setCloudKitMergeLocalLastBuildVersionMaxRetryReached:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"cloudKitMergeLocalLastBuildVersionMaxRetryReached"];
}

- (NSDate)cloudKitSchemaCatchUpSyncLastSuccessDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"cloudKitSchemaCatchUpSyncLastSuccessDate"];

  return v3;
}

- (void)setCloudKitSchemaCatchUpSyncLastSuccessDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"cloudKitSchemaCatchUpSyncLastSuccessDate"];
}

- (NSString)cloudKitSchemaCatchUpSyncLastSuccessBuildVersion
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"cloudKitSchemaCatchUpSyncLastSuccessBuildVersion"];

  return v3;
}

- (void)setCloudKitSchemaCatchUpSyncLastSuccessBuildVersion:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"cloudKitSchemaCatchUpSyncLastSuccessBuildVersion"];
}

- (NSNumber)cloudKitSchemaCatchUpSyncSchedulingState
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"cloudKitSchemaCatchUpSyncSchedulingState"];

  return v3;
}

- (void)setCloudKitSchemaCatchUpSyncSchedulingState:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"cloudKitSchemaCatchUpSyncSchedulingState"];
}

- (NSDate)cloudKitSchemaCatchUpSyncLastScheduledDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"cloudKitSchemaCatchUpSyncLastScheduledDate"];

  return v3;
}

- (void)setCloudKitSchemaCatchUpSyncLastScheduledDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"cloudKitSchemaCatchUpSyncLastScheduledDate"];
}

- (BOOL)debugForceSupportCloudKitSchemaCatchUpSyncBackgroundScheduling
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"debugForceSupportCloudKitSchemaCatchUpSyncBackgroundScheduling"];

  return v3;
}

- (NSNumber)cloudKitMaxNumAlarmIDsInReminderCKRecordDebugOverride
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"cloudKitMaxNumAlarmIDsInReminderCKRecordDebugOverride"];

  return v3;
}

- (void)setCloudKitMaxNumAlarmIDsInReminderCKRecordDebugOverride:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"cloudKitMaxNumAlarmIDsInReminderCKRecordDebugOverride"];
}

- (NSNumber)debugSimulatedCKErrorCode
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"debugSimulatedCKErrorCode"];

  return v3;
}

- (void)setDebugSimulatedCKErrorCode:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"debugSimulatedCKErrorCode"];
}

- (NSNumber)spotlightIndexVersion
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"spotlightIndexVersion"];

  return v3;
}

- (void)setSpotlightIndexVersion:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"spotlightIndexVersion"];
}

- (NSDate)nextScheduledAlarmDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"nextScheduledAlarmDate"];

  return v3;
}

- (void)setNextScheduledAlarmDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"nextScheduledAlarmDate"];
}

- (NSDate)lastPresentAlarmDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"lastPresentAlarmDate"];

  return v3;
}

- (void)setLastPresentAlarmDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"lastPresentAlarmDate"];
}

- (id)observeTimeZoneOverrideEnabledWithBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__REMDaemonUserDefaults_observeTimeZoneOverrideEnabledWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(REMUserDefaults *)self _startObservingValuesForKey:@"timeZoneOverrideEnabled" block:v8];

  return v6;
}

uint64_t __65__REMDaemonUserDefaults_observeTimeZoneOverrideEnabledWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) timeZoneOverrideEnabled];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (NSString)timeZoneOverride
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"timeZoneOverride"];

  return v3;
}

- (void)setTimeZoneOverride:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"timeZoneOverride"];
}

- (id)observeTimeZoneOverrideWithBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__REMDaemonUserDefaults_observeTimeZoneOverrideWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(REMUserDefaults *)self _startObservingValuesForKey:@"timeZoneOverride" block:v8];

  return v6;
}

void __58__REMDaemonUserDefaults_observeTimeZoneOverrideWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) timeZoneOverride];
  (*(v1 + 16))(v1, v2);
}

- (NSData)lastSuggestedAttributesAutoTrainingToken
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"lastSuggestedAttributesAutoTrainingToken"];

  return v3;
}

- (void)setLastSuggestedAttributesAutoTrainingToken:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"lastSuggestedAttributesAutoTrainingToken"];
}

- (NSDate)lastSuggestedAttributesAutoTrainingExecutionDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"lastSuggestedAttributesAutoTrainingExecutionDate"];

  return v3;
}

- (void)setLastSuggestedAttributesAutoTrainingExecutionDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"lastSuggestedAttributesAutoTrainingExecutionDate"];
}

- (void)setSuggestedAttributesHarvestingOverrides:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"suggestedAttributesHarvestingOverrides"];
}

- (void)setMuteNotificationForSharedList:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"muteNotificationForSharedList"];

  v6 = +[REMLog utility];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_DEFAULT, "Trigger NPS sync for muteNotificationForSharedList to paired device.", v10, 2u);
  }

  v7 = objc_opt_new();
  v8 = [(REMUserDefaults *)self suiteName];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D999A0];
  [v7 synchronizeUserDefaultsDomain:v8 keys:v9];
}

- (unint64_t)muteNotificationOptionsForSharedList:(id)a3
{
  v4 = a3;
  v5 = [(REMDaemonUserDefaults *)self muteNotificationForSharedList];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

- (void)setMuteNotificationOptions:(unint64_t)a3 forSharedList:(id)a4
{
  v6 = a4;
  v7 = [(REMDaemonUserDefaults *)self muteNotificationForSharedList];
  v9 = [v7 mutableCopy];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  if (v9)
  {
    [v9 setObject:v8 forKeyedSubscript:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithObject:v8 forKey:v6];
  }

  [(REMDaemonUserDefaults *)self setMuteNotificationForSharedList:v9];
}

- (void)removeMuteNotificationOptionsForSharedList:(id)a3
{
  v7 = a3;
  v4 = [(REMDaemonUserDefaults *)self muteNotificationForSharedList];
  v5 = [v4 mutableCopy];

  v6 = [v5 objectForKeyedSubscript:v7];

  if (v6)
  {
    [v5 removeObjectForKey:v7];
    [(REMDaemonUserDefaults *)self setMuteNotificationForSharedList:v5];
  }
}

- (void)setHideEmptySectionsForGroceryList:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"hideEmptySectionsForGroceryList"];

  v6 = +[REMLog utility];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_DEFAULT, "Trigger NPS sync for hideEmptySectionsForGroceryList to paired device.", v10, 2u);
  }

  v7 = objc_opt_new();
  v8 = [(REMUserDefaults *)self suiteName];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D999B8];
  [v7 synchronizeUserDefaultsDomain:v8 keys:v9];
}

- (BOOL)hideEmptySectionsForGroceryList:(id)a3
{
  v4 = a3;
  v5 = [(REMDaemonUserDefaults *)self hideEmptySectionsForGroceryList];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)removeHideEmptySectionsForGroceryList:(id)a3
{
  v7 = a3;
  v4 = [(REMDaemonUserDefaults *)self hideEmptySectionsForGroceryList];
  v5 = [v4 mutableCopy];

  v6 = [v5 objectForKeyedSubscript:v7];

  if (v6)
  {
    [v5 removeObjectForKey:v7];
    [(REMDaemonUserDefaults *)self setHideEmptySectionsForGroceryList:v5];
  }
}

- (void)setBestKForKNN:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  v6 = [v5 objectForKey:@"suggestedAttributesHarvestingOverrides"];

  v7 = [(REMUserDefaults *)self userDefaults];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 dictionaryForKey:@"suggestedAttributesHarvestingOverrides"];
    v10 = [v9 mutableCopy];

    v11 = [v10 objectForKeyedSubscript:@"embedding"];

    if (v11)
    {
      v12 = [v10 objectForKey:@"embedding"];
      v13 = [v12 mutableCopy];

      [v13 setObject:v4 forKeyedSubscript:@"neighborsToConsider"];
      [v10 setObject:v13 forKeyedSubscript:@"embedding"];
      v14 = [(REMUserDefaults *)self userDefaults];
      [v14 setObject:v10 forKey:@"suggestedAttributesHarvestingOverrides"];
    }

    else
    {
      v20 = @"neighborsToConsider";
      v21 = v4;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [v10 setObject:v17 forKey:@"embedding"];

      v18 = [(REMUserDefaults *)self userDefaults];
      [v18 setObject:v10 forKey:@"suggestedAttributesHarvestingOverrides"];
    }

    v8 = v10;
  }

  else
  {
    v23 = v4;
    v24 = @"embedding";
    v22 = @"neighborsToConsider";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v8 setObject:v16 forKey:@"suggestedAttributesHarvestingOverrides"];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setSuggestedAttributesTrainingOverrides:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"suggestedAttributesTrainingOverrides"];
}

- (void)setCoreBehaviorTrainingParameters:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  v6 = [v5 objectForKey:@"suggestedAttributesTrainingOverrides"];

  v7 = [(REMUserDefaults *)self userDefaults];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 dictionaryForKey:@"suggestedAttributesTrainingOverrides"];
    v14 = [v9 mutableCopy];

    [v14 setObject:v4 forKey:@"corebehavior"];
    v10 = [(REMUserDefaults *)self userDefaults];
    [v10 setObject:v14 forKey:@"suggestedAttributesTrainingOverrides"];

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v15 = @"corebehavior";
    v16[0] = v4;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

    [v8 setObject:v12 forKey:@"suggestedAttributesTrainingOverrides"];
    v13 = *MEMORY[0x1E69E9840];
  }
}

- (NSDate)lastSyncPoll
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"lastSyncPoll"];

  return v3;
}

- (void)setLastSyncPoll:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"lastSyncPoll"];
}

- (NSDate)lastCloudConfigurationDownload
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"lastCloudConfigurationDownload"];

  return v3;
}

- (void)setLastCloudConfigurationDownload:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"lastCloudConfigurationDownload"];
}

- (NSDate)staledFileAttachmentCleanupLastExecutionDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"staledFileAttachmentCleanupLastExecutionDate"];

  return v3;
}

- (void)setStaledFileAttachmentCleanupLastExecutionDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"staledFileAttachmentCleanupLastExecutionDate"];
}

- (BOOL)staledFileAttachmentCleanupContainerDeemedClean
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"staledFileAttachmentCleanupContainerDeemedClean"];

  return v3;
}

- (BOOL)extraneousAlarmsCollectorContainerDeemedClean
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"extraneousAlarmsCollectorContainerDeemedClean"];

  return v3;
}

- (NSDate)lastExtraneousAlarmsCollectorExecutionDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"lastExtraneousAlarmsCollectorExecutionDate"];

  return v3;
}

- (void)setLastExtraneousAlarmsCollectorExecutionDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"lastExtraneousAlarmsCollectorExecutionDate"];
}

- (NSDate)imageDeduplicationLastExecutionDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"imageDeduplicationLastExecutionDate"];

  return v3;
}

- (void)setImageDeduplicationLastExecutionDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"imageDeduplicationLastExecutionDate"];
}

- (NSDate)suggestConversionToGroceryListLastExecutionDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"suggestConversionToGroceryListLastExecutionDate"];

  return v3;
}

- (void)setSuggestConversionToGroceryListLastExecutionDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"suggestConversionToGroceryListLastExecutionDate"];
}

- (NSDate)analyticsActivityLastExecutionDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"analyticsActivityLastExecutionDate"];

  return v3;
}

- (void)setAnalyticsActivityLastExecutionDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"analyticsActivityLastExecutionDate"];
}

- (NSArray)imageDeduplicationLegacyAttachmentsMarkedForDeletion
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"imageDeduplicationLegacyAttachmentsMarkedForDeletion"];

  return v3;
}

- (void)setImageDeduplicationLegacyAttachmentsMarkedForDeletion:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"imageDeduplicationLegacyAttachmentsMarkedForDeletion"];
}

- (NSDate)savedImageDeduplicationLastExecutionDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"savedImageDeduplicationLastExecutionDate"];

  return v3;
}

- (void)setSavedImageDeduplicationLastExecutionDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"savedImageDeduplicationLastExecutionDate"];
}

- (NSArray)savedImageDeduplicationLegacyAttachmentsMarkedForDeletion
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"savedImageDeduplicationLegacyAttachmentsMarkedForDeletion"];

  return v3;
}

- (void)setSavedImageDeduplicationLegacyAttachmentsMarkedForDeletion:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"savedImageDeduplicationLegacyAttachmentsMarkedForDeletion"];
}

- (NSData)userInteractionsData
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"userInteractionsData"];

  return v3;
}

- (void)setUserInteractionsData:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"userInteractionsData"];
}

- (BOOL)simulateMAIDAccount
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"simulateMAIDAccount"];

  return v3;
}

- (BOOL)showRemindersAsOverdueWithShouldBypassCache:(BOOL)a3
{
  v5 = [(REMUserDefaults *)self userDefaults];
  v6 = [v5 BOOLForKey:@"showRemindersAsOverdue"];

  if (a3)
  {
    return v6;
  }

  return [(REMUserDefaults *)self showRemindersAsOverdue_cached];
}

- (id)observeShowRemindersAsOverdueWithBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__REMDaemonUserDefaults_observeShowRemindersAsOverdueWithBlock___block_invoke;
  v8[3] = &unk_1E75092D0;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(REMUserDefaults *)self _startObservingValuesForKey:@"showRemindersAsOverdue" block:v8];

  return v6;
}

uint64_t __64__REMDaemonUserDefaults_observeShowRemindersAsOverdueWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userDefaults];
  v3 = [v2 BOOLForKey:@"showRemindersAsOverdue"];

  [*(a1 + 32) setShowRemindersAsOverdue_cached:v3];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (BOOL)treatRemindersAsNotOverdue
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"treatRemindersAsNotOverdue"];

  return v3;
}

- (id)observeTreatRemindersAsNotOverdueWithBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__REMDaemonUserDefaults_observeTreatRemindersAsNotOverdueWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(REMUserDefaults *)self _startObservingValuesForKey:@"treatRemindersAsNotOverdue" block:v8];

  return v6;
}

uint64_t __68__REMDaemonUserDefaults_observeTreatRemindersAsNotOverdueWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) treatRemindersAsNotOverdue];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (BOOL)enableWelcomeScreen
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"enableWelcomeScreen"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)forceShowWelcomeScreen
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"forceShowWelcomeScreen"];

  return v3;
}

- (BOOL)forceShowWhatsNewScreen
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"forceShowWhatsNewScreen"];

  return v3;
}

- (BOOL)enableInAppDebugMenu
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"enableInAppDebugMenu"];

  return v3;
}

- (BOOL)enableHashingUserIdentifiablesWithPersonIDSalt
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"enableHashingUserIdentifiablesWithPersonIDSalt"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)todayNotificationFireTimeFromStorageNumber:(id)a3
{
  v3 = a3;
  v4 = [v3 integerValue];
  if (v4 == -1)
  {
    v5 = 0;
  }

  else
  {
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v5 setHour:{objc_msgSend(v3, "integerValue") / 100}];
      v7 = [v3 integerValue] % 100;
      v6 = v5;
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v5 setHour:9];
      v6 = v5;
      v7 = 0;
    }

    [v6 setMinute:v7];
  }

  return v5;
}

+ (id)storageNumberForTodayNotificationTime:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = a3;
    v6 = [v5 hour];
    v7 = [v5 minute];

    v8 = [v4 numberWithInteger:v7 + 100 * v6];
  }

  else
  {
    v8 = &unk_1F0D99AF0;
  }

  return v8;
}

- (NSDateComponents)todayNotificationFireTime
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"todayNotificationFireTime"];

  v4 = objc_opt_class();
  v5 = REMCheckedDynamicCast(v4, v3);
  v6 = [objc_opt_class() todayNotificationFireTimeFromStorageNumber:v5];

  return v6;
}

- (void)setTodayNotificationFireTime:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() storageNumberForTodayNotificationTime:v4];

  v6 = [(REMUserDefaults *)self userDefaults];
  [v6 setObject:v5 forKey:@"todayNotificationFireTime"];

  v7 = +[REMLog utility];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_DEFAULT, "Trigger NPS sync for todayNotificationFireTime to paired device.", v11, 2u);
  }

  v8 = objc_opt_new();
  v9 = [(REMUserDefaults *)self suiteName];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D999D0];
  [v8 synchronizeUserDefaultsDomain:v9 keys:v10];
}

- (id)streamTodayNotificationFireTime:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__REMDaemonUserDefaults_streamTodayNotificationFireTime___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(REMUserDefaults *)self _startStreamingValuesForKey:@"todayNotificationFireTime" block:v8];

  return v6;
}

void __57__REMDaemonUserDefaults_streamTodayNotificationFireTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) todayNotificationFireTime];
  (*(v1 + 16))(v1, v2);
}

- (id)observeTodayNotificationFireTimeWithBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__REMDaemonUserDefaults_observeTodayNotificationFireTimeWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(REMUserDefaults *)self _startObservingValuesForKey:@"todayNotificationFireTime" block:v8];

  return v6;
}

void __67__REMDaemonUserDefaults_observeTodayNotificationFireTimeWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) todayNotificationFireTime];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)disableAlarmEngineDataSourcePrefetching
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"disableAlarmEngineDataSourcePrefetching"];

  return v3;
}

- (BOOL)enableAssignmentNotifications
{
  v3 = [(REMUserDefaults *)self userDefaults];
  v4 = [v3 objectForKey:@"enableAssignmentNotifications"];

  if (!v4)
  {
    return 1;
  }

  v5 = [(REMUserDefaults *)self userDefaults];
  v6 = [v5 BOOLForKey:@"enableAssignmentNotifications"];

  return v6;
}

- (id)observeEnableAssignmentNotificationsWithBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__REMDaemonUserDefaults_observeEnableAssignmentNotificationsWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(REMUserDefaults *)self _startObservingValuesForKey:@"enableAssignmentNotifications" block:v8];

  return v6;
}

uint64_t __71__REMDaemonUserDefaults_observeEnableAssignmentNotificationsWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) enableAssignmentNotifications];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (BOOL)enableAutoCompleteReminders
{
  v3 = [(REMUserDefaults *)self userDefaults];
  v4 = [v3 objectForKey:@"enableAutoCompleteReminders"];

  if (!v4)
  {
    return 1;
  }

  v5 = [(REMUserDefaults *)self userDefaults];
  v6 = [v5 BOOLForKey:@"enableAutoCompleteReminders"];

  return v6;
}

- (id)observeEnableAutoCompleteRemindersWithBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__REMDaemonUserDefaults_observeEnableAutoCompleteRemindersWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(REMUserDefaults *)self _startObservingValuesForKey:@"enableAutoCompleteReminders" block:v8];

  return v6;
}

uint64_t __69__REMDaemonUserDefaults_observeEnableAutoCompleteRemindersWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) enableAutoCompleteReminders];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (NSDictionary)suggestedAttributesTrainingOverrides
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"suggestedAttributesTrainingOverrides"];

  return v3;
}

- (NSDictionary)suggestedAttributesHarvestingOverrides
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"suggestedAttributesHarvestingOverrides"];

  return v3;
}

- (NSDictionary)muteNotificationForSharedList
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"muteNotificationForSharedList"];

  return v3;
}

- (NSDictionary)hideEmptySectionsForGroceryList
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"hideEmptySectionsForGroceryList"];

  return v3;
}

- (void)setAccountsListCategorizedCountsCache:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"accountsListCategorizedCountsCache"];
}

- (void)setHashtagLabelsInCustomSmartListFilterCache:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"hashtagLabelsInCustomSmartListFilterCache"];
}

- (BOOL)debugSimulateSqliteFull
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"debugSimulateSqliteFull"];

  return v3;
}

- (NSNumber)tipKitCachedCountOfUncompletedReminders
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"tipKitCachedCountOfUncompletedReminders"];

  return v3;
}

- (void)setTipKitCachedCountOfUncompletedReminders:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"tipKitCachedCountOfUncompletedReminders"];
}

- (NSNumber)tipKitCachedCountOfLists
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"tipKitCachedCountOfLists"];

  return v3;
}

- (void)setTipKitCachedCountOfLists:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"tipKitCachedCountOfLists"];
}

- (NSNumber)tipKitCachedCountOfListsWithCustomBadge
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"tipKitCachedCountOfListsWithCustomBadge"];

  return v3;
}

- (void)setTipKitCachedCountOfListsWithCustomBadge:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"tipKitCachedCountOfListsWithCustomBadge"];
}

- (NSNumber)tipKitCachedCountOfCustomSmartLists
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"tipKitCachedCountOfCustomSmartLists"];

  return v3;
}

- (void)setTipKitCachedCountOfCustomSmartLists:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"tipKitCachedCountOfCustomSmartLists"];
}

- (NSNumber)tipKitCachedCountOfHashtags
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"tipKitCachedCountOfHashtags"];

  return v3;
}

- (void)setTipKitCachedCountOfHashtags:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"tipKitCachedCountOfHashtags"];
}

- (NSDate)lastViewedNotificationsPermissionWarmingSheetDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"lastViewedNotificationsPermissionWarmingSheetDate"];

  return v3;
}

- (void)setLastViewedNotificationsPermissionWarmingSheetDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"lastViewedNotificationsPermissionWarmingSheetDate"];
}

- (void)setLastDismissedNotificationsPermissionInlineRequestDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"lastDismissedNotificationsPermissionInlineRequestDate"];
}

- (BOOL)hasViewedContactsAccessAlertForLocation
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"hasViewedContactsAccessAlertForLocation"];

  return v3;
}

- (BOOL)groceryTipDismissed
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"groceryTipDismissed"];

  return v3;
}

- (BOOL)hasCreatedGroceryList
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"hasCreatedGroceryList"];

  return v3;
}

- (BOOL)hasViewedContactsAccessAlertForMessaging
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"hasViewedContactsAccessAlertForMessaging"];

  return v3;
}

- (BOOL)hasViewedContactsAccessAlertForCalDAVSharing
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"hasViewedContactsAccessAlertForCalDAVSharing"];

  return v3;
}

- (BOOL)didShowReminderDeletePrivacyWarning
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"didShowReminderDeletePrivacyWarning"];

  return v3;
}

- (BOOL)hasSeenGroceryFeedbackSurvey
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"hasSeenGroceryFeedbackSurvey"];

  return v3;
}

- (BOOL)enableGroceryFeedbackSurvey
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"enableGroceryFeedbackSurvey"];

  return v3;
}

- (void)setRemCurrentRuntimeVersionDebuggingOverride:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"remCurrentRuntimeVersionDebuggingOverride"];
}

- (BOOL)forceEligibleForAutoCloudKitMigration
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"forceEligibleForAutoCloudKitMigration"];

  return v3;
}

- (BOOL)forceBasicAAAccountEligibleForCloudKitReminders
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"forceBasicAAAccountEligibleForCloudKitReminders"];

  return v3;
}

- (NSDictionary)dataSeparationAppDocumentsURLDebugOverride
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"dataSeparationAppDocumentsURLDebugOverride"];

  return v3;
}

- (void)setDataSeparationAppDocumentsURLDebugOverride:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"dataSeparationAppDocumentsURLDebugOverride"];
}

- (NSDate)lastDataSeparationMigrationDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"lastDataSeparationMigrationDate"];

  return v3;
}

- (void)setLastDataSeparationMigrationDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"lastDataSeparationMigrationDate"];
}

- (NSDictionary)syncActivityNotificationEngine_accountSignInTime
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"syncActivityNotificationEngine_accountSignInTime"];

  return v3;
}

- (void)setSyncActivityNotificationEngine_accountSignInTime:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"syncActivityNotificationEngine_accountSignInTime"];
}

- (BOOL)sharedListActivityNotifications_demoMode
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"sharedListActivityNotifications_demoMode"];

  return v3;
}

- (BOOL)shouldIncludeRemindersDueTodayInBadgeCount
{
  v3 = [(REMUserDefaults *)self userDefaults];
  v4 = [v3 objectForKey:@"shouldIncludeRemindersDueTodayInBadgeCount"];

  if (!v4)
  {
    return 0;
  }

  v5 = [(REMUserDefaults *)self userDefaults];
  v6 = [v5 BOOLForKey:@"shouldIncludeRemindersDueTodayInBadgeCount"];

  return v6;
}

- (id)streamShouldIncludeRemindersDueTodayInBadgeCount:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__REMDaemonUserDefaults_streamShouldIncludeRemindersDueTodayInBadgeCount___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(REMUserDefaults *)self _startStreamingValuesForKey:@"shouldIncludeRemindersDueTodayInBadgeCount" block:v8];

  return v6;
}

uint64_t __74__REMDaemonUserDefaults_streamShouldIncludeRemindersDueTodayInBadgeCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) shouldIncludeRemindersDueTodayInBadgeCount];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (id)observeShouldIncludeRemindersDueTodayInBadgeCountWithBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__REMDaemonUserDefaults_observeShouldIncludeRemindersDueTodayInBadgeCountWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(REMUserDefaults *)self _startObservingValuesForKey:@"shouldIncludeRemindersDueTodayInBadgeCount" block:v8];

  return v6;
}

uint64_t __84__REMDaemonUserDefaults_observeShouldIncludeRemindersDueTodayInBadgeCountWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) shouldIncludeRemindersDueTodayInBadgeCount];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (BOOL)isSpotlightQueryLoggingEnabled
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"isSpotlightQueryLoggingEnabled"];

  return v3;
}

- (BOOL)isAutoCategorizationLoggingEnabled
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"isAutoCategorizationLoggingEnabled"];

  return v3;
}

- (BOOL)excludeExistingSectionsForAutoCategorizationEnabled
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"excludeExistingSectionsForAutoCategorizationEnabled"];

  return v3;
}

- (NSString)trialAssetsDirectoryDebugOverride
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 stringForKey:@"trialAssetsDirectoryDebugOverride"];

  return v3;
}

- (void)setTrialAssetsDirectoryDebugOverride:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"trialAssetsDirectoryDebugOverride"];
}

- (NSDate)automaticSecondaryGroceryLocalesLastModifiedDate
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"automaticSecondaryGroceryLocalesLastModifiedDate"];

  return v3;
}

- (void)setAutomaticSecondaryGroceryLocalesLastModifiedDate:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"automaticSecondaryGroceryLocalesLastModifiedDate"];
}

- (NSArray)automaticSecondaryGroceryLocales
{
  v2 = [(REMUserDefaults *)self userDefaults];
  v3 = [v2 objectForKey:@"automaticSecondaryGroceryLocales"];

  return v3;
}

- (void)setAutomaticSecondaryGroceryLocales:(id)a3
{
  v4 = a3;
  v5 = [(REMUserDefaults *)self userDefaults];
  [v5 setObject:v4 forKey:@"automaticSecondaryGroceryLocales"];
}

- (void)ppt_handleInstall
{
  v5 = [(REMDaemonUserDefaults *)self preferredDefaultListID];
  [(REMDaemonUserDefaults *)self deletePreferredDefaultListID];
  v3 = [(REMUserDefaults *)self userDefaults];
  v4 = [(REMDaemonUserDefaults *)self _pptPreferredDefaultListIDKey];
  [v3 setObjectID:v5 forKey:v4];
}

- (void)ppt_handleRestore
{
  [(REMDaemonUserDefaults *)self deletePreferredDefaultListID];
  v3 = [(REMUserDefaults *)self userDefaults];
  v4 = [(REMDaemonUserDefaults *)self _pptPreferredDefaultListIDKey];
  v9 = [v3 objectForKey:v4];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v9];
  if (v5)
  {
    v6 = [REMObjectID objectIDWithURL:v5];
    [(REMDaemonUserDefaults *)self setPreferredDefaultListID:v6];
  }

  v7 = [(REMUserDefaults *)self userDefaults];
  v8 = [(REMDaemonUserDefaults *)self _pptPreferredDefaultListIDKey];
  [v7 removeObjectForKey:v8];
}

@end