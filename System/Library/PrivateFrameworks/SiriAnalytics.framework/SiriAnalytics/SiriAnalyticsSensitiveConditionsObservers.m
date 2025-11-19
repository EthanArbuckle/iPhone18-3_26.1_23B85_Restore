@interface SiriAnalyticsSensitiveConditionsObservers
- (SiriAnalyticsSensitiveConditionsObservers)initWithQueue:(id)a3;
- (void)addSensitiveConditionsObserver:(id)a3;
- (void)pollAllObserversWithCompletion:(id)a3;
@end

@implementation SiriAnalyticsSensitiveConditionsObservers

- (void)pollAllObserversWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__SiriAnalyticsSensitiveConditionsObservers_pollAllObserversWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __76__SiriAnalyticsSensitiveConditionsObservers_pollAllObserversWithCompletion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextSensitiveConditions;
  if (os_log_type_enabled(SiriAnalyticsLogContextSensitiveConditions, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(*(a1 + 32) + 16);
    *buf = 136315394;
    v23 = "[SiriAnalyticsSensitiveConditionsObservers pollAllObserversWithCompletion:]_block_invoke";
    v24 = 2112;
    v25 = v12;
    _os_log_debug_impl(&dword_1D9863000, v2, OS_LOG_TYPE_DEBUG, "%s observers: %@", buf, 0x16u);
  }

  v3 = dispatch_group_create();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(*(a1 + 32) + 16);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if (v9)
        {
          dispatch_group_enter(v3);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __76__SiriAnalyticsSensitiveConditionsObservers_pollAllObserversWithCompletion___block_invoke_1;
          v15[3] = &unk_1E8587918;
          v16 = v3;
          [v9 pollConditionStateWithCompletion:v15];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v10 = *(*(a1 + 32) + 8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__SiriAnalyticsSensitiveConditionsObservers_pollAllObserversWithCompletion___block_invoke_2;
  v13[3] = &unk_1E8587C18;
  v14 = *(a1 + 40);
  dispatch_group_notify(v3, v10, v13);

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __76__SiriAnalyticsSensitiveConditionsObservers_pollAllObserversWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addSensitiveConditionsObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__SiriAnalyticsSensitiveConditionsObservers_addSensitiveConditionsObserver___block_invoke;
  v7[3] = &unk_1E8587870;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __76__SiriAnalyticsSensitiveConditionsObservers_addSensitiveConditionsObserver___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextSensitiveConditions;
  if (os_log_type_enabled(SiriAnalyticsLogContextSensitiveConditions, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v10 = 136315394;
    v11 = "[SiriAnalyticsSensitiveConditionsObservers addSensitiveConditionsObserver:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1D9863000, v2, OS_LOG_TYPE_INFO, "%s Registering sensitive conditions observer: %@", &v10, 0x16u);
  }

  v4 = *(*(a1 + 40) + 16);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = *(a1 + 40);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v4 = *(*(a1 + 40) + 16);
  }

  result = [v4 addObject:*(a1 + 32)];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (SiriAnalyticsSensitiveConditionsObservers)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SiriAnalyticsSensitiveConditionsObservers;
  v6 = [(SiriAnalyticsSensitiveConditionsObservers *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

@end