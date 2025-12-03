@interface REMDaemonUserDefaults
+ (id)storageNumberForTodayNotificationTime:(id)time;
+ (id)todayNotificationFireTimeFromStorageNumber:(id)number;
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
- (BOOL)hideEmptySectionsForGroceryList:(id)list;
- (BOOL)isAutoCategorizationLoggingEnabled;
- (BOOL)isDatabaseMigrated;
- (BOOL)isSpotlightQueryLoggingEnabled;
- (BOOL)sharedListActivityNotifications_demoMode;
- (BOOL)shouldIncludeRemindersDueTodayInBadgeCount;
- (BOOL)showRemindersAsOverdueWithShouldBypassCache:(BOOL)cache;
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
- (REMDaemonUserDefaults)initWithSuiteName:(id)name containerURL:(id)l;
- (REMObjectID)preferredDefaultListID;
- (id)observeEnableAssignmentNotificationsWithBlock:(id)block;
- (id)observeEnableAutoCompleteRemindersWithBlock:(id)block;
- (id)observePreferredDefaultListIDWithBlock:(id)block;
- (id)observeShouldIncludeRemindersDueTodayInBadgeCountWithBlock:(id)block;
- (id)observeShowRemindersAsOverdueWithBlock:(id)block;
- (id)observeTimeZoneOverrideEnabledWithBlock:(id)block;
- (id)observeTimeZoneOverrideWithBlock:(id)block;
- (id)observeTodayNotificationFireTimeWithBlock:(id)block;
- (id)observeTreatRemindersAsNotOverdueWithBlock:(id)block;
- (id)streamShouldIncludeRemindersDueTodayInBadgeCount:(id)count;
- (id)streamTodayNotificationFireTime:(id)time;
- (unint64_t)muteNotificationOptionsForSharedList:(id)list;
- (void)deletePreferredDefaultListID;
- (void)deletePreferredDefaultListObjectIDUrl;
- (void)ppt_handleInstall;
- (void)ppt_handleRestore;
- (void)removeHideEmptySectionsForGroceryList:(id)list;
- (void)removeMuteNotificationOptionsForSharedList:(id)list;
- (void)setAcAccountIdentifierToMergeLocalDataIntoSyncData:(id)data;
- (void)setAcAccountIdentifiersToMigrateInactivatedCalDavData:(id)data;
- (void)setAccountsListCategorizedCountsCache:(id)cache;
- (void)setAnalyticsActivityLastExecutionDate:(id)date;
- (void)setAutomaticSecondaryGroceryLocales:(id)locales;
- (void)setAutomaticSecondaryGroceryLocalesLastModifiedDate:(id)date;
- (void)setBestKForKNN:(id)n;
- (void)setCloudKitMaxNumAlarmIDsInReminderCKRecordDebugOverride:(id)override;
- (void)setCloudKitMergeLocalLastBuildVersionMaxRetryReached:(id)reached;
- (void)setCloudKitMergeLocalLastDateMaxRetryReached:(id)reached;
- (void)setCloudKitMigrationDelayAfterError:(id)error;
- (void)setCloudKitMigrationMaxNumFailures:(id)failures;
- (void)setCloudKitMigrationMaxNumInvocations:(id)invocations;
- (void)setCloudKitMigrationObserverPollingInterval:(id)interval;
- (void)setCloudKitMigrationSimulatedError:(id)error;
- (void)setCloudKitResultsLimitPerSyncOperation:(id)operation;
- (void)setCloudKitSchemaCatchUpSyncLastScheduledDate:(id)date;
- (void)setCloudKitSchemaCatchUpSyncLastSuccessBuildVersion:(id)version;
- (void)setCloudKitSchemaCatchUpSyncLastSuccessDate:(id)date;
- (void)setCloudKitSchemaCatchUpSyncSchedulingState:(id)state;
- (void)setCoreBehaviorTrainingParameters:(id)parameters;
- (void)setDataSeparationAppDocumentsURLDebugOverride:(id)override;
- (void)setDebugSimulatedCKErrorCode:(id)code;
- (void)setHashtagLabelsInCustomSmartListFilterCache:(id)cache;
- (void)setHideEmptySectionsForGroceryList:(id)list;
- (void)setImageDeduplicationLastExecutionDate:(id)date;
- (void)setImageDeduplicationLegacyAttachmentsMarkedForDeletion:(id)deletion;
- (void)setLastCloudConfigurationDownload:(id)download;
- (void)setLastDataSeparationMigrationDate:(id)date;
- (void)setLastDatabaseMigrationSystemBuildVersion:(id)version;
- (void)setLastDismissedNotificationsPermissionInlineRequestDate:(id)date;
- (void)setLastExtraneousAlarmsCollectorExecutionDate:(id)date;
- (void)setLastPresentAlarmDate:(id)date;
- (void)setLastSuggestedAttributesAutoTrainingExecutionDate:(id)date;
- (void)setLastSuggestedAttributesAutoTrainingToken:(id)token;
- (void)setLastSyncPoll:(id)poll;
- (void)setLastViewedNotificationsPermissionWarmingSheetDate:(id)date;
- (void)setMuteNotificationForSharedList:(id)list;
- (void)setMuteNotificationOptions:(unint64_t)options forSharedList:(id)list;
- (void)setNextScheduledAlarmDate:(id)date;
- (void)setPreferredDefaultListID:(id)d;
- (void)setPreferredDefaultListObjectIDUrl:(id)url;
- (void)setPreferredLocalizations:(id)localizations;
- (void)setRemCurrentRuntimeVersionDebuggingOverride:(id)override;
- (void)setSavedImageDeduplicationLastExecutionDate:(id)date;
- (void)setSavedImageDeduplicationLegacyAttachmentsMarkedForDeletion:(id)deletion;
- (void)setSpotlightIndexVersion:(id)version;
- (void)setStaledFileAttachmentCleanupLastExecutionDate:(id)date;
- (void)setSuggestConversionToGroceryListLastExecutionDate:(id)date;
- (void)setSuggestedAttributesHarvestingOverrides:(id)overrides;
- (void)setSuggestedAttributesTrainingOverrides:(id)overrides;
- (void)setSyncActivityNotificationEngine_accountSignInTime:(id)time;
- (void)setTimeZoneOverride:(id)override;
- (void)setTipKitCachedCountOfCustomSmartLists:(id)lists;
- (void)setTipKitCachedCountOfHashtags:(id)hashtags;
- (void)setTipKitCachedCountOfLists:(id)lists;
- (void)setTipKitCachedCountOfListsWithCustomBadge:(id)badge;
- (void)setTipKitCachedCountOfUncompletedReminders:(id)reminders;
- (void)setTodayNotificationFireTime:(id)time;
- (void)setTrialAssetsDirectoryDebugOverride:(id)override;
- (void)setUserInteractionsData:(id)data;
@end

@implementation REMDaemonUserDefaults

- (BOOL)timeZoneOverrideEnabled
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"timeZoneOverrideEnabled"];

  return v3;
}

- (NSNumber)remCurrentRuntimeVersionDebuggingOverride
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"remCurrentRuntimeVersionDebuggingOverride"];

  return v3;
}

- (NSData)accountsListCategorizedCountsCache
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"accountsListCategorizedCountsCache"];

  return v3;
}

- (NSURL)preferredDefaultListObjectIDUrl
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"preferredDefaultListObjectIDUrl"];

  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];

  return v4;
}

- (NSData)hashtagLabelsInCustomSmartListFilterCache
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"hashtagLabelsInCustomSmartListFilterCache"];

  return v3;
}

- (NSDate)lastDismissedNotificationsPermissionInlineRequestDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"lastDismissedNotificationsPermissionInlineRequestDate"];

  return v3;
}

- (REMDaemonUserDefaults)initWithSuiteName:(id)name containerURL:(id)l
{
  v10.receiver = self;
  v10.super_class = REMDaemonUserDefaults;
  v4 = [(REMUserDefaults *)&v10 initWithSuiteName:name containerURL:l];
  v5 = v4;
  if (v4)
  {
    userDefaults = [(REMUserDefaults *)v4 userDefaults];
    v7 = +[REMDaemonUserDefaults defaultValues];
    [userDefaults registerDefaults:v7];

    userDefaults2 = [(REMUserDefaults *)v5 userDefaults];
    -[REMUserDefaults setShowRemindersAsOverdue_cached:](v5, "setShowRemindersAsOverdue_cached:", [userDefaults2 BOOLForKey:@"showRemindersAsOverdue"]);
  }

  return v5;
}

- (BOOL)databaseMigrationTestModeEnabled
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"databaseMigrationTestModeEnabled"];

  return v3;
}

- (BOOL)isDatabaseMigrated
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"isDatabaseMigrated"];

  return v3;
}

- (BOOL)databaseMigrationTimedOut
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"databaseMigrationTimedOut"];

  return v3;
}

- (NSString)lastDatabaseMigrationSystemBuildVersion
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults stringForKey:@"lastDatabaseMigrationSystemBuildVersion"];

  return v3;
}

- (void)setLastDatabaseMigrationSystemBuildVersion:(id)version
{
  versionCopy = version;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:versionCopy forKey:@"lastDatabaseMigrationSystemBuildVersion"];
}

- (NSNumber)cloudKitMigrationMaxNumInvocations
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"cloudKitMigrationMaxNumInvocations"];

  return v3;
}

- (void)setCloudKitMigrationMaxNumInvocations:(id)invocations
{
  invocationsCopy = invocations;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:invocationsCopy forKey:@"cloudKitMigrationMaxNumInvocations"];
}

- (NSNumber)cloudKitMigrationMaxNumFailures
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"cloudKitMigrationMaxNumFailures"];

  return v3;
}

- (void)setCloudKitMigrationMaxNumFailures:(id)failures
{
  failuresCopy = failures;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:failuresCopy forKey:@"cloudKitMigrationMaxNumFailures"];
}

- (NSNumber)cloudKitMigrationDelayAfterError
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"cloudKitMigrationDelayAfterError"];

  return v3;
}

- (void)setCloudKitMigrationDelayAfterError:(id)error
{
  errorCopy = error;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:errorCopy forKey:@"cloudKitMigrationDelayAfterError"];
}

- (NSNumber)cloudKitMigrationObserverPollingInterval
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"cloudKitMigrationObserverPollingInterval"];

  return v3;
}

- (void)setCloudKitMigrationObserverPollingInterval:(id)interval
{
  intervalCopy = interval;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:intervalCopy forKey:@"cloudKitMigrationObserverPollingInterval"];
}

- (NSNumber)cloudKitMigrationSimulatedError
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"cloudKitMigrationSimulatedError"];

  return v3;
}

- (void)setCloudKitMigrationSimulatedError:(id)error
{
  errorCopy = error;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:errorCopy forKey:@"cloudKitMigrationSimulatedError"];
}

- (NSNumber)cloudKitResultsLimitPerSyncOperation
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"cloudKitResultsLimitPerSyncOperation"];

  return v3;
}

- (void)setCloudKitResultsLimitPerSyncOperation:(id)operation
{
  operationCopy = operation;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:operationCopy forKey:@"cloudKitResultsLimitPerSyncOperation"];
}

- (BOOL)cloudKitMigrationDisableCleanUp
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"cloudKitMigrationDisableCleanUp"];

  return v3;
}

- (REMObjectID)preferredDefaultListID
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"preferredDefaultListID"];

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

- (void)setPreferredDefaultListID:(id)d
{
  dCopy = d;
  [(REMDaemonUserDefaults *)self deletePreferredDefaultListObjectIDUrl];
  urlRepresentation = [dCopy urlRepresentation];

  absoluteString = [urlRepresentation absoluteString];

  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:absoluteString forKey:@"preferredDefaultListID"];

  v8 = +[REMLog utility];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_DEFAULT, "Trigger NPS sync for preferredDefaultListID to paired device.", v12, 2u);
  }

  v9 = objc_opt_new();
  suiteName = [(REMUserDefaults *)self suiteName];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D99988];
  [v9 synchronizeUserDefaultsDomain:suiteName keys:v11];
}

- (void)deletePreferredDefaultListID
{
  [(REMDaemonUserDefaults *)self deletePreferredDefaultListObjectIDUrl];
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults removeObjectForKey:@"preferredDefaultListID"];
}

- (void)deletePreferredDefaultListObjectIDUrl
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults removeObjectForKey:@"preferredDefaultListObjectIDUrl"];
}

- (id)observePreferredDefaultListIDWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__REMDaemonUserDefaults_observePreferredDefaultListIDWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = [(REMUserDefaults *)self _startObservingValuesForKey:@"preferredDefaultListID" block:v8];

  return v6;
}

void __64__REMDaemonUserDefaults_observePreferredDefaultListIDWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) preferredDefaultListID];
  (*(v1 + 16))(v1, v2);
}

- (void)setPreferredDefaultListObjectIDUrl:(id)url
{
  absoluteString = [url absoluteString];
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:absoluteString forKey:@"preferredDefaultListObjectIDUrl"];
}

- (NSArray)preferredLocalizations
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"preferredLocalizations"];

  return v3;
}

- (void)setPreferredLocalizations:(id)localizations
{
  localizationsCopy = localizations;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:localizationsCopy forKey:@"preferredLocalizations"];
}

- (NSString)acAccountIdentifierToMergeLocalDataIntoSyncData
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"acAccountIdentifierToMergeLocalDataIntoSyncData"];

  return v3;
}

- (void)setAcAccountIdentifierToMergeLocalDataIntoSyncData:(id)data
{
  dataCopy = data;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dataCopy forKey:@"acAccountIdentifierToMergeLocalDataIntoSyncData"];
}

- (NSArray)acAccountIdentifiersToMigrateInactivatedCalDavData
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"acAccountIdentifiersToMigrateInactivatedCalDavData"];

  return v3;
}

- (void)setAcAccountIdentifiersToMigrateInactivatedCalDavData:(id)data
{
  dataCopy = data;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dataCopy forKey:@"acAccountIdentifiersToMigrateInactivatedCalDavData"];
}

- (NSDate)cloudKitMergeLocalLastDateMaxRetryReached
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"cloudKitMergeLocalLastDateMaxRetryReached"];

  return v3;
}

- (void)setCloudKitMergeLocalLastDateMaxRetryReached:(id)reached
{
  reachedCopy = reached;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:reachedCopy forKey:@"cloudKitMergeLocalLastDateMaxRetryReached"];
}

- (NSString)cloudKitMergeLocalLastBuildVersionMaxRetryReached
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"cloudKitMergeLocalLastBuildVersionMaxRetryReached"];

  return v3;
}

- (void)setCloudKitMergeLocalLastBuildVersionMaxRetryReached:(id)reached
{
  reachedCopy = reached;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:reachedCopy forKey:@"cloudKitMergeLocalLastBuildVersionMaxRetryReached"];
}

- (NSDate)cloudKitSchemaCatchUpSyncLastSuccessDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"cloudKitSchemaCatchUpSyncLastSuccessDate"];

  return v3;
}

- (void)setCloudKitSchemaCatchUpSyncLastSuccessDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"cloudKitSchemaCatchUpSyncLastSuccessDate"];
}

- (NSString)cloudKitSchemaCatchUpSyncLastSuccessBuildVersion
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"cloudKitSchemaCatchUpSyncLastSuccessBuildVersion"];

  return v3;
}

- (void)setCloudKitSchemaCatchUpSyncLastSuccessBuildVersion:(id)version
{
  versionCopy = version;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:versionCopy forKey:@"cloudKitSchemaCatchUpSyncLastSuccessBuildVersion"];
}

- (NSNumber)cloudKitSchemaCatchUpSyncSchedulingState
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"cloudKitSchemaCatchUpSyncSchedulingState"];

  return v3;
}

- (void)setCloudKitSchemaCatchUpSyncSchedulingState:(id)state
{
  stateCopy = state;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:stateCopy forKey:@"cloudKitSchemaCatchUpSyncSchedulingState"];
}

- (NSDate)cloudKitSchemaCatchUpSyncLastScheduledDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"cloudKitSchemaCatchUpSyncLastScheduledDate"];

  return v3;
}

- (void)setCloudKitSchemaCatchUpSyncLastScheduledDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"cloudKitSchemaCatchUpSyncLastScheduledDate"];
}

- (BOOL)debugForceSupportCloudKitSchemaCatchUpSyncBackgroundScheduling
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"debugForceSupportCloudKitSchemaCatchUpSyncBackgroundScheduling"];

  return v3;
}

- (NSNumber)cloudKitMaxNumAlarmIDsInReminderCKRecordDebugOverride
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"cloudKitMaxNumAlarmIDsInReminderCKRecordDebugOverride"];

  return v3;
}

- (void)setCloudKitMaxNumAlarmIDsInReminderCKRecordDebugOverride:(id)override
{
  overrideCopy = override;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:overrideCopy forKey:@"cloudKitMaxNumAlarmIDsInReminderCKRecordDebugOverride"];
}

- (NSNumber)debugSimulatedCKErrorCode
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"debugSimulatedCKErrorCode"];

  return v3;
}

- (void)setDebugSimulatedCKErrorCode:(id)code
{
  codeCopy = code;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:codeCopy forKey:@"debugSimulatedCKErrorCode"];
}

- (NSNumber)spotlightIndexVersion
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"spotlightIndexVersion"];

  return v3;
}

- (void)setSpotlightIndexVersion:(id)version
{
  versionCopy = version;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:versionCopy forKey:@"spotlightIndexVersion"];
}

- (NSDate)nextScheduledAlarmDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"nextScheduledAlarmDate"];

  return v3;
}

- (void)setNextScheduledAlarmDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"nextScheduledAlarmDate"];
}

- (NSDate)lastPresentAlarmDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"lastPresentAlarmDate"];

  return v3;
}

- (void)setLastPresentAlarmDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"lastPresentAlarmDate"];
}

- (id)observeTimeZoneOverrideEnabledWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__REMDaemonUserDefaults_observeTimeZoneOverrideEnabledWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = blockCopy;
  v5 = blockCopy;
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
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"timeZoneOverride"];

  return v3;
}

- (void)setTimeZoneOverride:(id)override
{
  overrideCopy = override;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:overrideCopy forKey:@"timeZoneOverride"];
}

- (id)observeTimeZoneOverrideWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__REMDaemonUserDefaults_observeTimeZoneOverrideWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = blockCopy;
  v5 = blockCopy;
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
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"lastSuggestedAttributesAutoTrainingToken"];

  return v3;
}

- (void)setLastSuggestedAttributesAutoTrainingToken:(id)token
{
  tokenCopy = token;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:tokenCopy forKey:@"lastSuggestedAttributesAutoTrainingToken"];
}

- (NSDate)lastSuggestedAttributesAutoTrainingExecutionDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"lastSuggestedAttributesAutoTrainingExecutionDate"];

  return v3;
}

- (void)setLastSuggestedAttributesAutoTrainingExecutionDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"lastSuggestedAttributesAutoTrainingExecutionDate"];
}

- (void)setSuggestedAttributesHarvestingOverrides:(id)overrides
{
  overridesCopy = overrides;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:overridesCopy forKey:@"suggestedAttributesHarvestingOverrides"];
}

- (void)setMuteNotificationForSharedList:(id)list
{
  listCopy = list;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:listCopy forKey:@"muteNotificationForSharedList"];

  v6 = +[REMLog utility];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_DEFAULT, "Trigger NPS sync for muteNotificationForSharedList to paired device.", v10, 2u);
  }

  v7 = objc_opt_new();
  suiteName = [(REMUserDefaults *)self suiteName];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D999A0];
  [v7 synchronizeUserDefaultsDomain:suiteName keys:v9];
}

- (unint64_t)muteNotificationOptionsForSharedList:(id)list
{
  listCopy = list;
  muteNotificationForSharedList = [(REMDaemonUserDefaults *)self muteNotificationForSharedList];
  v6 = [muteNotificationForSharedList objectForKeyedSubscript:listCopy];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 2;
  }

  return integerValue;
}

- (void)setMuteNotificationOptions:(unint64_t)options forSharedList:(id)list
{
  listCopy = list;
  muteNotificationForSharedList = [(REMDaemonUserDefaults *)self muteNotificationForSharedList];
  v9 = [muteNotificationForSharedList mutableCopy];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:options];
  if (v9)
  {
    [v9 setObject:v8 forKeyedSubscript:listCopy];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithObject:v8 forKey:listCopy];
  }

  [(REMDaemonUserDefaults *)self setMuteNotificationForSharedList:v9];
}

- (void)removeMuteNotificationOptionsForSharedList:(id)list
{
  listCopy = list;
  muteNotificationForSharedList = [(REMDaemonUserDefaults *)self muteNotificationForSharedList];
  v5 = [muteNotificationForSharedList mutableCopy];

  v6 = [v5 objectForKeyedSubscript:listCopy];

  if (v6)
  {
    [v5 removeObjectForKey:listCopy];
    [(REMDaemonUserDefaults *)self setMuteNotificationForSharedList:v5];
  }
}

- (void)setHideEmptySectionsForGroceryList:(id)list
{
  listCopy = list;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:listCopy forKey:@"hideEmptySectionsForGroceryList"];

  v6 = +[REMLog utility];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_DEFAULT, "Trigger NPS sync for hideEmptySectionsForGroceryList to paired device.", v10, 2u);
  }

  v7 = objc_opt_new();
  suiteName = [(REMUserDefaults *)self suiteName];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D999B8];
  [v7 synchronizeUserDefaultsDomain:suiteName keys:v9];
}

- (BOOL)hideEmptySectionsForGroceryList:(id)list
{
  listCopy = list;
  hideEmptySectionsForGroceryList = [(REMDaemonUserDefaults *)self hideEmptySectionsForGroceryList];
  v6 = [hideEmptySectionsForGroceryList objectForKeyedSubscript:listCopy];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)removeHideEmptySectionsForGroceryList:(id)list
{
  listCopy = list;
  hideEmptySectionsForGroceryList = [(REMDaemonUserDefaults *)self hideEmptySectionsForGroceryList];
  v5 = [hideEmptySectionsForGroceryList mutableCopy];

  v6 = [v5 objectForKeyedSubscript:listCopy];

  if (v6)
  {
    [v5 removeObjectForKey:listCopy];
    [(REMDaemonUserDefaults *)self setHideEmptySectionsForGroceryList:v5];
  }
}

- (void)setBestKForKNN:(id)n
{
  v25[1] = *MEMORY[0x1E69E9840];
  nCopy = n;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v6 = [userDefaults objectForKey:@"suggestedAttributesHarvestingOverrides"];

  userDefaults2 = [(REMUserDefaults *)self userDefaults];
  v8 = userDefaults2;
  if (v6)
  {
    v9 = [userDefaults2 dictionaryForKey:@"suggestedAttributesHarvestingOverrides"];
    v10 = [v9 mutableCopy];

    v11 = [v10 objectForKeyedSubscript:@"embedding"];

    if (v11)
    {
      v12 = [v10 objectForKey:@"embedding"];
      v13 = [v12 mutableCopy];

      [v13 setObject:nCopy forKeyedSubscript:@"neighborsToConsider"];
      [v10 setObject:v13 forKeyedSubscript:@"embedding"];
      userDefaults3 = [(REMUserDefaults *)self userDefaults];
      [userDefaults3 setObject:v10 forKey:@"suggestedAttributesHarvestingOverrides"];
    }

    else
    {
      v20 = @"neighborsToConsider";
      v21 = nCopy;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [v10 setObject:v17 forKey:@"embedding"];

      userDefaults4 = [(REMUserDefaults *)self userDefaults];
      [userDefaults4 setObject:v10 forKey:@"suggestedAttributesHarvestingOverrides"];
    }

    v8 = v10;
  }

  else
  {
    v23 = nCopy;
    v24 = @"embedding";
    v22 = @"neighborsToConsider";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v8 setObject:v16 forKey:@"suggestedAttributesHarvestingOverrides"];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setSuggestedAttributesTrainingOverrides:(id)overrides
{
  overridesCopy = overrides;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:overridesCopy forKey:@"suggestedAttributesTrainingOverrides"];
}

- (void)setCoreBehaviorTrainingParameters:(id)parameters
{
  v16[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v6 = [userDefaults objectForKey:@"suggestedAttributesTrainingOverrides"];

  userDefaults2 = [(REMUserDefaults *)self userDefaults];
  v8 = userDefaults2;
  if (v6)
  {
    v9 = [userDefaults2 dictionaryForKey:@"suggestedAttributesTrainingOverrides"];
    v14 = [v9 mutableCopy];

    [v14 setObject:parametersCopy forKey:@"corebehavior"];
    userDefaults3 = [(REMUserDefaults *)self userDefaults];
    [userDefaults3 setObject:v14 forKey:@"suggestedAttributesTrainingOverrides"];

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v15 = @"corebehavior";
    v16[0] = parametersCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

    [v8 setObject:v12 forKey:@"suggestedAttributesTrainingOverrides"];
    v13 = *MEMORY[0x1E69E9840];
  }
}

- (NSDate)lastSyncPoll
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"lastSyncPoll"];

  return v3;
}

- (void)setLastSyncPoll:(id)poll
{
  pollCopy = poll;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:pollCopy forKey:@"lastSyncPoll"];
}

- (NSDate)lastCloudConfigurationDownload
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"lastCloudConfigurationDownload"];

  return v3;
}

- (void)setLastCloudConfigurationDownload:(id)download
{
  downloadCopy = download;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:downloadCopy forKey:@"lastCloudConfigurationDownload"];
}

- (NSDate)staledFileAttachmentCleanupLastExecutionDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"staledFileAttachmentCleanupLastExecutionDate"];

  return v3;
}

- (void)setStaledFileAttachmentCleanupLastExecutionDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"staledFileAttachmentCleanupLastExecutionDate"];
}

- (BOOL)staledFileAttachmentCleanupContainerDeemedClean
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"staledFileAttachmentCleanupContainerDeemedClean"];

  return v3;
}

- (BOOL)extraneousAlarmsCollectorContainerDeemedClean
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"extraneousAlarmsCollectorContainerDeemedClean"];

  return v3;
}

- (NSDate)lastExtraneousAlarmsCollectorExecutionDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"lastExtraneousAlarmsCollectorExecutionDate"];

  return v3;
}

- (void)setLastExtraneousAlarmsCollectorExecutionDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"lastExtraneousAlarmsCollectorExecutionDate"];
}

- (NSDate)imageDeduplicationLastExecutionDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"imageDeduplicationLastExecutionDate"];

  return v3;
}

- (void)setImageDeduplicationLastExecutionDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"imageDeduplicationLastExecutionDate"];
}

- (NSDate)suggestConversionToGroceryListLastExecutionDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"suggestConversionToGroceryListLastExecutionDate"];

  return v3;
}

- (void)setSuggestConversionToGroceryListLastExecutionDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"suggestConversionToGroceryListLastExecutionDate"];
}

- (NSDate)analyticsActivityLastExecutionDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"analyticsActivityLastExecutionDate"];

  return v3;
}

- (void)setAnalyticsActivityLastExecutionDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"analyticsActivityLastExecutionDate"];
}

- (NSArray)imageDeduplicationLegacyAttachmentsMarkedForDeletion
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"imageDeduplicationLegacyAttachmentsMarkedForDeletion"];

  return v3;
}

- (void)setImageDeduplicationLegacyAttachmentsMarkedForDeletion:(id)deletion
{
  deletionCopy = deletion;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:deletionCopy forKey:@"imageDeduplicationLegacyAttachmentsMarkedForDeletion"];
}

- (NSDate)savedImageDeduplicationLastExecutionDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"savedImageDeduplicationLastExecutionDate"];

  return v3;
}

- (void)setSavedImageDeduplicationLastExecutionDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"savedImageDeduplicationLastExecutionDate"];
}

- (NSArray)savedImageDeduplicationLegacyAttachmentsMarkedForDeletion
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"savedImageDeduplicationLegacyAttachmentsMarkedForDeletion"];

  return v3;
}

- (void)setSavedImageDeduplicationLegacyAttachmentsMarkedForDeletion:(id)deletion
{
  deletionCopy = deletion;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:deletionCopy forKey:@"savedImageDeduplicationLegacyAttachmentsMarkedForDeletion"];
}

- (NSData)userInteractionsData
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"userInteractionsData"];

  return v3;
}

- (void)setUserInteractionsData:(id)data
{
  dataCopy = data;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dataCopy forKey:@"userInteractionsData"];
}

- (BOOL)simulateMAIDAccount
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"simulateMAIDAccount"];

  return v3;
}

- (BOOL)showRemindersAsOverdueWithShouldBypassCache:(BOOL)cache
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v6 = [userDefaults BOOLForKey:@"showRemindersAsOverdue"];

  if (cache)
  {
    return v6;
  }

  return [(REMUserDefaults *)self showRemindersAsOverdue_cached];
}

- (id)observeShowRemindersAsOverdueWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__REMDaemonUserDefaults_observeShowRemindersAsOverdueWithBlock___block_invoke;
  v8[3] = &unk_1E75092D0;
  v8[4] = self;
  v9 = blockCopy;
  v5 = blockCopy;
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
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"treatRemindersAsNotOverdue"];

  return v3;
}

- (id)observeTreatRemindersAsNotOverdueWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__REMDaemonUserDefaults_observeTreatRemindersAsNotOverdueWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = blockCopy;
  v5 = blockCopy;
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
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"enableWelcomeScreen"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)forceShowWelcomeScreen
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"forceShowWelcomeScreen"];

  return v3;
}

- (BOOL)forceShowWhatsNewScreen
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"forceShowWhatsNewScreen"];

  return v3;
}

- (BOOL)enableInAppDebugMenu
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"enableInAppDebugMenu"];

  return v3;
}

- (BOOL)enableHashingUserIdentifiablesWithPersonIDSalt
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"enableHashingUserIdentifiablesWithPersonIDSalt"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (id)todayNotificationFireTimeFromStorageNumber:(id)number
{
  numberCopy = number;
  integerValue = [numberCopy integerValue];
  if (integerValue == -1)
  {
    v5 = 0;
  }

  else
  {
    if (integerValue)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v5 setHour:{objc_msgSend(numberCopy, "integerValue") / 100}];
      v7 = [numberCopy integerValue] % 100;
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

+ (id)storageNumberForTodayNotificationTime:(id)time
{
  if (time)
  {
    v4 = MEMORY[0x1E696AD98];
    timeCopy = time;
    hour = [timeCopy hour];
    minute = [timeCopy minute];

    v8 = [v4 numberWithInteger:minute + 100 * hour];
  }

  else
  {
    v8 = &unk_1F0D99AF0;
  }

  return v8;
}

- (NSDateComponents)todayNotificationFireTime
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"todayNotificationFireTime"];

  v4 = objc_opt_class();
  v5 = REMCheckedDynamicCast(v4, v3);
  v6 = [objc_opt_class() todayNotificationFireTimeFromStorageNumber:v5];

  return v6;
}

- (void)setTodayNotificationFireTime:(id)time
{
  timeCopy = time;
  v5 = [objc_opt_class() storageNumberForTodayNotificationTime:timeCopy];

  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:v5 forKey:@"todayNotificationFireTime"];

  v7 = +[REMLog utility];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_DEFAULT, "Trigger NPS sync for todayNotificationFireTime to paired device.", v11, 2u);
  }

  v8 = objc_opt_new();
  suiteName = [(REMUserDefaults *)self suiteName];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D999D0];
  [v8 synchronizeUserDefaultsDomain:suiteName keys:v10];
}

- (id)streamTodayNotificationFireTime:(id)time
{
  timeCopy = time;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__REMDaemonUserDefaults_streamTodayNotificationFireTime___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = timeCopy;
  v5 = timeCopy;
  v6 = [(REMUserDefaults *)self _startStreamingValuesForKey:@"todayNotificationFireTime" block:v8];

  return v6;
}

void __57__REMDaemonUserDefaults_streamTodayNotificationFireTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) todayNotificationFireTime];
  (*(v1 + 16))(v1, v2);
}

- (id)observeTodayNotificationFireTimeWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__REMDaemonUserDefaults_observeTodayNotificationFireTimeWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = blockCopy;
  v5 = blockCopy;
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
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"disableAlarmEngineDataSourcePrefetching"];

  return v3;
}

- (BOOL)enableAssignmentNotifications
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v4 = [userDefaults objectForKey:@"enableAssignmentNotifications"];

  if (!v4)
  {
    return 1;
  }

  userDefaults2 = [(REMUserDefaults *)self userDefaults];
  v6 = [userDefaults2 BOOLForKey:@"enableAssignmentNotifications"];

  return v6;
}

- (id)observeEnableAssignmentNotificationsWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__REMDaemonUserDefaults_observeEnableAssignmentNotificationsWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = blockCopy;
  v5 = blockCopy;
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
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v4 = [userDefaults objectForKey:@"enableAutoCompleteReminders"];

  if (!v4)
  {
    return 1;
  }

  userDefaults2 = [(REMUserDefaults *)self userDefaults];
  v6 = [userDefaults2 BOOLForKey:@"enableAutoCompleteReminders"];

  return v6;
}

- (id)observeEnableAutoCompleteRemindersWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__REMDaemonUserDefaults_observeEnableAutoCompleteRemindersWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = blockCopy;
  v5 = blockCopy;
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
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"suggestedAttributesTrainingOverrides"];

  return v3;
}

- (NSDictionary)suggestedAttributesHarvestingOverrides
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"suggestedAttributesHarvestingOverrides"];

  return v3;
}

- (NSDictionary)muteNotificationForSharedList
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"muteNotificationForSharedList"];

  return v3;
}

- (NSDictionary)hideEmptySectionsForGroceryList
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"hideEmptySectionsForGroceryList"];

  return v3;
}

- (void)setAccountsListCategorizedCountsCache:(id)cache
{
  cacheCopy = cache;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:cacheCopy forKey:@"accountsListCategorizedCountsCache"];
}

- (void)setHashtagLabelsInCustomSmartListFilterCache:(id)cache
{
  cacheCopy = cache;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:cacheCopy forKey:@"hashtagLabelsInCustomSmartListFilterCache"];
}

- (BOOL)debugSimulateSqliteFull
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"debugSimulateSqliteFull"];

  return v3;
}

- (NSNumber)tipKitCachedCountOfUncompletedReminders
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"tipKitCachedCountOfUncompletedReminders"];

  return v3;
}

- (void)setTipKitCachedCountOfUncompletedReminders:(id)reminders
{
  remindersCopy = reminders;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:remindersCopy forKey:@"tipKitCachedCountOfUncompletedReminders"];
}

- (NSNumber)tipKitCachedCountOfLists
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"tipKitCachedCountOfLists"];

  return v3;
}

- (void)setTipKitCachedCountOfLists:(id)lists
{
  listsCopy = lists;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:listsCopy forKey:@"tipKitCachedCountOfLists"];
}

- (NSNumber)tipKitCachedCountOfListsWithCustomBadge
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"tipKitCachedCountOfListsWithCustomBadge"];

  return v3;
}

- (void)setTipKitCachedCountOfListsWithCustomBadge:(id)badge
{
  badgeCopy = badge;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:badgeCopy forKey:@"tipKitCachedCountOfListsWithCustomBadge"];
}

- (NSNumber)tipKitCachedCountOfCustomSmartLists
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"tipKitCachedCountOfCustomSmartLists"];

  return v3;
}

- (void)setTipKitCachedCountOfCustomSmartLists:(id)lists
{
  listsCopy = lists;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:listsCopy forKey:@"tipKitCachedCountOfCustomSmartLists"];
}

- (NSNumber)tipKitCachedCountOfHashtags
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"tipKitCachedCountOfHashtags"];

  return v3;
}

- (void)setTipKitCachedCountOfHashtags:(id)hashtags
{
  hashtagsCopy = hashtags;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:hashtagsCopy forKey:@"tipKitCachedCountOfHashtags"];
}

- (NSDate)lastViewedNotificationsPermissionWarmingSheetDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"lastViewedNotificationsPermissionWarmingSheetDate"];

  return v3;
}

- (void)setLastViewedNotificationsPermissionWarmingSheetDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"lastViewedNotificationsPermissionWarmingSheetDate"];
}

- (void)setLastDismissedNotificationsPermissionInlineRequestDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"lastDismissedNotificationsPermissionInlineRequestDate"];
}

- (BOOL)hasViewedContactsAccessAlertForLocation
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"hasViewedContactsAccessAlertForLocation"];

  return v3;
}

- (BOOL)groceryTipDismissed
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"groceryTipDismissed"];

  return v3;
}

- (BOOL)hasCreatedGroceryList
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"hasCreatedGroceryList"];

  return v3;
}

- (BOOL)hasViewedContactsAccessAlertForMessaging
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"hasViewedContactsAccessAlertForMessaging"];

  return v3;
}

- (BOOL)hasViewedContactsAccessAlertForCalDAVSharing
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"hasViewedContactsAccessAlertForCalDAVSharing"];

  return v3;
}

- (BOOL)didShowReminderDeletePrivacyWarning
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"didShowReminderDeletePrivacyWarning"];

  return v3;
}

- (BOOL)hasSeenGroceryFeedbackSurvey
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"hasSeenGroceryFeedbackSurvey"];

  return v3;
}

- (BOOL)enableGroceryFeedbackSurvey
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"enableGroceryFeedbackSurvey"];

  return v3;
}

- (void)setRemCurrentRuntimeVersionDebuggingOverride:(id)override
{
  overrideCopy = override;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:overrideCopy forKey:@"remCurrentRuntimeVersionDebuggingOverride"];
}

- (BOOL)forceEligibleForAutoCloudKitMigration
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"forceEligibleForAutoCloudKitMigration"];

  return v3;
}

- (BOOL)forceBasicAAAccountEligibleForCloudKitReminders
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"forceBasicAAAccountEligibleForCloudKitReminders"];

  return v3;
}

- (NSDictionary)dataSeparationAppDocumentsURLDebugOverride
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"dataSeparationAppDocumentsURLDebugOverride"];

  return v3;
}

- (void)setDataSeparationAppDocumentsURLDebugOverride:(id)override
{
  overrideCopy = override;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:overrideCopy forKey:@"dataSeparationAppDocumentsURLDebugOverride"];
}

- (NSDate)lastDataSeparationMigrationDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"lastDataSeparationMigrationDate"];

  return v3;
}

- (void)setLastDataSeparationMigrationDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"lastDataSeparationMigrationDate"];
}

- (NSDictionary)syncActivityNotificationEngine_accountSignInTime
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"syncActivityNotificationEngine_accountSignInTime"];

  return v3;
}

- (void)setSyncActivityNotificationEngine_accountSignInTime:(id)time
{
  timeCopy = time;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:timeCopy forKey:@"syncActivityNotificationEngine_accountSignInTime"];
}

- (BOOL)sharedListActivityNotifications_demoMode
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"sharedListActivityNotifications_demoMode"];

  return v3;
}

- (BOOL)shouldIncludeRemindersDueTodayInBadgeCount
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v4 = [userDefaults objectForKey:@"shouldIncludeRemindersDueTodayInBadgeCount"];

  if (!v4)
  {
    return 0;
  }

  userDefaults2 = [(REMUserDefaults *)self userDefaults];
  v6 = [userDefaults2 BOOLForKey:@"shouldIncludeRemindersDueTodayInBadgeCount"];

  return v6;
}

- (id)streamShouldIncludeRemindersDueTodayInBadgeCount:(id)count
{
  countCopy = count;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__REMDaemonUserDefaults_streamShouldIncludeRemindersDueTodayInBadgeCount___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = countCopy;
  v5 = countCopy;
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

- (id)observeShouldIncludeRemindersDueTodayInBadgeCountWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__REMDaemonUserDefaults_observeShouldIncludeRemindersDueTodayInBadgeCountWithBlock___block_invoke;
  v8[3] = &unk_1E7507E98;
  v8[4] = self;
  v9 = blockCopy;
  v5 = blockCopy;
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
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"isSpotlightQueryLoggingEnabled"];

  return v3;
}

- (BOOL)isAutoCategorizationLoggingEnabled
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"isAutoCategorizationLoggingEnabled"];

  return v3;
}

- (BOOL)excludeExistingSectionsForAutoCategorizationEnabled
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"excludeExistingSectionsForAutoCategorizationEnabled"];

  return v3;
}

- (NSString)trialAssetsDirectoryDebugOverride
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults stringForKey:@"trialAssetsDirectoryDebugOverride"];

  return v3;
}

- (void)setTrialAssetsDirectoryDebugOverride:(id)override
{
  overrideCopy = override;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:overrideCopy forKey:@"trialAssetsDirectoryDebugOverride"];
}

- (NSDate)automaticSecondaryGroceryLocalesLastModifiedDate
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"automaticSecondaryGroceryLocalesLastModifiedDate"];

  return v3;
}

- (void)setAutomaticSecondaryGroceryLocalesLastModifiedDate:(id)date
{
  dateCopy = date;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:dateCopy forKey:@"automaticSecondaryGroceryLocalesLastModifiedDate"];
}

- (NSArray)automaticSecondaryGroceryLocales
{
  userDefaults = [(REMUserDefaults *)self userDefaults];
  v3 = [userDefaults objectForKey:@"automaticSecondaryGroceryLocales"];

  return v3;
}

- (void)setAutomaticSecondaryGroceryLocales:(id)locales
{
  localesCopy = locales;
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults setObject:localesCopy forKey:@"automaticSecondaryGroceryLocales"];
}

- (void)ppt_handleInstall
{
  preferredDefaultListID = [(REMDaemonUserDefaults *)self preferredDefaultListID];
  [(REMDaemonUserDefaults *)self deletePreferredDefaultListID];
  userDefaults = [(REMUserDefaults *)self userDefaults];
  _pptPreferredDefaultListIDKey = [(REMDaemonUserDefaults *)self _pptPreferredDefaultListIDKey];
  [userDefaults setObjectID:preferredDefaultListID forKey:_pptPreferredDefaultListIDKey];
}

- (void)ppt_handleRestore
{
  [(REMDaemonUserDefaults *)self deletePreferredDefaultListID];
  userDefaults = [(REMUserDefaults *)self userDefaults];
  _pptPreferredDefaultListIDKey = [(REMDaemonUserDefaults *)self _pptPreferredDefaultListIDKey];
  v9 = [userDefaults objectForKey:_pptPreferredDefaultListIDKey];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v9];
  if (v5)
  {
    v6 = [REMObjectID objectIDWithURL:v5];
    [(REMDaemonUserDefaults *)self setPreferredDefaultListID:v6];
  }

  userDefaults2 = [(REMUserDefaults *)self userDefaults];
  _pptPreferredDefaultListIDKey2 = [(REMDaemonUserDefaults *)self _pptPreferredDefaultListIDKey];
  [userDefaults2 removeObjectForKey:_pptPreferredDefaultListIDKey2];
}

@end