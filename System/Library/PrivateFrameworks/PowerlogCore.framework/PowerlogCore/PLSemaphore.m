@interface PLSemaphore
+ (id)sharedSemaphoreForKey:(id)a3;
- (BOOL)isActive;
- (PLSemaphore)initWithKey:(id)a3;
- (void)signalDoneByObject:(id)a3;
- (void)signalInterestByObject:(id)a3;
- (void)signalNonInterestByObject:(id)a3;
- (void)signalStartListening;
- (void)waitWithBlock:(id)a3;
- (void)waitWithBlockSync:(id)a3;
@end

@implementation PLSemaphore

+ (id)sharedSemaphoreForKey:(id)a3
{
  v3 = a3;
  if (sharedSemaphoreForKey__onceToken != -1)
  {
    +[PLSemaphore sharedSemaphoreForKey:];
  }

  v4 = sharedSemaphoreForKey___sharedSemaphores;
  objc_sync_enter(v4);
  v5 = [sharedSemaphoreForKey___sharedSemaphores objectForKeyedSubscript:v3];

  if (!v5)
  {
    v6 = [[PLSemaphore alloc] initWithKey:v3];
    [sharedSemaphoreForKey___sharedSemaphores setObject:v6 forKeyedSubscript:v3];
  }

  v7 = [sharedSemaphoreForKey___sharedSemaphores objectForKeyedSubscript:v3];
  objc_sync_exit(v4);

  return v7;
}

uint64_t __37__PLSemaphore_sharedSemaphoreForKey___block_invoke()
{
  sharedSemaphoreForKey___sharedSemaphores = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (PLSemaphore)initWithKey:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PLSemaphore;
  v6 = [(PLSemaphore *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, a3);
    v7->_timeout = 3.0;
    v8 = objc_opt_new();
    interestedObjects = v7->_interestedObjects;
    v7->_interestedObjects = v8;

    v10 = objc_opt_new();
    pendingDoneObjects = v7->_pendingDoneObjects;
    v7->_pendingDoneObjects = v10;

    v12 = objc_alloc_init(MEMORY[0x1E696AB30]);
    pendingObjectsLock = v7->_pendingObjectsLock;
    v7->_pendingObjectsLock = v12;
  }

  return v7;
}

- (BOOL)isActive
{
  [(NSCondition *)self->_pendingObjectsLock lock];
  v3 = [(PLSemaphore *)self pendingDoneObjects];
  v4 = [v3 count] != 0;

  [(NSCondition *)self->_pendingObjectsLock unlock];
  return v4;
}

- (void)signalInterestByObject:(id)a3
{
  v7 = a3;
  v4 = [(PLSemaphore *)self interestedObjects];
  objc_sync_enter(v4);
  v5 = [(PLSemaphore *)self interestedObjects];
  [v5 addObject:v7];

  objc_sync_exit(v4);
  [(NSCondition *)self->_pendingObjectsLock lock];
  v6 = [(PLSemaphore *)self pendingDoneObjects];
  [v6 addObject:v7];

  [(NSCondition *)self->_pendingObjectsLock unlock];
}

- (void)signalNonInterestByObject:(id)a3
{
  v6 = a3;
  v4 = [(PLSemaphore *)self interestedObjects];
  objc_sync_enter(v4);
  v5 = [(PLSemaphore *)self interestedObjects];
  [v5 removeObject:v6];

  objc_sync_exit(v4);
}

- (void)signalDoneByObject:(id)a3
{
  v4 = a3;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__PLSemaphore_signalDoneByObject___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (signalDoneByObject__defaultOnce != -1)
    {
      dispatch_once(&signalDoneByObject__defaultOnce, block);
    }

    if (signalDoneByObject__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"done signaled by %@", v4];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSemaphore.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSemaphore signalDoneByObject:]"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:80];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [(NSCondition *)self->_pendingObjectsLock lock];
  v11 = [(PLSemaphore *)self pendingDoneObjects];
  v12 = [v11 count];

  if (v12)
  {
    if (+[PLDefaults debugEnabled])
    {
      v13 = objc_opt_class();
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __34__PLSemaphore_signalDoneByObject___block_invoke_26;
      v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v35[4] = v13;
      if (signalDoneByObject__defaultOnce_24 != -1)
      {
        dispatch_once(&signalDoneByObject__defaultOnce_24, v35);
      }

      if (signalDoneByObject__classDebugEnabled_25 == 1)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removed %@ from pendingDoneObjects", v4];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSemaphore.m"];
        v16 = [v15 lastPathComponent];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSemaphore signalDoneByObject:]"];
        [PLCoreStorage logMessage:v14 fromFile:v16 fromFunction:v17 fromLineNumber:83];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v19 = [(PLSemaphore *)self pendingDoneObjects];
    [v19 removeObject:v4];

    v20 = [(PLSemaphore *)self pendingDoneObjects];
    v21 = [v20 count];

    if (!v21)
    {
      if (+[PLDefaults debugEnabled])
      {
        v22 = objc_opt_class();
        v30 = MEMORY[0x1E69E9820];
        v31 = 3221225472;
        v32 = __34__PLSemaphore_signalDoneByObject___block_invoke_32;
        v33 = &__block_descriptor_40_e5_v8__0lu32l8;
        v34 = v22;
        if (signalDoneByObject__defaultOnce_30 != -1)
        {
          dispatch_once(&signalDoneByObject__defaultOnce_30, &v30);
        }

        if (signalDoneByObject__classDebugEnabled_31 == 1)
        {
          v23 = MEMORY[0x1E696AEC0];
          v24 = [(PLSemaphore *)self key];
          v25 = [v23 stringWithFormat:@"PLSemaphore %@ signalDone!", v24, v30, v31, v32, v33, v34];

          v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSemaphore.m"];
          v27 = [v26 lastPathComponent];
          v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSemaphore signalDoneByObject:]"];
          [PLCoreStorage logMessage:v25 fromFile:v27 fromFunction:v28 fromLineNumber:87];

          v29 = PLLogCommon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      [(NSCondition *)self->_pendingObjectsLock signal];
    }
  }

  [(NSCondition *)self->_pendingObjectsLock unlock];
}

BOOL __34__PLSemaphore_signalDoneByObject___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  signalDoneByObject__classDebugEnabled = result;
  return result;
}

BOOL __34__PLSemaphore_signalDoneByObject___block_invoke_26(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  signalDoneByObject__classDebugEnabled_25 = result;
  return result;
}

BOOL __34__PLSemaphore_signalDoneByObject___block_invoke_32(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  signalDoneByObject__classDebugEnabled_31 = result;
  return result;
}

- (void)signalStartListening
{
  [(NSCondition *)self->_pendingObjectsLock lock];
  v3 = [(PLSemaphore *)self pendingDoneObjects];
  v4 = [(PLSemaphore *)self interestedObjects];
  [v3 unionSet:v4];

  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __35__PLSemaphore_signalStartListening__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (signalStartListening_defaultOnce != -1)
    {
      dispatch_once(&signalStartListening_defaultOnce, &block);
    }

    if (signalStartListening_classDebugEnabled == 1)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [(PLSemaphore *)self pendingDoneObjects];
      v8 = [v6 stringWithFormat:@"Start Listening for %@", v7, block, v14, v15, v16, v17];

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSemaphore.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSemaphore signalStartListening]"];
      [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:97];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [(NSCondition *)self->_pendingObjectsLock unlock];
}

BOOL __35__PLSemaphore_signalStartListening__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  signalStartListening_classDebugEnabled = result;
  return result;
}

- (void)waitWithBlock:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__PLSemaphore_waitWithBlock___block_invoke;
  v7[3] = &unk_1E8519400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)waitWithBlockSync:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSCondition *)self->_pendingObjectsLock lock];
  v5 = [(PLSemaphore *)self pendingDoneObjects];
  v6 = [v5 count];

  v7 = 0x1E8518000uLL;
  v8 = &off_1D86FA000;
  v9 = &__block_descriptor_40_e5_v8__0lu32l8;
  if (v6)
  {
    v39 = v4;
    v10 = v42;
    p_name = &OBJC_PROTOCOL___UMUserSwitchStakeholder.name;
    v12 = &OBJC_PROTOCOL___UMUserSwitchStakeholder.name;
    do
    {
      if ([*(v7 + 2224) debugEnabled])
      {
        v13 = objc_opt_class();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        v42[0] = __33__PLSemaphore_waitWithBlockSync___block_invoke;
        v42[1] = v9;
        v42[2] = v13;
        if (p_name[270] != -1)
        {
          dispatch_once(&waitWithBlockSync__defaultOnce, block);
        }

        if (*(v12 + 2168) == 1)
        {
          v14 = v10;
          v15 = v7;
          v16 = p_name;
          v17 = v9;
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"waiting for signal to be done"];
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSemaphore.m"];
          v20 = [v19 lastPathComponent];
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSemaphore waitWithBlockSync:]"];
          [PLCoreStorage logMessage:v18 fromFile:v20 fromFunction:v21 fromLineNumber:111];

          v22 = PLLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v44 = v18;
            _os_log_debug_impl(&dword_1D8611000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v9 = v17;
          p_name = v16;
          v7 = v15;
          v10 = v14;
          v12 = (&OBJC_PROTOCOL___UMUserSwitchStakeholder + 8);
        }
      }

      v23 = MEMORY[0x1E695DF00];
      [(PLSemaphore *)self timeout];
      v24 = [v23 dateWithTimeIntervalSinceNow:?];
      v25 = [(NSCondition *)self->_pendingObjectsLock waitUntilDate:v24];

      v26 = [(PLSemaphore *)self pendingDoneObjects];
      v27 = [v26 count];
    }

    while (v27 && v25);
    v28 = !v25;
    v4 = v39;
    v8 = &off_1D86FA000;
  }

  else
  {
    v28 = 0;
  }

  if ([*(v7 + 2224) debugEnabled])
  {
    v29 = objc_opt_class();
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = *(v8 + 230);
    v40[2] = __33__PLSemaphore_waitWithBlockSync___block_invoke_45;
    v40[3] = v9;
    v40[4] = v29;
    if (waitWithBlockSync__defaultOnce_43 != -1)
    {
      dispatch_once(&waitWithBlockSync__defaultOnce_43, v40);
    }

    if (waitWithBlockSync__classDebugEnabled_44 == 1)
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = [(PLSemaphore *)self key];
      v32 = [(PLSemaphore *)self pendingDoneObjects];
      v33 = [v30 stringWithFormat:@"PLSemaphore %@ ended! timedOut=%d pendingDoneObjects=%@", v31, v28, v32];

      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSemaphore.m"];
      v35 = [v34 lastPathComponent];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSemaphore waitWithBlockSync:]"];
      [PLCoreStorage logMessage:v33 fromFile:v35 fromFunction:v36 fromLineNumber:117];

      v37 = PLLogCommon();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [(NSCondition *)self->_pendingObjectsLock unlock];
  v4[2](v4);

  v38 = *MEMORY[0x1E69E9840];
}

BOOL __33__PLSemaphore_waitWithBlockSync___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  waitWithBlockSync__classDebugEnabled = result;
  return result;
}

BOOL __33__PLSemaphore_waitWithBlockSync___block_invoke_45(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  waitWithBlockSync__classDebugEnabled_44 = result;
  return result;
}

@end