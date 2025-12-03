@interface SAVolumeScanner
+ (BOOL)shouldForceSDAAbort;
+ (BOOL)shouldForceTelemetry;
+ (void)setForceSDAAbort;
+ (void)setForceTelemetry;
- (BOOL)isSoftwareUpdateInProgressiOS;
- (BOOL)shouldEnableAttributionTagging;
- (OS_dispatch_queue)SUQueue;
- (SAVolumeScanner)init;
- (unint64_t)getSUVolumeUsedSpace;
- (unint64_t)systemVolumeSize;
- (unsigned)processSUPurgeableUrgencyResults;
- (unsigned)runAppSizerWithRunMode:(unint64_t)mode BGTask:(id)task scanOptions:(unint64_t)options error:(id *)error;
- (unsigned)scheduleAppSizerReRun:(unint64_t)run mode:(unint64_t)mode;
- (void)_initiateAsyncNonCachedCDQuery;
- (void)accountForAppsCacheSize;
- (void)accountForCDPluginSize:(id)size;
- (void)accountForOVPFile;
- (void)accountForPurgeableAssets;
- (void)addSoftwareUpdateBundle;
- (void)addSoftwareUpdateReserve;
- (void)calculateDataVolumesSize;
- (void)calculateDiskSpaceSize;
- (void)calculateFixedSizes:(BOOL)sizes;
- (void)calculateSystemDataSize;
- (void)calculateSystemVolumeSize;
- (void)calculateTotalVisibleAppSize;
- (void)callHandlersWithResults:(id)results status:(int64_t)status error:(id)error;
- (void)getPurgeableDataInfo;
- (void)populateVendorName;
- (void)postProcessResults;
- (void)processAttributionTags:(BOOL)tags;
- (void)processPurgeableAttributionTags:(BOOL)tags;
- (void)processSpeculativeDownloadData;
- (void)sendCacheUsageTelemetryWithBGTask:(id)task;
- (void)startProcessingSUPurgeableDataWithBGTask:(id)task runMode:(unint64_t)mode;
- (void)updateAppSizerResultsWithSUPurgeableUrgencySizes;
- (void)updateAttributonTagInfoForBundle:(id)bundle purgeableTagSize:(unint64_t)size volumePath:(id)path;
@end

@implementation SAVolumeScanner

- (SAVolumeScanner)init
{
  v11.receiver = self;
  v11.super_class = SAVolumeScanner;
  v2 = [(SAVolumeScanner *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_scanOptions = 0;
    v2->_appSizerInProgress = 0;
    v4 = dispatch_get_global_queue(0, 0);
    rerunQue = v3->_rerunQue;
    v3->_rerunQue = v4;

    v6 = +[NSDate now];
    startTime = v3->_startTime;
    v3->_startTime = v6;

    v8 = objc_opt_new();
    CDClient = v3->_CDClient;
    v3->_CDClient = v8;

    v3->_queriedNonCachedPurgeable = 0;
    v3->_systemVolumeUsedSpace = 0;
    v3->_systemVolumeSize = 0;
    *&v3->_totalVisibleAppSize = 0u;
    *&v3->_dataVolumeSizeUsed = 0u;
    v3->_softwareUpdateReserve = 0;
  }

  return v3;
}

- (OS_dispatch_queue)SUQueue
{
  if (qword_100073700 != -1)
  {
    sub_10003E0C4();
  }

  v3 = qword_1000736F8;

  return v3;
}

- (unint64_t)systemVolumeSize
{
  appSizerResults = [(SAVolumeScanner *)self appSizerResults];
  systemApp = [appSizerResults systemApp];
  dataSize = [systemApp dataSize];

  return dataSize;
}

- (BOOL)isSoftwareUpdateInProgressiOS
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v3 = objc_opt_new();
  v4 = [[SUManagerClient alloc] initWithDelegate:0 queue:self->_SUQueue clientType:1];
  [v3 enter];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100018278;
  v13 = &unk_100064FB0;
  v15 = &v16;
  v5 = v3;
  v14 = v5;
  [v4 isSoftwareUpdateInProgress:&v10];
  v6 = dispatch_time(0, 4000000000);
  if ([v5 wait:{v6, v10, v11, v12, v13}])
  {
    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003E0D8();
    }
  }

  [v4 invalidate];
  v8 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v8;
}

- (void)updateAppSizerResultsWithSUPurgeableUrgencySizes
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  relevantVolumesInfo = [(SAVolumeScanner *)self relevantVolumesInfo];
  volumesPaths = [relevantVolumesInfo volumesPaths];

  v5 = [volumesPaths countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(volumesPaths);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        purgeableRecords = [(SAVolumeScanner *)self purgeableRecords];
        sUPurgeableUrgencyData = [purgeableRecords SUPurgeableUrgencyData];
        v12 = [sUPurgeableUrgencyData objectForKeyedSubscript:v9];

        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100018548;
        v13[3] = &unk_100064FD8;
        v13[4] = self;
        v13[5] = v9;
        [v12 enumerateKeysAndObjectsUsingBlock:v13];
      }

      v6 = [volumesPaths countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)calculateTotalVisibleAppSize
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "START: App Sizer Check For Sizes OverFlow", buf, 2u);
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  [(SAVolumeScanner *)self setTotalVisibleAppSize:0];
  appSizerResults = [(SAVolumeScanner *)self appSizerResults];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100018B0C;
  v15[3] = &unk_100065000;
  v15[4] = self;
  v15[5] = &v28;
  v15[6] = &v24;
  v15[7] = &v20;
  v15[8] = &v16;
  [appSizerResults enumerateAppsDataUsingBlock:v15];

  v5 = v21[3];
  if (v5 > [(SAVolumeScanner *)self totalHiddenAppSize])
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003E210(v40, v21[3], [(SAVolumeScanner *)self totalHiddenAppSize], v6);
    }
  }

  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v25[3];
    totalVisibleAppSize = [(SAVolumeScanner *)self totalVisibleAppSize];
    totalHiddenAppSize = [(SAVolumeScanner *)self totalHiddenAppSize];
    v11 = v21[3];
    *buf = 134218752;
    v33 = v8;
    v34 = 2048;
    v35 = totalVisibleAppSize;
    v36 = 2048;
    v37 = totalHiddenAppSize;
    v38 = 2048;
    v39 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "totalAppSize = %llu, totalVisibleAppSize = %llu, totalHiddenAppSize = %llu, unreportedSize = %llu", buf, 0x2Au);
  }

  v12 = SALog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v29[3];
    v14 = v17[3];
    *buf = 134218240;
    v33 = v13;
    v34 = 2048;
    v35 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "totalVisibleAppCount = %llu, unreportedIncidents = %llu", buf, 0x16u);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
}

- (void)calculateDiskSpaceSize
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v40) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "START: App Sizer Calculate disk used and disk capacity", &v40, 2u);
  }

  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    appSizerResults = [(SAVolumeScanner *)self appSizerResults];
    totalCDAvailable = [appSizerResults totalCDAvailable];
    appSizerResults2 = [(SAVolumeScanner *)self appSizerResults];
    totalPurgeableClones = [appSizerResults2 totalPurgeableClones];
    v40 = 134218240;
    v41 = totalCDAvailable;
    v42 = 2048;
    v43 = totalPurgeableClones;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "App Sizer totalCDAvailable:%llu purgeableClonesSize: %llu", &v40, 0x16u);
  }

  appSizerResults3 = [(SAVolumeScanner *)self appSizerResults];
  totalCDAvailable2 = [appSizerResults3 totalCDAvailable];
  appSizerResults4 = [(SAVolumeScanner *)self appSizerResults];
  [appSizerResults4 setTotalPurgeableDataSize:totalCDAvailable2];

  appSizerResults5 = [(SAVolumeScanner *)self appSizerResults];
  [appSizerResults5 initDiskUsedAndCapacity];

  appSizerResults6 = [(SAVolumeScanner *)self appSizerResults];
  diskUsed = [appSizerResults6 diskUsed];
  appSizerResults7 = [(SAVolumeScanner *)self appSizerResults];
  [appSizerResults7 setAPFSDiskUsed:diskUsed];

  telemetryManager = [(SAVolumeScanner *)self telemetryManager];
  appSizerResults8 = [(SAVolumeScanner *)self appSizerResults];
  aPFSDiskUsed = [appSizerResults8 APFSDiskUsed];
  appSizerResults9 = [(SAVolumeScanner *)self appSizerResults];
  [telemetryManager updateTotalsInfo:aPFSDiskUsed totalPurgeable:{objc_msgSend(appSizerResults9, "totalPurgeableDataSize")}];

  v20 = SALog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    appSizerResults10 = [(SAVolumeScanner *)self appSizerResults];
    diskUsed2 = [appSizerResults10 diskUsed];
    appSizerResults11 = [(SAVolumeScanner *)self appSizerResults];
    diskCapacity = [appSizerResults11 diskCapacity];
    softwareUpdateReserve = [(SAVolumeScanner *)self softwareUpdateReserve];
    appSizerResults12 = [(SAVolumeScanner *)self appSizerResults];
    totalPurgeableDataSize = [appSizerResults12 totalPurgeableDataSize];
    v40 = 134218752;
    v41 = diskUsed2;
    v42 = 2048;
    v43 = diskCapacity;
    v44 = 2048;
    v45 = softwareUpdateReserve;
    v46 = 2048;
    v47 = totalPurgeableDataSize;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "App Sizer diskUsed:%llu diskCapacity:%llu SUR:%llu totalPurgeableDataSize:%llu", &v40, 0x2Au);
  }

  appSizerResults13 = [(SAVolumeScanner *)self appSizerResults];
  [appSizerResults13 setDiskUsed:{-[SAVolumeScanner softwareUpdateReserve](self, "softwareUpdateReserve") + objc_msgSend(appSizerResults13, "diskUsed")}];

  appSizerResults14 = [(SAVolumeScanner *)self appSizerResults];
  diskUsed3 = [appSizerResults14 diskUsed];
  appSizerResults15 = [(SAVolumeScanner *)self appSizerResults];
  totalPurgeableDataSize2 = [appSizerResults15 totalPurgeableDataSize];

  if (diskUsed3 >= totalPurgeableDataSize2)
  {
    appSizerResults16 = [(SAVolumeScanner *)self appSizerResults];
    appSizerResults17 = [(SAVolumeScanner *)self appSizerResults];
    [appSizerResults16 setDiskUsed:{objc_msgSend(appSizerResults16, "diskUsed") - objc_msgSend(appSizerResults17, "totalPurgeableDataSize")}];
  }

  else
  {
    v33 = SALog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10003E340(self);
    }

    appSizerResults16 = [(SAVolumeScanner *)self appSizerResults];
    [appSizerResults16 setTotalPurgeableDataSize:0];
  }

  appSizerResults18 = [(SAVolumeScanner *)self appSizerResults];
  diskUsed4 = [appSizerResults18 diskUsed];
  appSizerResults19 = [(SAVolumeScanner *)self appSizerResults];
  [appSizerResults19 setRawDiskedUsed:diskUsed4];

  appSizerResults20 = [(SAVolumeScanner *)self appSizerResults];
  -[SAVolumeScanner setRawTotalPurgeableDataSize:](self, "setRawTotalPurgeableDataSize:", [appSizerResults20 totalPurgeableDataSize]);
}

- (void)calculateSystemDataSize
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v40) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "START: App Sizer Calculate 'System Data' Size", &v40, 2u);
  }

  appSizerResults = [(SAVolumeScanner *)self appSizerResults];
  rawDiskedUsed = [appSizerResults rawDiskedUsed];
  appSizerResults2 = [(SAVolumeScanner *)self appSizerResults];
  [appSizerResults2 setDiskUsed:rawDiskedUsed];

  rawTotalPurgeableDataSize = [(SAVolumeScanner *)self rawTotalPurgeableDataSize];
  appSizerResults3 = [(SAVolumeScanner *)self appSizerResults];
  [appSizerResults3 setTotalPurgeableDataSize:rawTotalPurgeableDataSize];

  [(SAVolumeScanner *)self calculateTotalVisibleAppSize];
  appSizerResults4 = [(SAVolumeScanner *)self appSizerResults];
  diskUsed = [appSizerResults4 diskUsed];
  totalVisibleAppSize = [(SAVolumeScanner *)self totalVisibleAppSize];
  softwareUpdateVolumeUsedSpace = [(SAVolumeScanner *)self softwareUpdateVolumeUsedSpace];
  v13 = diskUsed - ([(SAVolumeScanner *)self systemVolumeSize]+ totalVisibleAppSize + softwareUpdateVolumeUsedSpace);

  appSizerResults5 = [(SAVolumeScanner *)self appSizerResults];
  [appSizerResults5 setRawSystemDataSize:v13];

  v15 = SALog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    appSizerResults6 = [(SAVolumeScanner *)self appSizerResults];
    diskUsed2 = [appSizerResults6 diskUsed];
    totalVisibleAppSize2 = [(SAVolumeScanner *)self totalVisibleAppSize];
    softwareUpdateVolumeUsedSpace2 = [(SAVolumeScanner *)self softwareUpdateVolumeUsedSpace];
    systemVolumeSize = [(SAVolumeScanner *)self systemVolumeSize];
    v40 = 134219008;
    v41 = diskUsed2;
    v42 = 2048;
    v43 = totalVisibleAppSize2;
    v44 = 2048;
    v45 = softwareUpdateVolumeUsedSpace2;
    v46 = 2048;
    v47 = systemVolumeSize;
    v48 = 2048;
    v49 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "diskUsed: %llu totalVisibleAppSize: %llu softwareUpdateVolumeSize: %llusystemVolumeSize: %llu systemData: %lld", &v40, 0x34u);
  }

  if (v13 < 0)
  {
    v21 = SALog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10003E400();
    }

    totalVisibleAppSize3 = [(SAVolumeScanner *)self totalVisibleAppSize];
    softwareUpdateVolumeUsedSpace3 = [(SAVolumeScanner *)self softwareUpdateVolumeUsedSpace];
    softwareUpdateReserve = [(SAVolumeScanner *)self softwareUpdateReserve];
    systemVolumeUsedSpace = [(SAVolumeScanner *)self systemVolumeUsedSpace];
    appSizerResults7 = [(SAVolumeScanner *)self appSizerResults];
    v27 = totalVisibleAppSize3 + softwareUpdateVolumeUsedSpace3 + softwareUpdateReserve + systemVolumeUsedSpace - [appSizerResults7 diskUsed] + 0x40000000;

    appSizerResults8 = [(SAVolumeScanner *)self appSizerResults];
    totalPurgeableDataSize = [appSizerResults8 totalPurgeableDataSize];

    if (v27 <= totalPurgeableDataSize)
    {
      appSizerResults9 = [(SAVolumeScanner *)self appSizerResults];
      v32 = [appSizerResults9 totalPurgeableDataSize] - v27;

      appSizerResults10 = [(SAVolumeScanner *)self appSizerResults];
      [appSizerResults10 setDiskUsed:{objc_msgSend(appSizerResults10, "diskUsed") + v27}];

      appSizerResults11 = [(SAVolumeScanner *)self appSizerResults];
      [appSizerResults11 setTotalPurgeableDataSize:v32];

      v30 = SALog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10003E468(self);
      }
    }

    else
    {
      v30 = SALog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10003E528(self);
      }
    }

    v13 = 0x40000000;
  }

  appSizerResults12 = [(SAVolumeScanner *)self appSizerResults];
  systemDataApp = [appSizerResults12 systemDataApp];

  [systemDataApp setDataSize:v13];
  [systemDataApp setFixedSize:0];
  v37 = SALog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    dataSize = [systemDataApp dataSize];
    v40 = 134217984;
    v41 = dataSize;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "systemData = %llu", &v40, 0xCu);
  }

  telemetryManager = [(SAVolumeScanner *)self telemetryManager];
  [telemetryManager setSystemDataSize:{objc_msgSend(systemDataApp, "dataSize")}];
}

- (void)callHandlersWithResults:(id)results status:(int64_t)status error:(id)error
{
  errorCopy = error;
  resultsCopy = results;
  [resultsCopy populateAppsData];
  [resultsCopy setStatus:status];
  [SACallbackManager callAppSizeHandlersWithResults:resultsCopy error:errorCopy];
}

- (unsigned)processSUPurgeableUrgencyResults
{
  purgeableRecords = [(SAVolumeScanner *)self purgeableRecords];
  waitForProcessingSUPurgeableUrgencyFiles = [purgeableRecords waitForProcessingSUPurgeableUrgencyFiles];

  if (waitForProcessingSUPurgeableUrgencyFiles)
  {
    v5 = SALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Software update purgeable data processing was deferred", v7, 2u);
    }
  }

  else
  {
    [(SAVolumeScanner *)self updateAppSizerResultsWithSUPurgeableUrgencySizes];
    [(SAVolumeScanner *)self calculateSystemDataSize];
  }

  return waitForProcessingSUPurgeableUrgencyFiles;
}

- (unint64_t)getSUVolumeUsedSpace
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019A80;
  v4[3] = &unk_100065028;
  v4[4] = &v5;
  +[SASupport getVolSizeFromAttrList:completionHandler:](SASupport, "getVolSizeFromAttrList:completionHandler:", [@"/private/var/MobileSoftwareUpdate" fileSystemRepresentation], v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)addSoftwareUpdateBundle
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "START: App Sizer Calculate Software Update Volume Size", &v11, 2u);
  }

  telemetryManager = [(SAVolumeScanner *)self telemetryManager];
  [telemetryManager startTimeForTimeInfoEntry:10];

  LODWORD(telemetryManager) = [(SAVolumeScanner *)self isSoftwareUpdateInProgressiOS];
  telemetryManager2 = [(SAVolumeScanner *)self telemetryManager];
  [telemetryManager2 stopTimeForTimeInfoEntry:10];

  if (telemetryManager)
  {
    [(SAVolumeScanner *)self setSoftwareUpdateVolumeUsedSpace:[(SAVolumeScanner *)self getSUVolumeUsedSpace]];
    v6 = objc_opt_new();
    [v6 setDataSize:[(SAVolumeScanner *)self softwareUpdateVolumeUsedSpace]];
    appSizerResults = [(SAVolumeScanner *)self appSizerResults];
    [appSizerResults updateBundleIDs:@"com.apple.fakeapp.SoftwareUpdate" withAppSize:v6];

    telemetryManager3 = [(SAVolumeScanner *)self telemetryManager];
    [telemetryManager3 addValue:-[SAVolumeScanner softwareUpdateVolumeUsedSpace](self forAppInfoEntry:"softwareUpdateVolumeUsedSpace") forBundleIDs:{23, @"com.apple.fakeapp.SoftwareUpdate"}];

    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      softwareUpdateVolumeUsedSpace = [(SAVolumeScanner *)self softwareUpdateVolumeUsedSpace];
      v11 = 134217984;
      v12 = softwareUpdateVolumeUsedSpace;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "softwareUpdateVolumeUsedSpace %llu", &v11, 0xCu);
    }
  }

  else
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Software Update is not in progress", &v11, 2u);
    }
  }
}

- (void)addSoftwareUpdateReserve
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "START: Software Update Reserve", buf, 2u);
  }

  [(SAVolumeScanner *)self setSoftwareUpdateReserve:0];
  v4 = CacheDeleteGetReserveSpace();
  v5 = [v4 objectForKeyedSubscript:@"CACHE_DELETE_RESERVE_SPACE_ENABLED"];
  if ([v5 unsignedLongValue] == 1)
  {
    v6 = [v4 objectForKeyedSubscript:@"CACHE_DELETE_REPORTABLE_RESERVE_SPACE_AMOUNT"];
    v7 = [v4 objectForKeyedSubscript:@"CACHE_DELETE_RESERVE_SPACE_FILESYSTEM_AMOUNT"];
    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Software Update Reserve Reportable Amount: %@", buf, 0xCu);
    }

    [(SAVolumeScanner *)self setSoftwareUpdateReserve:[v6 unsignedLongLongValue]];
    if ([(SAVolumeScanner *)self softwareUpdateReserve])
    {
      v9 = objc_opt_new();
      [v9 setDataSize:{-[SAVolumeScanner softwareUpdateReserve](self, "softwareUpdateReserve")}];
      appSizerResults = [(SAVolumeScanner *)self appSizerResults];
      [appSizerResults addToSystemDetails:-[SAVolumeScanner softwareUpdateReserve](self key:{"softwareUpdateReserve"), @"com.apple.fakeapp.SoftwareUpdateReserve"}];

      appSizerResults2 = [(SAVolumeScanner *)self appSizerResults];
      [appSizerResults2 updateBundleIDs:@"com.apple.fakeapp.System" withAppSize:v9];

      telemetryManager = [(SAVolumeScanner *)self telemetryManager];
      [telemetryManager updateBundleIDs:@"com.apple.fakeapp.System" usedDirStat:0 fixedSize:objc_msgSend(v9 dataSize:"fixedSize") cloneSize:objc_msgSend(v9 purgeableSize:"dataSize") fileCount:{objc_msgSend(v9, "cloneSize"), objc_msgSend(v9, "purgeableSize"), 0}];

      telemetryManager2 = [(SAVolumeScanner *)self telemetryManager];
      [telemetryManager2 addValue:objc_msgSend(v7 forAppInfoEntry:"unsignedLongLongValue") forBundleIDs:{23, @"com.apple.fakeapp.SoftwareUpdateReserve"}];
    }
  }

  else
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Software Update Reserve is not enabled.", buf, 2u);
    }
  }

  v14 = SALog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "END: Software Update Reserve", buf, 2u);
  }
}

- (void)processPurgeableAttributionTags:(BOOL)tags
{
  selfCopy = self;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "START: App Sizer Purgeable Attribution Tagging", buf, 2u);
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = sub_100017264;
  v32 = sub_100017274;
  v33 = 0;
  purgeableRecords = [(SAVolumeScanner *)selfCopy purgeableRecords];
  relevantVolumesInfo = [(SAVolumeScanner *)selfCopy relevantVolumesInfo];
  volumesPaths = [relevantVolumesInfo volumesPaths];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001A464;
  v27[3] = &unk_100065050;
  v27[4] = &v38;
  v27[5] = &v34;
  v27[6] = buf;
  [purgeableRecords processPurgeableAttributionTagsOnRelevantVolumes:volumesPaths reply:v27];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  relevantVolumesInfo2 = [(SAVolumeScanner *)selfCopy relevantVolumesInfo];
  volumesPaths2 = [relevantVolumesInfo2 volumesPaths];

  v10 = [volumesPaths2 countByEnumeratingWithState:&v23 objects:v46 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(volumesPaths2);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [*(v29 + 5) objectForKeyedSubscript:{v13, selfCopy}];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10001A48C;
        v21[3] = &unk_100065078;
        v21[4] = selfCopy;
        v21[5] = v13;
        tagsCopy = tags;
        [v14 enumerateKeysAndObjectsUsingBlock:v21];
      }

      v10 = [volumesPaths2 countByEnumeratingWithState:&v23 objects:v46 count:16];
    }

    while (v10);
  }

  telemetryManager = [(SAVolumeScanner *)selfCopy telemetryManager];
  [telemetryManager setValue:v39[3] forTimeInfoEntry:9];

  telemetryManager2 = [(SAVolumeScanner *)selfCopy telemetryManager];
  [telemetryManager2 setValue:v35[3] forTotalsInfoEntry:3];

  v17 = SALog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v39[3] / 0xF4240uLL;
    v19 = v35[3];
    *v42 = 134218240;
    v43 = v18;
    v44 = 2048;
    v45 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Completed processing purgeable attribution tags (timeElapsed: %llu) (tagsCount: %llu)", v42, 0x16u);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
}

- (void)updateAttributonTagInfoForBundle:(id)bundle purgeableTagSize:(unint64_t)size volumePath:(id)path
{
  bundleCopy = bundle;
  pathCopy = path;
  appSizerResults = [(SAVolumeScanner *)self appSizerResults];
  attributionTags = [appSizerResults attributionTags];
  v21 = pathCopy;
  v11 = [attributionTags objectForKey:pathCopy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 objectForKey:@"bundleID"];
        if ([v17 isEqualToString:bundleCopy])
        {
          v18 = [v16 objectForKey:@"attributionSize"];
          v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 unsignedLongLongValue] - size);
          [v16 setObject:v19 forKey:@"attributionSize"];

          v20 = [NSNumber numberWithUnsignedLongLong:size];
          [v16 setObject:v20 forKey:@"purgeableSize"];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }
}

- (BOOL)shouldEnableAttributionTagging
{
  telemetryManager = [(SAVolumeScanner *)self telemetryManager];
  v4 = [telemetryManager getValueForDirStatsTotalsInfoEntry:2];

  telemetryManager2 = [(SAVolumeScanner *)self telemetryManager];
  v6 = [telemetryManager2 getValueForDirStatsTotalsInfoEntry:3];

  telemetryManager3 = [(SAVolumeScanner *)self telemetryManager];
  v8 = [telemetryManager3 getValueForDirStatsTotalsInfoEntry:4];

  telemetryManager4 = [(SAVolumeScanner *)self telemetryManager];
  v10 = [telemetryManager4 getValueForDirStatsTotalsInfoEntry:5];

  telemetryManager5 = [(SAVolumeScanner *)self telemetryManager];
  v12 = [telemetryManager5 getValueForDirStatsTotalsInfoEntry:6];

  v13 = SALog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134219008;
    v16 = v4;
    v17 = 2048;
    v18 = v6;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = v10;
    v23 = 2048;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Extended dir-stats : numOfPaths %llu, numOfPathsDirStatEnabled %llu, numOfPathsDirStatUsed %llu,  numOfPathsDirStatFailed %llu, numOfPathsDirStatSkipped %llu", &v15, 0x34u);
  }

  return &v8[v12] > (v4 >> 1);
}

- (void)populateVendorName
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "START: Add vendor-name", buf, 2u);
  }

  appSizerResults = [(SAVolumeScanner *)self appSizerResults];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001AAD8;
  v5[3] = &unk_1000650A0;
  v5[4] = self;
  [appSizerResults enumerateAppsDataUsingBlock:v5];
}

- (void)_initiateAsyncNonCachedCDQuery
{
  if (![(SAVolumeScanner *)self _isRerun])
  {
    v3 = [SARunTimeDataManager runTimeDataObjectForKey:@"lastNonCachedCDQueryDateKey"];
    [v3 timeIntervalSinceNow];
    if (!v3 || v4 < -600.0)
    {
      v5 = SALog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Initiating asynchronous non-cached CD query on the main run", v8, 2u);
      }

      cDClient = [(SAVolumeScanner *)self CDClient];
      [cDClient getPurgeableInfoAsync:@"/private/var/mobile" cached:0 completionHandler:0];

      [(SAVolumeScanner *)self setQueriedNonCachedPurgeable:1];
      v7 = +[NSDate now];
      [SARunTimeDataManager setRunTimeDataObject:v7 forKey:@"lastNonCachedCDQueryDateKey"];
    }
  }
}

- (void)getPurgeableDataInfo
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_100017264;
  v43 = sub_100017274;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100017264;
  v37 = sub_100017274;
  v38 = 0;
  scanOptions = self->_scanOptions;
  if (![(SAVolumeScanner *)self queriedNonCachedPurgeable]|| ![(SAVolumeScanner *)self _isRerun])
  {
LABEL_9:
    v12 = SALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if ((scanOptions & 0x20000) != 0)
      {
        v13 = [NSString stringWithFormat:@"non-cached (run options: %zu)", self->_scanOptions];
      }

      else
      {
        v13 = @"cached";
      }

      _isRerun = [(SAVolumeScanner *)self _isRerun];
      v15 = @"main run";
      *buf = 136315650;
      v46 = "[SAVolumeScanner getPurgeableDataInfo]";
      v47 = 2112;
      v48 = v13;
      if (_isRerun)
      {
        v15 = @"re-run";
      }

      v49 = 2112;
      v50 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Get the %@ purgeable data from CD for the %@", buf, 0x20u);
      if ((scanOptions & 0x20000) != 0)
      {
      }
    }

    cDClient = [(SAVolumeScanner *)self CDClient];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10001B374;
    v30[3] = &unk_1000650C8;
    v30[4] = &v39;
    v30[5] = &v33;
    [cDClient getPurgeableInfo:@"/private/var/mobile" cached:(scanOptions & 0x20000) == 0 timeout:dispatch_time(0 completionHandler:60000000000), v30];
    goto LABEL_18;
  }

  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v46 = "[SAVolumeScanner getPurgeableDataInfo]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Get the up-to-date purgeable data of the call made on the main run", buf, 0xCu);
  }

  v5 = dispatch_time(0, 30000000000);
  cDClient2 = [(SAVolumeScanner *)self CDClient];
  v8 = (v40 + 5);
  v7 = v40[5];
  v9 = (v34 + 5);
  v31 = v34[5];
  obj = v7;
  [cDClient2 getAsyncPurgeableInfoWithTimeout:v5 results:&obj error:&v31];
  objc_storeStrong(v8, obj);
  objc_storeStrong(v9, v31);

  if (v34[5])
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v34[5];
      *buf = 136315394;
      v46 = "[SAVolumeScanner getPurgeableDataInfo]";
      v47 = 2112;
      v48 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Synchronous purgeable data retrieval failed: %@. Falling back to cached results.", buf, 0x16u);
    }

    goto LABEL_9;
  }

  cDClient = SALog();
  if (os_log_type_enabled(cDClient, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v46 = "[SAVolumeScanner getPurgeableDataInfo]";
    _os_log_impl(&_mh_execute_header, cDClient, OS_LOG_TYPE_DEFAULT, "%s: Synchronous purgeable data retrieval successful.", buf, 0xCu);
  }

LABEL_18:

  if ((scanOptions & 0x20000) == 0)
  {
    [(SAVolumeScanner *)self _initiateAsyncNonCachedCDQuery];
  }

  if (v34[5] || (v21 = v40[5]) == 0)
  {
    v17 = SALog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v34[5] description];
      sub_10003E7E0(v18, buf, v17);
    }

    v19 = 0;
    v20 = 0;
  }

  else
  {
    v20 = [v21 objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_AVAILABLE"];
    v19 = [v40[5] objectForKeyedSubscript:@"CACHE_DELETE_PURGEABLE_CLONES"];
    v22 = [v40[5] objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_FSPURGEABLE"];
    v23 = [v40[5] objectForKeyedSubscript:@"com.apple.mobile.cache_delete_app_container_caches"];
    v17 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v20 unsignedLongValue] - (objc_msgSend(v23, "unsignedLongValue") + objc_msgSend(v22, "unsignedLongValue")));
    v24 = SALog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_10003E730();
    }

    if (v20)
    {
      appSizerResults = [(SAVolumeScanner *)self appSizerResults];
      [appSizerResults setTotalCDAvailable:{objc_msgSend(v20, "longLongValue") + objc_msgSend(appSizerResults, "totalCDAvailable")}];
    }

    if (v19)
    {
      appSizerResults2 = [(SAVolumeScanner *)self appSizerResults];
      [appSizerResults2 setTotalPurgeableClones:{objc_msgSend(v19, "longLongValue") + objc_msgSend(appSizerResults2, "totalPurgeableClones")}];
    }

    if (v17)
    {
      appSizerResults3 = [(SAVolumeScanner *)self appSizerResults];
      [appSizerResults3 setTotalCDPluginsSize:{-[NSObject longLongValue](v17, "longLongValue") + objc_msgSend(appSizerResults3, "totalCDPluginsSize")}];
    }

    if (v23)
    {
      appSizerResults4 = [(SAVolumeScanner *)self appSizerResults];
      [appSizerResults4 setTotalCDAppsCacheSize:{objc_msgSend(v23, "longLongValue") + objc_msgSend(appSizerResults4, "totalCDAppsCacheSize")}];
    }

    v29 = sub_100001AE4(v40[5]);
    [(SAVolumeScanner *)self accountForCDPluginSize:v29];
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);
}

- (unsigned)scheduleAppSizerReRun:(unint64_t)run mode:(unint64_t)mode
{
  if ((run & 0x1000) == 0)
  {
    return 5;
  }

  v8 = +[SACallbackManager handlersCount];
  v5 = 5;
  if (mode == 2 && v8 >= 1)
  {
    [(NSDate *)self->_startTime timeIntervalSinceNow];
    v10 = -v9;
    v11 = SALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v26 = v10;
      v27 = 1024;
      v28 = dword_100073510;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "App Sizer timeSinceStart is %f, timeout is %u", buf, 0x12u);
    }

    LODWORD(v12) = dword_100073510;
    if (v10 <= v12)
    {
      v15 = +[SACallbackManager activeHandlers];
      atomic_fetch_add(&dword_100073708, 1u);
      v16 = dispatch_time(0, 60000000000);
      rerunQue = self->_rerunQue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001C8F8;
      block[3] = &unk_100065168;
      selfCopy = self;
      runCopy = run;
      v20 = v15;
      v14 = v15;
      dispatch_after(v16, rerunQue, block);

      v5 = 5;
    }

    else
    {
      v23 = NSLocalizedFailureReasonErrorKey;
      v24 = @"SAF Exhaustion";
      v13 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v14 = [NSError errorWithDomain:NSCocoaErrorDomain code:4610 userInfo:v13];

      [SACallbackManager callAppSizeHandlersWithResults:0 error:v14];
      v5 = 3;
    }
  }

  return v5;
}

- (void)calculateFixedSizes:(BOOL)sizes
{
  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "START: App Sizer Calculate Fixed Sizes", buf, 2u);
  }

  v6 = objc_opt_new();
  v7 = dispatch_group_create();
  v8 = dispatch_get_global_queue(2, 0);
  appSizerResults = [(SAVolumeScanner *)self appSizerResults];
  appsDataInternal = [appSizerResults appsDataInternal];
  allKeys = [appsDataInternal allKeys];

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10001CBC0;
  v17 = &unk_100065190;
  selfCopy = self;
  v19 = v6;
  v20 = +[SASupport getDiskCapacity];
  sizesCopy = sizes;
  v12 = v6;
  [SAUtilities processArrayConcurrently:allKeys number:4 queue:v8 group:v7 block:&v14];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v13 = [(SAVolumeScanner *)self telemetryManager:v14];
  [v13 stopTimeForTimeInfoEntry:5];
}

- (void)accountForAppsCacheSize
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start: App Sizer account for cache size", buf, 2u);
  }

  appSizerResults = [(SAVolumeScanner *)self appSizerResults];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001D130;
  v5[3] = &unk_1000650A0;
  v5[4] = self;
  [appSizerResults enumerateAppsDataUsingBlock:v5];
}

- (void)accountForCDPluginSize:(id)size
{
  sizeCopy = size;
  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "START: App Sizer account for CD plugin size", buf, 2u);
  }

  v6 = sub_100001D28();
  if (sizeCopy && v6)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = v6;
    obj = v6;
    v32 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (!v32)
    {
      goto LABEL_29;
    }

    v31 = *v40;
    selfCopy = self;
    while (1)
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v39 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        appSizerResults = [(SAVolumeScanner *)self appSizerResults];
        appsDataInternal = [appSizerResults appsDataInternal];
        v12 = [appsDataInternal objectForKey:v8];

        if (v12)
        {
          v34 = v9;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v13 = [obj objectForKeyedSubscript:v8];
          v14 = [v13 countByEnumeratingWithState:&v35 objects:v49 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = 0;
            v17 = *v36;
            do
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v36 != v17)
                {
                  objc_enumerationMutation(v13);
                }

                v19 = [sizeCopy objectForKeyedSubscript:*(*(&v35 + 1) + 8 * j)];
                v16 += [v19 unsignedLongLongValue];
              }

              v15 = [v13 countByEnumeratingWithState:&v35 objects:v49 count:16];
            }

            while (v15);
          }

          else
          {
            v16 = 0;
          }

          self = selfCopy;
          appSizerResults2 = [(SAVolumeScanner *)selfCopy appSizerResults];
          [appSizerResults2 updateBundleIDs:v8 fixedSize:0 dataSize:0 cloneSize:0 purgeableSize:v16 cloneFixUpSize:0 physicalSize:0 appCacheSize:0 CDPluginSize:v16];

          telemetryManager = [(SAVolumeScanner *)selfCopy telemetryManager];
          [telemetryManager updateBundleIDs:v8 appCacheSize:0 CDPluginSize:v16];

          if (v16 <= [v12 dataSize])
          {
            [v12 setDataSize:{objc_msgSend(v12, "dataSize") - v16}];
            telemetryManager2 = [(SAVolumeScanner *)selfCopy telemetryManager];
            [telemetryManager2 setValue:objc_msgSend(v12 forAppInfoEntry:"dataSize") forBundleIDs:{23, v8}];

            appSizerResults3 = [(SAVolumeScanner *)selfCopy appSizerResults];
            appSizeBreakdownList = [appSizerResults3 appSizeBreakdownList];

            v9 = v34;
            if (appSizeBreakdownList)
            {
              appSizerResults4 = [(SAVolumeScanner *)selfCopy appSizerResults];
              appSizeBreakdownList2 = [appSizerResults4 appSizeBreakdownList];
              [appSizeBreakdownList2 addPluginSize:v16 bundleIDs:v8];

              goto LABEL_25;
            }
          }

          else
          {
            appSizerResults4 = SALog();
            v9 = v34;
            if (os_log_type_enabled(appSizerResults4, OS_LOG_TYPE_ERROR))
            {
              dataSize = [v12 dataSize];
              *buf = 138412802;
              v44 = v8;
              v45 = 2048;
              v46 = v16;
              v47 = 2048;
              v48 = dataSize;
              _os_log_error_impl(&_mh_execute_header, appSizerResults4, OS_LOG_TYPE_ERROR, "Error: %@ cd total plugin size: %llu is greater than existing data size: %llu", buf, 0x20u);
            }

LABEL_25:
          }

          appSizerResults5 = [(SAVolumeScanner *)selfCopy appSizerResults];
          [appSizerResults5 setTotalSAFPluginsSize:{objc_msgSend(appSizerResults5, "totalSAFPluginsSize") + v16}];
        }

        objc_autoreleasePoolPop(v9);
      }

      v32 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
      if (!v32)
      {
LABEL_29:

        v6 = v29;
        break;
      }
    }
  }
}

- (void)accountForPurgeableAssets
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001D7D0;
  v2[3] = &unk_1000651B8;
  v2[4] = self;
  [SAQuery enumeratePurgeableAssets:3 block:v2];
}

- (void)calculateSystemVolumeSize
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "START: App Sizer Calculate System Volume Size", buf, 2u);
  }

  v4 = objc_opt_new();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001DA8C;
  v5[3] = &unk_1000651E0;
  v5[4] = self;
  [v4 computeSizeOfSystemVolume:v5];
}

- (void)accountForOVPFile
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001DC08;
  v2[3] = &unk_100065208;
  v2[4] = self;
  [SAUtilities getFileSize:@"/private/var/.overprovisioning_file" reply:v2];
}

- (void)calculateDataVolumesSize
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "START: App Sizer Calculate Data And User Volumes Size", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  relevantVolumesInfo = [(SAVolumeScanner *)self relevantVolumesInfo];
  volumesPaths = [relevantVolumesInfo volumesPaths];

  v6 = [volumesPaths countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(volumesPaths);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_opt_new();
        v12 = [NSURL fileURLWithPath:v10];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001DED0;
        v14[3] = &unk_100065230;
        v14[4] = self;
        v14[5] = v10;
        [v11 computeSizeOfVolumeAtURL:v12 options:1 completionHandler:v14];
      }

      v7 = [volumesPaths countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = SALog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10003EBC4(self);
  }

  [(SAVolumeScanner *)self accountForOVPFile];
}

- (void)processAttributionTags:(BOOL)tags
{
  tagsCopy = tags;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_100017264;
  v33[4] = sub_100017274;
  v34 = 0;
  if ([(SAVolumeScanner *)self shouldEnableAttributionTagging])
  {
    v5 = SALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Extended dir-stats enabled on half of valid paths, enable attribution tagging", buf, 2u);
    }

    relevantVolumesInfo = [(SAVolumeScanner *)self relevantVolumesInfo];
    volumesPaths = [relevantVolumesInfo volumesPaths];
    [SAAttributionTag enableAttributionTagging:volumesPaths];

    telemetryManager = [(SAVolumeScanner *)self telemetryManager];
    [telemetryManager startTimeForTimeInfoEntry:4];

    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10003ED18();
    }

    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v29 = 0u;
    relevantVolumesInfo2 = [(SAVolumeScanner *)self relevantVolumesInfo];
    obj = [relevantVolumesInfo2 volumesPaths];

    v11 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v11)
    {
      v20 = *v30;
      do
      {
        v12 = 0;
        do
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v29 + 1) + 8 * v12);
          *buf = 0;
          v24 = buf;
          v25 = 0x3032000000;
          v26 = sub_100017264;
          v27 = sub_100017274;
          v28 = objc_opt_new();
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_10001E388;
          v21[3] = &unk_100065258;
          v21[4] = v13;
          v21[5] = self;
          v22 = tagsCopy;
          v21[6] = v33;
          v21[7] = buf;
          [SAAttributionTag processAttributionTagsForVol:v13 withBlock:v21];
          if (tagsCopy)
          {
            appSizerResults = [(SAVolumeScanner *)self appSizerResults];
            attributionTags = [appSizerResults attributionTags];

            objc_sync_enter(attributionTags);
            appSizerResults2 = [(SAVolumeScanner *)self appSizerResults];
            attributionTags2 = [appSizerResults2 attributionTags];
            [attributionTags2 setObject:*(v24 + 5) forKey:v13];

            objc_sync_exit(attributionTags);
          }

          _Block_object_dispose(buf, 8);

          v12 = v12 + 1;
        }

        while (v11 != v12);
        v11 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v11);
    }

    telemetryManager2 = [(SAVolumeScanner *)self telemetryManager];
    [telemetryManager2 stopTimeForTimeInfoEntry:4];
  }

  _Block_object_dispose(v33, 8);
}

- (void)postProcessResults
{
  if ((byte_10007370C & 1) == 0)
  {
    v3 = SALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "START: postProcessFiltering", buf, 2u);
    }

    appSizerResults = [(SAVolumeScanner *)self appSizerResults];
    appPathList = [(SAVolumeScanner *)self appPathList];
    -[SAVolumeScanner setTotalHiddenAppSize:](self, "setTotalHiddenAppSize:", [appSizerResults postProcessFilteringWithAppPathList:appPathList]);

    [(SAVolumeScanner *)self populateVendorName];
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "START: postProcessMerging", v11, 2u);
    }

    appSizerResults2 = [(SAVolumeScanner *)self appSizerResults];
    [appSizerResults2 postProcessMerging];

    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "START: zeroSizeAppsFiltering", v10, 2u);
    }

    appSizerResults3 = [(SAVolumeScanner *)self appSizerResults];
    [appSizerResults3 zeroSizeAppsFiltering];
  }
}

- (void)processSpeculativeDownloadData
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SAVolumeScanner processSpeculativeDownloadData]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "START: %s", &v8, 0xCu);
  }

  v4 = objc_opt_new();
  [v4 setOptions:1];
  relevantVolumesInfo = [(SAVolumeScanner *)self relevantVolumesInfo];
  pathList = [(SAVolumeScanner *)self pathList];
  [v4 analyzeVolumesInfo:relevantVolumesInfo pathList:pathList appSizerResults:self->_appSizerResults appSizerTelemetry:self->_telemetryManager shouldStop:{+[SAVolumeScanner shouldForceSDAAbort](SAVolumeScanner, "shouldForceSDAAbort")}];

  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SAVolumeScanner processSpeculativeDownloadData]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "END: %s", &v8, 0xCu);
  }
}

- (void)sendCacheUsageTelemetryWithBGTask:(id)task
{
  taskCopy = task;
  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SAVolumeScanner sendCacheUsageTelemetryWithBGTask:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "START: %s", &v11, 0xCu);
  }

  v6 = objc_opt_new();
  appSizerResults = [(SAVolumeScanner *)self appSizerResults];
  telemetryManager = [(SAVolumeScanner *)self telemetryManager];
  appPathList = [(SAVolumeScanner *)self appPathList];
  pathList = [(SAVolumeScanner *)self pathList];
  [v6 sendCacheUsageTelemetry:appSizerResults telemetryManager:telemetryManager appPathList:appPathList pathList:pathList BGTask:taskCopy];
}

- (void)startProcessingSUPurgeableDataWithBGTask:(id)task runMode:(unint64_t)mode
{
  v5 = [SAPurgeableRecords newWithBGTask:task withRunMode:mode];
  [(SAVolumeScanner *)self setPurgeableRecords:v5];

  purgeableRecords = [(SAVolumeScanner *)self purgeableRecords];
  relevantVolumesInfo = [(SAVolumeScanner *)self relevantVolumesInfo];
  [purgeableRecords asyncStartProcessingSUPurgeableUrgencyFiles:relevantVolumesInfo];
}

- (unsigned)runAppSizerWithRunMode:(unint64_t)mode BGTask:(id)task scanOptions:(unint64_t)options error:(id *)error
{
  taskCopy = task;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  self->_scanOptions = options;
  v10 = SALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "START: App Sizer", buf, 2u);
  }

  if (![(SAVolumeScanner *)self _isRerun])
  {
    v11 = +[NSDate now];
    startTime = self->_startTime;
    self->_startTime = v11;
  }

  if (taskCopy)
  {
    v13 = SALog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v14 = "App Sizer: Daily BG Task";
  }

  else
  {
    v13 = SALog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v14 = "App Sizer: User Initiated";
  }

  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
LABEL_11:

  appSizerScan = [(SAVolumeScanner *)self appSizerScan];
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10001F76C;
  v73[3] = &unk_100065280;
  v73[4] = self;
  v73[5] = &v74;
  [appSizerScan initiatePathsScanWithRunMode:mode BGTask:taskCopy scanOptions:options replyBlock:v73];

  appSizerScan2 = [(SAVolumeScanner *)self appSizerScan];
  relevantVolumesInfo = [appSizerScan2 relevantVolumesInfo];
  [(SAVolumeScanner *)self setRelevantVolumesInfo:relevantVolumesInfo];

  appSizerScan3 = [(SAVolumeScanner *)self appSizerScan];
  appPathList = [appSizerScan3 appPathList];
  [(SAVolumeScanner *)self setAppPathList:appPathList];

  appSizerScan4 = [(SAVolumeScanner *)self appSizerScan];
  pathList = [appSizerScan4 pathList];
  [(SAVolumeScanner *)self setPathList:pathList];

  v22 = *(v75 + 24);
  if (v22 == 2)
  {
    appSizerScan5 = [(SAVolumeScanner *)self appSizerScan];
    [appSizerScan5 resetState:mode];

    v24 = SALog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "App Sizer Deferred", buf, 2u);
    }

    v22 = *(v75 + 24);
  }

  if (!v22)
  {
    appSizerScan6 = [(SAVolumeScanner *)self appSizerScan];
    v22 = [appSizerScan6 shouldDefer:mode BGTask:taskCopy];

    if (v22)
    {
      if (v22 == 2)
      {
        appSizerScan7 = [(SAVolumeScanner *)self appSizerScan];
        [appSizerScan7 resetState:mode];

        v27 = SALog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
LABEL_30:
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "App Sizer Deferred", buf, 2u);
          goto LABEL_31;
        }

        goto LABEL_31;
      }
    }

    else
    {
      [(SAVolumeScanner *)self calculateFixedSizes:(options >> 5) & 1];
      if ((options & 0x4000) != 0)
      {
        [(SAVolumeScanner *)self startProcessingSUPurgeableDataWithBGTask:taskCopy runMode:mode];
      }

      appSizerScan8 = [(SAVolumeScanner *)self appSizerScan];
      v22 = [appSizerScan8 shouldDefer:mode BGTask:taskCopy];

      if (v22)
      {
        if (v22 == 2)
        {
          appSizerScan9 = [(SAVolumeScanner *)self appSizerScan];
          [appSizerScan9 resetState:mode];

          v27 = SALog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            goto LABEL_30;
          }

LABEL_31:

          LOBYTE(v22) = 2;
        }
      }

      else
      {
        [(SAVolumeScanner *)self processAttributionTags:(options >> 6) & 1];
        appSizerScan10 = [(SAVolumeScanner *)self appSizerScan];
        v22 = [appSizerScan10 shouldDefer:mode BGTask:taskCopy];

        if (v22)
        {
          if (v22 == 2)
          {
            appSizerScan11 = [(SAVolumeScanner *)self appSizerScan];
            [appSizerScan11 resetState:mode];

            v27 = SALog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              goto LABEL_30;
            }

            goto LABEL_31;
          }
        }

        else
        {
          [(SAVolumeScanner *)self processClones:(options >> 8) & 1];
          [(SAVolumeScanner *)self accountForAppsCacheSize];
          [(SAVolumeScanner *)self accountForPurgeableAssets];
          [(SAVolumeScanner *)self calculateSystemVolumeSize];
          [(SAVolumeScanner *)self getPurgeableDataInfo];
          [(SAVolumeScanner *)self calculateDataVolumesSize];
          [(SAVolumeScanner *)self addSoftwareUpdateBundle];
          [(SAVolumeScanner *)self addSoftwareUpdateReserve];
          [(SAVolumeScanner *)self postProcessResults];
          appSizerResults = [(SAVolumeScanner *)self appSizerResults];
          telemetryManager = [(SAVolumeScanner *)self telemetryManager];
          [SALLMList billLLMsToSystemOn:appSizerResults andTelemetry:telemetryManager];

          telemetryManager2 = [(SAVolumeScanner *)self telemetryManager];
          [telemetryManager2 addValue:-[SAVolumeScanner systemVolumeSize](self forTotalsInfoEntry:{"systemVolumeSize"), 17}];

          [(SAVolumeScanner *)self calculateDiskSpaceSize];
          [(SAVolumeScanner *)self calculateSystemDataSize];
          appSizerResults2 = [(SAVolumeScanner *)self appSizerResults];
          [appSizerResults2 updateTimestamp];

          if ((options & 2) != 0)
          {
            v37 = SALog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Calling Handlers with intermittent results", buf, 2u);
            }

            appSizerResults3 = [(SAVolumeScanner *)self appSizerResults];
            [(SAVolumeScanner *)self callHandlersWithResults:appSizerResults3 status:1 error:0];
          }

          if ((options & 0x8000) != 0)
          {
            appSizerResults4 = [(SAVolumeScanner *)self appSizerResults];
            [appSizerResults4 setInternalFlags:{objc_msgSend(appSizerResults4, "internalFlags") | 1}];

            [(SAVolumeScanner *)self processPurgeableAttributionTags:(options >> 6) & 1];
          }

          if ((options & 0x80) != 0)
          {
            v40 = SALog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              relevantVolumesInfo2 = [(SAVolumeScanner *)self relevantVolumesInfo];
              volumesPaths = [relevantVolumesInfo2 volumesPaths];
              *buf = 138412290;
              v79 = volumesPaths;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Collecting FS purgeable data on volumes %@", buf, 0xCu);
            }

            relevantVolumesInfo3 = [(SAVolumeScanner *)self relevantVolumesInfo];
            volumesPaths2 = [relevantVolumesInfo3 volumesPaths];
            v45 = [SASupport getFSPurgeableDataOnVolumes:volumesPaths2];
            appSizerResults5 = [(SAVolumeScanner *)self appSizerResults];
            [appSizerResults5 setFSPurgeableData:v45];
          }

          if ((options & 4) != 0)
          {
            appSizerResults6 = [(SAVolumeScanner *)self appSizerResults];
            [appSizerResults6 print];
          }

          if ((options & 0x4000) != 0)
          {
            processSUPurgeableUrgencyResults = [(SAVolumeScanner *)self processSUPurgeableUrgencyResults];
            LOBYTE(v22) = processSUPurgeableUrgencyResults;
            if (processSUPurgeableUrgencyResults)
            {
              if (processSUPurgeableUrgencyResults != 2)
              {
                goto LABEL_32;
              }

              appSizerScan12 = [(SAVolumeScanner *)self appSizerScan];
              [appSizerScan12 resetState:mode];

              v27 = SALog();
              if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_31;
              }

              *buf = 0;
              goto LABEL_30;
            }
          }

          if ((options & 8) != 0)
          {
            telemetryManager3 = [(SAVolumeScanner *)self telemetryManager];
            dictionaryDescription = [telemetryManager3 dictionaryDescription];
            appSizerResults7 = [(SAVolumeScanner *)self appSizerResults];
            [appSizerResults7 setReportedTelemetry:dictionaryDescription];
          }

          appSizerResults8 = [(SAVolumeScanner *)self appSizerResults];
          appSizeBreakdownList = [appSizerResults8 appSizeBreakdownList];

          if (appSizeBreakdownList)
          {
            appSizerResults9 = [(SAVolumeScanner *)self appSizerResults];
            appSizeBreakdownList2 = [appSizerResults9 appSizeBreakdownList];
            generateDictionary = [appSizeBreakdownList2 generateDictionary];
            appSizerResults10 = [(SAVolumeScanner *)self appSizerResults];
            [appSizerResults10 setAppsInfo:generateDictionary];
          }

          appSizerScan13 = [(SAVolumeScanner *)self appSizerScan];
          [appSizerScan13 resetState:mode];

          telemetryManager4 = [(SAVolumeScanner *)self telemetryManager];
          appPathList2 = [(SAVolumeScanner *)self appPathList];
          [telemetryManager4 updateSAFOptionWithPathsList:appPathList2];

          if (options)
          {
            v62 = SALog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "START: App Sizer Calling Handlers", buf, 2u);
            }

            appSizerResults11 = [(SAVolumeScanner *)self appSizerResults];
            [(SAVolumeScanner *)self callHandlersWithResults:appSizerResults11 status:0 error:0];
          }

          v64 = SALog();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "END: App Sizer", buf, 2u);
          }

          telemetryManager5 = [(SAVolumeScanner *)self telemetryManager];
          [telemetryManager5 stopTimeForTimeInfoEntry:6];

          if ((options & 0x200) != 0)
          {
            telemetryManager6 = [(SAVolumeScanner *)self telemetryManager];
            [telemetryManager6 sendTelemetry:taskCopy != 0];
          }

          if ((options & 0x800) != 0)
          {
            appSizerScan14 = [(SAVolumeScanner *)self appSizerScan];
            v22 = [appSizerScan14 shouldDefer:mode BGTask:taskCopy];

            if (v22)
            {
              if (v22 != 2)
              {
                goto LABEL_32;
              }

              appSizerScan15 = [(SAVolumeScanner *)self appSizerScan];
              [appSizerScan15 resetState:mode];

              v27 = SALog();
              if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_31;
              }

              *buf = 0;
              goto LABEL_30;
            }

            [(SAVolumeScanner *)self processSpeculativeDownloadData];
          }

          if ((options & 0x10000) != 0)
          {
            appSizerScan16 = [(SAVolumeScanner *)self appSizerScan];
            v22 = [appSizerScan16 shouldDefer:mode BGTask:taskCopy];

            if (v22)
            {
              if (v22 != 2)
              {
                goto LABEL_32;
              }

              appSizerScan17 = [(SAVolumeScanner *)self appSizerScan];
              [appSizerScan17 resetState:mode];

              v27 = SALog();
              if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_31;
              }

              *buf = 0;
              goto LABEL_30;
            }

            [(SAVolumeScanner *)self sendCacheUsageTelemetryWithBGTask:taskCopy];
          }

          if (taskCopy)
          {
            appSizerResults12 = [(SAVolumeScanner *)self appSizerResults];
            telemetryManager7 = [(SAVolumeScanner *)self telemetryManager];
            [SAMetricKit sendDataToMetricKit:appSizerResults12 telemetryManager:telemetryManager7];
          }

          LOBYTE(v22) = [(SAVolumeScanner *)self scheduleAppSizerReRun:options mode:mode];
        }
      }
    }
  }

LABEL_32:
  _Block_object_dispose(&v74, 8);

  return v22;
}

+ (void)setForceTelemetry
{
  v2 = SALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[SAVolumeScanner setForceTelemetry]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: set to TRUE", &v3, 0xCu);
  }

  byte_10007370D = 1;
}

+ (BOOL)shouldForceTelemetry
{
  v2 = byte_10007370D;
  byte_10007370D = 0;
  if (v2 == 1)
  {
    v3 = SALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "+[SAVolumeScanner shouldForceTelemetry]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: forceTelemetry", &v5, 0xCu);
    }
  }

  return v2;
}

+ (void)setForceSDAAbort
{
  v2 = SALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[SAVolumeScanner setForceSDAAbort]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: forceSDAAbort set to TRUE", &v3, 0xCu);
  }

  byte_10007370E = 1;
}

+ (BOOL)shouldForceSDAAbort
{
  v2 = byte_10007370E;
  byte_10007370E = 0;
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSNumber numberWithBool:v2];
    v6 = 136315394;
    v7 = "+[SAVolumeScanner shouldForceSDAAbort]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: forceSDAAbort is %@", &v6, 0x16u);
  }

  return v2;
}

@end