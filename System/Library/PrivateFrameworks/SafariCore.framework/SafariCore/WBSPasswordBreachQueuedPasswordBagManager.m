@interface WBSPasswordBreachQueuedPasswordBagManager
- (NSDictionary)allNonbreachedPasswords;
- (WBSPasswordBreachQueuedPasswordBagManager)initWithContext:(id)a3 results:(id)a4 passwordSource:(id)a5;
- (id)_constructBagOnInternalQueueWithCredentials:(id)a3 ensureFakePasswordGeneration:(BOOL)a4;
- (id)_dictionaryRepresentation;
- (id)_passwordBagFromDictionaryRepresentation:(id)a3;
- (id)_unbreachedCredentials;
- (int64_t)fillState;
- (void)getPasswordsForNextBatchWithCompletionHandler:(id)a3;
- (void)reportPasswordCheckBatchResults:(id)a3;
- (void)saveBagToStore;
@end

@implementation WBSPasswordBreachQueuedPasswordBagManager

- (WBSPasswordBreachQueuedPasswordBagManager)initWithContext:(id)a3 results:(id)a4 passwordSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = WBSPasswordBreachQueuedPasswordBagManager;
  v12 = [(WBSPasswordBreachQueuedPasswordBagManager *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a3);
    objc_storeStrong(&v13->_results, a4);
    objc_storeStrong(&v13->_credentialSource, a5);
    v14 = dispatch_queue_create("com.apple.Safari.WBSPasswordBreachQueuedPasswordBagManager", 0);
    internalQueue = v13->_internalQueue;
    v13->_internalQueue = v14;

    v13->_fillState = 0;
    v16 = v13->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__WBSPasswordBreachQueuedPasswordBagManager_initWithContext_results_passwordSource___block_invoke;
    block[3] = &unk_1E7CF16E0;
    v17 = v13;
    v21 = v17;
    dispatch_async(v16, block);
    v18 = v17;
  }

  return v13;
}

void __84__WBSPasswordBreachQueuedPasswordBagManager_initWithContext_results_passwordSource___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) store];
  v3 = [v2 queuedPasswordBagManagerState];

  v4 = [*(a1 + 32) _passwordBagFromDictionaryRepresentation:v3];
  v5 = [v4 mutableCopy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  if ([*(*(a1 + 32) + 32) count])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_INFO, "Restored password bag.", v13, 2u);
    }
  }

  else
  {
    v9 = [*(a1 + 32) _constructNewBagOnInternalQueueEnsuringFakePasswordGeneration:0];
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = v9;

    if (![*(*(a1 + 32) + 32) count])
    {
      v12 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __84__WBSPasswordBreachQueuedPasswordBagManager_initWithContext_results_passwordSource___block_invoke_cold_1();
      }
    }
  }
}

- (id)_passwordBagFromDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_INFO, "Trying to restore password bag from persisted state.", buf, 2u);
  }

  v6 = [v4 safari_numberForKey:@"FillState"];
  v7 = v6;
  if (v6)
  {
    self->_fillState = [v6 integerValue];
    v8 = [v4 safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"PersistentIdentifiers"];
    if ([v8 count])
    {
      v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v8];
      v10 = [(WBSPasswordBreachQueuedPasswordBagManager *)self _unbreachedCredentials];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __86__WBSPasswordBreachQueuedPasswordBagManager__passwordBagFromDictionaryRepresentation___block_invoke;
      v17[3] = &unk_1E7CF3210;
      v18 = v9;
      v11 = v9;
      v12 = [v10 safari_filterObjectsUsingBlock:v17];
      v13 = [(WBSPasswordBreachQueuedPasswordBagManager *)self _constructBagOnInternalQueueWithCredentials:v12 ensureFakePasswordGeneration:0];
    }

    else
    {
      v15 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [WBSPasswordBreachQueuedPasswordBagManager _passwordBagFromDictionaryRepresentation:];
      }

      v13 = 0;
    }
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [WBSPasswordBreachQueuedPasswordBagManager _passwordBagFromDictionaryRepresentation:];
    }

    v13 = 0;
  }

  return v13;
}

uint64_t __86__WBSPasswordBreachQueuedPasswordBagManager__passwordBagFromDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 persistentIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_unbreachedCredentials
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(WBSPasswordBreachCredentialSource *)self->_credentialSource credentials];
  v4 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_40];
  v5 = [(WBSPasswordBreachResults *)self->_results resultRecordsForQueries:v4];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 persistentIdentifier];
        [v6 setObject:v12 forKeyedSubscript:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__WBSPasswordBreachQueuedPasswordBagManager__unbreachedCredentials__block_invoke_2;
  v18[3] = &unk_1E7CF3210;
  v19 = v6;
  v14 = v6;
  v15 = [v3 safari_filterObjectsUsingBlock:v18];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

WBSPasswordBreachResultQuery *__67__WBSPasswordBreachQueuedPasswordBagManager__unbreachedCredentials__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WBSPasswordBreachResultQuery alloc];
  v4 = [v2 persistentIdentifier];
  v5 = [v2 dateLastModified];

  v6 = [(WBSPasswordBreachResultQuery *)v3 initWithPersistentIdentifier:v4 dateLastModified:v5];

  return v6;
}

BOOL __67__WBSPasswordBreachQueuedPasswordBagManager__unbreachedCredentials__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 persistentIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = ([v4 result] & 0xFFFFFFFFFFFFFFFELL) != 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_constructBagOnInternalQueueWithCredentials:(id)a3 ensureFakePasswordGeneration:(BOOL)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF20] safari_dictionaryWithObjectsInFastEnumerationCollection:a3 groupedUsingBlock:&__block_literal_global_14_0];
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [v5 allValues];
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [[WBSPasswordBreachQueuedPassword alloc] initWithCredentials:*(*(&v32 + 1) + 8 * i) context:self->_context];
        v13 = [(WBSPasswordBreachQueuedPassword *)v12 uuid];
        [v6 setObject:v12 forKeyedSubscript:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v9);
  }

  v14 = [(WBSPasswordBreachContext *)self->_context configuration];
  v15 = [v14 passwordCheckBatchSize];
  v16 = [v14 numberOfBatchesPerSession];
  v17 = [v6 count];
  if (!a4 && !v17)
  {
    v18 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [WBSPasswordBreachQueuedPasswordBagManager _constructBagOnInternalQueueWithCredentials:ensureFakePasswordGeneration:];
    }

    goto LABEL_19;
  }

  v19 = v16 * v15 >= v17;
  v20 = v16 * v15 - v17;
  if (v20 == 0 || !v19)
  {
LABEL_19:
    v27 = v6;
    goto LABEL_20;
  }

  v21 = [(WBSPasswordBreachContext *)self->_context configuration];
  v22 = [v21 verboseSensitiveLoggingEnabled];

  if (v22)
  {
    v23 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134545665;
      v37 = v20;
      _os_log_debug_impl(&dword_1B8447000, v23, OS_LOG_TYPE_DEBUG, "Adding %{sensitive}lu generated passwords to the bag.", buf, 0xCu);
    }
  }

  while (1)
  {
    v24 = [[WBSPasswordBreachQueuedPassword alloc] initFakePasswordWithContext:self->_context];
    if (!v24)
    {
      break;
    }

    v25 = v24;
    v26 = [v24 uuid];
    [v6 setObject:v25 forKeyedSubscript:v26];

    if (!--v20)
    {
      goto LABEL_19;
    }
  }

  v30 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
  {
    [WBSPasswordBreachQueuedPasswordBagManager _constructBagOnInternalQueueWithCredentials:ensureFakePasswordGeneration:];
  }

  v27 = 0;
LABEL_20:

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

void *__118__WBSPasswordBreachQueuedPasswordBagManager__constructBagOnInternalQueueWithCredentials_ensureFakePasswordGeneration___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 password];
  if ([v2 length])
  {
    if ([WBSPasswordEvaluator passwordLooksLikeDigitOnlyPasscode:v2])
    {
      v3 = 0;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)getPasswordsForNextBatchWithCompletionHandler:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__WBSPasswordBreachQueuedPasswordBagManager_getPasswordsForNextBatchWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __91__WBSPasswordBreachQueuedPasswordBagManager_getPasswordsForNextBatchWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v68 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) configuration];
  v3 = [v2 passwordCheckBatchSize];

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  v5 = [*(*(v1 + 32) + 32) allKeys];
  v6 = [v5 mutableCopy];

  v7 = [*(*(v1 + 32) + 8) configuration];
  if ([v6 count])
  {
    if (!v3)
    {
LABEL_40:
      v13 = v6;
      goto LABEL_41;
    }

    v8 = 0;
    v44 = v7;
    v45 = v4;
    v43 = v3;
LABEL_4:
    v9 = arc4random();
    v10 = v9 % [v6 count];
    v11 = [v6 objectAtIndexedSubscript:v10];
    v12 = [*(*(v1 + 32) + 32) objectForKeyedSubscript:v11];
    [v4 addObject:v12];
    [v6 removeObjectAtIndex:v10];
    if ([v6 count])
    {
      v13 = v6;
      goto LABEL_32;
    }

    v14 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __91__WBSPasswordBreachQueuedPasswordBagManager_getPasswordsForNextBatchWithCompletionHandler___block_invoke_cold_1(&v60, v61, v14);
    }

    if (([v7 shouldRefillBagWhenEmpty] & 1) == 0)
    {
      v40 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        __91__WBSPasswordBreachQueuedPasswordBagManager_getPasswordsForNextBatchWithCompletionHandler___block_invoke_cold_2();
      }

      goto LABEL_40;
    }

    v15 = [*(v1 + 32) _constructNewBagOnInternalQueueEnsuringFakePasswordGeneration:1];
    if (!v15)
    {
      v42 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        __91__WBSPasswordBreachQueuedPasswordBagManager_getPasswordsForNextBatchWithCompletionHandler___block_invoke_cold_3();
      }

      (*(*(v1 + 40) + 16))();

      goto LABEL_42;
    }

    v16 = v15;
    v46 = v12;
    v47 = v8;
    v48 = v11;
    v50 = [v7 verboseSensitiveLoggingEnabled];
    v49 = v16;
    v17 = [v16 allKeys];
    v13 = [v17 mutableCopy];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = *(*(v1 + 32) + 32);
    v18 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = v18;
    v20 = *v57;
LABEL_12:
    v21 = 0;
    while (1)
    {
      if (*v57 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v56 + 1) + 8 * v21);
      v23 = v1;
      v24 = [*(*(v1 + 32) + 32) objectForKeyedSubscript:v22];
      v25 = [v24 persistentIdentifiers];
      v26 = [v25 firstObject];
      v27 = [v26 length];

      if (!v27)
      {
        goto LABEL_22;
      }

      if ([v24 remainingHashCount])
      {
        if (!v50)
        {
          goto LABEL_22;
        }

        v28 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_22;
        }

        v29 = v28;
        v30 = [v24 remainingHashCount];
        *buf = 138740227;
        v64 = v22;
        v65 = 2053;
        v66 = v30;
        _os_log_debug_impl(&dword_1B8447000, v29, OS_LOG_TYPE_DEBUG, "Skipping adding work to %{sensitive}@ because it already has %{sensitive}lu items enqueued.", buf, 0x16u);
      }

      else
      {
        v29 = [v49 objectForKeyedSubscript:v22];
        [v29 pushBucketIdentifiersAndHashesFromQueuedPassword:v24];
      }

LABEL_22:
      ++v21;
      v1 = v23;
      if (v19 == v21)
      {
        v19 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
        if (!v19)
        {
LABEL_24:

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v4 = v45;
          v31 = v45;
          v32 = [v31 countByEnumeratingWithState:&v52 objects:v62 count:16];
          v12 = v46;
          v8 = v47;
          if (v32)
          {
            v33 = v32;
            v34 = *v53;
            do
            {
              for (i = 0; i != v33; ++i)
              {
                if (*v53 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = [*(*(&v52 + 1) + 8 * i) uuid];
                [v13 removeObject:v36];
              }

              v33 = [v31 countByEnumeratingWithState:&v52 objects:v62 count:16];
            }

            while (v33);
          }

          v37 = *(v1 + 32);
          v38 = *(v37 + 32);
          *(v37 + 32) = v49;

          v6 = v13;
          v3 = v43;
          v7 = v44;
          v11 = v48;
LABEL_32:

          if (++v8 == v3)
          {
LABEL_41:
            (*(*(v1 + 40) + 16))();
            v6 = v13;
            goto LABEL_42;
          }

          goto LABEL_4;
        }

        goto LABEL_12;
      }
    }
  }

  v39 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v39, OS_LOG_TYPE_DEFAULT, "Queued password bag is empty. Stopping lookup session.", buf, 2u);
  }

  (*(*(v1 + 40) + 16))();
LABEL_42:

  v41 = *MEMORY[0x1E69E9840];
}

- (void)reportPasswordCheckBatchResults:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__WBSPasswordBreachQueuedPasswordBagManager_reportPasswordCheckBatchResults___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __77__WBSPasswordBreachQueuedPasswordBagManager_reportPasswordCheckBatchResults___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [*(*(a1 + 32) + 8) configuration];
  v27 = [v4 verboseSensitiveLoggingEnabled];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 40);
  v31 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v31)
  {
    v30 = *v38;
    *&v5 = 134217984;
    v26 = v5;
    v29 = a1;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:{v7, v26}];
        if (v8)
        {
          v9 = [*(a1 + 40) objectForKeyedSubscript:v7];
          v10 = [v9 unsignedIntegerValue];

          if ((v10 - 2) < 2)
          {
            if (v27)
            {
              v16 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138739971;
                v43 = v7;
                _os_log_debug_impl(&dword_1B8447000, v16, OS_LOG_TYPE_DEBUG, "Password with UUID %{sensitive}@ breached. Removing from bag.", buf, 0xCu);
              }
            }

            [*(*(a1 + 32) + 32) removeObjectForKey:v7];
          }

          else
          {
            if (!v10)
            {
              goto LABEL_13;
            }

            if (v10 == 1)
            {
              [v8 removeTopBucketIdentifierAndHash];
              if (v27)
              {
                v11 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138739971;
                  v43 = v7;
                  _os_log_debug_impl(&dword_1B8447000, v11, OS_LOG_TYPE_DEBUG, "Password with UUID %{sensitive}@ not breached.", buf, 0xCu);
                }
              }

LABEL_13:
              if (![v8 remainingHashCount])
              {
                v12 = *(*(a1 + 32) + 32);
                v13 = [v8 uuid];
                [v12 removeObjectForKey:v13];

                if (v27)
                {
                  v14 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138739971;
                    v43 = v7;
                    _os_log_debug_impl(&dword_1B8447000, v14, OS_LOG_TYPE_DEBUG, "Password with UUID %{sensitive}@ has no remaining queued work. Removing from bag.", buf, 0xCu);
                  }
                }
              }
            }

            else
            {
              v17 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = v26;
                v43 = v10;
                _os_log_error_impl(&dword_1B8447000, v17, OS_LOG_TYPE_ERROR, "Received unknown breach check result: %lu", buf, 0xCu);
              }
            }
          }

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = v8;
          v18 = [v8 persistentIdentifiers];
          v19 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v34;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v34 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v33 + 1) + 8 * j);
                if ([v23 length])
                {
                  v24 = [[WBSPasswordBreachResultRecord alloc] initWithPersistentIdentifier:v23 result:v10 dateLastModified:v2];
                  [v3 addObject:v24];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v20);
          }

          a1 = v29;
          v8 = v32;
          goto LABEL_35;
        }

        v15 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138477827;
          v43 = v7;
          _os_log_error_impl(&dword_1B8447000, v15, OS_LOG_TYPE_ERROR, "Received result for unknown password: %{private}@", buf, 0xCu);
        }

LABEL_35:
      }

      v31 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v31);
  }

  [*(*(a1 + 32) + 16) addResultRecords:v3];
  v25 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)allNonbreachedPasswords
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__WBSPasswordBreachQueuedPasswordBagManager_allNonbreachedPasswords__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __68__WBSPasswordBreachQueuedPasswordBagManager_allNonbreachedPasswords__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)saveBagToStore
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WBSPasswordBreachQueuedPasswordBagManager_saveBagToStore__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __59__WBSPasswordBreachQueuedPasswordBagManager_saveBagToStore__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _dictionaryRepresentation];
  v2 = [*(*(a1 + 32) + 8) store];
  [v2 setQueuedPasswordBagManagerState:v3];
}

- (id)_dictionaryRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = self;
  v4 = [(NSMutableDictionary *)self->_queuedPasswordsByUUID allValues];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = [v9 persistentIdentifiers];
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              if ([v15 length])
              {
                [v3 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v31 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v6);
  }

  v29[0] = @"FillState";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:v20->_fillState];
  v29[1] = @"PersistentIdentifiers";
  v30[0] = v16;
  v30[1] = v3;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (int64_t)fillState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__WBSPasswordBreachQueuedPasswordBagManager_fillState__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __91__WBSPasswordBreachQueuedPasswordBagManager_getPasswordsForNextBatchWithCompletionHandler___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1B8447000, log, OS_LOG_TYPE_DEBUG, "Password bag empty.", buf, 2u);
}

@end