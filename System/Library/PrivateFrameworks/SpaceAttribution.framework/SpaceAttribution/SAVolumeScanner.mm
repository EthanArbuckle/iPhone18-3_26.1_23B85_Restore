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
- (unsigned)runAppSizerWithRunMode:(unint64_t)a3 BGTask:(id)a4 scanOptions:(unint64_t)a5 error:(id *)a6;
- (unsigned)scheduleAppSizerReRun:(unint64_t)a3 mode:(unint64_t)a4;
- (void)_initiateAsyncNonCachedCDQuery;
- (void)accountForAppsCacheSize;
- (void)accountForCDPluginSize:(id)a3;
- (void)accountForOVPFile;
- (void)accountForPurgeableAssets;
- (void)addSoftwareUpdateBundle;
- (void)addSoftwareUpdateReserve;
- (void)calculateDataVolumesSize;
- (void)calculateDiskSpaceSize;
- (void)calculateFixedSizes:(BOOL)a3;
- (void)calculateSystemDataSize;
- (void)calculateSystemVolumeSize;
- (void)calculateTotalVisibleAppSize;
- (void)callHandlersWithResults:(id)a3 status:(int64_t)a4 error:(id)a5;
- (void)getPurgeableDataInfo;
- (void)populateVendorName;
- (void)postProcessResults;
- (void)processAttributionTags:(BOOL)a3;
- (void)processPurgeableAttributionTags:(BOOL)a3;
- (void)processSpeculativeDownloadData;
- (void)sendCacheUsageTelemetryWithBGTask:(id)a3;
- (void)startProcessingSUPurgeableDataWithBGTask:(id)a3 runMode:(unint64_t)a4;
- (void)updateAppSizerResultsWithSUPurgeableUrgencySizes;
- (void)updateAttributonTagInfoForBundle:(id)a3 purgeableTagSize:(unint64_t)a4 volumePath:(id)a5;
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
  v2 = [(SAVolumeScanner *)self appSizerResults];
  v3 = [v2 systemApp];
  v4 = [v3 dataSize];

  return v4;
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
  v3 = [(SAVolumeScanner *)self relevantVolumesInfo];
  v4 = [v3 volumesPaths];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(SAVolumeScanner *)self purgeableRecords];
        v11 = [v10 SUPurgeableUrgencyData];
        v12 = [v11 objectForKeyedSubscript:v9];

        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100018548;
        v13[3] = &unk_100064FD8;
        v13[4] = self;
        v13[5] = v9;
        [v12 enumerateKeysAndObjectsUsingBlock:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v4 = [(SAVolumeScanner *)self appSizerResults];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100018B0C;
  v15[3] = &unk_100065000;
  v15[4] = self;
  v15[5] = &v28;
  v15[6] = &v24;
  v15[7] = &v20;
  v15[8] = &v16;
  [v4 enumerateAppsDataUsingBlock:v15];

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
    v9 = [(SAVolumeScanner *)self totalVisibleAppSize];
    v10 = [(SAVolumeScanner *)self totalHiddenAppSize];
    v11 = v21[3];
    *buf = 134218752;
    v33 = v8;
    v34 = 2048;
    v35 = v9;
    v36 = 2048;
    v37 = v10;
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
    v5 = [(SAVolumeScanner *)self appSizerResults];
    v6 = [v5 totalCDAvailable];
    v7 = [(SAVolumeScanner *)self appSizerResults];
    v8 = [v7 totalPurgeableClones];
    v40 = 134218240;
    v41 = v6;
    v42 = 2048;
    v43 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "App Sizer totalCDAvailable:%llu purgeableClonesSize: %llu", &v40, 0x16u);
  }

  v9 = [(SAVolumeScanner *)self appSizerResults];
  v10 = [v9 totalCDAvailable];
  v11 = [(SAVolumeScanner *)self appSizerResults];
  [v11 setTotalPurgeableDataSize:v10];

  v12 = [(SAVolumeScanner *)self appSizerResults];
  [v12 initDiskUsedAndCapacity];

  v13 = [(SAVolumeScanner *)self appSizerResults];
  v14 = [v13 diskUsed];
  v15 = [(SAVolumeScanner *)self appSizerResults];
  [v15 setAPFSDiskUsed:v14];

  v16 = [(SAVolumeScanner *)self telemetryManager];
  v17 = [(SAVolumeScanner *)self appSizerResults];
  v18 = [v17 APFSDiskUsed];
  v19 = [(SAVolumeScanner *)self appSizerResults];
  [v16 updateTotalsInfo:v18 totalPurgeable:{objc_msgSend(v19, "totalPurgeableDataSize")}];

  v20 = SALog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(SAVolumeScanner *)self appSizerResults];
    v22 = [v21 diskUsed];
    v23 = [(SAVolumeScanner *)self appSizerResults];
    v24 = [v23 diskCapacity];
    v25 = [(SAVolumeScanner *)self softwareUpdateReserve];
    v26 = [(SAVolumeScanner *)self appSizerResults];
    v27 = [v26 totalPurgeableDataSize];
    v40 = 134218752;
    v41 = v22;
    v42 = 2048;
    v43 = v24;
    v44 = 2048;
    v45 = v25;
    v46 = 2048;
    v47 = v27;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "App Sizer diskUsed:%llu diskCapacity:%llu SUR:%llu totalPurgeableDataSize:%llu", &v40, 0x2Au);
  }

  v28 = [(SAVolumeScanner *)self appSizerResults];
  [v28 setDiskUsed:{-[SAVolumeScanner softwareUpdateReserve](self, "softwareUpdateReserve") + objc_msgSend(v28, "diskUsed")}];

  v29 = [(SAVolumeScanner *)self appSizerResults];
  v30 = [v29 diskUsed];
  v31 = [(SAVolumeScanner *)self appSizerResults];
  v32 = [v31 totalPurgeableDataSize];

  if (v30 >= v32)
  {
    v34 = [(SAVolumeScanner *)self appSizerResults];
    v35 = [(SAVolumeScanner *)self appSizerResults];
    [v34 setDiskUsed:{objc_msgSend(v34, "diskUsed") - objc_msgSend(v35, "totalPurgeableDataSize")}];
  }

  else
  {
    v33 = SALog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10003E340(self);
    }

    v34 = [(SAVolumeScanner *)self appSizerResults];
    [v34 setTotalPurgeableDataSize:0];
  }

  v36 = [(SAVolumeScanner *)self appSizerResults];
  v37 = [v36 diskUsed];
  v38 = [(SAVolumeScanner *)self appSizerResults];
  [v38 setRawDiskedUsed:v37];

  v39 = [(SAVolumeScanner *)self appSizerResults];
  -[SAVolumeScanner setRawTotalPurgeableDataSize:](self, "setRawTotalPurgeableDataSize:", [v39 totalPurgeableDataSize]);
}

- (void)calculateSystemDataSize
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v40) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "START: App Sizer Calculate 'System Data' Size", &v40, 2u);
  }

  v4 = [(SAVolumeScanner *)self appSizerResults];
  v5 = [v4 rawDiskedUsed];
  v6 = [(SAVolumeScanner *)self appSizerResults];
  [v6 setDiskUsed:v5];

  v7 = [(SAVolumeScanner *)self rawTotalPurgeableDataSize];
  v8 = [(SAVolumeScanner *)self appSizerResults];
  [v8 setTotalPurgeableDataSize:v7];

  [(SAVolumeScanner *)self calculateTotalVisibleAppSize];
  v9 = [(SAVolumeScanner *)self appSizerResults];
  v10 = [v9 diskUsed];
  v11 = [(SAVolumeScanner *)self totalVisibleAppSize];
  v12 = [(SAVolumeScanner *)self softwareUpdateVolumeUsedSpace];
  v13 = v10 - ([(SAVolumeScanner *)self systemVolumeSize]+ v11 + v12);

  v14 = [(SAVolumeScanner *)self appSizerResults];
  [v14 setRawSystemDataSize:v13];

  v15 = SALog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(SAVolumeScanner *)self appSizerResults];
    v17 = [v16 diskUsed];
    v18 = [(SAVolumeScanner *)self totalVisibleAppSize];
    v19 = [(SAVolumeScanner *)self softwareUpdateVolumeUsedSpace];
    v20 = [(SAVolumeScanner *)self systemVolumeSize];
    v40 = 134219008;
    v41 = v17;
    v42 = 2048;
    v43 = v18;
    v44 = 2048;
    v45 = v19;
    v46 = 2048;
    v47 = v20;
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

    v22 = [(SAVolumeScanner *)self totalVisibleAppSize];
    v23 = [(SAVolumeScanner *)self softwareUpdateVolumeUsedSpace];
    v24 = [(SAVolumeScanner *)self softwareUpdateReserve];
    v25 = [(SAVolumeScanner *)self systemVolumeUsedSpace];
    v26 = [(SAVolumeScanner *)self appSizerResults];
    v27 = v22 + v23 + v24 + v25 - [v26 diskUsed] + 0x40000000;

    v28 = [(SAVolumeScanner *)self appSizerResults];
    v29 = [v28 totalPurgeableDataSize];

    if (v27 <= v29)
    {
      v31 = [(SAVolumeScanner *)self appSizerResults];
      v32 = [v31 totalPurgeableDataSize] - v27;

      v33 = [(SAVolumeScanner *)self appSizerResults];
      [v33 setDiskUsed:{objc_msgSend(v33, "diskUsed") + v27}];

      v34 = [(SAVolumeScanner *)self appSizerResults];
      [v34 setTotalPurgeableDataSize:v32];

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

  v35 = [(SAVolumeScanner *)self appSizerResults];
  v36 = [v35 systemDataApp];

  [v36 setDataSize:v13];
  [v36 setFixedSize:0];
  v37 = SALog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [v36 dataSize];
    v40 = 134217984;
    v41 = v38;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "systemData = %llu", &v40, 0xCu);
  }

  v39 = [(SAVolumeScanner *)self telemetryManager];
  [v39 setSystemDataSize:{objc_msgSend(v36, "dataSize")}];
}

- (void)callHandlersWithResults:(id)a3 status:(int64_t)a4 error:(id)a5
{
  v7 = a5;
  v8 = a3;
  [v8 populateAppsData];
  [v8 setStatus:a4];
  [SACallbackManager callAppSizeHandlersWithResults:v8 error:v7];
}

- (unsigned)processSUPurgeableUrgencyResults
{
  v3 = [(SAVolumeScanner *)self purgeableRecords];
  v4 = [v3 waitForProcessingSUPurgeableUrgencyFiles];

  if (v4)
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

  return v4;
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

  v4 = [(SAVolumeScanner *)self telemetryManager];
  [v4 startTimeForTimeInfoEntry:10];

  LODWORD(v4) = [(SAVolumeScanner *)self isSoftwareUpdateInProgressiOS];
  v5 = [(SAVolumeScanner *)self telemetryManager];
  [v5 stopTimeForTimeInfoEntry:10];

  if (v4)
  {
    [(SAVolumeScanner *)self setSoftwareUpdateVolumeUsedSpace:[(SAVolumeScanner *)self getSUVolumeUsedSpace]];
    v6 = objc_opt_new();
    [v6 setDataSize:[(SAVolumeScanner *)self softwareUpdateVolumeUsedSpace]];
    v7 = [(SAVolumeScanner *)self appSizerResults];
    [v7 updateBundleIDs:@"com.apple.fakeapp.SoftwareUpdate" withAppSize:v6];

    v8 = [(SAVolumeScanner *)self telemetryManager];
    [v8 addValue:-[SAVolumeScanner softwareUpdateVolumeUsedSpace](self forAppInfoEntry:"softwareUpdateVolumeUsedSpace") forBundleIDs:{23, @"com.apple.fakeapp.SoftwareUpdate"}];

    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(SAVolumeScanner *)self softwareUpdateVolumeUsedSpace];
      v11 = 134217984;
      v12 = v10;
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
      v10 = [(SAVolumeScanner *)self appSizerResults];
      [v10 addToSystemDetails:-[SAVolumeScanner softwareUpdateReserve](self key:{"softwareUpdateReserve"), @"com.apple.fakeapp.SoftwareUpdateReserve"}];

      v11 = [(SAVolumeScanner *)self appSizerResults];
      [v11 updateBundleIDs:@"com.apple.fakeapp.System" withAppSize:v9];

      v12 = [(SAVolumeScanner *)self telemetryManager];
      [v12 updateBundleIDs:@"com.apple.fakeapp.System" usedDirStat:0 fixedSize:objc_msgSend(v9 dataSize:"fixedSize") cloneSize:objc_msgSend(v9 purgeableSize:"dataSize") fileCount:{objc_msgSend(v9, "cloneSize"), objc_msgSend(v9, "purgeableSize"), 0}];

      v13 = [(SAVolumeScanner *)self telemetryManager];
      [v13 addValue:objc_msgSend(v7 forAppInfoEntry:"unsignedLongLongValue") forBundleIDs:{23, @"com.apple.fakeapp.SoftwareUpdateReserve"}];
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

- (void)processPurgeableAttributionTags:(BOOL)a3
{
  v20 = self;
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
  v5 = [(SAVolumeScanner *)v20 purgeableRecords];
  v6 = [(SAVolumeScanner *)v20 relevantVolumesInfo];
  v7 = [v6 volumesPaths];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001A464;
  v27[3] = &unk_100065050;
  v27[4] = &v38;
  v27[5] = &v34;
  v27[6] = buf;
  [v5 processPurgeableAttributionTagsOnRelevantVolumes:v7 reply:v27];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(SAVolumeScanner *)v20 relevantVolumesInfo];
  v9 = [v8 volumesPaths];

  v10 = [v9 countByEnumeratingWithState:&v23 objects:v46 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [*(v29 + 5) objectForKeyedSubscript:{v13, v20}];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10001A48C;
        v21[3] = &unk_100065078;
        v21[4] = v20;
        v21[5] = v13;
        v22 = a3;
        [v14 enumerateKeysAndObjectsUsingBlock:v21];
      }

      v10 = [v9 countByEnumeratingWithState:&v23 objects:v46 count:16];
    }

    while (v10);
  }

  v15 = [(SAVolumeScanner *)v20 telemetryManager];
  [v15 setValue:v39[3] forTimeInfoEntry:9];

  v16 = [(SAVolumeScanner *)v20 telemetryManager];
  [v16 setValue:v35[3] forTotalsInfoEntry:3];

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

- (void)updateAttributonTagInfoForBundle:(id)a3 purgeableTagSize:(unint64_t)a4 volumePath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(SAVolumeScanner *)self appSizerResults];
  v10 = [v9 attributionTags];
  v21 = v8;
  v11 = [v10 objectForKey:v8];

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
        if ([v17 isEqualToString:v7])
        {
          v18 = [v16 objectForKey:@"attributionSize"];
          v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 unsignedLongLongValue] - a4);
          [v16 setObject:v19 forKey:@"attributionSize"];

          v20 = [NSNumber numberWithUnsignedLongLong:a4];
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
  v3 = [(SAVolumeScanner *)self telemetryManager];
  v4 = [v3 getValueForDirStatsTotalsInfoEntry:2];

  v5 = [(SAVolumeScanner *)self telemetryManager];
  v6 = [v5 getValueForDirStatsTotalsInfoEntry:3];

  v7 = [(SAVolumeScanner *)self telemetryManager];
  v8 = [v7 getValueForDirStatsTotalsInfoEntry:4];

  v9 = [(SAVolumeScanner *)self telemetryManager];
  v10 = [v9 getValueForDirStatsTotalsInfoEntry:5];

  v11 = [(SAVolumeScanner *)self telemetryManager];
  v12 = [v11 getValueForDirStatsTotalsInfoEntry:6];

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

  v4 = [(SAVolumeScanner *)self appSizerResults];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001AAD8;
  v5[3] = &unk_1000650A0;
  v5[4] = self;
  [v4 enumerateAppsDataUsingBlock:v5];
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

      v6 = [(SAVolumeScanner *)self CDClient];
      [v6 getPurgeableInfoAsync:@"/private/var/mobile" cached:0 completionHandler:0];

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

      v14 = [(SAVolumeScanner *)self _isRerun];
      v15 = @"main run";
      *buf = 136315650;
      v46 = "[SAVolumeScanner getPurgeableDataInfo]";
      v47 = 2112;
      v48 = v13;
      if (v14)
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

    v16 = [(SAVolumeScanner *)self CDClient];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10001B374;
    v30[3] = &unk_1000650C8;
    v30[4] = &v39;
    v30[5] = &v33;
    [v16 getPurgeableInfo:@"/private/var/mobile" cached:(scanOptions & 0x20000) == 0 timeout:dispatch_time(0 completionHandler:60000000000), v30];
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
  v6 = [(SAVolumeScanner *)self CDClient];
  v8 = (v40 + 5);
  v7 = v40[5];
  v9 = (v34 + 5);
  v31 = v34[5];
  obj = v7;
  [v6 getAsyncPurgeableInfoWithTimeout:v5 results:&obj error:&v31];
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

  v16 = SALog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v46 = "[SAVolumeScanner getPurgeableDataInfo]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Synchronous purgeable data retrieval successful.", buf, 0xCu);
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
      v25 = [(SAVolumeScanner *)self appSizerResults];
      [v25 setTotalCDAvailable:{objc_msgSend(v20, "longLongValue") + objc_msgSend(v25, "totalCDAvailable")}];
    }

    if (v19)
    {
      v26 = [(SAVolumeScanner *)self appSizerResults];
      [v26 setTotalPurgeableClones:{objc_msgSend(v19, "longLongValue") + objc_msgSend(v26, "totalPurgeableClones")}];
    }

    if (v17)
    {
      v27 = [(SAVolumeScanner *)self appSizerResults];
      [v27 setTotalCDPluginsSize:{-[NSObject longLongValue](v17, "longLongValue") + objc_msgSend(v27, "totalCDPluginsSize")}];
    }

    if (v23)
    {
      v28 = [(SAVolumeScanner *)self appSizerResults];
      [v28 setTotalCDAppsCacheSize:{objc_msgSend(v23, "longLongValue") + objc_msgSend(v28, "totalCDAppsCacheSize")}];
    }

    v29 = sub_100001AE4(v40[5]);
    [(SAVolumeScanner *)self accountForCDPluginSize:v29];
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);
}

- (unsigned)scheduleAppSizerReRun:(unint64_t)a3 mode:(unint64_t)a4
{
  if ((a3 & 0x1000) == 0)
  {
    return 5;
  }

  v8 = +[SACallbackManager handlersCount];
  v5 = 5;
  if (a4 == 2 && v8 >= 1)
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
      v21 = self;
      v22 = a3;
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

- (void)calculateFixedSizes:(BOOL)a3
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
  v9 = [(SAVolumeScanner *)self appSizerResults];
  v10 = [v9 appsDataInternal];
  v11 = [v10 allKeys];

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10001CBC0;
  v17 = &unk_100065190;
  v18 = self;
  v19 = v6;
  v20 = +[SASupport getDiskCapacity];
  v21 = a3;
  v12 = v6;
  [SAUtilities processArrayConcurrently:v11 number:4 queue:v8 group:v7 block:&v14];
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

  v4 = [(SAVolumeScanner *)self appSizerResults];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001D130;
  v5[3] = &unk_1000650A0;
  v5[4] = self;
  [v4 enumerateAppsDataUsingBlock:v5];
}

- (void)accountForCDPluginSize:(id)a3
{
  v4 = a3;
  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "START: App Sizer account for CD plugin size", buf, 2u);
  }

  v6 = sub_100001D28();
  if (v4 && v6)
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
    v30 = self;
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
        v10 = [(SAVolumeScanner *)self appSizerResults];
        v11 = [v10 appsDataInternal];
        v12 = [v11 objectForKey:v8];

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

                v19 = [v4 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * j)];
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

          self = v30;
          v20 = [(SAVolumeScanner *)v30 appSizerResults];
          [v20 updateBundleIDs:v8 fixedSize:0 dataSize:0 cloneSize:0 purgeableSize:v16 cloneFixUpSize:0 physicalSize:0 appCacheSize:0 CDPluginSize:v16];

          v21 = [(SAVolumeScanner *)v30 telemetryManager];
          [v21 updateBundleIDs:v8 appCacheSize:0 CDPluginSize:v16];

          if (v16 <= [v12 dataSize])
          {
            [v12 setDataSize:{objc_msgSend(v12, "dataSize") - v16}];
            v24 = [(SAVolumeScanner *)v30 telemetryManager];
            [v24 setValue:objc_msgSend(v12 forAppInfoEntry:"dataSize") forBundleIDs:{23, v8}];

            v25 = [(SAVolumeScanner *)v30 appSizerResults];
            v26 = [v25 appSizeBreakdownList];

            v9 = v34;
            if (v26)
            {
              v22 = [(SAVolumeScanner *)v30 appSizerResults];
              v27 = [v22 appSizeBreakdownList];
              [v27 addPluginSize:v16 bundleIDs:v8];

              goto LABEL_25;
            }
          }

          else
          {
            v22 = SALog();
            v9 = v34;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = [v12 dataSize];
              *buf = 138412802;
              v44 = v8;
              v45 = 2048;
              v46 = v16;
              v47 = 2048;
              v48 = v23;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error: %@ cd total plugin size: %llu is greater than existing data size: %llu", buf, 0x20u);
            }

LABEL_25:
          }

          v28 = [(SAVolumeScanner *)v30 appSizerResults];
          [v28 setTotalSAFPluginsSize:{objc_msgSend(v28, "totalSAFPluginsSize") + v16}];
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
  v4 = [(SAVolumeScanner *)self relevantVolumesInfo];
  v5 = [v4 volumesPaths];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
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

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
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

- (void)processAttributionTags:(BOOL)a3
{
  v3 = a3;
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

    v6 = [(SAVolumeScanner *)self relevantVolumesInfo];
    v7 = [v6 volumesPaths];
    [SAAttributionTag enableAttributionTagging:v7];

    v8 = [(SAVolumeScanner *)self telemetryManager];
    [v8 startTimeForTimeInfoEntry:4];

    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10003ED18();
    }

    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v29 = 0u;
    v10 = [(SAVolumeScanner *)self relevantVolumesInfo];
    obj = [v10 volumesPaths];

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
          v22 = v3;
          v21[6] = v33;
          v21[7] = buf;
          [SAAttributionTag processAttributionTagsForVol:v13 withBlock:v21];
          if (v3)
          {
            v14 = [(SAVolumeScanner *)self appSizerResults];
            v15 = [v14 attributionTags];

            objc_sync_enter(v15);
            v16 = [(SAVolumeScanner *)self appSizerResults];
            v17 = [v16 attributionTags];
            [v17 setObject:*(v24 + 5) forKey:v13];

            objc_sync_exit(v15);
          }

          _Block_object_dispose(buf, 8);

          v12 = v12 + 1;
        }

        while (v11 != v12);
        v11 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v11);
    }

    v18 = [(SAVolumeScanner *)self telemetryManager];
    [v18 stopTimeForTimeInfoEntry:4];
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

    v4 = [(SAVolumeScanner *)self appSizerResults];
    v5 = [(SAVolumeScanner *)self appPathList];
    -[SAVolumeScanner setTotalHiddenAppSize:](self, "setTotalHiddenAppSize:", [v4 postProcessFilteringWithAppPathList:v5]);

    [(SAVolumeScanner *)self populateVendorName];
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "START: postProcessMerging", v11, 2u);
    }

    v7 = [(SAVolumeScanner *)self appSizerResults];
    [v7 postProcessMerging];

    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "START: zeroSizeAppsFiltering", v10, 2u);
    }

    v9 = [(SAVolumeScanner *)self appSizerResults];
    [v9 zeroSizeAppsFiltering];
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
  v5 = [(SAVolumeScanner *)self relevantVolumesInfo];
  v6 = [(SAVolumeScanner *)self pathList];
  [v4 analyzeVolumesInfo:v5 pathList:v6 appSizerResults:self->_appSizerResults appSizerTelemetry:self->_telemetryManager shouldStop:{+[SAVolumeScanner shouldForceSDAAbort](SAVolumeScanner, "shouldForceSDAAbort")}];

  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SAVolumeScanner processSpeculativeDownloadData]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "END: %s", &v8, 0xCu);
  }
}

- (void)sendCacheUsageTelemetryWithBGTask:(id)a3
{
  v4 = a3;
  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SAVolumeScanner sendCacheUsageTelemetryWithBGTask:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "START: %s", &v11, 0xCu);
  }

  v6 = objc_opt_new();
  v7 = [(SAVolumeScanner *)self appSizerResults];
  v8 = [(SAVolumeScanner *)self telemetryManager];
  v9 = [(SAVolumeScanner *)self appPathList];
  v10 = [(SAVolumeScanner *)self pathList];
  [v6 sendCacheUsageTelemetry:v7 telemetryManager:v8 appPathList:v9 pathList:v10 BGTask:v4];
}

- (void)startProcessingSUPurgeableDataWithBGTask:(id)a3 runMode:(unint64_t)a4
{
  v5 = [SAPurgeableRecords newWithBGTask:a3 withRunMode:a4];
  [(SAVolumeScanner *)self setPurgeableRecords:v5];

  v7 = [(SAVolumeScanner *)self purgeableRecords];
  v6 = [(SAVolumeScanner *)self relevantVolumesInfo];
  [v7 asyncStartProcessingSUPurgeableUrgencyFiles:v6];
}

- (unsigned)runAppSizerWithRunMode:(unint64_t)a3 BGTask:(id)a4 scanOptions:(unint64_t)a5 error:(id *)a6
{
  v9 = a4;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  self->_scanOptions = a5;
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

  if (v9)
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

  v15 = [(SAVolumeScanner *)self appSizerScan];
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10001F76C;
  v73[3] = &unk_100065280;
  v73[4] = self;
  v73[5] = &v74;
  [v15 initiatePathsScanWithRunMode:a3 BGTask:v9 scanOptions:a5 replyBlock:v73];

  v16 = [(SAVolumeScanner *)self appSizerScan];
  v17 = [v16 relevantVolumesInfo];
  [(SAVolumeScanner *)self setRelevantVolumesInfo:v17];

  v18 = [(SAVolumeScanner *)self appSizerScan];
  v19 = [v18 appPathList];
  [(SAVolumeScanner *)self setAppPathList:v19];

  v20 = [(SAVolumeScanner *)self appSizerScan];
  v21 = [v20 pathList];
  [(SAVolumeScanner *)self setPathList:v21];

  v22 = *(v75 + 24);
  if (v22 == 2)
  {
    v23 = [(SAVolumeScanner *)self appSizerScan];
    [v23 resetState:a3];

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
    v25 = [(SAVolumeScanner *)self appSizerScan];
    v22 = [v25 shouldDefer:a3 BGTask:v9];

    if (v22)
    {
      if (v22 == 2)
      {
        v26 = [(SAVolumeScanner *)self appSizerScan];
        [v26 resetState:a3];

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
      [(SAVolumeScanner *)self calculateFixedSizes:(a5 >> 5) & 1];
      if ((a5 & 0x4000) != 0)
      {
        [(SAVolumeScanner *)self startProcessingSUPurgeableDataWithBGTask:v9 runMode:a3];
      }

      v28 = [(SAVolumeScanner *)self appSizerScan];
      v22 = [v28 shouldDefer:a3 BGTask:v9];

      if (v22)
      {
        if (v22 == 2)
        {
          v29 = [(SAVolumeScanner *)self appSizerScan];
          [v29 resetState:a3];

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
        [(SAVolumeScanner *)self processAttributionTags:(a5 >> 6) & 1];
        v30 = [(SAVolumeScanner *)self appSizerScan];
        v22 = [v30 shouldDefer:a3 BGTask:v9];

        if (v22)
        {
          if (v22 == 2)
          {
            v31 = [(SAVolumeScanner *)self appSizerScan];
            [v31 resetState:a3];

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
          [(SAVolumeScanner *)self processClones:(a5 >> 8) & 1];
          [(SAVolumeScanner *)self accountForAppsCacheSize];
          [(SAVolumeScanner *)self accountForPurgeableAssets];
          [(SAVolumeScanner *)self calculateSystemVolumeSize];
          [(SAVolumeScanner *)self getPurgeableDataInfo];
          [(SAVolumeScanner *)self calculateDataVolumesSize];
          [(SAVolumeScanner *)self addSoftwareUpdateBundle];
          [(SAVolumeScanner *)self addSoftwareUpdateReserve];
          [(SAVolumeScanner *)self postProcessResults];
          v33 = [(SAVolumeScanner *)self appSizerResults];
          v34 = [(SAVolumeScanner *)self telemetryManager];
          [SALLMList billLLMsToSystemOn:v33 andTelemetry:v34];

          v35 = [(SAVolumeScanner *)self telemetryManager];
          [v35 addValue:-[SAVolumeScanner systemVolumeSize](self forTotalsInfoEntry:{"systemVolumeSize"), 17}];

          [(SAVolumeScanner *)self calculateDiskSpaceSize];
          [(SAVolumeScanner *)self calculateSystemDataSize];
          v36 = [(SAVolumeScanner *)self appSizerResults];
          [v36 updateTimestamp];

          if ((a5 & 2) != 0)
          {
            v37 = SALog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Calling Handlers with intermittent results", buf, 2u);
            }

            v38 = [(SAVolumeScanner *)self appSizerResults];
            [(SAVolumeScanner *)self callHandlersWithResults:v38 status:1 error:0];
          }

          if ((a5 & 0x8000) != 0)
          {
            v39 = [(SAVolumeScanner *)self appSizerResults];
            [v39 setInternalFlags:{objc_msgSend(v39, "internalFlags") | 1}];

            [(SAVolumeScanner *)self processPurgeableAttributionTags:(a5 >> 6) & 1];
          }

          if ((a5 & 0x80) != 0)
          {
            v40 = SALog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [(SAVolumeScanner *)self relevantVolumesInfo];
              v42 = [v41 volumesPaths];
              *buf = 138412290;
              v79 = v42;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Collecting FS purgeable data on volumes %@", buf, 0xCu);
            }

            v43 = [(SAVolumeScanner *)self relevantVolumesInfo];
            v44 = [v43 volumesPaths];
            v45 = [SASupport getFSPurgeableDataOnVolumes:v44];
            v46 = [(SAVolumeScanner *)self appSizerResults];
            [v46 setFSPurgeableData:v45];
          }

          if ((a5 & 4) != 0)
          {
            v47 = [(SAVolumeScanner *)self appSizerResults];
            [v47 print];
          }

          if ((a5 & 0x4000) != 0)
          {
            v48 = [(SAVolumeScanner *)self processSUPurgeableUrgencyResults];
            LOBYTE(v22) = v48;
            if (v48)
            {
              if (v48 != 2)
              {
                goto LABEL_32;
              }

              v49 = [(SAVolumeScanner *)self appSizerScan];
              [v49 resetState:a3];

              v27 = SALog();
              if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_31;
              }

              *buf = 0;
              goto LABEL_30;
            }
          }

          if ((a5 & 8) != 0)
          {
            v50 = [(SAVolumeScanner *)self telemetryManager];
            v51 = [v50 dictionaryDescription];
            v52 = [(SAVolumeScanner *)self appSizerResults];
            [v52 setReportedTelemetry:v51];
          }

          v53 = [(SAVolumeScanner *)self appSizerResults];
          v54 = [v53 appSizeBreakdownList];

          if (v54)
          {
            v55 = [(SAVolumeScanner *)self appSizerResults];
            v56 = [v55 appSizeBreakdownList];
            v57 = [v56 generateDictionary];
            v58 = [(SAVolumeScanner *)self appSizerResults];
            [v58 setAppsInfo:v57];
          }

          v59 = [(SAVolumeScanner *)self appSizerScan];
          [v59 resetState:a3];

          v60 = [(SAVolumeScanner *)self telemetryManager];
          v61 = [(SAVolumeScanner *)self appPathList];
          [v60 updateSAFOptionWithPathsList:v61];

          if (a5)
          {
            v62 = SALog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "START: App Sizer Calling Handlers", buf, 2u);
            }

            v63 = [(SAVolumeScanner *)self appSizerResults];
            [(SAVolumeScanner *)self callHandlersWithResults:v63 status:0 error:0];
          }

          v64 = SALog();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "END: App Sizer", buf, 2u);
          }

          v65 = [(SAVolumeScanner *)self telemetryManager];
          [v65 stopTimeForTimeInfoEntry:6];

          if ((a5 & 0x200) != 0)
          {
            v66 = [(SAVolumeScanner *)self telemetryManager];
            [v66 sendTelemetry:v9 != 0];
          }

          if ((a5 & 0x800) != 0)
          {
            v67 = [(SAVolumeScanner *)self appSizerScan];
            v22 = [v67 shouldDefer:a3 BGTask:v9];

            if (v22)
            {
              if (v22 != 2)
              {
                goto LABEL_32;
              }

              v68 = [(SAVolumeScanner *)self appSizerScan];
              [v68 resetState:a3];

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

          if ((a5 & 0x10000) != 0)
          {
            v69 = [(SAVolumeScanner *)self appSizerScan];
            v22 = [v69 shouldDefer:a3 BGTask:v9];

            if (v22)
            {
              if (v22 != 2)
              {
                goto LABEL_32;
              }

              v70 = [(SAVolumeScanner *)self appSizerScan];
              [v70 resetState:a3];

              v27 = SALog();
              if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_31;
              }

              *buf = 0;
              goto LABEL_30;
            }

            [(SAVolumeScanner *)self sendCacheUsageTelemetryWithBGTask:v9];
          }

          if (v9)
          {
            v71 = [(SAVolumeScanner *)self appSizerResults];
            v72 = [(SAVolumeScanner *)self telemetryManager];
            [SAMetricKit sendDataToMetricKit:v71 telemetryManager:v72];
          }

          LOBYTE(v22) = [(SAVolumeScanner *)self scheduleAppSizerReRun:a5 mode:a3];
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