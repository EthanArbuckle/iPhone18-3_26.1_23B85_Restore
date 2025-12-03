@interface PLClientServerTransaction
+ (BOOL)_archiveRecoveryHistoryForPathManager:(id)manager error:(id *)error;
+ (BOOL)_hasExcessiveRecoveryAttemptsForPathManager:(id)manager;
+ (BOOL)_isOutstandingTransactionAtPath:(id)path getScopeValues:(unint64_t *)values;
+ (id)_allTransactionPathsForPathManager:(id)manager;
+ (id)_changeScopesFromXPCDictionary:(id)dictionary;
+ (id)_filePathForTransactionWithToken:(id)token pathManager:(id)manager;
+ (id)_libraryURLFromXPCDictionary:(id)dictionary;
+ (id)_outstandingTransactionScopesByPathForPathManager:(id)manager;
+ (id)_recoveryHistoryFilePathForPathManager:(id)manager;
+ (id)_scopeValuesByScope;
+ (id)_serverTransactionForPathManager:(id)manager isNew:(BOOL *)new identifier:(const char *)identifier;
+ (id)_transactionTokenFromXPCDictionary:(id)dictionary;
+ (id)beginClientTransactionWithChangeScopes:(id)scopes pathManager:(id)manager identifier:(const char *)identifier;
+ (id)beginServerTransactionWithClientTransactionFromXPCDictionary:(id)dictionary pathManager:(id)manager identifier:(const char *)identifier;
+ (id)beginServerTransactionWithToken:(id)token changeScopes:(id)scopes pathManager:(id)manager identifier:(const char *)identifier;
+ (id)descriptionOfAllTransactionFilesForPathManager:(id)manager;
+ (id)descriptionOfTransactionScopes:(id)scopes;
+ (id)handleOutstandingTransactionsForPathManager:(id)manager sqliteErrorHandler:(id)handler handler:(id)a5;
+ (id)scopesFromScopeValues:(unint64_t)values;
+ (id)serverTransactionQueue;
+ (id)transactionFromUserInfo:(id)info;
+ (unint64_t)_readScopeValuesFromFileDescriptor:(int)descriptor;
+ (unint64_t)scopeValuesFromScopes:(id)scopes;
+ (void)_checkForAndHandleExcessiveRecoveryAttemptsForPathManager:(id)manager sqliteErrorHandler:(id)handler;
+ (void)_cleanupAllTransactionsScopesByPath:(id)path;
+ (void)_recordRecoveryAttemptForPathManager:(id)manager;
+ (void)addTransaction:(id)transaction toUserInfo:(id)info;
+ (void)addTransaction:(id)transaction toXPCDictionary:(id)dictionary;
+ (void)cancelOutstandingTransactionHandlerTimer:(id)timer;
+ (void)removeTransactionFromUserInfo:(id)info;
- (PLClientServerTransaction)initWithPathManager:(id)manager;
- (void)addPostDelayedSaveActionsReply:(id)reply;
- (void)stillAlive;
- (void)transferReplyBlocksTo:(id)to;
@end

@implementation PLClientServerTransaction

+ (id)serverTransactionQueue
{
  pl_dispatch_once();
  v2 = serverTransactionQueue_sQueue;

  return v2;
}

+ (id)_scopeValuesByScope
{
  pl_dispatch_once();
  v2 = _scopeValuesByScope__valueByScope;

  return v2;
}

- (void)transferReplyBlocksTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (toCopy != self)
  {
    os_unfair_lock_lock(&self->_pdsaLock);
    v5 = [(NSMutableArray *)self->_pdsaLock_postDelayedSaveActionsReplyBlocks copy];
    pdsaLock_postDelayedSaveActionsReplyBlocks = self->_pdsaLock_postDelayedSaveActionsReplyBlocks;
    self->_pdsaLock_postDelayedSaveActionsReplyBlocks = 0;

    os_unfair_lock_unlock(&self->_pdsaLock);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(PLClientServerTransaction *)toCopy addPostDelayedSaveActionsReply:*(*(&v12 + 1) + 8 * v11++), v12];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)addPostDelayedSaveActionsReply:(id)reply
{
  replyCopy = reply;
  v3 = replyCopy;
  PLRunWithUnfairLock();
}

void __60__PLClientServerTransaction_addPostDelayedSaveActionsReply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1 + 32) + 40);
  }

  v6 = _Block_copy(*(a1 + 40));
  [v2 addObject:v6];
}

- (void)stillAlive
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = NSStringFromSelector(a2);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "%@ : %@", &v6, 0x16u);
  }
}

- (PLClientServerTransaction)initWithPathManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PLClientServerTransaction;
  v6 = [(PLClientServerTransaction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pathManager, manager);
    v7->_pdsaLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

+ (id)descriptionOfAllTransactionFilesForPathManager:(id)manager
{
  v33 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v5 = [self _allTransactionPathsForPathManager:managerCopy];
  string = [MEMORY[0x1E696AD60] string];
  if ([v5 count])
  {
    v25 = managerCopy;
    v7 = [managerCopy privateCacheDirectoryWithSubType:2];
    v8 = [v5 count];
    v9 = [v5 count];
    v10 = @"s";
    if (v9 == 1)
    {
      v10 = &stru_1F0F06D80;
    }

    v24 = v7;
    [string appendFormat:@"Found %d transaction file%@ in %@\n", v8, v10, v7];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v5;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v27 = 0;
          v16 = [self _isOutstandingTransactionAtPath:v15 getScopeValues:&v27];
          v17 = [PLClientServerTransaction scopesFromScopeValues:v27];
          lastPathComponent = [v15 lastPathComponent];
          v19 = lastPathComponent;
          if (v16)
          {
            v20 = @"%@ [outstanding]:\n";
          }

          else
          {
            v20 = @"%@ [active]:\n";
          }

          [string appendFormat:v20, lastPathComponent];

          allObjects = [v17 allObjects];
          v22 = [self descriptionOfTransactionScopes:allObjects];
          [string appendFormat:@"\t{%@}\n", v22];
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    managerCopy = v25;
  }

  else
  {
    [string appendString:@"No transaction files found\n"];
  }

  return string;
}

+ (id)descriptionOfTransactionScopes:(id)scopes
{
  v18 = *MEMORY[0x1E69E9840];
  scopesCopy = scopes;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [scopesCopy sortedArrayUsingSelector:{sel_caseInsensitiveCompare_, 0}];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) substringFromIndex:18];
        [array addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [array componentsJoinedByString:{@", "}];

  return v11;
}

+ (id)transactionFromUserInfo:(id)info
{
  v15 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = [infoCopy objectForKey:@"PLClientServerTransactionUserInfoKey"];
  v6 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412802;
    v10 = v7;
    v11 = 2048;
    v12 = infoCopy;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ : %p -> %@", &v9, 0x20u);
  }

  return v5;
}

+ (void)removeTransactionFromUserInfo:(id)info
{
  v11 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138412546;
    v8 = v6;
    v9 = 2048;
    v10 = infoCopy;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ : %p", &v7, 0x16u);
  }

  [infoCopy removeObjectForKey:@"PLClientServerTransactionUserInfoKey"];
}

+ (void)addTransaction:(id)transaction toUserInfo:(id)info
{
  v16 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  infoCopy = info;
  v8 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = transactionCopy;
    v14 = 2048;
    v15 = infoCopy;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "%@ : %@ -> %p", &v10, 0x20u);
  }

  if (transactionCopy)
  {
    [infoCopy setObject:transactionCopy forKey:@"PLClientServerTransactionUserInfoKey"];
  }
}

+ (void)addTransaction:(id)transaction toXPCDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  dictionaryCopy = dictionary;
  v8 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    v17 = 138412802;
    v18 = v9;
    v19 = 2048;
    v20 = dictionaryCopy;
    v21 = 2112;
    v22 = transactionCopy;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "%@ : %p -> %@", &v17, 0x20u);
  }

  transactionToken = [transactionCopy transactionToken];
  v11 = transactionToken;
  if (dictionaryCopy)
  {
    if (transactionToken)
    {
      v12 = MEMORY[0x19EAF0BF0](dictionaryCopy);
      v13 = MEMORY[0x1E69E9E80];
      if (v12 == MEMORY[0x1E69E9E80])
      {
        xpc_dictionary_set_string(dictionaryCopy, "PLClientServerTransactionXPCKey", [v11 UTF8String]);
        changeScopes = [transactionCopy changeScopes];
        if (changeScopes && MEMORY[0x19EAF0BF0](dictionaryCopy) == v13)
        {
          xpc_dictionary_set_uint64(dictionaryCopy, "PLClientServerTransactionScopesXPCKey", [PLClientServerTransaction scopeValuesFromScopes:changeScopes]);
        }

        pathManager = [transactionCopy pathManager];
        libraryURL = [pathManager libraryURL];

        if (libraryURL && MEMORY[0x19EAF0BF0](dictionaryCopy) == v13)
        {
          PLXPCDictionarySetURL();
        }
      }
    }
  }
}

+ (id)_libraryURLFromXPCDictionary:(id)dictionary
{
  v16 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy && MEMORY[0x19EAF0BF0](dictionaryCopy) == MEMORY[0x1E69E9E80])
  {
    v6 = PLURLFromXPCDictionary();
  }

  else
  {
    v6 = 0;
  }

  v7 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v8;
    v12 = 2048;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "%@ : %p -> %@", &v10, 0x20u);
  }

  return v6;
}

+ (id)_changeScopesFromXPCDictionary:(id)dictionary
{
  v16 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy && MEMORY[0x19EAF0BF0](dictionaryCopy) == MEMORY[0x1E69E9E80])
  {
    v6 = [PLClientServerTransaction scopesFromScopeValues:xpc_dictionary_get_uint64(v5, "PLClientServerTransactionScopesXPCKey")];
  }

  else
  {
    v6 = 0;
  }

  v7 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v8;
    v12 = 2048;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "%@ : %p -> %@", &v10, 0x20u);
  }

  return v6;
}

+ (id)_transactionTokenFromXPCDictionary:(id)dictionary
{
  v17 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy && MEMORY[0x19EAF0BF0](dictionaryCopy) == MEMORY[0x1E69E9E80] && (string = xpc_dictionary_get_string(v5, "PLClientServerTransactionXPCKey")) != 0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  }

  else
  {
    v6 = 0;
  }

  v7 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = NSStringFromSelector(a2);
    v11 = 138412802;
    v12 = v8;
    v13 = 2048;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "%@ : %p -> %@", &v11, 0x20u);
  }

  return v6;
}

+ (void)_cleanupAllTransactionsScopesByPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [pathCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 138412546;
    v14 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(pathCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        fileManager = [MEMORY[0x1E69BF238] fileManager];
        v15 = 0;
        v11 = [fileManager removeItemAtPath:v9 error:&v15];
        v12 = v15;

        if ((v11 & 1) == 0)
        {
          v13 = PLClientServerTransactionsGetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v14;
            v21 = v9;
            v22 = 2112;
            v23 = v12;
            _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to remove transaction path %@ : %@", buf, 0x16u);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [pathCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }
}

+ (void)cancelOutstandingTransactionHandlerTimer:(id)timer
{
  if (timer)
  {
    dispatch_source_cancel(timer);
  }
}

+ (id)handleOutstandingTransactionsForPathManager:(id)manager sqliteErrorHandler:(id)handler handler:(id)a5
{
  managerCopy = manager;
  handlerCopy = handler;
  v11 = a5;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLClientServerTransaction.m" lineNumber:827 description:{@"%@ can only be called from assetsd", v19}];
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v12 = +[PLConcurrencyLimiter sharedLimiter];
  sharedUtilityQueue = [v12 sharedUtilityQueue];
  v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, sharedUtilityQueue);

  v20 = managerCopy;
  v22 = handlerCopy;
  v23 = v11;
  v21 = v14;
  pl_dispatch_source_set_event_handler();
  v15 = dispatch_time(0, 3000000000);
  dispatch_source_set_timer(v21, v15, 0xB2D05E00uLL, 0x989680uLL);
  dispatch_resume(v21);
  v16 = v21;

  _Block_object_dispose(v24, 8);

  return v16;
}

void __100__PLClientServerTransaction_handleOutstandingTransactionsForPathManager_sqliteErrorHandler_handler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (+[PLPhotoLibrary areOpportunisticTasksDisabled])
  {
    HIDWORD(v2) = -858993459 * *(*(*(a1 + 64) + 8) + 24) + 429496728;
    LODWORD(v2) = HIDWORD(v2);
    if ((v2 >> 1) <= 0x19999998)
    {
      v3 = PLClientServerTransactionsGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 1717986919 * *(*(*(a1 + 64) + 8) + 24);
        *buf = 67109120;
        LODWORD(v28) = (v4 >> 34) + (v4 >> 63);
        _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "delaying check for outstandingTransactions while opportunistic tasks are disabled [%d]", buf, 8u);
      }

      ++*(*(*(a1 + 64) + 8) + 24);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69BF360] transaction:"+[PLClientServerTransaction handleOutstandingTransactionsForPathManager:sqliteErrorHandler:handler:]_block_invoke"];
    v6 = [*(a1 + 72) _outstandingTransactionScopesByPathForPathManager:*(a1 + 32)];
    v7 = PLClientServerTransactionsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "scopes by path: %@", buf, 0xCu);
    }

    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [v8 BOOLForKey:@"DisableCrashRecovery"];

    if (v9)
    {
      v10 = PLClientServerTransactionsGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v28 = @"DisableCrashRecovery";
        v29 = 2112;
        v30 = v6;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "%@ set: Ignoring all outsatnding scopes by path: %@", buf, 0x16u);
      }

      [*(a1 + 72) _cleanupAllTransactionsScopesByPath:v6];
    }

    else if ([(__CFString *)v6 count])
    {
      v11 = PLClientServerTransactionsGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [(__CFString *)v6 count];
        *buf = 67109120;
        LODWORD(v28) = v12;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "handling %d outstanding transactions...", buf, 8u);
      }

      [*(a1 + 72) _recordRecoveryAttemptForPathManager:*(a1 + 32)];
      [*(a1 + 72) _checkForAndHandleExcessiveRecoveryAttemptsForPathManager:*(a1 + 32) sqliteErrorHandler:*(a1 + 48)];
      v13 = [MEMORY[0x1E695DFA8] set];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = v6;
      v15 = [(__CFString *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [(__CFString *)v14 objectForKey:*(*(&v22 + 1) + 8 * i), v22];
            [(__CFString *)v13 unionSet:v19];
          }

          v16 = [(__CFString *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v16);
      }

      v20 = PLClientServerTransactionsGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v13;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "outstandingTransactions scopes: %@", buf, 0xCu);
      }

      if (*(a1 + 56))
      {
        v21 = objc_autoreleasePoolPush();
        (*(*(a1 + 56) + 16))();
        objc_autoreleasePoolPop(v21);
      }

      [*(a1 + 72) _cleanupAllTransactionsScopesByPath:{v14, v22}];
    }

    [v5 stillAlive];
    dispatch_source_cancel(*(a1 + 40));
  }
}

+ (id)_outstandingTransactionScopesByPathForPathManager:(id)manager
{
  v23 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  context = objc_autoreleasePoolPush();
  v16 = managerCopy;
  [self _allTransactionPathsForPathManager:managerCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v17 = 0;
        if ([self _isOutstandingTransactionAtPath:v11 getScopeValues:&v17])
        {
          v13 = [PLClientServerTransaction scopesFromScopeValues:v17];
          [dictionary setObject:v13 forKey:v11];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);

  return dictionary;
}

+ (BOOL)_isOutstandingTransactionAtPath:(id)path getScopeValues:(unint64_t *)values
{
  pathCopy = path;
  v7 = open([pathCopy fileSystemRepresentation], 164, 438);
  if ((v7 & 0x80000000) == 0)
  {
    if (values)
    {
      *values = [self _readScopeValuesFromFileDescriptor:v7];
    }

    flock(v7, 8);
    v8 = v7;
    goto LABEL_5;
  }

  if (values)
  {
    v10 = open([pathCopy fileSystemRepresentation], 132, 438);
    if ((v10 & 0x80000000) == 0)
    {
      v8 = v10;
      *values = [self _readScopeValuesFromFileDescriptor:v10];
LABEL_5:
      close(v8);
    }
  }

  return v7 >= 0;
}

+ (unint64_t)_readScopeValuesFromFileDescriptor:(int)descriptor
{
  __buf = 0;
  if (pread(descriptor, &__buf, 8uLL, 0) == 8)
  {
    return __buf;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

+ (id)_allTransactionPathsForPathManager:(id)manager
{
  v23 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v3 = [managerCopy privateCacheDirectoryWithSubType:2];
  fileManager = [MEMORY[0x1E69BF238] fileManager];
  v5 = [fileManager contentsOfDirectoryAtPath:v3 error:0];

  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];
        if (v14)
        {
          v15 = [v3 stringByAppendingPathComponent:v12];
          [array addObject:v15];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return array;
}

+ (void)_checkForAndHandleExcessiveRecoveryAttemptsForPathManager:(id)manager sqliteErrorHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  handlerCopy = handler;
  if ([self _hasExcessiveRecoveryAttemptsForPathManager:managerCopy])
  {
    v12 = 0;
    v8 = [self _archiveRecoveryHistoryForPathManager:managerCopy error:&v12];
    v9 = v12;
    v10 = PLClientServerTransactionsGetLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "triggering full rebuild due to excessive recovery attempts.", buf, 2u);
      }

      [managerCopy setSqliteErrorForRebuildReason:11 allowsExit:1];
      handlerCopy[2](handlerCopy);
    }

    else
    {
      if (v11)
      {
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "unable to full rebuild after excessive recovery attempts due to inability to archive history file: %@", buf, 0xCu);
      }
    }
  }
}

+ (BOOL)_archiveRecoveryHistoryForPathManager:(id)manager error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v6 = [objc_opt_class() _recoveryHistoryFilePathForPathManager:managerCopy];
  v7 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v10 = [v7 stringWithFormat:@"archivedrecoveryhistory-%@", uUIDString];

  v11 = [managerCopy photoDirectoryWithType:6];

  v12 = [v11 stringByAppendingPathComponent:v10];
  v13 = [v12 stringByAppendingPathExtension:@"plist"];

  v14 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v13;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "archiving recovery history file to: %@...", buf, 0xCu);
  }

  fileManager = [MEMORY[0x1E69BF238] fileManager];
  v19 = 0;
  v16 = [fileManager moveItemAtPath:v6 toPath:v13 error:&v19];
  v17 = v19;
  if (error && (v16 & 1) == 0)
  {
    v17 = v17;
    *error = v17;
  }

  return v16;
}

+ (BOOL)_hasExcessiveRecoveryAttemptsForPathManager:(id)manager
{
  v18 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v4 = [objc_opt_class() _recoveryHistoryFilePathForPathManager:managerCopy];

  v5 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:v4];
  if ([v5 count] >= 0xA)
  {
    v7 = [v5 sortedArrayUsingSelector:sel_compare_];
    if ([v7 isEqualToArray:v5])
    {
      firstObject = [v5 firstObject];
      lastObject = [v5 lastObject];
      [lastObject timeIntervalSinceDate:firstObject];
      v11 = v10;
      v6 = v10 < 600.0;
      if (v10 < 600.0)
      {
        v12 = PLClientServerTransactionsGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = 134218240;
          v15 = [v5 count];
          v16 = 2048;
          v17 = v11;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "found excessive recovery attempts (count: %lu within: %g seconds)", &v14, 0x16u);
        }
      }
    }

    else
    {
      firstObject = PLClientServerTransactionsGetLog();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_19BF1F000, firstObject, OS_LOG_TYPE_DEFAULT, "detected out of order recovery attempt, ignoring history for now.", &v14, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)_recordRecoveryAttemptForPathManager:(id)manager
{
  managerCopy = manager;
  v8 = [objc_opt_class() _recoveryHistoryFilePathForPathManager:managerCopy];

  v4 = [MEMORY[0x1E695DF70] arrayWithContentsOfFile:v8];
  date = [MEMORY[0x1E695DF00] date];
  [v4 addObject:date];
  if ([v4 count] >= 0xB)
  {
    [v4 removeObjectAtIndex:0];
  }

  [v4 writeToFile:v8 atomically:0];
  v6 = MEMORY[0x1E69BF238];
  fileManager = [MEMORY[0x1E69BF238] fileManager];
  LOBYTE(v6) = [v6 changeFileOwnerToMobileAtPath:v8 error:0 usingFileManager:fileManager];

  if ((v6 & 1) == 0)
  {
    NSLog(&cfstr_Clientservertr.isa, v8, 0);
  }
}

+ (id)_recoveryHistoryFilePathForPathManager:(id)manager
{
  v3 = [manager photoDirectoryWithType:6];
  v4 = [v3 stringByAppendingPathComponent:@"recoveryhistory"];
  v5 = [v4 stringByAppendingPathExtension:@"plist"];

  return v5;
}

+ (id)beginServerTransactionWithClientTransactionFromXPCDictionary:(id)dictionary pathManager:(id)manager identifier:(const char *)identifier
{
  managerCopy = manager;
  dictionaryCopy = dictionary;
  v10 = [PLClientServerTransaction _transactionTokenFromXPCDictionary:dictionaryCopy];
  v11 = [PLClientServerTransaction _changeScopesFromXPCDictionary:dictionaryCopy];

  if (v10)
  {
    v12 = [self beginServerTransactionWithToken:v10 changeScopes:v11 pathManager:managerCopy identifier:identifier];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)beginServerTransactionWithToken:(id)token changeScopes:(id)scopes pathManager:(id)manager identifier:(const char *)identifier
{
  v40 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  scopesCopy = scopes;
  managerCopy = manager;
  if (PLIsAssetsd())
  {
    if (managerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v27 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLClientServerTransaction.m" lineNumber:617 description:{@"%@ can only be called from assetsd", v27}];

  if (!managerCopy)
  {
LABEL_3:
    scopesCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing pathManager in clientServerTransaction call with token %@, scopes %@", tokenCopy, scopesCopy];
    PLSimulateCrash();
  }

LABEL_4:
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__100187;
  v32 = __Block_byref_object_dispose__100188;
  v33 = 0;
  v14 = [managerCopy privateCacheDirectoryWithSubType:2];
  v15 = [v14 stringByAppendingPathComponent:tokenCopy];
  serverTransactionQueue = [self serverTransactionQueue];
  v17 = managerCopy;
  v18 = v15;
  v19 = tokenCopy;
  v20 = scopesCopy;
  pl_dispatch_sync();

  v21 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = NSStringFromSelector(a2);
    v23 = v29[5];
    *buf = 138412802;
    v35 = v22;
    v36 = 2112;
    v37 = v19;
    v38 = 2112;
    v39 = v23;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "%@ : %@ -> %@", buf, 0x20u);
  }

  v24 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v24;
}

void __97__PLClientServerTransaction_beginServerTransactionWithToken_changeScopes_pathManager_identifier___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v2 = [*(a1 + 72) _serverTransactionForPathManager:*(a1 + 32) isNew:&v11 identifier:*(a1 + 80)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (v11 == 1)
  {
    v5 = open([*(a1 + 40) fileSystemRepresentation], 145, 438);
    if ((v5 & 0x80000000) != 0)
    {
      v7 = PLClientServerTransactionsGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(*(a1 + 88));
        v9 = *(a1 + 40);
        v10 = *__error();
        *buf = 138412802;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 1024;
        v17 = v10;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "%@ Failed to open %@: %d", buf, 0x1Cu);
      }
    }

    else
    {
      v6 = v5;
      [*(*(*(a1 + 64) + 8) + 40) setTransactionToken:*(a1 + 48)];
      [*(*(*(a1 + 64) + 8) + 40) setFileDescriptor:v6];
      [*(*(*(a1 + 64) + 8) + 40) setPath:*(a1 + 40)];
      [*(*(*(a1 + 64) + 8) + 40) _enqueueChangeScopes:*(a1 + 56)];
    }
  }

  else
  {
    [*(*(*(a1 + 64) + 8) + 40) _enqueueChangeScopes:*(a1 + 56)];
    unlink([*(a1 + 40) fileSystemRepresentation]);
  }
}

+ (id)scopesFromScopeValues:(unint64_t)values
{
  v19 = *MEMORY[0x1E69E9840];
  _scopeValuesByScope = [self _scopeValuesByScope];
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = _scopeValuesByScope;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v14}];
        if (([v12 unsignedLongLongValue] & ~values) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (unint64_t)scopeValuesFromScopes:(id)scopes
{
  v19 = *MEMORY[0x1E69E9840];
  scopesCopy = scopes;
  _scopeValuesByScope = [self _scopeValuesByScope];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = scopesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [_scopeValuesByScope objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        v9 |= [v12 unsignedLongLongValue];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __48__PLClientServerTransaction__scopeValuesByScope__block_invoke()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v2[0] = @"PLTransactionScopeMomentGeneration";
  v2[1] = @"PLTransactionScopeCloudFeed";
  v3[0] = &unk_1F0FBE6F8;
  v3[1] = &unk_1F0FBE710;
  v2[2] = @"PLTransactionScopeAlbumCounts";
  v2[3] = @"PLTransactionScopeAlbumTrashCycle";
  v3[2] = &unk_1F0FBE728;
  v3[3] = &unk_1F0FBE740;
  v2[4] = @"PLTransactionScopeImportSessionCounts";
  v2[5] = @"PLTransactionScopeDuplicateAnalysis";
  v3[4] = &unk_1F0FBE758;
  v3[5] = &unk_1F0FBE770;
  v2[6] = @"PLTransactionScopeFilePersistence";
  v2[7] = @"PLTransactionScopeFileIngestion";
  v3[6] = &unk_1F0FBE788;
  v3[7] = &unk_1F0FBE7A0;
  v2[8] = @"PLTransactionScopePlaceholderDownload";
  v2[9] = @"PLTransactionScopeSocialGroupAssetPersonEdges";
  v3[8] = &unk_1F0FBE7B8;
  v3[9] = &unk_1F0FBE7D0;
  v2[10] = @"PLTransactionScopeSocialGroupAssetContainment";
  v2[11] = @"PLTransactionScopeSocialGroupDeduplication";
  v3[10] = &unk_1F0FBE7E8;
  v3[11] = &unk_1F0FBE800;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:12];
  v1 = _scopeValuesByScope__valueByScope;
  _scopeValuesByScope__valueByScope = v0;
}

+ (id)_filePathForTransactionWithToken:(id)token pathManager:(id)manager
{
  tokenCopy = token;
  v6 = [manager privateCacheDirectoryWithSubType:2];
  v7 = [v6 stringByAppendingPathComponent:tokenCopy];

  return v7;
}

+ (id)beginClientTransactionWithChangeScopes:(id)scopes pathManager:(id)manager identifier:(const char *)identifier
{
  v40 = *MEMORY[0x1E69E9840];
  scopesCopy = scopes;
  managerCopy = manager;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  if (!managerCopy)
  {
    scopesCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing pathManager in clientServerTransaction call with token %@, scopes %@", uUIDString, scopesCopy];
    PLSimulateCrash();
  }

  v14 = +[_PLClientTransaction _fdResourceSemaphore];
  v15 = v14;
  if (v14)
  {
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  }

  v16 = [self _filePathForTransactionWithToken:uUIDString pathManager:managerCopy];
  v17 = open([(_PLClientTransaction *)v16 fileSystemRepresentation], 2705, 438);
  if ((v17 & 0x80000000) == 0)
  {
    v18 = v17;
LABEL_16:
    v23 = [[_PLClientTransaction alloc] initWithPathManager:managerCopy identifier:identifier];
    [(PLClientServerTransaction *)v23 setTransactionToken:uUIDString];
    [(_PLClientTransaction *)v23 setFileDescriptor:v18];
    [(_PLClientTransaction *)v23 setPath:v16];
    [(_PLClientTransaction *)v23 addChangeScopes:scopesCopy];
    [(_PLClientTransaction *)v23 setFdResourceSemaphore:v15];
    goto LABEL_17;
  }

  aSelector = a2;
  v19 = [managerCopy privateCacheDirectoryWithSubType:2];
  if (v19)
  {
    v33 = 0;
    v20 = [MEMORY[0x1E69BF238] createDirectoryAtPath:v19 error:&v33];
    v21 = v33;
    if (v20)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v35 = v19;
    v36 = 2112;
    v37 = v21;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Unable to create directory: %@, reason: %@", buf, 0x16u);
  }

LABEL_14:
  v18 = open([(_PLClientTransaction *)v16 fileSystemRepresentation], 2705, 438);

  if ((v18 & 0x80000000) == 0)
  {
    a2 = aSelector;
    goto LABEL_16;
  }

  v29 = PLClientServerTransactionsGetLog();
  a2 = aSelector;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = NSStringFromSelector(aSelector);
    v31 = *__error();
    *buf = 138412802;
    v35 = v30;
    v36 = 2112;
    v37 = v16;
    v38 = 1024;
    v39 = v31;
    _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "%@ Failed to open transaction %@: %d", buf, 0x1Cu);
  }

  if (v15)
  {
    dispatch_semaphore_signal(v15);
  }

  v23 = 0;
LABEL_17:
  if ((PLIsAssetsd() & 1) != 0 || PLIsSuppressingLogsForUnitTesting())
  {
    v24 = PLClientServerTransactionsGetLog();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    v25 = NSStringFromSelector(a2);
    *buf = 138412546;
    v35 = v25;
    v36 = 2112;
    v37 = v23;
    v26 = v24;
    v27 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v24 = PLClientServerTransactionsGetLog();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v25 = NSStringFromSelector(a2);
    *buf = 138412546;
    v35 = v25;
    v36 = 2112;
    v37 = v23;
    v26 = v24;
    v27 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_19BF1F000, v26, v27, "%@ : %@", buf, 0x16u);

LABEL_24:

  return v23;
}

+ (id)_serverTransactionForPathManager:(id)manager isNew:(BOOL *)new identifier:(const char *)identifier
{
  managerCopy = manager;
  v10 = +[PLClientServerTransaction serverTransactionQueue];
  dispatch_assert_queue_V2(v10);

  if (!new)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLClientServerTransaction.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"outIsNew"}];
  }

  if (_serverTransactionForPathManager_isNew_identifier__onceToken != -1)
  {
    dispatch_once(&_serverTransactionForPathManager_isNew_identifier__onceToken, &__block_literal_global_169_100214);
  }

  photosDatabasePath = [managerCopy photosDatabasePath];
  v12 = [_serverTransactionForPathManager_isNew_identifier__sServerTransactionsByLibraryPath objectForKey:photosDatabasePath];
  if (!v12)
  {
    v12 = [[_PLServerTransaction alloc] initWithPathManager:managerCopy identifier:identifier];
    [_serverTransactionForPathManager_isNew_identifier__sServerTransactionsByLibraryPath setObject:v12 forKey:photosDatabasePath];
    *new = 1;
  }

  return v12;
}

void __79__PLClientServerTransaction__serverTransactionForPathManager_isNew_identifier___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = _serverTransactionForPathManager_isNew_identifier__sServerTransactionsByLibraryPath;
  _serverTransactionForPathManager_isNew_identifier__sServerTransactionsByLibraryPath = v0;
}

void __51__PLClientServerTransaction_serverTransactionQueue__block_invoke()
{
  v0 = dispatch_queue_create("PLClientServerTransactions", 0);
  v1 = serverTransactionQueue_sQueue;
  serverTransactionQueue_sQueue = v0;
}

@end