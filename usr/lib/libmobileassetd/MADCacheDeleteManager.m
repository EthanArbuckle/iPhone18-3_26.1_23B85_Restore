@interface MADCacheDeleteManager
+ (id)_generateCacheDeleteManagerStateTable;
+ (id)sharedManager;
- (BOOL)maCacheDeleteSupported:(id *)a3;
- (MADCacheDeleteManager)init;
- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4;
- (int64_t)action_Activate:(id)a3 error:(id *)a4;
- (int64_t)action_CheckFileSystem:(id)a3 error:(id *)a4;
- (int64_t)action_CheckPendingRequest:(id)a3 error:(id *)a4;
- (int64_t)action_CheckPurgeable:(id)a3 error:(id *)a4;
- (int64_t)action_NotifyEnoughSpace:(id)a3 error:(id *)a4;
- (int64_t)action_NotifyNotEnoughSpaceAfterCheck:(id)a3 error:(id *)a4;
- (int64_t)action_NotifyNotEnoughSpaceAfterPurge:(id)a3 error:(id *)a4;
- (int64_t)action_NotifyOperationError:(id)a3 error:(id *)a4;
- (int64_t)action_PerformPurgeBasePath:(id)a3 error:(id *)a4;
- (int64_t)action_PerformPurgeSharedPath:(id)a3 error:(id *)a4;
- (int64_t)action_QueueRequest:(id)a3 error:(id *)a4;
- (int64_t)action_RemoveCompletedDownload:(id)a3 error:(id *)a4;
- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8;
- (void)checkAvailableSpace:(unint64_t)a3 allowPurgeWithUrgency:(int)a4 withCompletionQueue:(id)a5 completion:(id)a6;
- (void)notifyDownloadCompleted:(id)a3;
- (void)notifyDownloadCompleted:(id)a3 withSpaceNoLongerNeeded:(unint64_t)a4;
@end

@implementation MADCacheDeleteManager

+ (id)_generateCacheDeleteManagerStateTable
{
  v118[0] = @"Startup";
  v116 = @"Activate";
  v2 = kSUCoreNextStateKey;
  v3 = kSUCoreActionKey;
  v114[0] = kSUCoreNextStateKey;
  v114[1] = kSUCoreActionKey;
  v115[0] = @"Active";
  v115[1] = @"Activate";
  v43 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:2];
  v117 = v43;
  v42 = [NSDictionary dictionaryWithObjects:&v117 forKeys:&v116 count:1];
  v119[0] = v42;
  v118[1] = @"Active";
  v112[0] = @"ClientSpaceCheckRequest";
  v110[0] = v2;
  v110[1] = v3;
  v111[0] = @"CheckFileSystem";
  v111[1] = @"CheckFileSystem";
  v41 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:2];
  v113[0] = v41;
  v112[1] = @"ClientDownloadCompleted";
  v108 = v3;
  v109 = @"RemoveCompletedDownload";
  v40 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];
  v113[1] = v40;
  v39 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:2];
  v119[1] = v39;
  v118[2] = @"CheckPendingRequest";
  v106[0] = @"ClientSpaceCheckRequest";
  v104 = v3;
  v105 = @"QueueRequest";
  v38 = [NSDictionary dictionaryWithObjects:&v105 forKeys:&v104 count:1];
  v107[0] = v38;
  v106[1] = @"ClientDownloadCompleted";
  v102 = v3;
  v103 = @"RemoveCompletedDownload";
  v37 = [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];
  v107[1] = v37;
  v106[2] = @"CheckPendingRequest";
  v100 = v3;
  v101 = @"CheckPendingRequest";
  v36 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
  v107[2] = v36;
  v106[3] = @"CheckFileSystem";
  v98[0] = v2;
  v98[1] = v3;
  v99[0] = @"CheckFileSystem";
  v99[1] = @"CheckFileSystem";
  v35 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:2];
  v107[3] = v35;
  v106[4] = @"NoMoreRequest";
  v96 = v2;
  v97 = @"Active";
  v34 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
  v107[4] = v34;
  v33 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:5];
  v119[2] = v33;
  v118[3] = @"CheckFileSystem";
  v94[0] = @"ClientSpaceCheckRequest";
  v92 = v3;
  v93 = @"QueueRequest";
  v32 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
  v95[0] = v32;
  v94[1] = @"ClientDownloadCompleted";
  v90 = v3;
  v91 = @"RemoveCompletedDownload";
  v31 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  v95[1] = v31;
  v94[2] = @"CheckPurgeable";
  v88[0] = v2;
  v88[1] = v3;
  v89[0] = @"CheckPurgeable";
  v89[1] = @"CheckPurgeable";
  v30 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:2];
  v95[2] = v30;
  v94[3] = @"FileSystemHasEnoughSpace";
  v86[0] = v2;
  v86[1] = v3;
  v87[0] = @"CheckPendingRequest";
  v87[1] = @"NotifyEnoughSpace";
  v29 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:2];
  v95[3] = v29;
  v94[4] = @"NotEnoughPurgeable";
  v84[0] = v2;
  v84[1] = v3;
  v85[0] = @"CheckPendingRequest";
  v85[1] = @"NotifyNotEnoughSpaceAfterCheck";
  v28 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:2];
  v95[4] = v28;
  v94[5] = @"OperationError";
  v82[0] = v2;
  v82[1] = v3;
  v83[0] = @"CheckPendingRequest";
  v83[1] = @"NotifyOperationError";
  v27 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
  v95[5] = v27;
  v26 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:6];
  v119[3] = v26;
  v118[4] = @"CheckPurgeable";
  v80[0] = @"ClientSpaceCheckRequest";
  v78 = v3;
  v79 = @"QueueRequest";
  v25 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
  v81[0] = v25;
  v80[1] = @"ClientDownloadCompleted";
  v76 = v3;
  v77 = @"RemoveCompletedDownload";
  v24 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  v81[1] = v24;
  v80[2] = @"PerformPurgeBasePath";
  v74[0] = v2;
  v74[1] = v3;
  v75[0] = @"PerformPurgeBasePath";
  v75[1] = @"PerformPurgeBasePath";
  v23 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:2];
  v81[2] = v23;
  v80[3] = @"NotEnoughPurgeable";
  v72[0] = v2;
  v72[1] = v3;
  v73[0] = @"CheckPendingRequest";
  v73[1] = @"NotifyNotEnoughSpaceAfterCheck";
  v22 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
  v81[3] = v22;
  v80[4] = @"OperationError";
  v70[0] = v2;
  v70[1] = v3;
  v71[0] = @"CheckPendingRequest";
  v71[1] = @"NotifyOperationError";
  v21 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:2];
  v81[4] = v21;
  v20 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:5];
  v119[4] = v20;
  v118[5] = @"PerformPurgeBasePath";
  v68[0] = @"ClientSpaceCheckRequest";
  v66 = v3;
  v67 = @"QueueRequest";
  v19 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v69[0] = v19;
  v68[1] = @"ClientDownloadCompleted";
  v64 = v3;
  v65 = @"RemoveCompletedDownload";
  v18 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v69[1] = v18;
  v68[2] = @"PerformPurgeSharedPath";
  v62[0] = v2;
  v62[1] = v3;
  v63[0] = @"PerformPurgeSharedPath";
  v63[1] = @"PerformPurgeSharedPath";
  v17 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
  v69[2] = v17;
  v68[3] = @"PurgeCompletedSuccess";
  v60[0] = v2;
  v60[1] = v3;
  v61[0] = @"CheckPendingRequest";
  v61[1] = @"NotifyEnoughSpace";
  v16 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
  v69[3] = v16;
  v68[4] = @"PurgeCompletedSuccess";
  v58[0] = v2;
  v58[1] = v3;
  v59[0] = @"CheckPendingRequest";
  v59[1] = @"NotifyNotEnoughSpaceAfterPurge";
  v15 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
  v69[4] = v15;
  v68[5] = @"OperationError";
  v56[0] = v2;
  v56[1] = v3;
  v57[0] = @"CheckPendingRequest";
  v57[1] = @"NotifyOperationError";
  v4 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];
  v69[5] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:6];
  v119[5] = v5;
  v118[6] = @"PerformPurgeSharedPath";
  v52 = v3;
  v53 = @"QueueRequest";
  v54[0] = @"ClientSpaceCheckRequest";
  v6 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v55[0] = v6;
  v54[1] = @"ClientDownloadCompleted";
  v50 = v3;
  v51 = @"RemoveCompletedDownload";
  v7 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v55[1] = v7;
  v54[2] = @"PurgeCompletedSuccess";
  v48[0] = v2;
  v48[1] = v3;
  v49[0] = @"CheckPendingRequest";
  v49[1] = @"NotifyEnoughSpace";
  v8 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
  v55[2] = v8;
  v54[3] = @"PurgeCompletedSuccess";
  v46[0] = v2;
  v46[1] = v3;
  v47[0] = @"CheckPendingRequest";
  v47[1] = @"NotifyNotEnoughSpaceAfterPurge";
  v9 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
  v55[3] = v9;
  v54[4] = @"OperationError";
  v44[0] = v2;
  v44[1] = v3;
  v45[0] = @"CheckPendingRequest";
  v45[1] = @"NotifyOperationError";
  v10 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
  v55[4] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:5];
  v119[6] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:7];

  v13 = [[NSDictionary alloc] initWithDictionary:v12 copyItems:1];

  return v13;
}

- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8
{
  v11 = a3;
  v12 = a6;
  if ([v11 isEqualToString:kSUCoreFSMActionNoOp])
  {
    v13 = 0;
  }

  else
  {
    if ([v11 isEqualToString:@"Activate"])
    {
      v14 = [(MADCacheDeleteManager *)self action_Activate:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"QueueRequest"])
    {
      v14 = [(MADCacheDeleteManager *)self action_QueueRequest:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"RemoveCompletedDownload"])
    {
      v14 = [(MADCacheDeleteManager *)self action_RemoveCompletedDownload:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"CheckPendingRequest"])
    {
      v14 = [(MADCacheDeleteManager *)self action_CheckPendingRequest:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"CheckFileSystem"])
    {
      v14 = [(MADCacheDeleteManager *)self action_CheckFileSystem:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"CheckPurgeable"])
    {
      v14 = [(MADCacheDeleteManager *)self action_CheckPurgeable:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"PerformPurgeBasePath"])
    {
      v14 = [(MADCacheDeleteManager *)self action_PerformPurgeBasePath:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"PerformPurgeSharedPath"])
    {
      v14 = [(MADCacheDeleteManager *)self action_PerformPurgeSharedPath:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"NotifyEnoughSpace"])
    {
      v14 = [(MADCacheDeleteManager *)self action_NotifyEnoughSpace:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"NotifyNotEnoughSpaceAfterCheck"])
    {
      v14 = [(MADCacheDeleteManager *)self action_NotifyNotEnoughSpaceAfterCheck:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"NotifyNotEnoughSpaceAfterPurge"])
    {
      v14 = [(MADCacheDeleteManager *)self action_NotifyNotEnoughSpaceAfterPurge:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"NotifyOperationError"])
    {
      v14 = [(MADCacheDeleteManager *)self action_NotifyOperationError:v12 error:a8];
    }

    else
    {
      v14 = [(MADCacheDeleteManager *)self actionUnknownAction:v11 error:a8];
    }

    v13 = v14;
  }

  return v13;
}

- (int64_t)action_Activate:(id)a3 error:(id *)a4
{
  v4 = [(MADCacheDeleteManager *)self stateMachine:a3];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  return 0;
}

- (int64_t)action_QueueRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADCacheDeleteManager *)self stateMachine];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(MADCacheDeleteManager *)self spaceCheckRequestsLock];
  [v8 lock];

  v9 = [(MADCacheDeleteManager *)self spaceCheckRequests];
  [v9 addObject:v5];

  v10 = [(MADCacheDeleteManager *)self spaceCheckRequestsLock];
  [v10 unlock];

  return 0;
}

- (int64_t)action_RemoveCompletedDownload:(id)a3 error:(id *)a4
{
  v4 = [(MADCacheDeleteManager *)self stateMachine:a3];
  v5 = [v4 extendedStateQueue];
  dispatch_assert_queue_V2(v5);

  return 0;
}

- (int64_t)action_CheckPendingRequest:(id)a3 error:(id *)a4
{
  v5 = [(MADCacheDeleteManager *)self stateMachine:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(MADCacheDeleteManager *)self spaceCheckRequestsLock];
  [v7 lock];

  v8 = _MADLog(@"AutoSet");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(MADCacheDeleteManager *)self spaceCheckRequests];
    v23 = 134217984;
    v24 = [v9 count];
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Before serving, number of request waiting: %lu", &v23, 0xCu);
  }

  v10 = [(MADCacheDeleteManager *)self spaceCheckRequests];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(MADCacheDeleteManager *)self spaceCheckRequests];
    v13 = [v12 firstObject];

    v14 = [(MADCacheDeleteManager *)self spaceCheckRequests];
    [v14 removeObjectAtIndex:0];
  }

  else
  {
    v13 = 0;
  }

  v15 = _MADLog(@"AutoSet");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MADCacheDeleteManager *)self spaceCheckRequests];
    v17 = [v16 count];
    v23 = 134217984;
    v24 = v17;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "After serving, number of request waiting: %lu", &v23, 0xCu);
  }

  v18 = [(MADCacheDeleteManager *)self spaceCheckRequestsLock];
  [v18 unlock];

  v19 = [(MADCacheDeleteManager *)self stateMachine];
  v20 = v19;
  if (v13)
  {
    [v19 postEvent:@"CheckFileSystem" withInfo:v13];
  }

  else
  {
    v21 = objc_alloc_init(MADCacheDeleteManagerEventInfo);
    [v20 postEvent:@"NoMoreRequest" withInfo:v21];
  }

  return 0;
}

- (int64_t)action_CheckFileSystem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADCacheDeleteManager *)self stateMachine];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = _MADLog(@"AutoSet");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 description];
    buf.f_bsize = 138412290;
    *&buf.f_iosize = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Requesting to check filesystem: %@", &buf, 0xCu);
  }

  v26 = 0;
  AppIntegerValue = _MAPreferencesGetAppIntegerValue(@"FakeAvailableSpaceInBytesForSpaceCheck", &v26);
  if (!v26 || (v11 = AppIntegerValue, (AppIntegerValue & 0x8000000000000000) != 0))
  {
    memset(&buf, 0, 512);
    if (statfs([@"/var/mobile" fileSystemRepresentation], &buf))
    {
      v13 = [[NSString alloc] initWithFormat:@"check filesystem for available space failed (unable to statfs path=%@)", @"/var/mobile"];
      v11 = [MADCacheDeleteManagerError buildError:1 fromOperation:@"CheckFileSystemForAvailableSpace" underlyingError:0 withDescription:v13];
      if (v11)
      {
        [v5 setError:v11];
        v14 = [(MADCacheDeleteManager *)self stateMachine];
        [v14 postEvent:@"OperationError" withInfo:v5];

        goto LABEL_26;
      }
    }

    else
    {
      v13 = 0;
      v11 = buf.f_bavail * buf.f_bsize;
    }
  }

  else
  {
    v12 = _MADLog(@"AutoSet");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 138543618;
      *&buf.f_iosize = @"FakeAvailableSpaceInBytesForSpaceCheck";
      WORD2(buf.f_blocks) = 2050;
      *(&buf.f_blocks + 6) = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[SPACE] Using FAKE available space set by the %{public}@ default. Free space available: %{public}llu", &buf, 0x16u);
    }

    [v5 setCacheDeleteUrgency:0xFFFFFFFFLL];
    v13 = 0;
  }

  v15 = -[MADCacheDeleteManager totalSpaceRequired:](self, "totalSpaceRequired:", [v5 totalRequiredFreeSpace]);
  [v5 setTotalRequiredSpaceForAllRequests:v15];
  [v5 setTotalAvailableOnFS:v11];
  v16 = _MADLog(@"AutoSet");
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v11 >= v15)
  {
    if (v17)
    {
      v24 = [v5 totalRequiredFreeSpace];
      buf.f_bsize = 134349568;
      *&buf.f_iosize = v15;
      WORD2(buf.f_blocks) = 2050;
      *(&buf.f_blocks + 6) = v24;
      HIWORD(buf.f_bfree) = 2050;
      buf.f_bavail = v11;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "FS Check: Enough free space.  Grand Total Required: %{public}llu, Required space for request: %{public}llu, Available Space: %{public}llu", &buf, 0x20u);
    }

    v22 = [(MADCacheDeleteManager *)self stateMachine];
    v11 = v22;
    v23 = @"FileSystemHasEnoughSpace";
  }

  else
  {
    if (v17)
    {
      v18 = [v5 totalRequiredFreeSpace];
      buf.f_bsize = 134349568;
      *&buf.f_iosize = v15;
      WORD2(buf.f_blocks) = 2050;
      *(&buf.f_blocks + 6) = v18;
      HIWORD(buf.f_bfree) = 2050;
      buf.f_bavail = v11;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "FS Check: NOT enough free space.  Grand Total Required: %{public}llu, Required space for request: %{public}llu, Available Space: %{public}llu", &buf, 0x20u);
    }

    v19 = [v5 cacheDeleteUrgency];
    v20 = _MADLog(@"AutoSet");
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19 == -1)
    {
      if (v21)
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Cache delete level is undefined.  Not attempting any cache delete", &buf, 2u);
      }

      v22 = [(MADCacheDeleteManager *)self stateMachine];
      v11 = v22;
      v23 = @"NotEnoughPurgeable";
    }

    else
    {
      if (v21)
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Will be checking for purgeable", &buf, 2u);
      }

      v22 = [(MADCacheDeleteManager *)self stateMachine];
      v11 = v22;
      v23 = @"CheckPurgeable";
    }
  }

  [v22 postEvent:v23 withInfo:v5];
LABEL_26:

  return 0;
}

- (int64_t)action_CheckPurgeable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADCacheDeleteManager *)self stateMachine];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v46[0] = @"/var/mobile";
  v45[0] = @"CACHE_DELETE_VOLUME";
  v45[1] = @"CACHE_DELETE_URGENCY";
  v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 cacheDeleteUrgency]);
  v46[1] = v8;
  v45[2] = @"CACHE_DELETE_PURGE_TIMEOUT";
  v9 = [NSNumber numberWithInt:300];
  v46[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];

  v11 = [v5 totalRequiredSpaceForAllRequests];
  v12 = v11 - [v5 totalAvailableOnFS];
  v13 = _MADLog(@"AutoSet");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 134349314;
    v38 = v12;
    v39 = 2114;
    v40 = v10;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Performing cache delete purgeable check for %{public}lld bytes free space with these options: %{public}@", &v37, 0x16u);
  }

  v14 = CacheDeleteCopyPurgeableSpaceWithInfo();
  if (!v14)
  {
    v20 = @"no results provided on cache delete purgeable complete";
LABEL_12:
    v19 = [MADCacheDeleteManagerError buildError:2 fromOperation:@"CheckCacheDeleteForAvailableSpace" underlyingError:0 withDescription:v20];
    goto LABEL_15;
  }

  v15 = v14;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v15))
  {
    v21 = [(MADCacheDeleteManager *)self stateMachine];
    v22 = [v21 diag];
    [v22 trackAnomaly:@"cacheDeletePurgeable" forReason:@"result provided by CacheDeleteCopyPurgeableSpaceWithInfo is not CFDictionary type - ignored" withResult:0 withError:0];

    CFRelease(v15);
    v20 = @"invalid results type provided on cache delete purgeable complete";
    goto LABEL_12;
  }

  v17 = _MADLog(@"AutoSet");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 138543362;
    v38 = v15;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Cache delete purgeable check results: %{public}@", &v37, 0xCu);
  }

  v18 = [v15 objectForKey:@"CACHE_DELETE_AMOUNT"];
  if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v5 setTotalAvailableFromCD:{objc_msgSend(v18, "unsignedLongLongValue")}];
    v19 = 0;
  }

  else
  {
    v19 = [MADCacheDeleteManagerError buildError:2 fromOperation:@"CheckCacheDeleteForAvailableSpace" underlyingError:0 withDescription:@"Amount of space is not returned in cache delete check SPI"];
  }

LABEL_15:
  if (v19)
  {
    [v5 setError:v19];
    v23 = @"OperationError";
  }

  else
  {
    v24 = [v5 totalAvailableFromCD];
    v25 = _MADLog(@"AutoSet");
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v24 >= v12)
    {
      if (v26)
      {
        v31 = [v5 totalRequiredSpaceForAllRequests];
        v32 = [v5 totalRequiredFreeSpace];
        v33 = [v5 totalAvailableOnFS];
        v34 = [v5 totalAvailableFromCD];
        v37 = 134349824;
        v38 = v31;
        v39 = 2050;
        v40 = v32;
        v41 = 2050;
        v42 = v33;
        v43 = 2050;
        v44 = v34;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "CD Check: Enough space.  Grand Total Required:%{public}llu, Required for request:%{public}llu, Avail FS:%{public}llu, Avail CD:%{public}llu", &v37, 0x2Au);
      }

      v23 = @"PerformPurgeBasePath";
    }

    else
    {
      if (v26)
      {
        v27 = [v5 totalRequiredSpaceForAllRequests];
        v28 = [v5 totalRequiredFreeSpace];
        v29 = [v5 totalAvailableOnFS];
        v30 = [v5 totalAvailableFromCD];
        v37 = 134349824;
        v38 = v27;
        v39 = 2050;
        v40 = v28;
        v41 = 2050;
        v42 = v29;
        v43 = 2050;
        v44 = v30;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "CD Check: NOT enough space.  Grand Total Required:%{public}llu, Required for request:%{public}llu, Avail FS:%{public}llu, Avail CD:%{public}llu", &v37, 0x2Au);
      }

      v23 = @"NotEnoughPurgeable";
    }
  }

  v35 = [(MADCacheDeleteManager *)self stateMachine];
  [v35 postEvent:v23 withInfo:v5];

  return 0;
}

- (int64_t)action_PerformPurgeBasePath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADCacheDeleteManager *)self stateMachine];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 totalRequiredSpaceForAllRequests];
  v9 = [v5 totalAvailableOnFS];
  v10 = v8 <= v9;
  v11 = v8 - v9;
  if (v10)
  {
    v17 = _MADLog(@"AutoSet");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 134349312;
      *&v29[4] = v11;
      *&v29[12] = 2050;
      *&v29[14] = [v5 totalRequiredSpaceForAllRequests];
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "There's enough space, no need to purge base path. Space needed: %{public}lld, total required: %{public}llu", v29, 0x16u);
    }

    v18 = [(MADCacheDeleteManager *)self stateMachine];
    [v18 postEvent:@"PurgeCompletedSuccess" withInfo:v5];
  }

  else
  {
    *v29 = 0;
    *&v29[8] = v29;
    *&v29[16] = 0x3032000000;
    v30 = __Block_byref_object_copy__15;
    v31 = __Block_byref_object_dispose__15;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v28[0] = @"/var/mobile";
    v27[0] = @"CACHE_DELETE_VOLUME";
    v27[1] = @"CACHE_DELETE_AMOUNT";
    v12 = [NSNumber numberWithLongLong:v11];
    v28[1] = v12;
    v27[2] = @"CACHE_DELETE_URGENCY_LIMIT";
    v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 cacheDeleteUrgency]);
    v28[2] = v13;
    v27[3] = @"CACHE_DELETE_PURGE_TIMEOUT";
    v14 = [NSNumber numberWithInt:300];
    v28[3] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4];

    v16 = _MADLog(@"AutoSet");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v15;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Triggering CacheDeletePurge on base path with info: %{public}@", buf, 0xCu);
    }

    v20 = v5;
    v22[3] = CacheDeletePurgeSpaceWithInfo();

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(v29, 8);
  }

  return 0;
}

void __59__MADCacheDeleteManager_action_PerformPurgeBasePath_error___block_invoke(uint64_t a1, void *a2)
{
  valuePtr = 0;
  if (!a2)
  {
    v8 = @"no results provided on cache delete purge complete";
LABEL_11:
    v11 = [MADCacheDeleteManagerError buildError:2 fromOperation:@"CacheDeletePurgeBasePath" underlyingError:0 withDescription:v8];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    goto LABEL_14;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    v9 = [*(a1 + 40) stateMachine];
    v10 = [v9 diag];
    [v10 trackAnomaly:@"cacheDeletePurge" forReason:@"result provided by CacheDeletePurgeSpaceWithInfo is not CFDictionary type CFDictionary type - ignored" withResult:0 withError:0];

    v8 = @"invalid results type provided on cache delete purge complete";
    goto LABEL_11;
  }

  v5 = _MADLog(@"AutoSet");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = a2;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[PURGE] cache delete purge results: %{public}@", buf, 0xCu);
  }

  Value = CFDictionaryGetValue(a2, @"CACHE_DELETE_AMOUNT");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
    v7 = _MADLog(@"AutoSet");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v27 = valuePtr;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[SPACE] purged %{public}lld bytes", buf, 0xCu);
    }

    [*(a1 + 32) setTotalCDBasePath:valuePtr];
  }

  else
  {
    v14 = [MADCacheDeleteManagerError buildError:2 fromOperation:@"CacheDeletePurgeBasePath" underlyingError:0 withDescription:@"no amount of space purged provided on cache delete purge complete"];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

LABEL_14:
  v17 = *(*(*(a1 + 56) + 8) + 24);
  if (v17)
  {
    CFRelease(v17);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v18 = *(a1 + 32);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [v18 setError:?];
    v19 = [*(a1 + 40) stateMachine];
    v20 = v19;
    v21 = *(a1 + 32);
    v22 = @"OperationError";
  }

  else
  {
    v23 = [v18 totalCDBasePath];
    v24 = *(a1 + 64);
    v19 = [*(a1 + 40) stateMachine];
    v20 = v19;
    v21 = *(a1 + 32);
    if (v23 >= v24)
    {
      v22 = @"PurgeCompletedSuccess";
    }

    else
    {
      v22 = @"PerformPurgeSharedPath";
    }
  }

  [v19 postEvent:v22 withInfo:v21];
}

- (int64_t)action_PerformPurgeSharedPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADCacheDeleteManager *)self stateMachine];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 totalRequiredSpaceForAllRequests];
  v9 = [v5 totalAvailableOnFS];
  v10 = v8 - ([v5 totalCDBasePath] + v9);
  if (v10 <= 0)
  {
    v16 = _MADLog(@"AutoSet");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 134349568;
      *&v28[4] = v10;
      *&v28[12] = 2050;
      *&v28[14] = [v5 totalRequiredSpaceForAllRequests];
      *&v28[22] = 2050;
      v29 = [v5 totalAvailableOnFS];
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "There's enough space, no need to purge shared path. Space needed: %{public}lld, total required: %{public}llu, available on FS: %{public}llu", v28, 0x20u);
    }

    v17 = [(MADCacheDeleteManager *)self stateMachine];
    [v17 postEvent:@"PurgeCompletedSuccess" withInfo:v5];
  }

  else
  {
    *v28 = 0;
    *&v28[8] = v28;
    *&v28[16] = 0x3032000000;
    v29 = __Block_byref_object_copy__15;
    v30 = __Block_byref_object_dispose__15;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v27[0] = @"/var";
    v26[0] = @"CACHE_DELETE_VOLUME";
    v26[1] = @"CACHE_DELETE_AMOUNT";
    v11 = [NSNumber numberWithLongLong:v10];
    v27[1] = v11;
    v26[2] = @"CACHE_DELETE_URGENCY_LIMIT";
    v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 cacheDeleteUrgency]);
    v27[2] = v12;
    v26[3] = @"CACHE_DELETE_PURGE_TIMEOUT";
    v13 = [NSNumber numberWithInt:300];
    v27[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];

    v15 = _MADLog(@"AutoSet");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Triggering CacheDeletePurge on shared path with info: %{public}@", buf, 0xCu);
    }

    v19 = v5;
    v21[3] = CacheDeletePurgeSpaceWithInfo();

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(v28, 8);
  }

  return 0;
}

void __61__MADCacheDeleteManager_action_PerformPurgeSharedPath_error___block_invoke(uint64_t a1, void *a2)
{
  valuePtr = 0;
  if (!a2)
  {
    v8 = @"no results provided on cache delete purge complete";
LABEL_11:
    v11 = [MADCacheDeleteManagerError buildError:2 fromOperation:@"CacheDeletePurgeSharedPath" underlyingError:0 withDescription:v8];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    goto LABEL_14;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    v9 = [*(a1 + 40) stateMachine];
    v10 = [v9 diag];
    [v10 trackAnomaly:@"cacheDeletePurge" forReason:@"result provided by CacheDeletePurgeSpaceWithInfo is not CFDictionary type CFDictionary type - ignored" withResult:0 withError:0];

    v8 = @"invalid results type provided on cache delete purge complete";
    goto LABEL_11;
  }

  v5 = _MADLog(@"AutoSet");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = a2;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[PURGE] cache delete purge results: %{public}@", buf, 0xCu);
  }

  Value = CFDictionaryGetValue(a2, @"CACHE_DELETE_AMOUNT");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
    v7 = _MADLog(@"AutoSet");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v23 = valuePtr;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[SPACE] purged %{public}lld bytes", buf, 0xCu);
    }

    [*(a1 + 32) setTotalCDSharedPath:valuePtr];
  }

  else
  {
    v14 = [MADCacheDeleteManagerError buildError:2 fromOperation:@"CacheDeletePurgeSharedPath" underlyingError:0 withDescription:@"no amount of space purged provided on cache delete purge complete"];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

LABEL_14:
  v17 = *(*(*(a1 + 56) + 8) + 24);
  if (v17)
  {
    CFRelease(v17);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v18 = *(a1 + 32);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [v18 setError:?];
    v19 = @"OperationError";
  }

  else
  {
    [v18 totalAvailableOnFS];
    [*(a1 + 32) totalCDBasePath];
    [*(a1 + 32) totalCDSharedPath];
    [*(a1 + 32) totalRequiredFreeSpace];
    v19 = @"PurgeCompletedSuccess";
  }

  v20 = [*(a1 + 40) stateMachine];
  [v20 postEvent:v19 withInfo:*(a1 + 32)];
}

- (int64_t)action_NotifyEnoughSpace:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADCacheDeleteManager *)self stateMachine];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[NSUUID UUID];
  v9 = [v8 UUIDString];

  v10 = [v5 completionQueue];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = __56__MADCacheDeleteManager_action_NotifyEnoughSpace_error___block_invoke;
  v19 = &unk_4B2B18;
  v20 = v5;
  v21 = v9;
  v11 = v9;
  v12 = v5;
  dispatch_async(v10, &v16);

  v13 = [(MADCacheDeleteManager *)self stateMachine:v16];
  v14 = objc_alloc_init(MADCacheDeleteManagerEventInfo);
  [v13 followupEvent:@"CheckPendingRequest" withInfo:v14];

  return 0;
}

void __56__MADCacheDeleteManager_action_NotifyEnoughSpace_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];
  (*(v2 + 2))(v2, 1, [*(a1 + 32) totalRequiredFreeSpace], *(a1 + 40), 0);
}

- (int64_t)action_NotifyNotEnoughSpaceAfterCheck:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADCacheDeleteManager *)self stateMachine];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 completionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __69__MADCacheDeleteManager_action_NotifyNotEnoughSpaceAfterCheck_error___block_invoke;
  block[3] = &unk_4B2AA0;
  v14 = v5;
  v9 = v5;
  dispatch_async(v8, block);

  v10 = [(MADCacheDeleteManager *)self stateMachine];
  v11 = objc_alloc_init(MADCacheDeleteManagerEventInfo);
  [v10 followupEvent:@"CheckPendingRequest" withInfo:v11];

  return 0;
}

void __69__MADCacheDeleteManager_action_NotifyNotEnoughSpaceAfterCheck_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) totalAvailableOnFS];
  v3 = [*(a1 + 32) totalAvailableFromCD];
  v4 = [*(a1 + 32) completion];
  (*(v4 + 2))(v4, 0, &v2[v3], 0, 0);
}

- (int64_t)action_NotifyNotEnoughSpaceAfterPurge:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADCacheDeleteManager *)self stateMachine];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 completionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __69__MADCacheDeleteManager_action_NotifyNotEnoughSpaceAfterPurge_error___block_invoke;
  block[3] = &unk_4B2AA0;
  v14 = v5;
  v9 = v5;
  dispatch_async(v8, block);

  v10 = [(MADCacheDeleteManager *)self stateMachine];
  v11 = objc_alloc_init(MADCacheDeleteManagerEventInfo);
  [v10 followupEvent:@"CheckPendingRequest" withInfo:v11];

  return 0;
}

void __69__MADCacheDeleteManager_action_NotifyNotEnoughSpaceAfterPurge_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) totalAvailableOnFS];
  v3 = &v2[[*(a1 + 32) totalCDBasePath]];
  v4 = [*(a1 + 32) totalCDSharedPath];
  v5 = [*(a1 + 32) completion];
  (*(v5 + 2))(v5, 0, &v4[v3], 0, 0);
}

- (int64_t)action_NotifyOperationError:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADCacheDeleteManager *)self stateMachine];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 error];

  if (v8)
  {
    v9 = [v5 completionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __59__MADCacheDeleteManager_action_NotifyOperationError_error___block_invoke;
    block[3] = &unk_4B2AA0;
    v16 = v5;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = [(MADCacheDeleteManager *)self stateMachine];
    v11 = [v10 diag];
    [v11 trackAnomaly:@"NotifyOperationError" forReason:@"error is nil when notify operation error is called" withResult:0 withError:0];
  }

  v12 = [(MADCacheDeleteManager *)self stateMachine];
  v13 = objc_alloc_init(MADCacheDeleteManagerEventInfo);
  [v12 followupEvent:@"CheckPendingRequest" withInfo:v13];

  return 0;
}

void __59__MADCacheDeleteManager_action_NotifyOperationError_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 32) error];
  (*(v3 + 2))(v3, 0, 0, 0, v2);
}

- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MADCacheDeleteManager *)self stateMachine];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[SUCoreDiag sharedDiag];
  v9 = [[NSString alloc] initWithFormat:@"unknown FSM action(%@)", v5];
  [v8 trackAnomaly:@"[CACHE_DELETE_MANAGER]" forReason:v9 withResult:8116 withError:0];

  v10 = _MADLog(@"AutoSet");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Unknown FSM action(%@)", buf, 0xCu);
  }

  return 0;
}

+ (id)sharedManager
{
  if (sharedManager_managerOnce != -1)
  {
    +[MADCacheDeleteManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

void __38__MADCacheDeleteManager_sharedManager__block_invoke(id a1)
{
  sharedManager_manager = objc_alloc_init(MADCacheDeleteManager);

  _objc_release_x1();
}

- (MADCacheDeleteManager)init
{
  v22.receiver = self;
  v22.super_class = MADCacheDeleteManager;
  v2 = [(MADCacheDeleteManager *)&v22 init];
  if (v2)
  {
    v3 = _MADLog(@"AutoSet");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "MADCacheDeleteManager initializing", v21, 2u);
    }

    v4 = objc_alloc_init(NSMutableArray);
    spaceCheckRequests = v2->_spaceCheckRequests;
    v2->_spaceCheckRequests = v4;

    v6 = objc_alloc_init(NSMutableArray);
    downloadsUsingSpace = v2->_downloadsUsingSpace;
    v2->_downloadsUsingSpace = v6;

    v8 = objc_alloc_init(NSLock);
    spaceCheckRequestsLock = v2->_spaceCheckRequestsLock;
    v2->_spaceCheckRequestsLock = v8;

    v10 = objc_alloc_init(NSLock);
    downloadsUsingSpaceLock = v2->_downloadsUsingSpaceLock;
    v2->_downloadsUsingSpaceLock = v10;

    if (__isPlatformVersionAtLeast(2, 26, 0, 0) && (objc_opt_respondsToSelector() & 1) != 0)
    {
      +[MADCacheDeleteManagerError mapCacheDeleteManagerErrorIndications];
    }

    v12 = [objc_opt_class() _generateCacheDeleteManagerStateTable];
    stateTable = v2->_stateTable;
    v2->_stateTable = v12;

    v14 = [[SUCoreFSM alloc] initMachine:@"MADCacheDeleteManager" withTable:v2->_stateTable startingIn:@"Startup" usingDelegate:v2 registeringAllInfoClass:objc_opt_class()];
    stateMachine = v2->_stateMachine;
    v2->_stateMachine = v14;

    if (!v2->_stateMachine)
    {
      v19 = 0;
      goto LABEL_13;
    }

    v16 = [(MADCacheDeleteManager *)v2 stateMachine];
    v17 = objc_alloc_init(MADCacheDeleteManagerEventInfo);
    [v16 postEvent:@"Activate" withInfo:v17];

    v18 = _MADLog(@"AutoSet");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "MADCacheDeleteManager completed init...", v21, 2u);
    }
  }

  v19 = v2;
LABEL_13:

  return v19;
}

- (BOOL)maCacheDeleteSupported:(id *)a3
{
  if (!&_os_variant_uses_ephemeral_storage)
  {
    if (a3)
    {
      v4 = 0;
      v5 = @"MobileAsset space check disabled because unable to determine whether mobileassetd is running in NeRD or not";
      goto LABEL_7;
    }

    return 0;
  }

  if (os_variant_uses_ephemeral_storage())
  {
    if (a3)
    {
      v4 = 0;
      v5 = @"MobileAsset space check is not supported in NeRD";
LABEL_7:
      *a3 = v5;
      return v4;
    }

    return 0;
  }

  v6 = _xpc_runtime_get_self_entitlements();
  v7 = v6;
  if (v6)
  {
    v8 = xpc_dictionary_get_array(v6, "com.apple.security.exception.mach-lookup.global-name");
    if (v8)
    {
      v9 = v8;
      if (xpc_array_get_count(v8))
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        while (1)
        {
          v13 = xpc_array_get_value(v9, v10);
          v14 = v13;
          if (!v13 || xpc_get_type(v13) != &_xpc_type_string)
          {
            goto LABEL_19;
          }

          string_ptr = xpc_string_get_string_ptr(v14);
          if (!string_ptr)
          {
            goto LABEL_17;
          }

          v16 = string_ptr;
          if (strncmp(string_ptr, "com.apple.cache_delete", 0x17uLL))
          {
            break;
          }

          v11 = 1;
LABEL_18:
          if (v12)
          {

            v4 = 1;
            goto LABEL_26;
          }

LABEL_19:

          if (xpc_array_get_count(v9) <= ++v10)
          {
            goto LABEL_23;
          }
        }

        v12 |= strncmp(v16, "com.apple.cache_delete.public", 0x1EuLL) == 0;
LABEL_17:
        if ((v11 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_23:
    }
  }

  v4 = 0;
  if (a3)
  {
    *a3 = @"MobileAsset space check disabled because MobileAsset does not have entitlements to call cache delete";
  }

LABEL_26:

  return v4;
}

- (void)checkAvailableSpace:(unint64_t)a3 allowPurgeWithUrgency:(int)a4 withCompletionQueue:(id)a5 completion:(id)a6
{
  v7 = *&a4;
  v10 = a6;
  v22 = 0;
  v11 = a5;
  v12 = [(MADCacheDeleteManager *)self maCacheDeleteSupported:&v22];
  v13 = v22;
  if (v12)
  {
    v14 = [[MADCacheDeleteManagerEventInfo alloc] initWithTotalRequiredFreeSpace:a3 cacheDeleteUrgency:v7 completionQueue:v11 completion:v10];

    v15 = [(MADCacheDeleteManager *)self stateMachine];
    [v15 postEvent:@"ClientSpaceCheckRequest" withInfo:v14];
  }

  else
  {
    v16 = [MADCacheDeleteManagerError buildError:3 fromOperation:@"checkAvailableSpace" underlyingError:0 withDescription:v13];
    v17 = _MADLog(@"AutoSet");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = @"None";
      if (v13)
      {
        v18 = v13;
      }

      *buf = 138412290;
      v24 = v18;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Reason for not doing space check: %@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __98__MADCacheDeleteManager_checkAvailableSpace_allowPurgeWithUrgency_withCompletionQueue_completion___block_invoke;
    block[3] = &unk_4B31D8;
    v20 = v16;
    v21 = v10;
    v14 = v16;
    dispatch_async(v11, block);

    v15 = v21;
  }
}

- (void)notifyDownloadCompleted:(id)a3
{
  v4 = a3;
  v6 = [[MADCacheDeleteManagerEventInfo alloc] initWithSpaceCheckedID:v4];

  v5 = [(MADCacheDeleteManager *)self stateMachine];
  [v5 postEvent:@"ClientDownloadCompleted" withInfo:v6];
}

- (void)notifyDownloadCompleted:(id)a3 withSpaceNoLongerNeeded:(unint64_t)a4
{
  v6 = a3;
  v8 = [[MADCacheDeleteManagerEventInfo alloc] initWithSpaceCheckedID:v6];

  [(MADCacheDeleteManagerEventInfo *)v8 setSpaceNoLongerNeeded:a4];
  v7 = [(MADCacheDeleteManager *)self stateMachine];
  [v7 postEvent:@"ClientDownloadCompleted" withInfo:v8];
}

@end