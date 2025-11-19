@interface BRCPipelineStageHandlerBase
- (BRCPipelineStageHandlerBase)init;
- (id)_asJobCostVendor;
- (id)_groupIdentifierForJob:(id)a3;
- (id)description;
- (void)_cancelActiveBatchIfNecessary;
- (void)_completedJob:(id)a3 withRecoveryStage:(unint64_t)a4 error:(id)a5;
- (void)_initializeSourceAndQueues;
- (void)_pauseScheduling;
- (void)_resumeScheduling;
- (void)addJob:(id)a3;
- (void)cancelJob:(id)a3;
- (void)dealloc;
- (void)disableScheduling;
- (void)dumpToContext:(id)a3;
- (void)enableScheduling;
- (void)schedule;
- (void)setupWithInternalPipelineJobCompletionHandler:(id)a3;
@end

@implementation BRCPipelineStageHandlerBase

- (BRCPipelineStageHandlerBase)init
{
  v10.receiver = self;
  v10.super_class = BRCPipelineStageHandlerBase;
  v2 = [(BRCPipelineStageHandlerBase *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(BRCPipelineJobQueue);
    enqueuedJobs = v2->_enqueuedJobs;
    v2->_enqueuedJobs = v3;

    v5 = objc_opt_new();
    activelyExecutingJobs = v2->_activelyExecutingJobs;
    v2->_activelyExecutingJobs = v5;

    v7 = objc_opt_new();
    cancelledActivelyExecutingJobs = v2->_cancelledActivelyExecutingJobs;
    v2->_cancelledActivelyExecutingJobs = v7;

    *&v2->_suspended = 1;
  }

  return v2;
}

- (void)dealloc
{
  dispatch_source_cancel(self->_schedulingSource);
  self->_schedulingEnabled = 1;
  [(BRCPipelineStageHandlerBase *)self _resumeScheduling];
  v3.receiver = self;
  v3.super_class = BRCPipelineStageHandlerBase;
  [(BRCPipelineStageHandlerBase *)&v3 dealloc];
}

- (id)_asJobCostVendor
{
  if ([(BRCPipelineStageHandlerBase *)self conformsToProtocol:&unk_28380EB78])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_cancelActiveBatchIfNecessary
{
  dispatch_assert_queue_V2(self->_schedulingQueue);
  if ([(NSMutableSet *)self->_cancelledActivelyExecutingJobs isEqualToSet:self->_activelyExecutingJobs])
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [BRCPipelineStageHandlerBase _cancelActiveBatchIfNecessary];
    }

    v5 = self;
    objc_sync_enter(v5);
    [(NSProgress *)v5->_activelyExecutingProgress cancel];
    objc_sync_exit(v5);
  }

  else
  {
    if (![(NSMutableSet *)self->_cancelledActivelyExecutingJobs count])
    {
      return;
    }

    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCPipelineStageHandlerBase _cancelActiveBatchIfNecessary];
    }
  }
}

- (void)_completedJob:(id)a3 withRecoveryStage:(unint64_t)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  dispatch_assert_queue_V2(self->_schedulingQueue);
  if (!v8)
  {
    if ([(NSMutableSet *)self->_cancelledActivelyExecutingJobs containsObject:v7])
    {
      v8 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    }

    else
    {
      v8 = 0;
    }
  }

  [(NSMutableSet *)self->_activelyExecutingJobs removeObject:v7];
  [(NSMutableSet *)self->_cancelledActivelyExecutingJobs removeObject:v7];
  if ([(NSMutableSet *)self->_activelyExecutingJobs count])
  {
    [(BRCPipelineStageHandlerBase *)self _cancelActiveBatchIfNecessary];
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [BRCPipelineStageHandlerBase _completedJob:withRecoveryStage:error:];
    }

    v11 = self;
    objc_sync_enter(v11);
    activelyExecutingProgress = v11->_activelyExecutingProgress;
    v11->_activelyExecutingProgress = 0;

    objc_sync_exit(v11);
    [(BRCPipelineStageHandlerBase *)v11 _resumeScheduling];
    dispatch_source_merge_data(v11->_schedulingSource, 1uLL);
  }
}

- (void)schedule
{
  dispatch_assert_queue_V2(self->_schedulingQueue);
  if ([(NSMutableSet *)self->_activelyExecutingJobs count])
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [BRCPipelineStageHandlerBase schedule];
    }
  }

  else
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0;
    v5 = [(BRCPipelineStageHandlerBase *)self _asJobCostVendor];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v6 = [v5 softCostLimit];
    }

    else
    {
      v6 = -1;
    }

    enqueuedJobs = self->_enqueuedJobs;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __39__BRCPipelineStageHandlerBase_schedule__block_invoke;
    v14[3] = &unk_278507980;
    v14[4] = self;
    v16 = v18;
    v17 = v6;
    v8 = v5;
    v15 = v8;
    [(BRCPipelineJobQueue *)enqueuedJobs dequeueHighestQualityOfServiceJobsWithHandler:v14];
    if ([(NSMutableSet *)self->_activelyExecutingJobs count])
    {
      [(BRCPipelineStageHandlerBase *)self _pauseScheduling];
      v9 = [(NSMutableSet *)self->_activelyExecutingJobs allObjects];
      handlerQueue = self->_handlerQueue;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __39__BRCPipelineStageHandlerBase_schedule__block_invoke_2;
      v12[3] = &unk_2784FF478;
      v12[4] = self;
      v13 = v9;
      v11 = v9;
      dispatch_async(handlerQueue, v12);
    }

    _Block_object_dispose(v18, 8);
  }
}

BOOL __39__BRCPipelineStageHandlerBase_schedule__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 16) addObject:v3];
  v4 = [*(*(a1 + 32) + 16) count];
  v5 = 0;
  if (v4 != [*(a1 + 32) maxJobsPerBatch])
  {
    if (*(a1 + 56) == -1 || (*(*(*(a1 + 48) + 8) + 24) += [*(a1 + 40) costForJob:v3], *(*(*(a1 + 48) + 8) + 24) < *(a1 + 56)))
    {
      v5 = 1;
    }
  }

  return v5;
}

void __39__BRCPipelineStageHandlerBase_schedule__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) handleJobsBatch:*(a1 + 40)];
  if (([v2 isCancellable] & 1) == 0)
  {
    __39__BRCPipelineStageHandlerBase_schedule__block_invoke_2_cold_1();
  }

  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v2;
  v6 = v2;

  objc_sync_exit(v3);
}

- (void)_pauseScheduling
{
  if (!self->_suspended)
  {
    dispatch_suspend(self->_schedulingSource);
    self->_suspended = 1;
  }
}

- (void)_resumeScheduling
{
  if (self->_suspended && self->_schedulingEnabled)
  {
    dispatch_resume(self->_schedulingSource);
    self->_suspended = 0;
  }
}

- (id)_groupIdentifierForJob:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(BRCPipelineStageHandlerBase *)self groupByIdentifierForJob:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addJob:(id)a3
{
  v4 = a3;
  schedulingQueue = self->_schedulingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__BRCPipelineStageHandlerBase_InternalPipeline__addJob___block_invoke;
  v7[3] = &unk_2784FF478;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(schedulingQueue, v7);
}

void __56__BRCPipelineStageHandlerBase_InternalPipeline__addJob___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __56__BRCPipelineStageHandlerBase_InternalPipeline__addJob___block_invoke_cold_1(a1);
  }

  v4 = [*(a1 + 32) activeStageID];
  if (v4 != [*(a1 + 40) stageID])
  {
    __56__BRCPipelineStageHandlerBase_InternalPipeline__addJob___block_invoke_cold_2();
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v5[1];
  v8 = [v5 _groupIdentifierForJob:v6];
  [v7 addJob:v6 withGroupIdentifier:v8];

  dispatch_source_merge_data(*(*(a1 + 40) + 40), 1uLL);
}

- (void)cancelJob:(id)a3
{
  v4 = a3;
  schedulingQueue = self->_schedulingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__BRCPipelineStageHandlerBase_InternalPipeline__cancelJob___block_invoke;
  v7[3] = &unk_2784FF478;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(schedulingQueue, v7);
}

void __59__BRCPipelineStageHandlerBase_InternalPipeline__cancelJob___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) activeStageID];
  if (v3 != [*(v2 + 8) stageID])
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v18 = 138412802;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v6;
      _os_log_fault_impl(&dword_223E7A000, v7, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't cancel job %@ which isn't a part of the current stage %@%@", &v18, 0x20u);
    }

    goto LABEL_11;
  }

  if (![*(*(a1 + 40) + 16) containsObject:*(a1 + 32)])
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __59__BRCPipelineStageHandlerBase_InternalPipeline__cancelJob___block_invoke_cold_1(v2);
    }

    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v12[1];
    v15 = [v12 _groupIdentifierForJob:v13];
    [v14 removeJob:v13 withGroupIdentifier:v15];

    v6 = [*(a1 + 40) perJobCompletionHandler];
    v16 = *(a1 + 32);
    v7 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    (v6)[2](v6, v16, 0x7FFFFFFFFFFFFFFFLL, v7);
LABEL_11:

    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  [*(*(a1 + 40) + 24) addObject:*(a1 + 32)];
  v4 = *(a1 + 40);
  v5 = *MEMORY[0x277D85DE8];

  [v4 _cancelActiveBatchIfNecessary];
}

- (void)disableScheduling
{
  schedulingQueue = self->_schedulingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__BRCPipelineStageHandlerBase_InternalPipeline__disableScheduling__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(schedulingQueue, block);
}

- (void)enableScheduling
{
  schedulingQueue = self->_schedulingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BRCPipelineStageHandlerBase_InternalPipeline__enableScheduling__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(schedulingQueue, block);
}

uint64_t __65__BRCPipelineStageHandlerBase_InternalPipeline__enableScheduling__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 65) = 1;
  result = [*(*(a1 + 32) + 16) count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _resumeScheduling];
  }

  return result;
}

- (id)description
{
  v3 = @" ⏸️";
  if (!self->_suspended && self->_schedulingEnabled)
  {
    v3 = &stru_2837504F0;
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = v3;
  v6 = objc_opt_class();
  v7 = [(BRCPipelineStageHandlerBase *)self name];
  v8 = [v4 stringWithFormat:@"<%@:%p%@ [%@]>", v6, self, v5, v7];

  return v8;
}

- (void)dumpToContext:(id)a3
{
  v4 = a3;
  schedulingQueue = self->_schedulingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__BRCPipelineStageHandlerBase_InternalPipeline__dumpToContext___block_invoke;
  v7[3] = &unk_2784FF478;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(schedulingQueue, v7);
}

uint64_t __63__BRCPipelineStageHandlerBase_InternalPipeline__dumpToContext___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) description];
  [v2 writeLineWithFormat:@"%@", v3];

  [*(a1 + 32) writeLineWithFormat:@"active:"];
  [*(a1 + 32) pushIndentation];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(*(a1 + 40) + 16);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) dumpToContext:*(a1 + 32)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) popIndentation];
  [*(a1 + 32) writeLineWithFormat:@"scheduled:"];
  [*(a1 + 32) pushIndentation];
  [*(*(a1 + 40) + 8) dumpToContext:*(a1 + 32)];
  result = [*(a1 + 32) popIndentation];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_initializeSourceAndQueues
{
  v3 = [(BRCPipelineStageHandlerBase *)self name];
  v4 = [v3 stringByAppendingString:@".handler-queue"];
  v5 = [v4 UTF8String];
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(v5, v7);

  handlerQueue = self->_handlerQueue;
  self->_handlerQueue = v8;

  v10 = [v3 stringByAppendingString:@".scheduler-queue"];
  v11 = [v10 UTF8String];
  v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(v12, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create(v11, v13);

  schedulingQueue = self->_schedulingQueue;
  self->_schedulingQueue = v14;

  v16 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, self->_schedulingQueue);
  schedulingSource = self->_schedulingSource;
  self->_schedulingSource = v16;

  objc_initWeak(&location, self);
  v18 = self->_schedulingSource;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __75__BRCPipelineStageHandlerBase_InternalPipeline___initializeSourceAndQueues__block_invoke;
  v26[3] = &unk_2784FF400;
  objc_copyWeak(&v27, &location);
  v19 = v18;
  v20 = v26;
  v21 = v19;
  v22 = v20;
  v23 = v22;
  v24 = v22;
  if (*MEMORY[0x277CFB010])
  {
    v24 = (*MEMORY[0x277CFB010])(v22);
  }

  v25 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v24);
  dispatch_source_set_event_handler(v21, v25);

  *&self->_suspended = 256;
  dispatch_resume(self->_schedulingSource);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __75__BRCPipelineStageHandlerBase_InternalPipeline___initializeSourceAndQueues__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained schedule];
}

- (void)setupWithInternalPipelineJobCompletionHandler:(id)a3
{
  v4 = a3;
  [(BRCPipelineStageHandlerBase *)self _initializeSourceAndQueues];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95__BRCPipelineStageHandlerBase_InternalPipeline__setupWithInternalPipelineJobCompletionHandler___block_invoke;
  v6[3] = &unk_2785079A8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(BRCPipelineStageHandlerBase *)self setPerJobCompletionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __95__BRCPipelineStageHandlerBase_InternalPipeline__setupWithInternalPipelineJobCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained[6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__BRCPipelineStageHandlerBase_InternalPipeline__setupWithInternalPipelineJobCompletionHandler___block_invoke_2;
    block[3] = &unk_2785018F0;
    block[4] = WeakRetained;
    v13 = v7;
    v16 = a3;
    v14 = v8;
    v15 = *(a1 + 32);
    dispatch_async(v11, block);
  }
}

uint64_t __95__BRCPipelineStageHandlerBase_InternalPipeline__setupWithInternalPipelineJobCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _completedJob:*(a1 + 40) withRecoveryStage:*(a1 + 64) error:*(a1 + 48)];
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 56) + 16);

  return v5();
}

@end