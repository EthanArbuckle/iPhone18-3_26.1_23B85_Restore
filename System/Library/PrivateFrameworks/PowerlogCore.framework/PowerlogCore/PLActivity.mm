@interface PLActivity
+ (id)workQueue;
- (BOOL)allCriteriaSatisfied;
- (BOOL)mustRunCriterionSatisfied;
- (NSString)description;
- (PLActivity)initWithIdentifier:(id)a3 withCriteria:(id)a4 withMustRunCriterion:(id)a5 withQueue:(id)a6 withInterruptBlock:(id)a7 withActivityBlock:(id)a8;
- (id)criteriaString;
- (id)mustRunCriterionString;
- (int64_t)state;
- (void)didChangeCriterion:(id)a3;
- (void)disable;
- (void)enable;
- (void)enumerateCriteriaWithBlock:(id)a3;
- (void)interruptActivity;
- (void)logEntry;
- (void)runActivity;
- (void)setEnabled:(BOOL)a3;
- (void)setState:(int64_t)a3;
- (void)syncWithDB;
@end

@implementation PLActivity

- (BOOL)mustRunCriterionSatisfied
{
  v3 = [(PLActivity *)self mustRunCriterion];
  if (v3)
  {
    v4 = [(PLActivity *)self mustRunCriterion];
    v5 = [v4 satisfied];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
  v3 = [(PLActivity *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__PLActivity_runActivity__block_invoke;
  block[3] = &unk_1E85190B8;
  block[4] = self;
  dispatch_async(v3, block);
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
  v4 = [objc_opt_class() activityStatesEntryKey];
  v13 = [(PLEntry *)v3 initWithEntryKey:v4];

  v5 = MEMORY[0x1E696AD98];
  v6 = [(PLActivity *)self activityEntry];
  v7 = [v5 numberWithLongLong:{objc_msgSend(v6, "entryID")}];
  [(PLEntry *)v13 setObject:v7 forKeyedSubscript:@"ActivityID"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PLActivity state](self, "state")}];
  [(PLEntry *)v13 setObject:v8 forKeyedSubscript:@"State"];

  v9 = +[PowerlogCore sharedCore];
  v10 = [v9 storage];
  [v10 blockingWriteEntry:v13 withCompletionBlock:&__block_literal_global_20_0];

  v11 = +[PowerlogCore sharedCore];
  v12 = [v11 storage];
  [v12 flushCachesWithReason:@"ActivityStatesEntry"];
}

- (int64_t)state
{
  v2 = self;
  objc_sync_enter(v2);
  state = v2->_state;
  objc_sync_exit(v2);

  return state;
}

- (PLActivity)initWithIdentifier:(id)a3 withCriteria:(id)a4 withMustRunCriterion:(id)a5 withQueue:(id)a6 withInterruptBlock:(id)a7 withActivityBlock:(id)a8
{
  v15 = a3;
  v16 = a4;
  v28 = a5;
  v17 = a6;
  v29 = a7;
  v18 = a8;
  v19 = 0;
  if (v15)
  {
    if (v16)
    {
      v20 = [v16 count];
      v19 = 0;
      if (v18)
      {
        if (v17 && v20)
        {
          v30.receiver = self;
          v30.super_class = PLActivity;
          v21 = [(PLActivity *)&v30 init];
          v22 = v21;
          if (v21)
          {
            objc_storeStrong(&v21->_identifier, a3);
            objc_storeStrong(&v22->_criteria, a4);
            objc_storeStrong(&v22->_mustRunCriterion, a5);
            objc_storeStrong(&v22->_queue, a6);
            v23 = [v18 copy];
            activityBlock = v22->_activityBlock;
            v22->_activityBlock = v23;

            v25 = [v29 copy];
            interruptBlock = v22->_interruptBlock;
            v22->_interruptBlock = v25;

            v22->_state = -1;
            v22->_enabled = 0;
            [(PLActivity *)v22 syncWithDB];
          }

          self = v22;
          v19 = self;
        }
      }
    }
  }

  return v19;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_enabled == v3)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_enabled = v3;
    objc_sync_exit(obj);

    if (v3)
    {

      [(PLActivity *)obj enable];
    }

    else
    {

      [(PLActivity *)obj disable];
    }
  }
}

- (void)didChangeCriterion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(PLActivity *)v5 enabled];
  objc_sync_exit(v5);

  if (v6)
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(PLActivity *)v4 didChangeCriterion:v5, v7];
    }

    if (-[PLActivity state](v5, "state") || ![v4 satisfied])
    {
      if (-[PLActivity state](v5, "state") == 1 && ([v4 satisfied] & 1) == 0)
      {
        [(PLActivity *)v5 setState:3];
        [(PLActivity *)v5 interruptActivity];
      }
    }

    else
    {
      if ([(PLActivity *)v5 mustRunCriterionSatisfied])
      {
        v8 = v5;
        v9 = 2;
LABEL_13:
        [(PLActivity *)v8 setState:v9];
        [(PLActivity *)v5 runActivity];
        goto LABEL_14;
      }

      if ([(PLActivity *)v5 allCriteriaSatisfied])
      {
        v8 = v5;
        v9 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_14:
}

- (void)setState:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  state = obj->_state;
  if (state == a3 || a3 && state == -1)
  {
    goto LABEL_4;
  }

  if (state == 2)
  {
    if ((a3 | 4) != 4)
    {
      goto LABEL_4;
    }
  }

  else if (state == 1)
  {
    if (a3 > 4 || ((1 << a3) & 0x19) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (state)
  {
    if (a3 && state == 3)
    {
      goto LABEL_4;
    }

    if (state == 3)
    {
      v5 = [(PLActivity *)obj interruptBlock];

      if (!v5)
      {
        goto LABEL_4;
      }

      state = obj->_state;
    }

    if (a3 && state == 4)
    {
LABEL_4:
      objc_sync_exit(obj);

      return;
    }
  }

  else if ((a3 + 1) > 3 || !a3)
  {
    goto LABEL_4;
  }

  obj->_state = a3;
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
  v4 = [(PLActivity *)self mustRunCriterion];
  [v4 didEnableActivity:self];
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
  v4 = [(PLActivity *)self mustRunCriterion];
  [v4 didDisableActivity:self];
}

- (void)interruptActivity
{
  v3 = [(PLActivity *)self interruptBlock];
  if (v3)
  {
    v4 = v3;
    v5 = [(PLActivity *)self state];

    if (v5 == 3)
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

- (void)enumerateCriteriaWithBlock:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(PLActivity *)self criteria];
    objc_sync_enter(v5);
    v15 = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(PLActivity *)self criteria];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = *v12;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9), &v15);
        if (v15)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    objc_sync_exit(v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLActivity *)self criteriaString];
  v5 = [(PLActivity *)self mustRunCriterionString];
  v6 = [v3 stringWithFormat:@"{%@, %@}", v4, v5];

  return v6;
}

- (id)criteriaString
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__15;
  v12 = __Block_byref_object_dispose__15;
  v13 = [MEMORY[0x1E695DF70] array];
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
  v3 = [(PLActivity *)self mustRunCriterion];
  if (v3)
  {
    v4 = [(PLActivity *)self mustRunCriterion];
    v5 = [v4 description];
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