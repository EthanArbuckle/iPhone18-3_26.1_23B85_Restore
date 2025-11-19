@interface UAFAssetSetManager
+ (BOOL)cacheDeleteDisabledForAutoAssetType:(id)a3 autoAssetSpecifier:(id)a4;
+ (BOOL)subscribe:(id)a3 subscriptions:(id)a4 user:(id)a5 storeManager:(id)a6 configurationManager:(id)a7 userInitiated:(BOOL)a8;
+ (BOOL)unsubscribe:(id)a3 subscriptions:(id)a4 user:(id)a5 storeManager:(id)a6 configurationManager:(id)a7 userInitiated:(BOOL)a8;
+ (UAFAssetSetManager)sharedManager;
+ (id)_subscriptionDiffersFromDB:(id)a3 subscriber:(id)a4 user:(id)a5 error:(id *)a6;
+ (id)createProxyXPCConnection;
+ (id)createSubscriptionXPCConnection;
+ (id)createXPCConnection;
+ (id)defaults;
+ (id)generateInformationWithError:(id *)a3;
+ (id)getAssetSetUsages:(id)a3 storeManager:(id)a4;
+ (id)getComparableUsages:(id)a3;
+ (id)getConcurrentQueue;
+ (id)getSerialQueue;
+ (id)getSubscriptions:(id)a3 storeManager:(id)a4;
+ (id)getSystemUsageAssets:(id)a3;
+ (id)resetAssetSets:(id)a3;
+ (id)sysdiagnoseInformationWithError:(id *)a3;
+ (unint64_t)coalesceDownloadStatus:(id)a3;
+ (void)autoAssetDetailsForAssetNamed:(id)a3 assetSet:(id)a4 usages:(id)a5 autoAssetType:(id *)a6 autoAssetSpecifier:(id *)a7;
+ (void)configureAssetDelivery:(id)a3 configurationManager:(id)a4;
+ (void)configureAssetDelivery:(id)a3 configurationManager:(id)a4 lockIfUnchanged:(BOOL)a5;
+ (void)disableCacheDelete:(BOOL)a3 forAutoAssetType:(id)a4 autoAssetSpecifier:(id)a5;
+ (void)processAssetSet:(id)a3 allAssets:(id)a4;
- (BOOL)cacheDeleteDisabledForAssetNamed:(id)a3 assetSet:(id)a4 usages:(id)a5;
- (UAFAssetSetManager)init;
- (id)assetNamesForAssetSet:(id)a3 usages:(id)a4;
- (id)assetSetInfo:(id)a3;
- (id)assetSetUsagesForSubscribers:(id)a3 storeManager:(id)a4 configurationManager:(id)a5 anyUnknown:(BOOL *)a6 error:(id *)a7;
- (id)diskSpaceNeededForSubscriber:(id)a3 subscriptionName:(id)a4 error:(id *)a5;
- (id)diskSpaceNeededForSubscribers:(id)a3 error:(id *)a4;
- (id)diskSpaceNeededForSubscribers:(id)a3 storeManager:(id)a4 configurationManager:(id)a5 error:(id *)a6;
- (id)knownUsagesForAssetSet:(id)a3 usageType:(id)a4;
- (id)observeAssetSet:(id)a3 policies:(id)a4 queue:(id)a5 handler:(id)a6;
- (id)retrieveAssetSet:(id)a3 usages:(id)a4 consistencyToken:(id)a5;
- (id)retrieveAssetSet:(id)a3 usages:(id)a4 disableExperimentation:(BOOL)a5;
- (id)subscribedUsagesForAssetSet:(id)a3;
- (id)subscriptions:(id)a3 subscriber:(id)a4 user:(id)a5 storeManager:(id)a6 error:(id *)a7;
- (id)subscriptionsForSubscriber:(id)a3;
- (unint64_t)downloadStatusForSubscriber:(id)a3 subscriptionName:(id)a4;
- (unint64_t)downloadStatusForSubscribers:(id)a3;
- (void)downloadStatusForSubscriber:(id)a3 subscriptionName:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)downloadStatusForSubscribers:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)markAssetsExpired:(id)a3 completion:(id)a4;
- (void)removeObserver:(id)a3;
- (void)resetAssetSets:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)retrieveAssetSet:(id)a3 usages:(id)a4 consistencyToken:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)retrieveAssetSet:(id)a3 usages:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)subscribe:(id)a3 subscriptions:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)subscribe:(id)a3 subscriptions:(id)a4 user:(id)a5 userInitiated:(BOOL)a6 queue:(id)a7 completion:(id)a8;
- (void)unsubscribe:(id)a3 subscriptionNames:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)updateAssetsForSubscriber:(id)a3 subscriptionName:(id)a4 policies:(id)a5 queue:(id)a6 detailedProgress:(id)a7 completion:(id)a8;
- (void)updateAssetsForSubscriber:(id)a3 subscriptionName:(id)a4 policies:(id)a5 queue:(id)a6 progress:(id)a7 completion:(id)a8;
- (void)updateAssetsForSubscriber:(id)a3 subscriptionName:(id)a4 policies:(id)a5 queue:(id)a6 progress:(id)a7 detailedProgress:(id)a8 completion:(id)a9 storeManager:(id)a10 configurationManager:(id)a11;
- (void)updateAssetsForSubscribers:(id)a3 policies:(id)a4 queue:(id)a5 detailedProgress:(id)a6 completion:(id)a7;
- (void)updateAssetsForSubscribers:(id)a3 policies:(id)a4 queue:(id)a5 progress:(id)a6 detailedProgress:(id)a7 internalProgress:(id)a8 completion:(id)a9 storeManager:(id)a10 configurationManager:(id)a11;
@end

@implementation UAFAssetSetManager

- (UAFAssetSetManager)init
{
  v7.receiver = self;
  v7.super_class = UAFAssetSetManager;
  v2 = [(UAFAssetSetManager *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    assetSetObservers = v2->_assetSetObservers;
    v2->_assetSetObservers = v3;

    v5 = v2;
  }

  return v2;
}

+ (UAFAssetSetManager)sharedManager
{
  if (qword_1ED7D11C8 != -1)
  {
    dispatch_once(&qword_1ED7D11C8, &__block_literal_global_398);
  }

  v3 = qword_1ED7D11D0;

  return v3;
}

void __35__UAFAssetSetManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(UAFAssetSetManager);
  v1 = qword_1ED7D11D0;
  qword_1ED7D11D0 = v0;
}

+ (id)getConcurrentQueue
{
  if (_MergedGlobals_14 != -1)
  {
    dispatch_once(&_MergedGlobals_14, &__block_literal_global_14);
  }

  v3 = qword_1ED7D11B0;

  return v3;
}

+ (id)defaults
{
  if (qword_1ED7D11D8 != -1)
  {
    dispatch_once(&qword_1ED7D11D8, &__block_literal_global_410);
  }

  v3 = qword_1ED7D11E0;

  return v3;
}

+ (id)getSerialQueue
{
  if (qword_1ED7D11B8 != -1)
  {
    dispatch_once(&qword_1ED7D11B8, &__block_literal_global_310_0);
  }

  v3 = qword_1ED7D11C0;

  return v3;
}

void __40__UAFAssetSetManager_getConcurrentQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFAssetSetManager.Concurrent", v2);
  v1 = qword_1ED7D11B0;
  qword_1ED7D11B0 = v0;
}

void __36__UAFAssetSetManager_getSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFAssetSetManager.Serial", v2);
  v1 = qword_1ED7D11C0;
  qword_1ED7D11C0 = v0;
}

+ (id)createXPCConnection
{
  v2 = [[UAFXPCConnection alloc] initWithDefaultService];

  return v2;
}

+ (id)createProxyXPCConnection
{
  v2 = [[UAFXPCConnection alloc] initWithDefaultService];

  return v2;
}

+ (id)createSubscriptionXPCConnection
{
  v2 = [[UAFXPCConnection alloc] initWithSubscriptionServiceName];

  return v2;
}

+ (id)_subscriptionDiffersFromDB:(id)a3 subscriber:(id)a4 user:(id)a5 error:(id *)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v31 = a4;
  v10 = a5;
  v11 = +[UAFSubscriptionStoreManager defaultManager];
  v30 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v28 = a6;
    v14 = 0;
    v15 = *v34;
    while (2)
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v33 + 1) + 8 * v16);
        v19 = objc_autoreleasePoolPush();
        v32 = v17;
        v20 = [v18 isValid:0 error:&v32];
        v14 = v32;

        if ((v20 & 1) == 0)
        {
          v23 = UAFGetLogCategory(&UAFLogContextSubscription);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v38 = "+[UAFAssetSetManager _subscriptionDiffersFromDB:subscriber:user:error:]";
            v39 = 2114;
            v40 = v31;
            v41 = 2114;
            v42 = v18;
            v43 = 2114;
            v44 = v14;
            _os_log_error_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_ERROR, "%s Subscription invalid for subscriber %{public}@, subscription:%{public}@: %{public}@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v19);
          v30 = 0;
          goto LABEL_16;
        }

        v21 = [v18 name];
        v22 = [v11 getSubscription:v21 subscriber:v31 user:v10 error:0];

        if (!v22 || ([v18 isEqual:v22] & 1) == 0)
        {
          [v30 addObject:v18];
        }

        objc_autoreleasePoolPop(v19);
        ++v16;
        v17 = v14;
      }

      while (v13 != v16);
      v13 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

LABEL_16:
    a6 = v28;
  }

  else
  {
    v14 = 0;
  }

  if (a6)
  {
    v24 = v14;
    *a6 = v14;
  }

  v25 = [v30 allObjects];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)getComparableUsages:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__UAFAssetSetManager_getComparableUsages___block_invoke;
  v8[3] = &unk_1E7FFE028;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __42__UAFAssetSetManager_getComparableUsages___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a2;
  v7 = [v5 setWithArray:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

+ (BOOL)subscribe:(id)a3 subscriptions:(id)a4 user:(id)a5 storeManager:(id)a6 configurationManager:(id)a7 userInitiated:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v16)
  {
    v16 = +[UAFSubscriptionStoreManager writeManager];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v18 = +[UAFAssetSetManager getSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke;
  block[3] = &unk_1E7FFE4A0;
  v27 = v14;
  v28 = v13;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = &v34;
  v33 = a8;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v13;
  v23 = v14;
  dispatch_sync(v18, block);

  v24 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);
  return v24;
}

void __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v53 = 0;
  v5 = [UAFAssetSetManager _subscriptionDiffersFromDB:v2 subscriber:v3 user:v4 error:&v53];
  v6 = v53;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if ([v5 count])
    {
      v10 = *(a1 + 56);
      v52 = 0;
      v11 = [v10 getAllSubscriptions:&v52];
      v8 = v52;
      if (v8)
      {
        v12 = UAFGetLogCategory(&UAFLogContextSubscription);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v55 = "+[UAFAssetSetManager subscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
          v56 = 2114;
          v57 = v8;
          _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s Could not read subscriptions from database: %{public}@", buf, 0x16u);
        }

        *(*(*(a1 + 72) + 8) + 24) = 0;
      }

      else
      {
        v17 = [MEMORY[0x1E695DF90] dictionary];
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_319;
        v49[3] = &unk_1E7FFE450;
        v18 = v17;
        v50 = v18;
        v38 = v11;
        v19 = v11;
        v51 = v19;
        [v19 enumerateKeysAndObjectsUsingBlock:v49];
        v20 = [v19 objectForKeyedSubscript:*(a1 + 48)];

        if (!v20 || ([v19 objectForKeyedSubscript:*(a1 + 48)], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "objectForKeyedSubscript:", *(a1 + 40)), v22 = objc_claimAutoreleasedReturnValue(), v21, !v22))
        {
          v22 = [MEMORY[0x1E695DEC8] array];
        }

        v37 = v22;
        v23 = objc_opt_new();
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_2;
        v47[3] = &unk_1E7FFDEF0;
        v24 = v23;
        v48 = v24;
        [v22 enumerateObjectsUsingBlock:v47];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_3;
        v45[3] = &unk_1E7FFDEF0;
        v25 = v24;
        v46 = v25;
        [v5 enumerateObjectsUsingBlock:v45];
        v26 = [v18 objectForKeyedSubscript:*(a1 + 48)];

        if (!v26)
        {
          v27 = objc_opt_new();
          [v18 setObject:v27 forKeyedSubscript:*(a1 + 48)];
        }

        v28 = [v25 allValues];
        v29 = [v18 objectForKeyedSubscript:*(a1 + 48)];
        [v29 setObject:v28 forKeyedSubscript:*(a1 + 40)];

        v30 = [UAFSubscriptionStoreManager flattenSubscriptions:v18];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_4;
        v39[3] = &unk_1E7FFE478;
        v40 = *(a1 + 48);
        v41 = *(a1 + 56);
        v42 = *(a1 + 40);
        v43 = v5;
        v44 = *(a1 + 32);
        v31 = MEMORY[0x1BFB33950](v39);
        v32 = [UAFSubscriptionStoreManager flattenSubscriptions:v19];
        [UAFAssetSetManager configureAssetDelivery:*(a1 + 56) configurationManager:*(a1 + 64) lockIfUnchanged:0 oldSubscriptions:v32 newSubscriptions:v30 userInitiated:*(a1 + 80)];
        *(*(*(a1 + 72) + 8) + 24) = v31[2](v31);

        v11 = v38;
      }
    }

    else
    {
      v13 = UAFGetLogCategory(&UAFLogContextSubscription);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v16 = *(a1 + 48);
        *buf = 136315906;
        v55 = "+[UAFAssetSetManager subscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
        v56 = 2114;
        v57 = v14;
        v58 = 2114;
        v59 = v15;
        v60 = 2112;
        v61 = v16;
        _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s No subscription changes for subscriptions %{public}@ for subscriber %{public}@ and user: %@", buf, 0x2Au);
      }

      v8 = 0;
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }
  }

  else
  {
    v8 = v6;
    v9 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v34 = *(a1 + 32);
      v35 = *(a1 + 40);
      v36 = *(a1 + 48);
      *buf = 136316162;
      v55 = "+[UAFAssetSetManager subscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
      v56 = 2114;
      v57 = v34;
      v58 = 2114;
      v59 = v35;
      v60 = 2112;
      v61 = v36;
      v62 = 2114;
      v63 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Not attempting to update subscriptions for subscriptions %{public}@ for subscriber %{public}@ and user: %@: %{public}@", buf, 0x34u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_319(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 objectForKeyedSubscript:v5];
  v6 = [v3 dictionaryWithDictionary:v7];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 name];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 name];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

uint64_t __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_4(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v23 = 0;
  v3 = [UAFUser nodeForUser:v2 error:&v23];
  v4 = v23;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 136315650;
      v25 = "+[UAFAssetSetManager subscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke_4";
      v26 = 2112;
      v27 = v8;
      v28 = 2114;
      v29 = v5;
      v9 = "%s Failed to determine node for user '%@': %{public}@";
      v10 = v7;
      v11 = 32;
LABEL_15:
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v12 = [*(a1 + 40) subscribe:*(a1 + 48) subscriptions:*(a1 + 56) user:*(a1 + 32) node:v3];
  v13 = UAFGetLogCategory(&UAFLogContextSubscription);
  v7 = v13;
  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 64);
      v21 = *(a1 + 48);
      v22 = *(a1 + 32);
      *buf = 136315906;
      v25 = "+[UAFAssetSetManager subscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
      v26 = 2114;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      v30 = 2112;
      v31 = v22;
      v9 = "%s Failed to update storage to reflect subscriptions %{public}@ for subscriber %{public}@ and user: %@";
      v10 = v7;
      v11 = 42;
      goto LABEL_15;
    }

LABEL_12:

    v17 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 64);
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    *buf = 136315906;
    v25 = "+[UAFAssetSetManager subscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
    v26 = 2114;
    v27 = v14;
    v28 = 2114;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Updated storage to reflect subscriptions %{public}@ for subscriber %{public}@ and user: %@", buf, 0x2Au);
  }

  [UAFInstrumentationProvider logSubscriptionCompleteForSubscriptions:*(a1 + 56) subscriber:*(a1 + 48) user:*(a1 + 32)];
  v17 = 1;
LABEL_13:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)unsubscribe:(id)a3 subscriptions:(id)a4 user:(id)a5 storeManager:(id)a6 configurationManager:(id)a7 userInitiated:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v16)
  {
    v16 = +[UAFSubscriptionStoreManager writeManager];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v18 = +[UAFAssetSetManager getSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__UAFAssetSetManager_unsubscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke;
  block[3] = &unk_1E7FFE4A0;
  v27 = v14;
  v28 = v16;
  v29 = v13;
  v30 = v15;
  v31 = v17;
  v32 = &v34;
  v33 = a8;
  v19 = v17;
  v20 = v15;
  v21 = v13;
  v22 = v16;
  v23 = v14;
  dispatch_sync(v18, block);

  v24 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);
  return v24;
}

void __101__UAFAssetSetManager_unsubscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v43;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v42 + 1) + 8 * i);
        v10 = [*(a1 + 40) getSubscription:v9 subscriber:*(a1 + 48) user:*(a1 + 56) error:0];
        if (v10)
        {
          [v2 addObject:v9];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v11 = *(a1 + 40);
    v41 = 0;
    v12 = [v11 getAllSubscriptions:&v41];
    v13 = v41;
    if (v13)
    {
      v14 = UAFGetLogCategory(&UAFLogContextSubscription);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v47 = "+[UAFAssetSetManager unsubscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
        v48 = 2114;
        v49 = v13;
        _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Could not read subscriptions from database: %{public}@", buf, 0x16u);
      }

      *(*(*(a1 + 72) + 8) + 24) = 0;
    }

    else
    {
      v19 = [MEMORY[0x1E695DF90] dictionary];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __101__UAFAssetSetManager_unsubscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_327;
      v38[3] = &unk_1E7FFE450;
      v20 = v19;
      v39 = v20;
      v31 = v12;
      v21 = v12;
      v40 = v21;
      [v21 enumerateKeysAndObjectsUsingBlock:v38];
      v22 = [v21 objectForKeyedSubscript:*(a1 + 56)];

      if (!v22 || ([v21 objectForKeyedSubscript:*(a1 + 56)], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "objectForKeyedSubscript:", *(a1 + 48)), v24 = objc_claimAutoreleasedReturnValue(), v23, !v24))
      {
        v24 = [MEMORY[0x1E695DEC8] array];
      }

      v25 = [MEMORY[0x1E695DF70] arrayWithArray:v24];
      [v25 removeObjectsInArray:v3];
      v26 = [v20 objectForKeyedSubscript:*(a1 + 56)];
      [v26 setObject:v25 forKeyedSubscript:*(a1 + 48)];

      v27 = [UAFSubscriptionStoreManager flattenSubscriptions:v20];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __101__UAFAssetSetManager_unsubscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_2;
      v32[3] = &unk_1E7FFE478;
      v33 = *(a1 + 40);
      v34 = *(a1 + 56);
      v35 = *(a1 + 48);
      v36 = v2;
      v37 = *(a1 + 32);
      v28 = MEMORY[0x1BFB33950](v32);
      v29 = [UAFSubscriptionStoreManager flattenSubscriptions:v21];
      [UAFAssetSetManager configureAssetDelivery:*(a1 + 40) configurationManager:*(a1 + 64) lockIfUnchanged:0 oldSubscriptions:v29 newSubscriptions:v27 userInitiated:*(a1 + 80)];
      *(*(*(a1 + 72) + 8) + 24) = v28[2](v28);

      v12 = v31;
    }
  }

  else
  {
    v15 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      *buf = 136315906;
      v47 = "+[UAFAssetSetManager unsubscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
      v48 = 2114;
      v49 = v16;
      v50 = 2114;
      v51 = v17;
      v52 = 2112;
      v53 = v18;
      _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s No changes found for subscriptions %{public}@ for subscriber %{public}@ and user: %@", buf, 0x2Au);
    }

    v13 = 0;
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __101__UAFAssetSetManager_unsubscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_327(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 objectForKeyedSubscript:v5];
  v6 = [v3 dictionaryWithDictionary:v7];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

uint64_t __101__UAFAssetSetManager_unsubscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v26 = 0;
  v4 = [v2 getUserNodeName:v3 error:&v26];
  v5 = v26;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 136315650;
      v28 = "+[UAFAssetSetManager unsubscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke_2";
      v29 = 2112;
      v30 = v9;
      v31 = 2114;
      v32 = v6;
      v10 = "%s Failed to determine node for user '%@': %{public}@";
      v11 = v8;
      v12 = 32;
LABEL_15:
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = [*(a1 + 56) allObjects];
  LOBYTE(v14) = [v13 unsubscribe:v14 subscriptions:v15 user:*(a1 + 40) node:v4];

  v16 = UAFGetLogCategory(&UAFLogContextSubscription);
  v8 = v16;
  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 64);
      v25 = *(a1 + 40);
      v24 = *(a1 + 48);
      *buf = 136315906;
      v28 = "+[UAFAssetSetManager unsubscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
      v29 = 2114;
      v30 = v23;
      v31 = 2114;
      v32 = v24;
      v33 = 2112;
      v34 = v25;
      v10 = "%s Failed to update storage to reflect subscriptions %{public}@ for subscriber %{public}@ and user: %@";
      v11 = v8;
      v12 = 42;
      goto LABEL_15;
    }

LABEL_12:
    v20 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 64);
    v19 = *(a1 + 40);
    v18 = *(a1 + 48);
    *buf = 136315906;
    v28 = "+[UAFAssetSetManager unsubscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
    v29 = 2114;
    v30 = v17;
    v31 = 2114;
    v32 = v18;
    v33 = 2112;
    v34 = v19;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Updated storage to reflect removal of subscriptions %{public}@ for subscriber %{public}@ and user: %@", buf, 0x2Au);
  }

  v20 = 1;
LABEL_13:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (id)getSubscriptions:(id)a3 storeManager:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v7 = [UAFUser currentUserWithNode:0 error:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = [UAFAssetSetSubscriptionManager getSubscriptions:v5 user:v7 storeManager:v6 error:0];
  }

  else
  {
    v10 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "+[UAFAssetSetManager getSubscriptions:storeManager:]";
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Unable to identify current user: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)getAssetSetUsages:(id)a3 storeManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = +[UAFSubscriptionStoreManager defaultManager];
  }

  v7 = [v6 getSystemAssetSetUsages:v5];

  return v7;
}

- (id)assetSetUsagesForSubscribers:(id)a3 storeManager:(id)a4 configurationManager:(id)a5 anyUnknown:(BOOL *)a6 error:(id *)a7
{
  v66 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v48 = a4;
  v42 = a5;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v14)
  {
    v15 = v14;
    v47 = 0;
    v16 = *v55;
    v43 = *v55;
    v44 = v13;
LABEL_3:
    v17 = 0;
    v45 = v15;
    while (1)
    {
      if (*v55 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v46 = v17;
      v18 = *(*(&v54 + 1) + 8 * v17);
      v19 = [v13 objectForKeyedSubscript:v18];
      v20 = [v19 count];

      if (v20)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v21 = [v13 objectForKeyedSubscript:v18];
        v22 = [v21 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = 0;
          v25 = *v50;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              v27 = v24;
              if (*v50 != v25)
              {
                objc_enumerationMutation(v21);
              }

              v24 = [(UAFAssetSetManager *)self subscriptions:*(*(&v49 + 1) + 8 * i) subscriber:v18 user:0 storeManager:v48 error:a7];

              if (v24 && [v24 count])
              {
                v28 = v47;
                if (!v47)
                {
                  v28 = objc_opt_new();
                }

                v47 = v28;
                [v28 addObjectsFromArray:v24];
              }

              else if (a6)
              {
                *a6 = 1;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v49 objects:v58 count:16];
          }

          while (v23);

          v16 = v43;
          v13 = v44;
          v15 = v45;
        }
      }

      else
      {
        v53 = 0;
        v21 = [(UAFAssetSetManager *)self subscriptions:0 subscriber:v18 user:0 storeManager:v48 error:&v53];
        v29 = v53;
        if (v29)
        {
          v32 = v29;
          v33 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = geteuid();
            *buf = 136316162;
            v60 = "[UAFAssetSetManager assetSetUsagesForSubscribers:storeManager:configurationManager:anyUnknown:error:]";
            v61 = 1024;
            *v62 = v34;
            *&v62[4] = 2114;
            *&v62[6] = v18;
            *&v62[14] = 2114;
            *&v62[16] = 0;
            v63 = 2114;
            v64 = v32;
            _os_log_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_DEFAULT, "%s Unable to get subscriptions for uid: %d Subscriber: '%{public}@' Subscription Name: '%{public}@': %{public}@", buf, 0x30u);
          }

          if (a7)
          {
            v35 = v32;
            *a7 = v32;
          }

          v36 = 0;
          v37 = v42;
          v38 = v47;
          goto LABEL_43;
        }

        if (!v21)
        {
          if (a6)
          {
            *a6 = 1;
          }

          goto LABEL_28;
        }

        v30 = v47;
        if (!v47)
        {
          v30 = objc_opt_new();
        }

        v47 = v30;
        [v30 addObjectsFromArray:v21];
      }

LABEL_28:
      v17 = v46 + 1;
      if (v46 + 1 == v15)
      {
        v31 = [v13 countByEnumeratingWithState:&v54 objects:v65 count:16];
        v15 = v31;
        if (v31)
        {
          goto LABEL_3;
        }

        goto LABEL_40;
      }
    }
  }

  v47 = 0;
LABEL_40:

  v39 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v60 = "[UAFAssetSetManager assetSetUsagesForSubscribers:storeManager:configurationManager:anyUnknown:error:]";
    v61 = 2114;
    *v62 = v13;
    *&v62[8] = 2114;
    *&v62[10] = v47;
    _os_log_debug_impl(&dword_1BCF2C000, v39, OS_LOG_TYPE_DEBUG, "%s Subscriptions for %{public}@: %{public}@", buf, 0x20u);
  }

  v37 = v42;
  v38 = v47;
  v36 = [v42 applySubscriptions:v47];
LABEL_43:

  v40 = *MEMORY[0x1E69E9840];

  return v36;
}

- (void)updateAssetsForSubscribers:(id)a3 policies:(id)a4 queue:(id)a5 progress:(id)a6 detailedProgress:(id)a7 internalProgress:(id)a8 completion:(id)a9 storeManager:(id)a10 configurationManager:(id)a11
{
  v85 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v59 = a6;
  v58 = a7;
  v57 = a8;
  v54 = a9;
  v19 = a10;
  v20 = a11;
  v21 = v20;
  if (v19)
  {
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_15:
    v21 = +[UAFConfigurationManager defaultManager];
    if (v18)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v19 = +[UAFSubscriptionStoreManager defaultManager];
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v18)
  {
    goto LABEL_4;
  }

LABEL_16:
  v18 = +[UAFAssetSetManager getConcurrentQueue];
LABEL_4:
  v22 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v23 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v81 = "[UAFAssetSetManager updateAssetsForSubscribers:policies:queue:progress:detailedProgress:internalProgress:completion:storeManager:configurationManager:]";
    v82 = 2114;
    *v83 = v22;
    *&v83[8] = 2114;
    *&v83[10] = v16;
    _os_log_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_DEFAULT, "%s %{public}@: updateAssets for subscribers '%{public}@'", buf, 0x20u);
  }

  v55 = v18;
  v56 = v22;

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v24 = v17;
  v25 = [v24 countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = *v77;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v77 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v27 |= [*(*(&v76 + 1) + 8 * i) isEqualToString:@"UseCellular"];
      }

      v26 = [v24 countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v26);
  }

  else
  {
    LOBYTE(v27) = 0;
  }

  if ([v16 count])
  {
    v74 = 0;
    v30 = &v74;
    v31 = [(UAFAssetSetManager *)self assetSetUsagesForSubscribers:v16 storeManager:v19 configurationManager:v21 anyUnknown:0 error:&v74];
  }

  else
  {
    v75 = 0;
    v30 = &v75;
    v31 = [v19 getAllSystemAssetSetUsages:&v75];
  }

  v32 = v31;
  v33 = *v30;
  v34 = UAFGetLogCategory(&UAFLogContextClient);
  v35 = v34;
  if (v33)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v36 = geteuid();
      *buf = 136315906;
      v81 = "[UAFAssetSetManager updateAssetsForSubscribers:policies:queue:progress:detailedProgress:internalProgress:completion:storeManager:configurationManager:]";
      v82 = 1024;
      *v83 = v36;
      *&v83[4] = 2114;
      *&v83[6] = v16;
      *&v83[14] = 2114;
      *&v83[16] = v33;
      _os_log_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_DEFAULT, "%s Unable to get asset set usages for uid: %d Subscribers: '%{public}@': %{public}@", buf, 0x26u);
    }

    v38 = v54;
    v37 = v55;
    if (v54)
    {
      dispatch_async(v55, v54);
    }
  }

  else
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v81 = "[UAFAssetSetManager updateAssetsForSubscribers:policies:queue:progress:detailedProgress:internalProgress:completion:storeManager:configurationManager:]";
      v82 = 2114;
      *v83 = v32;
      _os_log_debug_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_DEBUG, "%s All asset set usages now %{public}@", buf, 0x16u);
    }

    v53 = v19;

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v16];
    v50 = v39;
    v51 = v16;
    if (v59 || v58 || v57)
    {
      v40 = v32;
      v43 = [UAFAssetSetProgress alloc];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke;
      v69[3] = &unk_1E7FFE4F0;
      v70 = v55;
      v71 = v57;
      v72 = v59;
      v73 = v58;
      v44 = [(UAFAssetSetProgress *)v43 initWithName:v39 maxProgressBeforeComplete:100 progressWithStatus:v69];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_3;
      v67[3] = &unk_1E7FFE518;
      v41 = v44;
      v68 = v41;
      v42 = MEMORY[0x1BFB33950](v67);
    }

    else
    {
      v40 = v32;
      v41 = 0;
      v42 = 0;
    }

    v45 = dispatch_group_create();
    dispatch_group_enter(v45);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_4;
    v65[3] = &unk_1E7FFCFD0;
    v66 = v45;
    v46 = v45;
    [UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:v40 configurationManager:v21 expensiveNetworking:v27 & 1 progress:v42 requestId:v56 completion:v65];
    v47 = +[UAFAssetSetManager getConcurrentQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_5;
    block[3] = &unk_1E7FFD670;
    v61 = v41;
    v64 = v54;
    v62 = v56;
    v37 = v55;
    v63 = v55;
    v48 = v41;
    dispatch_group_notify(v46, v47, block);

    v32 = v40;
    v38 = v54;

    v16 = v51;
    v19 = v53;
    v33 = 0;
  }

  v49 = *MEMORY[0x1E69E9840];
}

void __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, double a7)
{
  v13 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_2;
  block[3] = &unk_1E7FFE4C8;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v22 = a7;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v18 = v13;
  v19 = v15;
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v16 = v13;
  dispatch_async(v14, block);
}

void __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 32), *(a1 + 64));
  }

  if (*(a1 + 96) == 1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, *(a1 + 88), *(a1 + 64));
    }

    if (*(a1 + 56))
    {
      v4 = [[UAFAssetSetStatus alloc] initWithStatus:*(a1 + 88) percent:*(a1 + 72) completedBytes:*(a1 + 80) totalBytes:*(a1 + 64)];
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_5(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_6;
    v6[3] = &unk_1E7FFE540;
    v9 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    [v2 updateFinished:v6];
  }

  else if (*(a1 + 56))
  {
    v3 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 136315394;
      v11 = "[UAFAssetSetManager updateAssetsForSubscribers:policies:queue:progress:detailedProgress:internalProgress:completion:storeManager:configurationManager:]_block_invoke";
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Dispatching completion method for Request ID %{public}@", buf, 0x16u);
    }

    dispatch_async(*(a1 + 48), *(a1 + 56));
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_6(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v5 = 136315394;
      v6 = "[UAFAssetSetManager updateAssetsForSubscribers:policies:queue:progress:detailedProgress:internalProgress:completion:storeManager:configurationManager:]_block_invoke_6";
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Dispatching completion method for Request ID %{public}@", &v5, 0x16u);
    }

    dispatch_async(*(a1 + 40), *(a1 + 48));
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)updateAssetsForSubscriber:(id)a3 subscriptionName:(id)a4 policies:(id)a5 queue:(id)a6 progress:(id)a7 detailedProgress:(id)a8 completion:(id)a9 storeManager:(id)a10 configurationManager:(id)a11
{
  v16 = a10;
  v17 = a11;
  v18 = a9;
  v50[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v48 = a4;
    v49 = a3;
    v44 = MEMORY[0x1E695DEC8];
    v20 = a11;
    v21 = a10;
    v22 = a9;
    v23 = a8;
    v24 = a7;
    v25 = a6;
    v26 = a5;
    v27 = a8;
    v28 = a7;
    v29 = a6;
    v30 = a5;
    v31 = a4;
    v32 = a3;
    v33 = [v44 arrayWithObjects:&v48 count:1];
    v50[0] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];

    a5 = v30;
    a6 = v29;
    a7 = v28;
    a8 = v27;
    v18 = a9;
    v16 = a10;
    v17 = a11;
  }

  else
  {
    v46 = a3;
    v47 = MEMORY[0x1E695E0F0];
    v35 = MEMORY[0x1E695DF20];
    v36 = a11;
    v37 = a10;
    v38 = a9;
    v39 = a8;
    v40 = a7;
    v41 = a6;
    v42 = a5;
    v33 = a3;
    v34 = [v35 dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v32 = 0;
  }

  [(UAFAssetSetManager *)self updateAssetsForSubscribers:v34 policies:a5 queue:a6 progress:a7 detailedProgress:a8 internalProgress:0 completion:v18 storeManager:v16 configurationManager:v17];
  v43 = *MEMORY[0x1E69E9840];
}

- (id)diskSpaceNeededForSubscribers:(id)a3 storeManager:(id)a4 configurationManager:(id)a5 error:(id *)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = +[UAFSubscriptionStoreManager defaultManager];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v13 = +[UAFConfigurationManager defaultManager];
LABEL_3:
  v14 = &unk_1F3B731D0;
  v25 = 0;
  v15 = [(UAFAssetSetManager *)self assetSetUsagesForSubscribers:v10 storeManager:v11 configurationManager:v13 anyUnknown:0 error:&v25];
  v16 = v25;
  v17 = UAFGetLogCategory(&UAFLogContextClient);
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = geteuid();
      *buf = 136315906;
      v27 = "[UAFAssetSetManager diskSpaceNeededForSubscribers:storeManager:configurationManager:error:]";
      v28 = 1024;
      *v29 = v19;
      *&v29[4] = 2114;
      *&v29[6] = v10;
      v30 = 2114;
      v31 = v16;
      _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s Unable to get asset set usages for uid: %d Subscribers: '%{public}@': %{public}@", buf, 0x26u);
    }

    if (a6)
    {
      v20 = v16;
      *a6 = v16;
    }
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v27 = "[UAFAssetSetManager diskSpaceNeededForSubscribers:storeManager:configurationManager:error:]";
      v28 = 2114;
      *v29 = v15;
      _os_log_debug_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEBUG, "%s All asset set usages now %{public}@", buf, 0x16u);
    }

    v21 = [UAFAutoAssetManager spaceNeededForAssetSetUsages:v15 key:@"_UnarchivedSize" configurationManager:v13 error:a6];

    v14 = v21;
  }

  v22 = v14;

  v23 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)diskSpaceNeededForSubscribers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = 0;
  v7 = _os_activity_create(&dword_1BCF2C000, "UAF.diskSpaceNeededForSubscribers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__UAFAssetSetManager_diskSpaceNeededForSubscribers_error___block_invoke;
  v11[3] = &unk_1E7FFE568;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  os_activity_apply(v7, v11);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __58__UAFAssetSetManager_diskSpaceNeededForSubscribers_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) diskSpaceNeededForSubscribers:*(a1 + 40) storeManager:0 configurationManager:0 error:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)diskSpaceNeededForSubscriber:(id)a3 subscriptionName:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v19 = a4;
    v20 = a3;
    v8 = MEMORY[0x1E695DEC8];
    v9 = a4;
    v10 = a3;
    v11 = [v8 arrayWithObjects:&v19 count:1];
    v21[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  }

  else
  {
    v17 = a3;
    v18 = MEMORY[0x1E695E0F0];
    v13 = MEMORY[0x1E695DF20];
    v11 = a3;
    v12 = [v13 dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v10 = 0;
  }

  v14 = [(UAFAssetSetManager *)self diskSpaceNeededForSubscribers:v12 storeManager:0 configurationManager:0 error:a5];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)sysdiagnoseInformationWithError:(id *)a3
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__9;
  v28 = __Block_byref_object_dispose__9;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__9;
  v22 = __Block_byref_object_dispose__9;
  v23 = 0;
  v4 = dispatch_group_create();
  v5 = +[UAFAssetSetManager createXPCConnection];
  dispatch_group_enter(v4);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__UAFAssetSetManager_sysdiagnoseInformationWithError___block_invoke;
  v13[3] = &unk_1E7FFE590;
  v6 = v5;
  v14 = v6;
  v16 = &v24;
  v17 = &v18;
  v7 = v4;
  v15 = v7;
  [v6 diagnosticInformation:v13];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    *a3 = v19[5];
  }

  v8 = v25[5];
  if (!v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No output found: %@", v19[5]];
    v10 = v25[5];
    v25[5] = v9;

    v8 = v25[5];
  }

  v11 = v8;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __54__UAFAssetSetManager_sysdiagnoseInformationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 40));
}

+ (void)processAssetSet:(id)a3 allAssets:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v36 = a4;
  v38 = [v5 assets];
  v6 = +[UAFConfigurationManager defaultManager];
  v7 = [v5 name];
  v8 = [v6 getAssetSet:v7];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v34 = v8;
  obj = [v8 assets];
  v39 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v39)
  {
    v37 = *v55;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v55 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v54 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v38 objectForKey:v11];

        if (v12)
        {
          v40 = v12;
          v41 = i;
          v13 = [v12 metadata];
          v14 = [v13 mutableCopy];

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v42 = [v10 expansions];
          v44 = [v42 countByEnumeratingWithState:&v50 objects:v59 count:16];
          if (v44)
          {
            v43 = *v51;
            do
            {
              v15 = 0;
              do
              {
                if (*v51 != v43)
                {
                  objc_enumerationMutation(v42);
                }

                v45 = v15;
                v16 = *(*(&v50 + 1) + 8 * v15);
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                v17 = [v16 requiredUsageTypes];
                v18 = [v17 countByEnumeratingWithState:&v46 objects:v58 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v47;
                  do
                  {
                    for (j = 0; j != v19; ++j)
                    {
                      if (*v47 != v20)
                      {
                        objc_enumerationMutation(v17);
                      }

                      v22 = *(*(&v46 + 1) + 8 * j);
                      v23 = [v5 usages];
                      v24 = [v23 objectForKey:v22];

                      if (v24)
                      {
                        v25 = [@"com.apple.UnifiedAssetFramework.FoundUsageType." stringByAppendingString:v22];
                        [v14 setObject:v24 forKeyedSubscript:v25];
                      }
                    }

                    v19 = [v17 countByEnumeratingWithState:&v46 objects:v58 count:16];
                  }

                  while (v19);
                }

                v15 = v45 + 1;
              }

              while (v45 + 1 != v44);
              v44 = [v42 countByEnumeratingWithState:&v50 objects:v59 count:16];
            }

            while (v44);
          }

          v26 = [v14 count];
          v12 = v40;
          v27 = [v40 metadata];
          v28 = [v27 count];

          if (v26 <= v28)
          {
            [v36 addObject:v40];
          }

          else
          {
            v29 = [UAFAsset alloc];
            v30 = [v40 name];
            v31 = [v40 location];
            v32 = [(UAFAsset *)v29 initWithName:v30 location:v31 metadata:v14];
            [v36 addObject:v32];
          }

          i = v41;
        }
      }

      v39 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v39);
  }

  v33 = *MEMORY[0x1E69E9840];
}

+ (id)getSystemUsageAssets:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_autoreleasePoolPush();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__UAFAssetSetManager_getSystemUsageAssets___block_invoke;
  v13[3] = &unk_1E7FFE5B8;
  v15 = a1;
  v7 = v5;
  v14 = v7;
  v8 = MEMORY[0x1BFB33950](v13);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__UAFAssetSetManager_getSystemUsageAssets___block_invoke_350;
  v11[3] = &unk_1E7FFE5E0;
  v12 = v8;
  v9 = v8;
  [v4 enumerateKeysAndObjectsUsingBlock:v11];

  objc_autoreleasePoolPop(v6);

  return v7;
}

void __43__UAFAssetSetManager_getSystemUsageAssets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [[UAFAssetSet alloc] initWithAssetSet:v5 usages:v6];
  if (!v7)
  {
    p_super = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "+[UAFAssetSetManager getSystemUsageAssets:]_block_invoke";
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&dword_1BCF2C000, p_super, OS_LOG_TYPE_ERROR, "%s failed to init assetSet with assetSetName '%{public}@' and usages '%{public}@'", &v14, 0x20u);
    }

    goto LABEL_10;
  }

  [*(a1 + 40) processAssetSet:v7 allAssets:*(a1 + 32)];
  v8 = [(UAFAssetSet *)v7 experimentId];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [[UAFAssetSet alloc] initWithAssetSet:v5 usages:v6 disableExperimentation:1];
    if (v10)
    {
      p_super = &v10->super;
      [*(a1 + 40) processAssetSet:v10 allAssets:*(a1 + 32)];
    }

    else
    {
      v12 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315650;
        v15 = "+[UAFAssetSetManager getSystemUsageAssets:]_block_invoke";
        v16 = 2114;
        v17 = v5;
        v18 = 2114;
        v19 = v6;
        _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s failed to init assetSetWithoutExperimentation with assetSetName '%{public}@' and usages '%{public}@'", &v14, 0x20u);
      }

      p_super = 0;
    }

LABEL_10:
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __43__UAFAssetSetManager_getSystemUsageAssets___block_invoke_350(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          (*(*(a1 + 32) + 16))(*(a1 + 32));
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)generateInformationWithError:(id *)a3
{
  v127 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v122 = "+[UAFAssetSetManager generateInformationWithError:]";
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s Generating subscription log", buf, 0xCu);
  }

  v6 = +[UAFSubscriptionStoreManager defaultManager];
  v7 = objc_autoreleasePoolPush();
  v84 = v6;
  v8 = [v6 getAllSubscriptions:0];
  v9 = objc_opt_new();
  v113[0] = MEMORY[0x1E69E9820];
  v113[1] = 3221225472;
  v113[2] = __51__UAFAssetSetManager_generateInformationWithError___block_invoke;
  v113[3] = &unk_1E7FFE050;
  v10 = v9;
  v114 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v113];

  objc_autoreleasePoolPop(v7);
  v80 = v10;
  [v4 setObject:v10 forKeyedSubscript:@"Subscriptions"];
  v11 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v122 = "+[UAFAssetSetManager generateInformationWithError:]";
    _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Generating asset usages log", buf, 0xCu);
  }

  v112 = 0;
  v12 = [v84 getAllSystemAssetSetUsages:&v112];
  v13 = v112;
  if (v13)
  {
    v14 = [MEMORY[0x1E695DF90] dictionary];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v13];
    [v14 setObject:v15 forKeyedSubscript:@"SystemAssetSetUsages"];

    if (a3)
    {
      v16 = v13;
      *a3 = v13;
    }
  }

  else
  {
    [v4 setObject:v12 forKeyedSubscript:@"SystemAssetSetUsages"];
    v14 = 0;
  }

  v17 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v122 = "+[UAFAssetSetManager generateInformationWithError:]";
    v123 = 2114;
    v124 = v12;
    v125 = 2114;
    v126 = v13;
    _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s System AssetSetUsages: %{public}@, error = %{public}@", buf, 0x20u);
  }

  v81 = a3;
  v82 = v14;
  v85 = v4;

  v18 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v122 = "+[UAFAssetSetManager generateInformationWithError:]";
    _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s Generating system asset log", buf, 0xCu);
  }

  v91 = [MEMORY[0x1E695DF90] dictionary];
  v90 = [MEMORY[0x1E695DF90] dictionary];
  context = objc_autoreleasePoolPush();
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v12;
  v19 = [obj countByEnumeratingWithState:&v108 objects:v120 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v109;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v109 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v108 + 1) + 8 * i);
        v24 = [[UAFAssetSet alloc] initWithAssetSet:v23 usages:0];
        v25 = v24;
        if (v24)
        {
          v26 = [(UAFAssetSet *)v24 assetSetId];
          if (v26)
          {
            v27 = [(UAFAssetSet *)v25 assetSetId];
            [v91 setObject:v27 forKeyedSubscript:v23];
          }

          else
          {
            [v91 setObject:@"none" forKeyedSubscript:v23];
          }

          v28 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [(UAFAssetSet *)v25 assetSetId];
            *buf = 136315650;
            v122 = "+[UAFAssetSetManager generateInformationWithError:]";
            v123 = 2114;
            v124 = v23;
            v125 = 2114;
            v126 = v29;
            _os_log_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEFAULT, "%s AssetSet Identifier: %{public}@: %{public}@", buf, 0x20u);
          }

          v30 = [(UAFAssetSet *)v25 consistencyToken];
          v31 = [v30 jsonDictionary];
          [v90 setObject:v31 forKeyedSubscript:v23];

          v32 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [(UAFAssetSet *)v25 consistencyToken];
            *buf = 136315650;
            v122 = "+[UAFAssetSetManager generateInformationWithError:]";
            v123 = 2114;
            v124 = v23;
            v125 = 2114;
            v126 = v33;
            _os_log_impl(&dword_1BCF2C000, v32, OS_LOG_TYPE_DEFAULT, "%s AssetSet Token: %{public}@: %{public}@", buf, 0x20u);
          }
        }
      }

      v20 = [obj countByEnumeratingWithState:&v108 objects:v120 count:16];
    }

    while (v20);
  }

  objc_autoreleasePoolPop(context);
  [v85 setObject:v91 forKeyedSubscript:@"AssetSetIdentifiers"];
  [v85 setObject:v90 forKeyedSubscript:@"AssetSetTokens"];
  v34 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v122 = "+[UAFAssetSetManager generateInformationWithError:]";
    _os_log_impl(&dword_1BCF2C000, v34, OS_LOG_TYPE_DEFAULT, "%s Generating expired asset set tokens", buf, 0xCu);
  }

  v92 = [MEMORY[0x1E695DF70] array];
  v107 = 0;
  v35 = [UAFExpiredAssets expiredTokens:&v107];
  v79 = v107;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  contexta = v35;
  v36 = [contexta countByEnumeratingWithState:&v103 objects:v119 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v104;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v104 != v38)
        {
          objc_enumerationMutation(contexta);
        }

        v40 = *(*(&v103 + 1) + 8 * j);
        v41 = [v40 jsonDictionary];
        [v92 addObject:v41];

        v42 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v122 = "+[UAFAssetSetManager generateInformationWithError:]";
          v123 = 2114;
          v124 = v40;
          _os_log_impl(&dword_1BCF2C000, v42, OS_LOG_TYPE_DEFAULT, "%s Expired Asset Set Token: %{public}@", buf, 0x16u);
        }
      }

      v37 = [contexta countByEnumeratingWithState:&v103 objects:v119 count:16];
    }

    while (v37);
  }

  [v85 setObject:v92 forKeyedSubscript:@"ExpiredAssetSetTokens"];
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [UAFAssetSetManager getSystemUsageAssets:obj];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v44 = v102 = 0u;
  v45 = [v44 countByEnumeratingWithState:&v99 objects:v118 count:16];
  v46 = v82;
  if (v45)
  {
    v47 = v45;
    v48 = *v100;
    do
    {
      for (k = 0; k != v47; ++k)
      {
        if (*v100 != v48)
        {
          objc_enumerationMutation(v44);
        }

        v50 = [*(*(&v99 + 1) + 8 * k) propertiesAsDictionary:1];
        [v43 addObject:v50];
      }

      v47 = [v44 countByEnumeratingWithState:&v99 objects:v118 count:16];
    }

    while (v47);
  }

  [v85 setObject:v43 forKeyedSubscript:@"SystemAssets"];
  v51 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v122 = "+[UAFAssetSetManager generateInformationWithError:]";
    _os_log_impl(&dword_1BCF2C000, v51, OS_LOG_TYPE_DEFAULT, "%s Generating system configuration log", buf, 0xCu);
  }

  v98 = 0;
  v52 = [v84 getAllSystemConfiguration:&v98];
  v53 = v98;
  if (v53)
  {
    if (!v82)
    {
      v46 = [MEMORY[0x1E695DF90] dictionary];
    }

    v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v53];
    [v46 setObject:v54 forKeyedSubscript:@"SystemConfigKey"];

    if (v81)
    {
      v55 = v53;
      *v81 = v53;
    }
  }

  else
  {
    [v85 setObject:v52 forKeyedSubscript:@"SystemConfigKey"];
  }

  v83 = v46;
  v56 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v122 = "+[UAFAssetSetManager generateInformationWithError:]";
    v123 = 2114;
    v124 = v52;
    v125 = 2114;
    v126 = v53;
    _os_log_impl(&dword_1BCF2C000, v56, OS_LOG_TYPE_DEFAULT, "%s System Configuration: %{public}@, error = %{public}@", buf, 0x20u);
  }

  v86 = v52;

  v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = +[UAFAssetSetManager sharedManager];
  v59 = [v58 assetSetInfo:0];

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v60 = v59;
  v61 = [v60 countByEnumeratingWithState:&v94 objects:v117 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v95;
    do
    {
      for (m = 0; m != v62; ++m)
      {
        if (*v95 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v115 = *(*(&v94 + 1) + 8 * m);
        v65 = [v60 objectForKeyedSubscript:?];
        v116 = v65;
        v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        [v57 addObject:v66];
      }

      v62 = [v60 countByEnumeratingWithState:&v94 objects:v117 count:16];
    }

    while (v62);
  }

  [v85 setObject:v57 forKeyedSubscript:@"AssetSetConfiguration"];
  v67 = objc_autoreleasePoolPush();
  v68 = +[UAFAutoAssetHistory getPersistedAssetInfo];
  objc_autoreleasePoolPop(v67);
  [v85 setObject:v68 forKeyedSubscript:@"PersistedAssetInfo"];
  v69 = objc_autoreleasePoolPush();
  v70 = +[UAFAssetSetManager defaults];
  v71 = [v70 dictionaryRepresentation];

  objc_autoreleasePoolPop(v69);
  [v85 setObject:0 forKeyedSubscript:@"Preferences"];
  if (v83)
  {
    v72 = v83;
  }

  else
  {
    v72 = &unk_1F3B732C0;
  }

  [v85 setObject:v72 forKeyedSubscript:@"Errors"];
  v73 = objc_autoreleasePoolPush();
  v93 = 0;
  v74 = [UAFCommonUtilities bestEffortSerializeDictToJSONStr:v85 error:&v93];
  v75 = v93;
  objc_autoreleasePoolPop(v73);
  if (v81)
  {
    v76 = v75;
    *v81 = v75;
  }

  v77 = *MEMORY[0x1E69E9840];

  return v74;
}

void __51__UAFAssetSetManager_generateInformationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__UAFAssetSetManager_generateInformationWithError___block_invoke_2;
  v10[3] = &unk_1E7FFE028;
  v11 = v8;
  v9 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

void __51__UAFAssetSetManager_generateInformationWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__UAFAssetSetManager_generateInformationWithError___block_invoke_3;
  v10[3] = &unk_1E7FFDEF0;
  v11 = v8;
  v9 = v8;
  [v6 enumerateObjectsUsingBlock:v10];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

void __51__UAFAssetSetManager_generateInformationWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 propertiesAsDictionary];
  [v2 addObject:v3];
}

+ (void)configureAssetDelivery:(id)a3 configurationManager:(id)a4 lockIfUnchanged:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[UAFAssetSetManager getSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__UAFAssetSetManager_configureAssetDelivery_configurationManager_lockIfUnchanged___block_invoke;
  block[3] = &unk_1E7FFD048;
  v13 = v7;
  v14 = v8;
  v15 = a5;
  v10 = v8;
  v11 = v7;
  dispatch_sync(v9, block);
}

+ (void)configureAssetDelivery:(id)a3 configurationManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[UAFAssetSetManager getSerialQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__UAFAssetSetManager_configureAssetDelivery_configurationManager___block_invoke;
  v10[3] = &unk_1E7FFD098;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_sync(v7, v10);
}

+ (unint64_t)coalesceDownloadStatus:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = 4;
    v7 = *v19;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [v3 objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v8)];
        v10 = [v9 unsignedIntValue];

        if (v10 > 4)
        {
          if (v10 <= 6)
          {
            if (v10 == 5)
            {
              v11 = (v6 - 7) < 2 || (v6 & 0xFFFFFFFFFFFFFFFDLL) == 4;
              v12 = 5;
            }

            else
            {
              v11 = v6 == 4;
              v12 = 6;
            }

LABEL_34:
            if (v11)
            {
              v6 = v12;
            }

            goto LABEL_36;
          }

          if (v10 == 7)
          {
            v11 = (v6 & 0xFFFFFFFFFFFFFFFDLL) == 4;
            v12 = 7;
            goto LABEL_34;
          }

          if (v10 == 8)
          {
            if ((v6 & 0xFFFFFFFFFFFFFFFDLL) == 4 || v6 == 7)
            {
              v6 = 8;
            }
          }

          else if (v10 == 9 && v6 == 4)
          {
            v6 = 9;
          }
        }

        else
        {
          if (v10 > 1)
          {
            if (v10 == 2)
            {
              v11 = (v6 & 0xFFFFFFFFFFFFFFFELL) == 4;
              v12 = 2;
            }

            else
            {
              if (v10 != 3)
              {
                ++v5;
                goto LABEL_36;
              }

              v11 = (v6 & 0xFFFFFFFFFFFFFFFELL) == 4 || v6 == 2;
              v12 = 3;
            }

            goto LABEL_34;
          }

          if (v10)
          {
            if (v10 == 1)
            {
              v6 = v6 != 0;
            }
          }

          else
          {
            v6 = 0;
          }
        }

LABEL_36:
        ++v8;
      }

      while (v4 != v8);
      v14 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v4 = v14;
      if (!v14)
      {
        v4 = v5;
        goto LABEL_47;
      }
    }
  }

  v6 = 4;
LABEL_47:
  if ([v3 count] == v4)
  {
    v15 = 4;
  }

  else
  {
    v15 = v6;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)retrieveAssetSet:(id)a3 usages:(id)a4 consistencyToken:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v10 = _os_activity_create(&dword_1BCF2C000, "UAF.retrieveAssetSetWithToken", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__UAFAssetSetManager_retrieveAssetSet_usages_consistencyToken___block_invoke;
  v16[3] = &unk_1E7FFE608;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = &v21;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  os_activity_apply(v10, v16);

  v14 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v14;
}

void __63__UAFAssetSetManager_retrieveAssetSet_usages_consistencyToken___block_invoke(void *a1)
{
  v2 = [[UAFAssetSet alloc] initWithAssetSet:a1[4] usages:a1[5] configurationDirURLs:0 disableExperimentation:0 consistencyToken:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)retrieveAssetSet:(id)a3 usages:(id)a4 consistencyToken:(id)a5 queue:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v14)
  {
    v14 = +[UAFAssetSetManager getConcurrentQueue];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__UAFAssetSetManager_retrieveAssetSet_usages_consistencyToken_queue_completion___block_invoke;
  block[3] = &unk_1E7FFE658;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v11;
  dispatch_async(v17, block);
}

void __80__UAFAssetSetManager_retrieveAssetSet_usages_consistencyToken_queue_completion___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = [[UAFAssetSet alloc] initWithAssetSet:*(a1 + 32) usages:*(a1 + 40) configurationDirURLs:0 disableExperimentation:0 consistencyToken:*(a1 + 48)];
  v2 = [v14[5] autoAssetSetError];
  v3 = [UAFAutoAssetManager shouldWaitForMobileAssetStart:v2];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__UAFAssetSetManager_retrieveAssetSet_usages_consistencyToken_queue_completion___block_invoke_2;
    v7[3] = &unk_1E7FFE630;
    v12 = &v13;
    v8 = v4;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    [UAFAutoAssetManager waitForMobileAssetStart:v8 queue:v5 completion:v7];
  }

  else
  {
    v6 = v14[5];
    (*(*(a1 + 64) + 16))();
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __80__UAFAssetSetManager_retrieveAssetSet_usages_consistencyToken_queue_completion___block_invoke_2(void *a1)
{
  v2 = [[UAFAssetSet alloc] initWithAssetSet:a1[4] usages:a1[5] configurationDirURLs:0 disableExperimentation:0 consistencyToken:a1[6]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1[8] + 8) + 40);
  v6 = *(a1[7] + 16);

  return v6();
}

- (void)retrieveAssetSet:(id)a3 usages:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _os_activity_create(&dword_1BCF2C000, "UAF.retrieveAssetSetAsync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__UAFAssetSetManager_retrieveAssetSet_usages_queue_completion___block_invoke;
  block[3] = &unk_1E7FFE658;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  os_activity_apply(v14, block);
}

- (id)retrieveAssetSet:(id)a3 usages:(id)a4 disableExperimentation:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  v9 = _os_activity_create(&dword_1BCF2C000, "UAF.retrieveAssetSetWithDisableExperimentation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__UAFAssetSetManager_retrieveAssetSet_usages_disableExperimentation___block_invoke;
  v14[3] = &unk_1E7FFE680;
  v16 = v8;
  v17 = &v19;
  v15 = v7;
  v18 = a5;
  v10 = v8;
  v11 = v7;
  os_activity_apply(v9, v14);

  v12 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v12;
}

void __69__UAFAssetSetManager_retrieveAssetSet_usages_disableExperimentation___block_invoke(uint64_t a1)
{
  v2 = [[UAFAssetSet alloc] initWithAssetSet:*(a1 + 32) usages:*(a1 + 40) disableExperimentation:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)markAssetsExpired:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _os_activity_create(&dword_1BCF2C000, "UAF.markAssetsExpired", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__UAFAssetSetManager_markAssetsExpired_completion___block_invoke;
  v10[3] = &unk_1E7FFD5A8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  os_activity_apply(v7, v10);
}

void __51__UAFAssetSetManager_markAssetsExpired_completion___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__UAFAssetSetManager_markAssetsExpired_completion___block_invoke_2;
  v5[3] = &unk_1E7FFD648;
  v6 = v2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = v2;
  v4 = MEMORY[0x1BFB33950](v5);
  [v3 markAssetsExpired:*(a1 + 32) completion:v4];
}

void __51__UAFAssetSetManager_markAssetsExpired_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 136315650;
    v8 = "[UAFAssetSetManager markAssetsExpired:completion:]_block_invoke_2";
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Marking token %{public}@ expired completed (error = %{public}@)", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

- (id)observeAssetSet:(id)a3 policies:(id)a4 queue:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__9;
  v32 = __Block_byref_object_dispose__9;
  v33 = 0;
  v14 = _os_activity_create(&dword_1BCF2C000, "UAF.observeAssetSet", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__UAFAssetSetManager_observeAssetSet_policies_queue_handler___block_invoke;
  v21[3] = &unk_1E7FFE6A8;
  v22 = v11;
  v23 = v10;
  v26 = v13;
  v27 = &v28;
  v24 = v12;
  v25 = self;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  os_activity_apply(v14, v21);

  v19 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v19;
}

void __61__UAFAssetSetManager_observeAssetSet_policies_queue_handler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v3 |= [*(*(&v13 + 1) + 8 * v6++) isEqualToString:{@"IgnoreMobileAssetStartup", v13}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v4);
  }

  v7 = [[UAFAssetSetObserver alloc] initWithAssetSet:*(a1 + 40) ignoreMobileAssetStartup:v3 & 1 configurationDirURLs:0 queue:*(a1 + 48) updateHandler:*(a1 + 64)];
  v8 = *(*(a1 + 72) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v10 = *(*(a1 + 56) + 8);
    objc_sync_enter(v10);
    [*(*(a1 + 56) + 8) addObject:*(*(*(a1 + 72) + 8) + 40)];
    objc_sync_exit(v10);
  }

  else
  {
    v10 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      *buf = 136315394;
      v18 = "[UAFAssetSetManager observeAssetSet:policies:queue:handler:]_block_invoke";
      v19 = 2114;
      v20 = v12;
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to create UAFAssetSetObserver for %{public}@'", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1BCF2C000, "UAF.removeObserver", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__UAFAssetSetManager_removeObserver___block_invoke;
  v7[3] = &unk_1E7FFD098;
  v8 = v4;
  v9 = self;
  v6 = v4;
  os_activity_apply(v5, v7);
}

void __37__UAFAssetSetManager_removeObserver___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v3 = *(*(a1 + 40) + 8);
    objc_sync_enter(v3);
    [*(*(a1 + 40) + 8) removeObject:v7];
    [v7 invalidate];
    objc_sync_exit(v3);

    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "[UAFAssetSetManager removeObserver:]_block_invoke";
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s Unexpected token is not of kind UAFAssetSetObserver'", buf, 0xCu);
    }

    v6 = *MEMORY[0x1E69E9840];
  }
}

- (void)subscribe:(id)a3 subscriptions:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _os_activity_create(&dword_1BCF2C000, "UAF.subscribe", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__UAFAssetSetManager_subscribe_subscriptions_queue_completion___block_invoke;
  block[3] = &unk_1E7FFE658;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  os_activity_apply(v14, block);
}

- (void)subscribe:(id)a3 subscriptions:(id)a4 user:(id)a5 userInitiated:(BOOL)a6 queue:(id)a7 completion:(id)a8
{
  v63 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  if (!v16)
  {
    v16 = +[UAFAssetSetManager getConcurrentQueue];
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__9;
  v53 = __Block_byref_object_dispose__9;
  v18 = v14;
  v54 = v18;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke;
  v42[3] = &unk_1E7FFE6F8;
  v19 = v15;
  v43 = v19;
  v20 = v13;
  v44 = v20;
  v47 = &v49;
  v48 = a6;
  v21 = v17;
  v46 = v21;
  v22 = v16;
  v45 = v22;
  v23 = MEMORY[0x1BFB33950](v42);
  if (v19)
  {
    goto LABEL_4;
  }

  if (!+[UAFUser isSystemUserUsingUID:](UAFUser, "isSystemUserUsingUID:", +[UAFCommonUtilities geteuid]))
  {
    v41 = 0;
    v19 = [UAFUser currentUserWithNode:0 error:&v41];
    v24 = v41;
    if (v19)
    {
      goto LABEL_5;
    }

    v32 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v56 = "[UAFAssetSetManager subscribe:subscriptions:user:userInitiated:queue:completion:]";
      v57 = 2114;
      v58 = v24;
      _os_log_error_impl(&dword_1BCF2C000, v32, OS_LOG_TYPE_ERROR, "%s Could not determine current user: %{public}@", buf, 0x16u);
    }

    v23[2](v23);
LABEL_23:
    v19 = 0;
    goto LABEL_30;
  }

  v19 = [UAFUser currentConsoleUserWithUID:0];
  if (!v19)
  {
    v31 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v56 = "[UAFAssetSetManager subscribe:subscriptions:user:userInitiated:queue:completion:]";
      _os_log_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_DEFAULT, "%s Could not determine console user, trying with XPC", buf, 0xCu);
    }

    v23[2](v23);
    v24 = 0;
    goto LABEL_23;
  }

LABEL_4:
  v24 = 0;
LABEL_5:
  v40 = v24;
  v25 = [UAFAssetSetManager _subscriptionDiffersFromDB:v18 subscriber:v20 user:v19 error:&v40];
  v26 = v40;

  v27 = v50[5];
  v50[5] = v25;

  v28 = v50[5];
  if (!v28 || v26)
  {
    v29 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v56 = "[UAFAssetSetManager subscribe:subscriptions:user:userInitiated:queue:completion:]";
      v57 = 2112;
      v58 = v19;
      v59 = 2114;
      v60 = v20;
      v61 = 2114;
      v62 = v26;
      _os_log_error_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_ERROR, "%s Not attempting to update subscriptions for user '%@' subscriptions: %{public}@: %{public}@", buf, 0x2Au);
    }

    if (!v21)
    {
      v24 = v26;
      goto LABEL_30;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke_403;
    block[3] = &unk_1E7FFD940;
    v39 = v21;
    v24 = v26;
    v38 = v24;
    dispatch_async(v22, block);

    v30 = &v39;
    goto LABEL_28;
  }

  if (![v28 count])
  {
    v33 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v56 = "[UAFAssetSetManager subscribe:subscriptions:user:userInitiated:queue:completion:]";
      v57 = 2114;
      v58 = v20;
      v59 = 2114;
      v60 = v18;
      v61 = 2112;
      v62 = v19;
      _os_log_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_DEFAULT, "%s No subscription changes for subscriber '%{public}@' and subscriptions '%{public}@' user: '%@'", buf, 0x2Au);
    }

    if (!v21)
    {
      goto LABEL_9;
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke_404;
    v35[3] = &unk_1E7FFD4E8;
    v30 = &v36;
    v36 = v21;
    dispatch_async(v22, v35);
    v24 = 0;
LABEL_28:

    goto LABEL_30;
  }

  v23[2](v23);
LABEL_9:
  v24 = 0;
LABEL_30:

  _Block_object_dispose(&v49, 8);
  v34 = *MEMORY[0x1E69E9840];
}

void __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextSubscription);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 136315906;
    v32 = "[UAFAssetSetManager subscribe:subscriptions:user:userInitiated:queue:completion:]_block_invoke";
    v33 = 2112;
    v34 = v3;
    v35 = 2114;
    v36 = v4;
    v37 = 2114;
    v38 = v5;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Changing subscriptions for user: '%@', subscriber: '%{public}@': '%{public}@'", buf, 0x2Au);
  }

  v6 = MEMORY[0x1E695DF90];
  v29[0] = @"Operation";
  v29[1] = @"Subscriber";
  v7 = *(a1 + 40);
  v30[0] = @"Subscribe";
  v30[1] = v7;
  v29[2] = @"Subscriptions";
  v30[2] = *(*(*(a1 + 64) + 8) + 40);
  v29[3] = @"UserInitiated";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 72)];
  v30[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];
  v10 = [v6 dictionaryWithDictionary:v9];

  v11 = *(a1 + 32);
  if (v11)
  {
    [v10 setObject:v11 forKeyedSubscript:@"SubscriptionUser"];
  }

  v12 = +[UAFAssetSetManager createXPCConnection];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke_402;
  v24 = &unk_1E7FFE6D0;
  v25 = v12;
  v13 = *(a1 + 56);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  *&v16 = *(a1 + 40);
  *(&v16 + 1) = v13;
  *&v17 = v14;
  *(&v17 + 1) = v15;
  v26 = v17;
  v27 = v16;
  v28 = *(a1 + 64);
  v18 = v12;
  v19 = MEMORY[0x1BFB33950](&v21);
  [v18 operationWithConfig:v10 completion:{v19, v21, v22, v23, v24}];

  v20 = *MEMORY[0x1E69E9840];
}

void __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke_402(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke_2;
    v11[3] = &unk_1E7FFD940;
    v13 = v4;
    v12 = v3;
    dispatch_async(v5, v11);
  }

  v6 = UAFGetLogCategory(&UAFLogContextSubscription);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 136315906;
    v15 = "[UAFAssetSetManager subscribe:subscriptions:user:userInitiated:queue:completion:]_block_invoke";
    v16 = 2112;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s Changed subscriptions for user: '%@', subscriber: '%{public}@': '%{public}@'", buf, 0x2Au);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribe:(id)a3 subscriptionNames:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _os_activity_create(&dword_1BCF2C000, "UAF.unsubscribe", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UAFAssetSetManager_unsubscribe_subscriptionNames_queue_completion___block_invoke;
  block[3] = &unk_1E7FFE658;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  os_activity_apply(v14, block);
}

void __88__UAFAssetSetManager_unsubscribe_subscriptionNames_user_userInitiated_queue_completion___block_invoke_405(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__UAFAssetSetManager_unsubscribe_subscriptionNames_user_userInitiated_queue_completion___block_invoke_2;
    v11[3] = &unk_1E7FFD940;
    v13 = v4;
    v12 = v3;
    dispatch_async(v5, v11);
  }

  v6 = UAFGetLogCategory(&UAFLogContextSubscription);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    *buf = 136316162;
    v15 = "[UAFAssetSetManager unsubscribe:subscriptionNames:user:userInitiated:queue:completion:]_block_invoke";
    v16 = 2112;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v3;
    _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s Unsubscribed for user '%@', subscriber '%{public}@', subscription '%{public}@' with error: %{public}@", buf, 0x34u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)subscriptions:(id)a3 subscriber:(id)a4 user:(id)a5 storeManager:(id)a6 error:(id *)a7
{
  v61 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__9;
  v55 = __Block_byref_object_dispose__9;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__9;
  v49 = __Block_byref_object_dispose__9;
  v50 = 0;
  if (!v14)
  {
    v14 = +[UAFSubscriptionStoreManager defaultManager];
  }

  v15 = v14;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__9;
  v43[4] = __Block_byref_object_dispose__9;
  v44 = 0;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __71__UAFAssetSetManager_subscriptions_subscriber_user_storeManager_error___block_invoke;
  v42[3] = &unk_1E7FFE748;
  v42[4] = &v51;
  v42[5] = v43;
  v42[6] = &v45;
  v16 = MEMORY[0x1BFB33950](v42);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __71__UAFAssetSetManager_subscriptions_subscriber_user_storeManager_error___block_invoke_2;
  v36[3] = &unk_1E7FFE630;
  v41 = v43;
  v17 = v11;
  v37 = v17;
  v18 = v12;
  v38 = v18;
  v19 = v13;
  v39 = v19;
  v20 = v16;
  v40 = v20;
  v21 = MEMORY[0x1BFB33950](v36);
  if (v19)
  {
LABEL_4:
    v22 = v52;
    obj = v52[5];
    v23 = [UAFAssetSetSubscriptionManager getSubscription:v17 subscriber:v18 user:v19 storeManager:v15 error:&obj];
    objc_storeStrong(v22 + 5, obj);
    v24 = v46[5];
    v46[5] = v23;

    if (!v46[5] && v52[5])
    {
      v25 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v52[5];
        *buf = 136315394;
        v58 = "[UAFAssetSetManager subscriptions:subscriber:user:storeManager:error:]";
        v59 = 2114;
        v60 = v26;
        _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s Could not retrieve subscriptions, falling back to XPC: %{public}@", buf, 0x16u);
      }

      v21[2](v21);
    }

    if (a7)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (+[UAFUser isSystemUserUsingUID:](UAFUser, "isSystemUserUsingUID:", +[UAFCommonUtilities geteuid]))
  {
    v19 = [UAFUser currentConsoleUserWithUID:0];
    if (v19)
    {
      goto LABEL_4;
    }

    v30 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v58 = "[UAFAssetSetManager subscriptions:subscriber:user:storeManager:error:]";
      _os_log_impl(&dword_1BCF2C000, v30, OS_LOG_TYPE_DEFAULT, "%s Could not determine console user, trying via XPC", buf, 0xCu);
    }

    v21[2](v21);
  }

  else
  {
    v31 = v52;
    v35 = v52[5];
    v19 = [UAFUser currentUserWithNode:0 error:&v35];
    objc_storeStrong(v31 + 5, v35);
    if (v19)
    {
      goto LABEL_4;
    }

    v32 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v52[5];
      *buf = 136315394;
      v58 = "[UAFAssetSetManager subscriptions:subscriber:user:storeManager:error:]";
      v59 = 2112;
      v60 = v33;
      _os_log_impl(&dword_1BCF2C000, v32, OS_LOG_TYPE_DEFAULT, "%s Unable to identify current user, falling back to daemon determing user: %@", buf, 0x16u);
    }

    v21[2](v21);
  }

  v19 = 0;
  if (a7)
  {
LABEL_10:
    *a7 = v52[5];
  }

LABEL_11:
  v27 = v46[5];

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

void __71__UAFAssetSetManager_subscriptions_subscriber_user_storeManager_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(a1[4] + 8) + 40), a3);
  v8 = a3;
  [*(*(a1[5] + 8) + 40) invalidate];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __71__UAFAssetSetManager_subscriptions_subscriber_user_storeManager_error___block_invoke_2(void *a1)
{
  v2 = +[UAFAssetSetManager createProxyXPCConnection];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[7];
  v6 = *(*(a1[8] + 8) + 40);
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];

  return [v6 subscriptions:v7 subscriber:v8 user:v9 completion:v5];
}

- (id)subscriptionsForSubscriber:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v5 = _os_activity_create(&dword_1BCF2C000, "UAF.subscriptionsForSubscriber", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__UAFAssetSetManager_subscriptionsForSubscriber___block_invoke;
  block[3] = &unk_1E7FFD8F0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  os_activity_apply(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__UAFAssetSetManager_subscriptionsForSubscriber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) subscriptions:0 subscriber:*(a1 + 40) user:0 storeManager:0 error:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)subscribedUsagesForAssetSet:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v4 = _os_activity_create(&dword_1BCF2C000, "UAF.subscribedUsagesForAssetSet", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__UAFAssetSetManager_subscribedUsagesForAssetSet___block_invoke;
  v8[3] = &unk_1E7FFD070;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  os_activity_apply(v4, v8);

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __50__UAFAssetSetManager_subscribedUsagesForAssetSet___block_invoke(uint64_t a1)
{
  v2 = [UAFAssetSetManager getAssetSetUsages:*(a1 + 32) storeManager:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)knownUsagesForAssetSet:(id)a3 usageType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = 0;
  v7 = _os_activity_create(&dword_1BCF2C000, "UAF.subscribedUsagesForAssetSet", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__UAFAssetSetManager_knownUsagesForAssetSet_usageType___block_invoke;
  block[3] = &unk_1E7FFD768;
  v14 = v6;
  v15 = &v16;
  v13 = v5;
  v8 = v6;
  v9 = v5;
  os_activity_apply(v7, block);

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __55__UAFAssetSetManager_knownUsagesForAssetSet_usageType___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[UAFConfigurationManager defaultManager];
  v3 = [v2 getAssetSet:a1[4]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 usageValues];
    v6 = [v5 objectForKeyedSubscript:a1[5]];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v5 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v11 = 136315394;
      v12 = "[UAFAssetSetManager knownUsagesForAssetSet:usageType:]_block_invoke";
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s Unable to get assetset for '%{public}@'", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)assetNamesForAssetSet:(id)a3 usages:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[UAFConfigurationManager defaultManager];
  v8 = [v7 getAssetSet:v5];
  v9 = v8;
  if (!v8)
  {
    v13 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "[UAFAssetSetManager assetNamesForAssetSet:usages:]";
      v34 = 2114;
      v35 = v5;
      _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s No configuration for asset set: %{public}@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v10 = [v8 getAssets:v6];
  if (!v10)
  {
    v21 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v33 = "[UAFAssetSetManager assetNamesForAssetSet:usages:]";
      v34 = 2114;
      v35 = v5;
      v36 = 2114;
      v37 = v6;
      _os_log_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_DEFAULT, "%s Error retrieving assets for %{public}@ with usages: %{public}@", buf, 0x20u);
    }

    v13 = 0;
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  v24 = v7;
  v25 = v6;
  v26 = v5;
  v12 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        v19 = [v13 objectForKeyedSubscript:v18];
        v20 = [v19 objectForKeyedSubscript:@"AssetSpecifier"];

        if (v20)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v6 = v25;
  v5 = v26;
  v7 = v24;
LABEL_19:

  v22 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)updateAssetsForSubscriber:(id)a3 subscriptionName:(id)a4 policies:(id)a5 queue:(id)a6 progress:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = _os_activity_create(&dword_1BCF2C000, "UAF.updateAssetsForSubscribers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__UAFAssetSetManager_updateAssetsForSubscriber_subscriptionName_policies_queue_progress_completion___block_invoke;
  block[3] = &unk_1E7FFE770;
  block[4] = self;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  os_activity_apply(v20, block);
}

- (void)updateAssetsForSubscriber:(id)a3 subscriptionName:(id)a4 policies:(id)a5 queue:(id)a6 detailedProgress:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = _os_activity_create(&dword_1BCF2C000, "UAF.updateAssetsForSubscribers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__UAFAssetSetManager_updateAssetsForSubscriber_subscriptionName_policies_queue_detailedProgress_completion___block_invoke;
  block[3] = &unk_1E7FFE770;
  block[4] = self;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  os_activity_apply(v20, block);
}

- (void)updateAssetsForSubscribers:(id)a3 policies:(id)a4 queue:(id)a5 detailedProgress:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = _os_activity_create(&dword_1BCF2C000, "UAF.updateAssetsForSubscribers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __92__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_detailedProgress_completion___block_invoke;
  v23[3] = &unk_1E7FFE798;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  os_activity_apply(v17, v23);
}

- (void)downloadStatusForSubscribers:(id)a3 queue:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[UAFAssetSetManager downloadStatusForSubscribers:queue:completion:]";
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Download status of assets for subscribers: %{public}@", buf, 0x16u);
  }

  if (!v9)
  {
    v9 = +[UAFAssetSetManager getConcurrentQueue];
  }

  v32 = 0;
  v12 = +[UAFSubscriptionStoreManager defaultManager];
  v13 = +[UAFConfigurationManager defaultManager];
  v31 = 0;
  v14 = [(UAFAssetSetManager *)self assetSetUsagesForSubscribers:v8 storeManager:v12 configurationManager:v13 anyUnknown:&v32 error:&v31];
  v15 = v31;

  if (v15)
  {
    v16 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = geteuid();
      *buf = 136315906;
      *&buf[4] = "[UAFAssetSetManager downloadStatusForSubscribers:queue:completion:]";
      *&buf[12] = 1024;
      *&buf[14] = v17;
      *&buf[18] = 2114;
      *&buf[20] = v8;
      *&buf[28] = 2114;
      *&buf[30] = v15;
      _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s Unable to get asset set usages for uid: %d Subscribers: '%{public}@': %{public}@", buf, 0x26u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__UAFAssetSetManager_downloadStatusForSubscribers_queue_completion___block_invoke;
    block[3] = &unk_1E7FFD4E8;
    v30 = v10;
    dispatch_async(v9, block);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v18 = 4;
    if (v32)
    {
      v18 = 0;
    }

    *&buf[24] = v18;
    if (v14)
    {
      v19 = +[UAFConfigurationManager defaultManager];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __68__UAFAssetSetManager_downloadStatusForSubscribers_queue_completion___block_invoke_2;
      v24[3] = &unk_1E7FFE7E8;
      v25 = v8;
      v26 = v10;
      [UAFAutoAssetManager getDownloadStatusFromAssetSetUsages:v14 configurationManager:v19 queue:v9 completion:v24];

      v20 = &v25;
    }

    else
    {
      v21 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(*&buf[8] + 24);
        *v33 = 136315650;
        v34 = "[UAFAssetSetManager downloadStatusForSubscribers:queue:completion:]";
        v35 = 2048;
        v36 = v22;
        v37 = 2114;
        v38 = v8;
        _os_log_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_DEFAULT, "%s Returning status: %lu for subscribers: %{public}@ as the asset set usages are nil", v33, 0x20u);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __68__UAFAssetSetManager_downloadStatusForSubscribers_queue_completion___block_invoke_407;
      v27[3] = &unk_1E7FFE7C0;
      v20 = v28;
      v28[0] = v10;
      v28[1] = buf;
      dispatch_async(v9, v27);
    }

    _Block_object_dispose(buf, 8);
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __68__UAFAssetSetManager_downloadStatusForSubscribers_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 136315650;
    v9 = "[UAFAssetSetManager downloadStatusForSubscribers:queue:completion:]_block_invoke_2";
    v10 = 2048;
    v11 = a2;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Returning asset download status: %lu for subscribers: %{public}@", &v8, 0x20u);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)downloadStatusForSubscriber:(id)a3 subscriptionName:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _os_activity_create(&dword_1BCF2C000, "UAF.downloadStatusForSubscriberAsync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__UAFAssetSetManager_downloadStatusForSubscriber_subscriptionName_queue_completion___block_invoke;
  block[3] = &unk_1E7FFE658;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  os_activity_apply(v14, block);
}

void __84__UAFAssetSetManager_downloadStatusForSubscriber_subscriptionName_queue_completion___block_invoke(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  v7 = a1[6];
  v8 = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 downloadStatusForSubscribers:v5 queue:a1[7] completion:a1[8]];

  v6 = *MEMORY[0x1E69E9840];
}

- (unint64_t)downloadStatusForSubscribers:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = _os_activity_create(&dword_1BCF2C000, "UAF.downloadStatusForSubscribers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UAFAssetSetManager_downloadStatusForSubscribers___block_invoke;
  block[3] = &unk_1E7FFD850;
  v10 = v4;
  v11 = self;
  v12 = &v13;
  v6 = v4;
  os_activity_apply(v5, block);

  v7 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v7;
}

void __51__UAFAssetSetManager_downloadStatusForSubscribers___block_invoke(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 136315394;
    v25 = "[UAFAssetSetManager downloadStatusForSubscribers:]_block_invoke";
    v26 = 2114;
    *v27 = v3;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Download status of assets for subscribers: %{public}@", buf, 0x16u);
  }

  v23 = 0;
  v5 = a1[4];
  v4 = a1[5];
  v6 = +[UAFSubscriptionStoreManager defaultManager];
  v7 = +[UAFConfigurationManager defaultManager];
  v22 = 0;
  v8 = [v4 assetSetUsagesForSubscribers:v5 storeManager:v6 configurationManager:v7 anyUnknown:&v23 error:&v22];
  v9 = v22;

  if (!v9)
  {
    v13 = 4;
    if (v23)
    {
      v13 = 0;
    }

    *(*(a1[6] + 8) + 24) = v13;
    if (v8)
    {
      v14 = +[UAFConfigurationManager defaultManager];
      *(*(a1[6] + 8) + 24) = [UAFAutoAssetManager getDownloadStatusFromAssetSetUsages:v8 configurationManager:v14];

      v15 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(*(a1[6] + 8) + 24);
        v17 = a1[4];
        *buf = 136315650;
        v25 = "[UAFAssetSetManager downloadStatusForSubscribers:]_block_invoke";
        v26 = 2048;
        *v27 = v16;
        *&v27[8] = 2114;
        *&v27[10] = v17;
        v18 = "%s Returning asset download status: %lu for subscribers: %{public}@";
LABEL_14:
        _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, v18, buf, 0x20u);
      }
    }

    else
    {
      v15 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(*(a1[6] + 8) + 24);
        v20 = a1[4];
        *buf = 136315650;
        v25 = "[UAFAssetSetManager downloadStatusForSubscribers:]_block_invoke";
        v26 = 2048;
        *v27 = v19;
        *&v27[8] = 2114;
        *&v27[10] = v20;
        v18 = "%s Returning status: %lu for subscribers: %{public}@ as the asset set usages are nil";
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

  v10 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = geteuid();
    v12 = a1[4];
    *buf = 136315906;
    v25 = "[UAFAssetSetManager downloadStatusForSubscribers:]_block_invoke";
    v26 = 1024;
    *v27 = v11;
    *&v27[4] = 2114;
    *&v27[6] = v12;
    *&v27[14] = 2114;
    *&v27[16] = v9;
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Unable to get asset set usages for uid: %d Subscribers: '%{public}@': %{public}@", buf, 0x26u);
  }

  *(*(a1[6] + 8) + 24) = 0;
LABEL_16:

  v21 = *MEMORY[0x1E69E9840];
}

- (unint64_t)downloadStatusForSubscriber:(id)a3 subscriptionName:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v14 count:1];
  v16[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:{1, v14}];

  v11 = [(UAFAssetSetManager *)self downloadStatusForSubscribers:v10];
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __30__UAFAssetSetManager_defaults__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.UnifiedAssetFramework"];
  v1 = qword_1ED7D11E0;
  qword_1ED7D11E0 = v0;
}

+ (void)disableCacheDelete:(BOOL)a3 forAutoAssetType:(id)a4 autoAssetSpecifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[UAFAssetSetManager getSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__UAFAssetSetManager_disableCacheDelete_forAutoAssetType_autoAssetSpecifier___block_invoke;
  block[3] = &unk_1E7FFD048;
  v13 = v7;
  v14 = v8;
  v15 = a3;
  v10 = v8;
  v11 = v7;
  dispatch_sync(v9, block);
}

void __77__UAFAssetSetManager_disableCacheDelete_forAutoAssetType_autoAssetSpecifier___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [UAFAssetSetManager cacheDeleteDefaultsKeyForAutoAssetType:*(a1 + 32) autoAssetSpecifier:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = UAFGetLogCategory(&UAFLogContextClient);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v14 = 136315650;
      v15 = "+[UAFAssetSetManager disableCacheDelete:forAutoAssetType:autoAssetSpecifier:]_block_invoke";
      v16 = 2114;
      v17 = v6;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Cache delete disabled for type %{public}@ specifier %{public}@", &v14, 0x20u);
    }

    v8 = +[UAFAssetSetManager defaults];
    [v8 setBool:*(a1 + 48) forKey:v2];
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v14 = 136315650;
      v15 = "+[UAFAssetSetManager disableCacheDelete:forAutoAssetType:autoAssetSpecifier:]_block_invoke";
      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Cache delete enabled for type %{public}@ specifier %{public}@", &v14, 0x20u);
    }

    v8 = +[UAFAssetSetManager defaults];
    [v8 removeObjectForKey:v2];
  }

  v11 = +[UAFSubscriptionStoreManager writeManager];
  v12 = +[UAFConfigurationManager defaultManager];
  [UAFAssetSetManager configureAssetDelivery:v11 configurationManager:v12 lockIfUnchanged:0 oldSubscriptions:0 newSubscriptions:0 userInitiated:0];

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)autoAssetDetailsForAssetNamed:(id)a3 assetSet:(id)a4 usages:(id)a5 autoAssetType:(id *)a6 autoAssetSpecifier:(id *)a7
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = +[UAFConfigurationManager defaultManager];
  v15 = [v14 getAssetSet:v12];
  v16 = v15;
  if (!v15)
  {
    v18 = UAFGetLogCategory(&UAFLogContextClient);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    v31 = "+[UAFAssetSetManager autoAssetDetailsForAssetNamed:assetSet:usages:autoAssetType:autoAssetSpecifier:]";
    v32 = 2114;
    v33 = v12;
    v26 = "%s Failed to find configuration for asset set %{public}@'";
LABEL_15:
    _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, v26, buf, 0x16u);
    goto LABEL_13;
  }

  v17 = [v15 autoAssetType];

  if (!v17)
  {
    v18 = UAFGetLogCategory(&UAFLogContextClient);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    v31 = "+[UAFAssetSetManager autoAssetDetailsForAssetNamed:assetSet:usages:autoAssetType:autoAssetSpecifier:]";
    v32 = 2114;
    v33 = v12;
    v26 = "%s Failed to find auto asset type for asset set %{public}@'";
    goto LABEL_15;
  }

  v29 = v13;
  v18 = [v16 getAutoAssets:v13];
  v19 = [v18 objectForKeyedSubscript:v11];
  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = v19;
  [v18 objectForKeyedSubscript:v11];
  v21 = a6;
  v23 = v22 = a7;
  v24 = [v23 objectForKeyedSubscript:?];

  if (v24)
  {
    *v21 = [v16 autoAssetType];
    v25 = [v18 objectForKeyedSubscript:v11];
    *v22 = [v25 objectForKeyedSubscript:@"AssetSpecifier"];
  }

  else
  {
LABEL_8:
    v27 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v31 = "+[UAFAssetSetManager autoAssetDetailsForAssetNamed:assetSet:usages:autoAssetType:autoAssetSpecifier:]";
      v32 = 2114;
      v33 = v11;
      v34 = 2114;
      v35 = v12;
      _os_log_error_impl(&dword_1BCF2C000, v27, OS_LOG_TYPE_ERROR, "%s Failed to find auto asset specifier for asset %{public}@ in asset set %{public}@'", buf, 0x20u);
    }
  }

  v13 = v29;
LABEL_13:

  v28 = *MEMORY[0x1E69E9840];
}

+ (BOOL)cacheDeleteDisabledForAutoAssetType:(id)a3 autoAssetSpecifier:(id)a4
{
  v4 = [UAFAssetSetManager cacheDeleteDefaultsKeyForAutoAssetType:a3 autoAssetSpecifier:a4];
  v5 = +[UAFAssetSetManager defaults];
  v6 = [v5 BOOLForKey:v4];

  return v6;
}

void __88__UAFAssetSetManager_disableCacheDelete_forAssetNamed_assetSet_usages_queue_completion___block_invoke(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get auto asset configuration for asset %@ in asset set %@ with usages %@", a1[4], a1[5], a1[6]];
  v3 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A588];
  v8[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v3 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v4];

  (*(a1[7] + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

void __88__UAFAssetSetManager_disableCacheDelete_forAssetNamed_assetSet_usages_queue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __88__UAFAssetSetManager_disableCacheDelete_forAssetNamed_assetSet_usages_queue_completion___block_invoke_3;
    v6[3] = &unk_1E7FFD940;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (BOOL)cacheDeleteDisabledForAssetNamed:(id)a3 assetSet:(id)a4 usages:(id)a5
{
  v11 = 0;
  v12 = 0;
  [UAFAssetSetManager autoAssetDetailsForAssetNamed:a3 assetSet:a4 usages:a5 autoAssetType:&v12 autoAssetSpecifier:&v11];
  v5 = v12;
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 || [UAFAssetSetManager cacheDeleteDisabledForAutoAssetType:v5 autoAssetSpecifier:v6];

  return v9;
}

+ (id)resetAssetSets:(id)a3
{
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = objc_opt_new();
  v4 = +[UAFAssetSetManager getSerialQueue];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37__UAFAssetSetManager_resetAssetSets___block_invoke;
  v11 = &unk_1E7FFD0E8;
  v5 = v3;
  v12 = v5;
  v13 = &v14;
  dispatch_sync(v4, &v8);

  if ([v15[5] count])
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v15[5]];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v6;
}

void __37__UAFAssetSetManager_resetAssetSets___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v28;
      v21 = *MEMORY[0x1E696A588];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v28 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v27 + 1) + 8 * i);
          v8 = +[UAFConfigurationManager defaultManager];
          v9 = [v8 getAssetSet:v7];

          if (v9)
          {
            [v2 addObject:v9];
          }

          else
          {
            v10 = MEMORY[0x1E696ABC0];
            v32 = v21;
            v33 = @"Could not get config";
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            v12 = v11 = v2;
            v13 = [v10 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v12];
            [*(*(*(a1 + 40) + 8) + 40) setObject:v13 forKeyedSubscript:v7];

            v2 = v11;
          }
        }

        v4 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v14 = +[UAFConfigurationManager defaultManager];
    v2 = [v14 getAllAssetSets];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v2;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [UAFCommonUtilities resetAutoAsset:*(*(&v23 + 1) + 8 * j) userInfo:*(*(*(a1 + 40) + 8) + 40)];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)resetAssetSets:(id)a3 queue:(id)a4 completion:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v8 = +[UAFAssetSetManager getConcurrentQueue];
  }

  v10 = MEMORY[0x1E695DF90];
  v25 = @"Operation";
  v26[0] = @"ResetAssetSets";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v12 = [v10 dictionaryWithDictionary:v11];

  if (v7)
  {
    [v12 setObject:v7 forKeyedSubscript:@"AssetSets"];
  }

  v13 = +[UAFAssetSetManager createXPCConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__UAFAssetSetManager_resetAssetSets_queue_completion___block_invoke;
  v20[3] = &unk_1E7FFE2F8;
  v21 = v13;
  v22 = v8;
  v23 = v7;
  v24 = v9;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v13;
  v18 = MEMORY[0x1BFB33950](v20);
  [v17 operationWithConfig:v12 completion:v18];

  v19 = *MEMORY[0x1E69E9840];
}

void __54__UAFAssetSetManager_resetAssetSets_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__UAFAssetSetManager_resetAssetSets_queue_completion___block_invoke_2;
    v9[3] = &unk_1E7FFD940;
    v11 = v4;
    v10 = v3;
    dispatch_async(v5, v9);
  }

  v6 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"all";
    if (*(a1 + 48))
    {
      v7 = *(a1 + 48);
    }

    *buf = 136315394;
    v13 = "[UAFAssetSetManager resetAssetSets:queue:completion:]_block_invoke";
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s reset asset sets '%{public}@'", buf, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)assetSetInfo:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[UAFConfigurationManager defaultManager];
  v6 = v5;
  if (v4)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v38 objects:v45 count:{16, v4}];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v39;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v6 getAssetSet:*(*(&v38 + 1) + 8 * i)];
          if (v12)
          {
            if (!v10)
            {
              v10 = objc_opt_new();
            }

            [v10 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [v5 getAllAssetSets];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v10;
  v33 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  v13 = 0;
  if (v33)
  {
    v32 = *v35;
    v30 = v6;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * j);
        v16 = [v15 name];

        if (v16)
        {
          if (!v13)
          {
            v13 = objc_opt_new();
          }

          v42[0] = @"FileURL";
          v17 = [v15 originatingURL];
          if (v17)
          {
            v31 = [v15 originatingURL];
            i = [v31 path];
            v18 = i;
          }

          else
          {
            v18 = &stru_1F3B6B510;
          }

          v43[0] = v18;
          v42[1] = @"PallasURL";
          v19 = [v15 name];
          v20 = [UAFCommonUtilities getUAFPallasURLForAssetSet:v19];
          v43[1] = v20;
          v42[2] = @"Population";
          v21 = [v15 name];
          v22 = [UAFCommonUtilities getUAFPopulationForAssetSet:v21];
          v43[2] = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];

          if (v17)
          {
          }

          v24 = [v15 name];
          [v13 setObject:v23 forKeyedSubscript:v24];

          v6 = v30;
        }
      }

      v33 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v33);
  }

  v25 = v13;
  v26 = *MEMORY[0x1E69E9840];
  return v13;
}

@end