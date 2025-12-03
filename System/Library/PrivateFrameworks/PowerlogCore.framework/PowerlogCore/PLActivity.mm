@interface PLActivity
+ (id)workQueue;
- (BOOL)allCriteriaSatisfied;
- (BOOL)mustRunCriterionSatisfied;
- (NSString)description;
- (PLActivity)initWithIdentifier:(id)identifier withCriteria:(id)criteria withMustRunCriterion:(id)criterion withQueue:(id)queue withInterruptBlock:(id)block withActivityBlock:(id)activityBlock;
- (id)criteriaString;
- (id)mustRunCriterionString;
- (int64_t)state;
- (void)didChangeCriterion:(id)criterion;
- (void)disable;
- (void)enable;
- (void)enumerateCriteriaWithBlock:(id)block;
- (void)interruptActivity;
- (void)logEntry;
- (void)runActivity;
- (void)setEnabled:(BOOL)enabled;
- (void)setState:(int64_t)state;
- (void)syncWithDB;
@end

@implementation PLActivity

- (BOOL)mustRunCriterionSatisfied
{
  mustRunCriterion = [(PLActivity *)self mustRunCriterion];
  if (mustRunCriterion)
  {
    mustRunCriterion2 = [(PLActivity *)self mustRunCriterion];
    satisfied = [mustRunCriterion2 satisfied];
  }

  else
  {
    satisfied = 0;
  }

  return satisfied;
}

- (BOOL)allCriteriaSatisfied
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLActivity allCriteriaSatisfied];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__PLActivity_allCriteriaSatisfied__block_invoke;
  v7[3] = &unk_1E851AFE0;
  v7[4] = &v8;
  [(PLActivity *)self enumerateCriteriaWithBlock:v7];
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLActivity allCriteriaSatisfied];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __34__PLActivity_allCriteriaSatisfied__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __34__PLActivity_allCriteriaSatisfied__block_invoke_cold_1(v5, v6);
  }

  if (([v5 satisfied] & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (void)runActivity
{
  queue = [(PLActivity *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__PLActivity_runActivity__block_invoke;
  block[3] = &unk_1E85190B8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __25__PLActivity_runActivity__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __25__PLActivity_runActivity__block_invoke_cold_1();
  }

  v4 = [*(a1 + 32) activityBlock];
  v5 = [*(a1 + 32) lastCompletedDate];
  v6 = [MEMORY[0x1E695DF00] monotonicDate];
  (v4)[2](v4, v5, v6);

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __25__PLActivity_runActivity__block_invoke_cold_2();
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 32) state] == 3)
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __25__PLActivity_runActivity__block_invoke_cold_4();
    }

    v9 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __25__PLActivity_runActivity__block_invoke_17;
    v16[3] = &unk_1E851AFB8;
    v16[4] = v9;
    [v9 enumerateCriteriaWithBlock:v16];
  }

  else if ([*(a1 + 32) state] == 1 || objc_msgSend(*(a1 + 32), "state") == 2)
  {
    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __25__PLActivity_runActivity__block_invoke_cold_3();
    }

    [*(a1 + 32) setState:4];
    v11 = [MEMORY[0x1E695DF00] monotonicDate];
    [*(a1 + 32) setLastCompletedDate:v11];

    v12 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __25__PLActivity_runActivity__block_invoke_18;
    v15[3] = &unk_1E851AFB8;
    v15[4] = v12;
    [v12 enumerateCriteriaWithBlock:v15];
    v13 = [*(a1 + 32) mustRunCriterion];
    [v13 didCompleteActivity:*(a1 + 32)];
  }

  return [*(a1 + 32) setState:0];
}

- (void)logEntry
{
  v3 = [PLEntry alloc];
  activityStatesEntryKey = [objc_opt_class() activityStatesEntryKey];
  v13 = [(PLEntry *)v3 initWithEntryKey:activityStatesEntryKey];

  v5 = MEMORY[0x1E696AD98];
  activityEntry = [(PLActivity *)self activityEntry];
  v7 = [v5 numberWithLongLong:{objc_msgSend(activityEntry, "entryID")}];
  [(PLEntry *)v13 setObject:v7 forKeyedSubscript:@"ActivityID"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PLActivity state](self, "state")}];
  [(PLEntry *)v13 setObject:v8 forKeyedSubscript:@"State"];

  v9 = +[PowerlogCore sharedCore];
  storage = [v9 storage];
  [storage blockingWriteEntry:v13 withCompletionBlock:&__block_literal_global_20_0];

  v11 = +[PowerlogCore sharedCore];
  storage2 = [v11 storage];
  [storage2 flushCachesWithReason:@"ActivityStatesEntry"];
}

- (int64_t)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = selfCopy->_state;
  objc_sync_exit(selfCopy);

  return state;
}

- (PLActivity)initWithIdentifier:(id)identifier withCriteria:(id)criteria withMustRunCriterion:(id)criterion withQueue:(id)queue withInterruptBlock:(id)block withActivityBlock:(id)activityBlock
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  criterionCopy = criterion;
  queueCopy = queue;
  blockCopy = block;
  activityBlockCopy = activityBlock;
  selfCopy = 0;
  if (identifierCopy)
  {
    if (criteriaCopy)
    {
      v20 = [criteriaCopy count];
      selfCopy = 0;
      if (activityBlockCopy)
      {
        if (queueCopy && v20)
        {
          v30.receiver = self;
          v30.super_class = PLActivity;
          v21 = [(PLActivity *)&v30 init];
          v22 = v21;
          if (v21)
          {
            objc_storeStrong(&v21->_identifier, identifier);
            objc_storeStrong(&v22->_criteria, criteria);
            objc_storeStrong(&v22->_mustRunCriterion, criterion);
            objc_storeStrong(&v22->_queue, queue);
            v23 = [activityBlockCopy copy];
            activityBlock = v22->_activityBlock;
            v22->_activityBlock = v23;

            v25 = [blockCopy copy];
            interruptBlock = v22->_interruptBlock;
            v22->_interruptBlock = v25;

            v22->_state = -1;
            v22->_enabled = 0;
            [(PLActivity *)v22 syncWithDB];
          }

          self = v22;
          selfCopy = self;
        }
      }
    }
  }

  return selfCopy;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_enabled == enabledCopy)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_enabled = enabledCopy;
    objc_sync_exit(obj);

    if (enabledCopy)
    {

      [(PLActivity *)obj enable];
    }

    else
    {

      [(PLActivity *)obj disable];
    }
  }
}

- (void)didChangeCriterion:(id)criterion
{
  criterionCopy = criterion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  enabled = [(PLActivity *)selfCopy enabled];
  objc_sync_exit(selfCopy);

  if (enabled)
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(PLActivity *)criterionCopy didChangeCriterion:selfCopy, v7];
    }

    if (-[PLActivity state](selfCopy, "state") || ![criterionCopy satisfied])
    {
      if (-[PLActivity state](selfCopy, "state") == 1 && ([criterionCopy satisfied] & 1) == 0)
      {
        [(PLActivity *)selfCopy setState:3];
        [(PLActivity *)selfCopy interruptActivity];
      }
    }

    else
    {
      if ([(PLActivity *)selfCopy mustRunCriterionSatisfied])
      {
        v8 = selfCopy;
        v9 = 2;
LABEL_13:
        [(PLActivity *)v8 setState:v9];
        [(PLActivity *)selfCopy runActivity];
        goto LABEL_14;
      }

      if ([(PLActivity *)selfCopy allCriteriaSatisfied])
      {
        v8 = selfCopy;
        v9 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_14:
}

- (void)setState:(int64_t)state
{
  obj = self;
  objc_sync_enter(obj);
  state = obj->_state;
  if (state == state || state && state == -1)
  {
    goto LABEL_4;
  }

  if (state == 2)
  {
    if ((state | 4) != 4)
    {
      goto LABEL_4;
    }
  }

  else if (state == 1)
  {
    if (state > 4 || ((1 << state) & 0x19) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (state)
  {
    if (state && state == 3)
    {
      goto LABEL_4;
    }

    if (state == 3)
    {
      interruptBlock = [(PLActivity *)obj interruptBlock];

      if (!interruptBlock)
      {
        goto LABEL_4;
      }

      state = obj->_state;
    }

    if (state && state == 4)
    {
LABEL_4:
      objc_sync_exit(obj);

      return;
    }
  }

  else if ((state + 1) > 3 || !state)
  {
    goto LABEL_4;
  }

  obj->_state = state;
  objc_sync_exit(obj);

  [(PLActivity *)obj logEntry];
}

+ (id)workQueue
{
  v2 = objc_opt_class();

  return [PLUtilities workQueueForClass:v2];
}

- (void)syncWithDB
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1D8611000, a2, a3, "PLActivity::syncWithDB: lastCompletedActivityStatesEntry=%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __24__PLActivity_syncWithDB__block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [*(a1 + 32) activityEntry];
  [v3 setObject:v2 forKeyedSubscript:@"Criteria"];

  v5 = [*(a1 + 32) mustRunCriterionString];
  v4 = [*(a1 + 32) activityEntry];
  [v4 setObject:v5 forKeyedSubscript:@"MustRunCriterion"];
}

- (void)enable
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLActivity enable];
  }

  [(PLActivity *)self setState:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__PLActivity_enable__block_invoke;
  v5[3] = &unk_1E851AFB8;
  v5[4] = self;
  [(PLActivity *)self enumerateCriteriaWithBlock:v5];
  mustRunCriterion = [(PLActivity *)self mustRunCriterion];
  [mustRunCriterion didEnableActivity:self];
}

- (void)disable
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLActivity disable];
  }

  [(PLActivity *)self setState:-1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__PLActivity_disable__block_invoke;
  v5[3] = &unk_1E851AFB8;
  v5[4] = self;
  [(PLActivity *)self enumerateCriteriaWithBlock:v5];
  mustRunCriterion = [(PLActivity *)self mustRunCriterion];
  [mustRunCriterion didDisableActivity:self];
}

- (void)interruptActivity
{
  interruptBlock = [(PLActivity *)self interruptBlock];
  if (interruptBlock)
  {
    v4 = interruptBlock;
    state = [(PLActivity *)self state];

    if (state == 3)
    {
      v6 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __31__PLActivity_interruptActivity__block_invoke;
      block[3] = &unk_1E85190B8;
      block[4] = self;
      dispatch_async(v6, block);
    }
  }
}

void __31__PLActivity_interruptActivity__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interruptBlock];
  v1 = [MEMORY[0x1E695DF00] monotonicDate];
  v2[2](v2, v1);
}

- (void)enumerateCriteriaWithBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    criteria = [(PLActivity *)self criteria];
    objc_sync_enter(criteria);
    v15 = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    criteria2 = [(PLActivity *)self criteria];
    v7 = [criteria2 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = *v12;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(criteria2);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9), &v15);
        if (v15)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [criteria2 countByEnumeratingWithState:&v11 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    objc_sync_exit(criteria);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  criteriaString = [(PLActivity *)self criteriaString];
  mustRunCriterionString = [(PLActivity *)self mustRunCriterionString];
  v6 = [v3 stringWithFormat:@"{%@, %@}", criteriaString, mustRunCriterionString];

  return v6;
}

- (id)criteriaString
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__15;
  v12 = __Block_byref_object_dispose__15;
  array = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__PLActivity_criteriaString__block_invoke;
  v7[3] = &unk_1E851AFE0;
  v7[4] = &v8;
  [(PLActivity *)self enumerateCriteriaWithBlock:v7];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [v9[5] componentsJoinedByString:{@", "}];
  v5 = [v3 stringWithFormat:@"(%@)", v4];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __28__PLActivity_criteriaString__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 description];
  [v2 addObject:v3];
}

- (id)mustRunCriterionString
{
  mustRunCriterion = [(PLActivity *)self mustRunCriterion];
  if (mustRunCriterion)
  {
    mustRunCriterion2 = [(PLActivity *)self mustRunCriterion];
    v5 = [mustRunCriterion2 description];
  }

  else
  {
    v5 = &stru_1F539D228;
  }

  return v5;
}

- (void)didChangeCriterion:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 138412802;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 state];
  v9 = 1024;
  v10 = [v6 satisfied];
  _os_log_debug_impl(&dword_1D8611000, a3, OS_LOG_TYPE_DEBUG, "PLActivity::didChangeCriterion:%@, state=%lu, satisfied=%i", &v5, 0x1Cu);
  v4 = *MEMORY[0x1E69E9840];
}

void __34__PLActivity_allCriteriaSatisfied__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = [a1 satisfied];
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "PLActivity::allCriteriaSatisfied criterion=%@, satisfied=%i", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

@end