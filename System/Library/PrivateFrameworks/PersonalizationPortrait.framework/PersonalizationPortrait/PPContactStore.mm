@interface PPContactStore
- (BOOL)iterContactNameRecordsForClient:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)iterRankedContactsWithQuery:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)loadContactNameRecordsAndMonitorChangesWithDelegate:(id)a3 error:(id *)a4;
- (PPContactStore)init;
- (id)contactHandlesForSource:(id)a3 error:(id *)a4;
- (id)contactHandlesForTopics:(id)a3 error:(id *)a4;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)upcomingRelevantContactsForQuery:(id)a3 error:(id *)a4;
- (void)_loadContactNameRecordsWithDelegate:(id)a3;
- (void)_sendChangesToDelegates;
- (void)feedbackDisambiguationResultWithChoicesIdentifiers:(id)a3 chosenContactIdentifier:(id)a4 completion:(id)a5;
- (void)registerFeedback:(id)a3 completion:(id)a4;
@end

@implementation PPContactStore

- (BOOL)loadContactNameRecordsAndMonitorChangesWithDelegate:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  monitoringHelper = self->_monitoringHelper;
  v7 = [(PPContactStore *)self _recordGenerator];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PPContactStore_loadContactNameRecordsAndMonitorChangesWithDelegate_error___block_invoke;
  v9[3] = &unk_1E77F7970;
  objc_copyWeak(&v10, &location);
  LOBYTE(monitoringHelper) = [(PPRecordMonitoringHelper *)monitoringHelper loadRecordsAndMonitorChangesWithDelegate:v5 recordGenerator:v7 notificationRegistrationBlock:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
  return monitoringHelper;
}

void __76__PPContactStore_loadContactNameRecordsAndMonitorChangesWithDelegate_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __76__PPContactStore_loadContactNameRecordsAndMonitorChangesWithDelegate_error___block_invoke_2;
    v3[3] = &unk_1E77F7970;
    objc_copyWeak(&v4, (a1 + 32));
    [PPNotificationManager addContactsObserverForLifetimeOfObject:WeakRetained block:v3];
    objc_destroyWeak(&v4);
  }
}

void __76__PPContactStore_loadContactNameRecordsAndMonitorChangesWithDelegate_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 1);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __76__PPContactStore_loadContactNameRecordsAndMonitorChangesWithDelegate_error___block_invoke_3;
    v4[3] = &unk_1E77F7CC8;
    v4[4] = v2;
    [v3 handleChangeNotificationWithName:@"Contacts" afterDelaySeconds:v4 handler:0.0];
  }
}

- (void)_loadContactNameRecordsWithDelegate:(id)a3
{
  monitoringHelper = self->_monitoringHelper;
  v5 = a3;
  v6 = [(PPContactStore *)self _recordGenerator];
  [(PPRecordMonitoringHelper *)monitoringHelper loadRecordsWithDelegate:v5 recordGenerator:v6];
}

- (void)_sendChangesToDelegates
{
  monitoringHelper = self->_monitoringHelper;
  v3 = [(PPContactStore *)self _recordGenerator];
  [(PPRecordMonitoringHelper *)monitoringHelper sendChangesToDelegatesWithChangeGenerator:&__block_literal_global_31 recordGenerator:v3];
}

id __41__PPContactStore__sendChangesToDelegates__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3147;
  v19 = __Block_byref_object_dispose__3148;
  v20 = 0;
  v5 = +[PPContactClient sharedInstance];
  v6 = [v4 name];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__PPContactStore__sendChangesToDelegates__block_invoke_32;
  v13[3] = &unk_1E77F6D80;
  v13[4] = &v15;
  v14 = 0;
  [v5 contactNameRecordChangesForClient:v6 error:&v14 handleBatch:v13];
  v7 = v14;

  if ([v16[5] changesTruncated])
  {
    v8 = pp_contacts_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v4;
      _os_log_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_DEFAULT, "delegate %@ had contact changes truncated, must reset", buf, 0xCu);
    }

    if (a3)
    {
      *a3 = 1;
    }
  }

  if (v7)
  {
    v9 = pp_contacts_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_error_impl(&dword_1A7FD3000, v9, OS_LOG_TYPE_ERROR, "contactNameRecordChangesForClient returned error: %@", buf, 0xCu);
    }
  }

  v10 = [v16[5] changes];

  _Block_object_dispose(&v15, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __41__PPContactStore__sendChangesToDelegates__block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = pp_contacts_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_ERROR, "contactNameRecordChangesForClient sent an empty batch", v8, 2u);
    }
  }
}

id __34__PPContactStore__recordGenerator__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_new();
  v4 = +[PPContactClient sharedInstance];
  v5 = [v2 name];
  v16 = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __34__PPContactStore__recordGenerator__block_invoke_2;
  v14 = &unk_1E77F6DC8;
  v6 = v3;
  v15 = v6;
  [v4 contactNameRecordsForClient:v5 error:&v16 handleBatch:&v11];
  v7 = v16;

  if (v7)
  {
    v8 = pp_contacts_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v2;
      v19 = 2112;
      v20 = v7;
      _os_log_error_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_ERROR, "error during contactNameRecordsForClient for delegate %@: %@", buf, 0x16u);
    }
  }

  [v6 sortUsingComparator:{&__block_literal_global_27, v11, v12, v13, v14}];

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __34__PPContactStore__recordGenerator__block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if ((*a3 & 1) == 0)
  {
    return [*(result + 32) addObjectsFromArray:a2];
  }

  return result;
}

int64_t __34__PPContactStore__recordGenerator__block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  return [PPUtils reverseCompareDouble:v6 withDouble:v8];
}

- (void)feedbackDisambiguationResultWithChoicesIdentifiers:(id)a3 chosenContactIdentifier:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[PPContactClient sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __104__PPContactStore_feedbackDisambiguationResultWithChoicesIdentifiers_chosenContactIdentifier_completion___block_invoke;
  v12[3] = &unk_1E77F69D8;
  v13 = v7;
  v11 = v7;
  [v10 feedbackDisambiguationResultWithChoicesIdentifiers:v9 chosenContactIdentifier:v8 completion:v12];
}

void __104__PPContactStore_feedbackDisambiguationResultWithChoicesIdentifiers_chosenContactIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = pp_contacts_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_1A7FD3000, v4, OS_LOG_TYPE_ERROR, "Error from feedbackDisambiguationResultWithChoicesIdentifiers: %@", &v7, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
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
    [v14 handleFailureInMethod:a2 object:self file:@"PPContactStore.m" lineNumber:131 description:@"You cannot send mapped feedback on named entities. Please use PPFeedback to create the feedback for named entities."];
  }

  v9 = [(PPContactStore *)self clientIdentifier];
  v10 = [v9 length];

  if (!v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 handleFailureInMethod:a2 object:self file:@"PPContactStore.m" lineNumber:132 description:{@"The clientIdentifier property must be set on the %@ in order to send feedback.", v17}];
  }

  v11 = [(PPContactStore *)self clientIdentifier];
  [v8 setClientIdentifier:v11];

  v12 = +[PPContactClient sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__PPContactStore_registerFeedback_completion___block_invoke;
  v18[3] = &unk_1E77F7D98;
  v18[4] = self;
  v19 = v7;
  v13 = v7;
  [v12 registerFeedback:v8 completion:v18];
}

void __46__PPContactStore_registerFeedback_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = pp_contacts_log_handle();
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

- (id)contactHandlesForSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = pp_contacts_signpost_handle();
  v8 = os_signpost_id_generate(v7);

  v9 = pp_contacts_signpost_handle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PPContactStore.contactHandlesForSource", "", buf, 2u);
  }

  v11 = +[PPContactClient sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __48__PPContactStore_contactHandlesForSource_error___block_invoke;
  v19[3] = &unk_1E77F6DC8;
  v20 = v6;
  v12 = v6;
  v13 = [v11 contactHandlesForSource:v5 error:a4 handleBatch:v19];

  v14 = pp_contacts_signpost_handle();
  v15 = v14;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v15, OS_SIGNPOST_INTERVAL_END, v8, "PPContactStore.contactHandlesForSource", "", buf, 2u);
  }

  if (v13)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

- (id)contactHandlesForTopics:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = pp_contacts_signpost_handle();
  v8 = os_signpost_id_generate(v7);

  v9 = pp_contacts_signpost_handle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PPContactStore.contactHandlesForTopics", "", buf, 2u);
  }

  v11 = +[PPContactClient sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __48__PPContactStore_contactHandlesForTopics_error___block_invoke;
  v19[3] = &unk_1E77F6DC8;
  v20 = v6;
  v12 = v6;
  v13 = [v11 contactHandlesForTopics:v5 error:a4 handleBatch:v19];

  v14 = pp_contacts_signpost_handle();
  v15 = v14;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v15, OS_SIGNPOST_INTERVAL_END, v8, "PPContactStore.contactHandlesForTopics", "", buf, 2u);
  }

  if (v13)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

- (id)upcomingRelevantContactsForQuery:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = pp_contacts_signpost_handle();
  v8 = os_signpost_id_generate(v7);

  v9 = pp_contacts_signpost_handle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PPContactStore.upcomingRelevantContactsForQuery", "", buf, 2u);
  }

  v11 = +[PPContactClient sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57__PPContactStore_upcomingRelevantContactsForQuery_error___block_invoke;
  v19[3] = &unk_1E77F6DC8;
  v20 = v6;
  v12 = v6;
  v13 = [v11 upcomingRelevantContactsForQuery:v5 error:a4 handleBatch:v19];

  v14 = pp_contacts_signpost_handle();
  v15 = v14;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v15, OS_SIGNPOST_INTERVAL_END, v8, "PPContactStore.upcomingRelevantContactsForQuery", "", buf, 2u);
  }

  if (v13)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

- (BOOL)iterContactNameRecordsForClient:(id)a3 error:(id *)a4 block:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[PPContactClient sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__PPContactStore_iterContactNameRecordsForClient_error_block___block_invoke;
  v12[3] = &unk_1E77F7D70;
  v13 = v7;
  v10 = v7;
  LOBYTE(a4) = [v9 contactNameRecordsForClient:v8 error:a4 handleBatch:v12];

  return a4;
}

void __62__PPContactStore_iterContactNameRecordsForClient_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
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

- (BOOL)iterRankedContactsWithQuery:(id)a3 error:(id *)a4 block:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[PPContactClient sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__PPContactStore_iterRankedContactsWithQuery_error_block___block_invoke;
  v12[3] = &unk_1E77F7D70;
  v13 = v7;
  v10 = v7;
  LOBYTE(a4) = [v9 rankedContactsWithQuery:v8 error:a4 handleBatch:v12];

  return a4;
}

void __58__PPContactStore_iterRankedContactsWithQuery_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
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

- (PPContactStore)init
{
  v8.receiver = self;
  v8.super_class = PPContactStore;
  v2 = [(PPContactStore *)&v8 init];
  if (v2)
  {
    v3 = [[PPRecordMonitoringHelper alloc] initWithName:@"ContactStore"];
    monitoringHelper = v2->_monitoringHelper;
    v2->_monitoringHelper = v3;

    v5 = [[PPClientFeedbackHelper alloc] initWithParentObject:v2];
    clientFeedbackHelper = v2->_clientFeedbackHelper;
    v2->_clientFeedbackHelper = v5;
  }

  return v2;
}

@end