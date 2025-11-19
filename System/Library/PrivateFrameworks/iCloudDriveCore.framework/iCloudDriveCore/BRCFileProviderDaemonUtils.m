@interface BRCFileProviderDaemonUtils
+ (id)sharedInstance;
- (BOOL)boostFileProvider;
- (BOOL)waitForFPToBeReadyToAcceptXPCWithError:(id *)a3;
- (id)_initWithSyncBubble:(BOOL)a3 isFPFS:(BOOL)a4;
- (void)_signalFPReady;
- (void)_waitIsOver;
- (void)dealloc;
- (void)enableFileProviderBoosting;
- (void)interrupt;
@end

@implementation BRCFileProviderDaemonUtils

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__BRCFileProviderDaemonUtils_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

- (BOOL)boostFileProvider
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  fpReady = v2->_fpReady;
  if (fpReady || !v2->_startedWaitingForFP)
  {
    objc_sync_exit(v2);
  }

  else
  {
    shouldBoostFileProvider = v2->_shouldBoostFileProvider;
    objc_sync_exit(v2);

    if (shouldBoostFileProvider)
    {
      v5 = +[BRCStringAdditions _br_currentMobileDocumentsDirForLegacy];
      if (v5)
      {
        v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:1];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v13 = 0x3032000000;
        v14 = __Block_byref_object_copy__56;
        v15 = __Block_byref_object_dispose__56;
        v16 = 0;
        v7 = [MEMORY[0x277CC63A8] synchronousSharedConnectionProxy];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __47__BRCFileProviderDaemonUtils_boostFileProvider__block_invoke;
        v11[3] = &unk_278508260;
        v11[4] = v2;
        v11[5] = &buf;
        [v7 wakeUpForURL:v6 completionHandler:v11];

        fpReady = *(*(&buf + 1) + 40) == 0;
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v6 = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v6;
          _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't find Mobile Documents path for current persona%@", &buf, 0xCu);
        }

        fpReady = 0;
      }
    }

    else
    {
      fpReady = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return fpReady;
}

- (id)_initWithSyncBubble:(BOOL)a3 isFPFS:(BOOL)a4
{
  v16.receiver = self;
  v16.super_class = BRCFileProviderDaemonUtils;
  v6 = [(BRCFileProviderDaemonUtils *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_inSyncBubble = a3;
    v6->_isFPFS = a4;
    *&v6->_interrupted = 0;
    *&v6->_startedWaitingForFP = 0;
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v9 = dispatch_queue_attr_make_initially_inactive(v8);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(v9, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("file-provider-ready-queue", v10);

    fileProviderReadyQueue = v7->_fileProviderReadyQueue;
    v7->_fileProviderReadyQueue = v11;

    v13 = dispatch_semaphore_create(0);
    waitForFPSemaphore = v7->_waitForFPSemaphore;
    v7->_waitForFPSemaphore = v13;
  }

  return v7;
}

- (void)dealloc
{
  dispatch_activate(self->_fileProviderReadyQueue);
  v3.receiver = self;
  v3.super_class = BRCFileProviderDaemonUtils;
  [(BRCFileProviderDaemonUtils *)&v3 dealloc];
}

uint64_t __44__BRCFileProviderDaemonUtils_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = +[BRCAccountsManager sharedManager];
  v3 = [v2 isInSyncBubble];

  sharedInstance_sharedInstance = [objc_alloc(*(a1 + 32)) _initWithSyncBubble:v3 isFPFS:1];

  return MEMORY[0x2821F96F8]();
}

- (void)interrupt
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] got interrupted%@", &v6, 0xCu);
  }

  v2->_interrupted = 1;
  dispatch_semaphore_signal(v2->_waitForFPSemaphore);
  objc_sync_exit(v2);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_signalFPReady
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_fpReady)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] FP is now ready to accept xpc connections%@", &v6, 0xCu);
    }

    v2->_fpReady = 1;
    dispatch_semaphore_signal(v2->_waitForFPSemaphore);
  }

  objc_sync_exit(v2);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_waitIsOver
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_fpReady)
  {
    if (obj->_interrupted)
    {
      [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:4 description:@"BRCFileProviderDaemonUtils was interrupted while waiting for FP to accept xpc connections"];
    }

    else
    {
      [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"Waiting without success for FP to accept xpc connections"];
    }
    v3 = ;
    fpReadyError = obj->_fpReadyError;
    obj->_fpReadyError = v3;

    v2 = obj;
  }

  dispatch_activate(v2->_fileProviderReadyQueue);
  objc_sync_exit(obj);
}

- (void)enableFileProviderBoosting
{
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldBoostFileProvider = 1;
  objc_sync_exit(obj);
}

- (BOOL)waitForFPToBeReadyToAcceptXPCWithError:(id *)a3
{
  v52 = *MEMORY[0x277D85DE8];
  if (!self->_isFPFS && self->_inSyncBubble)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] Device is in sync bubble%@", buf, 0xCu);
    }

    v6 = [MEMORY[0x277CCA9B8] brc_errorCantCallFPInSyncBubble];
    fpReady = v6 == 0;
    if (v6)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, 0x90u))
      {
        v40 = "(passed to caller)";
        *buf = 136315906;
        v45 = "[BRCFileProviderDaemonUtils waitForFPToBeReadyToAcceptXPCWithError:]";
        v46 = 2080;
        if (!a3)
        {
          v40 = "(ignored by caller)";
        }

        v47 = v40;
        v48 = 2112;
        v49 = v6;
        v50 = 2112;
        v51 = v8;
        _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a3)
    {
      v10 = v6;
      *a3 = v6;
    }

    goto LABEL_27;
  }

  v11 = self;
  objc_sync_enter(v11);
  startedWaitingForFP = v11->_startedWaitingForFP;
  v11->_startedWaitingForFP = 1;
  objc_sync_exit(v11);

  if (!startedWaitingForFP)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(BRCFileProviderDaemonUtils *)v13 waitForFPToBeReadyToAcceptXPCWithError:v14];
    }

    if ([(BRCFileProviderDaemonUtils *)v11 boostFileProvider])
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [(BRCFileProviderDaemonUtils *)v15 waitForFPToBeReadyToAcceptXPCWithError:v16];
      }
    }

    else
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __69__BRCFileProviderDaemonUtils_waitForFPToBeReadyToAcceptXPCWithError___block_invoke;
      v43[3] = &unk_278500DC8;
      v43[4] = v11;
      v17 = [MEMORY[0x277CC6420] beginMonitoringProviderDomainChangesWithHandler:v43];
      v18 = [BRCUserDefaults defaultsForMangledID:0];
      v19 = [v18 fpReadyForXpcCheckMaxWaitTimeInSec];

      waitForFPSemaphore = v11->_waitForFPSemaphore;
      v21 = dispatch_time(0, 1000000000 * v19);
      dispatch_semaphore_wait(waitForFPSemaphore, v21);
      [MEMORY[0x277CC6420] endMonitoringProviderDomainChanges:v17];
    }

    [(BRCFileProviderDaemonUtils *)v11 _waitIsOver];
  }

  v6 = v11;
  objc_sync_enter(v6);
  fpReady = v6->_fpReady;
  if (fpReady)
  {
LABEL_26:
    objc_sync_exit(v6);
    goto LABEL_27;
  }

  fpReadyError = v6->_fpReadyError;
  if (fpReadyError)
  {
    v23 = fpReadyError;
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, 0x90u))
    {
      v39 = "(passed to caller)";
      *buf = 136315906;
      v45 = "[BRCFileProviderDaemonUtils waitForFPToBeReadyToAcceptXPCWithError:]";
      v46 = 2080;
      if (!a3)
      {
        v39 = "(ignored by caller)";
      }

      v47 = v39;
      v48 = 2112;
      v49 = v23;
      v50 = 2112;
      v51 = v24;
      _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }

    if (a3)
    {
      v26 = v23;
      *a3 = v23;
    }

    goto LABEL_26;
  }

  objc_sync_exit(v6);

  dispatch_sync(v6->_fileProviderReadyQueue, &__block_literal_global_76);
  v29 = v6;
  objc_sync_enter(v29);
  if (v6->_fpReady)
  {
    fpReady = 1;
  }

  else
  {
    v30 = v6->_fpReadyError;
    if (v30)
    {
      v31 = v30;
      v32 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, 0x90u))
      {
        v41 = "(passed to caller)";
        *buf = 136315906;
        v45 = "[BRCFileProviderDaemonUtils waitForFPToBeReadyToAcceptXPCWithError:]";
        v46 = 2080;
        if (!a3)
        {
          v41 = "(ignored by caller)";
        }

        v47 = v41;
        v48 = 2112;
        v49 = v31;
        v50 = 2112;
        v51 = v32;
        _os_log_error_impl(&dword_223E7A000, v33, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }

      fpReady = 0;
    }

    else
    {
      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        [(BRCFileProviderDaemonUtils *)v34 waitForFPToBeReadyToAcceptXPCWithError:v35];
      }

      v31 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: FP is not ready but we don't have an error"];
      fpReady = v31 == 0;
      if (v31)
      {
        v36 = brc_bread_crumbs();
        v37 = brc_default_log();
        if (os_log_type_enabled(v37, 0x90u))
        {
          v42 = "(passed to caller)";
          *buf = 136315906;
          v45 = "[BRCFileProviderDaemonUtils waitForFPToBeReadyToAcceptXPCWithError:]";
          v46 = 2080;
          if (!a3)
          {
            v42 = "(ignored by caller)";
          }

          v47 = v42;
          v48 = 2112;
          v49 = v31;
          v50 = 2112;
          v51 = v36;
          _os_log_error_impl(&dword_223E7A000, v37, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }
    }

    if (a3)
    {
      v38 = v31;
      *a3 = v31;
    }
  }

  objc_sync_exit(v29);
  v6 = v29;
LABEL_27:

  v27 = *MEMORY[0x277D85DE8];
  return fpReady;
}

uint64_t __69__BRCFileProviderDaemonUtils_waitForFPToBeReadyToAcceptXPCWithError___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v3 = result;
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] Got com.apple.fileprovider.providers-changed notification. FP is ready to accept XPC calls%@", &v7, 0xCu);
    }

    result = [*(v3 + 32) _signalFPReady];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __47__BRCFileProviderDaemonUtils_boostFileProvider__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = v5;
  if (!v5)
  {
    [*(a1 + 32) _signalFPReady];
    v4 = 0;
  }
}

@end