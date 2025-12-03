@interface BRCPipeline
- (BOOL)_buildJobPlanForJob:(id)job error:(id *)error;
- (BRCPipeline)initWithName:(id)name stageHandlers:(id)handlers;
- (id)_generateProgressForJob:(id)job;
- (id)addJob:(id)job moreComing:(BOOL)coming;
- (void)_armResumeTimer;
- (void)_completedJob:(id)job forStage:(unint64_t)stage recoveryStage:(unint64_t)recoveryStage error:(id)error;
- (void)_computeStageStringifier;
- (void)_pauseStageHandlerScheduling;
- (void)_resumeStageHandlerScheduling;
- (void)_sendJob:(id)job toStageHandlerWithStageID:(unint64_t)d;
- (void)_setStageJobCompletionHandlers;
- (void)_validateStageHandlers;
- (void)dumpToContext:(id)context;
@end

@implementation BRCPipeline

- (BRCPipeline)initWithName:(id)name stageHandlers:(id)handlers
{
  nameCopy = name;
  handlersCopy = handlers;
  v22.receiver = self;
  v22.super_class = BRCPipeline;
  v9 = [(BRCPipeline *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    v11 = [nameCopy stringByAppendingString:@".queue"];
    uTF8String = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(v13, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(uTF8String, v14);

    queue = v10->_queue;
    v10->_queue = v15;

    v17 = objc_opt_new();
    cancelledJobs = v10->_cancelledJobs;
    v10->_cancelledJobs = v17;

    v19 = [handlersCopy copy];
    stageHandlers = v10->_stageHandlers;
    v10->_stageHandlers = v19;

    [(BRCPipeline *)v10 _validateStageHandlers];
    [(BRCPipeline *)v10 _computeStageStringifier];
    [(BRCPipeline *)v10 _setStageJobCompletionHandlers];
  }

  return v10;
}

- (void)_completedJob:(id)job forStage:(unint64_t)stage recoveryStage:(unint64_t)recoveryStage error:(id)error
{
  v35 = *MEMORY[0x277D85DE8];
  jobCopy = job;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if ([jobCopy activeStageID] != stage)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v28 = (*(self->_stageStringifier + 2))();
      v29 = 138412802;
      v30 = jobCopy;
      v31 = 2112;
      v32 = v28;
      v33 = 2112;
      v34 = v14;
      _os_log_fault_impl(&dword_223E7A000, v15, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Job active stage doesn't match completed stage for %@ vs %@. Was the completion handler called more than once?%@", &v29, 0x20u);
    }

    goto LABEL_10;
  }

  v12 = [(NSMutableSet *)self->_cancelledJobs count];
  [(NSMutableSet *)self->_cancelledJobs removeObject:jobCopy];
  v13 = [(NSMutableSet *)self->_cancelledJobs count];
  if (!errorCopy && v12 != v13)
  {
    errorCopy = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  }

  if (errorCopy)
  {
    [jobCopy completeWithError:errorCopy];
LABEL_10:

    goto LABEL_11;
  }

  if (recoveryStage == 0x7FFFFFFFFFFFFFFFLL)
  {
    advanceJobToNextStage = [jobCopy advanceJobToNextStage];
    if (advanceJobToNextStage == 0x7FFFFFFFFFFFFFFFLL)
    {
      [jobCopy completeWithError:0];
      goto LABEL_11;
    }

    recoveryStageCopy = advanceJobToNextStage;
    selfCopy2 = self;
    v23 = jobCopy;
LABEL_20:
    [(BRCPipeline *)selfCopy2 _sendJob:v23 toStageHandlerWithStageID:recoveryStageCopy];
    goto LABEL_11;
  }

  if ([(NSArray *)self->_stageHandlers count]> recoveryStage)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(NSArray *)self->_stageHandlers objectAtIndexedSubscript:recoveryStage];
      v21 = [(NSArray *)self->_stageHandlers objectAtIndexedSubscript:stage];
      v29 = 138412802;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Found recovery stage %@ after executing %@%@", &v29, 0x20u);
    }

    [jobCopy advanceToRecoveryStage:recoveryStage];
    selfCopy2 = self;
    v23 = jobCopy;
    recoveryStageCopy = recoveryStage;
    goto LABEL_20;
  }

  v25 = brc_bread_crumbs();
  v26 = brc_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    [BRCPipeline _completedJob:v25 forStage:v26 recoveryStage:? error:?];
  }

  v27 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Recovery stage handler is out of index"];
  [jobCopy completeWithError:v27];

LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_setStageJobCompletionHandlers
{
  v18 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_stageHandlers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        stageID = [v7 stageID];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __45__BRCPipeline__setStageJobCompletionHandlers__block_invoke;
        v10[3] = &unk_278506468;
        objc_copyWeak(v11, &location);
        v11[1] = stageID;
        [v7 setupWithInternalPipelineJobCompletionHandler:v10];
        objc_destroyWeak(v11);
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v4);
  }

  objc_destroyWeak(&location);
  v9 = *MEMORY[0x277D85DE8];
}

void __45__BRCPipeline__setStageJobCompletionHandlers__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained[4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__BRCPipeline__setStageJobCompletionHandlers__block_invoke_2;
  block[3] = &unk_278506440;
  block[4] = WeakRetained;
  v14 = v7;
  v16 = *(a1 + 40);
  v17 = a3;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(v10, block);
}

- (void)_validateStageHandlers
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = self->_stageHandlers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v18;
    v8 = *MEMORY[0x277CBE660];
    *&v4 = 138412546;
    v15 = v4;
    do
    {
      v9 = 0;
      v16 = v6;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        if (v6 != [v10 stageID])
        {
          v11 = brc_bread_crumbs();
          v12 = brc_default_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = v15;
            v22 = v10;
            v23 = 2112;
            v24 = v11;
            _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: handler is at an invalid index %@%@", buf, 0x16u);
          }

          v13 = [MEMORY[0x277CBEAD8] exceptionWithName:v8 reason:@"Stage handlers should be a sorted array starting at stageID 0 without holes" userInfo:0];
          [v13 raise];
        }

        ++v9;
        ++v6;
      }

      while (v5 != v9);
      v6 = v16 + v5;
      v5 = [(NSArray *)v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_computeStageStringifier
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__BRCPipeline__computeStageStringifier__block_invoke;
  v5[3] = &unk_278506490;
  objc_copyWeak(&v6, &location);
  v3 = MEMORY[0x22AA4A310](v5);
  stageStringifier = self->_stageStringifier;
  self->_stageStringifier = v3;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

__CFString *__39__BRCPipeline__computeStageStringifier__block_invoke(uint64_t a1, unint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  v5 = a2 == 0x7FFFFFFFFFFFFFFFLL || WeakRetained == 0;
  if (v5 || [WeakRetained[1] count] <= a2)
  {
    v9 = @"none";
  }

  else
  {
    v6 = [v4[1] objectAtIndexedSubscript:a2];
    v7 = [v6 name];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a2];
    }

    v9 = v8;
  }

  return v9;
}

- (BOOL)_buildJobPlanForJob:(id)job error:(id *)error
{
  v80 = *MEMORY[0x277D85DE8];
  jobCopy = job;
  v7 = objc_opt_new();
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v8 = self->_stageHandlers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v9)
  {
    v10 = v9;
    errorCopy = error;
    v55 = v8;
    v59 = jobCopy;
    v60 = 0;
    v11 = *v67;
    v12 = &selRef_removeDeliveredNotificationsMatchingPredicate_;
    v56 = v7;
    v51 = *v67;
    while (1)
    {
      v13 = 0;
      v52 = v12[70];
      v53 = v10;
      do
      {
        if (*v67 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v66 + 1) + 8 * v13);
        if ([v7 containsIndex:{objc_msgSend(v14, "stageID")}])
        {
          goto LABEL_26;
        }

        if (![v14 needsToHandleJob:jobCopy])
        {
          goto LABEL_26;
        }

        [v7 addIndex:{objc_msgSend(v14, "stageID")}];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_26;
        }

        requestedAdditionalStages = [v14 requestedAdditionalStages];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v16 = requestedAdditionalStages;
        v17 = [v16 countByEnumeratingWithState:&v62 objects:v78 count:16];
        if (!v17)
        {
          goto LABEL_25;
        }

        v18 = v17;
        v61 = v14;
        v19 = *v63;
        v57 = v16;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v63 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v62 + 1) + 8 * i);
            unsignedIntegerValue = [v21 unsignedIntegerValue];
            if (([v7 containsIndex:unsignedIntegerValue] & 1) == 0)
            {
              if (unsignedIntegerValue >= [(NSArray *)self->_stageHandlers count])
              {
                v31 = brc_bread_crumbs();
                v32 = brc_default_log();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
                {
                  [BRCPipeline _buildJobPlanForJob:error:];
                }

                [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Invalid additional index %lu", unsignedIntegerValue}];
                v34 = v33 = v55;
                if (v34)
                {
                  v35 = brc_bread_crumbs();
                  v36 = brc_default_log();
                  if (os_log_type_enabled(v36, 0x90u))
                  {
                    v50 = "(passed to caller)";
                    *buf = 136315906;
                    v71 = "[BRCPipeline _buildJobPlanForJob:error:]";
                    v72 = 2080;
                    if (!errorCopy)
                    {
                      v50 = "(ignored by caller)";
                    }

                    v73 = v50;
                    v74 = 2112;
                    v75 = v34;
                    v76 = 2112;
                    v77 = v35;
                    _os_log_error_impl(&dword_223E7A000, v36, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
                  }

                  v7 = v56;
                }

                if (errorCopy)
                {
                  v37 = v34;
                  *errorCopy = v34;
                }

                goto LABEL_53;
              }

              v23 = v7;
              v24 = v18;
              selfCopy = self;
              v26 = [(NSArray *)self->_stageHandlers objectAtIndexedSubscript:unsignedIntegerValue];
              if (!v26)
              {
                v34 = 0;
                v38 = brc_bread_crumbs();
                v39 = brc_default_log();
                v7 = v23;
                if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
                {
                  [BRCPipeline _buildJobPlanForJob:error:];
                }

                v40 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: No additional stage handler found %lu", unsignedIntegerValue}];
                v41 = errorCopy;
                v33 = v55;
                if (v40)
                {
                  v42 = brc_bread_crumbs();
                  v43 = brc_default_log();
                  if (!os_log_type_enabled(v43, 0x90u))
                  {
                    goto LABEL_49;
                  }

                  v44 = "(passed to caller)";
                  *buf = 136315906;
                  v71 = "[BRCPipeline _buildJobPlanForJob:error:]";
                  v72 = 2080;
                  if (!errorCopy)
                  {
                    v44 = "(ignored by caller)";
                  }

                  goto LABEL_60;
                }

LABEL_50:
                if (v41)
                {
                  v47 = v40;
                  *v41 = v40;
                }

LABEL_53:
                jobCopy = v59;

                v30 = 0;
                v29 = v60;
                goto LABEL_54;
              }

              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                v34 = v26;
                v45 = brc_bread_crumbs();
                v46 = brc_default_log();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
                {
                  [BRCPipeline _buildJobPlanForJob:error:];
                }

                v40 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Invalid additional stage handler %lu", unsignedIntegerValue}];
                v41 = errorCopy;
                v33 = v55;
                v7 = v23;
                if (v40)
                {
                  v42 = brc_bread_crumbs();
                  v43 = brc_default_log();
                  if (!os_log_type_enabled(v43, 0x90u))
                  {
                    goto LABEL_49;
                  }

                  v44 = "(passed to caller)";
                  *buf = 136315906;
                  v71 = "[BRCPipeline _buildJobPlanForJob:error:]";
                  v72 = 2080;
                  if (!errorCopy)
                  {
                    v44 = "(ignored by caller)";
                  }

LABEL_60:
                  v73 = v44;
                  v74 = 2112;
                  v75 = v40;
                  v76 = 2112;
                  v77 = v42;
                  _os_log_error_impl(&dword_223E7A000, v43, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
LABEL_49:

                  v7 = v56;
                }

                goto LABEL_50;
              }

              if ([v26 needsToHandleJob:v59 asRequestedByStage:{objc_msgSend(v61, "stageID")}])
              {
                v58 = v26;
                v27 = v60;
                if (!v60)
                {
                  v27 = objc_opt_new();
                }

                v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v61, "stageID")}];
                v60 = v27;
                [v27 setObject:v28 forKeyedSubscript:v21];

                v23 = v56;
                [v56 addIndex:unsignedIntegerValue];
                v16 = v57;
                v26 = v58;
              }

              self = selfCopy;
              v18 = v24;
              v7 = v23;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v62 objects:v78 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }

LABEL_25:

        v8 = v55;
        v11 = v51;
        v10 = v53;
        jobCopy = v59;
LABEL_26:
        ++v13;
      }

      while (v13 != v10);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v66 objects:v79 count:16];
      v12 = &selRef_removeDeliveredNotificationsMatchingPredicate_;
      if (!v10)
      {
        goto LABEL_30;
      }
    }
  }

  v60 = 0;
LABEL_30:

  v29 = v60;
  [jobCopy setJobPlan:v7 additionalToRequestingStageMap:v60];
  v30 = 1;
LABEL_54:

  v48 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)_sendJob:(id)job toStageHandlerWithStageID:(unint64_t)d
{
  jobCopy = job;
  v7 = [(NSArray *)self->_stageHandlers objectAtIndexedSubscript:d];
  v8 = v7;
  if (v7)
  {
    [v7 addJob:jobCopy];
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCPipeline _sendJob:toStageHandlerWithStageID:];
    }

    v11 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Invalid stage plan -- no stage handler for %lu", d}];
    [jobCopy completeWithError:v11];
  }
}

- (void)_armResumeTimer
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  [v3 pipelineAutoResumeTimeout];
  v5 = v4;

  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  pipelineAutoResumeTimer = self->_pipelineAutoResumeTimer;
  self->_pipelineAutoResumeTimer = v6;

  v8 = self->_pipelineAutoResumeTimer;
  v9 = dispatch_time(0, 1000000000 * v5);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v10 = self->_pipelineAutoResumeTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __30__BRCPipeline__armResumeTimer__block_invoke;
  handler[3] = &unk_2784FF450;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(self->_pipelineAutoResumeTimer);
}

- (void)_pauseStageHandlerScheduling
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_pipelineAutoResumeTimer)
  {
    [(BRCPipeline *)self _armResumeTimer];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    objectEnumerator = [(NSArray *)self->_stageHandlers objectEnumerator];
    v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v9 + 1) + 8 * v7++) disableScheduling];
        }

        while (v5 != v7);
        v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_resumeStageHandlerScheduling
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  pipelineAutoResumeTimer = self->_pipelineAutoResumeTimer;
  if (pipelineAutoResumeTimer)
  {
    dispatch_source_cancel(pipelineAutoResumeTimer);
    v4 = self->_pipelineAutoResumeTimer;
    self->_pipelineAutoResumeTimer = 0;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    objectEnumerator = [(NSArray *)self->_stageHandlers objectEnumerator];
    v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v11 + 1) + 8 * v9++) enableScheduling];
        }

        while (v7 != v9);
        v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_generateProgressForJob:(id)job
{
  jobCopy = job;
  v5 = objc_alloc_init(MEMORY[0x277CCAC48]);
  [v5 setCancellable:1];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__BRCPipeline__generateProgressForJob___block_invoke;
  v8[3] = &unk_2784FFDF8;
  objc_copyWeak(&v10, &location);
  v6 = jobCopy;
  v9 = v6;
  [v5 setCancellationHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v5;
}

void __39__BRCPipeline__generateProgressForJob___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__BRCPipeline__generateProgressForJob___block_invoke_42;
    v8[3] = &unk_2784FF478;
    v9 = *(a1 + 32);
    v10 = v3;
    dispatch_sync(v4, v8);
    v5 = v9;
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't find sself!%@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __39__BRCPipeline__generateProgressForJob___block_invoke_42(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) activeStageID];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't cancel a job that has already completed%@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = v3;
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __39__BRCPipeline__generateProgressForJob___block_invoke_42_cold_1(v2);
    }

    [*(*(a1 + 40) + 16) addObject:*(a1 + 32)];
    v4 = [*(*(a1 + 40) + 8) objectAtIndexedSubscript:v6];
    if (!v4)
    {
      __39__BRCPipeline__generateProgressForJob___block_invoke_42_cold_2();
    }

    [v4 cancelJob:*v2];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)addJob:(id)job moreComing:(BOOL)coming
{
  jobCopy = job;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__BRCPipeline_addJob_moreComing___block_invoke;
  block[3] = &unk_278502F30;
  comingCopy = coming;
  block[4] = self;
  v12 = jobCopy;
  v8 = jobCopy;
  dispatch_sync(queue, block);
  v9 = [(BRCPipeline *)self _generateProgressForJob:v8];

  return v9;
}

void __33__BRCPipeline_addJob_moreComing___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _pauseStageHandlerScheduling];
  }

  v2 = (a1 + 40);
  [*(a1 + 40) setStageStringifier:*(*(a1 + 32) + 48)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = 0;
  v5 = [v3 _buildJobPlanForJob:v4 error:&v13];
  v6 = v13;
  if ((v5 & 1) == 0)
  {
    v11 = *v2;
    v12 = v6;
LABEL_11:
    [v11 completeWithError:v12];
    goto LABEL_12;
  }

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __33__BRCPipeline_addJob_moreComing___block_invoke_cold_1((a1 + 40));
  }

  v9 = [*v2 jobPlan];
  v10 = [v9 count];

  v11 = *v2;
  if (!v10)
  {
    v12 = 0;
    goto LABEL_11;
  }

  [*(a1 + 32) _sendJob:*(a1 + 40) toStageHandlerWithStageID:{objc_msgSend(v11, "advanceJobToInitialStage")}];
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) _resumeStageHandlerScheduling];
  }

LABEL_12:
}

- (void)dumpToContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [(BRCPipeline *)self description];
  [contextCopy writeLineWithFormat:@"%@", v5];

  [contextCopy pushIndentation];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_stageHandlers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) dumpToContext:contextCopy];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [contextCopy popIndentation];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_completedJob:(uint64_t)a1 forStage:(NSObject *)a2 recoveryStage:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Recovery stage handler is out of index%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_buildJobPlanForJob:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Invalid additional index %lu%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_buildJobPlanForJob:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Invalid additional stage handler %lu%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_buildJobPlanForJob:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: No additional stage handler found %lu%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_sendJob:toStageHandlerWithStageID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Invalid stage plan -- no stage handler for %lu%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __39__BRCPipeline__generateProgressForJob___block_invoke_42_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] Attempting to cancel %@%@");
  v4 = *MEMORY[0x277D85DE8];
}

void __39__BRCPipeline__generateProgressForJob___block_invoke_42_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: handler%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __33__BRCPipeline_addJob_moreComing___block_invoke_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] Computed plan for job %@%@");
  v4 = *MEMORY[0x277D85DE8];
}

@end