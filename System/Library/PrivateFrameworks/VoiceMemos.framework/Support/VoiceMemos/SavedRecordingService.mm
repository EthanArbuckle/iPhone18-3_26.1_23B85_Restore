@interface SavedRecordingService
+ (BOOL)reloadStockRecordings;
+ (BOOL)shouldAcceptXPCConnection:(id)connection;
+ (NSPersistentHistoryToken)localChangeToken;
+ (id)sharedInstance;
+ (void)_moveLegacyRecordings:(id)recordings;
+ (void)_removeVestigialCloudKitSupportDirectory:(id)directory;
+ (void)moveRecordingsDirectoryIfNeeded;
+ (void)removeDatabaseDirectories;
+ (void)setLocalChangeToken:(id)token;
- (BOOL)_onServiceQueueHasActiveExclusiveSessionForCompositionAVURL:(id)l ignoredAccessSession:(id)session;
- (BOOL)_onServiceQueueHasActiveSessionsForCompositionAVURL:(id)l ignoredAccessSession:(id)session;
- (BOOL)_setupCloudMirroring:(id *)mirroring;
- (BOOL)_shutdownCloudMirroring;
- (BOOL)cloudKitIsEnabled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)willPerformRecoveryForError:(id)error fromContext:(id)context;
- (SavedRecordingService)init;
- (id)_createMetadataForRecordingWithId:(id)id withAssetAtURL:(id)l error:(id *)error;
- (id)_getMetadataFromRecordingWithId:(id)id codecNames:(id)names error:(id *)error;
- (id)_init;
- (id)_onQueue_composedAVURLsWithActiveSessionsOrScheduledWork;
- (id)_serviceErrorForInternalError:(id)error code:(unint64_t)code;
- (id)newBackgroundMirroringModel;
- (void)_addDisabledOrphanCleanupForCompositionAVURL:(id)l xpcConnection:(id)connection completionBlock:(id)block;
- (void)_attemptFinalizationOfCompositionAVURL:(id)l ignoredAccessSession:(id)session completionBlock:(id)block;
- (void)_attemptOrphanedFragmentsCleanupForCompositionAVURL:(id)l ignoredAccessSession:(id)session completionBlock:(id)block;
- (void)_attemptToRunDeferredFinalizationOfCompositionAVURL:(id)l completionBlock:(id)block;
- (void)_checkMobileRestore:(id)restore;
- (void)_createAccountStatusUpdatedMigration:(id)migration;
- (void)_downloadAssets;
- (void)_excludeSupportFilesForDatabaseURL:(id)l;
- (void)_fetchAllAccessTokens:(id)tokens;
- (void)_handleCloudKitContainerEvent:(id)event;
- (void)_handleCloudKitContainerEventChangedNotification:(id)notification;
- (void)_handleDebugSignal;
- (void)_handleDidResetSyncNotification:(id)notification;
- (void)_handleRemoteChangeNotification:(id)notification;
- (void)_handleRemoteChangeNotificationOnServiceQueue:(id)queue;
- (void)_handleTombstoneForRecordingDeleteChange:(id)change;
- (void)_handleTombstoneForRecordingResetDeleteChange:(id)change;
- (void)_handleWillResetSyncNotification:(id)notification;
- (void)_handleXPCDisconnect:(id)disconnect;
- (void)_handleiCloudAvailabilityChanged;
- (void)_initWithContainer:(id)container recordingsExist:(BOOL)exist;
- (void)_initializeCloudKitPushNotifications;
- (void)_initiateImplicitEncryptedTitleMigration;
- (void)_notifyEncryptedFieldsMigrationStatusKnown:(BOOL)known;
- (void)_onQueueCloseAccessSession:(id)session normalTermination:(BOOL)termination completionBlock:(id)block;
- (void)_onQueuePerformOrphanHandlingIfEnabled;
- (void)_onServiceQueueAttemptToRunningDeferredWorkAfterClosingSession:(id)session;
- (void)_onServiceQueueOpenAccessSessionNamed:(id)named compositionAVURL:(id)l accessIntent:(int64_t)intent xpcConnection:(id)connection accessSessionHandler:(id)handler;
- (void)_performDeferredSetup;
- (void)_performEncryptedTitleMigrationIfNeeded;
- (void)_performOnServiceQueue:(id)queue;
- (void)_performOnServiceQueueWithBackgroundModel:(id)model;
- (void)_performSetupRequiringMobileRestoreCompletion;
- (void)_processImportChange:(id)change model:(id)model;
- (void)_processImportRecordingChange:(id)change model:(id)model;
- (void)_processImportTransaction:(id)transaction model:(id)model;
- (void)_processLocalRecordingChange:(id)change model:(id)model;
- (void)_processLocalTransaction:(id)transaction model:(id)model;
- (void)_processResetTransaction:(id)transaction model:(id)model;
- (void)_processSpotlightTransaction:(id)transaction changes:(id)changes;
- (void)_recreateAudioFuturesIfNeeded:(id)needed;
- (void)_registerForCloudKitContainerEventsForMirroringStore:(id)store;
- (void)_registerForVoxInitiatedMigrationNotificationName;
- (void)_removeDisabledOrphanCleanupAVURLsForConnection:(id)connection;
- (void)_removeDisabledOrphanCleanupForCompositionAVURL:(id)l xpcConnection:(id)connection;
- (void)_resetEncryptedFieldsMigrationState;
- (void)_setupSignalHandlers;
- (void)_stopMonitoringDemoMovieIfNeeded;
- (void)_tearDownSignalHandlers;
- (void)_unregisterForCloudKitContainerEventsForMirroringStore:(id)store;
- (void)_updateMigrationStatusIfNeeded;
- (void)_updateNilTitlesWithLocalTitles:(id)titles;
- (void)_validateOnFirstImport:(id)import;
- (void)_validateUpdate:(id)update;
- (void)_wipeCloudKitCaches;
- (void)assetAccessSessionController:(id)controller sessionDidChangedFromActiveSessions:(id)sessions toActiveSessions:(id)activeSessions;
- (void)clearAndReloadSearchMetadataWithCompletionBlock:(id)block;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)dealloc;
- (void)disableOrphanedFragmentCleanupForCompositionAVURL:(id)l completionBlock:(id)block;
- (void)enableCloudRecordingsWithCompletionBlock:(id)block;
- (void)enableOrphanHandlingWithCompletionBlock:(id)block;
- (void)enableOrphanedFragmentCleanupForCompositionAVURL:(id)l;
- (void)endAccessSessionWithToken:(id)token completionBlock:(id)block;
- (void)exportRecordingsToCloud:(id)cloud;
- (void)expungeRecordingsFromCloud:(id)cloud;
- (void)fetchCompositionAVURLsBeingExported:(id)exported;
- (void)fetchCompositionAVURLsBeingModified:(id)modified;
- (void)fetchMetadataForRecordingWithUUID:(id)d completionBlock:(id)block;
- (void)fetchRecordingUUIDsForExport:(id)export;
- (void)importRecordingWithSourceAudioURL:(id)l name:(id)name date:(id)date userInfo:(id)info importCompletionBlock:(id)block;
- (void)importRecordingsFromCloud:(id)cloud;
- (void)performLocalEncryptedTitleMigrationIfNeeded:(id)needed;
- (void)prepareToCaptureToCompositionAVURL:(id)l accessRequestHandler:(id)handler;
- (void)prepareToExportCompositionAVURL:(id)l accessRequestHandler:(id)handler;
- (void)prepareToPreviewCompositionAVURL:(id)l accessRequestHandler:(id)handler;
- (void)prepareToTrimCompositionAVURL:(id)l accessRequestHandler:(id)handler;
- (void)reconcileMigrationStates;
- (void)reloadExistingSearchMetadataWithCompletionBlock:(id)block;
- (void)removeAllUserDataWithCompletion:(id)completion;
- (void)sizeOfRecordingsForExport:(id)export;
- (void)start;
- (void)updateSearchMetadataWithRecordingURIsToInsert:(id)insert recordingURIsToUpdate:(id)update recordingURIsToDelete:(id)delete completionBlock:(id)block;
- (void)valueForServiceKey:(id)key completion:(id)completion;
@end

@implementation SavedRecordingService

- (void)_handleiCloudAvailabilityChanged
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001E0C;
  v2[3] = &unk_1000556F0;
  v2[4] = self;
  [(SavedRecordingService *)self _performOnServiceQueue:v2];
}

- (BOOL)cloudKitIsEnabled
{
  if (+[MobileRestoreObserver setupAssistantNeedsToRun])
  {
    LOBYTE(cloudSyncIsAvailable) = 0;
  }

  else
  {
    cloudSyncIsAvailable = [(RCCloudSyncAccessManager *)self->_cloudSyncAccessManager cloudSyncIsAvailable];
    if (cloudSyncIsAvailable)
    {
      LOBYTE(cloudSyncIsAvailable) = [(RCCloudSyncAccessManager *)self->_cloudSyncAccessManager tccCloudAccess]== 2;
    }
  }

  return cloudSyncIsAvailable;
}

+ (id)sharedInstance
{
  if (qword_10005CD28[0] != -1)
  {
    sub_100035C74();
  }

  v3 = qword_10005CD20;

  return v3;
}

- (SavedRecordingService)init
{
  [NSException raise:NSGenericException format:@"-init is invalid. Use +sharedInstance instead."];

  return 0;
}

- (id)_init
{
  v30.receiver = self;
  v30.super_class = SavedRecordingService;
  v2 = [(SavedRecordingService *)&v30 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.voicememod.SavedRecordingService.InstanceSerialQueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = dispatch_queue_create("com.apple.voicememod.SavedRecordingService.OperationSerialQueue", 0);
    serviceSerialQueue = v2->_serviceSerialQueue;
    v2->_serviceSerialQueue = v5;

    v7 = objc_opt_new();
    serviceOperationQueue = v2->_serviceOperationQueue;
    v2->_serviceOperationQueue = v7;

    [(NSOperationQueue *)v2->_serviceOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_serviceOperationQueue setUnderlyingQueue:v2->_serviceSerialQueue];
    v9 = objc_opt_new();
    scheduler = v2->_scheduler;
    v2->_scheduler = v9;

    [(RCBlockScheduler *)v2->_scheduler setQueue:v2->_serviceSerialQueue];
    [(RCBlockScheduler *)v2->_scheduler setInterval:4.0];
    [(RCBlockScheduler *)v2->_scheduler resume];
    v11 = objc_opt_new();
    closingSessions = v2->_closingSessions;
    v2->_closingSessions = v11;

    v13 = objc_opt_new();
    compositionAVURLsToFinalize = v2->_compositionAVURLsToFinalize;
    v2->_compositionAVURLsToFinalize = v13;

    v15 = objc_opt_new();
    compositionAVURLsDeferredAccessRequestBlocksByAVURL = v2->_compositionAVURLsDeferredAccessRequestBlocksByAVURL;
    v2->_compositionAVURLsDeferredAccessRequestBlocksByAVURL = v15;

    v17 = objc_opt_new();
    disabledOrphanedFragmentCleanupByCompositionAVURL = v2->_disabledOrphanedFragmentCleanupByCompositionAVURL;
    v2->_disabledOrphanedFragmentCleanupByCompositionAVURL = v17;

    v19 = objc_opt_new();
    compositionAVURLsBeingExported = v2->_compositionAVURLsBeingExported;
    v2->_compositionAVURLsBeingExported = v19;

    v21 = objc_alloc_init(AssetAccessSessionController);
    assetSessionController = v2->_assetSessionController;
    v2->_assetSessionController = v21;

    [(AssetAccessSessionController *)v2->_assetSessionController setDelegate:v2];
    v23 = objc_alloc_init(AssetExportController);
    assetExportController = v2->_assetExportController;
    v2->_assetExportController = v23;

    [(AssetExportController *)v2->_assetExportController setCompletionQueue:v2->_serviceSerialQueue];
    v2->_encryptedFieldsStatus = 0;
    notify_register_check([RCMigrationReadyNotificationName UTF8String], &v2->_migrationReadyNotificationToken);
    notify_set_state(v2->_migrationReadyNotificationToken, 0);
    [(SavedRecordingService *)v2 _setupSignalHandlers];
    [(SavedRecordingService *)v2 _startMonitoringDemoMovieIfNeeded];
    v25 = objc_opt_class();
    v26 = RCRecordingsDirectoryURL();
    [v25 _removeVestigialCloudKitSupportDirectory:v26];

    [(SavedRecordingService *)v2 _registerForVoxInitiatedMigrationNotificationName];
    v27 = [NSSet setWithObjects:RCCloudRecording_EncryptedTitle, RCCloudRecording_CustomLabel, 0];
    titlePropertyNames = v2->_titlePropertyNames;
    v2->_titlePropertyNames = v27;
  }

  return v2;
}

- (void)dealloc
{
  [(SavedRecordingService *)self _tearDownSignalHandlers];
  [(NSXPCListener *)self->_xpcListener invalidate];
  [(NSXPCListener *)self->_xpcListener suspend];
  [(NSXPCListener *)self->_xpcListener setDelegate:0];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  v4.receiver = self;
  v4.super_class = SavedRecordingService;
  [(SavedRecordingService *)&v4 dealloc];
}

+ (NSPersistentHistoryToken)localChangeToken
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dataForKey:@"RCSavedRecordingsChangeToken"];

  if (v3)
  {
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)setLocalChangeToken:(id)token
{
  if (token)
  {
    v3 = [NSKeyedArchiver archivedDataWithRootObject:token requiringSecureCoding:1 error:0];
    if (!v3)
    {
      goto LABEL_6;
    }

    v5 = v3;
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setObject:v5 forKey:@"RCSavedRecordingsChangeToken"];
  }

  else
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 removeObjectForKey:@"RCSavedRecordingsChangeToken"];
  }

  v3 = v5;
LABEL_6:
}

+ (BOOL)reloadStockRecordings
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"RCReloadStockRecordings"];

  return v3;
}

- (void)importRecordingWithSourceAudioURL:(id)l name:(id)name date:(id)date userInfo:(id)info importCompletionBlock:(id)block
{
  nameCopy = name;
  dateCopy = date;
  infoCopy = info;
  blockCopy = block;
  v15 = [l url];
  v16 = OSLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100035C88();
  }

  if (v15)
  {
    v17 = +[RCServiceContainer sharedContainer];
    newBackgroundModel = [v17 newBackgroundModel];
    v19 = +[NSXPCConnection currentConnection];
    [newBackgroundModel importRecordingWithSourceAudioURL:v15 name:nameCopy date:dateCopy xpcConnection:v19 userInfo:infoCopy completionHandler:blockCopy];
  }

  else
  {
    v17 = [NSError errorWithDomain:RCSSavedRecordingServiceErrorDomain code:101 userInfo:0];
    blockCopy[2](blockCopy, 0, v17);
  }
}

- (void)enableCloudRecordingsWithCompletionBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001208C;
  v4[3] = &unk_1000551C0;
  selfCopy = self;
  blockCopy = block;
  v3 = blockCopy;
  [(SavedRecordingService *)selfCopy _performOnServiceQueue:v4];
}

- (id)_serviceErrorForInternalError:(id)error code:(unint64_t)code
{
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:NSDebugDescriptionErrorKey];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v6 description];
    }

    v12 = v10;

    v13 = RCSSavedRecordingServiceErrorDomain;
    v16 = NSDebugDescriptionErrorKey;
    v17 = v12;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [NSError errorWithDomain:v13 code:code userInfo:v14];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)importRecordingsFromCloud:(id)cloud
{
  cloudCopy = cloud;
  mirroringContainer = self->_mirroringContainer;
  if (mirroringContainer)
  {
    v6 = mirroringContainer;
    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[SavedRecordingService importRecordingsFromCloud:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s -- Import began", buf, 0xCu);
    }

    newBackgroundModel = [(RCMirroringContainer *)v6 newBackgroundModel];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100012554;
    v12[3] = &unk_100055B88;
    v12[4] = self;
    v13 = cloudCopy;
    [newBackgroundModel importFromCloudForStore:0 completionHandler:v12];
  }

  else
  {
    v9 = RCSSavedRecordingServiceErrorDomain;
    v16 = NSDebugDescriptionErrorKey;
    v17 = @"Import failed because iCloud is disabled.";
    v10 = 0;
    v6 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [NSError errorWithDomain:v9 code:402 userInfo:v6];
    (*(cloudCopy + 2))(cloudCopy, 0, v11);
  }
}

- (void)exportRecordingsToCloud:(id)cloud
{
  cloudCopy = cloud;
  mirroringContainer = self->_mirroringContainer;
  if (mirroringContainer)
  {
    v6 = mirroringContainer;
    newBackgroundModel = [(RCMirroringContainer *)v6 newBackgroundModel];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100012874;
    v11[3] = &unk_100055B88;
    v11[4] = self;
    v12 = cloudCopy;
    [newBackgroundModel exportToCloudForStore:0 completionHandler:v11];
  }

  else
  {
    v8 = RCSSavedRecordingServiceErrorDomain;
    v13 = NSDebugDescriptionErrorKey;
    v14 = @"Import failed because iCloud is disabled.";
    v9 = 0;
    v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [NSError errorWithDomain:v8 code:401 userInfo:v6];
    (*(cloudCopy + 2))(cloudCopy, 0, v10);
  }
}

- (void)fetchRecordingUUIDsForExport:(id)export
{
  exportCopy = export;
  v4 = +[RCServiceContainer sharedContainer];
  newBackgroundModel = [v4 newBackgroundModel];

  v6 = +[RCQueryManager visibleRecordingsFetchRequest];
  v15 = RCCloudRecording_UniqueID;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  [v6 setPropertiesToFetch:v7];

  [v6 setFetchBatchSize:1000];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012B70;
  v11[3] = &unk_100055BB0;
  v12 = newBackgroundModel;
  v13 = v6;
  v14 = exportCopy;
  v8 = exportCopy;
  v9 = v6;
  v10 = newBackgroundModel;
  [v10 performBlockAndWait:v11];
}

- (void)fetchMetadataForRecordingWithUUID:(id)d completionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v8 = +[RCServiceContainer sharedContainer];
  newBackgroundModel = [v8 newBackgroundModel];

  v10 = [RCQueryManager recordingsWithUniqueIDFetchRequest:dCopy];
  v20 = RCCloudRecording_FileName;
  v11 = [NSArray arrayWithObjects:&v20 count:1];
  [v10 setPropertiesToFetch:v11];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100012EC8;
  v15[3] = &unk_100055BD8;
  v16 = newBackgroundModel;
  v17 = dCopy;
  selfCopy = self;
  v19 = blockCopy;
  v12 = blockCopy;
  v13 = dCopy;
  v14 = newBackgroundModel;
  [v14 performBlockAndWait:v15];
}

- (void)sizeOfRecordingsForExport:(id)export
{
  exportCopy = export;
  v3 = RCRecordingsDirectoryURL();
  path = [v3 path];

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 enumeratorAtPath:path];
  v7 = [NSSet setWithObjects:RCAudioFileExtensionM4A, RCAudioFileExtensionQT, RCAudioFileExtensionQTA, 0];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v6;
  v28 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
  v9 = 0;
  if (!v28)
  {
    v27 = 0;
    goto LABEL_20;
  }

  v27 = 0;
  v10 = *v31;
  v26 = v8;
  do
  {
    v11 = 0;
    do
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = [path stringByAppendingPathComponent:*(*(&v30 + 1) + 8 * v11)];
      pathExtension = [v12 pathExtension];
      v14 = [v7 containsObject:pathExtension];

      if (v14)
      {
        v29 = v9;
        v15 = [v5 attributesOfItemAtPath:v12 error:&v29];
        v16 = v29;

        if (v16)
        {
          v17 = OSLogForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v35 = "[SavedRecordingService sizeOfRecordingsForExport:]";
            v36 = 2112;
            v37 = v12;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s -- Failed to get attributes for file at path %@", buf, 0x16u);
          }

LABEL_12:
        }

        else
        {
          v18 = v7;
          v19 = path;
          v20 = v5;
          v21 = [v15 objectForKeyedSubscript:NSFileType];
          v22 = [v21 isEqualToString:NSFileTypeRegular];

          if (v22)
          {
            v17 = [v15 objectForKeyedSubscript:NSFileSize];
            v27 += [v17 unsignedLongLongValue];
            v5 = v20;
            path = v19;
            v7 = v18;
            v8 = v26;
            goto LABEL_12;
          }

          v5 = v20;
          path = v19;
          v7 = v18;
          v8 = v26;
        }

        v9 = v16;
      }

      v11 = v11 + 1;
    }

    while (v28 != v11);
    v23 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
    v28 = v23;
  }

  while (v23);
LABEL_20:

  v24 = [NSNumber numberWithUnsignedLongLong:v27];
  exportCopy[2](exportCopy, v24, v9);
}

- (id)_createMetadataForRecordingWithId:(id)id withAssetAtURL:(id)l error:(id *)error
{
  idCopy = id;
  lCopy = l;
  [lCopy fileSystemRepresentation];
  v10 = sandbox_extension_issue_file();
  if (v10)
  {
    v11 = [NSData dataWithBytesNoCopy:v10 length:strlen(v10) + 1 freeWhenDone:1];
    v12 = [[NSSecurityScopedURLWrapper alloc] initWithURL:lCopy readonly:1 scope:v11];
    v13 = [AVAsset assetWithURL:lCopy];
    rc_allCodecNames = [v13 rc_allCodecNames];
    v15 = [(SavedRecordingService *)self _getMetadataFromRecordingWithId:idCopy codecNames:rc_allCodecNames error:error];
    v16 = v15;
    if (v15)
    {
      [v15 setWrappedURL:v12];
    }
  }

  else
  {
    v17 = [NSString stringWithFormat:@"Failed to create metadata: could not fget sandbox token"];
    v18 = v17;
    if (error)
    {
      v19 = RCVoiceMemosErrorDomain;
      v22 = NSDebugDescriptionErrorKey;
      v23 = v17;
      v20 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      *error = [NSError errorWithDomain:v19 code:1 userInfo:v20];
    }

    v16 = 0;
  }

  return v16;
}

- (id)_getMetadataFromRecordingWithId:(id)id codecNames:(id)names error:(id *)error
{
  idCopy = id;
  namesCopy = names;
  v9 = +[RCServiceContainer sharedContainer];
  newBackgroundModel = [v9 newBackgroundModel];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100001DCC;
  v33 = sub_100013984;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100001DCC;
  v27 = sub_100013984;
  v28 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001398C;
  v17[3] = &unk_100055C00;
  v11 = newBackgroundModel;
  v18 = v11;
  v12 = idCopy;
  v19 = v12;
  v21 = &v23;
  v22 = &v29;
  v13 = namesCopy;
  v20 = v13;
  [v11 performBlockAndWait:v17];
  v14 = v30[5];
  if (error && !v14)
  {
    *error = v24[5];
    v14 = v30[5];
  }

  v15 = v14;

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (void)expungeRecordingsFromCloud:(id)cloud
{
  cloudCopy = cloud;
  mirroringContainer = self->_mirroringContainer;
  if (mirroringContainer)
  {
    v6 = mirroringContainer;
    newBackgroundModel = [(RCMirroringContainer *)v6 newBackgroundModel];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100013C64;
    v11[3] = &unk_100055B88;
    v11[4] = self;
    v12 = cloudCopy;
    [newBackgroundModel resetCloudForStore:0 completionHandler:v11];
  }

  else
  {
    v8 = RCSSavedRecordingServiceErrorDomain;
    v13 = NSDebugDescriptionErrorKey;
    v14 = @"Import failed because iCloud is disabled.";
    v9 = 0;
    v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [NSError errorWithDomain:v8 code:403 userInfo:v6];
    (*(cloudCopy + 2))(cloudCopy, 0, v10);
  }
}

- (void)prepareToCaptureToCompositionAVURL:(id)l accessRequestHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = OSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100035EF4(lCopy);
  }

  if (handlerCopy)
  {
    if (lCopy)
    {
      v9 = +[NSXPCConnection currentConnection];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100013F00;
      v12[3] = &unk_100055C50;
      v12[4] = self;
      v13 = lCopy;
      v14 = v9;
      v15 = handlerCopy;
      v10 = v9;
      [(SavedRecordingService *)self _performOnServiceQueue:v12];
    }

    else
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100035F8C();
      }

      v10 = [NSError errorWithDomain:RCSSavedRecordingServiceErrorDomain code:101 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v10);
    }
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100036048();
    }
  }
}

- (void)prepareToPreviewCompositionAVURL:(id)l accessRequestHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = OSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100036104(lCopy);
  }

  if (handlerCopy)
  {
    if (lCopy)
    {
      v9 = +[NSXPCConnection currentConnection];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100014208;
      v12[3] = &unk_100055C50;
      v12[4] = self;
      v13 = lCopy;
      v14 = v9;
      v15 = handlerCopy;
      v10 = v9;
      [(SavedRecordingService *)self _performOnServiceQueue:v12];
    }

    else
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10003619C();
      }

      v10 = [NSError errorWithDomain:RCSSavedRecordingServiceErrorDomain code:101 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v10);
    }
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100036258();
    }
  }
}

- (void)prepareToExportCompositionAVURL:(id)l accessRequestHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = OSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100036314(lCopy);
  }

  if (handlerCopy)
  {
    if (lCopy)
    {
      v9 = +[NSXPCConnection currentConnection];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100014510;
      v12[3] = &unk_100055C50;
      v12[4] = self;
      v13 = lCopy;
      v14 = v9;
      v15 = handlerCopy;
      v10 = v9;
      [(SavedRecordingService *)self _performOnServiceQueue:v12];
    }

    else
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000363AC();
      }

      v10 = [NSError errorWithDomain:RCSSavedRecordingServiceErrorDomain code:101 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v10);
    }
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100036468();
    }
  }
}

- (void)prepareToTrimCompositionAVURL:(id)l accessRequestHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = OSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100036524(lCopy);
  }

  if (handlerCopy)
  {
    if (lCopy)
    {
      v9 = +[NSXPCConnection currentConnection];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100014A58;
      v12[3] = &unk_100055C50;
      v12[4] = self;
      v13 = lCopy;
      v14 = v9;
      v15 = handlerCopy;
      v10 = v9;
      [(SavedRecordingService *)self _performOnServiceQueue:v12];
    }

    else
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000365BC();
      }

      v10 = [NSError errorWithDomain:RCSSavedRecordingServiceErrorDomain code:101 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v10);
    }
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100036678();
    }
  }
}

+ (void)moveRecordingsDirectoryIfNeeded
{
  v3 = RCLegacyRecordingsDirectoryURL();
  [self _moveLegacyRecordings:v3];

  v4 = RCLibraryRecordingsDirectoryURL();
  [self _moveLegacyRecordings:v4];
}

+ (void)_moveLegacyRecordings:(id)recordings
{
  recordingsCopy = recordings;
  v5 = RCRecordingsDirectoryURL();
  if (([v5 isEqual:recordingsCopy] & 1) == 0)
  {
    [self _removeVestigialCloudKitSupportDirectory:recordingsCopy];
    v6 = RCCloudRecordingsDatabaseFileName;
    v7 = [v5 URLByAppendingPathComponent:RCCloudRecordingsDatabaseFileName];
    v8 = [v7 checkResourceIsReachableAndReturnError:0];
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100036734(v5);
    }

    v10 = [recordingsCopy URLByAppendingPathComponent:v6];
    v11 = [v10 checkResourceIsReachableAndReturnError:0];
    v12 = OSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000367E8(recordingsCopy);
    }

    v43 = +[NSFileManager defaultManager];
    if (!(v8 & 1 | ((v11 & 1) == 0)))
    {
      [v43 removeItemAtURL:v5 error:0];
      v13 = OSLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v57 = "+[SavedRecordingService _moveLegacyRecordings:]";
        v58 = 2112;
        v59 = recordingsCopy;
        v60 = 2112;
        v61 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s -- Migrating recordings directory from %@ to %@", buf, 0x20u);
      }

      v54 = 0;
      v14 = [v43 moveItemAtURL:recordingsCopy toURL:v5 error:&v54];
      v15 = v54;
      if ((v14 & 1) == 0)
      {
        [NSException raise:NSGenericException format:@"SavedRecordingService _moveLegacyRecordings failed - error = %@", v15];
      }

      v16 = OSLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v57 = "+[SavedRecordingService _moveLegacyRecordings:]";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s -- Recordings directory migration complete", buf, 0xCu);
      }
    }

    if (([recordingsCopy checkResourceIsReachableAndReturnError:0] & v8) != 1)
    {
      goto LABEL_54;
    }

    v53 = 0;
    v17 = [v43 contentsOfDirectoryAtURL:recordingsCopy includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v53];
    v18 = v53;
    if (!v17)
    {
      v41 = OSLogForCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
      {
        sub_100036A18();
      }

      goto LABEL_52;
    }

    if ([v17 count])
    {
      v42 = v5;
      v38 = v10;
      v39 = recordingsCopy;
      v41 = objc_opt_new();
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v37 = v17;
      obj = v17;
      v19 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (v19)
      {
        v20 = v19;
        v40 = 0;
        v21 = *v50;
        do
        {
          v22 = 0;
          v44 = v20;
          do
          {
            if (*v50 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v49 + 1) + 8 * v22);
            lastPathComponent = [v23 lastPathComponent];
            pathExtension = [lastPathComponent pathExtension];
            v26 = [RCCaptureFormat supportsFileExtension:pathExtension];

            if (v26)
            {
              v27 = +[NSUUID UUID];
              uUIDString = [v27 UUIDString];
              pathExtension2 = [lastPathComponent pathExtension];
              v30 = [uUIDString stringByAppendingPathExtension:pathExtension2];

              v31 = [v42 URLByAppendingPathComponent:v30];
              v48 = v18;
              LODWORD(pathExtension2) = [v43 moveItemAtURL:v23 toURL:v31 error:&v48];
              v32 = v48;

              v33 = OSLogForCategory();
              v34 = v33;
              if (pathExtension2)
              {
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  v57 = "+[SavedRecordingService _moveLegacyRecordings:]";
                  v58 = 2112;
                  v59 = lastPathComponent;
                  _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%s -- Moving %@ from legacy to destination Recordings", buf, 0x16u);
                }

                [v41 addObject:v23];
              }

              else
              {
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v57 = "+[SavedRecordingService _moveLegacyRecordings:]";
                  v58 = 2112;
                  v59 = lastPathComponent;
                  v60 = 2112;
                  v61 = v32;
                  _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s -- Failed to move %@ from legacy to destination Recordings - error = %@", buf, 0x20u);
                }

                v40 = 1;
              }

              v20 = v44;

              v18 = v32;
            }

            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
        }

        while (v20);
      }

      else
      {
        v40 = 0;
      }

      recordingsCopy = v39;
      v5 = v42;
      if ([v41 count])
      {
        v35 = OSLogForCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          sub_10003689C();
        }
      }

      v10 = v38;
      if (v40)
      {
        v36 = OSLogForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          sub_100036998();
        }

LABEL_51:
        v17 = v37;

        goto LABEL_52;
      }

      v47 = 0;
      if (([v43 removeItemAtURL:v39 error:&v47] & 1) == 0)
      {
        v36 = OSLogForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          sub_100036918();
        }

        goto LABEL_51;
      }

      v17 = v37;
    }

    else
    {
      v46 = 0;
      if ([v43 removeItemAtURL:recordingsCopy error:&v46])
      {
LABEL_53:

LABEL_54:
        goto LABEL_55;
      }

      v41 = OSLogForCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
      {
        sub_100036918();
      }
    }

LABEL_52:

    goto LABEL_53;
  }

LABEL_55:
}

+ (void)removeDatabaseDirectories
{
  v2 = RCRecordingsDirectoryURL();
  v3 = +[NSFileManager defaultManager];
  v7 = 0;
  v4 = [v3 rc_moveToTempAndMarkAsPurgeable:v2 error:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100036A94();
    }
  }
}

- (void)removeAllUserDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = self->_assetSessionController;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015470;
  v8[3] = &unk_100055BB0;
  v9 = v5;
  selfCopy = self;
  v11 = completionCopy;
  v6 = completionCopy;
  v7 = v5;
  [(SavedRecordingService *)self _performOnServiceQueue:v8];
}

- (void)endAccessSessionWithToken:(id)token completionBlock:(id)block
{
  tokenCopy = token;
  blockCopy = block;
  v8 = OSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100036B10();
  }

  if (tokenCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100015818;
    v10[3] = &unk_100055BB0;
    v10[4] = self;
    v11 = tokenCopy;
    v12 = blockCopy;
    [(SavedRecordingService *)self _performOnServiceQueue:v10];
  }

  else
  {
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100036B8C();
    }
  }
}

- (void)disableOrphanedFragmentCleanupForCompositionAVURL:(id)l completionBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  +[NSXPCConnection currentConnection];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015A20;
  v11[3] = &unk_100055C50;
  v11[4] = self;
  v13 = v12 = lCopy;
  v14 = blockCopy;
  v8 = blockCopy;
  v9 = v13;
  v10 = lCopy;
  [(SavedRecordingService *)self _performOnServiceQueue:v11];
}

- (void)enableOrphanedFragmentCleanupForCompositionAVURL:(id)l
{
  lCopy = l;
  +[NSXPCConnection currentConnection];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100015AF8;
  v7[3] = &unk_1000556A0;
  v7[4] = self;
  v9 = v8 = lCopy;
  v5 = v9;
  v6 = lCopy;
  [(SavedRecordingService *)self _performOnServiceQueue:v7];
}

- (void)_onQueuePerformOrphanHandlingIfEnabled
{
  v3 = +[RCServiceContainer sharedContainer];
  newBackgroundModel = [v3 newBackgroundModel];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100001DCC;
  v28 = sub_100013984;
  v29 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100015F24;
  v21[3] = &unk_1000552B0;
  v21[4] = self;
  v23 = &v24;
  v22 = newBackgroundModel;
  v14 = v22;
  [v22 performBlockAndWait:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v25[5];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v36 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(AssetAccessSessionController *)self->_assetSessionController activeSessionsWithWithCompositionAVURL:v9];
        if ([v10 count])
        {
          v11 = OSLogForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 count]);
            *buf = 136315650;
            v31 = "[SavedRecordingService _onQueuePerformOrphanHandlingIfEnabled]";
            v32 = 2112;
            v33 = v9;
            v34 = 2112;
            v35 = v13;
            _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s -- Skipping finalization of %@ due to %@ active sessions", buf, 0x20u);
          }
        }

        else
        {
          v12 = OSLogForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v31 = "[SavedRecordingService _onQueuePerformOrphanHandlingIfEnabled]";
            v32 = 2112;
            v33 = v9;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s -- Attempting deferred finalization of %@", buf, 0x16u);
          }

          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_1000160B0;
          v16[3] = &unk_100055CF0;
          v16[4] = v9;
          [(SavedRecordingService *)self _attemptToRunDeferredFinalizationOfCompositionAVURL:v9 completionBlock:v16];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v36 count:16];
    }

    while (v6);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000161B4;
  v15[3] = &unk_1000556F0;
  v15[4] = self;
  [(SavedRecordingService *)self _performOnServiceQueue:v15];

  _Block_object_dispose(&v24, 8);
}

- (void)enableOrphanHandlingWithCompletionBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016258;
  v4[3] = &unk_100055D40;
  v4[4] = self;
  blockCopy = block;
  v3 = blockCopy;
  [_TtC10voicememod27InitialCaptureOrphanHandler handleOrphanedInitalCapturesWithCompletionHandler:v4];
}

- (void)fetchCompositionAVURLsBeingExported:(id)exported
{
  exportedCopy = exported;
  v5 = exportedCopy;
  if (exportedCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100016440;
    v6[3] = &unk_1000551C0;
    v6[4] = self;
    v7 = exportedCopy;
    [(SavedRecordingService *)self _performOnServiceQueue:v6];
  }
}

- (void)fetchCompositionAVURLsBeingModified:(id)modified
{
  modifiedCopy = modified;
  v5 = modifiedCopy;
  if (modifiedCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100016628;
    v6[3] = &unk_1000551C0;
    v6[4] = self;
    v7 = modifiedCopy;
    [(SavedRecordingService *)self _performOnServiceQueue:v6];
  }
}

- (void)_fetchAllAccessTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = tokensCopy;
  if (tokensCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000168CC;
    v6[3] = &unk_1000551C0;
    v6[4] = self;
    v7 = tokensCopy;
    [(SavedRecordingService *)self _performOnServiceQueue:v6];
  }
}

- (void)reloadExistingSearchMetadataWithCompletionBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016B40;
  v4[3] = &unk_1000551C0;
  selfCopy = self;
  blockCopy = block;
  v3 = blockCopy;
  [(SavedRecordingService *)selfCopy _performOnServiceQueue:v4];
}

- (void)clearAndReloadSearchMetadataWithCompletionBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016C7C;
  v4[3] = &unk_1000551C0;
  selfCopy = self;
  blockCopy = block;
  v3 = blockCopy;
  [(SavedRecordingService *)selfCopy _performOnServiceQueue:v4];
}

- (void)updateSearchMetadataWithRecordingURIsToInsert:(id)insert recordingURIsToUpdate:(id)update recordingURIsToDelete:(id)delete completionBlock:(id)block
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100016E30;
  v13[3] = &unk_100055D68;
  selfCopy = self;
  insertCopy = insert;
  updateCopy = update;
  deleteCopy = delete;
  blockCopy = block;
  v9 = blockCopy;
  v10 = deleteCopy;
  v11 = updateCopy;
  v12 = insertCopy;
  [(SavedRecordingService *)selfCopy _performOnServiceQueue:v13];
}

- (BOOL)willPerformRecoveryForError:(id)error fromContext:(id)context
{
  errorCopy = error;
  contextCopy = context;
  v7 = OSLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100036CC4();
  }

  return 0;
}

- (void)assetAccessSessionController:(id)controller sessionDidChangedFromActiveSessions:(id)sessions toActiveSessions:(id)activeSessions
{
  activeSessionsCopy = activeSessions;
  v7 = +[NSMutableSet set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = activeSessionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        accessToken = [v13 accessToken];
        accessIntent = [accessToken accessIntent];

        if (accessIntent == 3)
        {
          accessToken2 = [v13 accessToken];
          compositionAVURL = [accessToken2 compositionAVURL];
          [v7 addObject:compositionAVURL];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  if ([RCComposition _markCompositionAVURLsBeingModified:v7])
  {
    notify_post([RCSavedRecordingServiceDidChangeCompositionAVURLsBeingModifiedDistributedNotification UTF8String]);
    v18 = [v7 count];
    scheduler = self->_scheduler;
    if (v18)
    {
      [(RCBlockScheduler *)scheduler suspend];
    }

    else
    {
      [(RCBlockScheduler *)scheduler resume];
    }
  }
}

- (void)_processImportTransaction:(id)transaction model:(id)model
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000171F4;
  v8[3] = &unk_1000556A0;
  transactionCopy = transaction;
  selfCopy = self;
  modelCopy = model;
  v6 = modelCopy;
  v7 = transactionCopy;
  [v6 performWithSavingDisabled:v8];
  [v6 saveIfNecessary];
}

- (void)_processImportChange:(id)change model:(id)model
{
  changeCopy = change;
  modelCopy = model;
  changedObjectID = [changeCopy changedObjectID];
  entity = [changedObjectID entity];
  name = [entity name];

  if ([name isEqualToString:RCCloudRecording_EntityName])
  {
    [(SavedRecordingService *)self _processImportRecordingChange:changeCopy model:modelCopy];
  }

  else if ([name isEqualToString:RCRecordingFolder_EntityName])
  {
    [modelCopy reconcileChangedFolder:changedObjectID change:changeCopy];
  }

  else if ([name isEqualToString:RCMigration_EntityName])
  {
    [(SavedRecordingService *)self reconcileMigrationStates];
  }
}

- (void)_validateUpdate:(id)update
{
  v3 = RCCloudRecording_VersionedAudioFuture;
  updateCopy = update;
  v5 = [updateCopy containsObject:v3];
  v6 = [updateCopy containsObject:RCCloudRecording_AudioFutureFlags];

  if (v5 != v6)
  {
    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100036D40(v5, v6, v7);
    }
  }
}

- (void)_processImportRecordingChange:(id)change model:(id)model
{
  changeCopy = change;
  modelCopy = model;
  changeType = [changeCopy changeType];
  if (!changeType)
  {
    goto LABEL_6;
  }

  if (changeType == 2)
  {
    tombstone = [changeCopy tombstone];
    [(SavedRecordingService *)self _handleTombstoneForRecordingDeleteChange:tombstone];
LABEL_12:

    goto LABEL_13;
  }

  if (changeType != 1)
  {
    goto LABEL_13;
  }

  updatedProperties = [changeCopy updatedProperties];
  v9 = [updatedProperties na_map:&stru_100055DA8];

  v10 = RCAudioFuturePropertyNames();
  v11 = [v9 intersectsSet:v10];

  if (v11)
  {
    [(SavedRecordingService *)self _validateUpdate:v9];

LABEL_6:
    changedObjectID = [changeCopy changedObjectID];
    v13 = [modelCopy recordingWithID:changedObjectID];

    if (([v13 recreateAudioFutureIfNecessary] & 1) == 0)
    {
      audioFutureSyncManager = self->_audioFutureSyncManager;
      changedObjectID2 = [changeCopy changedObjectID];
      [(RCAudioFutureSyncManager *)audioFutureSyncManager importAudioFuture:changedObjectID2 mirroringModel:modelCopy];
    }

    goto LABEL_9;
  }

  v18 = [v9 intersectsSet:self->_titlePropertyNames];
  [(SavedRecordingService *)self _validateUpdate:v9];

  if (v18)
  {
LABEL_9:
    if (!self->_encryptedFieldsStatus)
    {
      goto LABEL_13;
    }

    changedObjectID3 = [changeCopy changedObjectID];
    tombstone = [modelCopy recordingWithID:changedObjectID3];

    [tombstone updateForRemoteTitleChange:self->_encryptedFieldsStatus == 1];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_handleTombstoneForRecordingDeleteChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (changeCopy)
  {
    v6 = [changeCopy objectForKeyedSubscript:RCCloudRecording_FileName];
    if (v6)
    {
      v7 = v6;
      v8 = RCRecordingsDirectoryURL();
      v9 = [v8 URLByAppendingPathComponent:v7];

      v10 = [(AssetAccessSessionController *)self->_assetSessionController activeSessionsWithWithCompositionAVURL:v9];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v27;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v10);
            }

            accessToken = [*(*(&v26 + 1) + 8 * i) accessToken];
            accessIntent = [accessToken accessIntent];

            v13 |= (accessIntent & 0xFFFFFFFFFFFFFFFELL) == 2;
          }

          v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v12);
      }

      else
      {
        v13 = 0;
      }

      v18 = +[NSFileManager defaultManager];
      path = [v9 path];
      v20 = [v18 fileExistsAtPath:path];

      if (v20)
      {
        if ((v13 & 1) == 0)
        {
LABEL_14:
          v21 = OSLogForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v31 = "[SavedRecordingService _handleTombstoneForRecordingDeleteChange:]";
            v32 = 2112;
            v33 = v7;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s -- deleted recording '%@'", buf, 0x16u);
          }

          [RCComposition deleteFromFilesystem:v9];
LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
        v22 = [RCComposition compositionLoadedForComposedAVURL:v9 createIfNeeded:0];
        decomposedFragments = [v22 decomposedFragments];
        v24 = [decomposedFragments count] > 1;

        if (((v24 | v13) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v25 = OSLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v31 = "[SavedRecordingService _handleTombstoneForRecordingDeleteChange:]";
        v32 = 2112;
        v33 = v7;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s -- Preserving assets for deleted recording '%@'", buf, 0x16u);
      }

      goto LABEL_21;
    }
  }

LABEL_22:
}

- (void)_handleTombstoneForRecordingResetDeleteChange:(id)change
{
  changeCopy = change;
  v4 = changeCopy;
  if (changeCopy)
  {
    v5 = [changeCopy objectForKeyedSubscript:RCCloudRecording_FileName];
    if (v5)
    {
      v6 = v5;
      v7 = RCRecordingsDirectoryURL();
      v8 = [v7 URLByAppendingPathComponent:v6];

      if ([RCCloudRecording isRecordingExported:v8])
      {
        [RCComposition deleteFromFilesystem:v8];
        v9 = OSLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315394;
          v12 = "[SavedRecordingService _handleTombstoneForRecordingResetDeleteChange:]";
          v13 = 2112;
          v14 = v6;
          v10 = "%s -- deleted recording '%@'";
LABEL_8:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, &v11, 0x16u);
        }
      }

      else
      {
        v9 = OSLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315394;
          v12 = "[SavedRecordingService _handleTombstoneForRecordingResetDeleteChange:]";
          v13 = 2112;
          v14 = v6;
          v10 = "%s -- recording '%@' was preserved (not purgeable)";
          goto LABEL_8;
        }
      }
    }
  }
}

- (void)_processResetTransaction:(id)transaction model:(id)model
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  changes = [transaction changes];
  v5 = [changes countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = RCCloudRecording_EntityName;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(changes);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        changedObjectID = [v10 changedObjectID];
        entity = [changedObjectID entity];
        name = [entity name];
        v14 = [name isEqualToString:v8];

        changeType = [v10 changeType];
        if (v14)
        {
          v16 = changeType == 2;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          tombstone = [v10 tombstone];
          [(SavedRecordingService *)self _handleTombstoneForRecordingResetDeleteChange:tombstone];
        }
      }

      v6 = [changes countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [(SavedRecordingService *)self _resetEncryptedFieldsMigrationState];
}

- (void)_processLocalTransaction:(id)transaction model:(id)model
{
  transactionCopy = transaction;
  modelCopy = model;
  author = [transactionCopy author];
  v7 = modelCopy;
  context = [modelCopy context];
  transactionAuthor = [context transactionAuthor];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = transactionCopy;
  obj = [transactionCopy changes];
  v9 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v12 = RCCloudRecording_EntityName;
    v31 = RCRecordingFolder_EntityName;
    v28 = RCMigration_EntityName;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        if ([v14 changeType] == 1)
        {
          v15 = OSLogForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            changeID = [v14 changeID];
            updatedProperties = [v14 updatedProperties];
            v26 = [updatedProperties valueForKey:@"name"];
            *buf = 136315906;
            v39 = "[SavedRecordingService _processLocalTransaction:model:]";
            v40 = 2112;
            v41 = author;
            v42 = 2048;
            v43 = changeID;
            v44 = 2112;
            v45 = v26;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s -- author = %@, changedID = %lld, updatedProperties:  %@", buf, 0x2Au);
          }
        }

        changedObjectID = [v14 changedObjectID];
        entity = [changedObjectID entity];
        name = [entity name];
        v19 = [name isEqualToString:v12];

        if (v19)
        {
          [(SavedRecordingService *)self _processLocalRecordingChange:v14 model:v7];
          goto LABEL_20;
        }

        name2 = [entity name];
        if ([name2 isEqualToString:v31])
        {
          v21 = [author isEqualToString:transactionAuthor];

          if ((v21 & 1) == 0)
          {
            [v7 reconcileChangedFolder:changedObjectID change:v14];
            goto LABEL_20;
          }
        }

        else
        {
        }

        name3 = [entity name];
        if ([name3 isEqualToString:v28])
        {
          v23 = [author isEqualToString:transactionAuthor];

          if ((v23 & 1) == 0)
          {
            [(SavedRecordingService *)self reconcileMigrationStates];
          }
        }

        else
        {
        }

LABEL_20:
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v10);
  }
}

- (void)_processLocalRecordingChange:(id)change model:(id)model
{
  changeCopy = change;
  modelCopy = model;
  if ([changeCopy changeType] != 2)
  {
    changedObjectID = [changeCopy changedObjectID];
    v8 = [modelCopy recordingWithID:changedObjectID];
    if (v8)
    {
      if ([changeCopy changeType] == 1)
      {
        updatedProperties = [changeCopy updatedProperties];
        v10 = [updatedProperties na_map:&stru_100055DC8];

        v11 = RCAudioFuturePropertyNames();
        v12 = [v10 intersectsSet:v11];

        v13 = [v10 intersectsSet:self->_titlePropertyNames];
        [(SavedRecordingService *)self _validateUpdate:v10];

        if ((v12 & 1) == 0)
        {
LABEL_10:
          if ((v13 & 1) == 0)
          {
            goto LABEL_15;
          }

LABEL_13:
          encryptedFieldsStatus = self->_encryptedFieldsStatus;
          if (encryptedFieldsStatus)
          {
            [v8 updateForLocalTitleChange:encryptedFieldsStatus == 1];
            [modelCopy saveIfNecessary];
          }

          goto LABEL_15;
        }
      }

      else
      {
        if ([changeCopy changeType])
        {
          goto LABEL_15;
        }

        v13 = 1;
      }

      syncedAudioFuture = [v8 syncedAudioFuture];

      if (syncedAudioFuture)
      {
        [(RCAudioFutureSyncManager *)self->_audioFutureSyncManager markRecordingAsNeedingExport:changedObjectID model:modelCopy];
        goto LABEL_10;
      }

      if (v13)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
  }
}

- (void)_processSpotlightTransaction:(id)transaction changes:(id)changes
{
  changesCopy = changes;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  changes = [transaction changes];
  v7 = [changes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(changes);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = off_100055DE8[[v11 changeType]];
        v13 = [changesCopy objectForKeyedSubscript:v12];
        if (!v13)
        {
          v13 = objc_opt_new();
          [changesCopy setObject:v13 forKeyedSubscript:v12];
        }

        changedObjectID = [v11 changedObjectID];
        uRIRepresentation = [changedObjectID URIRepresentation];
        [v13 addObject:uRIRepresentation];
      }

      v8 = [changes countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)_handleRemoteChangeNotificationOnServiceQueue:(id)queue
{
  userInfo = [queue userInfo];
  v5 = self->_cloudStoreToken;
  if (v5)
  {
    v6 = [userInfo objectForKeyedSubscript:NSPersistentHistoryTokenKey];
    if (v6 && [(NSPersistentHistoryToken *)v5 compareToken:v6 error:0]== 2)
    {
      mirroringContainer = self->_mirroringContainer;
      if (mirroringContainer)
      {
        v8 = mirroringContainer;
      }

      else
      {
        v8 = +[RCServiceContainer sharedContainer];
      }

      v9 = v8;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000184A4;
      v12[3] = &unk_1000559F8;
      v12[4] = self;
      newBackgroundModel = [(RCMirroringContainer *)v8 newBackgroundModel];
      v14 = v5;
      v15 = v9;
      v10 = v9;
      v11 = newBackgroundModel;
      [v11 performBlockAndWait:v12];
    }
  }
}

- (void)_handleRemoteChangeNotification:(id)notification
{
  notificationCopy = notification;
  serviceSerialQueue = self->_serviceSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018884;
  v7[3] = &unk_1000556C8;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(serviceSerialQueue, v7);
}

- (void)_handleWillResetSyncNotification:(id)notification
{
  notificationCopy = notification;
  v4 = OSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100036DD8(notificationCopy);
  }
}

- (void)_handleDidResetSyncNotification:(id)notification
{
  notificationCopy = notification;
  v4 = OSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100036E94(notificationCopy);
  }
}

- (void)_registerForCloudKitContainerEventsForMirroringStore:(id)store
{
  rc_mirroringDelegate = [store rc_mirroringDelegate];
  if (rc_mirroringDelegate)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_handleCloudKitContainerEventChangedNotification:" name:NSPersistentCloudKitContainerEventChangedNotification object:rc_mirroringDelegate];
  }

  else
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100036F50();
    }
  }
}

- (void)_unregisterForCloudKitContainerEventsForMirroringStore:(id)store
{
  rc_mirroringDelegate = [store rc_mirroringDelegate];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:NSPersistentCloudKitContainerEventChangedNotification object:rc_mirroringDelegate];
}

- (void)_handleCloudKitContainerEventChangedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:NSPersistentCloudKitContainerEventUserInfoKey];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SavedRecordingService *)self _handleCloudKitContainerEvent:v5];
    }
  }
}

- (void)_handleCloudKitContainerEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (!self->_firstImportComplete && [eventCopy type] == 1)
  {
    if ([v5 succeeded])
    {
      endDate = [v5 endDate];

      if (endDate)
      {
        self->_firstImportComplete = 1;
        v7 = OSLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315138;
          v9 = "[SavedRecordingService _handleCloudKitContainerEvent:]";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s -- First import completed", &v8, 0xCu);
        }

        [(SavedRecordingService *)self reconcileMigrationStates];
      }
    }
  }
}

- (void)_registerForVoxInitiatedMigrationNotificationName
{
  if (RCIsInternalInstall())
  {
    out_token = 0;
    objc_initWeak(&location, self);
    uTF8String = [RCVoxInitiatedMigrationNotificationName UTF8String];
    v4 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100018D38;
    handler[3] = &unk_100055E30;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch(uTF8String, &out_token, &_dispatch_main_q, handler);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)reconcileMigrationStates
{
  state64 = 0;
  if (notify_get_state(self->_migrationReadyNotificationToken, &state64))
  {
    v3 = OSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100036FD0();
    }
  }

  else
  {
    if (!self->_firstImportComplete)
    {
      goto LABEL_9;
    }

    state64 |= 1uLL;
    if (!notify_set_state(self->_migrationReadyNotificationToken, state64))
    {
      goto LABEL_9;
    }

    v3 = OSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100037050();
    }
  }

LABEL_9:
  encryptedFieldsAccountStatus = [(RCAccountStatusObserver *)self->_accountStatusObserver encryptedFieldsAccountStatus];
  if (!self->_firstImportComplete || encryptedFieldsAccountStatus == 0)
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_10001ECBC([(RCAccountStatusObserver *)self->_accountStatusObserver encryptedFieldsAccountStatus]);
      v8 = v7;
      v9 = @"not ";
      firstImportComplete = self->_firstImportComplete;
      v13 = "[SavedRecordingService reconcileMigrationStates]";
      *buf = 136315650;
      v14 = 2112;
      if (firstImportComplete)
      {
        v9 = &stru_100057830;
      }

      v15 = v7;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s -- Not updating encrypted fields status - account status == %@, first import has %@completed", buf, 0x20u);
    }
  }

  else
  {
    [(SavedRecordingService *)self _updateMigrationStatusIfNeeded];
  }
}

- (void)_updateMigrationStatusIfNeeded
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100018FA0;
  v2[3] = &unk_100055E58;
  v2[4] = self;
  [(SavedRecordingService *)self _performOnServiceQueueWithBackgroundModel:v2];
}

- (void)_createAccountStatusUpdatedMigration:(id)migration
{
  migrationCopy = migration;
  v4 = [migrationCopy createEncryptedFieldsMigration:1];
  [migrationCopy saveIfNecessary];

  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SavedRecordingService _createAccountStatusUpdatedMigration:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- Created encrypted fields migration %@", &v6, 0x16u);
  }
}

- (void)_initiateImplicitEncryptedTitleMigration
{
  v3 = +[RCServiceContainer sharedContainer];
  newBackgroundModel = [v3 newBackgroundModel];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000192B8;
  v6[3] = &unk_1000556F0;
  v7 = newBackgroundModel;
  v5 = newBackgroundModel;
  [v5 performBlockAndWait:v6];
  [(SavedRecordingService *)self reconcileMigrationStates];
}

- (void)performLocalEncryptedTitleMigrationIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = +[RCServiceContainer sharedContainer];
  performLocalEncryptedTitleMigrationIfNeeded = [v4 performLocalEncryptedTitleMigrationIfNeeded];

  if (performLocalEncryptedTitleMigrationIfNeeded)
  {
    encryptedFieldMigrations = [neededCopy encryptedFieldMigrations];
    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[SavedRecordingService performLocalEncryptedTitleMigrationIfNeeded:]";
      v10 = 2112;
      v11 = encryptedFieldMigrations;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s -- Performed encrypted field migration for local recordings, migrations %@", &v8, 0x16u);
    }
  }
}

- (void)_resetEncryptedFieldsMigrationState
{
  self->_encryptedFieldsStatus = 0;
  v3 = +[RCServiceContainer sharedContainer];
  [v3 unsetLocalEncryptedTitleMigrationFlag];

  [(SavedRecordingService *)self reconcileMigrationStates];
}

- (void)_notifyEncryptedFieldsMigrationStatusKnown:(BOOL)known
{
  if (known)
  {
    v3 = 7;
  }

  else
  {
    v3 = 3;
  }

  if (notify_set_state(self->_migrationReadyNotificationToken, v3))
  {
    v4 = OSLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000370D0();
    }
  }

  notify_post([RCMigrationReadyNotificationName UTF8String]);
}

- (void)_validateOnFirstImport:(id)import
{
  if (self->_encryptedFieldsStatus)
  {
    importCopy = import;
    [(SavedRecordingService *)self _updateNilTitlesWithLocalTitles:importCopy];
    [(SavedRecordingService *)self _recreateAudioFuturesIfNeeded:importCopy];

    [(SavedRecordingService *)self _performEncryptedTitleMigrationIfNeeded];
  }
}

- (void)_updateNilTitlesWithLocalTitles:(id)titles
{
  titlesCopy = titles;
  encryptedFieldsStatus = self->_encryptedFieldsStatus;
  recordingsWithNilEncryptedTitleOrCustomLabel = [titlesCopy recordingsWithNilEncryptedTitleOrCustomLabel];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [recordingsWithNilEncryptedTitleOrCustomLabel countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(recordingsWithNilEncryptedTitleOrCustomLabel);
        }

        [*(*(&v11 + 1) + 8 * v10) updateNilTitleFields:encryptedFieldsStatus == 1];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [recordingsWithNilEncryptedTitleOrCustomLabel countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [titlesCopy saveIfNecessary];
}

- (void)_recreateAudioFuturesIfNeeded:(id)needed
{
  neededCopy = needed;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  recordingsWithNilAudioFutures = [neededCopy recordingsWithNilAudioFutures];
  v5 = [recordingsWithNilAudioFutures countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(recordingsWithNilAudioFutures);
        }

        [*(*(&v9 + 1) + 8 * v8) recreateAudioFutureIfNecessary];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [recordingsWithNilAudioFutures countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [neededCopy saveIfNecessary];
}

- (void)_performEncryptedTitleMigrationIfNeeded
{
  if (self->_encryptedFieldsStatus == 2)
  {
    [(SavedRecordingService *)self _initiateImplicitEncryptedTitleMigration];
  }
}

- (void)_checkMobileRestore:(id)restore
{
  restoreCopy = restore;
  v4 = [[MobileRestoreObserver alloc] initWithQueue:self->_serviceSerialQueue];
  restoreObserver = self->_restoreObserver;
  self->_restoreObserver = v4;

  [(MobileRestoreObserver *)self->_restoreObserver observeMobileRestore:restoreCopy];
}

- (void)_initializeCloudKitPushNotifications
{
  v7 = [[CKNotificationListener alloc] initWithMachServiceName:@"com.apple.aps.voicememod"];
  v2 = +[RCCloudKitContainerUtilities createContainer];
  privateCloudDatabase = [v2 privateCloudDatabase];
  v4 = objc_opt_new();
  subscriptionID = [v4 subscriptionID];
  [v7 registerForSubscriptionWithID:subscriptionID inDatabase:privateCloudDatabase handler:&stru_100055F00];

  subscriptionID2 = [v4 subscriptionID];
  [v7 unregisterForSubscriptionWithID:subscriptionID2 inDatabase:privateCloudDatabase];
}

- (void)_wipeCloudKitCaches
{
  v2 = +[RCCloudKitContainerUtilities createContainer];
  [v2 wipeAllCachesAndDie];
}

- (void)_excludeSupportFilesForDatabaseURL:(id)l
{
  v3 = RCSupportDirectoryForDatabase();
  [v3 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:0];
}

- (void)_initWithContainer:(id)container recordingsExist:(BOOL)exist
{
  containerCopy = container;
  v7 = OSLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10003724C();
  }

  v8 = objc_alloc_init(SavedRecordingSearchIndexController);
  savedRecordingSearchIndexController = self->_savedRecordingSearchIndexController;
  self->_savedRecordingSearchIndexController = v8;

  if (!exist)
  {
    v10 = +[NSFileManager defaultManager];
    v11 = RCStockRecordingsURL();
    v33 = NSURLContentModificationDateKey;
    v12 = [NSArray arrayWithObjects:&v33 count:1];
    v13 = [v10 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:v12 options:5 error:0];

    if (v13)
    {
      v14 = +[RCServiceContainer sharedContainer];
      newBackgroundModel = [v14 newBackgroundModel];

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100019FA0;
      v29[3] = &unk_1000556C8;
      v30 = v13;
      v31 = newBackgroundModel;
      v16 = newBackgroundModel;
      [v16 performBlockAndWait:v29];
    }
  }

  store = [containerCopy store];
  persistentStoreCoordinator = [store persistentStoreCoordinator];

  store2 = [containerCopy store];
  v32 = store2;
  v20 = [NSArray arrayWithObjects:&v32 count:1];
  v21 = [persistentStoreCoordinator currentPersistentHistoryTokenFromStores:v20];
  cloudStoreToken = self->_cloudStoreToken;
  self->_cloudStoreToken = v21;

  v23 = [[RCAudioFutureSyncManager alloc] initWithScheduler:self->_scheduler];
  audioFutureSyncManager = self->_audioFutureSyncManager;
  self->_audioFutureSyncManager = v23;

  [(RCAudioFutureSyncManager *)self->_audioFutureSyncManager setDelegate:self];
  v25 = +[NSNotificationCenter defaultCenter];
  [v25 addObserver:self selector:"_handleRemoteChangeNotification:" name:NSPersistentStoreRemoteChangeNotification object:persistentStoreCoordinator];
  [v25 addObserver:self selector:"_handleWillResetSyncNotification:" name:NSCloudKitMirroringDelegateWillResetSyncNotificationName object:0];
  [v25 addObserver:self selector:"_handleDidResetSyncNotification:" name:NSCloudKitMirroringDelegateDidResetSyncNotificationName object:0];
  v26 = RCRecordingsDirectoryURL();
  [v26 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
  v27 = RCCloudRecordingsStoreURL();
  [(SavedRecordingService *)self _excludeSupportFilesForDatabaseURL:v27];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001A278;
  v28[3] = &unk_1000556F0;
  v28[4] = self;
  [(SavedRecordingService *)self _checkMobileRestore:v28];
}

- (void)_performSetupRequiringMobileRestoreCompletion
{
  [(SavedRecordingService *)self _initializeCloudKitPushNotifications];
  v3 = objc_opt_new();
  cloudSyncAccessManager = self->_cloudSyncAccessManager;
  self->_cloudSyncAccessManager = v3;

  [(RCCloudSyncAccessManager *)self->_cloudSyncAccessManager setDelegate:self];
  [(RCCloudSyncAccessManager *)self->_cloudSyncAccessManager startMonitoringAccountChanges];
  v5 = +[RCServiceContainer sharedContainer];
  newBackgroundModel = [v5 newBackgroundModel];
  encryptedFieldsMigrationExists = [newBackgroundModel encryptedFieldsMigrationExists];

  if (encryptedFieldsMigrationExists)
  {
    self->_encryptedFieldsStatus = 1;
  }

  v8 = objc_alloc_init(RCAccountStatusObserver);
  accountStatusObserver = self->_accountStatusObserver;
  self->_accountStatusObserver = v8;

  [(RCAccountStatusObserver *)self->_accountStatusObserver setDelegate:self];
  [(RCAccountStatusObserver *)self->_accountStatusObserver startMonitoringAccountStatus];
  [(SavedRecordingService *)self _handleiCloudAvailabilityChanged];

  [(SavedRecordingService *)self _performDeferredSetup];
}

- (void)_performDeferredSetup
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = sub_100001DCC;
  v5[4] = sub_100013984;
  v6 = os_transaction_create();
  v3 = dispatch_time(0, 1000000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001A448;
  v4[3] = &unk_100055A70;
  v4[4] = self;
  v4[5] = v5;
  dispatch_after(v3, &_dispatch_main_q, v4);
  _Block_object_dispose(v5, 8);
}

- (void)start
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100001DCC;
  v18[4] = sub_100013984;
  v19 = os_transaction_create();
  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A7FC;
  block[3] = &unk_100055B10;
  block[4] = v18;
  dispatch_after(v3, &_dispatch_main_q, block);
  v4 = RCRecordingsDirectoryURL();
  v5 = [v4 checkResourceIsReachableAndReturnError:0];

  v6 = +[RCServiceContainer sharedContainer];
  if (!v6)
  {
    v15 = OSLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000372C8();
    }

    exit(0);
  }

  v7 = +[NSFileManager defaultManager];
  [v7 rc_cleanUpTemporaryDirectory];

  [(SavedRecordingService *)self _initWithContainer:v6 recordingsExist:v5];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001A810;
  v16[3] = &unk_100055F50;
  v16[4] = self;
  v8 = [RCXPCStoreServer startStoreServers:v16];
  storeServers = self->_storeServers;
  self->_storeServers = v8;

  if (!self->_xpcListener)
  {
    v10 = [NSXPCListener alloc];
    v11 = RCSSavedRecordingServiceMachServiceName;
    v12 = [v10 initWithMachServiceName:RCSSavedRecordingServiceMachServiceName];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v12;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    v14 = OSLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[SavedRecordingService start]";
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s -- Starting service '%@'", buf, 0x16u);
    }

    [(NSXPCListener *)self->_xpcListener resume];
  }

  _Block_object_dispose(v18, 8);
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  invocationCopy = invocation;
  v7 = OSLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (replyCopy)
  {
    if (v8)
    {
      sub_1000373F4();
    }
  }

  else if (v8)
  {
    sub_100037348();
  }

  [invocationCopy invoke];
}

+ (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  v4 = OSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100037470(connectionCopy);
  }

  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.voicememod.client"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    serviceName = [connectionCopy serviceName];
    if (serviceName)
    {
      v8 = [connectionCopy valueForEntitlement:@"com.apple.security.exception.mach-lookup.global-name"];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v8 count])
      {
        bOOLValue = [v8 containsObject:serviceName];
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [SavedRecordingService shouldAcceptXPCConnection:connectionCopy];
  if (v8)
  {
    [connectionCopy setExportedObject:self];
    v9 = +[RCSSavedRecordingServiceConnection serviceInterface];
    [connectionCopy setExportedInterface:v9];

    v10 = +[RCSSavedRecordingServiceConnection clientInterface];
    [connectionCopy setRemoteObjectInterface:v10];

    [connectionCopy setDelegate:self];
    [connectionCopy rcs_setValid:1];
    rcs_applicationIdentifier = [connectionCopy rcs_applicationIdentifier];
    if ([rcs_applicationIdentifier isEqualToString:RCVoiceMemosBundleID])
    {
      self->_VoiceMemosPID = [connectionCopy processIdentifier];
      v12 = OSLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100037508(&self->_VoiceMemosPID);
      }
    }

    objc_initWeak(&location, connectionCopy);
    objc_initWeak(&from, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10001ADA0;
    v22[3] = &unk_100055FB8;
    objc_copyWeak(&v25, &location);
    objc_copyWeak(&v26, &from);
    v13 = rcs_applicationIdentifier;
    v23 = v13;
    selfCopy = self;
    [connectionCopy setInvalidationHandler:v22];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10001AF0C;
    v19 = &unk_100055FE0;
    objc_copyWeak(&v20, &location);
    objc_copyWeak(&v21, &from);
    [connectionCopy setInterruptionHandler:&v16];
    v14 = OSLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "[SavedRecordingService listener:shouldAcceptNewConnection:]";
      v31 = 2112;
      v32 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s -- Listener accepted new connection %@", buf, 0x16u);
    }

    [connectionCopy resume];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)_performOnServiceQueue:(id)queue
{
  queueCopy = queue;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100001DCC;
  v10[4] = sub_100013984;
  v11 = os_transaction_create();
  serviceSerialQueue = self->_serviceSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B0B4;
  v7[3] = &unk_100055B38;
  v8 = queueCopy;
  v9 = v10;
  v6 = queueCopy;
  dispatch_async(serviceSerialQueue, v7);

  _Block_object_dispose(v10, 8);
}

- (void)_performOnServiceQueueWithBackgroundModel:(id)model
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001B200;
  v5[3] = &unk_100055238;
  modelCopy = model;
  v4 = modelCopy;
  [(SavedRecordingService *)self _performOnServiceQueue:v5];
}

- (void)_onServiceQueueOpenAccessSessionNamed:(id)named compositionAVURL:(id)l accessIntent:(int64_t)intent xpcConnection:(id)connection accessSessionHandler:(id)handler
{
  namedCopy = named;
  lCopy = l;
  connectionCopy = connection;
  handlerCopy = handler;
  assetSessionController = self->_assetSessionController;
  v40[0] = 0;
  v17 = [(AssetAccessSessionController *)assetSessionController openAccessSessionWithName:namedCopy xpcConnection:connectionCopy compositionAVURL:lCopy accessIntent:intent error:v40];
  v18 = v40[0];
  if (v17)
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001B72C;
    v29[3] = &unk_100056058;
    v32 = handlerCopy;
    v30 = v17;
    v31 = v18;
    [(SavedRecordingService *)self _attemptOrphanedFragmentsCleanupForCompositionAVURL:lCopy ignoredAccessSession:v30 completionBlock:v29];

    v19 = v32;
  }

  else
  {
    if (![(NSMutableArray *)self->_closingSessions count])
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v18);
      goto LABEL_10;
    }

    v20 = [(NSMutableDictionary *)self->_compositionAVURLsDeferredAccessRequestBlocksByAVURL objectForKey:lCopy];
    v21 = v20;
    if (v20)
    {
      (*(v20 + 16))(v20, 1);
    }

    v28 = v21;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10001B598;
    v33[3] = &unk_100056030;
    v34 = namedCopy;
    v38 = handlerCopy;
    selfCopy = self;
    v27 = lCopy;
    v36 = v27;
    intentCopy = intent;
    v37 = connectionCopy;
    v22 = objc_retainBlock(v33);
    v23 = OSLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_10003778C();
    }

    compositionAVURLsDeferredAccessRequestBlocksByAVURL = self->_compositionAVURLsDeferredAccessRequestBlocksByAVURL;
    v25 = [v22 copy];
    v26 = objc_retainBlock(v25);
    [(NSMutableDictionary *)compositionAVURLsDeferredAccessRequestBlocksByAVURL setObject:v26 forKey:v27];

    v19 = v28;
  }

LABEL_10:
}

- (BOOL)_onServiceQueueHasActiveExclusiveSessionForCompositionAVURL:(id)l ignoredAccessSession:(id)session
{
  lCopy = l;
  sessionCopy = session;
  [(AssetAccessSessionController *)self->_assetSessionController activeSessionsWithWithCompositionAVURL:lCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v28 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = (i + 1))
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (v12 != sessionCopy)
        {
          accessToken = [*(*(&v16 + 1) + 8 * i) accessToken];
          isExclusive = [accessToken isExclusive];

          if (isExclusive)
          {
            v9 = OSLogForCategory();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v21 = "[SavedRecordingService _onServiceQueueHasActiveExclusiveSessionForCompositionAVURL:ignoredAccessSession:]";
              v22 = 2112;
              v23 = lCopy;
              v24 = 2112;
              v25 = v12;
              v26 = 2112;
              v27 = sessionCopy;
              _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s -- FINALIZATION ERROR:  another access session has exclusive access to compositionAVURL = %@ (session = %@, ignored = %@)", buf, 0x2Au);
            }

            LOBYTE(v9) = 1;
            goto LABEL_14;
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v9;
}

- (BOOL)_onServiceQueueHasActiveSessionsForCompositionAVURL:(id)l ignoredAccessSession:(id)session
{
  sessionCopy = session;
  [(AssetAccessSessionController *)self->_assetSessionController activeSessionsWithWithCompositionAVURL:l];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v12 + 1) + 8 * i) != sessionCopy)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)_onQueueCloseAccessSession:(id)session normalTermination:(BOOL)termination completionBlock:(id)block
{
  sessionCopy = session;
  blockCopy = block;
  if (sessionCopy)
  {
    [(NSMutableArray *)self->_closingSessions addObject:sessionCopy];
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[SavedRecordingService _onQueueCloseAccessSession:normalTermination:completionBlock:]";
      v20 = 2112;
      v21 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s -- Closing access session: %@.", buf, 0x16u);
    }

    v11 = OSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v19 = "[SavedRecordingService _onQueueCloseAccessSession:normalTermination:completionBlock:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s -- Scheduling orphan fragment cleanup for closing session", buf, 0xCu);
    }

    accessToken = [sessionCopy accessToken];
    compositionAVURL = [accessToken compositionAVURL];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001BC50;
    v14[3] = &unk_1000560A8;
    terminationCopy = termination;
    v14[4] = self;
    v15 = sessionCopy;
    v16 = blockCopy;
    [(SavedRecordingService *)self _attemptOrphanedFragmentsCleanupForCompositionAVURL:compositionAVURL ignoredAccessSession:v15 completionBlock:v14];
  }
}

- (void)_attemptToRunDeferredFinalizationOfCompositionAVURL:(id)l completionBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v8 = OSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    lastPathComponent = [lCopy lastPathComponent];
    *buf = 136315394;
    v15 = "[SavedRecordingService _attemptToRunDeferredFinalizationOfCompositionAVURL:completionBlock:]";
    v16 = 2112;
    v17 = lastPathComponent;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s -- Received request to schedule finalization of '%@'...", buf, 0x16u);
  }

  if (lCopy)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001C0EC;
    v11[3] = &unk_100055BB0;
    v11[4] = self;
    v12 = lCopy;
    v13 = blockCopy;
    [(SavedRecordingService *)self _performOnServiceQueue:v11];
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000378AC();
    }
  }
}

- (void)_attemptFinalizationOfCompositionAVURL:(id)l ignoredAccessSession:(id)session completionBlock:(id)block
{
  lCopy = l;
  sessionCopy = session;
  blockCopy = block;
  if ([(SavedRecordingService *)self _onServiceQueueHasActiveExclusiveSessionForCompositionAVURL:lCopy ignoredAccessSession:sessionCopy])
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy, 0);
    }
  }

  else
  {
    v11 = [RCComposition compositionLoadedForComposedAVURL:lCopy createIfNeeded:1];
    decomposedFragments = [v11 decomposedFragments];
    v13 = [decomposedFragments count];

    if (v13)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      serialQueue = self->_serialQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001C5A8;
      block[3] = &unk_100055A48;
      block[4] = self;
      v15 = lCopy;
      v21 = v15;
      v22 = &v23;
      dispatch_sync(serialQueue, block);
      if (*(v24 + 24) == 1)
      {
        if (blockCopy)
        {
          blockCopy[2](blockCopy, 0);
        }
      }

      else
      {
        notify_post([RCSavedRecordingServiceDidChangeCompositionAVURLsBeingExportedDistributedNotification UTF8String]);
        assetExportController = self->_assetExportController;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10001C60C;
        v17[3] = &unk_1000560F8;
        v17[4] = self;
        v18 = v15;
        v19 = blockCopy;
        [(AssetExportController *)assetExportController finalizeAssetWithComposition:v11 completionBlock:v17];
      }

      _Block_object_dispose(&v23, 8);
    }

    else if (blockCopy)
    {
      blockCopy[2](blockCopy, 1);
    }
  }
}

- (void)_attemptOrphanedFragmentsCleanupForCompositionAVURL:(id)l ignoredAccessSession:(id)session completionBlock:(id)block
{
  lCopy = l;
  sessionCopy = session;
  blockCopy = block;
  if (([(NSCountedSet *)self->_disabledOrphanedFragmentCleanupByCompositionAVURL containsObject:lCopy]& 1) == 0 && ![(SavedRecordingService *)self _onServiceQueueHasActiveSessionsForCompositionAVURL:lCopy ignoredAccessSession:sessionCopy])
  {
    v11 = [RCComposition compositionLoadedForComposedAVURL:lCopy createIfNeeded:0];
    if (v11)
    {
      v12 = +[RCServiceContainer sharedContainer];
      newBackgroundModel = [v12 newBackgroundModel];

      savedRecordingUUID = [v11 savedRecordingUUID];

      if (savedRecordingUUID)
      {
        goto LABEL_13;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v28 = sub_100001DCC;
      v29 = sub_100013984;
      v30 = 0;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10001CAF4;
      v19[3] = &unk_100055A48;
      v15 = lCopy;
      v20 = v15;
      v21 = newBackgroundModel;
      v22 = buf;
      [v21 performBlockAndWait:v19];
      v16 = *(*&buf[8] + 40);
      if (v16)
      {
        [v11 setSavedRecordingUUIDFromRecoveredRecordingUUID:*(*&buf[8] + 40)];
        [v11 saveMetadataToDefaultLocation];
      }

      else
      {
        v17 = OSLogForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v23 = 136315394;
          v24 = "[SavedRecordingService _attemptOrphanedFragmentsCleanupForCompositionAVURL:ignoredAccessSession:completionBlock:]";
          v25 = 2112;
          v26 = v15;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s -- WARNING: attempt to delete orphaned fragments for %@ failed because savedRecordingUUID is nil", v23, 0x16u);
        }
      }

      _Block_object_dispose(buf, 8);
      if (v16)
      {
LABEL_13:
        v18 = [newBackgroundModel repairCompositionDecomposedFragmentMetadataIfNecessary:v11];

        [v18 enumerateOrphanedFragmentsWithBlock:&stru_100056138];
        v11 = v18;
      }
    }

    else
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[SavedRecordingService _attemptOrphanedFragmentsCleanupForCompositionAVURL:ignoredAccessSession:completionBlock:]";
        *&buf[12] = 2112;
        *&buf[14] = lCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s -- WARNING: attempt to delete orphaned fragments for %@ failed because the composition failed to load", buf, 0x16u);
      }
    }
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (id)_onQueue_composedAVURLsWithActiveSessionsOrScheduledWork
{
  v3 = +[NSMutableArray array];
  disabledOrphanedFragmentCleanupByCompositionAVURL = self->_disabledOrphanedFragmentCleanupByCompositionAVURL;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001CF9C;
  v30[3] = &unk_100056160;
  v5 = v3;
  v31 = v5;
  [(NSCountedSet *)disabledOrphanedFragmentCleanupByCompositionAVURL enumerateObjectsUsingBlock:v30];
  allKeys = [(NSMutableDictionary *)self->_compositionAVURLsDeferredAccessRequestBlocksByAVURL allKeys];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001CFA8;
  v28[3] = &unk_100056188;
  v7 = v5;
  v29 = v7;
  [allKeys enumerateObjectsUsingBlock:v28];

  compositionAVURLsToFinalize = self->_compositionAVURLsToFinalize;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001CFB4;
  v26[3] = &unk_100056188;
  v9 = v7;
  v27 = v9;
  [(NSMutableArray *)compositionAVURLsToFinalize enumerateObjectsUsingBlock:v26];
  activeSessions = [(AssetAccessSessionController *)self->_assetSessionController activeSessions];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [activeSessions countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(activeSessions);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        accessToken = [v15 accessToken];
        compositionAVURL = [accessToken compositionAVURL];

        if (compositionAVURL)
        {
          accessToken2 = [v15 accessToken];
          compositionAVURL2 = [accessToken2 compositionAVURL];
          [v9 addObject:compositionAVURL2];
        }
      }

      v12 = [activeSessions countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v12);
  }

  v20 = v9;

  return v9;
}

- (void)_onServiceQueueAttemptToRunningDeferredWorkAfterClosingSession:(id)session
{
  accessToken = [session accessToken];
  compositionAVURL = [accessToken compositionAVURL];

  if (compositionAVURL)
  {
    v5 = [(NSMutableDictionary *)self->_compositionAVURLsDeferredAccessRequestBlocksByAVURL objectForKey:compositionAVURL];
    v6 = [v5 copy];

    if (v6)
    {
      [(NSMutableDictionary *)self->_compositionAVURLsDeferredAccessRequestBlocksByAVURL removeObjectForKey:compositionAVURL];
      v6[2](v6, 0);
    }

    else if ([(NSMutableArray *)self->_compositionAVURLsToFinalize containsObject:compositionAVURL])
    {
      [(NSMutableArray *)self->_compositionAVURLsToFinalize removeObject:compositionAVURL];
      [(SavedRecordingService *)self _attemptToRunDeferredFinalizationOfCompositionAVURL:compositionAVURL completionBlock:0];
    }
  }

  _objc_release_x1();
}

- (void)_addDisabledOrphanCleanupForCompositionAVURL:(id)l xpcConnection:(id)connection completionBlock:(id)block
{
  lCopy = l;
  connectionCopy = connection;
  blockCopy = block;
  v10 = [connectionCopy rc_userInfoForKey:@"disabledOrphanedFragmentCleanupAVURLs"];
  if (!v10)
  {
    v10 = +[NSCountedSet set];
    [connectionCopy rc_setUserInfo:v10 forKey:@"disabledOrphanedFragmentCleanupAVURLs"];
  }

  if (lCopy)
  {
    [v10 addObject:lCopy];
    if ([v10 countForObject:lCopy] == 1)
    {
      [(NSCountedSet *)self->_disabledOrphanedFragmentCleanupByCompositionAVURL addObject:lCopy];
    }
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (void)_removeDisabledOrphanCleanupForCompositionAVURL:(id)l xpcConnection:(id)connection
{
  lCopy = l;
  v6 = [connection rc_userInfoForKey:@"disabledOrphanedFragmentCleanupAVURLs"];
  if (lCopy)
  {
    v7 = [v6 countForObject:lCopy];
    if (v7)
    {
      v8 = v7;
      [v6 removeObject:lCopy];
      if (v8 == 1)
      {
        [(NSCountedSet *)self->_disabledOrphanedFragmentCleanupByCompositionAVURL removeObject:lCopy];
        [(SavedRecordingService *)self _attemptOrphanedFragmentsCleanupForCompositionAVURL:lCopy ignoredAccessSession:0 completionBlock:0];
      }
    }
  }
}

- (void)_removeDisabledOrphanCleanupAVURLsForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy rc_userInfoForKey:@"disabledOrphanedFragmentCleanupAVURLs"];
  v6 = [v5 copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SavedRecordingService *)self _removeDisabledOrphanCleanupForCompositionAVURL:*(*(&v12 + 1) + 8 * v11) xpcConnection:connectionCopy, v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_stopMonitoringDemoMovieIfNeeded
{
  if ([(SavedRecordingService *)self isRunningInDemoMode]&& self->_tokenMonitoringDemoMovie)
  {
    v3 = OSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[SavedRecordingService _stopMonitoringDemoMovieIfNeeded]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s -- running in demo mode, stop monitoring demo movie", &v4, 0xCu);
    }

    notify_cancel(self->_tokenMonitoringDemoMovie);
    self->_tokenMonitoringDemoMovie = 0;
  }
}

- (void)_handleXPCDisconnect:(id)disconnect
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001D500;
  v5[3] = &unk_1000556C8;
  disconnectCopy = disconnect;
  selfCopy = self;
  v4 = disconnectCopy;
  [(SavedRecordingService *)self _performOnServiceQueue:v5];
}

- (void)_downloadAssets
{
  mirroringContainer = self->_mirroringContainer;
  if (mirroringContainer)
  {
    v4 = mirroringContainer;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001D76C;
    v6[3] = &unk_1000556C8;
    newBackgroundModel = [(RCMirroringContainer *)v4 newBackgroundModel];
    selfCopy = self;
    v5 = newBackgroundModel;
    [v5 performBlockAndWait:v6];
  }
}

- (BOOL)_setupCloudMirroring:(id *)mirroring
{
  v5 = [RCMirroringContainer alloc];
  v6 = RCCloudRecordingsStoreURL();
  v7 = [(RCMirroringContainer *)v5 initWithURL:v6];
  mirroringContainer = self->_mirroringContainer;
  self->_mirroringContainer = v7;

  v9 = self->_mirroringContainer;
  if (v9)
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[SavedRecordingService _setupCloudMirroring:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s -- iCloud is now ON", &v15, 0xCu);
    }

    audioFutureSyncManager = self->_audioFutureSyncManager;
    store = [(RCMirroringContainer *)self->_mirroringContainer store];
    [(RCAudioFutureSyncManager *)audioFutureSyncManager setPersistentStore:store];
    goto LABEL_7;
  }

  if (mirroring)
  {
    v13 = RCSSavedRecordingServiceErrorDomain;
    v17 = NSLocalizedFailureReasonErrorKey;
    v18 = @"CloudKit mirroring model failed to load";
    store = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *mirroring = [NSError errorWithDomain:v13 code:501 userInfo:store];
LABEL_7:
  }

  return v9 != 0;
}

- (BOOL)_shutdownCloudMirroring
{
  mirroringContainer = self->_mirroringContainer;
  if (mirroringContainer)
  {
    self->_firstImportComplete = 0;
    self->_mirroringContainer = 0;
  }

  v3 = OSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SavedRecordingService _shutdownCloudMirroring]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s -- iCloud is now OFF", &v5, 0xCu);
  }

  return 1;
}

- (void)_setupSignalHandlers
{
  objc_initWeak(&location, self);
  v14[0] = &off_100057E00;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001DEF8;
  v11[3] = &unk_1000561D8;
  objc_copyWeak(&v12, &location);
  v3 = objc_retainBlock(v11);
  v14[1] = &off_100057E18;
  v15[0] = v3;
  v15[1] = &stru_1000561F8;
  v4 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  v5 = objc_opt_new();
  signalDispatchSources = self->_signalDispatchSources;
  self->_signalDispatchSources = v5;

  dispatch_get_global_queue(0, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001DF90;
  v7 = v8[3] = &unk_100056220;
  v9 = v7;
  selfCopy = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_tearDownSignalHandlers
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_signalDispatchSources;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        dispatch_source_cancel(*(*(&v9 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  signalDispatchSources = self->_signalDispatchSources;
  self->_signalDispatchSources = 0;
}

- (void)_handleDebugSignal
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E1B0;
  block[3] = &unk_1000556F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

+ (void)_removeVestigialCloudKitSupportDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = +[NSFileManager defaultManager];
  v13 = 0;
  v5 = [directoryCopy URLByAppendingPathComponent:@"ckAssetFiles"];

  path = [v5 path];
  v7 = [v4 fileExistsAtPath:path isDirectory:&v13];
  v8 = v13;

  if (v7 && (v8 & 1) != 0)
  {
    v12 = 0;
    v9 = [v4 rc_moveToTempAndMarkAsPurgeable:v5 error:&v12];
    v10 = v12;
    if ((v9 & 1) == 0)
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000379E8();
      }
    }
  }
}

- (id)newBackgroundMirroringModel
{
  result = self->_mirroringContainer;
  if (result)
  {
    return [result newBackgroundModel];
  }

  return result;
}

- (void)valueForServiceKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if ([keyCopy isEqualToString:RCSSavedRecordingServiceKeyEncryptedFieldsStatus])
  {
    encryptedFieldsStatus = self->_encryptedFieldsStatus;
    if (encryptedFieldsStatus >= 3)
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_100037A64();
      }

      v9 = &RCSSavedRecordingServiceEncryptedStatusUnknown;
    }

    else
    {
      v9 = *(&off_100056240 + encryptedFieldsStatus);
    }

    (*(completionCopy + 2))(completionCopy, *v9, 0);
  }

  else
  {
    if ([keyCopy isEqualToString:RCSSavedRecordingServiceKeyEncryptedAccountStatus])
    {
      v10 = sub_10001ECBC([(RCAccountStatusObserver *)self->_accountStatusObserver encryptedFieldsAccountStatus]);
      (*(completionCopy + 2))(completionCopy, v10, 0);
    }

    else
    {
      if (![keyCopy isEqualToString:RCSSavedRecordingServiceKeyFirstImportIsComplete])
      {
        v12 = RCVoiceMemosErrorDomain;
        v15 = NSLocalizedDescriptionKey;
        v16 = @"Service Key Not Found";
        v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v14 = [NSError errorWithDomain:v12 code:-1 userInfo:v13];
        (*(completionCopy + 2))(completionCopy, 0, v14);

        goto LABEL_14;
      }

      v10 = [NSNumber numberWithBool:self->_firstImportComplete];
      (*(completionCopy + 2))(completionCopy, v10, 0);
    }
  }

LABEL_14:
}

@end