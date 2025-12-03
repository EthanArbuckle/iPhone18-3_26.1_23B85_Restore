@interface PPSocialHighlightStore
+ (double)decayInterval;
- (BOOL)iterRankedCollaborationsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant error:(id *)error block:(id)block;
- (BOOL)iterRankedHighlightsForSyncedItems:(id)items client:(id)client variant:(id)variant error:(id *)error block:(id)block;
- (BOOL)iterRankedHighlightsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant reason:(id)reason error:(id *)error block:(id)block;
- (PPSocialHighlightStore)init;
- (id)attributionForIdentifier:(id)identifier error:(id *)error;
- (void)feedbackForAttributionIdentifier:(id)identifier type:(unint64_t)type client:(id)client variant:(id)variant completion:(id)completion;
- (void)feedbackForHighlightIdentifier:(id)identifier type:(unint64_t)type client:(id)client variant:(id)variant completion:(id)completion;
@end

@implementation PPSocialHighlightStore

void __50__PPSocialHighlightStore__sharedAdaptiveCoalescer__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = _sharedAdaptiveCoalescer__pasExprOnceResult;
  _sharedAdaptiveCoalescer__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (PPSocialHighlightStore)init
{
  v3.receiver = self;
  v3.super_class = PPSocialHighlightStore;
  return [(PPSocialHighlightStore *)&v3 init];
}

- (void)feedbackForAttributionIdentifier:(id)identifier type:(unint64_t)type client:(id)client variant:(id)variant completion:(id)completion
{
  completionCopy = completion;
  variantCopy = variant;
  clientCopy = client;
  identifierCopy = identifier;
  v15 = +[PPSocialHighlightClient sharedInstance];
  [v15 feedbackForAttribution:identifierCopy type:type client:clientCopy variant:variantCopy completion:completionCopy];
}

- (void)feedbackForHighlightIdentifier:(id)identifier type:(unint64_t)type client:(id)client variant:(id)variant completion:(id)completion
{
  completionCopy = completion;
  variantCopy = variant;
  clientCopy = client;
  identifierCopy = identifier;
  v15 = +[PPSocialHighlightClient sharedInstance];
  [v15 feedbackForHighlight:identifierCopy type:type client:clientCopy variant:variantCopy completion:completionCopy];
}

- (id)attributionForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v6 = +[PPSocialHighlightClient sharedInstance];
  v7 = [v6 attributionForIdentifier:identifierCopy error:error];

  return v7;
}

- (BOOL)iterRankedHighlightsForSyncedItems:(id)items client:(id)client variant:(id)variant error:(id *)error block:(id)block
{
  blockCopy = block;
  variantCopy = variant;
  clientCopy = client;
  itemsCopy = items;
  v15 = +[PPSocialHighlightClient sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__PPSocialHighlightStore_iterRankedHighlightsForSyncedItems_client_variant_error_block___block_invoke;
  v18[3] = &unk_1E77F7D70;
  v19 = blockCopy;
  v16 = blockCopy;
  LOBYTE(error) = [v15 rankedHighlightsForSyncedItems:itemsCopy client:clientCopy variant:variantCopy error:error handleBatch:v18];

  return error;
}

void __88__PPSocialHighlightStore_iterRankedHighlightsForSyncedItems_client_variant_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
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

- (BOOL)iterRankedCollaborationsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant error:(id *)error block:(id)block
{
  blockCopy = block;
  variantCopy = variant;
  clientCopy = client;
  v14 = +[PPSocialHighlightClient sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__PPSocialHighlightStore_iterRankedCollaborationsWithLimit_client_variant_error_block___block_invoke;
  v17[3] = &unk_1E77F7D70;
  v18 = blockCopy;
  v15 = blockCopy;
  LOBYTE(error) = [v14 rankedCollaborationsWithLimit:limit client:clientCopy variant:variantCopy error:error handleBatch:v17];

  return error;
}

void __87__PPSocialHighlightStore_iterRankedCollaborationsWithLimit_client_variant_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
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

- (BOOL)iterRankedHighlightsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant reason:(id)reason error:(id *)error block:(id)block
{
  blockCopy = block;
  v16 = [PPSocialHighlightStoreRequestKey socialHighlightStoreRequestKeyWithLimit:limit client:client variant:variant reason:reason];
  v17 = objc_opt_new();
  v18 = MEMORY[0x1AC568040](blockCopy);

  v19 = *(v17 + 24);
  *(v17 + 24) = v18;

  *(v17 + 8) = 0;
  v20 = dispatch_semaphore_create(0);
  v21 = *(v17 + 32);
  *(v17 + 32) = v20;

  objc_opt_self();
  if (_sharedAdaptiveCoalescer__pasOnceToken2 != -1)
  {
    dispatch_once(&_sharedAdaptiveCoalescer__pasOnceToken2, &__block_literal_global_5669);
  }

  v22 = _sharedAdaptiveCoalescer__pasExprOnceResult;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __90__PPSocialHighlightStore_iterRankedHighlightsWithLimit_client_variant_reason_error_block___block_invoke;
  v26[3] = &unk_1E77F7158;
  v26[4] = self;
  v26[5] = a2;
  v23 = MEMORY[0x1AC568040](v26);
  [v22 coalesceRequestKey:v16 handler:v17 executeRequestAndInvokeHandlersBlock:v23];

  dispatch_semaphore_wait(*(v17 + 32), 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = *(v17 + 16);
  }

  v24 = *(v17 + 8);

  return v24;
}

void __90__PPSocialHighlightStore_iterRankedHighlightsWithLimit_client_variant_reason_error_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 mutableCopy];
  v7 = +[PPSocialHighlightClient sharedInstance];
  v8 = [v5 limit];
  v9 = [v5 client];
  v10 = [v5 variant];
  v29 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __90__PPSocialHighlightStore_iterRankedHighlightsWithLimit_client_variant_reason_error_block___block_invoke_2;
  v26[3] = &unk_1E77F7130;
  v11 = v6;
  v27 = v11;
  v28 = *(a1 + 32);
  v12 = [v7 rankedHighlightsWithLimit:v8 client:v9 variant:v10 error:&v29 handleBatch:v26];
  v13 = v29;
  v14 = v29;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v22 + 1) + 8 * v19);
        *(v20 + 8) = v12;
        objc_storeStrong((v20 + 16), v13);
        dispatch_semaphore_signal(*(v20 + 32));
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __90__PPSocialHighlightStore_iterRankedHighlightsWithLimit_client_variant_reason_error_block___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = a2;
  v4 = [*(a1 + 32) count];
  if (v4)
  {
    v5 = v4;
    do
    {
      --v5;
      v6 = objc_autoreleasePoolPush();
      v23 = 0;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v18;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            v13 = objc_autoreleasePoolPush();
            v14 = [*(a1 + 32) objectAtIndexedSubscript:v5];
            if (*(v14 + 8))
            {
              v16 = [MEMORY[0x1E696AAA8] currentHandler];
              [v16 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"PPSocialHighlightStore.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"remainingHandler->_successful == NO"}];
            }

            (*(*(v14 + 24) + 16))();
            if (v23 == 1)
            {
              *(v14 + 8) = v23;
              dispatch_semaphore_signal(*(v14 + 32));
              [*(a1 + 32) removeObjectAtIndex:v5];

              objc_autoreleasePoolPop(v13);
              goto LABEL_15;
            }

            objc_autoreleasePoolPop(v13);
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      objc_autoreleasePoolPop(v6);
    }

    while (v5);
  }

  if (![*(a1 + 32) count])
  {
    *a3 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (double)decayInterval
{
  v2 = +[PPSocialHighlightClient sharedInstance];
  [v2 decayInterval];
  v4 = v3;

  return v4;
}

@end