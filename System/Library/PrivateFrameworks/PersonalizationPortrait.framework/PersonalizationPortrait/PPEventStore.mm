@interface PPEventStore
- (BOOL)interactionSummaryMetricsError:(id *)a3 block:(id)a4;
- (BOOL)iterEventNameRecordsForClient:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)iterScoredEventsWithQuery:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)loadEventNameRecordsAndMonitorChangesWithDelegate:(id)a3 error:(id *)a4;
- (BOOL)sendRTCLogsWithError:(id *)a3;
- (PPEventStore)init;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)_loadEventNameRecordsWithDelegate:(id)a3;
- (void)_sendChangesToDelegates:(id)a3;
- (void)registerFeedback:(id)a3 completion:(id)a4;
@end

@implementation PPEventStore

- (PPEventStore)init
{
  v8.receiver = self;
  v8.super_class = PPEventStore;
  v2 = [(PPEventStore *)&v8 init];
  if (v2)
  {
    v3 = [[PPRecordMonitoringHelper alloc] initWithName:@"EventStore"];
    monitoringHelper = v2->_monitoringHelper;
    v2->_monitoringHelper = v3;

    v5 = [[PPClientFeedbackHelper alloc] initWithParentObject:v2];
    clientFeedbackHelper = v2->_clientFeedbackHelper;
    v2->_clientFeedbackHelper = v5;
  }

  return v2;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  clientFeedbackHelper = self->_clientFeedbackHelper;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_clientFeedbackHelper;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ([v8 isMapped])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PPEventStore.m" lineNumber:282 description:@"You cannot send mapped feedback on events. Please use PPFeedback to create the feedback for events."];
  }

  v9 = [(PPEventStore *)self clientIdentifier];
  v10 = [v9 length];

  if (!v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 handleFailureInMethod:a2 object:self file:@"PPEventStore.m" lineNumber:283 description:{@"The clientIdentifier property must be set on the %@ in order to send feedback.", v17}];
  }

  v11 = [(PPEventStore *)self clientIdentifier];
  [v8 setClientIdentifier:v11];

  v12 = +[PPEventClient sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __44__PPEventStore_registerFeedback_completion___block_invoke;
  v18[3] = &unk_1E77F7D98;
  v18[4] = self;
  v19 = v7;
  v13 = v7;
  [v12 registerFeedback:v8 completion:v18];
}

void __44__PPEventStore_registerFeedback_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = pp_events_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_ERROR, "Error from registerFeedback:completion: %@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendRTCLogsWithError:(id *)a3
{
  v4 = +[PPEventClient sharedInstance];
  LOBYTE(a3) = [v4 sendRTCLogsWithError:a3];

  return a3;
}

- (BOOL)interactionSummaryMetricsError:(id *)a3 block:(id)a4
{
  v5 = a4;
  v6 = +[PPEventClient sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__PPEventStore_interactionSummaryMetricsError_block___block_invoke;
  v9[3] = &unk_1E77F7D70;
  v10 = v5;
  v7 = v5;
  LOBYTE(a3) = [v6 interactionSummaryMetricsWithError:a3 handleBatch:v9];

  return a3;
}

void __53__PPEventStore_interactionSummaryMetricsError_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((*a3 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)iterScoredEventsWithQuery:(id)a3 error:(id *)a4 block:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[PPEventClient sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PPEventStore_iterScoredEventsWithQuery_error_block___block_invoke;
  v12[3] = &unk_1E77F7D70;
  v13 = v7;
  v10 = v7;
  LOBYTE(a4) = [v9 scoredEventsWithQuery:v8 error:a4 handleBatch:v12];

  return a4;
}

void __54__PPEventStore_iterScoredEventsWithQuery_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = pp_events_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_INFO, "Getting into callback on client", buf, 2u);
  }

  if ((*a3 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __63__PPEventStore_iterEventHighlightsFrom_to_options_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = pp_events_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_INFO, "Getting into callback on client", buf, 2u);
  }

  if ((*a3 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)loadEventNameRecordsAndMonitorChangesWithDelegate:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  monitoringHelper = self->_monitoringHelper;
  v7 = [(PPEventStore *)self _recordGenerator];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PPEventStore_loadEventNameRecordsAndMonitorChangesWithDelegate_error___block_invoke;
  v9[3] = &unk_1E77F7970;
  objc_copyWeak(&v10, &location);
  LOBYTE(monitoringHelper) = [(PPRecordMonitoringHelper *)monitoringHelper loadRecordsAndMonitorChangesWithDelegate:v5 recordGenerator:v7 notificationRegistrationBlock:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
  return monitoringHelper;
}

void __72__PPEventStore_loadEventNameRecordsAndMonitorChangesWithDelegate_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__PPEventStore_loadEventNameRecordsAndMonitorChangesWithDelegate_error___block_invoke_2;
  v3[3] = &unk_1E77F6E18;
  objc_copyWeak(&v4, (a1 + 32));
  [PPNotificationManager addEventKitObserverForLifetimeOfObject:WeakRetained block:v3];

  objc_destroyWeak(&v4);
}

void __72__PPEventStore_loadEventNameRecordsAndMonitorChangesWithDelegate_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__PPEventStore_loadEventNameRecordsAndMonitorChangesWithDelegate_error___block_invoke_3;
    v7[3] = &unk_1E77F6EB0;
    v8 = v3;
    v9 = v5;
    [v6 handleChangeNotificationWithName:@"Events" afterDelaySeconds:v7 handler:1.0];
  }
}

uint64_t __72__PPEventStore_loadEventNameRecordsAndMonitorChangesWithDelegate_error___block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = pp_events_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_DEFAULT, "_sendChangesToDelegates Events observation block being called with %tu changes", &v6, 0xCu);
  }

  result = [*(a1 + 40) _sendChangesToDelegates:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_loadEventNameRecordsWithDelegate:(id)a3
{
  monitoringHelper = self->_monitoringHelper;
  v5 = a3;
  v6 = [(PPEventStore *)self _recordGenerator];
  [(PPRecordMonitoringHelper *)monitoringHelper loadRecordsWithDelegate:v5 recordGenerator:v6];
}

- (void)_sendChangesToDelegates:(id)a3
{
  v4 = a3;
  monitoringHelper = self->_monitoringHelper;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PPEventStore__sendChangesToDelegates___block_invoke;
  v8[3] = &unk_1E77F6DF0;
  v9 = v4;
  v6 = v4;
  v7 = [(PPEventStore *)self _recordGenerator];
  [(PPRecordMonitoringHelper *)monitoringHelper sendChangesToDelegatesWithChangeGenerator:v8 recordGenerator:v7];
}

id __40__PPEventStore__sendChangesToDelegates___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(a1 + 32) count])
  {
    v6 = objc_opt_new();
    v7 = [*(a1 + 32) _pas_mappedArrayWithTransform:&__block_literal_global_18];
    v8 = +[PPEventClient sharedInstance];
    v9 = [v5 name];
    v17 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __40__PPEventStore__sendChangesToDelegates___block_invoke_3;
    v15[3] = &unk_1E77F6DC8;
    v10 = v6;
    v16 = v10;
    [v8 resolveEventNameRecordChanges:v7 client:v9 error:&v17 handleBatch:v15];
    v11 = v17;

    if (v11)
    {
      v12 = pp_events_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_error_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_ERROR, "resolveEventNameRecordChanges returned error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    v10 = MEMORY[0x1E695E0F0];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

id __32__PPEventStore__recordGenerator__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4492;
  v16 = __Block_byref_object_dispose__4493;
  v17 = objc_opt_new();
  v3 = +[PPEventClient sharedInstance];
  v4 = [v2 name];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__PPEventStore__recordGenerator__block_invoke_15;
  v10[3] = &unk_1E77F6D80;
  v10[4] = &v12;
  v11 = 0;
  [v3 eventNameRecordsForClient:v4 error:&v11 handleBatch:v10];
  v5 = v11;

  if (v5)
  {
    v6 = pp_events_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v2;
      v20 = 2112;
      v21 = v5;
      _os_log_error_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_ERROR, "error during eventNameRecordsForClient for delegate %@: %@", buf, 0x16u);
    }
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __32__PPEventStore__recordGenerator__block_invoke_15(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if ((*a3 & 1) == 0)
  {
    return [*(*(*(result + 32) + 8) + 40) addObjectsFromArray:a2];
  }

  return result;
}

- (BOOL)iterEventNameRecordsForClient:(id)a3 error:(id *)a4 block:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[PPEventClient sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__PPEventStore_iterEventNameRecordsForClient_error_block___block_invoke;
  v12[3] = &unk_1E77F7D70;
  v13 = v7;
  v10 = v7;
  LOBYTE(a4) = [v9 eventNameRecordsForClient:v8 error:a4 handleBatch:v12];

  return a4;
}

void __58__PPEventStore_iterEventNameRecordsForClient_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((*a3 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end