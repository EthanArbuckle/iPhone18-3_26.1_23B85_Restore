@interface BRCAccountWaitOperation
- (BRCAccountWaitOperation)initWithCKContainer:(id)container;
- (id)createActivity;
- (id)descriptionForCKAccountStatus:(int64_t)status dumpContext:(id)context;
- (id)subclassableDescriptionWithContext:(id)context;
- (void)_accountChangeHandler;
- (void)cancel;
- (void)dealloc;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
- (void)resumeIfNecessary;
- (void)start;
@end

@implementation BRCAccountWaitOperation

- (BRCAccountWaitOperation)initWithCKContainer:(id)container
{
  containerCopy = container;
  v46.receiver = self;
  v46.super_class = BRCAccountWaitOperation;
  v6 = [(_BRCOperation *)&v46 initWithName:@"account-waiter"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ckContainer, container);
    v8 = [BRCUserDefaults defaultsForMangledID:0];
    v9 = [BRCConstantThrottle alloc];
    [v8 accountWaiterErrorRetryBackoff];
    v10 = [(BRCConstantThrottle *)v9 initWithName:@"AccountWaiterThrottle" andRetryBackoff:?];
    throttle = v7->_throttle;
    v7->_throttle = v10;

    [(_BRCOperation *)v7 setOperationFailureThrottle:v7->_throttle];
    callbackQueue = [(_BRCOperation *)v7 callbackQueue];
    v13 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, callbackQueue);
    source = v7->_source;
    v7->_source = v13;

    objc_initWeak(&location, v7);
    v15 = v7->_source;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __47__BRCAccountWaitOperation_initWithCKContainer___block_invoke;
    v43[3] = &unk_2784FF400;
    objc_copyWeak(&v44, &location);
    v16 = v15;
    v17 = v43;
    v18 = v16;
    v19 = v17;
    v20 = v19;
    v21 = MEMORY[0x277CFB010];
    v22 = v19;
    if (*MEMORY[0x277CFB010])
    {
      v22 = (*MEMORY[0x277CFB010])(v19);
    }

    v23 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v22);
    dispatch_source_set_event_handler(v18, v23);

    v24 = v7->_source;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __47__BRCAccountWaitOperation_initWithCKContainer___block_invoke_2;
    v41[3] = &unk_2784FF450;
    v25 = v7;
    v42 = v25;
    v26 = v24;
    v27 = v41;
    v28 = v27;
    if (*v21)
    {
      v29 = (*v21)(v27);

      v28 = v29;
    }

    dispatch_source_set_cancel_handler(v26, v28);

    v30 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v31 = dispatch_queue_attr_make_with_autorelease_frequency(v30, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_create("com.apple.bird.account-waiter-refresh-queue", v31);

    refetchPacerQueue = v25->_refetchPacerQueue;
    v25->_refetchPacerQueue = v32;

    [v8 accountWaiterRefreshPacerDelay];
    v34 = v25->_refetchPacerQueue;
    v35 = br_pacer_create();
    refetchPacer = v25->_refetchPacer;
    v25->_refetchPacer = v35;

    v37 = v25->_refetchPacer;
    objc_copyWeak(&v40, &location);
    br_pacer_set_event_handler();
    v38 = v25->_refetchPacer;
    br_pacer_resume();
    objc_destroyWeak(&v40);

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __47__BRCAccountWaitOperation_initWithCKContainer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accountChangeHandler];
}

uint64_t __47__BRCAccountWaitOperation_initWithCKContainer___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  *(*(a1 + 32) + 537) = 1;
  objc_sync_exit(v2);

  v3 = *(a1 + 32);

  return [v3 finishIfCancelled];
}

void __47__BRCAccountWaitOperation_initWithCKContainer___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __47__BRCAccountWaitOperation_initWithCKContainer___block_invoke_3_cold_1();
    }

    [WeakRetained _accountDidChange];
  }
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "account-waiter", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (id)descriptionForCKAccountStatus:(int64_t)status dumpContext:(id)context
{
  contextCopy = context;
  if (status <= 1)
  {
    if (!status)
    {
      v6 = @"unavailable";
      goto LABEL_13;
    }

    if (status == 1)
    {
      v7 = [BRCDumpContext highlightedString:@"available" type:7 context:contextCopy];
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (status == 2)
  {
    v6 = @"restricted";
    goto LABEL_13;
  }

  if (status == 3)
  {
    v6 = @"no account";
    goto LABEL_13;
  }

  if (status != 4)
  {
LABEL_12:
    v6 = @"unhandled account status";
    goto LABEL_13;
  }

  v6 = @"temporarily unavailable";
LABEL_13:
  v7 = [BRCDumpContext stringFromErrorString:v6 context:contextCopy];
LABEL_14:
  v8 = v7;

  return v8;
}

- (id)subclassableDescriptionWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(BRCAccountWaitOperation *)selfCopy descriptionForCKAccountStatus:selfCopy->_lastAccountStatus dumpContext:contextCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = BRCAccountWaitOperation;
  [(_BRCOperation *)&v3 cancel];
  dispatch_source_cancel(self->_source);
  [(BRCAccountWaitOperation *)self resumeIfNecessary];
}

- (void)resumeIfNecessary
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_resumed)
  {
    dispatch_resume(obj->_source);
    obj->_resumed = 1;
  }

  objc_sync_exit(obj);
}

- (void)dealloc
{
  [(BRCAccountWaitOperation *)self resumeIfNecessary];
  v3.receiver = self;
  v3.super_class = BRCAccountWaitOperation;
  [(_BRCOperation *)&v3 dealloc];
}

- (void)_accountChangeHandler
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *self;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] ┣%llx waiting for account status%@");
  v4 = *MEMORY[0x277D85DE8];
}

void __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v23 = *(a1 + 40);
  v24 = *(a1 + 56);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *block = 134218498;
    *&block[4] = v23;
    *&block[12] = 2048;
    *&block[14] = a2;
    *&block[22] = 2112;
    v28 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx got status %ld%@", block, 0x20u);
  }

  v8 = [*(a1 + 32) callbackQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31;
  v20[3] = &unk_2785010A0;
  v20[4] = *(a1 + 32);
  v22 = a2;
  v9 = v5;
  v21 = v9;
  v10 = v8;
  v11 = v20;
  v12 = objc_autoreleasePoolPush();
  v25 = 0uLL;
  v26 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v25);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v18 = v25;
    label = dispatch_queue_get_label(v10);
    *block = 134218498;
    *&block[4] = v18;
    *&block[12] = 2080;
    *&block[14] = label;
    *&block[22] = 2112;
    v28 = v13;
    _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", block, 0x20u);
  }

  v31 = v25;
  v32 = v26;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __dispatch_async_with_logs_block_invoke_3;
  v28 = &unk_2784FF568;
  v15 = v10;
  v29 = v15;
  v16 = v11;
  v30 = v16;
  dispatch_async(v15, block);

  objc_autoreleasePoolPop(v12);
  __brc_leave_section(&v23);

  v17 = *MEMORY[0x277D85DE8];
}

void __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  *(*(a1 + 32) + 528) = *(a1 + 48);
  [*(a1 + 32) resumeIfNecessary];
  v3 = *(*(a1 + 32) + 537);
  objc_sync_exit(v2);

  if (v3)
  {
    return;
  }

  v4 = *(a1 + 48);
  if (v4 > 1)
  {
    switch(v4)
    {
      case 2:
        v5 = brc_bread_crumbs();
        v6 = brc_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31_cold_2();
        }

        goto LABEL_20;
      case 3:
        v5 = brc_bread_crumbs();
        v6 = brc_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31_cold_3();
        }

        goto LABEL_20;
      case 4:
        v5 = brc_bread_crumbs();
        v6 = brc_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31_cold_1();
        }

LABEL_20:

        v13 = *(*(a1 + 32) + 552);
        br_pacer_signal_at_most_after_min_interval();
        return;
    }

    goto LABEL_10;
  }

  if (v4)
  {
    if (v4 == 1)
    {
LABEL_13:
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31_cold_6();
      }

      dispatch_source_cancel(*(*(a1 + 32) + 504));
      v11 = *(a1 + 32);
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
      [v11 completedWithResult:v12 error:0];

      return;
    }

LABEL_10:
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31_cold_5();
    }

    goto LABEL_13;
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, 0x90u))
  {
    __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31_cold_4(a1);
  }

  dispatch_suspend(*(*(a1 + 32) + 504));
  v16 = *(a1 + 32);
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  [v16 completedWithResult:v17 error:*(a1 + 40)];
}

- (void)start
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accountDidChange name:*MEMORY[0x277CBBF00] object:0];

  v4.receiver = self;
  v4.super_class = BRCAccountWaitOperation;
  [(_BRCOperation *)&v4 start];
}

- (void)main
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_resumed = 1;
  objc_sync_exit(selfCopy);

  dispatch_source_merge_data(selfCopy->_source, 1uLL);
  source = selfCopy->_source;

  dispatch_resume(source);
}

- (void)finishWithResult:(id)result error:(id)error
{
  refetchPacer = self->_refetchPacer;
  errorCopy = error;
  resultCopy = result;
  br_pacer_cancel();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBBF00] object:0];

  v10.receiver = self;
  v10.super_class = BRCAccountWaitOperation;
  [(_BRCOperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

void __47__BRCAccountWaitOperation_initWithCKContainer___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Simulating an account did change to refresh the CK account status%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Account is temporarily unavailable, let's wait for a notification from CloudKit%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Account is restricted let's wait for a notification from CloudKit%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] No account loaded yet, let's wait for the account notification from CloudKit%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31_cold_4(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_223E7A000, v2, 0x90u, "[ERROR] Error when asking CloudKit about the account status: %@%@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31_cold_5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unknown account status%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __48__BRCAccountWaitOperation__accountChangeHandler__block_invoke_31_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Account is now available%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end