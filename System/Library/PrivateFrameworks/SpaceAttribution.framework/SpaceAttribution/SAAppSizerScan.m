@interface SAAppSizerScan
+ (id)appSizerScan;
- (SAAppSizerScan)init;
- (SAVolumesInfo)relevantVolumesInfo;
- (unsigned)scanDataPathsWithRunMode:(unint64_t)a3 BGTask:(id)a4 scanOptions:(unint64_t)a5;
- (unsigned)shouldDefer:(unint64_t)a3 BGTask:(id)a4;
- (unsigned)shouldInitiatePathsScan:(unint64_t)a3 withBGTask:(id)a4;
- (unsigned)waitForScan:(id)a3 mode:(unint64_t)a4 BGTask:(id)a5;
- (void)collectAppsList;
- (void)initiatePathsScanWithRunMode:(unint64_t)a3 BGTask:(id)a4 scanOptions:(unint64_t)a5 replyBlock:(id)a6;
- (void)resetState:(unint64_t)a3;
- (void)resolvePathAndGetSize:(id)a3 forBundleIDs:(id)a4 reply:(id)a5;
- (void)scanCachePaths;
- (void)scanPathsWithRunMode:(unint64_t)a3 BGTask:(id)a4 scanOptions:(unint64_t)a5 reply:(id)a6;
@end

@implementation SAAppSizerScan

- (SAAppSizerScan)init
{
  v14.receiver = self;
  v14.super_class = SAAppSizerScan;
  v2 = [(SAAppSizerScan *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_runMode = 0;
    *&v2->_shouldContinueScanning = 1;
    v4 = objc_opt_new();
    pathScanLock = v3->_pathScanLock;
    v3->_pathScanLock = v4;

    v6 = objc_opt_new();
    pathsTrie = v3->_pathsTrie;
    v3->_pathsTrie = v6;

    v8 = objc_opt_new();
    traverser = v3->_traverser;
    v3->_traverser = v8;

    v10 = os_transaction_create();
    scanOSTransaction = v3->_scanOSTransaction;
    v3->_scanOSTransaction = v10;

    relevantVolumesInfo = v3->_relevantVolumesInfo;
    v3->_relevantVolumesInfo = 0;
  }

  return v3;
}

- (void)resetState:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_runMode == a3)
  {
    appSizerResults = obj->_appSizerResults;
    obj->_runMode = 0;
    obj->_appSizerResults = 0;
    *&obj->_shouldContinueScanning = 1;

    appPathList = obj->_appPathList;
    obj->_appPathList = 0;

    pathList = obj->_pathList;
    obj->_pathList = 0;

    scanOSTransaction = obj->_scanOSTransaction;
    obj->_scanOSTransaction = 0;

    relevantVolumesInfo = obj->_relevantVolumesInfo;
    obj->_relevantVolumesInfo = 0;

    telemetryManager = obj->_telemetryManager;
    obj->_telemetryManager = 0;
  }

  objc_sync_exit(obj);
}

- (SAVolumesInfo)relevantVolumesInfo
{
  relevantVolumesInfo = self->_relevantVolumesInfo;
  if (!relevantVolumesInfo)
  {
    v4 = +[SASupport getRelevantVolumes];
    v5 = [SAVolumesInfo newWithVolumesPaths:v4];
    v6 = self->_relevantVolumesInfo;
    self->_relevantVolumesInfo = v5;

    relevantVolumesInfo = self->_relevantVolumesInfo;
  }

  return relevantVolumesInfo;
}

+ (id)appSizerScan
{
  if (qword_1000736F0 != -1)
  {
    sub_10003DDF8();
  }

  v3 = qword_1000736E8;

  return v3;
}

- (unsigned)shouldInitiatePathsScan:(unint64_t)a3 withBGTask:(id)a4
{
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (v7->_scanInProgress)
  {
    if (a3 == 2 && v7->_runMode == 1)
    {
      v8 = SALog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315394;
        v16 = "[SAAppSizerScan shouldInitiatePathsScan:withBGTask:]";
        v17 = 2048;
        *v18 = 2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Updating runMode to %lu", &v15, 0x16u);
      }

      v9 = 0;
      v7->_runMode = 2;
    }

    else
    {
      v13 = SALog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = "[SAAppSizerScan shouldInitiatePathsScan:withBGTask:]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s App sizer is already running. Rejecting the thread", &v15, 0xCu);
      }

      v9 = 1;
    }
  }

  else
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      scanInProgress = v7->_scanInProgress;
      runMode = v7->_runMode;
      v15 = 136315906;
      v16 = "[SAAppSizerScan shouldInitiatePathsScan:withBGTask:]";
      v17 = 1024;
      *v18 = scanInProgress;
      *&v18[4] = 2048;
      *&v18[6] = a3;
      v19 = 2048;
      v20 = runMode;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Initiating paths scan. scanInProgress: %d mode: %lu runMode: %lu", &v15, 0x26u);
    }

    v9 = 0;
    v7->_runMode = a3;
    v7->_scanInProgress = 1;
  }

  objc_sync_exit(v7);

  return v9;
}

- (unsigned)shouldDefer:(unint64_t)a3 BGTask:(id)a4
{
  if (a3 != 1)
  {
    return 0;
  }

  if (![a4 shouldDefer])
  {
    v6 = +[SAAppSizerScan appSizerScan];
    v7 = [v6 runMode];

    if (v7 == 2)
    {
      v4 = SALog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[SAAppSizerScan shouldDefer:BGTask:]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s mode was updated to non-defer, deferring app sizer", &v9, 0xCu);
      }

      v5 = 4;
      goto LABEL_10;
    }

    return 0;
  }

  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[SAAppSizerScan shouldDefer:BGTask:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s app sizer is requested to defer", &v9, 0xCu);
  }

  v5 = 2;
LABEL_10:

  return v5;
}

- (void)resolvePathAndGetSize:(id)a3 forBundleIDs:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [v8 length])
  {
    v11 = open([v8 fileSystemRepresentation], 0);
    if (v11 >= 1)
    {
      v12 = v11;
      v13 = [SASupport getResolvedPathForFD:v11];
      if (v13)
      {
        v14 = self->_pathsTrie;
        objc_sync_enter(v14);
        if (![(SATrie *)self->_pathsTrie isOverlapping:v13 checkIfExists:1])
        {
          [(SATrie *)self->_pathsTrie insertPath:v13];
          objc_sync_exit(v14);

          v14 = [SAUtilities breakCommaSeparatedStringToComponents:v9];
          if ([(SATrie *)v14 count]== 1 && [SASpeculativeDownloadAnalytics isBundleIdInHierarchy:v9])
          {
            v19 = SALog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v22 = 138412546;
              v23 = v8;
              v24 = 2112;
              v25 = v9;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Enabling hierarchy on path %@ for bundleId %@", &v22, 0x16u);
            }

            v20 = 22;
          }

          else
          {
            v20 = 6;
          }

          v21 = [(SAAppSizerScan *)self traverser];
          v18 = [v21 getFolderSizeForFD:v12 options:v20];

          goto LABEL_23;
        }

        v15 = SALog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10003DEA4();
        }

        objc_sync_exit(v14);
      }

      else
      {
        v14 = SALog();
        if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
        {
          sub_10003DF0C();
        }
      }

      v18 = 0;
LABEL_23:

      close(v12);
      goto LABEL_24;
    }

    v16 = *__error();
    v17 = SALog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10003DE0C(v8, v16);
    }
  }

  v18 = 0;
  v13 = 0;
LABEL_24:
  v10[2](v10, v13, v18);
}

- (void)collectAppsList
{
  v3 = [(SAAppPathList *)self->_appPathList appPathList];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016AC8;
  v4[3] = &unk_100064BD8;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (unsigned)scanDataPathsWithRunMode:(unint64_t)a3 BGTask:(id)a4 scanOptions:(unint64_t)a5
{
  v8 = a4;
  v9 = dispatch_group_create();
  v10 = dispatch_get_global_queue(2, 0);
  v11 = [(SAPathList *)self->_pathList pathToBundleIDs];
  v12 = [v11 allKeys];

  v13 = [v12 count] / 1000;
  if (v13 <= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v13;
  }

  v15 = [(SAAppSizerScan *)self shouldDefer:a3 BGTask:v8];
  if (v15)
  {
    v16 = v15;
    [(SAAppSizerScan *)self resetState:a3];
    [(NSLock *)self->_pathScanLock unlock];
  }

  else
  {
    v17 = +[SASupport getDiskCapacity];
    v18 = SALog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v22 = [v12 count];
      v23 = 1024;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "START: App Sizer Scanning Paths. Number Of Paths: (%d) , Number of threads: (%d)", buf, 0xEu);
    }

    [(SATelemetryManager *)self->_telemetryManager startTimeForTimeInfoEntry:3];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100016E28;
    v20[3] = &unk_100064F18;
    v20[4] = self;
    v20[5] = v17;
    v20[6] = a5;
    [SAUtilities processArrayConcurrently:v12 number:v14 queue:v10 group:v9 block:v20];
    v16 = [(SAAppSizerScan *)self waitForScan:v9 mode:a3 BGTask:v8];
  }

  return v16;
}

- (void)scanCachePaths
{
  v3 = [(SAAppPathList *)self->_appPathList appPathList];
  v4 = [v3 allValues];

  v5 = [v4 count] / 1000;
  if (v5 <= 4)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  v7 = dispatch_group_create();
  v8 = dispatch_get_global_queue(2, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100017424;
  v9[3] = &unk_100064F68;
  v9[4] = self;
  [SAUtilities processArrayConcurrently:v4 number:v6 queue:v8 group:v7 block:v9];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)scanPathsWithRunMode:(unint64_t)a3 BGTask:(id)a4 scanOptions:(unint64_t)a5 reply:(id)a6
{
  v10 = a4;
  v11 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  if ((os_variant_has_internal_ui() & 1) != 0 || [SATelemetryManager shouldSendTelemetry:v10 != 0])
  {
    v12 = [SATelemetryManager newWithSAFOptions:1];
    telemetryManager = self->_telemetryManager;
    self->_telemetryManager = v12;
  }

  [(SATelemetryManager *)self->_telemetryManager startTimeForTimeInfoEntry:6];
  [(NSLock *)self->_pathScanLock lock];
  v14 = SALog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "START: App Sizer Importing Paths", buf, 2u);
  }

  [(SATelemetryManager *)self->_telemetryManager startTimeForTimeInfoEntry:7];
  v15 = objc_opt_new();
  appPathList = self->_appPathList;
  self->_appPathList = v15;

  v17 = self->_appPathList;
  v18 = [(SAAppSizerScan *)self relevantVolumesInfo];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100017A38;
  v28[3] = &unk_100064C00;
  v28[4] = &v29;
  [(SAAppPathList *)v17 importDefaultListWithBGTask:v10 volumesInfo:v18 reply:v28];

  [(SATelemetryManager *)self->_telemetryManager stopTimeForTimeInfoEntry:7];
  if (*(v30 + 24) == 1)
  {
    [(NSLock *)self->_pathScanLock unlock];
    (*(v11 + 2))(v11, 2, 0, 0);
  }

  else
  {
    v19 = objc_opt_new();
    pathList = self->_pathList;
    self->_pathList = v19;

    v21 = objc_opt_new();
    appSizerResults = self->_appSizerResults;
    self->_appSizerResults = v21;

    if ((a5 & 0x2000) != 0)
    {
      [(SAAppSizerResults *)self->_appSizerResults enableAppSizeBreakdown];
    }

    v23 = [(SAAppSizerScan *)self shouldDefer:a3 BGTask:v10];
    if (v23)
    {
      [(SAAppSizerScan *)self resetState:a3];
      [(NSLock *)self->_pathScanLock unlock];
      v24 = 0;
      v25 = 0;
    }

    else
    {
      if ((a5 & 0x400) != 0)
      {
        [(SAAppSizerScan *)self collectAppsList];
      }

      v26 = SALog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "START: App Sizer Update Paths List", buf, 2u);
      }

      [(SAPathList *)self->_pathList updateWithAppPathList:self->_appPathList];
      [(SAAppSizerScan *)self scanCachePaths];
      v23 = [(SAAppSizerScan *)self scanDataPathsWithRunMode:a3 BGTask:v10 scanOptions:a5];
      [(NSLock *)self->_pathScanLock unlock];
      [(SATrie *)self->_pathsTrie clearPaths];
      if (v23)
      {
        v27 = SALog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v34 = v23;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Stopped: App Sizer Scanning Paths Stopped With Result (%d)", buf, 8u);
        }
      }

      else
      {
        [(SATelemetryManager *)self->_telemetryManager stopTimeForTimeInfoEntry:3];
      }

      v24 = self->_appSizerResults;
      v25 = self->_telemetryManager;
    }

    (*(v11 + 2))(v11, v23, v24, v25);
  }

  _Block_object_dispose(&v29, 8);
}

- (unsigned)waitForScan:(id)a3 mode:(unint64_t)a4 BGTask:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = SALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315138;
    v27 = "[SAAppSizerScan waitForScan:mode:BGTask:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Waiting for scan to complete", &v26, 0xCu);
  }

  if (a4 == 2)
  {
    dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
LABEL_10:
    v14 = 0;
  }

  else if (a4 == 1)
  {
    while (1)
    {
      v11 = dispatch_time(0, 2000000000);
      v12 = dispatch_group_wait(v8, v11);
      v13 = [(SAAppSizerScan *)self shouldDefer:1 BGTask:v9];
      if (v13)
      {
        break;
      }

      if (self->_runMode == 2)
      {
        v22 = SALog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136315138;
          v27 = "[SAAppSizerScan waitForScan:mode:BGTask:]";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: BG task interrupted, stopping", &v26, 0xCu);
        }

        v14 = 4;
        goto LABEL_19;
      }

      if (!v12)
      {
        goto LABEL_10;
      }
    }

    v14 = v13;
    v22 = SALog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315138;
      v27 = "[SAAppSizerScan waitForScan:mode:BGTask:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: BG task should defer, stopping", &v26, 0xCu);
    }

LABEL_19:

    v23 = self;
    objc_sync_enter(v23);
    v23->_shouldContinueScanning = 0;
    objc_sync_exit(v23);

    dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v24 = v23;
    objc_sync_enter(v24);
    v23->_shouldContinueScanning = 1;
    objc_sync_exit(v24);
  }

  else
  {
    v15 = SALog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10003DFDC(self, v15, v16, v17, v18, v19, v20, v21);
    }

    v14 = 3;
  }

  return v14;
}

- (void)initiatePathsScanWithRunMode:(unint64_t)a3 BGTask:(id)a4 scanOptions:(unint64_t)a5 replyBlock:(id)a6
{
  v10 = a4;
  v11 = a6;
  if (a3 != 1 || v10)
  {
    if ([(SAAppSizerScan *)self shouldInitiatePathsScan:a3 withBGTask:v10])
    {
      (*(v11 + 2))(v11, 1, 0, 0);
    }

    else
    {
      [(SAAppSizerScan *)self scanPathsWithRunMode:a3 BGTask:v10 scanOptions:a5 reply:v11];
    }
  }

  else
  {
    v12 = SALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003E04C(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    (*(v11 + 2))(v11, 3, 0, 0);
  }
}

@end