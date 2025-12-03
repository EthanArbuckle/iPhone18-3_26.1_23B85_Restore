@interface SAAppSizerScan
+ (id)appSizerScan;
- (SAAppSizerScan)init;
- (SAVolumesInfo)relevantVolumesInfo;
- (unsigned)scanDataPathsWithRunMode:(unint64_t)mode BGTask:(id)task scanOptions:(unint64_t)options;
- (unsigned)shouldDefer:(unint64_t)defer BGTask:(id)task;
- (unsigned)shouldInitiatePathsScan:(unint64_t)scan withBGTask:(id)task;
- (unsigned)waitForScan:(id)scan mode:(unint64_t)mode BGTask:(id)task;
- (void)collectAppsList;
- (void)initiatePathsScanWithRunMode:(unint64_t)mode BGTask:(id)task scanOptions:(unint64_t)options replyBlock:(id)block;
- (void)resetState:(unint64_t)state;
- (void)resolvePathAndGetSize:(id)size forBundleIDs:(id)ds reply:(id)reply;
- (void)scanCachePaths;
- (void)scanPathsWithRunMode:(unint64_t)mode BGTask:(id)task scanOptions:(unint64_t)options reply:(id)reply;
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

- (void)resetState:(unint64_t)state
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_runMode == state)
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

- (unsigned)shouldInitiatePathsScan:(unint64_t)scan withBGTask:(id)task
{
  taskCopy = task;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_scanInProgress)
  {
    if (scan == 2 && selfCopy->_runMode == 1)
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
      selfCopy->_runMode = 2;
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
      scanInProgress = selfCopy->_scanInProgress;
      runMode = selfCopy->_runMode;
      v15 = 136315906;
      v16 = "[SAAppSizerScan shouldInitiatePathsScan:withBGTask:]";
      v17 = 1024;
      *v18 = scanInProgress;
      *&v18[4] = 2048;
      *&v18[6] = scan;
      v19 = 2048;
      v20 = runMode;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Initiating paths scan. scanInProgress: %d mode: %lu runMode: %lu", &v15, 0x26u);
    }

    v9 = 0;
    selfCopy->_runMode = scan;
    selfCopy->_scanInProgress = 1;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (unsigned)shouldDefer:(unint64_t)defer BGTask:(id)task
{
  if (defer != 1)
  {
    return 0;
  }

  if (![task shouldDefer])
  {
    v6 = +[SAAppSizerScan appSizerScan];
    runMode = [v6 runMode];

    if (runMode == 2)
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

- (void)resolvePathAndGetSize:(id)size forBundleIDs:(id)ds reply:(id)reply
{
  sizeCopy = size;
  dsCopy = ds;
  replyCopy = reply;
  if (sizeCopy && [sizeCopy length])
  {
    v11 = open([sizeCopy fileSystemRepresentation], 0);
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

          v14 = [SAUtilities breakCommaSeparatedStringToComponents:dsCopy];
          if ([(SATrie *)v14 count]== 1 && [SASpeculativeDownloadAnalytics isBundleIdInHierarchy:dsCopy])
          {
            v19 = SALog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v22 = 138412546;
              v23 = sizeCopy;
              v24 = 2112;
              v25 = dsCopy;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Enabling hierarchy on path %@ for bundleId %@", &v22, 0x16u);
            }

            v20 = 22;
          }

          else
          {
            v20 = 6;
          }

          traverser = [(SAAppSizerScan *)self traverser];
          v18 = [traverser getFolderSizeForFD:v12 options:v20];

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
      sub_10003DE0C(sizeCopy, v16);
    }
  }

  v18 = 0;
  v13 = 0;
LABEL_24:
  replyCopy[2](replyCopy, v13, v18);
}

- (void)collectAppsList
{
  appPathList = [(SAAppPathList *)self->_appPathList appPathList];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016AC8;
  v4[3] = &unk_100064BD8;
  v4[4] = self;
  [appPathList enumerateKeysAndObjectsUsingBlock:v4];
}

- (unsigned)scanDataPathsWithRunMode:(unint64_t)mode BGTask:(id)task scanOptions:(unint64_t)options
{
  taskCopy = task;
  v9 = dispatch_group_create();
  v10 = dispatch_get_global_queue(2, 0);
  pathToBundleIDs = [(SAPathList *)self->_pathList pathToBundleIDs];
  allKeys = [pathToBundleIDs allKeys];

  v13 = [allKeys count] / 1000;
  if (v13 <= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v13;
  }

  v15 = [(SAAppSizerScan *)self shouldDefer:mode BGTask:taskCopy];
  if (v15)
  {
    v16 = v15;
    [(SAAppSizerScan *)self resetState:mode];
    [(NSLock *)self->_pathScanLock unlock];
  }

  else
  {
    v17 = +[SASupport getDiskCapacity];
    v18 = SALog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v22 = [allKeys count];
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
    v20[6] = options;
    [SAUtilities processArrayConcurrently:allKeys number:v14 queue:v10 group:v9 block:v20];
    v16 = [(SAAppSizerScan *)self waitForScan:v9 mode:mode BGTask:taskCopy];
  }

  return v16;
}

- (void)scanCachePaths
{
  appPathList = [(SAAppPathList *)self->_appPathList appPathList];
  allValues = [appPathList allValues];

  v5 = [allValues count] / 1000;
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
  [SAUtilities processArrayConcurrently:allValues number:v6 queue:v8 group:v7 block:v9];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)scanPathsWithRunMode:(unint64_t)mode BGTask:(id)task scanOptions:(unint64_t)options reply:(id)reply
{
  taskCopy = task;
  replyCopy = reply;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  if ((os_variant_has_internal_ui() & 1) != 0 || [SATelemetryManager shouldSendTelemetry:taskCopy != 0])
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
  relevantVolumesInfo = [(SAAppSizerScan *)self relevantVolumesInfo];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100017A38;
  v28[3] = &unk_100064C00;
  v28[4] = &v29;
  [(SAAppPathList *)v17 importDefaultListWithBGTask:taskCopy volumesInfo:relevantVolumesInfo reply:v28];

  [(SATelemetryManager *)self->_telemetryManager stopTimeForTimeInfoEntry:7];
  if (*(v30 + 24) == 1)
  {
    [(NSLock *)self->_pathScanLock unlock];
    (*(replyCopy + 2))(replyCopy, 2, 0, 0);
  }

  else
  {
    v19 = objc_opt_new();
    pathList = self->_pathList;
    self->_pathList = v19;

    v21 = objc_opt_new();
    appSizerResults = self->_appSizerResults;
    self->_appSizerResults = v21;

    if ((options & 0x2000) != 0)
    {
      [(SAAppSizerResults *)self->_appSizerResults enableAppSizeBreakdown];
    }

    v23 = [(SAAppSizerScan *)self shouldDefer:mode BGTask:taskCopy];
    if (v23)
    {
      [(SAAppSizerScan *)self resetState:mode];
      [(NSLock *)self->_pathScanLock unlock];
      v24 = 0;
      v25 = 0;
    }

    else
    {
      if ((options & 0x400) != 0)
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
      v23 = [(SAAppSizerScan *)self scanDataPathsWithRunMode:mode BGTask:taskCopy scanOptions:options];
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

    (*(replyCopy + 2))(replyCopy, v23, v24, v25);
  }

  _Block_object_dispose(&v29, 8);
}

- (unsigned)waitForScan:(id)scan mode:(unint64_t)mode BGTask:(id)task
{
  scanCopy = scan;
  taskCopy = task;
  v10 = SALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315138;
    v27 = "[SAAppSizerScan waitForScan:mode:BGTask:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Waiting for scan to complete", &v26, 0xCu);
  }

  if (mode == 2)
  {
    dispatch_group_wait(scanCopy, 0xFFFFFFFFFFFFFFFFLL);
LABEL_10:
    v14 = 0;
  }

  else if (mode == 1)
  {
    while (1)
    {
      v11 = dispatch_time(0, 2000000000);
      v12 = dispatch_group_wait(scanCopy, v11);
      v13 = [(SAAppSizerScan *)self shouldDefer:1 BGTask:taskCopy];
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

    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_shouldContinueScanning = 0;
    objc_sync_exit(selfCopy);

    dispatch_group_wait(scanCopy, 0xFFFFFFFFFFFFFFFFLL);
    v24 = selfCopy;
    objc_sync_enter(v24);
    selfCopy->_shouldContinueScanning = 1;
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

- (void)initiatePathsScanWithRunMode:(unint64_t)mode BGTask:(id)task scanOptions:(unint64_t)options replyBlock:(id)block
{
  taskCopy = task;
  blockCopy = block;
  if (mode != 1 || taskCopy)
  {
    if ([(SAAppSizerScan *)self shouldInitiatePathsScan:mode withBGTask:taskCopy])
    {
      (*(blockCopy + 2))(blockCopy, 1, 0, 0);
    }

    else
    {
      [(SAAppSizerScan *)self scanPathsWithRunMode:mode BGTask:taskCopy scanOptions:options reply:blockCopy];
    }
  }

  else
  {
    v12 = SALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003E04C(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    (*(blockCopy + 2))(blockCopy, 3, 0, 0);
  }
}

@end