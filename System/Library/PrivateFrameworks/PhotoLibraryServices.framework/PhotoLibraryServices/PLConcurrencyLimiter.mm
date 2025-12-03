@interface PLConcurrencyLimiter
+ (BOOL)isRunningUnderLimiter;
+ (id)debugDescriptionOfEnqueuedBlocksOnQueue:(id)queue;
+ (id)sharedLimiter;
+ (void)configureListTrackingForDispatchQueue:(id)queue;
+ (void)reportBlockEnqueued:(id)enqueued isNotifyBlock:(BOOL)block onQueue:(id)queue forLibrary:(id)library;
- (PLConcurrencyLimiter)init;
- (id)_nextQueueForQoS:(unsigned int)s libraryRole:(unint64_t)role;
- (id)_queuesTrackingBlocks;
- (id)debugDescription;
- (int64_t)maxConcurrency;
- (void)_async:(id)_async identifyingBlock:(id)block libraryRole:(unint64_t)role libraryForTelemetry:(id)telemetry;
- (void)_callOutForQoS:(unsigned int)s fromQueue:(id)queue;
- (void)_sync:(id)_sync identifyingBlock:(id)block libraryRole:(unint64_t)role libraryForTelemetry:(id)telemetry;
- (void)_syncPerformBlockNotOnAnyQueue:(id)queue;
- (void)async:(id)async identifyingBlock:(id)block library:(id)library;
- (void)asyncPerformOnContext:(id)context identifyingBlock:(id)block block:(id)a5;
- (void)dispatchAfterTime:(unint64_t)time library:(id)library block:(id)block;
- (void)dispatchAsync:(id)async block:(id)block;
- (void)groupNotify:(id)notify queue:(id)queue block:(id)block;
- (void)reportBlockDequeuedOnQueue:(id)queue executionTimeNS:(unint64_t)s;
- (void)sync:(id)sync identifyingBlock:(id)block library:(id)library;
@end

@implementation PLConcurrencyLimiter

+ (id)sharedLimiter
{
  if (sharedLimiter_onceToken != -1)
  {
    dispatch_once(&sharedLimiter_onceToken, &__block_literal_global_90483);
  }

  v3 = sharedLimiter_queueManager;

  return v3;
}

+ (BOOL)isRunningUnderLimiter
{
  if (_limiterDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_limiterDepthThreadKey_s_onceToken, &__block_literal_global_94);
  }

  return pthread_getspecific(_limiterDepthThreadKey_s_key) > 0;
}

- (void)reportBlockDequeuedOnQueue:(id)queue executionTimeNS:(unint64_t)s
{
  v89 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  specific = dispatch_queue_get_specific(queueCopy, PLConcurrencyLimiterTrackingStatsKey);
  os_unfair_lock_lock(specific + 4);
  v8 = *&specific->_os_unfair_lock_opaque;
  if (!*&specific->_os_unfair_lock_opaque)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLConcurrencyLimiter(Statistics) reportBlockDequeuedOnQueue:executionTimeNS:]"];
    [currentHandler handleFailureInFunction:v51 file:@"PLConcurrencyLimiter+Statistics.m" lineNumber:200 description:@"no head"];
  }

  v9 = *v8;
  v63 = v8[4];
  v10 = *(v8 + 6);
  if (*&specific->_os_unfair_lock_opaque == *&specific[2]._os_unfair_lock_opaque)
  {
    *&specific->_os_unfair_lock_opaque = 0;
    *&specific[2]._os_unfair_lock_opaque = 0;
  }

  else
  {
    v11 = v8[1];
    if (!v11)
    {
      v52 = *(v8 + 6);
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLConcurrencyLimiter(Statistics) reportBlockDequeuedOnQueue:executionTimeNS:]"];
      [currentHandler2 handleFailureInFunction:v54 file:@"PLConcurrencyLimiter+Statistics.m" lineNumber:215 description:@"head with no next"];

      v10 = v52;
    }

    *&specific->_os_unfair_lock_opaque = v11;
  }

  v12 = v8[4];
  v8[4] = 0;

  free(v8);
  os_unfair_lock_unlock(specific + 4);
  if (s >= 0x6FC23AC00 && [(PLConcurrencyLimiter *)self isRunningInPhotolibraryd])
  {
    v61 = v10;
    context = objc_autoreleasePoolPush();
    v81 = v9;
    v13 = v63;
    v14 = backtrace_symbols(&v81, 1);
    if (!v14)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PLLogBlockExecutionTime(void *, PLPhotoLibrary *__strong, qos_class_t, uint64_t)"}];
      [currentHandler3 handleFailureInFunction:v56 file:@"PLConcurrencyLimiter+Statistics.m" lineNumber:46 description:@"backtrace_symbols returned NULL"];
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v14];
    free(v14);
    v16 = [v15 componentsSeparatedByString:@" "];
    v62 = v15;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v77 objects:v88 count:16];
    if (v18)
    {
      v19 = 0;
      v20 = *v78;
      while (2)
      {
        v21 = 0;
        v22 = v19;
        do
        {
          if (*v78 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v77 + 1) + 8 * v21);
          if ([v23 containsString:@"_block_invoke"])
          {
            if (v22)
            {
              v24 = [v22 stringByAppendingFormat:@" %@", v23];
            }

            else
            {
              v24 = v23;
            }

            v25 = v24;

            goto LABEL_27;
          }

          v19 = v23;

          ++v21;
          v22 = v19;
        }

        while (v18 != v21);
        v18 = [v17 countByEnumeratingWithState:&v77 objects:v88 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v22 = v19;
    }

    else
    {
      v22 = 0;
    }

    v25 = v62;
LABEL_27:

    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy__29935;
    v75 = __Block_byref_object_dispose__29936;
    v76 = 0;
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __PLLogBlockExecutionTime_block_invoke;
    v68[3] = &unk_1E7578910;
    v70 = &v71;
    v60 = v13;
    v69 = v60;
    [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v68];
    if ([v72[5] containsString:@"(inode="]
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v57 = v25;
      v58 = queueCopy;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v27 = [v72[5] componentsSeparatedByString:@" "];
      v28 = [v27 countByEnumeratingWithState:&v64 objects:v87 count:16];
      if (v28)
      {
        v29 = *v65;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v65 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v64 + 1) + 8 * i);
            if (([v31 hasPrefix:@"(inode="] == 0)
            {
              [v26 addObject:v31];
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v64 objects:v87 count:16];
        }

        while (v28);
      }

      v25 = v57;
      queueCopy = v58;
      v32 = [v26 componentsJoinedByString:@" "];
      v33 = v72[5];
      v72[5] = v32;
    }

    v34 = MEMORY[0x1E696AEC0];
    v35 = PLShortStringFromQoSClass();
    v36 = [v34 stringWithFormat:@"Limiter block execution time %.6f sec, qos %@, context: %@, symbol: %@", s / 1000000000.0, v35, v72[5], v25];

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v38 = [standardUserDefaults BOOLForKey:@"PLConcurrencyLimiterTimeViolationEnableTTR"];

    if (v38)
    {
      v39 = PLBackendGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v36;
        _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_FAULT, "%{public}@", &buf, 0xCu);
      }

      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TTR: PLConcurrencyLimiter time slice threshold of %llu sec exceeded", 30];
      [PLDiagnostics fileRadarUserNotificationWithHeader:@"PLConcurrencyLimiter time violation" message:@"Please file a Radar against Photos" radarTitle:v40 radarDescription:v36];
    }

    else
    {
      v40 = PLBackendGetLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v36;
        _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }
    }

    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v42 = MEMORY[0x1E696AD98];
    libraryServicesManager = [v60 libraryServicesManager];
    v44 = [v42 numberWithInteger:{objc_msgSend(libraryServicesManager, "wellKnownPhotoLibraryIdentifier")}];
    [v41 setObject:v44 forKeyedSubscript:@"wellKnownPhotoLibraryIdentifier"];

    [v41 setObject:v72[5] forKeyedSubscript:@"contextName"];
    [v41 setObject:v25 forKeyedSubscript:@"symbol"];
    0x3B9ACA00 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:s / 0x3B9ACA00];
    [v41 setObject:0x3B9ACA00 forKeyedSubscript:@"executionTimeInSeconds"];

    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v61];
    [v41 setObject:v46 forKeyedSubscript:@"qos"];

    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v83 = __PLLogBlockExecutionTime_block_invoke_146;
    v84 = &unk_1E7578848;
    v47 = v60;
    v85 = v47;
    v48 = v41;
    v86 = v48;
    [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:&buf];
    v49 = [v48 copy];
    AnalyticsSendEvent();

    _Block_object_dispose(&v71, 8);
    objc_autoreleasePoolPop(context);
  }
}

+ (id)debugDescriptionOfEnqueuedBlocksOnQueue:(id)queue
{
  queueCopy = queue;
  specific = dispatch_queue_get_specific(queueCopy, PLConcurrencyLimiterTrackingStatsKey);
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"queue: %@, scheduled blocks (max: %d) with wait times:\n", queueCopy, 20];
  os_unfair_lock_lock(specific + 4);
  v19 = specific;
  v6 = *&specific->_os_unfair_lock_opaque;
  if (*&specific->_os_unfair_lock_opaque)
  {
    v7 = 0;
    while (1)
    {
      [v5 appendString:@"{\n\t"];
      if (!v7)
      {
        [v5 appendString:@"[head] "];
      }

      v8 = *(v6 + 24);
      if (v8 > 20)
      {
        switch(v8)
        {
          case 21:
            v9 = @"[DEF] ";
            goto LABEL_18;
          case 33:
            v9 = @"[UI] ";
            goto LABEL_18;
          case 25:
            v9 = @"[IN] ";
            goto LABEL_18;
        }
      }

      else
      {
        switch(v8)
        {
          case 0:
            v9 = @"[UNSPEC] ";
            goto LABEL_18;
          case 9:
            v9 = @"[BG] ";
            goto LABEL_18;
          case 17:
            v9 = @"[UT] ";
LABEL_18:
            [v5 appendString:v9];
            break;
        }
      }

      if (*(v6 + 28) == 1)
      {
        [v5 appendString:@"[NOTIFY] "];
      }

      else
      {
        [v5 appendFormat:@"[waiting %g s] ", (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - *(v6 + 16)) / 1000000000.0];
      }

      v10 = *(v6 + 32);
      if (v10)
      {
        managedObjectContext = [v10 managedObjectContext];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v13 = v12;
          [managedObjectContext lastResetTimestamp];
          [v5 appendFormat:@"(Moc age: %g sec) %@\n", v13 - v14, managedObjectContext];
        }
      }

      v15 = backtrace_symbols(v6, 1);
      if (v15)
      {
        v16 = v15;
        [v5 appendFormat:@"\t%s\n", *v15];
        free(v16);
      }

      [v5 appendString:@"}\n"];
      v6 = *(v6 + 8);
      if (v6)
      {
        if (v7++ < 0x13)
        {
          continue;
        }
      }

      break;
    }
  }

  os_unfair_lock_unlock(v19 + 4);

  return v5;
}

+ (void)reportBlockEnqueued:(id)enqueued isNotifyBlock:(BOOL)block onQueue:(id)queue forLibrary:(id)library
{
  enqueuedCopy = enqueued;
  queueCopy = queue;
  libraryCopy = library;
  specific = dispatch_queue_get_specific(queueCopy, PLConcurrencyLimiterTrackingStatsKey);
  if (!specific)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLConcurrencyLimiter(Statistics) reportBlockEnqueued:isNotifyBlock:onQueue:forLibrary:]"];
    [currentHandler handleFailureInFunction:v16 file:@"PLConcurrencyLimiter+Statistics.m" lineNumber:163 description:@"no stat struct."];
  }

  v12 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040E2C296BEuLL);
  *v12 = enqueuedCopy[2];
  *(v12 + 2) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  *(v12 + 6) = qos_class_self();
  *(v12 + 28) = block;
  if (libraryCopy)
  {
    objc_storeStrong(v12 + 4, library);
  }

  os_unfair_lock_lock(specific + 4);
  if (*specific)
  {
    v13 = specific + 8;
    v14 = *(specific + 1);
    if (!v14)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLConcurrencyLimiter(Statistics) reportBlockEnqueued:isNotifyBlock:onQueue:forLibrary:]"];
      [currentHandler2 handleFailureInFunction:v18 file:@"PLConcurrencyLimiter+Statistics.m" lineNumber:184 description:@"no tail"];
    }

    *(v14 + 8) = v12;
  }

  else
  {
    *specific = v12;
    v13 = specific + 8;
  }

  *v13 = v12;
  os_unfair_lock_unlock(specific + 4);
}

+ (void)configureListTrackingForDispatchQueue:(id)queue
{
  queue = queue;
  if (!queue)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLConcurrencyLimiter(Statistics) configureListTrackingForDispatchQueue:]"];
    [currentHandler handleFailureInFunction:v5 file:@"PLConcurrencyLimiter+Statistics.m" lineNumber:153 description:@"queue required."];
  }

  v3 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040EDCEB4C7uLL);
  v3[4] = 0;
  dispatch_queue_set_specific(queue, PLConcurrencyLimiterTrackingStatsKey, v3, _PLConcurrencyLimiterQueueTrackingStatsDestructor);
}

- (void)async:(id)async identifyingBlock:(id)block library:(id)library
{
  libraryCopy = library;
  blockCopy = block;
  asyncCopy = async;
  -[PLConcurrencyLimiter _async:identifyingBlock:libraryRole:libraryForTelemetry:](self, "_async:identifyingBlock:libraryRole:libraryForTelemetry:", asyncCopy, blockCopy, [libraryCopy role], libraryCopy);
}

- (void)sync:(id)sync identifyingBlock:(id)block library:(id)library
{
  libraryCopy = library;
  blockCopy = block;
  syncCopy = sync;
  -[PLConcurrencyLimiter _sync:identifyingBlock:libraryRole:libraryForTelemetry:](self, "_sync:identifyingBlock:libraryRole:libraryForTelemetry:", syncCopy, blockCopy, [libraryCopy role], libraryCopy);
}

- (void)groupNotify:(id)notify queue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  notifyCopy = notify;
  v11 = qos_class_self();
  v12 = [(PLConcurrencyLimiter *)self _nextQueueForQoS:v11 libraryRole:0];
  v13 = [(PLConcurrencyLimiter *)self _callOutForQoS:v11 fromQueue:v12];
  [objc_opt_class() reportBlockEnqueued:blockCopy isNotifyBlock:1 onQueue:v12 forLibrary:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PLConcurrencyLimiter_groupNotify_queue_block___block_invoke;
  block[3] = &unk_1E7576190;
  v21 = blockCopy;
  v22 = v13;
  v18 = queueCopy;
  selfCopy = self;
  v20 = v12;
  v14 = v12;
  v15 = blockCopy;
  v16 = queueCopy;
  dispatch_group_notify(notifyCopy, v14, block);
}

void __48__PLConcurrencyLimiter_groupNotify_queue_block___block_invoke(uint64_t a1)
{
  if (_limiterDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_limiterDepthThreadKey_s_onceToken, &__block_literal_global_94);
  }

  v2 = pthread_getspecific(_limiterDepthThreadKey_s_key);
  if (_limiterDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_limiterDepthThreadKey_s_onceToken, &__block_literal_global_94);
  }

  pthread_setspecific(_limiterDepthThreadKey_s_key, v2 + 1);
  v3 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__PLConcurrencyLimiter_groupNotify_queue_block___block_invoke_2;
  v10[3] = &unk_1E7573970;
  v9 = *(a1 + 56);
  v4 = v9;
  v11 = v9;
  v5 = v10;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PLTimeBlockExecutionSyncOnQueue_block_invoke;
  aBlock[3] = &unk_1E7573998;
  v13 = v5;
  v14 = &v15;
  v6 = v3;
  v7 = _Block_copy(aBlock);
  dispatch_sync(v6, v7);

  v8 = v16[3];
  _Block_object_dispose(&v15, 8);
  _limiterDepthPop();
  [*(a1 + 40) reportBlockDequeuedOnQueue:*(a1 + 48) executionTimeNS:v8];
}

- (void)dispatchAfterTime:(unint64_t)time library:(id)library block:(id)block
{
  blockCopy = block;
  libraryCopy = library;
  v10 = qos_class_self();
  options = [libraryCopy options];
  v12 = -[PLConcurrencyLimiter _nextQueueForQoS:libraryRole:](self, "_nextQueueForQoS:libraryRole:", v10, [options libraryRole]);

  v13 = [(PLConcurrencyLimiter *)self _callOutForQoS:v10 fromQueue:v12];
  [objc_opt_class() reportBlockEnqueued:blockCopy isNotifyBlock:0 onQueue:v12 forLibrary:libraryCopy];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__PLConcurrencyLimiter_dispatchAfterTime_library_block___block_invoke;
  v16[3] = &unk_1E7576078;
  v18 = blockCopy;
  v19 = v13;
  v16[4] = self;
  v17 = v12;
  v14 = v12;
  v15 = blockCopy;
  dispatch_after(time, v14, v16);
}

uint64_t __56__PLConcurrencyLimiter_dispatchAfterTime_library_block___block_invoke(uint64_t a1)
{
  if (_limiterDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_limiterDepthThreadKey_s_onceToken, &__block_literal_global_94);
  }

  v2 = pthread_getspecific(_limiterDepthThreadKey_s_key);
  if (_limiterDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_limiterDepthThreadKey_s_onceToken, &__block_literal_global_94);
  }

  pthread_setspecific(_limiterDepthThreadKey_s_key, v2 + 1);
  v3 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  (*(a1 + 56))(*(a1 + 48));
  v4 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v3;
  _limiterDepthPop();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 reportBlockDequeuedOnQueue:v6 executionTimeNS:v4];
}

- (void)dispatchAsync:(id)async block:(id)block
{
  asyncCopy = async;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__PLConcurrencyLimiter_dispatchAsync_block___block_invoke;
  v10[3] = &unk_1E7577C08;
  v11 = asyncCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = asyncCopy;
  [(PLConcurrencyLimiter *)self _async:v10 identifyingBlock:0 libraryRole:0 libraryForTelemetry:0];
}

- (void)asyncPerformOnContext:(id)context identifyingBlock:(id)block block:(id)a5
{
  contextCopy = context;
  v9 = a5;
  v14 = MEMORY[0x1E69E9820];
  v15 = contextCopy;
  v16 = v9;
  v10 = v9;
  v11 = contextCopy;
  blockCopy = block;
  photoLibrary = [v11 photoLibrary];
  -[PLConcurrencyLimiter _async:identifyingBlock:libraryRole:libraryForTelemetry:](self, "_async:identifyingBlock:libraryRole:libraryForTelemetry:", &v14, blockCopy, [photoLibrary role], 0);
}

- (int64_t)maxConcurrency
{
  _queuesTrackingBlocks = [(PLConcurrencyLimiter *)self _queuesTrackingBlocks];
  v3 = [_queuesTrackingBlocks count];

  return v3;
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"PLConcurrencyLimiter: \n"];
  _queuesTrackingBlocks = [(PLConcurrencyLimiter *)self _queuesTrackingBlocks];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PLConcurrencyLimiter_debugDescription__block_invoke;
  v8[3] = &unk_1E7573948;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [_queuesTrackingBlocks enumerateObjectsWithOptions:2 usingBlock:v8];

  v6 = v5;
  return v5;
}

void __40__PLConcurrencyLimiter_debugDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() debugDescriptionOfEnqueuedBlocksOnQueue:v3];

  [v2 appendString:v4];
}

- (PLConcurrencyLimiter)init
{
  v26.receiver = self;
  v26.super_class = PLConcurrencyLimiter;
  v2 = [(PLConcurrencyLimiter *)&v26 init];
  if (v2)
  {
    *(v2 + 64) = PLIsReallyAssetsd();
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = pl_dispatch_queue_create_with_fallback_qos();
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    [objc_opt_class() configureListTrackingForDispatchQueue:*(v2 + 1)];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = pl_dispatch_queue_create_with_fallback_qos();
    v8 = *(v2 + 2);
    *(v2 + 2) = v7;

    [objc_opt_class() configureListTrackingForDispatchQueue:*(v2 + 2)];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = pl_dispatch_queue_create_with_fallback_qos();
    v11 = *(v2 + 3);
    *(v2 + 3) = v10;

    [objc_opt_class() configureListTrackingForDispatchQueue:*(v2 + 3)];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = pl_dispatch_queue_create_with_fallback_qos();
    v14 = *(v2 + 4);
    *(v2 + 4) = v13;

    [objc_opt_class() configureListTrackingForDispatchQueue:*(v2 + 4)];
    v15 = dispatch_workloop_create("PLConcurrencyLimiter auxillary workloop");
    v16 = *(v2 + 7);
    *(v2 + 7) = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_UTILITY, 0);

    v19 = dispatch_queue_create_with_target_V2("PLConcurrencyLimiter auxillary UT", v18, *(v2 + 7));
    v20 = *(v2 + 5);
    *(v2 + 5) = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_attr_make_with_qos_class(v21, QOS_CLASS_BACKGROUND, 0);

    v23 = dispatch_queue_create_with_target_V2("PLConcurrencyLimiter auxillary BG", v22, *(v2 + 7));
    v24 = *(v2 + 6);
    *(v2 + 6) = v23;
  }

  return v2;
}

- (void)_async:(id)_async identifyingBlock:(id)block libraryRole:(unint64_t)role libraryForTelemetry:(id)telemetry
{
  _asyncCopy = _async;
  blockCopy = block;
  telemetryCopy = telemetry;
  v13 = qos_class_self();
  v14 = [(PLConcurrencyLimiter *)self _nextQueueForQoS:v13 libraryRole:role];
  if (!blockCopy)
  {
    blockCopy = _Block_copy(_asyncCopy);
  }

  v15 = [(PLConcurrencyLimiter *)self _callOutForQoS:v13 fromQueue:v14];
  [objc_opt_class() reportBlockEnqueued:blockCopy isNotifyBlock:0 onQueue:v14 forLibrary:telemetryCopy];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__PLConcurrencyLimiter__async_identifyingBlock_libraryRole_libraryForTelemetry___block_invoke;
  v18[3] = &unk_1E7576078;
  v20 = _asyncCopy;
  v21 = v15;
  v18[4] = self;
  v19 = v14;
  v16 = v14;
  v17 = _asyncCopy;
  dispatch_async(v16, v18);
}

uint64_t __80__PLConcurrencyLimiter__async_identifyingBlock_libraryRole_libraryForTelemetry___block_invoke(uint64_t a1)
{
  if (_limiterDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_limiterDepthThreadKey_s_onceToken, &__block_literal_global_94);
  }

  v2 = pthread_getspecific(_limiterDepthThreadKey_s_key);
  if (_limiterDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_limiterDepthThreadKey_s_onceToken, &__block_literal_global_94);
  }

  pthread_setspecific(_limiterDepthThreadKey_s_key, v2 + 1);
  v3 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  (*(a1 + 56))(*(a1 + 48));
  v4 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v3;
  _limiterDepthPop();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 reportBlockDequeuedOnQueue:v6 executionTimeNS:v4];
}

- (void)_sync:(id)_sync identifyingBlock:(id)block libraryRole:(unint64_t)role libraryForTelemetry:(id)telemetry
{
  _syncCopy = _sync;
  blockCopy = block;
  telemetryCopy = telemetry;
  v13 = qos_class_self();
  if ([objc_opt_class() isRunningUnderLimiter])
  {
    [(PLConcurrencyLimiter *)self _syncPerformBlockNotOnAnyQueue:_syncCopy];
  }

  else
  {
    v14 = [(PLConcurrencyLimiter *)self _nextQueueForQoS:v13 libraryRole:role];
    if (!blockCopy)
    {
      blockCopy = _Block_copy(_syncCopy);
    }

    [objc_opt_class() reportBlockEnqueued:blockCopy isNotifyBlock:0 onQueue:v14 forLibrary:telemetryCopy];
    v15 = [(PLConcurrencyLimiter *)self _callOutForQoS:v13 fromQueue:v14];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79__PLConcurrencyLimiter__sync_identifyingBlock_libraryRole_libraryForTelemetry___block_invoke;
    v17[3] = &unk_1E7577918;
    v20 = &v21;
    v16 = v14;
    v18 = v16;
    v19 = _syncCopy;
    v15(v17);
    [(PLConcurrencyLimiter *)self reportBlockDequeuedOnQueue:v16 executionTimeNS:v22[3]];

    _Block_object_dispose(&v21, 8);
  }
}

uint64_t __79__PLConcurrencyLimiter__sync_identifyingBlock_libraryRole_libraryForTelemetry___block_invoke(uint64_t a1)
{
  if (_limiterDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_limiterDepthThreadKey_s_onceToken, &__block_literal_global_94);
  }

  v2 = pthread_getspecific(_limiterDepthThreadKey_s_key);
  if (_limiterDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_limiterDepthThreadKey_s_onceToken, &__block_literal_global_94);
  }

  pthread_setspecific(_limiterDepthThreadKey_s_key, v2 + 1);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __PLTimeBlockExecutionSyncOnQueue_block_invoke;
  v10[3] = &unk_1E7573998;
  v11 = v4;
  v12 = &v13;
  v5 = v3;
  v6 = v4;
  v7 = _Block_copy(v10);
  dispatch_sync(v5, v7);

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);
  *(*(*(a1 + 48) + 8) + 24) = v8;
  return _limiterDepthPop();
}

- (void)_syncPerformBlockNotOnAnyQueue:(id)queue
{
  queueCopy = queue;
  v5 = [(PLConcurrencyLimiter *)self _callOutForQoS:qos_class_self() fromQueue:0];
  if (_limiterDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_limiterDepthThreadKey_s_onceToken, &__block_literal_global_94);
  }

  v6 = pthread_getspecific(_limiterDepthThreadKey_s_key);
  if (_limiterDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_limiterDepthThreadKey_s_onceToken, &__block_literal_global_94);
  }

  pthread_setspecific(_limiterDepthThreadKey_s_key, v6 + 1);
  v5(queueCopy);

  _limiterDepthPop();
}

- (id)_queuesTrackingBlocks
{
  v7 = *MEMORY[0x1E69E9840];
  userInitiatedQueueA = self->_userInitiatedQueueA;
  v5 = *&self->_backgroundAndUtilityQueue;
  exclusiveMomentsQueue = self->_exclusiveMomentsQueue;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&userInitiatedQueueA count:4];

  return v2;
}

- (id)_nextQueueForQoS:(unsigned int)s libraryRole:(unint64_t)role
{
  v4 = *&s;
  selfCopy = self;
  if (role > 2)
  {
    if (role - 3 >= 2)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (!role)
  {
    goto LABEL_8;
  }

  if (role == 1)
  {
    v6 = 32;
    goto LABEL_12;
  }

  if (role != 2)
  {
    goto LABEL_13;
  }

  if (qos_class_self() != QOS_CLASS_USER_INITIATED)
  {
LABEL_8:
    HIDWORD(v8) = v4 - 9;
    LODWORD(v8) = v4 - 9;
    v7 = v8 >> 3;
    if (v7 >= 4)
    {
      [(PLConcurrencyLimiter *)selfCopy _handleUnexpectedQoSClass:v4];
      v6 = 16;
    }

    else
    {
      v6 = qword_19C60FDC8[v7];
    }

    goto LABEL_12;
  }

  v6 = 24;
LABEL_12:
  self = *(&selfCopy->super.isa + v6);
LABEL_13:

  return self;
}

- (void)_callOutForQoS:(unsigned int)s fromQueue:(id)queue
{
  queueCopy = queue;
  if (self->_highQOSAssetIngestQueue == queueCopy && (v7 = qos_class_self(), v8 = __PLQUEUE_DISPATCH_IS_CALLING_OUT_TO_HIGH_QOS_INGEST_BLOCK__, v7 == QOS_CLASS_USER_INITIATED) || (v8 = __PLQUEUE_DISPATCH_IS_CALLING_OUT_TO_MOMENTS_BLOCK__, self->_exclusiveMomentsQueue == queueCopy) || (HIDWORD(v10) = s - 9, LODWORD(v10) = s - 9, v9 = v10 >> 2, v8 = __PLQUEUE_DISPATCH_IS_CALLING_OUT_TO_UN_BLOCK__, v9 > 6))
  {
    v11 = v8;
  }

  else
  {
    v11 = off_1F0F05A08[v9];
  }

  return v11;
}

void __37__PLConcurrencyLimiter_sharedLimiter__block_invoke()
{
  v0 = objc_alloc_init(PLConcurrencyLimiter);
  v1 = sharedLimiter_queueManager;
  sharedLimiter_queueManager = v0;
}

@end