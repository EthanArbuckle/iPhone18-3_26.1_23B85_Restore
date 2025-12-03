@interface SUCoreSplunkHistory
+ (id)sharedHistory;
+ (void)logEventUUID:(id)d;
- (SUCoreSplunkHistory)init;
- (int)setupLogFile;
- (void)dealloc;
- (void)init;
- (void)safeWriteEventUUID:(id)d;
@end

@implementation SUCoreSplunkHistory

- (SUCoreSplunkHistory)init
{
  v48 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = SUCoreSplunkHistory;
  v2 = [(SUCoreSplunkHistory *)&v41 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_15;
  }

  v2->_lockFD = -1;
  lastUUID = v2->_lastUUID;
  v2->_lastUUID = 0;

  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = +[SUCore sharedCore];
  commonDomain = [v6 commonDomain];
  v8 = [v5 initWithFormat:@"%@.%@", commonDomain, @"core.splunk.history"];
  uTF8String = [v8 UTF8String];
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create(uTF8String, v10);
  splunkHistoryQueue = v3->_splunkHistoryQueue;
  v3->_splunkHistoryQueue = v11;

  if (!v3->_splunkHistoryQueue)
  {
    v20 = +[SUCoreDiag sharedDiag];
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    v26 = +[SUCore sharedCore];
    commonDomain2 = [v26 commonDomain];
    v28 = [v25 initWithFormat:@"unable to create dispatch queue domain(%@.%@)", commonDomain2, @"core.splunk.history"];
    [v20 trackError:@"[SPLUNK_HISTORY] INIT" forReason:v28 withResult:8100 withError:0];

LABEL_22:
    v31 = 0;
    goto LABEL_23;
  }

  v13 = +[SUCoreLog sharedLogger];
  oslog = [v13 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = +[SUCore sharedCore];
    commonDomain3 = [v15 commonDomain];
    *buf = 138543618;
    v45 = commonDomain3;
    v46 = 2114;
    v47 = @"core.splunk.history";
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SPLUNK_HISTORY] DISPATCH | created dispatch queue domain(%{public}@.%{public}@)", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v18 = [defaultManager fileExistsAtPath:@"/private/var/MobileSoftwareUpdate/Controller/SplunkHistory/"];

  if ((v18 & 1) == 0)
  {
    v19 = *MEMORY[0x1E696A328];
    v42[0] = *MEMORY[0x1E696A360];
    v42[1] = v19;
    v43[0] = @"mobile";
    v43[1] = @"mobile";
    v42[2] = *MEMORY[0x1E696A3A0];
    v43[2] = *MEMORY[0x1E696A3A8];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v40 = 0;
    [defaultManager2 createDirectoryAtPath:@"/private/var/MobileSoftwareUpdate/Controller/SplunkHistory/" withIntermediateDirectories:1 attributes:v20 error:&v40];
    oslog3 = v40;

    if (oslog3)
    {
      v23 = +[SUCoreLog sharedLogger];
      oslog2 = [v23 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
      {
        [(SUCoreSplunkHistory *)oslog3 init];
      }

      goto LABEL_21;
    }
  }

  v20 = [@"/private/var/MobileSoftwareUpdate/Controller/SplunkHistory/" stringByAppendingPathComponent:@"SUCoreSplunkHistory.lock"];
  v29 = [v20 cStringUsingEncoding:4];
  if (!v29)
  {
    v32 = +[SUCoreLog sharedLogger];
    oslog3 = [v32 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v33 = "[SPLUNK_HISTORY] INIT | failed creating file lock";
      v34 = oslog3;
      v35 = 2;
LABEL_20:
      _os_log_impl(&dword_1E0F71000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
    }

LABEL_21:

    goto LABEL_22;
  }

  v30 = open(v29, 521, 420);
  v3->_lockFD = v30;
  if (v30 == -1)
  {
    v36 = +[SUCoreLog sharedLogger];
    oslog3 = [v36 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *__error();
      *buf = 67109120;
      LODWORD(v45) = v37;
      v33 = "[SPLUNK_HISTORY] INIT | failed opening lock file, errno:%d";
      v34 = oslog3;
      v35 = 8;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_15:
  v31 = v3;
LABEL_23:

  v38 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)dealloc
{
  [(SUCoreSplunkHistory *)self releaseSharedLock];
  lockFD = self->_lockFD;
  if (lockFD != -1)
  {
    close(lockFD);
    self->_lockFD = -1;
  }

  v4.receiver = self;
  v4.super_class = SUCoreSplunkHistory;
  [(SUCoreSplunkHistory *)&v4 dealloc];
}

+ (id)sharedHistory
{
  if (sharedHistory_reporterOnce != -1)
  {
    +[SUCoreSplunkHistory sharedHistory];
  }

  v3 = sharedHistory_logger;

  return v3;
}

uint64_t __36__SUCoreSplunkHistory_sharedHistory__block_invoke()
{
  sharedHistory_logger = objc_alloc_init(SUCoreSplunkHistory);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)logEventUUID:(id)d
{
  dCopy = d;
  v4 = +[SUCoreSplunkHistory sharedHistory];
  [v4 safeWriteEventUUID:dCopy];
}

- (int)setupLogFile
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [@"/private/var/MobileSoftwareUpdate/Controller/SplunkHistory/" stringByAppendingPathComponent:@"SUCoreSplunkHistory.log"];
  v3 = [v2 cStringUsingEncoding:4];
  if (!v3)
  {
    v10 = +[SUCoreLog sharedLogger];
    oslog = [v10 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "[SPLUNK_HISTORY] SETUP | failed creating file name";
      v13 = oslog;
      v14 = 2;
LABEL_10:
      _os_log_impl(&dword_1E0F71000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }

LABEL_11:

LABEL_22:
    v6 = -1;
    goto LABEL_23;
  }

  v4 = v3;
  v5 = open(v3, 521, 420);
  if (v5 == -1)
  {
    v15 = +[SUCoreLog sharedLogger];
    oslog = [v15 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *__error();
      *buf = 67109120;
      v36 = v16;
      v12 = "[SPLUNK_HISTORY] SETUP | failed opening log file, errno:%d";
      v13 = oslog;
      v14 = 8;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v6 = v5;
  memset(&v34, 0, sizeof(v34));
  if (fstat(v5, &v34))
  {
    v7 = +[SUCoreLog sharedLogger];
    oslog2 = [v7 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *__error();
      *buf = 67109120;
      v36 = v9;
      _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[SPLUNK_HISTORY] SETUP | failed to get file stats, errno:%d", buf, 8u);
    }

    goto LABEL_21;
  }

  if (v34.st_size >= 0x40000)
  {
    oslog2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v2, @".1"];
    v17 = [oslog2 cStringUsingEncoding:4];
    if (v17)
    {
      v18 = v17;
      close(v6);
      rename(v4, v18, v19);
      if (!v20)
      {
        v30 = open(v4, 521, 420);
        if (v30 != -1)
        {
          v6 = v30;

          goto LABEL_23;
        }

        v31 = +[SUCoreLog sharedLogger];
        oslog3 = [v31 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *__error();
          *buf = 67109120;
          v36 = v33;
          _os_log_impl(&dword_1E0F71000, oslog3, OS_LOG_TYPE_DEFAULT, "[SPLUNK_HISTORY] SETUP | failed opening new log file, errno:%d", buf, 8u);
        }

        goto LABEL_22;
      }

      v21 = +[SUCoreLog sharedLogger];
      oslog4 = [v21 oslog];

      if (!os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v23 = *__error();
      *buf = 67109120;
      v36 = v23;
      v24 = "[SPLUNK_HISTORY] SETUP | failed moving old file, errno:%d";
      v25 = oslog4;
      v26 = 8;
    }

    else
    {
      v27 = +[SUCoreLog sharedLogger];
      oslog4 = [v27 oslog];

      if (!os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

LABEL_21:
        close(v6);
        goto LABEL_22;
      }

      *buf = 0;
      v24 = "[SPLUNK_HISTORY] SETUP | failed creating file name";
      v25 = oslog4;
      v26 = 2;
    }

    _os_log_impl(&dword_1E0F71000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    goto LABEL_20;
  }

LABEL_23:

  v28 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)safeWriteEventUUID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:dCopy];
  v6 = v5;
  if (!dCopy || !v5)
  {
    v7 = +[SUCoreLog sharedLogger];
    oslog = [v7 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SPLUNK_HISTORY] WRITE | wrong format for event UUID %@", buf, 0xCu);
    }
  }

  splunkHistoryQueue = [(SUCoreSplunkHistory *)self splunkHistoryQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__SUCoreSplunkHistory_safeWriteEventUUID___block_invoke;
  v12[3] = &unk_1E86FC150;
  v12[4] = self;
  v13 = dCopy;
  v10 = dCopy;
  dispatch_async(splunkHistoryQueue, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __42__SUCoreSplunkHistory_safeWriteEventUUID___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) lastUUID];
  v3 = [v2 isEqual:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) acquireSharedLock];
    v4 = [*(a1 + 32) setupLogFile];
    if (v4 == -1)
    {
LABEL_15:
      [*(a1 + 32) releaseSharedLock];
      goto LABEL_16;
    }

    v5 = v4;
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", *(a1 + 40)];
    v7 = [v6 cStringUsingEncoding:4];
    v8 = strlen(v7);
    v9 = write(v5, v7, v8);
    if (v9 < 0)
    {
      v10 = +[SUCoreLog sharedLogger];
      v11 = [v10 oslog];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = *__error();
        *buf = 138412546;
        v24 = v12;
        v25 = 1024;
        v26 = v13;
        v14 = "[SPLUNK_HISTORY] WRITE | failed writing event UUID %@, errno:%d";
        v15 = v11;
        v16 = 18;
LABEL_10:
        _os_log_impl(&dword_1E0F71000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }

    else
    {
      if (v9 == v8)
      {
        [*(a1 + 32) setLastUUID:*(a1 + 40)];
LABEL_12:
        v19 = +[SUCoreLog sharedLogger];
        v20 = [v19 oslog];

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 40);
          *buf = 138543362;
          v24 = v21;
          _os_log_impl(&dword_1E0F71000, v20, OS_LOG_TYPE_DEFAULT, "[SPLUNK_HISTORY] WRITE | Wrote UUID %{public}@", buf, 0xCu);
        }

        close(v5);
        goto LABEL_15;
      }

      v17 = +[SUCoreLog sharedLogger];
      v11 = [v17 oslog];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        *buf = 138412290;
        v24 = v18;
        v14 = "[SPLUNK_HISTORY] WRITE | failed writing complete event UUID %@";
        v15 = v11;
        v16 = 12;
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

LABEL_16:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)init
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = @"/private/var/MobileSoftwareUpdate/Controller/SplunkHistory/";
  v5 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_1E0F71000, a2, OS_LOG_TYPE_ERROR, "[SPLUNK_HISTORY] INIT | failed to create history directory at path: %@, error: %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end