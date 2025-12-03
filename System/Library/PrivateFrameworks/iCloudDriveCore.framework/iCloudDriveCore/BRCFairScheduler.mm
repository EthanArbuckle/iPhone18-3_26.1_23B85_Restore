@interface BRCFairScheduler
- (BRCFairScheduler)initWithWorkloop:(id)workloop name:(id)name;
- (id)sourceForBitIndex:(unint64_t)index;
- (void)addSource:(id)source;
- (void)cancel;
- (void)close;
- (void)dealloc;
- (void)schedule;
- (void)unregisterSources;
@end

@implementation BRCFairScheduler

- (void)schedule
{
  dispatch_assert_queue_V2(self->_workloop);
  source = self->_source;
  data = dispatch_source_get_data(source);
  if (data)
  {
    v5 = data;
    dispatch_suspend(source);
    v6 = self->_lastVisitedBit + 1;
    for (i = 1 << v6; (v5 & (1 << v6)) == 0; i = 1 << v6)
    {
      v6 = (v6 + 1) % self->_maxRegistedSourceBit;
    }

    self->_lastVisitedBit = v6;
    v8 = [(BRCFairScheduler *)self sourceForBitIndex:?];
    v9 = v5 & ~i;
    workloop = [v8 workloop];
    workloop = self->_workloop;

    if (workloop == workloop)
    {
      [v8 _runEventHandler];
      dispatch_resume(self->_source);
      if (v9)
      {
        dispatch_source_merge_data(self->_source, v9);
      }
    }

    else
    {
      workloop2 = [v8 workloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __28__BRCFairScheduler_schedule__block_invoke;
      block[3] = &unk_2785010A0;
      v14 = v8;
      selfCopy = self;
      v16 = v9;
      dispatch_async(workloop2, block);
    }
  }
}

- (BRCFairScheduler)initWithWorkloop:(id)workloop name:(id)name
{
  workloopCopy = workloop;
  nameCopy = name;
  v27.receiver = self;
  v27.super_class = BRCFairScheduler;
  v9 = [(BRCFairScheduler *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workloop, workloop);
    objc_storeStrong(&v10->_name, name);
    v11 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v10->_workloop);
    source = v10->_source;
    v10->_source = v11;

    v13 = objc_opt_new();
    sourceForBitIndex = v10->_sourceForBitIndex;
    v10->_sourceForBitIndex = v13;

    objc_initWeak(&location, v10);
    v15 = v10->_source;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__BRCFairScheduler_initWithWorkloop_name___block_invoke;
    v24[3] = &unk_2784FF400;
    objc_copyWeak(&v25, &location);
    v16 = v15;
    v17 = v24;
    v18 = v16;
    v19 = v17;
    v20 = v19;
    v21 = v19;
    if (*MEMORY[0x277CFB010])
    {
      v21 = (*MEMORY[0x277CFB010])(v19);
    }

    v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v21);
    dispatch_source_set_event_handler(v18, v22);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __42__BRCFairScheduler_initWithWorkloop_name___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained schedule];
}

- (void)addSource:(id)source
{
  v15 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sourceForBitIndex = selfCopy->_sourceForBitIndex;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:selfCopy->_maxRegistedSourceBit];
  [(NSMutableDictionary *)sourceForBitIndex setObject:sourceCopy forKeyedSubscript:v6];

  maxRegistedSourceBit = selfCopy->_maxRegistedSourceBit;
  sourceCopy[1] = maxRegistedSourceBit++;
  selfCopy->_maxRegistedSourceBit = maxRegistedSourceBit;
  if (maxRegistedSourceBit >= 0x41)
  {
    abc_report_panic_with_signature();
    [MEMORY[0x277CCACA8] stringWithFormat:@"too many registered source"];
    objc_claimAutoreleasedReturnValue();
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = brc_append_system_info_to_message();
      __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_cold_3(v11, v9, buf, v10);
    }

    brc_append_system_info_to_message();
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("[BRCFairScheduler addSource:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/foundation/BRCFairScheduler.m", 61, uTF8String);
  }

  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unregisterSources
{
  obj = self;
  objc_sync_enter(obj);
  obj->_maxRegistedSourceBit = 0;
  sourceForBitIndex = obj->_sourceForBitIndex;
  obj->_sourceForBitIndex = 0;

  objc_sync_exit(obj);
}

- (id)sourceForBitIndex:(unint64_t)index
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sourceForBitIndex = selfCopy->_sourceForBitIndex;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:index];
  v7 = [(NSMutableDictionary *)sourceForBitIndex objectForKeyedSubscript:v6];

  objc_sync_exit(selfCopy);

  return v7;
}

void __28__BRCFairScheduler_schedule__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _runEventHandler];
  dispatch_resume(*(*(a1 + 40) + 8));
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(*(a1 + 40) + 8);

    dispatch_source_merge_data(v3, v2);
  }
}

- (void)cancel
{
  dispatch_source_cancel(self->_source);
  dispatch_activate(self->_source);

  [(BRCFairScheduler *)self unregisterSources];
}

- (void)close
{
  workloop = self->_workloop;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__BRCFairScheduler_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async_and_wait(workloop, block);
}

- (void)dealloc
{
  if (!self->_resumed)
  {
    dispatch_activate(self->_source);
  }

  v3.receiver = self;
  v3.super_class = BRCFairScheduler;
  [(BRCFairScheduler *)&v3 dealloc];
}

@end