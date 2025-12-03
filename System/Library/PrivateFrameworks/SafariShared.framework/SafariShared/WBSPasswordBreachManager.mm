@interface WBSPasswordBreachManager
+ (id)testableManagerWithTestCredentialSource:(id)source store:(id)store configuration:(id)configuration;
+ (void)_getStandardContextWithCompletionHandler:(id)handler;
+ (void)getSharedManagerWithCompletionHandler:(id)handler;
- (BOOL)_canPerformSessionIgnoringMinimumDelay:(BOOL)delay;
- (WBSPasswordBreachManager)initWithContext:(id)context credentialSource:(id)source;
- (id)_checker;
- (id)recentlyBreachedSavedAccounts;
- (void)_addRecentlyBreachedNotificationIfNecessaryWithCompletionHandler:(id)handler;
- (void)_completeSessionWithResults:(id)results completionHandler:(id)handler;
- (void)_showActiveWarningsIfNecessaryWithInitialBagFillState:(int64_t)state completionHandler:(id)handler;
- (void)addResultRecords:(id)records;
- (void)clearAllRecordsWithCompletionHandler:(id)handler;
- (void)clearRecentlyBreachedResultRecords;
- (void)getPasswordEvaluationsForPersistentIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)performNextSessionLookupIgnoringMinimumDelay:(BOOL)delay completionHandler:(id)handler;
- (void)writePasswordEvaluationsToStore:(id)store completionHandler:(id)handler;
@end

@implementation WBSPasswordBreachManager

- (WBSPasswordBreachManager)initWithContext:(id)context credentialSource:(id)source
{
  contextCopy = context;
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = WBSPasswordBreachManager;
  v9 = [(WBSPasswordBreachManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_credentialSource, source);
    v11 = [objc_alloc(MEMORY[0x1E69C8940]) initWithContext:v10->_context];
    results = v10->_results;
    v10->_results = v11;

    v13 = v10;
  }

  return v10;
}

- (id)_checker
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_bagManager)
  {
    v3 = [objc_alloc(MEMORY[0x1E69C8928]) initWithContext:self->_context results:self->_results passwordSource:self->_credentialSource];
    bagManager = self->_bagManager;
    self->_bagManager = v3;
  }

  if (!self->_checker)
  {
    v5 = [objc_alloc(MEMORY[0x1E69C88F8]) initWithContext:self->_context bagManager:self->_bagManager];
    checker = self->_checker;
    self->_checker = v5;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = self->_checker;

  return v7;
}

+ (void)_getStandardContextWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!_getStandardContextWithCompletionHandler__configurationBagLoader)
  {
    v4 = objc_alloc_init(WBSPasswordBreachConfigurationBagLoader);
    v5 = _getStandardContextWithCompletionHandler__configurationBagLoader;
    _getStandardContextWithCompletionHandler__configurationBagLoader = v4;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];
  v8 = [safari_settingsDirectoryURL URLByAppendingPathComponent:@"PasswordBreachStore.plist" isDirectory:0];

  v9 = [objc_alloc(MEMORY[0x1E69C8950]) initWithBackingStoreURL:v8];
  v10 = _getStandardContextWithCompletionHandler__configurationBagLoader;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__WBSPasswordBreachManager__getStandardContextWithCompletionHandler___block_invoke;
  v13[3] = &unk_1E7FC9140;
  v14 = v9;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = v9;
  [v10 getConfigurationBagWithCompletionHandler:v13];
}

void __69__WBSPasswordBreachManager__getStandardContextWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v4 firstConfigurationForSupportedProtocolVersion:1 rampIdentifier:objc_msgSend(v3 allowValuesForTesting:{"rampIdentifier"), 0}];

  if (v6)
  {
    v5 = [objc_alloc(MEMORY[0x1E69C8910]) initWithConfiguration:v6 store:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) saveAndCloseStoreSynchronously];
    (*(*(a1 + 40) + 16))();
  }
}

+ (void)getSharedManagerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&getSharedManagerWithCompletionHandler__sharedLock);
  v5 = getSharedManagerWithCompletionHandler__sharedBreachManager;
  os_unfair_lock_unlock(&getSharedManagerWithCompletionHandler__sharedLock);
  if (v5)
  {
    handlerCopy[2](handlerCopy, v5);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__WBSPasswordBreachManager_getSharedManagerWithCompletionHandler___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (getSharedManagerWithCompletionHandler__onceToken != -1)
    {
      dispatch_once(&getSharedManagerWithCompletionHandler__onceToken, block);
    }

    v6 = getSharedManagerWithCompletionHandler__accessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__WBSPasswordBreachManager_getSharedManagerWithCompletionHandler___block_invoke_5;
    v7[3] = &unk_1E7FB7350;
    v8 = handlerCopy;
    dispatch_async(v6, v7);
  }
}

void __66__WBSPasswordBreachManager_getSharedManagerWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.SafariShared.WBSPasswordBreachManager.sharedInstanceQueue", 0);
  v3 = getSharedManagerWithCompletionHandler__accessQueue;
  getSharedManagerWithCompletionHandler__accessQueue = v2;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__WBSPasswordBreachManager_getSharedManagerWithCompletionHandler___block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(getSharedManagerWithCompletionHandler__accessQueue, block);
}

void __66__WBSPasswordBreachManager_getSharedManagerWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &__block_literal_global_85);
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__WBSPasswordBreachManager_getSharedManagerWithCompletionHandler___block_invoke_4;
  v5[3] = &unk_1E7FC9168;
  v6 = v2;
  v4 = v2;
  [v3 _getStandardContextWithCompletionHandler:v5];
  dispatch_block_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __66__WBSPasswordBreachManager_getSharedManagerWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = objc_alloc_init(WBSPasswordBreachKeychainCredentialSource);
    v5 = [[WBSPasswordBreachManager alloc] initWithContext:v3 credentialSource:v4];

    os_unfair_lock_lock(&getSharedManagerWithCompletionHandler__sharedLock);
    v6 = getSharedManagerWithCompletionHandler__sharedBreachManager;
    getSharedManagerWithCompletionHandler__sharedBreachManager = v5;

    os_unfair_lock_unlock(&getSharedManagerWithCompletionHandler__sharedLock);
  }

  v7 = *(*(a1 + 32) + 16);

  return v7();
}

void __66__WBSPasswordBreachManager_getSharedManagerWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__WBSPasswordBreachManager_getSharedManagerWithCompletionHandler___block_invoke_6;
  block[3] = &unk_1E7FB7350;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

+ (id)testableManagerWithTestCredentialSource:(id)source store:(id)store configuration:(id)configuration
{
  v7 = MEMORY[0x1E69C8910];
  configurationCopy = configuration;
  storeCopy = store;
  sourceCopy = source;
  v11 = [[v7 alloc] initWithConfiguration:configurationCopy store:storeCopy];

  v12 = [[WBSPasswordBreachManager alloc] initWithContext:v11 credentialSource:sourceCopy];

  return v12;
}

- (void)performNextSessionLookupIgnoringMinimumDelay:(BOOL)delay completionHandler:(id)handler
{
  delayCopy = delay;
  handlerCopy = handler;
  if (!+[WBSPasswordBreachManager isPasswordBreachDetectionOn])
  {
    v9 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Refusing to start lookup session: Breach detection is turned off.", buf, 2u);
    }

    goto LABEL_13;
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_sessionTransaction)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v8 = "Refusing to start lookup session: Session is already running.";
LABEL_11:
      _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, v8, buf, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (![(WBSPasswordBreachManager *)self _canPerformSessionIgnoringMinimumDelay:delayCopy])
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v8 = "Refusing to start lookup session: The minimum delay between sessions has not elapsed.";
      goto LABEL_11;
    }

LABEL_12:
    os_unfair_lock_unlock(&self->_lock);
LABEL_13:
    handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F8]);
    goto LABEL_14;
  }

  v10 = os_transaction_create();
  sessionTransaction = self->_sessionTransaction;
  self->_sessionTransaction = v10;

  os_unfair_lock_unlock(&self->_lock);
  _checker = [(WBSPasswordBreachManager *)self _checker];
  fillState = [(WBSPasswordBreachQueuedPasswordBagManager *)self->_bagManager fillState];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__WBSPasswordBreachManager_performNextSessionLookupIgnoringMinimumDelay_completionHandler___block_invoke;
  v14[3] = &unk_1E7FC9190;
  v14[4] = self;
  v16 = fillState;
  v15 = handlerCopy;
  [_checker checkPasswordBatchesWithCompletionHandler:v14];

LABEL_14:
}

void __91__WBSPasswordBreachManager_performNextSessionLookupIgnoringMinimumDelay_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__WBSPasswordBreachManager_performNextSessionLookupIgnoringMinimumDelay_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7FB6E08;
  v7[4] = v4;
  v8 = v3;
  v5 = *(a1 + 48);
  v9 = *(a1 + 40);
  v6 = v3;
  [v4 _showActiveWarningsIfNecessaryWithInitialBagFillState:v5 completionHandler:v7];
}

- (void)_showActiveWarningsIfNecessaryWithInitialBagFillState:(int64_t)state completionHandler:(id)handler
{
  handlerCopy = handler;
  fillState = [(WBSPasswordBreachQueuedPasswordBagManager *)self->_bagManager fillState];
  if (state != 2 && fillState == 2)
  {
    [(WBSPasswordBreachResults *)self->_results markAllCompromisedResultRecordsAsRecentlyBreached];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__WBSPasswordBreachManager__showActiveWarningsIfNecessaryWithInitialBagFillState_completionHandler___block_invoke;
  v9[3] = &unk_1E7FB7350;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(WBSPasswordBreachManager *)self _addRecentlyBreachedNotificationIfNecessaryWithCompletionHandler:v9];
}

- (BOOL)_canPerformSessionIgnoringMinimumDelay:(BOOL)delay
{
  if (delay)
  {
    return 1;
  }

  store = [(WBSPasswordBreachContext *)self->_context store];
  lastSessionCompletionDate = [store lastSessionCompletionDate];

  if (lastSessionCompletionDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:lastSessionCompletionDate];
    v9 = v8;
    configuration = [(WBSPasswordBreachContext *)self->_context configuration];
    [configuration minimumDelayBetweenSessions];
    v3 = v9 > v11;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)_completeSessionWithResults:(id)results completionHandler:(id)handler
{
  resultsCopy = results;
  context = self->_context;
  handlerCopy = handler;
  store = [(WBSPasswordBreachContext *)context store];
  [(WBSPasswordBreachQueuedPasswordBagManager *)self->_bagManager saveBagToStore];
  if ([resultsCopy count])
  {
    date = [MEMORY[0x1E695DF00] date];
    [store setLastSessionCompletionDate:date];
  }

  [store saveStoreSynchronously];
  os_unfair_lock_lock(&self->_lock);
  sessionTransaction = self->_sessionTransaction;
  self->_sessionTransaction = 0;

  os_unfair_lock_unlock(&self->_lock);
  v12 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Lookup session completed.", v13, 2u);
  }

  handlerCopy[2](handlerCopy, resultsCopy);
}

- (void)_addRecentlyBreachedNotificationIfNecessaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  recentlyBreachedSavedAccounts = [(WBSPasswordBreachManager *)self recentlyBreachedSavedAccounts];
  if ([recentlyBreachedSavedAccounts count])
  {
    v6 = objc_alloc_init(WBSPasswordBreachNotificationManager);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __93__WBSPasswordBreachManager__addRecentlyBreachedNotificationIfNecessaryWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E7FB8208;
    v7[4] = self;
    v8 = handlerCopy;
    [(WBSPasswordBreachNotificationManager *)v6 addBreachNotificationForSavedAccounts:recentlyBreachedSavedAccounts withCompletionHandler:v7];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

void __93__WBSPasswordBreachManager__addRecentlyBreachedNotificationIfNecessaryWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __93__WBSPasswordBreachManager__addRecentlyBreachedNotificationIfNecessaryWithCompletionHandler___block_invoke_cold_1(v4, v3);
    }
  }

  [*(*(a1 + 32) + 48) clearRecentlyBreachedResultRecords];
  (*(*(a1 + 40) + 16))();
}

- (id)recentlyBreachedSavedAccounts
{
  recentlyBreachedResultRecords = [(WBSPasswordBreachManager *)self recentlyBreachedResultRecords];
  if ([recentlyBreachedResultRecords count])
  {
    v4 = [recentlyBreachedResultRecords safari_mapObjectsUsingBlock:&__block_literal_global_21];
    v5 = [(WBSPasswordBreachCredentialSource *)self->_credentialSource savedAccountsForPersistentIdentifiers:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)clearRecentlyBreachedResultRecords
{
  [(WBSPasswordBreachResults *)self->_results clearRecentlyBreachedResultRecords];
  store = [(WBSPasswordBreachContext *)self->_context store];
  [store saveStoreSynchronously];
}

- (void)clearAllRecordsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__WBSPasswordBreachManager_clearAllRecordsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

uint64_t __65__WBSPasswordBreachManager_clearAllRecordsWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) clearAllResultsSynchronously];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)addResultRecords:(id)records
{
  [(WBSPasswordBreachResults *)self->_results addResultRecords:records];
  store = [(WBSPasswordBreachContext *)self->_context store];
  [store saveStoreSynchronously];

  [(WBSPasswordBreachManager *)self _showActiveWarningsIfNecessaryWithInitialBagFillState:2 completionHandler:&__block_literal_global_23_0];
}

- (void)getPasswordEvaluationsForPersistentIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  store = [(WBSPasswordBreachContext *)self->_context store];
  passwordEvaluationResuts = [store passwordEvaluationResuts];

  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [passwordEvaluationResuts allKeys];
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    v10 = *MEMORY[0x1E69C8C80];
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v12 options:0];
        v14 = [passwordEvaluationResuts objectForKeyedSubscript:v12];
        v15 = [objc_alloc(MEMORY[0x1E69C8960]) initWithDictionaryRepresentation:v14];
        v16 = v15;
        if (v15)
        {
          versionNumber = [v15 versionNumber];
          [versionNumber doubleValue];
          v19 = v18;
          [v10 doubleValue];
          v21 = v20;

          if (v19 >= v21)
          {
            [v23 setObject:v16 forKeyedSubscript:v13];
          }
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  handlerCopy[2](handlerCopy, v23);
}

- (void)writePasswordEvaluationsToStore:(id)store completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  handlerCopy = handler;
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  savedAccountsWithPasswords = [mEMORY[0x1E69C8A38] savedAccountsWithPasswords];
  v7 = [savedAccountsWithPasswords countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    v23 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(savedAccountsWithPasswords);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [mEMORY[0x1E69C8A38] persistentIdentifierForSavedAccount:v11];
        if (v12)
        {
          password = [v11 password];
          if ([password length])
          {
            v14 = [storeCopy objectForKeyedSubscript:password];
            if (v14)
            {
              v15 = mEMORY[0x1E69C8A38];
              v16 = [objc_alloc(MEMORY[0x1E69C8960]) initWithPasswordEvaluation:v14];
              dictionaryRepresentation = [v16 dictionaryRepresentation];
              v18 = [v12 base64EncodedStringWithOptions:0];
              [v24 setObject:dictionaryRepresentation forKeyedSubscript:v18];

              mEMORY[0x1E69C8A38] = v15;
              v9 = v23;
            }
          }
        }
      }

      v8 = [savedAccountsWithPasswords countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  store = [(WBSPasswordBreachContext *)self->_context store];
  [store setPasswordEvaluationResuts:v24];

  store2 = [(WBSPasswordBreachContext *)self->_context store];
  [store2 saveStoreSynchronously];

  handlerCopy[2](handlerCopy, 1);
}

void __93__WBSPasswordBreachManager__addRecentlyBreachedNotificationIfNecessaryWithCompletionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "Failed to add notification for new breaches: %{public}@", &v5, 0xCu);
}

@end