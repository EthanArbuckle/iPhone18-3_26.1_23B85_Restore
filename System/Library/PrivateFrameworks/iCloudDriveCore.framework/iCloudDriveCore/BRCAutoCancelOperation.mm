@interface BRCAutoCancelOperation
- (BRCAutoCancelOperation)initWithName:(id)name syncContext:(id)context sessionContext:(id)sessionContext group:(id)group;
- (id)createActivity;
- (void)_initializeCancelTimer;
- (void)beginObservingChanges;
- (void)dealloc;
@end

@implementation BRCAutoCancelOperation

- (void)dealloc
{
  for (i = self->_observersGroup; dispatch_group_wait(i, 0); i = self->_observersGroup)
  {
    dispatch_group_leave(self->_observersGroup);
  }

  v4.receiver = self;
  v4.super_class = BRCAutoCancelOperation;
  [(_BRCOperation *)&v4 dealloc];
}

void __48__BRCAutoCancelOperation__initializeCancelTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 32));
    v4 = [BRCUserDefaults defaultsForMangledID:0];
    v5 = dispatch_time(0, [v4 listDirChangesCancelDelay]);

    dispatch_source_set_timer(v3, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__BRCAutoCancelOperation__initializeCancelTimer__block_invoke_2;
    v17[3] = &unk_2784FF400;
    objc_copyWeak(&v18, (a1 + 40));
    v6 = v3;
    v7 = v17;
    v8 = v6;
    v9 = v7;
    v10 = v9;
    v11 = v9;
    if (*MEMORY[0x277CFB010])
    {
      v11 = (*MEMORY[0x277CFB010])(v9);
    }

    v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v11);
    dispatch_source_set_event_handler(v8, v12);

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__BRCAutoCancelOperation__initializeCancelTimer__block_invoke_2;
    v15[3] = &unk_2784FF400;
    objc_copyWeak(&v16, (a1 + 40));
    dispatch_source_set_cancel_handler(v8, v15);
    v13 = WeakRetained[64];
    WeakRetained[64] = v8;
    v14 = v8;

    dispatch_resume(v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
  }
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "BRCAutoCancelOperation/? (subclass activity missing)", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_initializeCancelTimer
{
  callbackQueue = [(_BRCOperation *)self callbackQueue];
  objc_initWeak(&location, self);
  observersGroup = self->_observersGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__BRCAutoCancelOperation__initializeCancelTimer__block_invoke;
  block[3] = &unk_2784FFDF8;
  objc_copyWeak(&v8, &location);
  v7 = callbackQueue;
  v5 = callbackQueue;
  dispatch_group_notify(observersGroup, v5, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)beginObservingChanges
{
  dispatch_group_enter(self->_observersGroup);
  cancelTimer = self->_cancelTimer;
  if (cancelTimer)
  {

    dispatch_source_cancel(cancelTimer);
  }
}

- (BRCAutoCancelOperation)initWithName:(id)name syncContext:(id)context sessionContext:(id)sessionContext group:(id)group
{
  v10.receiver = self;
  v10.super_class = BRCAutoCancelOperation;
  v6 = [(_BRCOperation *)&v10 initWithName:name syncContext:context sessionContext:sessionContext group:group];
  if (v6)
  {
    v7 = dispatch_group_create();
    observersGroup = v6->_observersGroup;
    v6->_observersGroup = v7;
  }

  return v6;
}

void __48__BRCAutoCancelOperation__initializeCancelTimer__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[64];
    WeakRetained[64] = 0;

    if (([(dispatch_group_t *)v2 isFinished]& 1) == 0 && ([(dispatch_group_t *)v2 isCancelled]& 1) == 0)
    {
      if (dispatch_group_wait(v2[63], 0))
      {
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          __48__BRCAutoCancelOperation__initializeCancelTimer__block_invoke_2_cold_1();
        }

        [(dispatch_group_t *)v2 _initializeCancelTimer];
      }

      else
      {
        v6 = brc_bread_crumbs();
        v7 = brc_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          __48__BRCAutoCancelOperation__initializeCancelTimer__block_invoke_2_cold_2();
        }

        [(dispatch_group_t *)v2 cancel];
      }
    }
  }
}

void __48__BRCAutoCancelOperation__initializeCancelTimer__block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] We have observers again for %@ so not cancelling yet%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __48__BRCAutoCancelOperation__initializeCancelTimer__block_invoke_2_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] No one is waiting on %@ anymore so cancelling%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end