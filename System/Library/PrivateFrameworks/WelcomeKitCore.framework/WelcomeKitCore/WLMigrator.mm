@interface WLMigrator
+ (BOOL)_shouldContinueMigrationFromAnotherDevice;
+ (BOOL)_shouldTerminateMigrationBeforeImport;
+ (id)_dataTypesAndSizesXMLDataFromMap:(id)map;
+ (id)_systemVersion;
+ (unint64_t)_bytesFreeOnDevice;
+ (void)_parseDataTypesXMLData:(id)data completion:(id)completion;
+ (void)_presentPromptForMigrableApps:(id)apps;
- (BOOL)_shouldTerminateMigrationOnError;
- (WLSocketHandler)activeSocketHandler;
- (double)_didFinishDownloadingSegmentOfSize:(unint64_t)size expectedSize:(unint64_t)expectedSize migratorEstimatesItemSizes:(BOOL)sizes endDate:(id)date context:(id)context;
- (double)_progressIncrementForImportedSummary:(id)summary summaries:(id)summaries accounts:(id)accounts migrators:(id)migrators;
- (id)_downloadDataWithContext:(id)context failureDetailsBlock:(id)block;
- (id)_fetchAccountsAndSummariesWithContext:(id)context;
- (id)_importDataWithContext:(id)context failureDetailsBlock:(id)block;
- (id)_selectDataTypesWithContext:(id)context;
- (id)downloadData:(id)data;
- (id)fetchSummary:(id)summary;
- (id)finishMigration:(id)migration;
- (id)importData:(id)data;
- (id)migrators:(id)migrators;
- (id)prepare:(id)prepare delegate:(id)delegate error:(id *)error;
- (id)runPostMigrationTasks:(id)tasks;
- (id)selectDataTypes:(id)types;
- (void)_cleanUpAfterFinalizeMigratableAppsWithSQLController:(id)controller completion:(id)completion;
- (void)_deleteDownloadsPath:(id)path;
- (void)_finishMigrationWithError:(id)error context:(id)context disconnected:(BOOL)disconnected completion:(id)completion;
- (void)_incrementProgressBy:(double)by context:(id)context;
- (void)_logStatisticsAndSendStatisticsTelemetryWithContext:(id)context;
- (void)_prepareMetadata:(id)metadata usingRetryPolicies:(BOOL)policies allowContinuationFromAnotherDevice:(BOOL)device;
- (void)_reportTimeEstimatesWithContext:(id)context;
- (void)_selectFromDataTypeToSizeMap:(id)map device:(id)device completion:(id)completion;
- (void)_setProgressTo:(double)to context:(id)context;
- (void)_updateSourceWithProgress:(double)progress remainingTime:(double)time context:(id)context completion:(id)completion;
- (void)cleanup;
- (void)close:(id)close;
- (void)connectionDidEnd;
- (void)dealloc;
- (void)deleteMessages;
- (void)finalizeMigratableAppsWithCompletion:(id)completion;
@end

@implementation WLMigrator

- (void)dealloc
{
  _WLLog();
  v4.receiver = self;
  v4.super_class = WLMigrator;
  [(WLMigrator *)&v4 dealloc];
}

- (void)connectionDidEnd
{
  _WLLog();
  WeakRetained = objc_loadWeakRetained(&self->_activeSocketHandler);
  [WeakRetained cancel];
}

- (void)_deleteDownloadsPath:(id)path
{
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v7 = 0;
  [defaultManager removeItemAtPath:pathCopy error:&v7];

  v6 = v7;
  if (v6)
  {
    _WLLog();
  }
}

- (void)_prepareMetadata:(id)metadata usingRetryPolicies:(BOOL)policies allowContinuationFromAnotherDevice:(BOOL)device
{
  deviceCopy = device;
  policiesCopy = policies;
  metadataCopy = metadata;
  v20 = metadataCopy;
  if (deviceCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v20 setCommunicationDate:date];

    [v20 setAttemptCount:1];
    metadataCopy = v20;
  }

  if (!policiesCopy || (v10 = [metadataCopy state], metadataCopy = v20, v10 != 3))
  {
    state = [metadataCopy state];
    metadataCopy = v20;
    if (state)
    {
      state2 = [v20 state];
      metadataCopy = v20;
      if (state2 <= 3)
      {
        communicationDate = [v20 communicationDate];
        v14 = [communicationDate dateByAddingTimeInterval:86400.0];

        date2 = [MEMORY[0x277CBEAA8] date];
        v16 = [v14 compare:date2];

        if (v16 == -1)
        {
          _WLLog();
          [v20 setState:{0, self, v17}];
        }

        else if ([v20 attemptCount] >= 2)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "attemptCount")}];
          _WLLog();

          [v20 setState:{0, self, v18}];
        }

        metadataCopy = v20;
      }
    }
  }

  if ([metadataCopy state])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "state")}];
    _WLLog();

    [v20 setAttemptCount:{objc_msgSend(v20, "attemptCount", self, v19) + 1}];
  }

  else
  {
    [v20 setAttemptCount:1];
    [v20 setCrashCount:0];
  }
}

- (id)prepare:(id)prepare delegate:(id)delegate error:(id *)error
{
  v56[1] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  prepareCopy = prepare;
  v10 = objc_alloc_init(WLMigrationContext);
  [(WLMigrationContext *)v10 setSourceDevice:prepareCopy];
  [(WLMigrationContext *)v10 setDelegate:delegateCopy];

  apiLevel = [prepareCopy apiLevel];
  payload = [(WLMigrationContext *)v10 payload];
  [payload setAndroidAPILevel:apiLevel];

  brand = [prepareCopy brand];
  payload2 = [(WLMigrationContext *)v10 payload];
  [payload2 setAndroidBrand:brand];

  locale = [prepareCopy locale];
  payload3 = [(WLMigrationContext *)v10 payload];
  [payload3 setAndroidLocale:locale];

  model = [prepareCopy model];
  payload4 = [(WLMigrationContext *)v10 payload];
  [payload4 setAndroidModel:model];

  osVersion = [prepareCopy osVersion];
  payload5 = [(WLMigrationContext *)v10 payload];
  [payload5 setAndroidOSVersion:osVersion];

  version = [prepareCopy version];
  payload6 = [(WLMigrationContext *)v10 payload];
  [payload6 setAndroidVersion:version];

  versionCode = [prepareCopy versionCode];

  payload7 = [(WLMigrationContext *)v10 payload];
  [payload7 setAndroidVersionCode:versionCode];

  payload8 = [(WLMigrationContext *)v10 payload];
  [payload8 setState:@"starting"];

  v26 = +[WLCredentialStore sharedInstance];
  currentAuthentication = [v26 currentAuthentication];

  if (currentAuthentication || (-[WLMigrationContext sourceDevice](v10, "sourceDevice"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 isLocal], v28, (v29 & 1) != 0))
  {
    [(WLMigrationContext *)v10 setPowerAssertion:CPPowerAssertionCreate()];
    powerAssertion = [(WLMigrationContext *)v10 powerAssertion];
    _WLLog();
    v30 = [[WLURLSessionController alloc] initWithAuthentication:currentAuthentication, self, powerAssertion];
    [(WLMigrationContext *)v10 setUrlSessionController:v30];

    sourceDevice = [(WLMigrationContext *)v10 sourceDevice];
    isLocal = [sourceDevice isLocal];

    if (isLocal)
    {
      v33 = objc_alloc_init(WLLocalDataSource);
      [(WLMigrationContext *)v10 setDataSource:v33];

      dataCoordinator = objc_alloc_init(WLMigrationDataCoordinator);
      [(WLMigrationContext *)v10 setDataCoordinator:dataCoordinator];
    }

    else
    {
      if (self->_dataSource)
      {
        [(WLMigrationContext *)v10 setDataSource:?];
      }

      else
      {
        v39 = [WLRemoteDeviceDataSource alloc];
        sourceDevice2 = [(WLMigrationContext *)v10 sourceDevice];
        ipAddress = [sourceDevice2 ipAddress];
        sourceDevice3 = [(WLMigrationContext *)v10 sourceDevice];
        httpPort = [sourceDevice3 httpPort];
        urlSessionController = [(WLMigrationContext *)v10 urlSessionController];
        urlSession = [urlSessionController urlSession];
        v46 = [(WLRemoteDeviceDataSource *)v39 initWithHost:ipAddress port:httpPort session:urlSession];
        [(WLMigrationContext *)v10 setDataSource:v46];
      }

      v47 = objc_alloc_init(WLMigrationDataCoordinator);
      [(WLMigrationContext *)v10 setDataCoordinator:v47];

      if (!+[WLMigrator stashDataLocally])
      {
        goto LABEL_13;
      }

      dataCoordinator = [(WLMigrationContext *)v10 dataCoordinator];
      [(WLMigrationDataCoordinator *)dataCoordinator setStashDataLocally:1];
    }

LABEL_13:
    v48 = objc_alloc_init(WLSQLController);
    [(WLMigrationContext *)v10 setSqlController:v48];

    v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(WLMigrationContext *)v10 setThroughputSamples:v49];

    v50 = objc_alloc_init(WLTimeEstimateAccuracyTracker);
    [(WLMigrationContext *)v10 setTimeEstimateAccuracyTracker:v50];

    v51 = [(WLMigrator *)self migrators:v10];
    [(WLMigrationContext *)v10 setMigrators:v51];

    goto LABEL_14;
  }

  payload9 = [(WLMigrationContext *)v10 payload];
  [payload9 setState:@"authentication_error"];

  if (error)
  {
    v36 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277D7B8F8];
    v55 = *MEMORY[0x277CCA450];
    v56[0] = @"No device authentication";
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    *error = [v36 errorWithDomain:v37 code:4 userInfo:v38];
  }

LABEL_14:

  v52 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)migrators:(id)migrators
{
  migratorsCopy = migrators;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(WLContactsMigrator);
  payload = [migratorsCopy payload];
  contacts = [payload contacts];
  [(WLContactsMigrator *)v5 setFeaturePayload:contacts];

  v48 = v5;
  [v4 addObject:v5];
  v8 = objc_alloc_init(WLCalendarMigrator);
  payload2 = [migratorsCopy payload];
  calendars = [payload2 calendars];
  [(WLCalendarMigrator *)v8 setFeaturePayload:calendars];

  v47 = v8;
  [v4 addObject:v8];
  v11 = objc_alloc_init(WLBookmarksMigrator);
  payload3 = [migratorsCopy payload];
  bookmarks = [payload3 bookmarks];
  [(WLBookmarksMigrator *)v11 setFeaturePayload:bookmarks];

  [v4 addObject:v11];
  v14 = [WLMessagesMigrator alloc];
  sqlController = [migratorsCopy sqlController];
  v16 = [(WLMessagesMigrator *)v14 initWithSQLController:sqlController];

  payload4 = [migratorsCopy payload];
  messages = [payload4 messages];
  [(WLMessagesMigrator *)v16 setFeaturePayload:messages];

  [v4 addObject:v16];
  v19 = objc_alloc_init(WLMailAccountMigrator);
  payload5 = [migratorsCopy payload];
  accounts = [payload5 accounts];
  [(WLMailAccountMigrator *)v19 setFeaturePayload:accounts];

  [v4 addObject:v19];
  v22 = objc_alloc_init(WLPhotosMigrator);
  payload6 = [migratorsCopy payload];
  photos = [payload6 photos];
  [(WLPhotosMigrator *)v22 setFeaturePayload:photos];

  [v4 addObject:v22];
  v25 = objc_alloc_init(WLVideosMigrator);
  payload7 = [migratorsCopy payload];
  videos = [payload7 videos];
  [(WLVideosMigrator *)v25 setFeaturePayload:videos];

  [v4 addObject:v25];
  sourceDevice = [migratorsCopy sourceDevice];
  LODWORD(payload7) = [sourceDevice canAddFiles];

  if (payload7)
  {
    v29 = objc_alloc_init(WLFilesMigrator);
    payload8 = [migratorsCopy payload];
    files = [payload8 files];
    [(WLFilesMigrator *)v29 setFeaturePayload:files];

    [v4 addObject:v29];
  }

  sourceDevice2 = [migratorsCopy sourceDevice];
  canAddDisplay = [sourceDevice2 canAddDisplay];

  if (canAddDisplay)
  {
    v34 = objc_alloc_init(WLDisplayMigrator);
    payload9 = [migratorsCopy payload];
    displaySettings = [payload9 displaySettings];
    [(WLDisplayMigrator *)v34 setFeaturePayload:displaySettings];

    [v4 addObject:v34];
  }

  sourceDevice3 = [migratorsCopy sourceDevice];
  canAddAccessibility = [sourceDevice3 canAddAccessibility];

  if (canAddAccessibility)
  {
    v39 = objc_alloc_init(WLAccessibilityMigrator);
    payload10 = [migratorsCopy payload];
    accessibilitySettings = [payload10 accessibilitySettings];
    [(WLAccessibilityMigrator *)v39 setFeaturePayload:accessibilitySettings];

    [v4 addObject:v39];
  }

  v42 = [WLAppMigrator alloc];
  sourceDevice4 = [migratorsCopy sourceDevice];
  sqlController2 = [migratorsCopy sqlController];
  v45 = [(WLAppMigrator *)v42 initWithDevice:sourceDevice4 sqlController:sqlController2];

  [v4 addObject:v45];

  return v4;
}

- (id)fetchSummary:(id)summary
{
  v31[2] = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  metadata = [summaryCopy metadata];
  [metadata setState:1];

  delegate = [summaryCopy delegate];
  [delegate dataMigrator:self didUpdateMigrationState:1];

  date = [MEMORY[0x277CBEAA8] date];
  metadata2 = [summaryCopy metadata];
  [metadata2 setCommunicationDate:date];

  sqlController = [summaryCopy sqlController];
  [sqlController deleteMetadataForAllDevices];

  sqlController2 = [summaryCopy sqlController];
  [sqlController2 deleteAccountsAndSummariesForAllDevices];

  dataCoordinator = [summaryCopy dataCoordinator];
  downloadsPath = [dataCoordinator downloadsPath];
  [(WLMigrator *)self _deleteDownloadsPath:downloadsPath];

  sqlController3 = [summaryCopy sqlController];
  [sqlController3 deleteMigratableAppsForAllDevices];

  sqlController4 = [summaryCopy sqlController];
  [sqlController4 deleteSuggestedAppBundleIDsForAllDevices];

  sqlController5 = [summaryCopy sqlController];
  [sqlController5 deleteGroupMessageInfoForAllDevices];

  sqlController6 = [summaryCopy sqlController];
  [sqlController6 deleteMessagePhoneNumbersForAllDevices];

  sqlController7 = [summaryCopy sqlController];
  [sqlController7 deleteStatisticsForAllDevices];

  sqlController8 = [summaryCopy sqlController];
  metadata3 = [summaryCopy metadata];
  sourceDevice = [summaryCopy sourceDevice];
  [sqlController8 insertMetadata:metadata3 forSourceDevice:sourceDevice];

  v21 = [(WLMigrator *)self _fetchAccountsAndSummariesWithContext:summaryCopy];

  if (v21)
  {
    selfCopy = self;
    _WLLog();
    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277D7B8F8];
    v24 = *MEMORY[0x277D7B8F0];
    v30[0] = *MEMORY[0x277CCA7E8];
    v30[1] = v24;
    v31[0] = v21;
    v31[1] = @"metaSummaries";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:{2, selfCopy, v21}];
    v26 = [v22 errorWithDomain:v23 code:2 userInfo:v25];
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)selectDataTypes:(id)types
{
  v26[2] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  metadata = [typesCopy metadata];
  [metadata setState:2];

  sourceDevice = [typesCopy sourceDevice];
  isSelectingDataTypeInHandshake = [sourceDevice isSelectingDataTypeInHandshake];

  if ((isSelectingDataTypeInHandshake & 1) == 0)
  {
    delegate = [typesCopy delegate];
    [delegate dataMigrator:self didUpdateMigrationState:2];
  }

  date = [MEMORY[0x277CBEAA8] date];
  metadata2 = [typesCopy metadata];
  [metadata2 setCommunicationDate:date];

  sqlController = [typesCopy sqlController];
  metadata3 = [typesCopy metadata];
  sourceDevice2 = [typesCopy sourceDevice];
  [sqlController setMetadata:metadata3 forSourceDevice:sourceDevice2];

  v14 = [(WLMigrator *)self _selectDataTypesWithContext:typesCopy];
  if (v14)
  {
    v15 = v14;
    selfCopy = self;
    v24 = v14;
    _WLLog();
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D7B8F8];
    v18 = *MEMORY[0x277D7B8F0];
    v25[0] = *MEMORY[0x277CCA7E8];
    v25[1] = v18;
    v26[0] = v15;
    v26[1] = @"metaSelectingDataTypes";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:{2, selfCopy, v24}];
    v20 = [v16 errorWithDomain:v17 code:2 userInfo:v19];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)downloadData:(id)data
{
  v48[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  metadata = [dataCopy metadata];
  [metadata setState:3];

  delegate = [dataCopy delegate];
  [delegate dataMigrator:self didUpdateMigrationState:3];

  date = [MEMORY[0x277CBEAA8] date];
  metadata2 = [dataCopy metadata];
  [metadata2 setCommunicationDate:date];

  sqlController = [dataCopy sqlController];
  v10 = +[WLStatistics aggregateContentType];
  v11 = [sqlController statisticsForContentType:v10];
  [dataCopy setAggregateStatistics:v11];

  [(WLMigrator *)self _setProgressTo:dataCopy context:0.0];
  v12 = dispatch_semaphore_create(0);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __27__WLMigrator_downloadData___block_invoke;
  v45[3] = &unk_279EB54A0;
  v13 = v12;
  v46 = v13;
  [(WLMigrator *)self _updateSourceWithProgress:dataCopy remainingTime:v45 context:0.0 completion:0.0];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  sqlController2 = [dataCopy sqlController];
  metadata3 = [dataCopy metadata];
  sourceDevice = [dataCopy sourceDevice];
  [sqlController2 setMetadata:metadata3 forSourceDevice:sourceDevice];

  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__2;
  v43 = __Block_byref_object_dispose__2;
  v44 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __27__WLMigrator_downloadData___block_invoke_115;
  v38[3] = &unk_279EB5990;
  v38[4] = &v39;
  v17 = [(WLMigrator *)self _downloadDataWithContext:dataCopy failureDetailsBlock:v38];
  if (v17)
  {
    selfCopy = self;
    _WLLog();
    v18 = objc_alloc(MEMORY[0x277CBEB38]);
    v19 = *MEMORY[0x277D7B908];
    v47[0] = *MEMORY[0x277CCA7E8];
    v47[1] = v19;
    v48[0] = v17;
    v48[1] = MEMORY[0x277CBEC38];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:{2, selfCopy, v17}];
    v21 = [v18 initWithDictionary:v20];

    v22 = v40[5];
    if (v22)
    {
      [v21 setObject:v22 forKeyedSubscript:*MEMORY[0x277D7B8F0]];
    }

    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7B8F8] code:2 userInfo:v21];

    v24 = v23;
    v25 = v24;
  }

  else
  {
    [(WLMigrator *)self _setProgressTo:dataCopy context:0.8];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __27__WLMigrator_downloadData___block_invoke_2;
    v36[3] = &unk_279EB54A0;
    v26 = v13;
    v37 = v26;
    [(WLMigrator *)self _updateSourceWithProgress:dataCopy remainingTime:v36 context:1.0 completion:0.0];
    dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    [(WLMigrator *)self _reportTimeEstimatesWithContext:dataCopy];
    throughputSamples = [dataCopy throughputSamples];
    [throughputSamples removeAllObjects];

    [dataCopy setTimeEstimateAccuracyTracker:0];
    v28 = dispatch_semaphore_create(0);
    v29 = +[WLWiFiController sharedInstance];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __27__WLMigrator_downloadData___block_invoke_3;
    v34[3] = &unk_279EB5478;
    v30 = v28;
    v35 = v30;
    [v29 disableSoftAPWithCompletion:v34];

    dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
    v25 = 0;
    v24 = v37;
  }

  _Block_object_dispose(&v39, 8);
  v31 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)importData:(id)data
{
  v43[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  metadata = [dataCopy metadata];
  [metadata setState:4];

  delegate = [dataCopy delegate];
  [delegate dataMigrator:self didUpdateMigrationState:4];

  date = [MEMORY[0x277CBEAA8] date];
  aggregateStatistics = [dataCopy aggregateStatistics];
  [aggregateStatistics setImportStartDate:date];

  v9 = +[WLMigrator _bytesFreeOnDevice];
  aggregateStatistics2 = [dataCopy aggregateStatistics];
  [aggregateStatistics2 setImportStartBytesFree:v9];

  delegate2 = [dataCopy delegate];
  [delegate2 dataMigratorDidBecomeRestartable:self];

  [(WLMigrator *)self _setProgressTo:dataCopy context:0.8];
  sqlController = [dataCopy sqlController];
  metadata2 = [dataCopy metadata];
  sourceDevice = [dataCopy sourceDevice];
  [sqlController setMetadata:metadata2 forSourceDevice:sourceDevice];

  sqlController2 = [dataCopy sqlController];
  aggregateStatistics3 = [dataCopy aggregateStatistics];
  [sqlController2 updateStatistics:aggregateStatistics3];

  if (+[WLMigrator _shouldTerminateMigrationBeforeImport])
  {
    v17 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v43[0] = @"Terminating migration before import as requested";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v19 = [v17 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v18];

    v20 = v19;
  }

  else
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__2;
    v38 = __Block_byref_object_dispose__2;
    v39 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __25__WLMigrator_importData___block_invoke;
    v33[3] = &unk_279EB5990;
    v33[4] = &v34;
    v21 = [(WLMigrator *)self _importDataWithContext:dataCopy failureDetailsBlock:v33];
    if (v21)
    {
      selfCopy = self;
      _WLLog();
      v22 = objc_alloc(MEMORY[0x277CBEB38]);
      v40 = *MEMORY[0x277CCA7E8];
      v41 = v21;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:{1, selfCopy, v21}];
      date2 = [v22 initWithDictionary:v23];

      v25 = v35[5];
      if (v25)
      {
        [date2 setObject:v25 forKeyedSubscript:*MEMORY[0x277D7B8F0]];
      }

      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7B8F8] code:3 userInfo:date2];

      v20 = v26;
    }

    else
    {
      v27 = +[WLMigrator _bytesFreeOnDevice];
      aggregateStatistics4 = [dataCopy aggregateStatistics];
      [aggregateStatistics4 setImportEndBytesFree:v27];

      date2 = [MEMORY[0x277CBEAA8] date];
      aggregateStatistics5 = [dataCopy aggregateStatistics];
      [aggregateStatistics5 setImportEndDate:date2];

      v20 = 0;
    }

    _Block_object_dispose(&v34, 8);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)runPostMigrationTasks:(id)tasks
{
  tasksCopy = tasks;
  metadata = [tasksCopy metadata];
  [metadata setState:5];

  [(WLMigrator *)self _setProgressTo:tasksCopy context:1.0];
  return 0;
}

- (id)finishMigration:(id)migration
{
  v39 = *MEMORY[0x277D85DE8];
  migrationCopy = migration;
  metadata = [migrationCopy metadata];
  [metadata setState:6];

  [(WLMigrator *)self _setProgressTo:migrationCopy context:1.0];
  delegate = [migrationCopy delegate];
  [delegate dataMigrator:self didUpdateMigrationState:5];

  sqlController = [migrationCopy sqlController];
  migrationErrors = [sqlController migrationErrors];
  [migrationCopy setImportErrors:migrationErrors];

  importErrors = [migrationCopy importErrors];
  v10 = [importErrors count];

  if (v10)
  {
    [migrationCopy importErrors];
    v33 = v32 = self;
    _WLLog();
  }

  v11 = *MEMORY[0x277CBF008];
  v12 = *MEMORY[0x277CBF040];
  v13 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(@"MigratedFromAndroid", *MEMORY[0x277CBED28], *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  CFPreferencesSetValue(@"MigratedFromAndroidToiOSVersion", +[WLMigrator _systemVersion], v11, v12, v13);
  metadata2 = [migrationCopy metadata];
  deviceType = [metadata2 deviceType];
  CFPreferencesSetValue(@"MigratedFromAndroidDeviceType", deviceType, v11, v12, v13);

  metadata3 = [migrationCopy metadata];
  deviceOSVersion = [metadata3 deviceOSVersion];
  CFPreferencesSetValue(@"MigratedFromAndroidOSVersion", deviceOSVersion, v11, v12, v13);

  v18 = objc_alloc_init(MEMORY[0x277D7B868]);
  [v18 setIsEnabled:0];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  migrators = [migrationCopy migrators];
  v20 = [migrators countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(migrators);
        }

        v24 = *(*(&v34 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          importErrorCount = [v24 importErrorCount];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            image = [v18 image];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            image = [v18 video];
          }

          v27 = image;
          if (image)
          {
            [image setImportErrorCount:importErrorCount];
          }
        }
      }

      v21 = [migrators countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v21);
  }

  delegate2 = [migrationCopy delegate];
  importErrors2 = [migrationCopy importErrors];
  [delegate2 dataMigratorDidFinish:self withImportErrors:objc_msgSend(importErrors2 context:{"count") != 0, v18, v32, v33}];

  v30 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)_finishMigrationWithError:(id)error context:(id)context disconnected:(BOOL)disconnected completion:(id)completion
{
  errorCopy = error;
  contextCopy = context;
  completionCopy = completion;
  if (!errorCopy)
  {
    metadata = [contextCopy metadata];
    [metadata setCrashCount:{objc_msgSend(metadata, "crashCount") - 1}];

    sqlController = [contextCopy sqlController];
    metadata2 = [contextCopy metadata];
    sourceDevice = [contextCopy sourceDevice];
    [sqlController setMetadata:metadata2 forSourceDevice:sourceDevice];

    mEMORY[0x277D7B8D0] = [MEMORY[0x277D7B8D0] sharedInstance];
    payload = [contextCopy payload];
    [mEMORY[0x277D7B8D0] migratorDidFinish:payload];

    [(WLMigrator *)self _logStatisticsAndSendStatisticsTelemetryWithContext:contextCopy];
    importErrors = [contextCopy importErrors];
    v32 = [importErrors count];

    if (v32)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!disconnected)
  {
    objc_initWeak(&location, self);
    v33 = +[WLWiFiController sharedInstance];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __72__WLMigrator__finishMigrationWithError_context_disconnected_completion___block_invoke;
    v34[3] = &unk_279EB5710;
    objc_copyWeak(&v38, &location);
    v35 = errorCopy;
    v36 = contextCopy;
    v37 = completionCopy;
    [v33 disableSoftAPWithCompletion:v34];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
    goto LABEL_14;
  }

  mEMORY[0x277D7B8D0]2 = [MEMORY[0x277D7B8D0] sharedInstance];
  payload2 = [contextCopy payload];
  [mEMORY[0x277D7B8D0]2 migratorDidFinish:payload2];

  delegate = [contextCopy delegate];
  [delegate dataMigrator:self didFailWithError:errorCopy];

  metadata3 = [contextCopy metadata];
  state = [metadata3 state];

  if (state == 4)
  {
LABEL_4:
    sqlController2 = [contextCopy sqlController];
    [sqlController2 deleteMetadataForAllDevices];

    sqlController3 = [contextCopy sqlController];
    [sqlController3 deleteAccountsAndSummariesForAllDevices];

    sqlController4 = [contextCopy sqlController];
    [sqlController4 deleteStatisticsForAllDevices];

    dataCoordinator = [contextCopy dataCoordinator];
    downloadsPath = [dataCoordinator downloadsPath];
    [(WLMigrator *)self _deleteDownloadsPath:downloadsPath];
  }

LABEL_5:
  urlSessionController = [contextCopy urlSessionController];
  [urlSessionController invalidate];

  migrators = [contextCopy migrators];
  [migrators removeAllObjects];

  if (+[WLMigrator stashDataLocally])
  {
    [WLMigrator setStashDataLocally:0];
  }

  if ([contextCopy powerAssertion])
  {
    CFRelease([contextCopy powerAssertion]);
    [contextCopy setPowerAssertion:0];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_14:
}

void __72__WLMigrator__finishMigrationWithError_context_disconnected_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _finishMigrationWithError:*(a1 + 32) context:*(a1 + 40) disconnected:1 completion:*(a1 + 48)];
}

- (id)_fetchAccountsAndSummariesWithContext:(id)context
{
  v48 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__2;
  v45 = __Block_byref_object_dispose__2;
  v46 = 0;
  sqlController = [contextCopy sqlController];
  v5 = +[WLStatistics fetchContentType];
  v27 = [sqlController statisticsForContentType:v5];

  date = [MEMORY[0x277CBEAA8] date];
  [v27 setFetchStartBytesFree:{+[WLMigrator _bytesFreeOnDevice](WLMigrator, "_bytesFreeOnDevice")}];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  migrators = [contextCopy migrators];
  v7 = [migrators countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v7)
  {
    v25 = *v38;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v38 != v25)
      {
        objc_enumerationMutation(migrators);
      }

      v9 = *(*(&v37 + 1) + 8 * v8);
      date2 = [MEMORY[0x277CBEAA8] date];
      v11 = dispatch_semaphore_create(0);
      dataCoordinator = [contextCopy dataCoordinator];
      dataSource = [contextCopy dataSource];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __52__WLMigrator__fetchAccountsAndSummariesWithContext___block_invoke;
      v35[3] = &unk_279EB59B8;
      v35[4] = v9;
      v36 = contextCopy;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __52__WLMigrator__fetchAccountsAndSummariesWithContext___block_invoke_2;
      v33[3] = &unk_279EB59B8;
      v33[4] = v9;
      v34 = v36;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __52__WLMigrator__fetchAccountsAndSummariesWithContext___block_invoke_3;
      v28[3] = &unk_279EB59E0;
      v32 = &v41;
      v28[4] = self;
      v29 = v34;
      v30 = v9;
      v14 = v11;
      v31 = v14;
      [dataCoordinator fetchAccountsAndSummariesFromSource:dataSource forMigrator:v9 statistics:v27 accountsRequestDurationBlock:v35 summariesRequestDurationBlock:v33 completion:v28];

      dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
      date3 = [MEMORY[0x277CBEAA8] date];
      [date3 timeIntervalSinceDate:date2];
      v17 = v16;

      [v9 addWorkingTime:v17];
      LOBYTE(date3) = v42[5] == 0;

      if ((date3 & 1) == 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        v7 = [migrators countByEnumeratingWithState:&v37 objects:v47 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [v27 setFetchEndBytesFree:{+[WLMigrator _bytesFreeOnDevice](WLMigrator, "_bytesFreeOnDevice")}];
  date4 = [MEMORY[0x277CBEAA8] date];
  [date4 timeIntervalSinceDate:date];
  [v27 setFetchDuration:vcvtpd_u64_f64(v19)];
  sqlController2 = [contextCopy sqlController];
  [sqlController2 updateStatistics:v27];

  v21 = v42[5];
  _Block_object_dispose(&v41, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void __52__WLMigrator__fetchAccountsAndSummariesWithContext___block_invoke(uint64_t a1, double a2)
{
  v11 = [MEMORY[0x277D7B8D0] sharedInstance];
  v4 = [*(a1 + 32) contentType];
  v5 = [*(a1 + 40) metadata];
  v6 = [v5 deviceOSVersion];
  v7 = [*(a1 + 40) metadata];
  v8 = [v7 deviceModel];
  v9 = [*(a1 + 40) metadata];
  v10 = [v9 clientVersion];
  [v11 preparatoryDataDidComplete:@"accounts" contentType:v4 duration:v6 android:v8 model:v10 version:a2];
}

void __52__WLMigrator__fetchAccountsAndSummariesWithContext___block_invoke_2(uint64_t a1, double a2)
{
  v11 = [MEMORY[0x277D7B8D0] sharedInstance];
  v4 = [*(a1 + 32) contentType];
  v5 = [*(a1 + 40) metadata];
  v6 = [v5 deviceOSVersion];
  v7 = [*(a1 + 40) metadata];
  v8 = [v7 deviceModel];
  v9 = [*(a1 + 40) metadata];
  v10 = [v9 clientVersion];
  [v11 preparatoryDataDidComplete:@"summaries" contentType:v4 duration:v6 android:v8 model:v10 version:a2];
}

void __52__WLMigrator__fetchAccountsAndSummariesWithContext___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v28 = a3;
  v8 = a4;
  if (v8)
  {
    if ([*(a1 + 32) _shouldTerminateMigrationOnError])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v9);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = [*(a1 + 40) sqlController];
        v17 = *(a1 + 48);
        v18 = [*(a1 + 40) sourceDevice];
        [v15 setSqlID:{objc_msgSend(v16, "insertAccount:migrator:device:", v15, v17, v18)}];
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = v28;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v29 + 1) + 8 * j);
        v25 = [*(a1 + 40) sqlController];
        v26 = [v24 account];
        [v24 setSqlID:{objc_msgSend(v25, "insertRecordSummary:account:", v24, v26)}];
      }

      v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v21);
  }

  dispatch_semaphore_signal(*(a1 + 56));
  v27 = *MEMORY[0x277D85DE8];
}

- (id)_selectDataTypesWithContext:(id)context
{
  v94 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__2;
  v89 = __Block_byref_object_dispose__2;
  v90 = 0;
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  migrators = [contextCopy migrators];
  v5 = [v3 initWithCapacity:{objc_msgSend(migrators, "count")}];

  v55 = dispatch_semaphore_create(0);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  migrators2 = [contextCopy migrators];
  v7 = [migrators2 countByEnumeratingWithState:&v81 objects:v93 count:16];
  if (v7)
  {
    v8 = *v82;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v82 != v8)
        {
          objc_enumerationMutation(migrators2);
        }

        v10 = *(*(&v81 + 1) + 8 * i);
        sqlController = [contextCopy sqlController];
        sourceDevice = [contextCopy sourceDevice];
        v13 = [sqlController accountsForMigrator:v10 device:sourceDevice];

        if ([v13 count])
        {
          contentType = [v10 contentType];
          _WLLog();

          sqlController2 = [contextCopy sqlController];
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __42__WLMigrator__selectDataTypesWithContext___block_invoke;
          v77[3] = &unk_279EB5A08;
          v77[4] = self;
          v77[5] = v10;
          v80 = &v85;
          v78 = v5;
          v15 = v55;
          v79 = v15;
          [sqlController2 totalSummaryItemSizeForAccounts:v13 addOverhead:1 completion:v77];

          dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
          LOBYTE(sqlController2) = v86[5] == 0;

          if ((sqlController2 & 1) == 0)
          {

            goto LABEL_12;
          }
        }
      }

      v7 = [migrators2 countByEnumeratingWithState:&v81 objects:v93 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (!v86[5])
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    allKeys = [v5 allKeys];
    v17 = [allKeys countByEnumeratingWithState:&v73 objects:v92 count:16];
    if (v17)
    {
      v18 = *v74;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v74 != v18)
          {
            objc_enumerationMutation(allKeys);
          }

          v20 = *(*(&v73 + 1) + 8 * j);
          v21 = [v5 objectForKeyedSubscript:v20];
          unsignedLongLongValue = [v21 unsignedLongLongValue];

          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(unsignedLongLongValue * 1.2)];
          [v5 setObject:v23 forKeyedSubscript:v20];
        }

        v17 = [allKeys countByEnumeratingWithState:&v73 objects:v92 count:16];
      }

      while (v17);
    }
  }

  v24 = +[WLAppMigrator dataType];
  v25 = [v5 objectForKeyedSubscript:v24];

  if (v25)
  {
    v26 = +[WLAppMigrator dataType];
    [v5 removeObjectForKey:v26];
  }

  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__2;
  v71 = __Block_byref_object_dispose__2;
  v72 = 0;
  if (!v86[5])
  {
    _WLLog();
    sourceDevice2 = [contextCopy sourceDevice];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __42__WLMigrator__selectDataTypesWithContext___block_invoke_2;
    v63[3] = &unk_279EB5A30;
    v63[4] = self;
    v65 = &v67;
    v66 = &v85;
    v28 = v55;
    v64 = v28;
    [(WLMigrator *)self _selectFromDataTypeToSizeMap:v5 device:sourceDevice2 completion:v63];

    dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v25)
  {
    v29 = v68[5];
    v30 = +[WLAppMigrator dataType];
    v31 = [v29 arrayByAddingObject:v30];
    v32 = v68[5];
    v68[5] = v31;
  }

  v33 = v86[5];
  if (!v33)
  {
    v34 = objc_alloc(MEMORY[0x277CBEB18]);
    migrators3 = [contextCopy migrators];
    v57 = [v34 initWithCapacity:{objc_msgSend(migrators3, "count")}];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    migrators4 = [contextCopy migrators];
    v37 = [migrators4 countByEnumeratingWithState:&v59 objects:v91 count:16];
    if (v37)
    {
      v38 = *v60;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v60 != v38)
          {
            objc_enumerationMutation(migrators4);
          }

          v40 = *(*(&v59 + 1) + 8 * k);
          v41 = v68[5];
          dataType = [v40 dataType];
          LODWORD(v41) = [v41 containsObject:dataType];

          if (v41)
          {
            [v57 addObject:v40];
            sqlController3 = [contextCopy sqlController];
            contentType2 = [v40 contentType];
            sqlController5 = [sqlController3 statisticsForContentType:contentType2];

            [sqlController5 setSelectedForMigration:1];
            sqlController4 = [contextCopy sqlController];
            [sqlController4 updateStatistics:sqlController5];

            dataType2 = [v40 dataType];
            v48 = [v5 objectForKeyedSubscript:dataType2];
            unsignedLongLongValue2 = [v48 unsignedLongLongValue];

            [v40 enable];
            [v40 setEstimatedDataSize:unsignedLongLongValue2];
          }

          else
          {
            sqlController5 = [contextCopy sqlController];
            sourceDevice3 = [contextCopy sourceDevice];
            [sqlController5 deleteAccountsAndSummariesForMigrator:v40 device:sourceDevice3];
          }
        }

        v37 = [migrators4 countByEnumeratingWithState:&v59 objects:v91 count:16];
      }

      while (v37);
    }

    [contextCopy setMigrators:v57];
    v33 = v86[5];
  }

  v51 = v33;
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v85, 8);
  v52 = *MEMORY[0x277D85DE8];

  return v51;
}

void __42__WLMigrator__selectDataTypesWithContext___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) contentType];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  _WLLog();

  if (v17)
  {
    v7 = *(*(a1 + 64) + 8);
    v8 = v17;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_6;
    }

    v10 = *(a1 + 48);
    v11 = [*(a1 + 40) dataType];
    v9 = [v10 objectForKeyedSubscript:v11];

    v12 = [v9 unsignedLongLongValue];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12 + a2];
    v14 = *(a1 + 48);
    v15 = [*(a1 + 40) dataType];
    [v14 setObject:v13 forKeyedSubscript:v15];
  }

LABEL_6:
  dispatch_semaphore_signal(*(a1 + 56));
}

void __42__WLMigrator__selectDataTypesWithContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v12 = a3;
  v11 = *(a1 + 32);
  _WLLog();
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v13 = v5;

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v12;
  v10 = v12;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_selectFromDataTypeToSizeMap:(id)map device:(id)device completion:(id)completion
{
  mapCopy = map;
  deviceCopy = device;
  completionCopy = completion;
  if ([deviceCopy socketPort])
  {
    objc_initWeak(&location, self);
    v11 = dispatch_get_global_queue(25, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke;
    v13[3] = &unk_279EB5AF8;
    objc_copyWeak(&v17, &location);
    v13[4] = self;
    v14 = deviceCopy;
    v15 = mapCopy;
    v16 = completionCopy;
    dispatch_async(v11, v13);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    allKeys = [mapCopy allKeys];
    (*(completionCopy + 2))(completionCopy, allKeys, 0);
  }
}

void __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = -1;
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__2;
  v101 = __Block_byref_object_dispose__2;
  v102 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = *(a1 + 32);
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(*(a1 + 40), "socketPort")}];
  _WLLog();

  v5 = objc_alloc_init(WLSocketHandler);
  [WeakRetained setActiveSocketHandler:{v5, v4, v45}];
  v6 = [*(a1 + 40) ipAddress];
  v7 = [*(a1 + 40) socketPort];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_2;
  v93[3] = &unk_279EB5A58;
  v93[4] = *(a1 + 32);
  v95 = &v103;
  v96 = &v97;
  v8 = v3;
  v94 = v8;
  [WLSocketHandler lookupAndConnectToHost:v6 port:v7 completion:v93];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = dispatch_semaphore_create(0);
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = -1;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__2;
  v87 = __Block_byref_object_dispose__2;
  v88 = objc_alloc_init(WLSocketHandler);
  if (!v98[5])
  {
    v10 = +[WLDeviceDiscoveryController sharedInstance];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_3;
    v78[3] = &unk_279EB5A80;
    v78[4] = *(a1 + 32);
    v80 = &v97;
    v81 = &v89;
    v82 = &v83;
    v79 = v9;
    [v10 setNextIncomingConnectionHandler:v78];

    if (!v98[5])
    {
      [(WLSocketHandler *)v5 beginReadingIntoCacheFromSocket:*(v104 + 6)];
      v37 = *(a1 + 32);
      _WLLog();
      v11 = *(v104 + 6);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_4;
      v75[3] = &unk_279EB5AA8;
      v75[4] = *(a1 + 32);
      v77 = &v97;
      v12 = v8;
      v76 = v12;
      [(WLSocketHandler *)v5 sendCommand:@"DATASETSAVAILABLE" toSocket:v11 completion:v75, v37];
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);

      if (!v98[5])
      {
        v38 = *(a1 + 32);
        _WLLog();
        v13 = v98;
        obj = v98[5];
        [(WLSocketHandler *)v5 waitForCommand:@"OK" fromReadCacheReturningError:&obj, v38];
        objc_storeStrong(v13 + 5, obj);
        v36 = *(a1 + 32);
        v46 = v98[5];
        _WLLog();
        if (!v98[5])
        {
          v68 = 0;
          v69 = &v68;
          v70 = 0x3032000000;
          v71 = __Block_byref_object_copy__2;
          v72 = __Block_byref_object_dispose__2;
          v73 = [WLMigrator _dataTypesAndSizesXMLDataFromMap:*(a1 + 48), v36, v46];
          v14 = *(a1 + 32);
          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          v47 = [v15 initWithData:v69[5] encoding:4];
          _WLLog();

          v16 = [v69[5] bytes];
          v17 = [v69[5] length];
          v18 = *(v104 + 6);
          v64[0] = MEMORY[0x277D85DD0];
          v64[1] = 3221225472;
          v64[2] = __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_5;
          v64[3] = &unk_279EB5AD0;
          v64[4] = *(a1 + 32);
          v66 = &v97;
          v67 = &v68;
          v19 = v12;
          v65 = v19;
          [(WLSocketHandler *)v5 writeBytes:v16 length:v17 toSocket:v18 completion:v64];
          dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);

          _Block_object_dispose(&v68, 8);
          if (!v98[5])
          {
            v39 = *(a1 + 32);
            _WLLog();
            v20 = v98;
            v63 = v98[5];
            [(WLSocketHandler *)v5 waitForCommand:@"OK" fromReadCacheReturningError:&v63, v39];
            objc_storeStrong(v20 + 5, v63);
            v36 = *(a1 + 32);
            v46 = v98[5];
            _WLLog();
          }
        }
      }
    }
  }

  [(WLSocketHandler *)v5 endReadingIntoCache:v36];
  v21 = v98;
  if (!v98[5])
  {
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v21 = v98;
    if (!v98[5])
    {
      [WeakRetained setActiveSocketHandler:v84[5]];
      v41 = *(a1 + 32);
      _WLLog();
      v22 = v84[5];
      v23 = v98;
      v62 = v98[5];
      [v22 waitForCommand:@"DATASETSSELECTED" fromReadCacheReturningError:{&v62, v41}];
      objc_storeStrong(v23 + 5, v62);
      v40 = *(a1 + 32);
      v48 = v98[5];
      _WLLog();
      v21 = v98;
      if (!v98[5])
      {
        v42 = *(a1 + 32);
        _WLLog();
        v24 = v84[5];
        v25 = *(v90 + 6);
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_6;
        v59[3] = &unk_279EB5AA8;
        v59[4] = *(a1 + 32);
        v61 = &v97;
        v26 = v8;
        v60 = v26;
        [v24 sendCommand:@"OK" toSocket:v25 completion:{v59, v42, v48}];
        dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);

        v21 = v98;
      }
    }
  }

  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__2;
  v72 = __Block_byref_object_dispose__2;
  v73 = 0;
  if (!v21[5])
  {
    v43 = *(a1 + 32);
    _WLLog();
    v27 = v84[5];
    v28 = v98;
    v58 = v98[5];
    v29 = [v27 waitForDataFromReadCacheReturningError:{&v58, v43}];
    objc_storeStrong(v28 + 5, v58);
    v40 = *(a1 + 32);
    v49 = v98[5];
    _WLLog();
    if (!v98[5])
    {
      v30 = *(a1 + 32);
      v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v29 encoding:{4, v40, v49}];
      _WLLog();

      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_7;
      v54[3] = &unk_279EB5A30;
      v54[4] = *(a1 + 32);
      v56 = &v68;
      v57 = &v97;
      v31 = v8;
      v55 = v31;
      [WLMigrator _parseDataTypesXMLData:v29 completion:v54, v30, v50];
      dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (!v98[5])
    {
      v44 = *(a1 + 32);
      _WLLog();
      v32 = v84[5];
      v33 = *(v90 + 6);
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_8;
      v51[3] = &unk_279EB5AA8;
      v51[4] = *(a1 + 32);
      v53 = &v97;
      v34 = v8;
      v52 = v34;
      [v32 sendCommand:@"OK" toSocket:v33 completion:{v51, v44}];
      dispatch_semaphore_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  [v84[5] endReadingIntoCache];
  v35 = *(a1 + 56);
  if (v35)
  {
    (*(v35 + 16))(v35, v69[5], v98[5]);
  }

  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v89, 8);

  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v103, 8);
}

void __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  _WLLog();

  *(*(*(a1 + 48) + 8) + 24) = a2;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  _WLLog();

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (!v8)
  {
    *(*(*(a1 + 56) + 8) + 24) = a2;
    [*(*(*(a1 + 64) + 8) + 40) beginReadingIntoCacheFromSocket:{a2, v6, v7, 0}];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  _WLLog();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = *(a1 + 32);
  _WLLog();
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
  v10 = v4;

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  _WLLog();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = *(a1 + 32);
  _WLLog();
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v13 = v5;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __61__WLMigrator__selectFromDataTypeToSizeMap_device_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  _WLLog();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (id)_dataTypesAndSizesXMLDataFromMap:(id)map
{
  v30 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v4 = [@"<?xml version=1.0?>\r\n" stringByAppendingString:@"<root>\r\n"];
  v5 = [v4 stringByAppendingString:@"<datasetsavailable>\r\n"];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [mapCopy allKeys];
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v5 stringByAppendingString:@"<dataset>\r\n"];

        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"<datasetid>%@</datasetid>\r\n", v10];
        v13 = [v11 stringByAppendingString:v12];

        v14 = MEMORY[0x277CCACA8];
        v15 = [mapCopy objectForKeyedSubscript:v10];
        stringValue = [v15 stringValue];
        v17 = [v14 stringWithFormat:@"<datasetsize>%@</datasetsize>\r\n", stringValue];
        v18 = [v13 stringByAppendingString:v17];

        v5 = [v18 stringByAppendingString:@"</dataset>\r\n"];
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v19 = [v5 stringByAppendingString:@"</datasetsavailable>\r\n"];

  v20 = [v19 stringByAppendingString:@"</root>\r\n"];

  v21 = [v20 dataUsingEncoding:4];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (void)_parseDataTypesXMLData:(id)data completion:(id)completion
{
  v34[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  Memory = xmlReadMemory([dataCopy bytes], objc_msgSend(dataCopy, "length"), 0, 0, 0);
  if (Memory)
  {
    RootElement = xmlDocGetRootElement(Memory);
    if (RootElement)
    {
      children = RootElement->children;
      if (children)
      {
        while (1)
        {
          name = children->name;
          if (name)
          {
            if (!strcmp(name, "datasetsselected"))
            {
              break;
            }
          }

          children = children->next;
          if (!children)
          {
            goto LABEL_7;
          }
        }

        v17 = 0;
        goto LABEL_11;
      }

LABEL_7:
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D7B8F8];
      v29 = *MEMORY[0x277CCA450];
      v30 = @"Parsed xml has no datasetsselected node";
      v13 = MEMORY[0x277CBEAC0];
      v14 = &v30;
      v15 = &v29;
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D7B8F8];
      v31 = *MEMORY[0x277CCA450];
      v32 = @"Parsed xml has no root node";
      v13 = MEMORY[0x277CBEAC0];
      v14 = &v32;
      v15 = &v31;
    }
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D7B8F8];
    v33 = *MEMORY[0x277CCA450];
    v34[0] = @"Failed to parse xml";
    v13 = MEMORY[0x277CBEAC0];
    v14 = v34;
    v15 = &v33;
  }

  v16 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
  v17 = [v11 errorWithDomain:v12 code:1 userInfo:v16];

  children = 0;
LABEL_11:
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
  if (!children || v17 || (v17 = children->children) == 0)
  {
LABEL_19:
    if (completionCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v19 = v17->name;
    if (!v19 || strcmp(v19, "datasetid"))
    {
      goto LABEL_18;
    }

    Content = xmlNodeGetContent(v17);
    if (!Content)
    {
      break;
    }

    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:Content];
    [v18 addObject:v21];

LABEL_18:
    v17 = v17->next;
    if (!v17)
    {
      goto LABEL_19;
    }
  }

  v24 = MEMORY[0x277CCA9B8];
  v25 = *MEMORY[0x277D7B8F8];
  v27 = *MEMORY[0x277CCA450];
  v28 = @"Parsed xml has no value for datasetid";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v17 = [v24 errorWithDomain:v25 code:1 userInfo:v26];

  if (!completionCopy)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (v17)
  {
    v22 = 0;
  }

  else
  {
    v22 = v18;
  }

  (completionCopy)[2](completionCopy, v22, v17);
LABEL_24:

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_downloadDataWithContext:(id)context failureDetailsBlock:(id)block
{
  v156 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  blockCopy = block;
  v144 = 0;
  v145 = &v144;
  v146 = 0x3032000000;
  v147 = __Block_byref_object_copy__2;
  v148 = __Block_byref_object_dispose__2;
  v149 = 0;
  [contextCopy setCompletedDownloadSegmentCount:0];
  [contextCopy setExpectedDownloadSegmentsRemaining:0];
  [contextCopy setExpectedDownloadSegmentsRemainingForItemsWithEstimatedSizes:0];
  dsema = dispatch_semaphore_create(0);
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  migrators = [contextCopy migrators];
  v8 = [migrators countByEnumeratingWithState:&v140 objects:v155 count:16];
  if (v8)
  {
    v99 = *v141;
    obj = migrators;
    do
    {
      v9 = 0;
      v101 = v8;
      do
      {
        if (*v141 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v140 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        sqlController = [contextCopy sqlController];
        sourceDevice = [contextCopy sourceDevice];
        v14 = [sqlController accountsForMigrator:v10 device:sourceDevice];

        if ([v14 count])
        {
          contentType = [v10 contentType];
          _WLLog();

          sqlController2 = [contextCopy sqlController];
          v16 = [sqlController2 totalSummaryDownloadedSegmentCountForAccounts:v14];

          contentType2 = [v10 contentType];
          v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
          _WLLog();

          [contextCopy setCompletedDownloadSegmentCount:{objc_msgSend(contextCopy, "completedDownloadSegmentCount", self, contentType2, v81) + v16}];
          contentType3 = [v10 contentType];
          _WLLog();

          sqlController3 = [contextCopy sqlController];
          v19 = [sqlController3 totalSummaryDownloadSegmentCountForAccounts:v14];

          contentType4 = [v10 contentType];
          v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
          _WLLog();

          [contextCopy setExpectedDownloadSegmentsRemaining:{objc_msgSend(contextCopy, "expectedDownloadSegmentsRemaining", self, contentType4, v82) + v19}];
          if (objc_opt_respondsToSelector())
          {
            [contextCopy setExpectedDownloadSegmentsRemainingForItemsWithEstimatedSizes:{objc_msgSend(contextCopy, "expectedDownloadSegmentsRemainingForItemsWithEstimatedSizes") + v19}];
          }

          else
          {
            contentType5 = [v10 contentType];
            _WLLog();

            v136 = 0;
            v137 = &v136;
            v138 = 0x2020000000;
            v139 = 0;
            sqlController4 = [contextCopy sqlController];
            v133[0] = MEMORY[0x277D85DD0];
            v133[1] = 3221225472;
            v133[2] = __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke;
            v133[3] = &unk_279EB5B20;
            v133[4] = self;
            v133[5] = v10;
            v135 = &v136;
            v22 = dsema;
            v134 = v22;
            [sqlController4 totalSummaryItemSizeForAccounts:v14 addOverhead:0 completion:v133];

            dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
            [contextCopy setExpectedDownloadBytesRemainingForItemsWithConcreteSizes:{v137[3] + objc_msgSend(contextCopy, "expectedDownloadBytesRemainingForItemsWithConcreteSizes")}];

            _Block_object_dispose(&v136, 8);
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v101 != v9);
      migrators = obj;
      v8 = [obj countByEnumeratingWithState:&v140 objects:v155 count:16];
    }

    while (v8);
  }

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(contextCopy, "completedDownloadSegmentCount")}];
  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(contextCopy, "expectedDownloadSegmentsRemaining")}];
  _WLLog();

  if ([contextCopy completedDownloadSegmentCount])
  {
    completedDownloadSegmentCount = [contextCopy completedDownloadSegmentCount];
    expectedDownloadSegmentsRemaining = [contextCopy expectedDownloadSegmentsRemaining];
    completedDownloadSegmentCount2 = [contextCopy completedDownloadSegmentCount];
    if (completedDownloadSegmentCount / (completedDownloadSegmentCount2 + expectedDownloadSegmentsRemaining) * 0.8 <= 0.8)
    {
      v27 = completedDownloadSegmentCount / (completedDownloadSegmentCount2 + expectedDownloadSegmentsRemaining) * 0.8;
    }

    else
    {
      v27 = 0.8;
    }

    completedDownloadSegmentCount3 = [contextCopy completedDownloadSegmentCount];
    expectedDownloadSegmentsRemaining2 = [contextCopy expectedDownloadSegmentsRemaining];
    v85 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
    _WLLog();

    [(WLMigrator *)self _setProgressTo:contextCopy context:v27, completedDownloadSegmentCount3, expectedDownloadSegmentsRemaining2, v85];
    v30 = dispatch_semaphore_create(0);
    [contextCopy progress];
    v32 = v31;
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke_2;
    v131[3] = &unk_279EB54A0;
    v33 = v30;
    v132 = v33;
    [(WLMigrator *)self _updateSourceWithProgress:contextCopy remainingTime:v131 context:v32 completion:0.0];
  }

  date = [MEMORY[0x277CBEAA8] date];
  [contextCopy setThroughputSegmentStartDate:date];

  migrators2 = [contextCopy migrators];
  v36 = [migrators2 sortedArrayUsingComparator:&__block_literal_global_7];

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v87 = v36;
  v37 = [v87 countByEnumeratingWithState:&v127 objects:v154 count:16];
  v38 = 0;
  if (!v37)
  {
    goto LABEL_54;
  }

  v89 = *v128;
  while (2)
  {
    v91 = 0;
    v88 = v37;
    v39 = v38;
    do
    {
      if (*v128 != v89)
      {
        objc_enumerationMutation(v87);
      }

      v100 = *(*(&v127 + 1) + 8 * v91);

      [v100 setState:@"downloading"];
      sqlController5 = [contextCopy sqlController];
      contentType6 = [v100 contentType];
      v98 = [sqlController5 statisticsForContentType:contentType6];

      date2 = [MEMORY[0x277CBEAA8] date];
      if ([(WLMigrator *)self _shouldForceDownloadError])
      {
        _WLLog();
        v68 = MEMORY[0x277CCA9B8];
        v152 = *MEMORY[0x277CCA470];
        v153 = @"Forced download error";
        v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v153 forKeys:&v152 count:{1, self}];
        v70 = [v68 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v69];
        v92 = v69;
        contentType7 = v145[5];
        v145[5] = v70;
LABEL_53:

        v38 = v100;
        goto LABEL_54;
      }

      v42 = objc_opt_respondsToSelector();
      sqlController6 = [contextCopy sqlController];
      sourceDevice2 = [contextCopy sourceDevice];
      v45 = [sqlController6 accountsForMigrator:v100 device:sourceDevice2];

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      date3 = v45;
      v47 = [date3 countByEnumeratingWithState:&v123 objects:v151 count:16];
      v92 = date3;
      if (!v47)
      {
        goto LABEL_46;
      }

      v48 = 0;
      v97 = v42 & 1;
      v93 = v47;
      v94 = *v124;
LABEL_25:
      v49 = 0;
      while (1)
      {
        if (*v124 != v94)
        {
          objc_enumerationMutation(v92);
        }

        v95 = v49;
        v50 = *(*(&v123 + 1) + 8 * v49);
        sqlController7 = [contextCopy sqlController];
        v52 = [sqlController7 summariesForAccount:v50];

        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v53 = v52;
        v54 = [v53 countByEnumeratingWithState:&v119 objects:v150 count:16];
        if (v54)
        {
          v55 = *v120;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v120 != v55)
              {
                objc_enumerationMutation(v53);
              }

              v57 = *(*(&v119 + 1) + 8 * i);
              if ([v57 didDownload])
              {
                identifier = [v57 identifier];
                [v50 identifier];
                v84 = v80 = identifier;
                selfCopy2 = self;
                _WLLog();
              }

              else
              {
                if ([v57 storeDataAsFile])
                {
                  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v57, "itemSize")}];
                  [v57 dataFilePath];
                  v84 = v80 = v59;
                  selfCopy2 = self;
                  _WLLog();

                  dataCoordinator = [contextCopy dataCoordinator];
                  dataSource = [contextCopy dataSource];
                  v116[0] = MEMORY[0x277D85DD0];
                  v116[1] = 3221225472;
                  v116[2] = __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke_5;
                  v116[3] = &unk_279EB5B68;
                  v116[4] = self;
                  v116[5] = v57;
                  v118 = v97;
                  v117 = contextCopy;
                  v111[0] = MEMORY[0x277D85DD0];
                  v111[1] = 3221225472;
                  v111[2] = __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke_7;
                  v111[3] = &unk_279EB5B90;
                  v111[4] = self;
                  v111[5] = v57;
                  v112 = v117;
                  v115 = &v144;
                  v113 = v98;
                  v114 = dsema;
                  [dataCoordinator downloadFileFromSource:dataSource forMigrator:v100 summary:v57 account:v50 segmentCompletion:v116 completion:v111];
                }

                else
                {
                  dataCoordinator2 = [contextCopy dataCoordinator];
                  dataSource2 = [contextCopy dataSource];
                  v103[0] = MEMORY[0x277D85DD0];
                  v103[1] = 3221225472;
                  v103[2] = __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke_8;
                  v103[3] = &unk_279EB5BB8;
                  v104 = contextCopy;
                  v105 = v57;
                  v106 = v98;
                  selfCopy3 = self;
                  v110 = v97;
                  v109 = &v144;
                  v108 = dsema;
                  [dataCoordinator2 downloadDataFromSource:dataSource2 forMigrator:v100 summary:v57 account:v50 completion:v103];
                }

                dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
                v48 = 1;
                if (v145[5])
                {
                  goto LABEL_41;
                }
              }
            }

            v54 = [v53 countByEnumeratingWithState:&v119 objects:v150 count:16];
          }

          while (v54);
        }

LABEL_41:

        v64 = v145[5] == 0;
        if (!v64)
        {
          break;
        }

        v49 = v95 + 1;
        if (v95 + 1 == v93)
        {
          v93 = [v92 countByEnumeratingWithState:&v123 objects:v151 count:16];
          if (v93)
          {
            goto LABEL_25;
          }

          break;
        }
      }

      if (v48)
      {
        date3 = [MEMORY[0x277CBEAA8] date];
        [date3 timeIntervalSinceDate:date2];
        v66 = vcvtpd_u64_f64(v65);
        [v98 setDownloadDuration:{objc_msgSend(v98, "downloadDuration") + v66}];
        sqlController8 = [contextCopy sqlController];
        [sqlController8 updateStatistics:v98];

        [v100 addWorkingTime:v66];
LABEL_46:
      }

      if (v145[5])
      {
        contentType7 = [v100 contentType];
        blockCopy[2](blockCopy, contentType7);
        goto LABEL_53;
      }

      [v100 setState:@"downloaded"];

      v38 = v100;
      v39 = v100;
      ++v91;
    }

    while (v91 != v88);
    v37 = [v87 countByEnumeratingWithState:&v127 objects:v154 count:16];
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_54:

  v72 = v145[5];
  if (v72 && v38)
  {
    [v38 setState:@"downloading_error"];
    v72 = v145[5];
  }

  v73 = v72;

  _Block_object_dispose(&v144, 8);
  v74 = *MEMORY[0x277D85DE8];

  return v73;
}

void __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) contentType];
  if (v8)
  {
    _WLLog();
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(*(a1 + 56) + 8) + 24)];
    _WLLog();

    *(*(*(a1 + 56) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{__59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke_4(v5, a2)}];
  v7 = MEMORY[0x277CCABB0];
  v8 = __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke_4(v6, v5);

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

uint64_t __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 storeRecordDataInDatabase])
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v2 potentiallyLargeRecordData])
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v16 = [*(a1 + 40) dataFilePath];
  _WLLog();

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = [MEMORY[0x277CBEAA8] date];
  [v5 _didFinishDownloadingSegmentOfSize:a2 expectedSize:a2 migratorEstimatesItemSizes:v6 endDate:v7 context:*(a1 + 48)];
  v9 = v8;

  v10 = dispatch_semaphore_create(0);
  v11 = *(a1 + 32);
  [*(a1 + 48) progress];
  v13 = v12;
  v14 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke_6;
  v17[3] = &unk_279EB54A0;
  v18 = v10;
  v15 = v10;
  [v11 _updateSourceWithProgress:v14 remainingTime:v17 context:v13 completion:v9];
  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
}

void __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke_7(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "itemSize")}];
  v11 = [*(a1 + 40) dataFilePath];
  _WLLog();

  if (v12)
  {
    if ([*(a1 + 32) _shouldTerminateMigrationOnError])
    {
      v5 = v12;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = [*(a1 + 48) sqlController];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) sourceDevice];
    [v6 setDidDownloadForSummary:v7 forSourceDevice:v8];

    v5 = 0;
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v5);
  v9 = *(a1 + 56);
  if (v12)
  {
    v10 = 0;
  }

  else
  {
    v10 = [*(a1 + 40) itemSize];
  }

  [v9 setDownloadByteCount:{objc_msgSend(v9, "downloadByteCount") + v10}];
  dispatch_semaphore_signal(*(a1 + 64));
}

void __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [*(a1 + 32) sqlController];
    [v8 setData:v5 forSummary:*(a1 + 40)];

    [*(a1 + 48) setDownloadByteCount:{objc_msgSend(*(a1 + 48), "downloadByteCount") + objc_msgSend(v5, "length")}];
    v9 = *(a1 + 56);
    v10 = [v5 length];
    v11 = [*(a1 + 40) itemSize];
    v12 = *(a1 + 80);
    v13 = [MEMORY[0x277CBEAA8] date];
    [v9 _didFinishDownloadingSegmentOfSize:v10 expectedSize:v11 migratorEstimatesItemSizes:v12 endDate:v13 context:*(a1 + 32)];
    v15 = v14;

    v16 = [*(a1 + 32) sqlController];
    v17 = *(a1 + 40);
    v18 = [*(a1 + 32) sourceDevice];
    [v16 setDidDownloadForSummary:v17 forSourceDevice:v18];

    v19 = dispatch_semaphore_create(0);
    v20 = *(a1 + 56);
    [*(a1 + 32) progress];
    v22 = v21;
    v23 = *(a1 + 32);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __59__WLMigrator__downloadDataWithContext_failureDetailsBlock___block_invoke_9;
    v26[3] = &unk_279EB54A0;
    v27 = v19;
    v24 = v19;
    [v20 _updateSourceWithProgress:v23 remainingTime:v26 context:v22 completion:v15];
    dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);

LABEL_8:
    v25 = 0;
    goto LABEL_9;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  if ([*(a1 + 56) _shouldTerminateMigrationOnError])
  {
    v25 = v7;
  }

  else
  {
    v25 = 0;
  }

LABEL_9:
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v25);
  dispatch_semaphore_signal(*(a1 + 64));
}

- (double)_didFinishDownloadingSegmentOfSize:(unint64_t)size expectedSize:(unint64_t)expectedSize migratorEstimatesItemSizes:(BOOL)sizes endDate:(id)date context:(id)context
{
  sizesCopy = sizes;
  dateCopy = date;
  contextCopy = context;
  [contextCopy setCompletedDownloadSegmentCount:{objc_msgSend(contextCopy, "completedDownloadSegmentCount") + 1}];
  [contextCopy setExpectedDownloadSegmentsRemaining:{objc_msgSend(contextCopy, "expectedDownloadSegmentsRemaining") - 1}];
  if (sizesCopy)
  {
    [contextCopy setExpectedDownloadSegmentsRemainingForItemsWithEstimatedSizes:{objc_msgSend(contextCopy, "expectedDownloadSegmentsRemainingForItemsWithEstimatedSizes") - 1}];
  }

  else
  {
    [contextCopy setExpectedDownloadBytesRemainingForItemsWithConcreteSizes:{objc_msgSend(contextCopy, "expectedDownloadBytesRemainingForItemsWithConcreteSizes") - expectedSize}];
  }

  while (1)
  {
    throughputSamples = [contextCopy throughputSamples];
    if ([throughputSamples count] < 0x14)
    {
      break;
    }

LABEL_8:
    throughputSamples2 = [contextCopy throughputSamples];
    [throughputSamples2 removeObjectAtIndex:0];

    throughputSamples3 = [contextCopy throughputSamples];
    firstObject = [throughputSamples3 firstObject];
    [contextCopy setThroughputBytesInCurrentPeriod:{objc_msgSend(contextCopy, "throughputBytesInCurrentPeriod") - objc_msgSend(firstObject, "bytes")}];

    [contextCopy setThroughputSegmentsInCurrentPeriod:{objc_msgSend(contextCopy, "throughputSegmentsInCurrentPeriod") - 1}];
  }

  throughputSamples4 = [contextCopy throughputSamples];
  firstObject2 = [throughputSamples4 firstObject];
  endDate = [firstObject2 endDate];
  [dateCopy timeIntervalSinceDate:endDate];
  v19 = v18;

  if (v19 > 120.0)
  {
    goto LABEL_8;
  }

  v23 = objc_alloc_init(WLThroughputSample);
  throughputSegmentStartDate = [contextCopy throughputSegmentStartDate];
  [(WLThroughputSample *)v23 setStartDate:throughputSegmentStartDate];

  [(WLThroughputSample *)v23 setEndDate:dateCopy];
  startDate = [(WLThroughputSample *)v23 startDate];
  [dateCopy timeIntervalSinceDate:startDate];
  [(WLThroughputSample *)v23 setDuration:?];

  [(WLThroughputSample *)v23 setBytes:size];
  [(WLThroughputSample *)v23 setExpectedBytes:expectedSize];
  [(WLThroughputSample *)v23 duration];
  v27 = v26;
  bytes = [(WLThroughputSample *)v23 bytes];
  [(WLThroughputSample *)v23 duration];
  if (v29 == 0.0)
  {
    v32 = 0;
  }

  else
  {
    bytes2 = [(WLThroughputSample *)v23 bytes];
    [(WLThroughputSample *)v23 duration];
    v32 = (bytes2 / v31);
  }

  v58 = v32;
  _WLLog();
  throughputSamples5 = [contextCopy throughputSamples];
  [throughputSamples5 addObject:v23];

  [contextCopy setThroughputBytesInCurrentPeriod:{objc_msgSend(contextCopy, "throughputBytesInCurrentPeriod") + -[WLThroughputSample bytes](v23, "bytes")}];
  [contextCopy setThroughputSegmentsInCurrentPeriod:{objc_msgSend(contextCopy, "throughputSegmentsInCurrentPeriod") + 1}];
  [contextCopy setThroughputSegmentStartDate:dateCopy];
  throughputSamples6 = [contextCopy throughputSamples];
  firstObject3 = [throughputSamples6 firstObject];
  startDate2 = [firstObject3 startDate];
  [dateCopy timeIntervalSinceDate:startDate2];
  v38 = v37;

  v39 = -1.0;
  if (v38 > 0.0)
  {
    if ([contextCopy throughputBytesInCurrentPeriod])
    {
      if ([contextCopy throughputSegmentsInCurrentPeriod])
      {
        v40 = [contextCopy throughputBytesInCurrentPeriod] / v38;
        v41 = [contextCopy throughputSegmentsInCurrentPeriod] / v38;
        throughputBytesInCurrentPeriod = [contextCopy throughputBytesInCurrentPeriod];
        throughputSegmentsInCurrentPeriod = [contextCopy throughputSegmentsInCurrentPeriod];
        v56 = v38;
        _WLLog();
        if (v40 > 0.0 && v41 > 0.0)
        {
          v43 = ([contextCopy expectedDownloadBytesRemainingForItemsWithConcreteSizes] / v40);
          v44 = ([contextCopy expectedDownloadSegmentsRemainingForItemsWithEstimatedSizes] / v41);
          v39 = (v44 + v43);
          expectedDownloadBytesRemainingForItemsWithConcreteSizes = [contextCopy expectedDownloadBytesRemainingForItemsWithConcreteSizes];
          expectedDownloadSegmentsRemainingForItemsWithEstimatedSizes = [contextCopy expectedDownloadSegmentsRemainingForItemsWithEstimatedSizes];
          v56 = *&expectedDownloadBytesRemainingForItemsWithConcreteSizes;
          _WLLog();
          if (v44 + v43)
          {
            v46 = @"all items";
            if (!v43)
            {
              v46 = @"items without sizes";
            }

            if (v44)
            {
              v47 = v46;
            }

            else
            {
              v47 = @"items with sizes";
            }

            date = [MEMORY[0x277CBEAA8] date];
            timeEstimateAccuracyTracker = [contextCopy timeEstimateAccuracyTracker];
            [timeEstimateAccuracyTracker didCalculateTimeEstimate:v39 atDate:date associatedObject:v47];
          }
        }
      }
    }
  }

  completedDownloadSegmentCount = [contextCopy completedDownloadSegmentCount];
  expectedDownloadSegmentsRemaining = [contextCopy expectedDownloadSegmentsRemaining];
  completedDownloadSegmentCount2 = [contextCopy completedDownloadSegmentCount];
  if (completedDownloadSegmentCount / (completedDownloadSegmentCount2 + expectedDownloadSegmentsRemaining) * 0.8 <= 0.8)
  {
    v53 = completedDownloadSegmentCount / (completedDownloadSegmentCount2 + expectedDownloadSegmentsRemaining) * 0.8;
  }

  else
  {
    v53 = 0.8;
  }

  v57 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
  _WLLog();

  [(WLMigrator *)self _setProgressTo:contextCopy context:v53, v57];
  if (v39 != -1.0)
  {
    delegate = [contextCopy delegate];
    [delegate dataMigrator:self didUpdateRemainingDownloadTime:v39];
  }

  return v39;
}

- (void)_reportTimeEstimatesWithContext:(id)context
{
  v3 = MEMORY[0x277CBEAA8];
  contextCopy = context;
  date = [v3 date];
  timeEstimateAccuracyTracker = [contextCopy timeEstimateAccuracyTracker];

  [timeEstimateAccuracyTracker estimatesDidResolveAtDate:date block:&__block_literal_global_362];
}

void __46__WLMigrator__reportTimeEstimatesWithContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x277D7B8D0];
  v9 = a5;
  v10 = [v8 sharedInstance];
  [v10 didResolveTimeEstimate:a2 forDownloadTask:v9 threshold:a3 actualTime:a4];
}

- (id)_importDataWithContext:(id)context failureDetailsBlock:(id)block
{
  v89 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  blockCopy = block;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  migrators = [contextCopy migrators];
  v61 = [migrators countByEnumeratingWithState:&v83 objects:v88 count:16];
  if (!v61)
  {

    v68 = 0;
    v8 = 0;
    goto LABEL_35;
  }

  v8 = 0;
  v68 = 0;
  obj = migrators;
  v60 = *v84;
  v9 = &selRef_createFileAtPath_contents_attributes_;
  v10 = &selRef_createFileAtPath_contents_attributes_;
  v11 = &selRef_createFileAtPath_contents_attributes_;
  v65 = blockCopy;
  while (2)
  {
    v12 = 0;
    v64 = v9[318];
    v13 = v8;
    v14 = v11[162];
    v63 = v10[175];
    do
    {
      if (*v84 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v66 = v12;
      v8 = *(*(&v83 + 1) + 8 * v12);

      [v8 setState:@"importing"];
      context = objc_autoreleasePoolPush();
      sqlController = [contextCopy sqlController];
      contentType = [v8 contentType];
      v17 = [sqlController statisticsForContentType:contentType];

      importStartDate = [v17 importStartDate];

      if (!importStartDate)
      {
        date = [MEMORY[0x277CBEAA8] date];
        [v17 setImportStartDate:date];

        [v17 setImportStartBytesFree:{+[WLMigrator _bytesFreeOnDevice](WLMigrator, "_bytesFreeOnDevice")}];
        sqlController2 = [contextCopy sqlController];
        [sqlController2 updateStatistics:v17];
      }

      sqlController3 = [contextCopy sqlController];
      sourceDevice = [contextCopy sourceDevice];
      v23 = [sqlController3 accountsForMigrator:v8 device:sourceDevice];

      if (objc_opt_respondsToSelector())
      {
        v59 = v17;
        sqlController4 = [contextCopy sqlController];
        v58 = v23;
        v25 = [sqlController4 summariesForAccounts:v23 sortedByModifiedDate:0];

        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v26 = v25;
        v27 = [v26 countByEnumeratingWithState:&v79 objects:v87 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v80;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v80 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v79 + 1) + 8 * i);
              v32 = objc_autoreleasePoolPush();
              sqlController5 = [contextCopy sqlController];
              v34 = [sqlController5 dataForSummary:v31];

              [v8 performPreImportPhaseForSummary:v31 data:v34];
              objc_autoreleasePoolPop(v32);
            }

            v28 = [v26 countByEnumeratingWithState:&v79 objects:v87 count:16];
          }

          while (v28);
        }

        v23 = v58;
        v17 = v59;
      }

      if (objc_opt_respondsToSelector())
      {
        importWillBegin = [v8 importWillBegin];

        if (importWillBegin)
        {
          contentType2 = [v8 contentType];
          v54 = v23;
          blockCopy = v65;
          v65[2](v65, contentType2);

          objc_autoreleasePoolPop(context);
          v68 = importWillBegin;
          goto LABEL_32;
        }

        v68 = 0;
      }

      sqlController6 = [contextCopy sqlController];
      v37 = [sqlController6 summariesForAccounts:v23 sortedByModifiedDate:1];

      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __57__WLMigrator__importDataWithContext_failureDetailsBlock___block_invoke;
      v77[3] = &unk_279EB5C00;
      v38 = contextCopy;
      v78 = v38;
      v39 = MEMORY[0x2743DF630](v77);
      dataCoordinator = [v38 dataCoordinator];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __57__WLMigrator__importDataWithContext_failureDetailsBlock___block_invoke_2;
      v75[3] = &unk_279EB5C28;
      v41 = v38;
      v76 = v41;
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __57__WLMigrator__importDataWithContext_failureDetailsBlock___block_invoke_3;
      v69[3] = &unk_279EB5C50;
      v69[4] = self;
      v42 = v37;
      v70 = v42;
      v43 = v23;
      v71 = v43;
      v44 = v41;
      v72 = v44;
      v73 = v8;
      v45 = v17;
      v74 = v45;
      [dataCoordinator importDataForMigrator:v8 fromProvider:v39 forSummaries:v42 summaryStart:v75 summaryCompletion:v69];

      if (objc_opt_respondsToSelector())
      {
        importDidEnd = [v8 importDidEnd];

        if (importDidEnd)
        {
          contentType3 = [v8 contentType];
          v65[2](v65, contentType3);
          v48 = 0;
          v68 = importDidEnd;
          goto LABEL_25;
        }

        v68 = 0;
      }

      [v45 setImportEndBytesFree:{+[WLMigrator _bytesFreeOnDevice](WLMigrator, "_bytesFreeOnDevice")}];
      date2 = [MEMORY[0x277CBEAA8] date];
      [v45 setImportEndDate:date2];

      sqlController7 = [v44 sqlController];
      [sqlController7 updateStatistics:v45];

      contentType3 = [v45 importEndDate];
      importStartDate2 = [v45 importStartDate];
      [contentType3 timeIntervalSinceDate:importStartDate2];
      [v8 addWorkingTime:v52];

      v48 = 1;
LABEL_25:

      objc_autoreleasePoolPop(context);
      if (!v48)
      {
        blockCopy = v65;
        goto LABEL_32;
      }

      [v8 setState:@"imported"];
      blockCopy = v65;
      v12 = v66 + 1;
      v13 = v8;
    }

    while (v66 + 1 != v61);
    v61 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
    v9 = &selRef_createFileAtPath_contents_attributes_;
    v10 = &selRef_createFileAtPath_contents_attributes_;
    v11 = &selRef_createFileAtPath_contents_attributes_;
    if (v61)
    {
      continue;
    }

    break;
  }

LABEL_32:

  if (v68 && v8)
  {
    [v8 setState:@"importing_error"];
  }

LABEL_35:

  v55 = *MEMORY[0x277D85DE8];

  return v68;
}

id __57__WLMigrator__importDataWithContext_failureDetailsBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sqlController];
  v5 = [v4 dataForSummary:v3];

  return v5;
}

void __57__WLMigrator__importDataWithContext_failureDetailsBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sqlController];
  [v4 setWillImportForSummary:v3];
}

void __57__WLMigrator__importDataWithContext_failureDetailsBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) migrators];
  [v7 _progressIncrementForImportedSummary:v5 summaries:v8 accounts:v9 migrators:v10];
  v12 = v11;

  [*(a1 + 32) _incrementProgressBy:*(a1 + 56) context:v12];
  if (v6)
  {
    v13 = [MEMORY[0x277D7B8D0] sharedInstance];
    v14 = [*(a1 + 64) contentType];
    [v13 importDidFailSilentlyForContentType:v14];

    v15 = [*(a1 + 56) sqlController];
    [v15 setMigrationError:v6 forSummary:v5];

    [*(a1 + 72) setImportFailedRecordCount:{objc_msgSend(*(a1 + 72), "importFailedRecordCount") + 1}];
  }

  else
  {
    v16 = [*(a1 + 56) sqlController];
    [v16 removeDataAndSetDidImportForSummary:v5];

    if ([v5 storeDataAsFile])
    {
      v17 = MEMORY[0x277CBEBC0];
      v18 = [v5 dataFilePath];
      v19 = [v17 fileURLWithPath:v18 isDirectory:0];

      v20 = [MEMORY[0x277CCAA00] defaultManager];
      v28 = 0;
      v21 = [v20 removeItemAtURL:v19 error:&v28];
      v6 = v28;

      v22 = *(a1 + 32);
      v26 = [MEMORY[0x277CCABB0] numberWithBool:v21];
      v27 = v6;
      v24 = v22;
      v25 = v19;
      _WLLog();
    }

    else
    {
      v6 = 0;
    }

    [*(a1 + 72) setImportRecordCount:{objc_msgSend(*(a1 + 72), "importRecordCount", v24, v25, v26, v27) + 1}];
  }

  v23 = [*(a1 + 56) sqlController];
  [v23 updateStatistics:*(a1 + 72)];
}

- (double)_progressIncrementForImportedSummary:(id)summary summaries:(id)summaries accounts:(id)accounts migrators:(id)migrators
{
  migratorsCopy = migrators;
  accountsCopy = accounts;
  v10 = 1.0 / [summaries count];
  v11 = [accountsCopy count];

  v12 = [migratorsCopy count];
  return v10 * (1.0 / v11) * (1.0 / v12) * 0.2;
}

- (void)_logStatisticsAndSendStatisticsTelemetryWithContext:(id)context
{
  v65 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  sourceDevice = [contextCopy sourceDevice];
  isLocal = [sourceDevice isLocal];

  v7 = v3;
  _WLLog();
  sqlController = [contextCopy sqlController];
  v9 = +[WLStatistics fetchContentType];
  v10 = [sqlController statisticsForContentType:v9];

  v42 = v10;
  fetchLogString = [v10 fetchLogString];
  _WLLog();

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  migrators = [contextCopy migrators];
  v59 = [migrators countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v59)
  {
    v57 = *v61;
    v44 = isLocal;
    v43 = contextCopy;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v61 != v57)
        {
          objc_enumerationMutation(migrators);
        }

        v13 = *(*(&v60 + 1) + 8 * i);
        sqlController2 = [contextCopy sqlController];
        contentType = [v13 contentType];
        v16 = [sqlController2 statisticsForContentType:contentType];

        v40 = v16;
        _WLLog();
        if ((isLocal & 1) == 0)
        {
          contentType2 = [v13 contentType];
          v18 = [contentType2 isEqualToString:@"unsupported"];

          if ((v18 & 1) == 0)
          {
            if (v16)
            {
              mEMORY[0x277D7B8D0] = [MEMORY[0x277D7B8D0] sharedInstance];
              contentType3 = [v13 contentType];
              downloadByteCount = [v16 downloadByteCount];
              importRecordCount = [v16 importRecordCount];
              importFailedRecordCount = [v16 importFailedRecordCount];
              downloadDuration = [v16 downloadDuration];
              importDuration = [v16 importDuration];
              metadata = [contextCopy metadata];
              deviceOSVersion = [metadata deviceOSVersion];
              metadata2 = [contextCopy metadata];
              deviceModel = [metadata2 deviceModel];
              metadata3 = [contextCopy metadata];
              [metadata3 clientVersion];
              v22 = migrators;
              v24 = v23 = v7;
              [mEMORY[0x277D7B8D0] contentTypeDidComplete:contentType3 downloadByteCount:downloadByteCount importRecordCount:importRecordCount importFailedRecordCount:importFailedRecordCount downloadDuration:downloadDuration importDuration:importDuration android:deviceOSVersion model:deviceModel version:v24];

              v7 = v23;
              migrators = v22;

              isLocal = v44;
              contextCopy = v43;
            }
          }
        }

        aggregateStatistics = [contextCopy aggregateStatistics];
        [aggregateStatistics setDownloadDuration:{objc_msgSend(aggregateStatistics, "downloadDuration") + objc_msgSend(v16, "downloadDuration")}];

        aggregateStatistics2 = [contextCopy aggregateStatistics];
        [aggregateStatistics2 setDownloadByteCount:{objc_msgSend(aggregateStatistics2, "downloadByteCount") + objc_msgSend(v16, "downloadByteCount")}];

        aggregateStatistics3 = [contextCopy aggregateStatistics];
        [aggregateStatistics3 setImportRecordCount:{objc_msgSend(aggregateStatistics3, "importRecordCount") + objc_msgSend(v16, "importRecordCount")}];

        aggregateStatistics4 = [contextCopy aggregateStatistics];
        [aggregateStatistics4 setImportFailedRecordCount:{objc_msgSend(aggregateStatistics4, "importFailedRecordCount") + objc_msgSend(v16, "importFailedRecordCount")}];
      }

      v59 = [migrators countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v59);
  }

  aggregateStatistics5 = [contextCopy aggregateStatistics];
  _WLLog();

  if ((isLocal & 1) == 0)
  {
    aggregateStatistics6 = [contextCopy aggregateStatistics];
    mEMORY[0x277D7B8D0]2 = [MEMORY[0x277D7B8D0] sharedInstance];
    downloadByteCount2 = [aggregateStatistics6 downloadByteCount];
    importRecordCount2 = [aggregateStatistics6 importRecordCount];
    importFailedRecordCount2 = [aggregateStatistics6 importFailedRecordCount];
    downloadDuration2 = [aggregateStatistics6 downloadDuration];
    importDuration2 = [aggregateStatistics6 importDuration];
    metadata4 = [contextCopy metadata];
    deviceOSVersion2 = [metadata4 deviceOSVersion];
    metadata5 = [contextCopy metadata];
    deviceModel2 = [metadata5 deviceModel];
    metadata6 = [contextCopy metadata];
    clientVersion = [metadata6 clientVersion];
    [mEMORY[0x277D7B8D0]2 contentTypeDidComplete:@"(aggregate)" downloadByteCount:downloadByteCount2 importRecordCount:importRecordCount2 importFailedRecordCount:importFailedRecordCount2 downloadDuration:downloadDuration2 importDuration:importDuration2 android:deviceOSVersion2 model:deviceModel2 version:clientVersion];
  }

  _WLLog();

  v38 = *MEMORY[0x277D85DE8];
}

+ (id)_systemVersion
{
  v2 = _CFCopySystemVersionDictionary();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];

  return v3;
}

- (void)close:(id)close
{
  closeCopy = close;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __20__WLMigrator_close___block_invoke;
  v6[3] = &unk_279EB53E0;
  objc_copyWeak(&v8, &location);
  v5 = closeCopy;
  v7 = v5;
  [(WLMigrator *)self finalizeMigratableAppsWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __20__WLMigrator_close___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cleanup];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (void)cleanup
{
  if (([MEMORY[0x277D7B890] isInternal] & 1) == 0)
  {
    v3 = NSHomeDirectory();
    v4 = [v3 stringByAppendingString:@"/Library/WelcomeKit/"];

    [(WLMigrator *)self _deleteDownloadsPath:v4];
  }
}

- (void)finalizeMigratableAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(WLSQLController);
  migratableAppsForAllDevices = [(WLSQLController *)v5 migratableAppsForAllDevices];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(migratableAppsForAllDevices, "count")}];
  _WLLog();

  if ([migratableAppsForAllDevices count])
  {
    _WLLog();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__WLMigrator_finalizeMigratableAppsWithCompletion___block_invoke;
    v8[3] = &unk_279EB5CA0;
    v9 = migratableAppsForAllDevices;
    selfCopy = self;
    v11 = v5;
    v12 = completionCopy;
    [WLMigrator _presentPromptForMigrableApps:v8];
  }

  else
  {
    [(WLMigrator *)self _cleanUpAfterFinalizeMigratableAppsWithSQLController:v5 completion:completionCopy];
  }
}

void __51__WLMigrator_finalizeMigratableAppsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  _WLLog();

  v4 = [MEMORY[0x277D7B8D0] sharedInstance];
  [v4 userDidChooseToInstallMigratableApps:a2];

  if (a2)
  {
    _WLLog();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__WLMigrator_finalizeMigratableAppsWithCompletion___block_invoke_2;
    v11[3] = &unk_279EB5C78;
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v11[4] = *(a1 + 40);
    v12 = v6;
    v13 = *(a1 + 56);
    [WLAppMigrator installMigratableApps:v5 completion:v11];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);

    [v7 _cleanUpAfterFinalizeMigratableAppsWithSQLController:v8 completion:v9];
  }
}

uint64_t __51__WLMigrator_finalizeMigratableAppsWithCompletion___block_invoke_2(void *a1)
{
  _WLLog();
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 _cleanUpAfterFinalizeMigratableAppsWithSQLController:v3 completion:v4];
}

+ (void)_presentPromptForMigrableApps:(id)apps
{
  v17[4] = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  v16[0] = *MEMORY[0x277CBF188];
  v4 = WLLocalizedString();
  v17[0] = v4;
  v16[1] = *MEMORY[0x277CBF198];
  v5 = WLLocalizedString();
  v17[1] = v5;
  v16[2] = *MEMORY[0x277CBF1E8];
  v6 = WLLocalizedString();
  v17[2] = v6;
  v16[3] = *MEMORY[0x277CBF1C0];
  v7 = WLLocalizedString();
  v17[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  v9 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v8);
  v10 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WLMigrator__presentPromptForMigrableApps___block_invoke;
  block[3] = &unk_279EB5CC8;
  v14 = appsCopy;
  v15 = v9;
  v11 = appsCopy;
  dispatch_async(v10, block);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __44__WLMigrator__presentPromptForMigrableApps___block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(a1 + 40), 0.0, &responseFlags);
  CFRelease(*(a1 + 40));
  return (*(*(a1 + 32) + 16))(*(a1 + 32), responseFlags == 0);
}

- (void)_cleanUpAfterFinalizeMigratableAppsWithSQLController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  [controllerCopy deleteMigratableAppsForAllDevices];
  [controllerCopy deleteSuggestedAppBundleIDsForAllDevices];

  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v6 = completionCopy;
  }
}

+ (BOOL)_shouldContinueMigrationFromAnotherDevice
{
  if (_shouldContinueMigrationFromAnotherDevice_onceToken != -1)
  {
    +[WLMigrator _shouldContinueMigrationFromAnotherDevice];
  }

  return _shouldContinueMigrationFromAnotherDevice_shouldContinueMigrationFromAnotherDevice;
}

uint64_t __55__WLMigrator__shouldContinueMigrationFromAnotherDevice__block_invoke()
{
  result = [MEMORY[0x277D7B8B0] BOOLForKey:@"WLContinueMigrationFromAnotherDevice"];
  _shouldContinueMigrationFromAnotherDevice_shouldContinueMigrationFromAnotherDevice = result == 1;
  if (result == 1)
  {

    return _WLLog();
  }

  return result;
}

+ (BOOL)_shouldTerminateMigrationBeforeImport
{
  if (_shouldTerminateMigrationBeforeImport_onceToken != -1)
  {
    +[WLMigrator _shouldTerminateMigrationBeforeImport];
  }

  return _shouldTerminateMigrationBeforeImport_shouldTerminateMigrationBeforeImport;
}

uint64_t __51__WLMigrator__shouldTerminateMigrationBeforeImport__block_invoke()
{
  result = [MEMORY[0x277D7B8B0] BOOLForKey:@"WLTerminateMigrationBeforeImport"];
  _shouldTerminateMigrationBeforeImport_shouldTerminateMigrationBeforeImport = result == 1;
  if (result == 1)
  {

    return _WLLog();
  }

  return result;
}

- (BOOL)_shouldTerminateMigrationOnError
{
  if (_shouldTerminateMigrationOnError_onceToken != -1)
  {
    [WLMigrator _shouldTerminateMigrationOnError];
  }

  return _shouldTerminateMigrationOnError_shouldTerminateMigrationOnError;
}

uint64_t __46__WLMigrator__shouldTerminateMigrationOnError__block_invoke()
{
  result = [MEMORY[0x277D7B8B0] BOOLForKey:@"TolerateMigrationErrors"];
  _shouldTerminateMigrationOnError_shouldTerminateMigrationOnError = result != 1;
  return result;
}

- (void)_setProgressTo:(double)to context:(id)context
{
  obj = context;
  objc_sync_enter(obj);
  [obj setProgress:to];
  delegate = [obj delegate];
  *&v7 = to;
  [delegate dataMigrator:self didUpdateProgressPercentage:v7];

  _WLLog();
  objc_sync_exit(obj);
}

- (void)_incrementProgressBy:(double)by context:(id)context
{
  obj = context;
  objc_sync_enter(obj);
  [obj progress];
  [obj setProgress:v6 + by];
  delegate = [obj delegate];
  [obj progress];
  *&v8 = v8;
  [delegate dataMigrator:self didUpdateProgressPercentage:v8];

  [obj progress];
  _WLLog();
  objc_sync_exit(obj);
}

- (void)_updateSourceWithProgress:(double)progress remainingTime:(double)time context:(id)context completion:(id)completion
{
  contextCopy = context;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_457;
  }

  v12 = MEMORY[0x2743DF630](completionCopy);
  v13 = [MEMORY[0x277CBEAA8] now];
  lastProgressSentDate = [contextCopy lastProgressSentDate];
  [v13 timeIntervalSinceDate:lastProgressSentDate];
  v16 = v15;

  if (v16 >= 5.0 || ([contextCopy lastProgressSentToAndroidDevice], progress == 0.8) || progress - v17 >= 0.01)
  {
    [contextCopy setLastProgressSentToAndroidDevice:progress];
    [contextCopy setLastProgressSentDate:v13];
    [contextCopy lastProgressSentToAndroidDevice];
    v19 = v18;
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:progress];
    _WLLog();

    dataCoordinator = [contextCopy dataCoordinator];
    dataSource = [contextCopy dataSource];
    [contextCopy lastProgressSentToAndroidDevice];
    v23 = v22;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __73__WLMigrator__updateSourceWithProgress_remainingTime_context_completion___block_invoke_2;
    v25[3] = &unk_279EB5CF0;
    v25[4] = self;
    v26 = contextCopy;
    v27 = v12;
    [dataCoordinator updateSource:dataSource withProgress:v25 remainingTime:v23 completion:time];
  }

  else
  {
    v12[2](v12);
  }
}

uint64_t __73__WLMigrator__updateSourceWithProgress_remainingTime_context_completion___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[4];
  v5 = a1[5];
  v7 = a3;
  [v5 lastProgressSentToAndroidDevice];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  _WLLog();

  v8 = *(a1[6] + 16);

  return v8();
}

+ (unint64_t)_bytesFreeOnDevice
{
  v2 = MGCopyAnswer();
  objc_opt_class();
  unsignedLongLongValue = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D82398]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedLongLongValue = [v4 unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
    }
  }

  return unsignedLongLongValue;
}

- (void)deleteMessages
{
  _WLLog();
  v2 = objc_alloc_init(WLMessagesMigrator);
  [(WLMessagesMigrator *)v2 deleteData];
}

- (WLSocketHandler)activeSocketHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_activeSocketHandler);

  return WeakRetained;
}

@end