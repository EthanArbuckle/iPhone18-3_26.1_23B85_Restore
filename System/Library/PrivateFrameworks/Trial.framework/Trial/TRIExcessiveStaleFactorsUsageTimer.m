@interface TRIExcessiveStaleFactorsUsageTimer
- (TRIExcessiveStaleFactorsUsageTimer)initWithNamespaceName:(id)a3 delayTimeInSeconds:(double)a4 block:(id)a5;
@end

@implementation TRIExcessiveStaleFactorsUsageTimer

- (TRIExcessiveStaleFactorsUsageTimer)initWithNamespaceName:(id)a3 delayTimeInSeconds:(double)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v26.receiver = self;
  v26.super_class = TRIExcessiveStaleFactorsUsageTimer;
  v10 = [(TRIExcessiveStaleFactorsUsageTimer *)&v26 init];
  if (v10)
  {
    v11 = objc_opt_new();
    v12 = dispatch_get_global_queue(9, 0);
    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v12);

    dispatch_source_set_timer(v13, [MEMORY[0x277D425A0] dispatchTimeWithSecondsFromNow:a4], 0xFFFFFFFFFFFFFFFFLL, 1000000000 * rint(a4 / 1440.0));
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __85__TRIExcessiveStaleFactorsUsageTimer_initWithNamespaceName_delayTimeInSeconds_block___block_invoke;
    v23 = &unk_27885E308;
    v25 = v9;
    v24 = v8;
    dispatch_source_set_event_handler(v13, &v20);
    v14 = v11[1];
    v11[1] = v13;
    v15 = v13;

    dispatch_resume(v15);
    v16 = objc_alloc(MEMORY[0x277D425F8]);
    v17 = [v16 initWithGuardedData:{v11, v20, v21, v22, v23}];

    lock = v10->_lock;
    v10->_lock = v17;
  }

  return v10;
}

uint64_t __85__TRIExcessiveStaleFactorsUsageTimer_initWithNamespaceName_delayTimeInSeconds_block___block_invoke(uint64_t a1)
{
  v2 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22EA6B000, v2, OS_LOG_TYPE_DEFAULT, "Stale factor timer fired", v5, 2u);
  }

  v3 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void __48__TRIExcessiveStaleFactorsUsageTimer_invalidate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v4 = a2;
    dispatch_source_cancel(v2);
    v5 = a2[1];
    a2[1] = 0;
  }
}

@end