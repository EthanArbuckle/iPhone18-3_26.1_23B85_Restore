@interface WBSPasswordBreachChecker
- (WBSPasswordBreachChecker)initWithContext:(id)context bagManager:(id)manager;
- (void)_checkHighFrequencyBucketForPasswords:(id)passwords withCompletionHandler:(id)handler;
- (void)_checkLowFrequencyBatchesWithBagManager:(id)manager completionHandler:(id)handler;
- (void)_mergeResultsByUUID:(id)d intoResultsByPersistentIdentifier:(id)identifier usingQueuedPasswordsbyUUID:(id)iD;
- (void)checkPasswordBatchesWithCompletionHandler:(id)handler;
@end

@implementation WBSPasswordBreachChecker

- (WBSPasswordBreachChecker)initWithContext:(id)context bagManager:(id)manager
{
  contextCopy = context;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = WBSPasswordBreachChecker;
  v9 = [(WBSPasswordBreachChecker *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_bagManager, manager);
    v11 = [[WBSPasswordBreachRequestManager alloc] initWithContext:contextCopy];
    requestManager = v10->_requestManager;
    v10->_requestManager = v11;

    v13 = v10;
  }

  return v10;
}

- (void)_checkHighFrequencyBucketForPasswords:(id)passwords withCompletionHandler:(id)handler
{
  passwordsCopy = passwords;
  handlerCopy = handler;
  v8 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_INFO, "Fetching high frequency bucket.", buf, 2u);
  }

  requestManager = self->_requestManager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__WBSPasswordBreachChecker__checkHighFrequencyBucketForPasswords_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E7CF3048;
  v13 = passwordsCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = passwordsCopy;
  [(WBSPasswordBreachRequestManager *)requestManager fetchHighFrequencyBucketWithCompletionHandler:v12];
}

void __88__WBSPasswordBreachChecker__checkHighFrequencyBucketForPasswords_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v24 = v3;
  if (v3)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v23 = a1;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [v10 highFrequencyEncodedPasswordData];
          v12 = [v24 containsLowercaseHexStringForData:v11];

          if (v12)
          {
            v13 = 1;
          }

          else
          {
            v13 = 2;
          }

          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
          v15 = [v10 uuid];
          [v4 setObject:v14 forKeyedSubscript:v15];
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v7);
      a1 = v23;
    }
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __88__WBSPasswordBreachChecker__checkHighFrequencyBucketForPasswords_withCompletionHandler___block_invoke_cold_1(v16);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = *(a1 + 32);
    v17 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v5);
          }

          v21 = [*(*(&v29 + 1) + 8 * j) uuid];
          [v4 setObject:&unk_1F308E300 forKeyedSubscript:v21];
        }

        v18 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v18);
    }
  }

  (*(*(a1 + 40) + 16))();
  v22 = *MEMORY[0x1E69E9840];
}

- (void)_checkLowFrequencyBatchesWithBagManager:(id)manager completionHandler:(id)handler
{
  handlerCopy = handler;
  managerCopy = manager;
  v8 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_INFO, "Performing low frequency batch lookup.", buf, 2u);
  }

  configuration = [(WBSPasswordBreachContext *)self->_context configuration];
  verboseSensitiveLoggingEnabled = [configuration verboseSensitiveLoggingEnabled];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__WBSPasswordBreachChecker__checkLowFrequencyBatchesWithBagManager_completionHandler___block_invoke;
  v12[3] = &unk_1E7CF3098;
  v12[4] = self;
  v13 = handlerCopy;
  v14 = verboseSensitiveLoggingEnabled;
  v11 = handlerCopy;
  [managerCopy getPasswordsForNextBatchWithCompletionHandler:v12];
}

void __86__WBSPasswordBreachChecker__checkLowFrequencyBatchesWithBagManager_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 count];
  if ([v3 count])
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v4];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v11 topBucketIdentiferAndHash];
          v13 = [v11 uuid];
          [v5 setObject:v12 forKeyedSubscript:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 24);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __86__WBSPasswordBreachChecker__checkLowFrequencyBatchesWithBagManager_completionHandler___block_invoke_2;
    v18[3] = &unk_1E7CF3070;
    v22 = v4;
    v19 = v5;
    v20 = v14;
    v23 = *(a1 + 48);
    v21 = *(a1 + 40);
    v16 = v5;
    [v15 fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes:v16 completionHandler:v18];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __86__WBSPasswordBreachChecker__checkLowFrequencyBatchesWithBagManager_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:*(a1 + 56)];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v28 = a1;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v32;
    *&v6 = 138740227;
    v25 = v6;
    v27 = *v32;
    do
    {
      v9 = 0;
      v29 = v7;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v11 = [v3 objectForKeyedSubscript:{v10, v25}];
        v12 = [v11 first];
        v13 = [v11 second];
        v14 = v13;
        if (v12 && [v13 length])
        {
          v15 = v3;
          v16 = [*(*(v28 + 40) + 8) cryptographicOperations];
          v17 = [v16 unblindHash:v14];

          if (*(v28 + 64) == 1)
          {
            v18 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v20 = MEMORY[0x1E696AEC0];
              v21 = v18;
              v26 = [v20 safari_stringAsHexWithData:v14];
              v22 = [MEMORY[0x1E696AEC0] safari_stringAsHexWithData:v17];
              *buf = v25;
              v36 = v26;
              v37 = 2117;
              v38 = v22;
              v23 = v22;
              _os_log_debug_impl(&dword_1B8447000, v21, OS_LOG_TYPE_DEBUG, "Unblinded %{sensitive}@ to %{sensitive}@", buf, 0x16u);
            }
          }

          if ([v12 containsLowercaseHexStringForData:v17])
          {
            v19 = &unk_1F308E318;
          }

          else
          {
            v19 = &unk_1F308E330;
          }

          [v4 setObject:v19 forKeyedSubscript:v10];

          v3 = v15;
          v8 = v27;
          v7 = v29;
        }

        else
        {
          [v4 setObject:&unk_1F308E300 forKeyedSubscript:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v7);
  }

  (*(*(v28 + 48) + 16))();
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_mergeResultsByUUID:(id)d intoResultsByPersistentIdentifier:(id)identifier usingQueuedPasswordsbyUUID:(id)iD
{
  identifierCopy = identifier;
  iDCopy = iD;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __109__WBSPasswordBreachChecker__mergeResultsByUUID_intoResultsByPersistentIdentifier_usingQueuedPasswordsbyUUID___block_invoke;
  v11[3] = &unk_1E7CF30C0;
  v12 = iDCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = iDCopy;
  [d enumerateKeysAndObjectsUsingBlock:v11];
}

void __109__WBSPasswordBreachChecker__mergeResultsByUUID_intoResultsByPersistentIdentifier_usingQueuedPasswordsbyUUID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 persistentIdentifiers];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 length])
        {
          [*(a1 + 40) setObject:v5 forKeyedSubscript:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)checkPasswordBatchesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_INFO, "Beginning breached password lookup session.", buf, 2u);
  }

  allNonbreachedPasswords = [(WBSPasswordBreachQueuedPasswordBagManager *)self->_bagManager allNonbreachedPasswords];
  v7 = [allNonbreachedPasswords count];
  v8 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(WBSPasswordBreachChecker *)v9 checkPasswordBatchesWithCompletionHandler:allNonbreachedPasswords];
    }

    allValues = [allNonbreachedPasswords allValues];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E7CF3130;
    v11[4] = self;
    v12 = allNonbreachedPasswords;
    v13 = handlerCopy;
    [(WBSPasswordBreachChecker *)self _checkHighFrequencyBucketForPasswords:allValues withCompletionHandler:v11];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_DEFAULT, "Found no passwords to check. Stopping session.", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_38];
  v4 = [v3 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_14];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [v4 count];
  v7 = *(a1 + 32);
  if (v6)
  {
    [*(v7 + 16) reportPasswordCheckBatchResults:v4];
    [*(a1 + 32) _mergeResultsByUUID:v3 intoResultsByPersistentIdentifier:v5 usingQueuedPasswordsbyUUID:*(a1 + 40)];
  }

  else
  {
    v8 = [*(v7 + 8) configuration];
    v9 = [v8 verboseSensitiveLoggingEnabled];

    if (v9)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_cold_1(v10);
      }
    }
  }

  v11 = dispatch_group_create();
  v12 = [*(*(a1 + 32) + 8) configuration];
  v13 = [v12 numberOfBatchesPerSession];

  if (v13)
  {
    v14 = 0;
    while (1)
    {
      dispatch_group_enter(v11);
      v15 = *(a1 + 32);
      v16 = v15[2];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_15;
      v24[3] = &unk_1E7CF3108;
      v24[4] = v15;
      v25 = v5;
      v26 = *(a1 + 40);
      v17 = v11;
      v27 = v17;
      [v15 _checkLowFrequencyBatchesWithBagManager:v16 completionHandler:v24];
      v18 = [*(*(a1 + 32) + 8) configuration];
      v19 = dispatch_time(0, 1000000000 * [v18 lowFrequencyBucketFetchTimeout]);
      v20 = dispatch_group_wait(v17, v19);

      if (v20)
      {
        break;
      }

      ++v14;
      v21 = [*(*(a1 + 32) + 8) configuration];
      v22 = [v21 numberOfBatchesPerSession];

      if (v14 >= v22)
      {
        goto LABEL_10;
      }
    }

    v23 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_cold_2(v23);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
LABEL_10:
    (*(*(a1 + 48) + 16))();
  }
}

void *__70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 unsignedIntegerValue];
  if (v3 > 2)
  {
    return &unk_1F308E300;
  }

  else
  {
    return qword_1E7CF3150[v3];
  }
}

id __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 unsignedIntegerValue] == 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = [a2 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_18_1];
  [*(*(a1 + 32) + 16) reportPasswordCheckBatchResults:v3];
  [*(a1 + 32) _mergeResultsByUUID:v3 intoResultsByPersistentIdentifier:*(a1 + 40) usingQueuedPasswordsbyUUID:*(a1 + 48)];
  dispatch_group_leave(*(a1 + 56));
}

void *__70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_2_16(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 unsignedIntegerValue];
  if (v3 > 2)
  {
    return &unk_1F308E300;
  }

  else
  {
    return qword_1E7CF3168[v3];
  }
}

- (void)checkPasswordBatchesWithCompletionHandler:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = 134283521;
  v6 = [a2 count];
  _os_log_debug_impl(&dword_1B8447000, v3, OS_LOG_TYPE_DEBUG, "Initial bag contains %{private}lu non-breached passwords.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end