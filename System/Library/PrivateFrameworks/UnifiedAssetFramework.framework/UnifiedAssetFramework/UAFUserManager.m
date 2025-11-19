@interface UAFUserManager
+ (id)getConcurrentQueue;
+ (id)removeUser:(id)a3;
+ (void)performUserCleanup;
+ (void)performUserCleanupOnQueue:(id)a3 completion:(id)a4;
+ (void)removeUser:(id)a3 queue:(id)a4 completion:(id)a5;
+ (void)updateLastSeenForCurrentUserOnQueue:(id)a3 completion:(id)a4;
+ (void)updateLastSeenForUser:(id)a3 queue:(id)a4 completion:(id)a5;
@end

@implementation UAFUserManager

+ (id)getConcurrentQueue
{
  if (_MergedGlobals_13 != -1)
  {
    dispatch_once(&_MergedGlobals_13, &__block_literal_global_13);
  }

  v3 = qword_1ED7D11A0;

  return v3;
}

void __36__UAFUserManager_getConcurrentQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFUserManager.Concurrent", v2);
  v1 = qword_1ED7D11A0;
  qword_1ED7D11A0 = v0;
}

+ (void)updateLastSeenForCurrentUserOnQueue:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v5 = +[UAFUserManager getConcurrentQueue];
  }

  v16 = 0;
  v7 = [UAFUser currentUserWithNode:0 error:&v16];
  v8 = v16;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    [UAFUserManager updateLastSeenForUser:v7 queue:v5 completion:v6];
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "+[UAFUserManager updateLastSeenForCurrentUserOnQueue:completion:]";
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Could not retrieve current user: %@", buf, 0x16u);
    }

    if (v6)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__UAFUserManager_updateLastSeenForCurrentUserOnQueue_completion___block_invoke;
      block[3] = &unk_1E7FFD940;
      v15 = v6;
      v14 = v9;
      dispatch_async(v5, block);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)updateLastSeenForUser:(id)a3 queue:(id)a4 completion:(id)a5
{
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v8 = +[UAFUserManager getConcurrentQueue];
  }

  v10 = UAFGetLogCategory(&UAFLogContextClient);
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "+[UAFUserManager updateLastSeenForUser:queue:completion:]";
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_INFO, "%s Updating last seen time for %@", buf, 0x16u);
    }

    v27[0] = @"Operation";
    v27[1] = @"SubscriptionUser";
    v28[0] = @"UpdateLastSeen";
    v28[1] = v7;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v13 = +[UAFAssetSetManager createXPCConnection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__UAFUserManager_updateLastSeenForUser_queue_completion___block_invoke_289;
    v19[3] = &unk_1E7FFE2F8;
    v20 = v13;
    v23 = v9;
    v21 = v8;
    v22 = v7;
    v14 = v13;
    [v14 operationWithConfig:v12 completion:v19];

    goto LABEL_11;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v30 = "+[UAFUserManager updateLastSeenForUser:queue:completion:]";
    _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Cannot update last seen time for nil user", buf, 0xCu);
  }

  if (v9)
  {
    v15 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v34[0] = @"Cannot update last seen time for nil user";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v17 = [v15 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v16];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__UAFUserManager_updateLastSeenForUser_queue_completion___block_invoke;
    block[3] = &unk_1E7FFD940;
    v25 = v17;
    v26 = v9;
    v12 = v17;
    dispatch_async(v8, block);

    v14 = v26;
LABEL_11:
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __57__UAFUserManager_updateLastSeenForUser_queue_completion___block_invoke_289(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  if (*(a1 + 56))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__UAFUserManager_updateLastSeenForUser_queue_completion___block_invoke_2;
    block[3] = &unk_1E7FFD620;
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = v3;
    v8 = *(a1 + 56);
    dispatch_async(v4, block);
  }
}

uint64_t __57__UAFUserManager_updateLastSeenForUser_queue_completion___block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v8 = 136315650;
    v9 = "+[UAFUserManager updateLastSeenForUser:queue:completion:]_block_invoke_2";
    v10 = 2112;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_INFO, "%s Update complete for %@: %{public}@", &v8, 0x20u);
  }

  v5 = a1[5];
  result = (*(a1[6] + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)removeUser:(id)a3 queue:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v8 = +[UAFUserManager getConcurrentQueue];
  }

  v10 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "+[UAFUserManager removeUser:queue:completion:]";
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_INFO, "%s Removing user '%@'", buf, 0x16u);
  }

  v23[0] = @"Operation";
  v23[1] = @"SubscriptionUser";
  v24[0] = @"RemoveUser";
  v24[1] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v12 = +[UAFAssetSetManager createXPCConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__UAFUserManager_removeUser_queue_completion___block_invoke;
  v18[3] = &unk_1E7FFE2F8;
  v19 = v12;
  v20 = v8;
  v21 = v7;
  v22 = v9;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v12;
  [v16 operationWithConfig:v11 completion:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __46__UAFUserManager_removeUser_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  if (*(a1 + 56))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__UAFUserManager_removeUser_queue_completion___block_invoke_2;
    block[3] = &unk_1E7FFD620;
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = v3;
    v8 = *(a1 + 56);
    dispatch_async(v4, block);
  }
}

uint64_t __46__UAFUserManager_removeUser_queue_completion___block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v8 = 136315650;
    v9 = "+[UAFUserManager removeUser:queue:completion:]_block_invoke_2";
    v10 = 2112;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_INFO, "%s Remove complete for %@: %{public}@", &v8, 0x20u);
  }

  v5 = a1[5];
  result = (*(a1[6] + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)removeUser:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__8;
  v27 = __Block_byref_object_dispose__8;
  v28 = 0;
  v4 = +[UAFSubscriptionStoreManager defaultManager];
  v5 = (v24 + 5);
  obj = v24[5];
  v6 = [v4 getSubscribers:v3 error:&obj];
  objc_storeStrong(v5, obj);

  if (v24[5])
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = v24[5];
      *v35 = 136315394;
      *&v35[4] = "+[UAFUserManager removeUser:]";
      *&v35[12] = 2112;
      *&v35[14] = v17;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Error retrieving all subscriptions: %@", v35, 0x16u);
    }

    v8 = v24[5];
  }

  else
  {
    *v35 = 0;
    *&v35[8] = v35;
    *&v35[16] = 0x2020000000;
    v36 = 1;
    if (!v6)
    {
      goto LABEL_7;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __29__UAFUserManager_removeUser___block_invoke;
    v18[3] = &unk_1E7FFE320;
    v19 = v3;
    v20 = &v23;
    v21 = v35;
    [v6 enumerateObjectsUsingBlock:v18];

    if ((*(*&v35[8] + 24) & 1) == 0)
    {
      v10 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v30 = "+[UAFUserManager removeUser:]";
        _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Not removing user, failed removing all subscriptions", buf, 0xCu);
      }
    }

    else
    {
LABEL_7:
      v9 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v30 = "+[UAFUserManager removeUser:]";
        v31 = 2112;
        v32 = v3;
        _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s Removing user '%@' from database", buf, 0x16u);
      }

      v10 = +[UAFSubscriptionStoreManager writeManager];
      v11 = [v10 removeUser:v3];
      v12 = v24[5];
      v24[5] = v11;
    }

    v13 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v24[5];
      *buf = 136315650;
      v30 = "+[UAFUserManager removeUser:]";
      v31 = 2112;
      v32 = v3;
      v33 = 2114;
      v34 = v14;
      _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Completing removal of user '%@' with: %{public}@", buf, 0x20u);
    }

    v8 = v24[5];
    _Block_object_dispose(v35, 8);
  }

  _Block_object_dispose(&v23, 8);
  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

void __29__UAFUserManager_removeUser___block_invoke(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = +[UAFSubscriptionStoreManager defaultManager];
  v6 = a1[4];
  v7 = *(a1[5] + 8);
  obj = *(v7 + 40);
  v8 = [v5 getSubscriptions:v3 user:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (*(*(a1[5] + 8) + 40))
  {
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = a1[4];
      v19 = *(*(a1[5] + 8) + 40);
      *buf = 136315906;
      v30 = "+[UAFUserManager removeUser:]_block_invoke";
      v31 = 2112;
      v32 = v18;
      v33 = 2114;
      v34 = v3;
      v35 = 2114;
      v36 = v19;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Could not get subscriptions for %@ subscriber %{public}@: %{public}@", buf, 0x2Au);
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  else
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __29__UAFUserManager_removeUser___block_invoke_293;
    v24 = &unk_1E7FFDEF0;
    v10 = v4;
    v25 = v10;
    [v8 enumerateObjectsUsingBlock:&v21];
    if (![UAFAssetSetManager unsubscribe:v3 subscriptions:v10 user:a1[4] storeManager:0 configurationManager:0 userInitiated:0, v21, v22, v23, v24])
    {
      *(*(a1[6] + 8) + 24) = 0;
      v11 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A588];
      v28 = @"Unsubscribe failed";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v13 = [v11 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v12];
      v14 = *(a1[5] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v16 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v20 = a1[4];
        *buf = 136315906;
        v30 = "+[UAFUserManager removeUser:]_block_invoke_2";
        v31 = 2112;
        v32 = v20;
        v33 = 2114;
        v34 = v3;
        v35 = 2114;
        v36 = v10;
        _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Error removing %@:%{public}@subscriber:%{public}@subscriptionNames", buf, 0x2Au);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __29__UAFUserManager_removeUser___block_invoke_293(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

+ (void)performUserCleanupOnQueue:(id)a3 completion:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v5 = +[UAFUserManager getConcurrentQueue];
  }

  v17 = @"Operation";
  v18[0] = @"UserCleanup";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v8 = +[UAFAssetSetManager createXPCConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__UAFUserManager_performUserCleanupOnQueue_completion___block_invoke;
  v13[3] = &unk_1E7FFE348;
  v15 = v5;
  v16 = v6;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  v11 = v8;
  [v11 operationWithConfig:v7 completion:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __55__UAFUserManager_performUserCleanupOnQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  if (*(a1 + 48))
  {
    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__UAFUserManager_performUserCleanupOnQueue_completion___block_invoke_2;
    v5[3] = &unk_1E7FFD5A8;
    v6 = v3;
    v7 = *(a1 + 48);
    dispatch_async(v4, v5);
  }
}

uint64_t __55__UAFUserManager_performUserCleanupOnQueue_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 136315394;
    v8 = "+[UAFUserManager performUserCleanupOnQueue:completion:]_block_invoke_2";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_INFO, "%s User cleanup complete: %{public}@", &v7, 0x16u);
  }

  v4 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)performUserCleanup
{
  v45 = *MEMORY[0x1E69E9840];
  if (+[UAFUser isMultiUser])
  {
    v2 = +[UAFSubscriptionStoreManager defaultManager];
    v3 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[UAFUserManager performUserCleanup]";
      _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Beginning user expiration", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__8;
    v43 = __Block_byref_object_dispose__8;
    v44 = 0;
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-15552000.0];
    v5 = *(&buf + 1);
    v35 = *(*(&buf + 1) + 40);
    v6 = [v2 getUsersOlderThanDate:v4 error:&v35];
    objc_storeStrong((v5 + 40), v35);

    if (*(*(&buf + 1) + 40))
    {
      v7 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(*(&buf + 1) + 40);
        *v36 = 136315394;
        v37 = "+[UAFUserManager performUserCleanup]";
        v38 = 2114;
        v39 = v8;
        _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Error retrieving users older than timeout: %{public}@", v36, 0x16u);
      }
    }

    else
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __36__UAFUserManager_performUserCleanup__block_invoke;
      v34[3] = &unk_1E7FFE370;
      v34[4] = &buf;
      [v6 enumerateKeysAndObjectsUsingBlock:v34];
      v9 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 136315138;
        v37 = "+[UAFUserManager performUserCleanup]";
        _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s Beginning user validation", v36, 0xCu);
      }

      v10 = [MEMORY[0x1E695DF00] distantFuture];
      v11 = *(&buf + 1);
      obj = *(*(&buf + 1) + 40);
      v12 = [v2 getUsersOlderThanDate:v10 error:&obj];
      objc_storeStrong((v11 + 40), obj);

      if (*(*(&buf + 1) + 40))
      {
        v7 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v13 = *(*(&buf + 1) + 40);
          *v36 = 136315394;
          v37 = "+[UAFUserManager performUserCleanup]";
          v38 = 2114;
          v39 = v13;
          _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Error retrieving all users: %{public}@", v36, 0x16u);
        }
      }

      else
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __36__UAFUserManager_performUserCleanup__block_invoke_302;
        v30[3] = &unk_1E7FFE398;
        v31 = v2;
        p_buf = &buf;
        [v12 enumerateKeysAndObjectsUsingBlock:v30];
        v14 = objc_opt_new();
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __36__UAFUserManager_performUserCleanup__block_invoke_304;
        v28[3] = &unk_1E7FFE050;
        v15 = v14;
        v29 = v15;
        [v12 enumerateKeysAndObjectsUsingBlock:v28];
        v16 = +[UAFUser validLocalNode];
        if (v16)
        {
          v17 = *(&buf + 1);
          v27 = *(*(&buf + 1) + 40);
          v18 = [UAFUser validNodesWithError:&v27];
          objc_storeStrong((v17 + 40), v27);
          if (*(*(&buf + 1) + 40) || !v18)
          {
            v20 = UAFGetLogCategory(&UAFLogContextClient);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = *(*(&buf + 1) + 40);
              *v36 = 136315394;
              v37 = "+[UAFUserManager performUserCleanup]";
              v38 = 2114;
              v39 = v21;
              _os_log_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_DEFAULT, "%s Could not get valid nodes: %{public}@", v36, 0x16u);
            }
          }

          else
          {
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __36__UAFUserManager_performUserCleanup__block_invoke_308;
            v23[3] = &unk_1E7FFE3E8;
            v24 = v16;
            v26 = &buf;
            v25 = v18;
            [v15 enumerateKeysAndObjectsUsingBlock:v23];
            v19 = UAFGetLogCategory(&UAFLogContextClient);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *v36 = 136315138;
              v37 = "+[UAFUserManager performUserCleanup]";
              _os_log_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_DEFAULT, "%s End of user cleanup", v36, 0xCu);
            }

            v20 = v24;
          }
        }

        else
        {
          v18 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v36 = 136315138;
            v37 = "+[UAFUserManager performUserCleanup]";
            _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s Local Node is nil", v36, 0xCu);
          }
        }

        v7 = v31;
      }

      v6 = v12;
    }

    _Block_object_dispose(&buf, 8);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __36__UAFUserManager_performUserCleanup__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  obj = *(v4 + 40);
  v5 = [UAFUser isSystemUser:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = UAFGetLogCategory(&UAFLogContextClient);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 136315650;
      v17 = "+[UAFUserManager performUserCleanup]_block_invoke";
      v18 = 2112;
      v19 = v3;
      v20 = 2114;
      v21 = v9;
      v10 = "%s Could not determine if '%@' is system user, skipping: %{public}@";
      v11 = v7;
      v12 = 32;
LABEL_7:
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    if (v8)
    {
      *buf = 136315394;
      v17 = "+[UAFUserManager performUserCleanup]_block_invoke";
      v18 = 2112;
      v19 = v3;
      v10 = "%s User '%@' is expired, but system user, keeping";
      v11 = v7;
      v12 = 22;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (v8)
  {
    *buf = 136315394;
    v17 = "+[UAFUserManager performUserCleanup]_block_invoke";
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Beginning expiration removal of %@", buf, 0x16u);
  }

  v14 = [UAFUserManager removeUser:v3];
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];
}

void __36__UAFUserManager_performUserCleanup__block_invoke_302(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = [v4 getSubscribers:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 136315650;
      v14 = "+[UAFUserManager performUserCleanup]_block_invoke";
      v15 = 2112;
      v16 = v3;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Error retrieving subscribers for user '%@': %{public}@", buf, 0x20u);
    }
  }

  else if (!v6 || ![v6 count])
  {
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "+[UAFUserManager performUserCleanup]_block_invoke";
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s Removing user that has no subscriptions: '%@'", buf, 0x16u);
    }

    v10 = [UAFUserManager removeUser:v3];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __36__UAFUserManager_performUserCleanup__block_invoke_304(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"Node"];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_1F3B6B510;
  }

  v11 = v7;
  v8 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v8)
  {
    v9 = objc_opt_new();
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v11];
  }

  v10 = [*(a1 + 32) objectForKeyedSubscript:v11];
  [v10 addObject:v5];
}

void __36__UAFUserManager_performUserCleanup__block_invoke_308(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isEqualToString:v5])
  {
    v7 = v6;
    v8 = *(*(a1 + 48) + 8);
    obj = *(v8 + 40);
    v9 = [UAFUser validLocalUsers:v7 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    if (v9 && !*(*(*(a1 + 48) + 8) + 40))
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __36__UAFUserManager_performUserCleanup__block_invoke_309;
      v16[3] = &unk_1E7FFE3C0;
      v17 = v9;
      v9 = v9;
      [v7 enumerateObjectsUsingBlock:v16];
    }

    else
    {
      v10 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 136315650;
        v20 = "+[UAFUserManager performUserCleanup]_block_invoke";
        v21 = 2112;
        v22 = v7;
        v23 = 2114;
        v24 = v13;
        _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Could not retrieve valid local users for %@: %{public}@", buf, 0x20u);
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  if (([*(a1 + 40) containsObject:v5] & 1) == 0)
  {
    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "+[UAFUserManager performUserCleanup]_block_invoke";
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Node '%@' removed, removing all users from node", buf, 0x16u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __36__UAFUserManager_performUserCleanup__block_invoke_310;
    v14[3] = &unk_1E7FFE3C0;
    v15 = v5;
    [v6 enumerateObjectsUsingBlock:v14];
    v7 = v15;
    goto LABEL_13;
  }

LABEL_14:

  v12 = *MEMORY[0x1E69E9840];
}

void __36__UAFUserManager_performUserCleanup__block_invoke_309(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "+[UAFUserManager performUserCleanup]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Removing deleted local user '%@'", &v7, 0x16u);
    }

    v5 = [UAFUserManager removeUser:v3];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __36__UAFUserManager_performUserCleanup__block_invoke_310(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 136315650;
    v9 = "+[UAFUserManager performUserCleanup]_block_invoke";
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Removing user '%@' from removed node '%@'", &v8, 0x20u);
  }

  v6 = [UAFUserManager removeUser:v3];
  v7 = *MEMORY[0x1E69E9840];
}

@end