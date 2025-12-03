@interface PPConnectionsStore
- (BOOL)iterRecentLocationDonationsSinceDate:(id)date client:(id)client error:(id *)error block:(id)block;
- (BOOL)iterRecentLocationsForConsumer:(unint64_t)consumer criteria:(id)criteria limit:(unint64_t)limit client:(id)client error:(id *)error block:(id)block;
- (BOOL)iterRecentLocationsForConsumer:(unint64_t)consumer criteria:(id)criteria limit:(unint64_t)limit explanationSet:(id)set client:(id)client error:(id *)error block:(id)block;
- (PPConnectionsStore)init;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)registerFeedback:(id)feedback completion:(id)completion;
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

- (id)forwardingTargetForSelector:(SEL)selector
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

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  feedbackCopy = feedback;
  if ([feedbackCopy isMapped])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPConnectionsStore.m" lineNumber:111 description:@"You cannot send mapped feedback on connections. Please use PPFeedback to create the feedback for connections."];
  }

  clientIdentifier = [(PPConnectionsStore *)self clientIdentifier];
  v10 = [clientIdentifier length];

  if (!v10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPConnectionsStore.m" lineNumber:112 description:{@"The clientIdentifier property must be set on the %@ in order to send feedback.", v17}];
  }

  clientIdentifier2 = [(PPConnectionsStore *)self clientIdentifier];
  [feedbackCopy setClientIdentifier:clientIdentifier2];

  v12 = +[PPConnectionsClient sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __50__PPConnectionsStore_registerFeedback_completion___block_invoke;
  v18[3] = &unk_1E77F7D98;
  v18[4] = self;
  v19 = completionCopy;
  v13 = completionCopy;
  [v12 registerFeedback:feedbackCopy completion:v18];
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

- (BOOL)iterRecentLocationsForConsumer:(unint64_t)consumer criteria:(id)criteria limit:(unint64_t)limit explanationSet:(id)set client:(id)client error:(id *)error block:(id)block
{
  blockCopy = block;
  clientCopy = client;
  setCopy = set;
  criteriaCopy = criteria;
  v19 = +[PPConnectionsClient sharedInstance];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __102__PPConnectionsStore_iterRecentLocationsForConsumer_criteria_limit_explanationSet_client_error_block___block_invoke;
  v22[3] = &unk_1E77F7D70;
  v23 = blockCopy;
  v20 = blockCopy;
  LOBYTE(error) = [v19 recentLocationsForConsumer:consumer criteria:criteriaCopy limit:limit explanationSet:setCopy client:clientCopy error:error handleBatch:v22];

  return error;
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

- (BOOL)iterRecentLocationsForConsumer:(unint64_t)consumer criteria:(id)criteria limit:(unint64_t)limit client:(id)client error:(id *)error block:(id)block
{
  blockCopy = block;
  clientCopy = client;
  criteriaCopy = criteria;
  v16 = +[PPConnectionsClient sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__PPConnectionsStore_iterRecentLocationsForConsumer_criteria_limit_client_error_block___block_invoke;
  v19[3] = &unk_1E77F7D70;
  v20 = blockCopy;
  v17 = blockCopy;
  LOBYTE(error) = [v16 recentLocationsForConsumer:consumer criteria:criteriaCopy limit:limit explanationSet:0 client:clientCopy error:error handleBatch:v19];

  return error;
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

- (BOOL)iterRecentLocationDonationsSinceDate:(id)date client:(id)client error:(id *)error block:(id)block
{
  blockCopy = block;
  clientCopy = client;
  dateCopy = date;
  v12 = +[PPConnectionsClient sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__PPConnectionsStore_iterRecentLocationDonationsSinceDate_client_error_block___block_invoke;
  v15[3] = &unk_1E77F7D70;
  v16 = blockCopy;
  v13 = blockCopy;
  LOBYTE(error) = [v12 recentLocationDonationsSinceDate:dateCopy client:clientCopy error:error handleBatch:v15];

  return error;
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