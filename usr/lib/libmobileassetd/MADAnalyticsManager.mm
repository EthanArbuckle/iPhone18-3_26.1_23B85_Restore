@interface MADAnalyticsManager
+ (id)getAnalyticsManager;
+ (id)getTestAnalyticsManager:(id)manager;
- (BOOL)eventRecordingEnabled;
- (BOOL)saveEventToDisk:(id)disk;
- (BOOL)shouldRecordEventForAssetType:(id)type;
- (MADAnalyticsManager)init;
- (MADAnalyticsManager)initWithPath:(id)path;
- (id)copyEventFromPath:(id)path;
- (id)nilToNoneString:(id)string;
- (id)recordCacheDeleteAttempt:(int64_t)attempt timeTakenSecs:(double)secs cacheDeleteUrgency:(int64_t)urgency results:(id)results targetPurgeVolume:(id)volume triggeringOperation:(int64_t)operation;
- (id)recordEventWithName:(id)name assetType:(id)type payload:(id)payload;
- (id)recordMobileAssetPromotionAttempt:(id)attempt assetType:(id)type assetVersion:(id)version osPromotion:(BOOL)promotion successfullyPromoted:(BOOL)promoted withReason:(int64_t)reason;
- (id)recordMobileAssetPurgeAttempt:(id)attempt withUrgency:(int)urgency withBytesPurged:(int64_t)purged withResult:(int64_t)result withDir:(id)dir withRetentionPolicy:(int64_t)policy withReason:(id)reason;
- (id)recordMobileAssetScheduler:(int64_t)scheduler forSelector:(id)selector withXpcID:(id)d forPushJob:(id)job forSetJob:(id)setJob inSchedulerState:(int64_t)state inXPCState:(id)cState didJobFail:(id)self0;
- (id)recordMobileAssetSecureAttempt:(id)attempt assetType:(id)type assetVersion:(id)version clientName:(id)name operation:(int64_t)operation secureReason:(id)reason fromLocation:(id)location sucessfullyPersonalized:(BOOL)self0 personalizeFailureReason:(id)self1 sucessfullyMounted:(BOOL)self2 mountingFailureReason:(id)self3 successfullyGrafted:(BOOL)self4 graftingFailureReason:(id)self5 successfullyMappedToExclave:(BOOL)self6 mapToExclaveFailureReason:(id)self7;
- (id)recordPushNotification:(id)notification assetType:(id)type cloudChannel:(id)channel forPopulationType:(int64_t)populationType userInitiated:(BOOL)initiated interestAcrossTerm:(BOOL)term lockAcrossReboot:(BOOL)reboot lockAcrossTermination:(BOOL)self0;
- (id)recordPushNotification:(id)notification assetType:(id)type cloudChannels:(id)channels forPopulationType:(int64_t)populationType userInitiated:(BOOL)initiated interestAcrossTerm:(BOOL)term lockAcrossReboot:(BOOL)reboot lockAcrossTermination:(BOOL)self0;
- (id)removePrefix:(id)prefix fromString:(id)string;
- (id)yesNoString:(BOOL)string;
- (void)_queue_setEvent:(id)event;
- (void)_queue_submitAllEvents;
- (void)_queue_submitEvent:(id)event;
- (void)analyticsPreferences;
- (void)changeReportingLevel:(int64_t)level;
- (void)recordDownloadAttemptForAssetType:(id)type clientName:(id)name baseUrl:(id)url relativePath:(id)path purpose:(id)purpose result:(id)result analyticsFileType:(id)fileType isAutoDownload:(BOOL)self0 isPallas:(BOOL)self1 pallasAssetAudience:(id)self2 isUserPriority:(BOOL)self3 bytesWritten:(id)self4 bytesTransferredEst:(id)self5 additionalData:(id)self6;
- (void)recordDownloadAttemptForAssetType:(id)type clientName:(id)name baseUrl:(id)url relativePath:(id)path purpose:(id)purpose result:(id)result analyticsFileType:(id)fileType isAutoDownload:(BOOL)self0 isPallas:(BOOL)self1 pallasAssetAudience:(id)self2 isUserPriority:(BOOL)self3 bytesWritten:(id)self4 bytesTransferredEst:(id)self5 brainVersion:(id)self6 withTaskMetrics:(id)self7 withOptions:(id)self8 additionalData:(id)self9;
- (void)recordDownloadSuccessForAssetType:(id)type notificationSuffix:(id)suffix fileType:(id)fileType;
- (void)removeAllEvents;
- (void)removeEvent:(id)event;
- (void)removeEventsWithName:(id)name;
- (void)setEvent:(id)event;
- (void)submitAllEvents;
- (void)submitEvent:(id)event;
@end

@implementation MADAnalyticsManager

- (BOOL)eventRecordingEnabled
{
  if (![(MADAnalyticsManager *)self analyticsSendImmediate])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __44__MADAnalyticsManager_eventRecordingEnabled__block_invoke;
    block[3] = &unk_4B2AA0;
    block[4] = self;
    if (eventRecordingEnabled_analyticsSubmissionCheckDispatchOnce != -1)
    {
      dispatch_once(&eventRecordingEnabled_analyticsSubmissionCheckDispatchOnce, block);
    }
  }

  return eventRecordingEnabled_recordingEnabled ^ 1;
}

- (MADAnalyticsManager)init
{
  v16.receiver = self;
  v16.super_class = MADAnalyticsManager;
  v2 = [(MADAnalyticsManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.mobileassetd.MADAnalyticsManagerQueue", v3);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v4;

    *&v2->_overrideClientNameAsTestTool = 0;
    *&v2->_recordCacheDeleteTelemetry = 0;
    v6 = objc_alloc_init(MADAnalyticsEventSubmitter);
    coreEventSubmitter = v2->_coreEventSubmitter;
    v2->_coreEventSubmitter = v6;

    v8 = getRepositoryPath(@"/private/var/MobileSoftwareUpdate/MobileAsset/AssetsV2/analytics");
    savePath = v2->_savePath;
    v2->_savePath = v8;

    v10 = ensureDirectory(v2->_savePath);

    if (!v10)
    {
      v11 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15[0] = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Could not create analytics directory", v15, 2u);
      }
    }

    v12 = objc_opt_new();
    assetTypeEventTracker = v2->_assetTypeEventTracker;
    v2->_assetTypeEventTracker = v12;

    [(MADAnalyticsManager *)v2 analyticsPreferences];
  }

  return v2;
}

- (MADAnalyticsManager)initWithPath:(id)path
{
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = MADAnalyticsManager;
  v5 = [(MADAnalyticsManager *)&v19 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.mobileassetd.MADAnalyticsManagerQueue", v6);
    stateQueue = v5->_stateQueue;
    v5->_stateQueue = v7;

    v9 = objc_alloc_init(MADAnalyticsEventSubmitter);
    coreEventSubmitter = v5->_coreEventSubmitter;
    v5->_coreEventSubmitter = v9;

    v11 = [pathCopy copy];
    savePath = v5->_savePath;
    v5->_savePath = v11;

    v13 = ensureDirectory(v5->_savePath);

    if (!v13)
    {
      v14 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Could not create analytics directory", v18, 2u);
      }
    }

    v15 = objc_opt_new();
    assetTypeEventTracker = v5->_assetTypeEventTracker;
    v5->_assetTypeEventTracker = v15;

    v5->_recordCacheDeleteTelemetry = 0;
    [(MADAnalyticsManager *)v5 analyticsPreferences];
  }

  return v5;
}

+ (id)getAnalyticsManager
{
  if (getAnalyticsManager_controlManagerOnce != -1)
  {
    +[MADAnalyticsManager getAnalyticsManager];
  }

  v3 = getAnalyticsManager_analyticsManager;

  return v3;
}

void __42__MADAnalyticsManager_getAnalyticsManager__block_invoke(id a1)
{
  getAnalyticsManager_analyticsManager = objc_alloc_init(MADAnalyticsManager);

  _objc_release_x1();
}

+ (id)getTestAnalyticsManager:(id)manager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __47__MADAnalyticsManager_getTestAnalyticsManager___block_invoke;
  block[3] = &unk_4B2AA0;
  managerCopy = manager;
  v3 = getTestAnalyticsManager__controlManagerOnce;
  v4 = managerCopy;
  if (v3 != -1)
  {
    dispatch_once(&getTestAnalyticsManager__controlManagerOnce, block);
  }

  v5 = getTestAnalyticsManager__analyticsManager;
  v6 = getTestAnalyticsManager__analyticsManager;

  return v5;
}

uint64_t __47__MADAnalyticsManager_getTestAnalyticsManager___block_invoke(uint64_t a1)
{
  getTestAnalyticsManager__analyticsManager = [[MADAnalyticsManager alloc] initWithPath:*(a1 + 32)];

  return _objc_release_x1();
}

- (id)copyEventFromPath:(id)path
{
  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  v26 = 0;
  v5 = [v4 attributesOfItemAtPath:pathCopy error:&v26];
  v6 = v26;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8 || ([v5 objectForKeyedSubscript:NSFileType], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, objc_msgSend(v5, "objectForKeyedSubscript:", NSFileType), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", NSFileTypeRegular), v11, v10, (v12 & 1) == 0))
  {
    v18 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = @"Unknown error";
      if (v7)
      {
        v19 = v7;
      }

      *buf = 138543618;
      v28 = pathCopy;
      v29 = 2114;
      v30 = v19;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Invalid file type found for even at path: %{public}@ [%{public}@] (skipping)", buf, 0x16u);
    }

    v17 = 0;
    v13 = 0;
    goto LABEL_23;
  }

  v25 = 0;
  v13 = [NSData dataWithContentsOfFile:pathCopy options:0 error:&v25];
  v14 = v25;
  v7 = v14;
  if (!v13 || v14)
  {
    v18 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = @"Unknown error";
      if (v7)
      {
        v20 = v7;
      }

      *buf = 138543618;
      v28 = pathCopy;
      v29 = 2114;
      v30 = v20;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Failed to read contents of event file: %{public}@ (%{public}@)", buf, 0x16u);
    }

    v17 = 0;
LABEL_23:
    v15 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v24 = 0;
  v15 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v24];
  v16 = v24;
  v17 = v16;
  if (!v15 || v16)
  {
    v18 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = @"Unknown error";
      if (v17)
      {
        v23 = v17;
      }

      *buf = 138543618;
      v28 = pathCopy;
      v29 = 2114;
      v30 = v23;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Invalid event data for :%{public}@ (%{public}@)", buf, 0x16u);
    }

    v7 = 0;
    goto LABEL_24;
  }

  v7 = 0;
LABEL_25:
  v21 = v15;

  return v21;
}

- (BOOL)saveEventToDisk:(id)disk
{
  diskCopy = disk;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __39__MADAnalyticsManager_saveEventToDisk___block_invoke;
  block[3] = &unk_4B2BD0;
  v9 = diskCopy;
  v10 = &v11;
  block[4] = self;
  v6 = diskCopy;
  dispatch_sync(stateQueue, block);
  LOBYTE(diskCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return diskCopy;
}

void __39__MADAnalyticsManager_saveEventToDisk___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 40))
  {
    v5 = _MADLog(@"Analytics");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v6 = "Save called on object with no path specified. Skipping.";
    goto LABEL_11;
  }

  v2 = [*(a1 + 40) eventUUID];
  if (!v2 || (v3 = v2, [*(a1 + 40) eventName], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v5 = _MADLog(@"Analytics");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v6 = "Invalid event passed to saveEvent. Skipping.";
LABEL_11:
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    goto LABEL_12;
  }

  if ([*(a1 + 32) reportingLevel] <= -20)
  {
    v5 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Save called for event but reportingLevel does not allow save. Skipping.";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
      _os_log_impl(&dword_0, v7, v8, v6, buf, 2u);
    }

LABEL_13:

    *(*(*(a1 + 48) + 8) + 24) = 0;
    return;
  }

  v26 = 66053;
  v9 = [*(a1 + 40) eventName];
  v10 = [*(a1 + 40) eventUUID];
  v11 = [NSString stringWithFormat:@"%@_%@%s", v9, v10, ".MADAnalytics"];

  v12 = [*(*(a1 + 32) + 40) stringByAppendingPathComponent:v11];
  IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled();
  if (IsVerboseLoggingEnabled)
  {
    v14 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 40) eventName];
      v16 = [*(a1 + 40) eventUUID];
      *buf = 138543874;
      v28 = v15;
      v29 = 2114;
      v30 = v16;
      v31 = 2114;
      v32 = v12;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Saving event %{public}@:%{public}@ to %{public}@", buf, 0x20u);
    }
  }

  v17 = *(a1 + 40);
  v25 = 0;
  v18 = [NSKeyedArchiver archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v25];
  v19 = v25;
  if (v18 && ([v18 writeToFile:v12 atomically:1] & 1) != 0)
  {
    if (IsVerboseLoggingEnabled)
    {
      v20 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Successfully saved event", buf, 2u);
      }
    }

    if (fsctl([v12 UTF8String], 0xC0084A44uLL, &v26, 0))
    {
      v21 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = *__error();
        *buf = 67109120;
        LODWORD(v28) = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Failed to mark analytics file purgeable, errno:%d", buf, 8u);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v23 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = @"Unknown Archiver Error";
      if (v19)
      {
        v24 = v19;
      }

      *buf = 138543362;
      v28 = v24;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Unable to save MAD analytics event(%{public}@)", buf, 0xCu);
    }
  }
}

- (void)setEvent:(id)event
{
  stateQueue = self->_stateQueue;
  eventCopy = event;
  dispatch_assert_queue_not_V2(stateQueue);
  [(MADAnalyticsManager *)self saveEventToDisk:eventCopy];
}

- (void)removeEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __35__MADAnalyticsManager_removeEvent___block_invoke;
  v7[3] = &unk_4B2B18;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(stateQueue, v7);
}

void __35__MADAnalyticsManager_removeEvent___block_invoke(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) eventName];
  v4 = [*(a1 + 32) eventUUID];
  v5 = [NSString stringWithFormat:@"%@_%@%s", v3, v4, ".MADAnalytics"];

  v6 = [*(*(a1 + 40) + 40) stringByAppendingPathComponent:v5];
  v7 = [*(a1 + 40) copyEventFromPath:v6];
  if ([v2 fileExistsAtPath:v6])
  {
    v24 = 0;
    v8 = [v2 removeItemAtPath:v6 error:&v24];
    v23 = v24;
    if ((v8 & 1) == 0)
    {
      v9 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [*(a1 + 32) eventName];
        v11 = [*(a1 + 32) eventUUID];
        v12 = v11;
        v13 = @"Unknown error";
        *buf = 138543874;
        if (v23)
        {
          v13 = v23;
        }

        v26 = v10;
        v27 = 2114;
        v28 = v11;
        v29 = 2114;
        v30 = v13;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Unable to remove event %{public}@ : %{public}@ : %{public}@", buf, 0x20u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v23 = 0;
  }

  v9 = [*(a1 + 40) assetTypeEventTracker];
  objc_sync_enter(v9);
  v14 = [v7 eventPayload];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 objectForKey:@"AssetType"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = v16;
      v18 = [*(a1 + 40) assetTypeEventTracker];
      v22 = [v18 objectForKey:v17];

      if (v22 && [v22 intValue] > 0)
      {
        v19 = [*(a1 + 40) assetTypeEventTracker];
        v20 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v22 intValue] - 1);
        [v19 setObject:v20 forKey:v17];
      }

      else
      {
        v19 = _MADLog(@"Analytics");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v17;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Unable to read number of events written for assetType: %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v17 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Unable to read assetType to decrement tracker!", buf, 2u);
      }
    }
  }

  else
  {
    v21 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Unable to read event to decrement tracker!", buf, 2u);
    }
  }

  objc_sync_exit(v9);
LABEL_24:
}

- (void)analyticsPreferences
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __43__MADAnalyticsManager_analyticsPreferences__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  if (onceAnalyticsPreferences != -1)
  {
    dispatch_once(&onceAnalyticsPreferences, block);
  }
}

void __43__MADAnalyticsManager_analyticsPreferences__block_invoke(uint64_t a1)
{
  v18 = 0;
  AppIntegerValue = _MAPreferencesGetAppIntegerValue(@"AnalyticsLevelOnLaunch", &v18);
  if (v18)
  {
    [*(a1 + 32) changeReportingLevel:AppIntegerValue];
  }

  if (_MAPreferencesGetAppBooleanValue(@"ForceAutoCacheDelete", &v18))
  {
    v3 = v18 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  *(*(a1 + 32) + 32) = v4;
  if (_MAPreferencesGetAppBooleanValue(@"AnalyticsSendImmediate", &v18))
  {
    v5 = v18 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  *(*(a1 + 32) + 33) = v6;
  PreferenceLong = getPreferenceLong(@"AnalyticsSubmitOnLaunch");
  v8 = getPreferenceLong(@"AnalyticsClearOnLaunch");
  v9 = +[NSFileManager defaultManager];
  v10 = [*(a1 + 32) savePath];
  v11 = [v9 enumeratorAtPath:v10];

  v12 = [v11 allObjects];
  v13 = [v12 count];

  if (v13 >= 0x3E9)
  {
    [*(a1 + 32) removeAllEvents];
  }

  if (PreferenceLong)
  {
    v14 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @" due to override";
      if (PreferenceLong == -1)
      {
        v15 = &stru_4BD3F0;
      }

      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Analytics submitting on launch%{public}@", buf, 0xCu);
    }

    [*(a1 + 32) submitAllEvents];
  }

  if (v8)
  {
    v16 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @" due to override";
      if (v8 == -1)
      {
        v17 = &stru_4BD3F0;
      }

      *buf = 138543362;
      v20 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Analytics clearing on launch%{public}@", buf, 0xCu);
    }

    [*(a1 + 32) removeAllEvents];
  }
}

- (void)removeEventsWithName:(id)name
{
  nameCopy = name;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __44__MADAnalyticsManager_removeEventsWithName___block_invoke;
  v7[3] = &unk_4B2B18;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(stateQueue, v7);
}

void __44__MADAnalyticsManager_removeEventsWithName___block_invoke(uint64_t a1)
{
  v31 = +[NSFileManager defaultManager];
  v1 = [*(a1 + 32) savePath];
  v2 = [v31 enumeratorAtPath:v1];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v3)
  {
    v34 = *v37;
    *&v4 = 138543362;
    v29 = v4;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v36 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        if ([v6 hasSuffix:@".MADAnalytics"])
        {
          v8 = [*(a1 + 32) savePath];
          v9 = [v8 stringByAppendingPathComponent:v6];

          v10 = [*(a1 + 32) copyEventFromPath:v9];
          IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled();
          if (v10 && (v12 = IsVerboseLoggingEnabled, [v10 eventName], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", *(a1 + 40)), v13, v14))
          {
            v35 = 0;
            [v31 removeItemAtPath:v9 error:&v35];
            v15 = v35;
            if (v15)
            {
              v16 = v15;
              v17 = _MADLog(@"Analytics");
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v41 = v9;
                v42 = 2114;
                v43 = v16;
                _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Unable to remove event file %{public}@: %{public}@", buf, 0x16u);
              }
            }

            else
            {
              if (v12)
              {
                v18 = _MADLog(@"Analytics");
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v29;
                  v41 = v9;
                  _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Successfully removed event file %{public}@", buf, 0xCu);
                }
              }

              v17 = [*(a1 + 32) assetTypeEventTracker];
              objc_sync_enter(v17);
              v19 = [v10 eventPayload];
              if (!v19)
              {
                v28 = _MADLog(@"Analytics");
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "Unable to read event to decrement tracker!", buf, 2u);
                }

                goto LABEL_35;
              }

              v30 = v19;
              v20 = [v19 objectForKey:@"AssetType"];
              if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                v26 = _MADLog(@"Analytics");
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Unable to read assetType to decrement tracker!", buf, 2u);
                }

                goto LABEL_34;
              }

              v21 = v20;
              v22 = [*(a1 + 32) assetTypeEventTracker];
              v23 = [v22 objectForKey:v21];

              if (!v23 || [v23 intValue] <= 0)
              {
                v27 = _MADLog(@"Analytics");
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = v29;
                  v41 = v21;
                  _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "Unable to read number of events written for assetType: %{public}@", buf, 0xCu);
                }

LABEL_34:
                v28 = v30;
LABEL_35:

                objc_sync_exit(v17);
                objc_autoreleasePoolPop(v7);
                goto LABEL_36;
              }

              v24 = [*(a1 + 32) assetTypeEventTracker];
              v25 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v23 intValue] - 1);
              [v24 setObject:v25 forKey:v21];

              objc_sync_exit(v17);
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        objc_autoreleasePoolPop(v7);
      }

      v3 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_36:
}

- (void)removeAllEvents
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __38__MADAnalyticsManager_removeAllEvents__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

void __38__MADAnalyticsManager_removeAllEvents__block_invoke(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) savePath];
  v4 = [v2 enumeratorAtPath:v3];

  IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v5)
  {
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 hasSuffix:@".MADAnalytics"];
        v11 = [*(a1 + 32) savePath];
        v12 = [v11 stringByAppendingPathComponent:v8];

        if (v10)
        {
          v28 = 0;
          v13 = [v2 removeItemAtPath:v12 error:&v28];
          v14 = v28;
          if (v13)
          {
            if (!IsVerboseLoggingEnabled)
            {
              goto LABEL_27;
            }

            v15 = _MADLog(@"Analytics");
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_26;
            }

            *buf = 138543362;
            v34 = v12;
            v16 = v15;
            v17 = OS_LOG_TYPE_DEFAULT;
            v18 = "Successfully removed event file %{public}@";
LABEL_15:
            v20 = 12;
            goto LABEL_25;
          }

          v15 = _MADLog(@"Analytics");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v21 = @"Unknown Error";
            if (v14)
            {
              v21 = v14;
            }

            v34 = v12;
            v35 = 2114;
            v36 = v21;
            v16 = v15;
            v17 = OS_LOG_TYPE_ERROR;
            v18 = "Unable to remove event file %{public}@: %{public}@";
            goto LABEL_24;
          }
        }

        else
        {
          v27 = 0;
          v19 = [v2 removeItemAtPath:v12 error:&v27];
          v14 = v27;
          if (v19)
          {
            if (!IsVerboseLoggingEnabled)
            {
              goto LABEL_27;
            }

            v15 = _MADLog(@"Analytics");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v34 = v12;
              v16 = v15;
              v17 = OS_LOG_TYPE_DEFAULT;
              v18 = "Successfully removed item %{public}@";
              goto LABEL_15;
            }
          }

          else
          {
            v15 = _MADLog(@"Analytics");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v22 = @"Unknown Error";
              if (v14)
              {
                v22 = v14;
              }

              v34 = v12;
              v35 = 2114;
              v36 = v22;
              v16 = v15;
              v17 = OS_LOG_TYPE_ERROR;
              v18 = "Unable to remove item %{public}@: %{public}@";
LABEL_24:
              v20 = 22;
LABEL_25:
              _os_log_impl(&dword_0, v16, v17, v18, buf, v20);
            }
          }
        }

LABEL_26:

LABEL_27:
        objc_autoreleasePoolPop(v9);
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v5);
  }

  v23 = [*(a1 + 32) assetTypeEventTracker];
  objc_sync_enter(v23);
  v24 = objc_opt_new();
  [*(a1 + 32) setAssetTypeEventTracker:v24];

  objc_sync_exit(v23);
}

- (void)submitEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __35__MADAnalyticsManager_submitEvent___block_invoke;
  v7[3] = &unk_4B2B18;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(stateQueue, v7);
}

void __35__MADAnalyticsManager_submitEvent___block_invoke(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) eventName];
  v4 = [*(a1 + 32) eventUUID];
  v5 = [NSString stringWithFormat:@"%@_%@%s", v3, v4, ".MADAnalytics"];

  IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled();
  if ([*(a1 + 40) reportingLevel] > -10)
  {
    v7 = [*(*(a1 + 40) + 40) stringByAppendingPathComponent:v5];
    if (![v2 fileExistsAtPath:v7])
    {
      v9 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = [*(a1 + 32) eventName];
        v12 = [*(a1 + 32) eventUUID];
        *buf = 138543618;
        v18 = v11;
        v19 = 2114;
        v20 = v12;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Event %{public}@ with uuid %{public}@ does not exist", buf, 0x16u);
      }

      v8 = 0;
      goto LABEL_22;
    }

    v9 = [*(a1 + 40) copyEventFromPath:v7];
    if (v9)
    {
      [*(a1 + 40) _queue_setEvent:v9];
      [*(a1 + 40) _queue_submitEvent:v9];
      if (!IsVerboseLoggingEnabled)
      {
        goto LABEL_18;
      }

      v10 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v9;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Submitted event %{public}@\n", buf, 0xCu);
      }
    }

    else
    {
      v10 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = [*(a1 + 32) eventName];
        v14 = [*(a1 + 32) eventUUID];
        *buf = 138543618;
        v18 = v13;
        v19 = 2114;
        v20 = v14;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Unable to find/reconstruct stashed event for event %{public}@ with uuid %{public}@", buf, 0x16u);
      }
    }

LABEL_18:
    v16 = 0;
    [v2 removeItemAtPath:v7 error:&v16];
    v8 = v16;
    if (v8)
    {
      v15 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v18 = v7;
        v19 = 2114;
        v20 = v8;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Failed to remove event file after event submission %{public}@: %{public}@", buf, 0x16u);
      }
    }

LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  if (IsVerboseLoggingEnabled)
  {
    v7 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Submit called for event but reportingLevel does not allow sending. Skipping event: %{public}@", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_23;
  }

  v8 = 0;
LABEL_24:
}

- (void)changeReportingLevel:(int64_t)level
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  if (level)
  {
    self->_reportingLevel = level;
  }
}

- (void)submitAllEvents
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __38__MADAnalyticsManager_submitAllEvents__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

void __38__MADAnalyticsManager_submitAllEvents__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) reportingLevel] > -10)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [*(a1 + 32) savePath];
    v20 = v3;
    v5 = [v3 enumeratorAtPath:v4];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = v6;
    v8 = *v25;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if ([v10 hasSuffix:@".MADAnalytics"])
        {
          v12 = [*(a1 + 32) savePath];
          v13 = [v12 stringByAppendingPathComponent:v10];

          v14 = [*(a1 + 32) copyEventFromPath:v13];
          if (v14)
          {
            [*(a1 + 32) _queue_setEvent:v14];
            v22 = 0;
            [v20 removeItemAtPath:v13 error:&v22];
            v15 = v22;
            if (v15)
            {
              v16 = _MADLog(@"Analytics");
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v29 = v13;
                v30 = 2114;
                v31 = v15;
                v17 = v16;
                v18 = "Failed to remove event file after event submission %{public}@: %{public}@";
                goto LABEL_19;
              }

              goto LABEL_20;
            }
          }

          else
          {
            v19 = _MADLog(@"Analytics");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v29 = v13;
              _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Unable to read event at %{public}@ for submission..Removing and moving on", buf, 0xCu);
            }

            v23 = 0;
            [v20 removeItemAtPath:v13 error:&v23];
            v15 = v23;
            if (v15)
            {
              v16 = _MADLog(@"Analytics");
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v29 = v13;
                v30 = 2114;
                v31 = v15;
                v17 = v16;
                v18 = "Failed to remove event file %{public}@: %{public}@";
LABEL_19:
                _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
              }

LABEL_20:
            }
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (!v7)
      {
LABEL_24:

        [*(a1 + 32) _queue_submitAllEvents];
        v2 = v20;
        goto LABEL_25;
      }
    }
  }

  v2 = _MADLog(@"Analytics");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Submit called for all events but reportingLevel does not allow sending. Skipping the submission.", buf, 2u);
  }

LABEL_25:
}

- (void)_queue_setEvent:(id)event
{
  stateQueue = self->_stateQueue;
  eventCopy = event;
  dispatch_assert_queue_V2(stateQueue);
  [(MADAnalyticsEventSubmitter *)self->_coreEventSubmitter setEvent:eventCopy];
}

- (void)_queue_submitAllEvents
{
  dispatch_assert_queue_V2(self->_stateQueue);
  coreEventSubmitter = self->_coreEventSubmitter;

  [(MADAnalyticsEventSubmitter *)coreEventSubmitter submitAllEvents];
}

- (void)_queue_submitEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if ([(MADAnalyticsManager *)self eventRecordingEnabled])
  {
    [(MADAnalyticsEventSubmitter *)self->_coreEventSubmitter submitEvent:eventCopy];
  }
}

- (id)nilToNoneString:(id)string
{
  stringCopy = string;
  if (stringCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = stringCopy;
  }

  else
  {
    v4 = @"<none>";
  }

  return v4;
}

- (id)yesNoString:(BOOL)string
{
  if (string)
  {
    return @"yes";
  }

  else
  {
    return @"no";
  }
}

- (id)removePrefix:(id)prefix fromString:(id)string
{
  prefixCopy = prefix;
  stringCopy = string;
  if (![stringCopy hasPrefix:prefixCopy] || (objc_msgSend(stringCopy, "stringByReplacingOccurrencesOfString:withString:options:range:", prefixCopy, &stru_4BD3F0, 8, 0, objc_msgSend(stringCopy, "length")), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = stringCopy;
  }

  return v7;
}

- (BOOL)shouldRecordEventForAssetType:(id)type
{
  typeCopy = type;
  assetTypeEventTracker = [(MADAnalyticsManager *)self assetTypeEventTracker];
  objc_sync_enter(assetTypeEventTracker);
  assetTypeEventTracker2 = [(MADAnalyticsManager *)self assetTypeEventTracker];
  v7 = [assetTypeEventTracker2 objectForKey:typeCopy];

  if (v7)
  {
    if ([v7 intValue] > 49)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v8 = [v7 intValue] + 1;
  }

  else
  {
    v8 = 1;
  }

  assetTypeEventTracker3 = [(MADAnalyticsManager *)self assetTypeEventTracker];
  v10 = [NSNumber numberWithInt:v8];
  [assetTypeEventTracker3 setSafeObject:v10 forKey:typeCopy];

  v11 = 1;
LABEL_7:

  objc_sync_exit(assetTypeEventTracker);
  return v11;
}

- (id)recordEventWithName:(id)name assetType:(id)type payload:(id)payload
{
  nameCopy = name;
  typeCopy = type;
  payloadCopy = payload;
  if (typeCopy && ![(MADAnalyticsManager *)self shouldRecordEventForAssetType:typeCopy])
  {
    v11 = 0;
  }

  else
  {
    v11 = [MADAnalyticsEvent eventWithName:nameCopy payload:payloadCopy];
    if (v11)
    {
      [(MADAnalyticsManager *)self setEvent:v11];
      if ([(MADAnalyticsManager *)self reportingLevel]> 9 || [(MADAnalyticsManager *)self analyticsSendImmediate])
      {
        v12 = _MADLog(@"Analytics");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138543362;
          v16 = nameCopy;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[ANALYTICS] {recordEventWithName} Automatically submitting event due to reportingLevel being immediate. eventName: %{public}@", &v15, 0xCu);
        }

        [(MADAnalyticsManager *)self submitEvent:v11];
      }
    }

    else
    {
      v13 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543618;
        v16 = payloadCopy;
        v17 = 2114;
        v18 = nameCopy;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "[ANALYTICS] {recordEventWithName} Could not extract Event from payload:%{public}@ and eventName:%{public}@", &v15, 0x16u);
      }
    }
  }

  return v11;
}

- (void)recordDownloadSuccessForAssetType:(id)type notificationSuffix:(id)suffix fileType:(id)fileType
{
  fileTypeCopy = fileType;
  suffixCopy = suffix;
  v10 = [(MADAnalyticsManager *)self nilToNoneString:type];
  v16 = [(MADAnalyticsManager *)self removePrefix:@"com.apple.MobileAsset." fromString:v10];

  v11 = [(MADAnalyticsManager *)self nilToNoneString:suffixCopy];

  v12 = [(MADAnalyticsManager *)self removePrefix:@"." fromString:v11];

  v13 = [(MADAnalyticsManager *)self nilToNoneString:fileTypeCopy];

  v14 = objc_alloc_init(NSMutableDictionary);
  [v14 setSafeObject:v16 forKey:@"AssetType"];
  [v14 setSafeObject:v12 forKey:@"Notification"];
  [v14 setSafeObject:v13 forKey:@"FileType"];
  v15 = [(MADAnalyticsManager *)self recordEventWithName:@"com.apple.mobileassetd.Download.Success" assetType:v16 payload:v14];
}

void __44__MADAnalyticsManager_eventRecordingEnabled__block_invoke(uint64_t a1)
{
  mainPort = 0;
  if (_MAPreferencesIsInternalAllowed())
  {
    buf[0] = 0;
    AppBooleanValue = _MAPreferencesGetAppBooleanValue(@"AnalyticsClientNameTestToolOverride", buf);
    if (buf[0])
    {
      v3 = AppBooleanValue == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      [*(a1 + 32) setOverrideClientNameAsTestTool:1];
    }

    if (([*(a1 + 32) overrideClientNameAsTestTool] & 1) == 0)
    {
      v4 = _MAPreferencesGetAppBooleanValue(@"AnalyticsClientNameTestToolPrepend", buf);
      if (buf[0])
      {
        if (v4)
        {
          [*(a1 + 32) setPrependClientNameWithTestTool:1];
        }
      }
    }
  }

  v5 = IOMasterPort(bootstrap_port, &mainPort);
  if (v5)
  {
    v6 = v5;
    v7 = _MADLog(@"Analytics");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_15:

      goto LABEL_16;
    }

    *buf = 136446466;
    v27 = "[MADAnalyticsManager eventRecordingEnabled]_block_invoke";
    v28 = 1024;
    LODWORD(v29) = v6;
    v8 = "%{public}s: Unable to get event submission overrides(Could not get master port[%d])";
    v9 = v7;
    v10 = 18;
LABEL_14:
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    goto LABEL_15;
  }

  v13 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
  if (!v13)
  {
    v7 = _MADLog(@"Analytics");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446210;
    v27 = "[MADAnalyticsManager eventRecordingEnabled]_block_invoke";
    v8 = "%{public}s: Unable to get event submission override(unable to get options entry from the device tree)";
    v9 = v7;
    v10 = 12;
    goto LABEL_14;
  }

  v14 = v13;
  CFProperty = IORegistryEntryCreateCFProperty(v13, @"stress-rack", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v16 = CFProperty;
    v17 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v27 = "[MADAnalyticsManager eventRecordingEnabled]_block_invoke";
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%s: Stress rack flag detected", buf, 0xCu);
    }

    eventRecordingEnabled_recordingEnabled = 1;
    CFRelease(v16);
  }

  v18 = IORegistryEntryCreateCFProperty(v14, @"boot-args", kCFAllocatorDefault, 0);
  v19 = _MADLog(@"Analytics");
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "Checking for test environment", buf, 2u);
    }

    v20 = v18;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v20 containsString:@"TESTPLAN_ID"])
    {
      v21 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v27 = "[MADAnalyticsManager eventRecordingEnabled]_block_invoke";
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%s: Test flag detected", buf, 0xCu);
      }

      eventRecordingEnabled_recordingEnabled = 1;
    }

    CFRelease(v20);
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v27 = "[MADAnalyticsManager eventRecordingEnabled]_block_invoke";
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}s: Failed to read boot-args", buf, 0xCu);
  }

  v22 = IORegistryEntryCreateCFProperty(v14, @"ma-analytics-force-submit", kCFAllocatorDefault, 0);
  if (v22)
  {
    v23 = v22;
    v24 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "Analytics force submit flag detected", buf, 2u);
    }

    eventRecordingEnabled_recordingEnabled = 0;
    CFRelease(v23);
  }

LABEL_16:
  v11 = _MADLog(@"Analytics");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (eventRecordingEnabled_recordingEnabled)
    {
      v12 = "disabled";
    }

    else
    {
      v12 = "enabled";
    }

    *buf = 136446466;
    v27 = "[MADAnalyticsManager eventRecordingEnabled]_block_invoke";
    v28 = 2082;
    v29 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: Analytics event recording is %{public}s", buf, 0x16u);
  }
}

- (void)recordDownloadAttemptForAssetType:(id)type clientName:(id)name baseUrl:(id)url relativePath:(id)path purpose:(id)purpose result:(id)result analyticsFileType:(id)fileType isAutoDownload:(BOOL)self0 isPallas:(BOOL)self1 pallasAssetAudience:(id)self2 isUserPriority:(BOOL)self3 bytesWritten:(id)self4 bytesTransferredEst:(id)self5 additionalData:(id)self6
{
  LOBYTE(v17) = priority;
  LOWORD(v16) = __PAIR16__(pallas, download);
  [(MADAnalyticsManager *)self recordDownloadAttemptForAssetType:type clientName:name baseUrl:url relativePath:path purpose:purpose result:result analyticsFileType:fileType isAutoDownload:v16 isPallas:audience pallasAssetAudience:v17 isUserPriority:written bytesWritten:est bytesTransferredEst:@"unknown" brainVersion:0 withTaskMetrics:0 withOptions:data additionalData:?];
}

- (void)recordDownloadAttemptForAssetType:(id)type clientName:(id)name baseUrl:(id)url relativePath:(id)path purpose:(id)purpose result:(id)result analyticsFileType:(id)fileType isAutoDownload:(BOOL)self0 isPallas:(BOOL)self1 pallasAssetAudience:(id)self2 isUserPriority:(BOOL)self3 bytesWritten:(id)self4 bytesTransferredEst:(id)self5 brainVersion:(id)self6 withTaskMetrics:(id)self7 withOptions:(id)self8 additionalData:(id)self9
{
  audienceCopy = audience;
  writtenCopy = written;
  estCopy = est;
  metricsCopy = metrics;
  optionsCopy = options;
  dataCopy = data;
  versionCopy = version;
  fileTypeCopy = fileType;
  resultCopy = result;
  purposeCopy = purpose;
  pathCopy = path;
  urlCopy = url;
  nameCopy = name;
  v29 = [(MADAnalyticsManager *)self nilToNoneString:type];
  v110 = [(MADAnalyticsManager *)self removePrefix:@"com.apple.MobileAsset." fromString:v29];

  v30 = [(MADAnalyticsManager *)self nilToNoneString:resultCopy];

  v102 = [(MADAnalyticsManager *)self removePrefix:@"MADownload" fromString:v30];

  v31 = [(MADAnalyticsManager *)self nilToNoneString:purposeCopy];

  v32 = [(MADAnalyticsManager *)self nilToNoneString:nameCopy];

  v98 = [(MADAnalyticsManager *)self nilToNoneString:fileTypeCopy];

  v33 = writtenCopy;
  v100 = [(MADAnalyticsManager *)self nilToNoneString:urlCopy];

  v96 = [(MADAnalyticsManager *)self nilToNoneString:pathCopy];

  v34 = [(MADAnalyticsManager *)self nilToNoneString:versionCopy];

  if (!writtenCopy)
  {
    v33 = [[NSNumber alloc] initWithLongLong:0];
  }

  v35 = estCopy;
  if (!estCopy)
  {
    v35 = [[NSNumber alloc] initWithLongLong:0];
  }

  v95 = [(MADAnalyticsManager *)self yesNoString:pallas];
  v36 = [(MADAnalyticsManager *)self yesNoString:download];
  selfCopy = self;
  v37 = [(MADAnalyticsManager *)self yesNoString:priority];
  v38 = objc_alloc_init(NSMutableDictionary);
  [v38 setSafeObject:v110 forKey:@"AssetType"];
  v91 = v32;
  v39 = v32;
  v40 = v38;
  [v38 setSafeObject:v39 forKey:@"ClientName"];
  v90 = v31;
  [v38 setSafeObject:v31 forKey:@"Purpose"];
  [v38 setSafeObject:v98 forKey:@"FileType"];
  v88 = v36;
  [v38 setSafeObject:v36 forKey:@"IsAutoDownload"];
  p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  v43 = metricsCopy;
  v42 = audienceCopy;
  if (audienceCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v38 setSafeObject:audienceCopy forKey:@"PallasAssetAudience"];
    }
  }

  [v38 setSafeObject:v102 forKey:@"Result"];
  [v38 setSafeObject:v33 forKey:@"BytesWritten"];
  [v38 setSafeObject:v35 forKey:@"BytesTransferredEst"];
  [v38 setSafeObject:v100 forKey:@"BaseURL"];
  [v38 setSafeObject:v96 forKey:@"RelativePath"];
  v87 = v37;
  [v38 setSafeObject:v37 forKey:@"IsUserPriority"];
  [v38 setSafeObject:v95 forKey:@"IsPallas"];
  v89 = v34;
  [v38 setSafeObject:v34 forKey:@"BrainVersion"];
  [v38 setSafeObject:@"NO" forKey:@"IsAssetPatch"];
  [v38 setSafeObject:@"NO" forKey:@"IsMAAutoAsset"];
  [v38 setSafeObject:@"NO" forKey:@"BaseAssetVersion"];
  [v38 setSafeObject:@"NO" forKey:@"WasAssetPatchingAttempted"];
  v111 = v38;
  if (metricsCopy && ([metricsCopy transactionMetrics], (v44 = objc_claimAutoreleasedReturnValue()) != 0) && (v45 = v44, objc_msgSend(metricsCopy, "transactionMetrics"), v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "count"), v46, v40 = v38, v45, v47) && (objc_msgSend(metricsCopy, "transactionMetrics"), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "lastObject"), v49 = objc_claimAutoreleasedReturnValue(), v48, v40 = v38, v49))
  {
    v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v49 isCellular]);
    [v38 setSafeObject:v50 forKey:@"CellularAccessRequest"];

    v51 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v49 isExpensive]);
    [v38 setSafeObject:v51 forKey:@"ExpensiveNetworkAccessRequest"];

    v52 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v49 isConstrained]);
    [v38 setSafeObject:v52 forKey:@"ConstrainedNetworkAccessRequest"];

    p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
    v53 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [v49 isMultipath]);
    [v38 setSafeObject:v53 forKey:@"MultipathRequest"];
  }

  else
  {
    v54 = [NSNumber numberWithBool:0];
    [v40 setSafeObject:v54 forKey:@"CellularAccessRequest"];

    v55 = [NSNumber numberWithBool:0];
    [v40 setSafeObject:v55 forKey:@"ExpensiveNetworkAccessRequest"];

    v56 = [NSNumber numberWithBool:0];
    [v40 setSafeObject:v56 forKey:@"ConstrainedNetworkAccessRequest"];

    v49 = [NSNumber numberWithBool:0];
    [v40 setSafeObject:v49 forKey:@"MultipathRequest"];
  }

  if (optionsCopy)
  {
    v57 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [optionsCopy allowsCellularAccess]);
    v58 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 integerValue]);
    [v38 setSafeObject:v58 forKey:@"CellularAccessResponse"];

    v59 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [optionsCopy allowsExpensiveAccess]);
    v60 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v59 integerValue]);
    [v38 setSafeObject:v60 forKey:@"ExpensiveNetworkAccessResponse"];

    if (__isPlatformVersionAtLeast(2, 18, 3, 0))
    {
      if (objc_opt_respondsToSelector())
      {
        v61 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [optionsCopy allowsConstrainedAccess]);
        v62 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v61 integerValue]);
        [v38 setSafeObject:v62 forKey:@"ConstrainedNetworkAccessResponse"];
      }
    }
  }

  v63 = v110;
  if (dataCopy)
  {
    v105 = v35;
    v107 = v33;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v64 = dataCopy;
    v65 = [v64 countByEnumeratingWithState:&v113 objects:v119 count:16];
    if (!v65)
    {
      goto LABEL_40;
    }

    v66 = v65;
    v67 = *v114;
    while (1)
    {
      v68 = 0;
      v112 = v66;
      do
      {
        if (*v114 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v113 + 1) + 8 * v68);
        v70 = objc_autoreleasePoolPush();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v71 = _MADLog(@"Analytics");
          if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          *buf = 0;
          v72 = v71;
          v73 = "Invalid key in additionalAnalyticsData dictionary. Skipping key";
          v74 = 2;
LABEL_34:
          _os_log_impl(&dword_0, v72, OS_LOG_TYPE_ERROR, v73, buf, v74);
          goto LABEL_38;
        }

        if (!isSupportedMAAnalyticsEventFieldName(v69))
        {
          v71 = _MADLog(@"Analytics");
          if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          *buf = 138543362;
          v118 = v69;
          v72 = v71;
          v73 = "Not adding %{public}@ to analytics payload due to unallowed name";
          v74 = 12;
          goto LABEL_34;
        }

        v71 = [v64 objectForKeyedSubscript:v69];
        if (v71 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
        {
          [v111 setSafeObject:v71 forKey:v69];
        }

        else
        {
          v75 = v67;
          v76 = v64;
          v77 = p_weak_ivar_lyt;
          v78 = _MADLog(@"Analytics");
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v118 = v69;
            _os_log_impl(&dword_0, v78, OS_LOG_TYPE_ERROR, "Not adding %{public}@ to analytics payload due to invalid type", buf, 0xCu);
          }

          p_weak_ivar_lyt = v77;
          v64 = v76;
          v67 = v75;
          v66 = v112;
        }

LABEL_38:

        objc_autoreleasePoolPop(v70);
        v68 = v68 + 1;
      }

      while (v66 != v68);
      v66 = [v64 countByEnumeratingWithState:&v113 objects:v119 count:16];
      if (!v66)
      {
LABEL_40:

        v43 = metricsCopy;
        v42 = audienceCopy;
        v35 = v105;
        v33 = v107;
        v63 = v110;
        break;
      }
    }
  }

  v79 = selfCopy;
  if ([(MADAnalyticsManager *)selfCopy eventRecordingEnabled])
  {
    v80 = v111;
    if ([(MADAnalyticsManager *)selfCopy overrideClientNameAsTestTool])
    {
      [v111 setSafeObject:@"TestTool" forKey:@"ClientName"];
      v81 = optionsCopy;
    }

    else
    {
      v81 = optionsCopy;
      if ([(MADAnalyticsManager *)selfCopy prependClientNameWithTestTool])
      {
        v83 = [v111 safeObjectForKey:@"ClientName" ofClass:objc_opt_class()];
        if (v83)
        {
          v84 = [objc_alloc(p_weak_ivar_lyt[226]) initWithFormat:@"%@:%@", @"TestTool", v83];
          [v111 setSafeObject:v84 forKey:@"ClientName"];

          v80 = v111;
        }

        else
        {
          [v111 setSafeObject:@"TestTool" forKey:@"ClientName"];
        }

        v79 = selfCopy;
      }
    }

    if (_MAPreferencesIsVerboseLoggingEnabled())
    {
      v85 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v118 = v80;
        _os_log_impl(&dword_0, v85, OS_LOG_TYPE_DEBUG, "Recording event for: %{public}@", buf, 0xCu);
      }

      v79 = selfCopy;
    }

    v86 = [(MADAnalyticsManager *)v79 recordEventWithName:@"com.apple.mobileassetd.Download.Attempt" assetType:v63 payload:v80];
  }

  else
  {
    v82 = _MADLog(@"Analytics");
    v81 = optionsCopy;
    v80 = v111;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v118 = v111;
      _os_log_impl(&dword_0, v82, OS_LOG_TYPE_DEFAULT, "Not recording event for: %{public}@", buf, 0xCu);
    }
  }
}

- (id)recordCacheDeleteAttempt:(int64_t)attempt timeTakenSecs:(double)secs cacheDeleteUrgency:(int64_t)urgency results:(id)results targetPurgeVolume:(id)volume triggeringOperation:(int64_t)operation
{
  volumeCopy = volume;
  resultsCopy = results;
  v14 = objc_alloc_init(NSMutableDictionary);
  reclaimUnlockedUnreferencedAutoAssetCount = [resultsCopy reclaimUnlockedUnreferencedAutoAssetCount];
  reclaimUnlockedReferencedAutoAssetCount = [resultsCopy reclaimUnlockedReferencedAutoAssetCount];
  reclaimUnlockedUnreferencedAutoAssetSpace = [resultsCopy reclaimUnlockedUnreferencedAutoAssetSpace];
  reclaimUnlockedReferencedAutoAssetSpace = [resultsCopy reclaimUnlockedReferencedAutoAssetSpace];
  v19 = [NSNumber numberWithLongLong:attempt];
  [v14 setSafeObject:v19 forKey:@"TargetingReclaimAmount"];

  v20 = [NSNumber numberWithDouble:secs];
  [v14 setSafeObject:v20 forKey:@"TotalCacheDeleteTime"];

  v21 = [NSNumber numberWithLong:urgency];
  [v14 setSafeObject:v21 forKey:@"CacheDeleteUrgency"];

  v22 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [resultsCopy reclaimV2AssetSpace]);
  [v14 setSafeObject:v22 forKey:@"ReclaimV2AssetSpace"];

  v23 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [resultsCopy reclaimV2AssetCount]);
  [v14 setSafeObject:v23 forKey:@"ReclaimV2AssetCount"];

  v24 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [resultsCopy reclaimLockedNeverRemoveAutoAssetCount]);
  [v14 setSafeObject:v24 forKey:@"ReclaimLockedNeverRemoveAutoAssetCount"];

  v25 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [resultsCopy reclaimLockedNeverRemoveAutoAssetSpace]);
  [v14 setSafeObject:v25 forKey:@"ReclaimLockedNeverRemoveAutoAssetSpace"];

  v26 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [resultsCopy reclaimLockedOverridableAutoAssetCount]);
  [v14 setSafeObject:v26 forKey:@"ReclaimLockedOverridableAutoAssetCount"];

  v27 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [resultsCopy reclaimLockedOverridableAutoAssetSpace]);
  [v14 setSafeObject:v27 forKey:@"ReclaimLockedOverridableAutoAssetSpace"];

  v28 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [resultsCopy reclaimStagedAutoAssetCount]);
  [v14 setSafeObject:v28 forKey:@"ReclaimStagedAutoAssetCount"];

  reclaimStagedAutoAssetSpace = [resultsCopy reclaimStagedAutoAssetSpace];
  v30 = [NSNumber numberWithLong:reclaimStagedAutoAssetSpace];
  [v14 setSafeObject:v30 forKey:@"ReclaimStagedAutoAssetSpace"];

  v31 = [NSNumber numberWithLong:&reclaimUnlockedUnreferencedAutoAssetCount[reclaimUnlockedReferencedAutoAssetCount]];
  [v14 setSafeObject:v31 forKey:@"ReclaimUnlockedAutoAssetCount"];

  v32 = [NSNumber numberWithLong:&reclaimUnlockedUnreferencedAutoAssetSpace[reclaimUnlockedReferencedAutoAssetSpace]];
  [v14 setSafeObject:v32 forKey:@"ReclaimUnlockedAutoAssetSpace"];

  if (volumeCopy)
  {
    v33 = volumeCopy;
  }

  else
  {
    v33 = @"/private/var";
  }

  [v14 setSafeObject:v33 forKey:{@"TargetingVolume", operation}];

  v34 = convertGarbageCollectionOperationToString(v38);
  [v14 setSafeObject:v34 forKey:@"TriggeringOperation"];

  v35 = [(MADAnalyticsManager *)self recordEventWithName:@"com.apple.mobileassetd.CacheDelete.Attempt" assetType:0 payload:v14];

  return v35;
}

- (id)recordMobileAssetSecureAttempt:(id)attempt assetType:(id)type assetVersion:(id)version clientName:(id)name operation:(int64_t)operation secureReason:(id)reason fromLocation:(id)location sucessfullyPersonalized:(BOOL)self0 personalizeFailureReason:(id)self1 sucessfullyMounted:(BOOL)self2 mountingFailureReason:(id)self3 successfullyGrafted:(BOOL)self4 graftingFailureReason:(id)self5 successfullyMappedToExclave:(BOOL)self6 mapToExclaveFailureReason:(id)self7
{
  HIDWORD(v47) = exclave;
  LODWORD(v47) = personalized;
  typeCopy = type;
  failureReasonCopy = failureReason;
  mountingFailureReasonCopy = mountingFailureReason;
  graftingFailureReasonCopy = graftingFailureReason;
  exclaveFailureReasonCopy = exclaveFailureReason;
  locationCopy = location;
  reasonCopy = reason;
  nameCopy = name;
  versionCopy = version;
  attemptCopy = attempt;
  v29 = objc_alloc_init(NSMutableDictionary);
  [v29 setSafeObject:attemptCopy forKey:@"AssetSpecifier"];

  [v29 setSafeObject:typeCopy forKey:@"AssetType"];
  [v29 setSafeObject:versionCopy forKey:@"AssetVersion"];

  [v29 setSafeObject:nameCopy forKey:@"ClientName"];
  v30 = [NSNumber numberWithInteger:operation];
  stringValue = [v30 stringValue];
  [v29 setSafeObject:stringValue forKey:@"Operation"];

  [v29 setSafeObject:reasonCopy forKey:@"SecureReason"];
  [v29 setSafeObject:locationCopy forKey:@"FromLocation"];

  if ((operation & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    if (mountingFailureReasonCopy)
    {
      v32 = mountingFailureReasonCopy;
    }

    else
    {
      v32 = @"N/A";
    }

    [v29 setSafeObject:v32 forKey:{@"MountingFailureReason", v47}];
    v33 = [NSNumber numberWithBool:mounted];
    [v29 setSafeObject:v33 forKey:@"MountingResult"];
  }

  if (operation == 5 || operation == 3)
  {
    if (graftingFailureReasonCopy)
    {
      v34 = graftingFailureReasonCopy;
    }

    else
    {
      v34 = @"N/A";
    }

    [v29 setSafeObject:v34 forKey:{@"GraftingFailureReason", v47}];
    v35 = [NSNumber numberWithBool:grafted];
    [v29 setSafeObject:v35 forKey:@"GraftingResult"];

    v37 = exclaveFailureReasonCopy;
    v36 = failureReasonCopy;
  }

  else
  {
    v37 = exclaveFailureReasonCopy;
    v36 = failureReasonCopy;
    if ((operation - 7) <= 1)
    {
      if (failureReasonCopy)
      {
        v42 = failureReasonCopy;
      }

      else
      {
        v42 = @"N/A";
      }

      [v29 setSafeObject:v42 forKey:{@"PersonalizeFailureReason", v47}];
      v43 = [NSNumber numberWithBool:v48];
      [v29 setSafeObject:v43 forKey:@"PersonalizeResult"];

      selfCopy2 = self;
      goto LABEL_22;
    }
  }

  [v29 setSafeObject:@"N/A" forKey:{@"PersonalizeFailureReason", v47}];
  v38 = [NSNumber numberWithBool:0];
  [v29 setSafeObject:v38 forKey:@"PersonalizeResult"];

  selfCopy2 = self;
  if ((operation - 1) <= 1)
  {
    if (v37)
    {
      v40 = v37;
    }

    else
    {
      v40 = @"N/A";
    }

    [v29 setSafeObject:v40 forKey:@"MapExclaveFailureReason"];
    v41 = [NSNumber numberWithBool:v49];
    [v29 setSafeObject:v41 forKey:@"MapExclaveResult"];

    goto LABEL_23;
  }

LABEL_22:
  v44 = [NSNumber numberWithBool:0];
  [v29 setSafeObject:v44 forKey:@"MapExclaveResult"];

  [v29 setSafeObject:@"N/A" forKey:@"MapExclaveFailureReason"];
LABEL_23:
  v45 = [(MADAnalyticsManager *)selfCopy2 recordEventWithName:@"com.apple.mobileassetd.Secure.Attempt" assetType:typeCopy payload:v29];

  return v45;
}

- (id)recordPushNotification:(id)notification assetType:(id)type cloudChannels:(id)channels forPopulationType:(int64_t)populationType userInitiated:(BOOL)initiated interestAcrossTerm:(BOOL)term lockAcrossReboot:(BOOL)reboot lockAcrossTermination:(BOOL)self0
{
  termCopy = term;
  initiatedCopy = initiated;
  typeCopy = type;
  notificationCopy = notification;
  v18 = [channels componentsJoinedByString:{@", "}];
  LOWORD(v21) = __PAIR16__(termination, reboot);
  v19 = [(MADAnalyticsManager *)self recordPushNotification:notificationCopy assetType:typeCopy cloudChannel:v18 forPopulationType:populationType userInitiated:initiatedCopy interestAcrossTerm:termCopy lockAcrossReboot:v21 lockAcrossTermination:?];

  return v19;
}

- (id)recordPushNotification:(id)notification assetType:(id)type cloudChannel:(id)channel forPopulationType:(int64_t)populationType userInitiated:(BOOL)initiated interestAcrossTerm:(BOOL)term lockAcrossReboot:(BOOL)reboot lockAcrossTermination:(BOOL)self0
{
  termCopy = term;
  initiatedCopy = initiated;
  channelCopy = channel;
  typeCopy = type;
  notificationCopy = notification;
  v18 = objc_alloc_init(NSMutableDictionary);
  [v18 setSafeObject:notificationCopy forKey:@"AssetSpecifier"];

  [v18 setSafeObject:typeCopy forKey:@"AssetType"];
  [v18 setSafeObject:channelCopy forKey:@"CloudChannel"];

  v19 = [NSNumber numberWithInteger:populationType];
  [v18 setSafeObject:v19 forKey:@"PopulationType"];

  v20 = [NSNumber numberWithBool:initiatedCopy];
  [v18 setSafeObject:v20 forKey:@"UserInitiated"];

  v21 = [NSNumber numberWithBool:termCopy];
  [v18 setSafeObject:v21 forKey:@"LockAcrossTermination"];

  v22 = [NSNumber numberWithBool:reboot];
  [v18 setSafeObject:v22 forKey:@"LockAcrossReboot"];

  v23 = [NSNumber numberWithBool:termination];
  [v18 setSafeObject:v23 forKey:@"LockAcrossTermination"];

  v24 = [(MADAnalyticsManager *)self recordEventWithName:@"com.apple.mobileassetd.notifications.push" assetType:typeCopy payload:v18];

  return v24;
}

- (id)recordMobileAssetPromotionAttempt:(id)attempt assetType:(id)type assetVersion:(id)version osPromotion:(BOOL)promotion successfullyPromoted:(BOOL)promoted withReason:(int64_t)reason
{
  promotedCopy = promoted;
  promotionCopy = promotion;
  versionCopy = version;
  typeCopy = type;
  attemptCopy = attempt;
  v17 = objc_alloc_init(NSMutableDictionary);
  [v17 setSafeObject:attemptCopy forKey:@"AssetSpecifier"];

  [v17 setSafeObject:typeCopy forKey:@"AssetType"];
  [v17 setSafeObject:versionCopy forKey:@"AssetVersion"];

  v18 = [NSNumber numberWithBool:promotionCopy];
  [v17 setSafeObject:v18 forKey:@"OSPromotion"];

  v19 = [NSNumber numberWithBool:promotedCopy];
  [v17 setSafeObject:v19 forKey:@"StagingPromotionResult"];

  v20 = [NSNumber numberWithInteger:reason];
  [v17 setSafeObject:v20 forKey:@"FailureReason"];

  v21 = [(MADAnalyticsManager *)self recordEventWithName:@"com.apple.mobileassetd.Staging.Promotion" assetType:typeCopy payload:v17];

  return v21;
}

- (id)recordMobileAssetPurgeAttempt:(id)attempt withUrgency:(int)urgency withBytesPurged:(int64_t)purged withResult:(int64_t)result withDir:(id)dir withRetentionPolicy:(int64_t)policy withReason:(id)reason
{
  v13 = *&urgency;
  reasonCopy = reason;
  dirCopy = dir;
  attemptCopy = attempt;
  v19 = objc_opt_new();
  assetType = [attemptCopy assetType];
  [v19 setSafeObject:assetType forKey:@"AssetType"];

  assetSpecifier = [attemptCopy assetSpecifier];
  [v19 setSafeObject:assetSpecifier forKey:@"AssetSpecifier"];

  assetVersion = [attemptCopy assetVersion];
  [v19 setSafeObject:assetVersion forKey:@"AssetVersion"];

  [v19 setSafeObject:dirCopy forKey:@"Directory"];
  [v19 setSafeObject:reasonCopy forKey:@"PurgeReason"];

  v23 = [NSNumber numberWithInt:v13];
  [v19 setSafeObject:v23 forKey:@"CacheDeleteUrgency"];

  v24 = [NSNumber numberWithLongLong:purged];
  [v19 setSafeObject:v24 forKey:@"TotalBytesPurged"];

  v25 = [NSNumber numberWithInteger:policy];
  [v19 setSafeObject:v25 forKey:@"RetentionPolicy"];

  v26 = [NSNumber numberWithInteger:result];
  [v19 setSafeObject:v26 forKey:@"Result"];

  assetType2 = [attemptCopy assetType];

  v28 = [(MADAnalyticsManager *)self recordEventWithName:@"com.apple.mobileassetd.Purge.Attempt" assetType:assetType2 payload:v19];

  return v28;
}

- (id)recordMobileAssetScheduler:(int64_t)scheduler forSelector:(id)selector withXpcID:(id)d forPushJob:(id)job forSetJob:(id)setJob inSchedulerState:(int64_t)state inXPCState:(id)cState didJobFail:(id)self0
{
  failCopy = fail;
  cStateCopy = cState;
  setJobCopy = setJob;
  jobCopy = job;
  dCopy = d;
  selectorCopy = selector;
  v21 = objc_alloc_init(NSMutableDictionary);
  if (scheduler != -1)
  {
    v22 = [NSNumber numberWithInteger:scheduler];
    [v21 setSafeObject:v22 forKey:@"activitySeconds"];
  }

  summary = [selectorCopy summary];
  [v21 setSafeObject:summary forKey:@"assetSelector"];

  [v21 setSafeObject:dCopy forKey:@"xpcID"];
  [v21 setSafeObject:cStateCopy forKey:@"xpcState"];

  [v21 setSafeObject:failCopy forKey:@"jobFailed"];
  v24 = [NSNumber numberWithInteger:v29];
  [v21 setSafeObject:v24 forKey:@"schedulerState"];

  [v21 setSafeObject:jobCopy forKey:@"isPush"];
  [v21 setSafeObject:setJobCopy forKey:@"iSSet"];

  assetType = [selectorCopy assetType];

  v26 = [(MADAnalyticsManager *)self recordEventWithName:@"com.apple.mobileassetd.Scheduler" assetType:assetType payload:v21];

  return v26;
}

@end