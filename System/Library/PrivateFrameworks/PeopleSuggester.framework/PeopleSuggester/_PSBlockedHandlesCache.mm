@interface _PSBlockedHandlesCache
+ (id)sharedBlockedHandlesCache;
- (BOOL)isHandleBlocked:(id)a3;
- (_PSBlockedHandlesCache)init;
- (uint64_t)beginSyncingWithTU;
- (void)beginSyncingWithTU;
- (void)handlePrivacyManagerChangeNotification:(id)a3;
- (void)rebuildCacheFromPrivacyManager;
- (void)rebuildCacheWithBlockedHandles:(id)a3;
@end

@implementation _PSBlockedHandlesCache

+ (id)sharedBlockedHandlesCache
{
  if (sharedBlockedHandlesCache__pasOnceToken1 != -1)
  {
    +[_PSBlockedHandlesCache sharedBlockedHandlesCache];
  }

  v3 = sharedBlockedHandlesCache_cache;

  return v3;
}

- (_PSBlockedHandlesCache)init
{
  v5.receiver = self;
  v5.super_class = _PSBlockedHandlesCache;
  v2 = [(_PSBlockedHandlesCache *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_PSBlockedHandlesCache *)v2 rebuildCacheWithBlockedHandles:MEMORY[0x1E695E0F0]];
  }

  return v3;
}

- (BOOL)isHandleBlocked:(id)a3
{
  v4 = a3;
  v5 = (*(self->_isHandleBlocked + 2))();
  v6 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(_PSBlockedHandlesCache *)v4 isHandleBlocked:v5, v6];
  }

  v7 = (*(self->_isHandleBlocked + 2))();
  return v7;
}

- (void)beginSyncingWithTU
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = getTUPrivacyRulesChangedNotificationSymbolLoc_ptr;
  v13 = getTUPrivacyRulesChangedNotificationSymbolLoc_ptr;
  if (!getTUPrivacyRulesChangedNotificationSymbolLoc_ptr)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getTUPrivacyRulesChangedNotificationSymbolLoc_block_invoke;
    v8[3] = &unk_1E7C23BF0;
    v9 = &v10;
    v5 = TelephonyUtilitiesLibrary();
    v11[3] = dlsym(v5, "TUPrivacyRulesChangedNotification");
    getTUPrivacyRulesChangedNotificationSymbolLoc_ptr = *(v9[1] + 24);
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v4)
  {
    v7 = [_PSBlockedHandlesCache beginSyncingWithTU];
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v7);
  }

  [v3 addObserver:self selector:sel_handlePrivacyManagerChangeNotification_ name:*v4 object:0];

  v6 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_DEFAULT, "_PSBlockedHandlesCache will perform initial fetch from TU", v8, 2u);
  }

  [(_PSBlockedHandlesCache *)self rebuildCacheFromPrivacyManager];
}

- (void)handlePrivacyManagerChangeNotification:(id)a3
{
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "_PSBlockedHandlesCache handling change notification", buf, 2u);
  }

  if (handlePrivacyManagerChangeNotification___pasOnceToken6 != -1)
  {
    [_PSBlockedHandlesCache handlePrivacyManagerChangeNotification:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65___PSBlockedHandlesCache_handlePrivacyManagerChangeNotification___block_invoke_2;
  block[3] = &unk_1E7C24268;
  block[4] = self;
  v5 = handlePrivacyManagerChangeNotification___pasExprOnceResult;
  dispatch_async(v5, block);
}

- (void)rebuildCacheFromPrivacyManager
{
  v3 = os_transaction_create();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getTUPrivacyManagerClass_softClass;
  v13 = getTUPrivacyManagerClass_softClass;
  if (!getTUPrivacyManagerClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getTUPrivacyManagerClass_block_invoke;
    v9[3] = &unk_1E7C23BF0;
    v9[4] = &v10;
    __getTUPrivacyManagerClass_block_invoke(v9);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  v6 = [v4 sharedPrivacyManager];
  v7 = [v6 privacyRules];
  v8 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_16_0];

  [(_PSBlockedHandlesCache *)self rebuildCacheWithBlockedHandles:v8];
}

- (void)rebuildCacheWithBlockedHandles:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    if ([v4 count] > 0x3E7)
    {
      v13 = MEMORY[0x1E69C5CC8];
      v14 = [v4 count];
      LODWORD(v15) = 897988541;
      v16 = [v13 bloomFilterInMemoryWithNumberOfValuesN:v14 errorRateP:v15];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v17 = v4;
      v18 = [v17 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = *v36;
        do
        {
          v22 = 0;
          v23 = v20;
          do
          {
            if (*v36 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v24 = *(*(&v35 + 1) + 8 * v22);
            v25 = objc_autoreleasePoolPush();
            v20 = [v16 computeHashesForString:v24 reuse:v23];

            [v16 setWithHashes:v20];
            objc_autoreleasePoolPop(v25);
            ++v22;
            v23 = v20;
          }

          while (v19 != v22);
          v19 = [v17 countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v19);
      }

      v26 = self;
      objc_sync_enter(v26);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __57___PSBlockedHandlesCache_rebuildCacheWithBlockedHandles___block_invoke_3;
      v33[3] = &unk_1E7C242D0;
      v34 = v16;
      v27 = v16;
      v28 = MEMORY[0x1B8C8C060](v33);
      isHandleBlocked = v26->_isHandleBlocked;
      v26->_isHandleBlocked = v28;

      objc_sync_exit(v26);
      v10 = @"bloom filter";
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4];
      v6 = self;
      objc_sync_enter(v6);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __57___PSBlockedHandlesCache_rebuildCacheWithBlockedHandles___block_invoke_2;
      v39[3] = &unk_1E7C242D0;
      v40 = v5;
      v7 = v5;
      v8 = MEMORY[0x1B8C8C060](v39);
      v9 = v6->_isHandleBlocked;
      v6->_isHandleBlocked = v8;

      objc_sync_exit(v6);
      v10 = @"set";
    }
  }

  else
  {
    v11 = self;
    objc_sync_enter(v11);
    v12 = v11->_isHandleBlocked;
    v11->_isHandleBlocked = &__block_literal_global_22_0;

    objc_sync_exit(v11);
    v10 = @"empty";
  }

  v30 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v4 count];
    *buf = 134218242;
    v42 = v31;
    v43 = 2112;
    v44 = v10;
    _os_log_impl(&dword_1B5ED1000, v30, OS_LOG_TYPE_DEFAULT, "_PSBlockedHandlesCache rebuilt cache with %tu blocked handles using %@ path", buf, 0x16u);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)isHandleBlocked:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138478083;
  v5 = a1;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_DEBUG, "_PSBlockedHandlesCache _isHandleBlocked:%{private}@ result:%d", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

- (uint64_t)beginSyncingWithTU
{
  dlerror();
  v0 = abort_report_np();
  return [_PSBlockedHandlesCache handlePrivacyManagerChangeNotification:v0];
}

@end