@interface PPConnectionsStore
- (BOOL)iterRecentLocationDonationsSinceDate:(id)a3 client:(id)a4 error:(id *)a5 block:(id)a6;
- (BOOL)iterRecentLocationsForConsumer:(unint64_t)a3 criteria:(id)a4 limit:(unint64_t)a5 client:(id)a6 error:(id *)a7 block:(id)a8;
- (BOOL)iterRecentLocationsForConsumer:(unint64_t)a3 criteria:(id)a4 limit:(unint64_t)a5 explanationSet:(id)a6 client:(id)a7 error:(id *)a8 block:(id)a9;
- (PPConnectionsStore)init;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)registerFeedback:(id)a3 completion:(id)a4;
@end

@implementation PPConnectionsStore

- (PPConnectionsStore)init
{
  v6.receiver = self;
  v6.super_class = PPConnectionsStore;
  v2 = [(PPConnectionsStore *)&v6 init];
  if (v2)
  {
    v3 = [[PPClientFeedbackHelper alloc] initWithParentObject:v2];
    clientFeedbackHelper = v2->_clientFeedbackHelper;
    v2->_clientFeedbackHelper = v3;
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
    [v14 handleFailureInMethod:a2 object:self file:@"PPConnectionsStore.m" lineNumber:111 description:@"You cannot send mapped feedback on connections. Please use PPFeedback to create the feedback for connections."];
  }

  v9 = [(PPConnectionsStore *)self clientIdentifier];
  v10 = [v9 length];

  if (!v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 handleFailureInMethod:a2 object:self file:@"PPConnectionsStore.m" lineNumber:112 description:{@"The clientIdentifier property must be set on the %@ in order to send feedback.", v17}];
  }

  v11 = [(PPConnectionsStore *)self clientIdentifier];
  [v8 setClientIdentifier:v11];

  v12 = +[PPConnectionsClient sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __50__PPConnectionsStore_registerFeedback_completion___block_invoke;
  v18[3] = &unk_1E77F7D98;
  v18[4] = self;
  v19 = v7;
  v13 = v7;
  [v12 registerFeedback:v8 completion:v18];
}

void __50__PPConnectionsStore_registerFeedback_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = pp_connections_log_handle();
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

- (BOOL)iterRecentLocationsForConsumer:(unint64_t)a3 criteria:(id)a4 limit:(unint64_t)a5 explanationSet:(id)a6 client:(id)a7 error:(id *)a8 block:(id)a9
{
  v15 = a9;
  v16 = a7;
  v17 = a6;
  v18 = a4;
  v19 = +[PPConnectionsClient sharedInstance];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __102__PPConnectionsStore_iterRecentLocationsForConsumer_criteria_limit_explanationSet_client_error_block___block_invoke;
  v22[3] = &unk_1E77F7D70;
  v23 = v15;
  v20 = v15;
  LOBYTE(a8) = [v19 recentLocationsForConsumer:a3 criteria:v18 limit:a5 explanationSet:v17 client:v16 error:a8 handleBatch:v22];

  return a8;
}

void __102__PPConnectionsStore_iterRecentLocationsForConsumer_criteria_limit_explanationSet_client_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
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

- (BOOL)iterRecentLocationsForConsumer:(unint64_t)a3 criteria:(id)a4 limit:(unint64_t)a5 client:(id)a6 error:(id *)a7 block:(id)a8
{
  v13 = a8;
  v14 = a6;
  v15 = a4;
  v16 = +[PPConnectionsClient sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__PPConnectionsStore_iterRecentLocationsForConsumer_criteria_limit_client_error_block___block_invoke;
  v19[3] = &unk_1E77F7D70;
  v20 = v13;
  v17 = v13;
  LOBYTE(a7) = [v16 recentLocationsForConsumer:a3 criteria:v15 limit:a5 explanationSet:0 client:v14 error:a7 handleBatch:v19];

  return a7;
}

void __87__PPConnectionsStore_iterRecentLocationsForConsumer_criteria_limit_client_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
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

- (BOOL)iterRecentLocationDonationsSinceDate:(id)a3 client:(id)a4 error:(id *)a5 block:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = +[PPConnectionsClient sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__PPConnectionsStore_iterRecentLocationDonationsSinceDate_client_error_block___block_invoke;
  v15[3] = &unk_1E77F7D70;
  v16 = v9;
  v13 = v9;
  LOBYTE(a5) = [v12 recentLocationDonationsSinceDate:v11 client:v10 error:a5 handleBatch:v15];

  return a5;
}

void __78__PPConnectionsStore_iterRecentLocationDonationsSinceDate_client_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
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