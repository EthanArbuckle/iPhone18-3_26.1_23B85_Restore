@interface RMAssetResolverController
+ (void)_fetchAssetDeclarationWithAssetIdentifier:(id)a3 configurationIdentifier:(id)a4 subscriberStore:(id)a5 scope:(int64_t)a6 completionHandler:(id)a7;
+ (void)_fetchSubscriberStoreIfNeededWithSubscriberStore:(id)a3 configurationIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6;
+ (void)_resolveDataAsset:(id)a3 assetIdentifier:(id)a4 store:(id)a5 downloadURL:(id)a6 completionHandler:(id)a7;
+ (void)_resolveKeychainAsset:(id)a3 assetIdentifier:(id)a4 accessGroup:(id)a5 completionHandler:(id)a6;
+ (void)_resolveKeychainAsset:(id)a3 assetIdentifier:(id)a4 configurationKey:(id)a5 store:(id)a6 accessGroup:(id)a7 completionHandler:(id)a8;
+ (void)_resolveKeychainAssets:(id)a3 assetIdentifiers:(id)a4 accessGroup:(id)a5 persistentRefs:(id)a6 completionHandler:(id)a7;
+ (void)_resolveKeychainAssetsWithAssetIdentifiers:(id)a3 configurationIdentifier:(id)a4 accessGroup:(id)a5 subscriberStore:(id)a6 persistentRefs:(id)a7 completionHandler:(id)a8;
+ (void)extractUserIdentityAsset:(id)a3 assetIdentifier:(id)a4 completionHandler:(id)a5;
+ (void)resolveDataAsset:(id)a3 assetIdentifier:(id)a4 downloadURL:(id)a5 completionHandler:(id)a6;
+ (void)resolveDataAssetWithAssetIdentifier:(id)a3 configurationIdentifier:(id)a4 downloadURL:(id)a5 subscriberStore:(id)a6 scope:(int64_t)a7 completionHandler:(id)a8;
+ (void)resolveKeychainAsset:(id)a3 assetIdentifier:(id)a4 accessGroup:(id)a5 completionHandler:(id)a6;
+ (void)resolveKeychainAssetWithAssetIdentifier:(id)a3 configurationIdentifier:(id)a4 accessGroup:(id)a5 subscriberStore:(id)a6 scope:(int64_t)a7 completionHandler:(id)a8;
+ (void)resolveKeychainAssets:(id)a3 assetIdentifiers:(id)a4 accessGroup:(id)a5 completionHandler:(id)a6;
+ (void)resolveKeychainAssetsWithAssetIdentifiers:(id)a3 configurationIdentifier:(id)a4 accessGroup:(id)a5 subscriberStore:(id)a6 scope:(int64_t)a7 completionHandler:(id)a8;
+ (void)resolveKeychainPasswordAsset:(id)a3 assetIdentifier:(id)a4 accessGroup:(id)a5 completionHandler:(id)a6;
+ (void)resolveUserNameAndPasswordAsset:(id)a3 assetIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation RMAssetResolverController

+ (void)resolveUserNameAndPasswordAsset:(id)a3 assetIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [v7 store];
    v11 = [v7 assetWithIdentifier:v8];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [[RMStoreUnresolvedAsset alloc] initWithAsset:v11 queryParameters:0 useCache:0];
        v13 = [v7 store];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke_2;
        v21[3] = &unk_279B051F8;
        v22 = v11;
        v23 = v10;
        v24 = v9;
        [v13 resolveAsset:v12 completionHandler:v21];

        v14 = v22;
      }

      else
      {
        v17 = [MEMORY[0x277D45F58] assetResolverController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
        }

        v18 = MEMORY[0x277D45F40];
        v19 = [v11 declarationType];
        v20 = [v18 createAssetTypeInvalidError:v19];

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke;
        v25[3] = &unk_279B051D0;
        v26 = v20;
        v27 = v9;
        v12 = v20;
        [v10 assetEncounteredInternalError:v11 error:v12 completionHandler:v25];

        v14 = v27;
      }
    }

    else
    {
      v16 = [MEMORY[0x277D45F58] assetResolverController];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
      }

      v12 = [MEMORY[0x277D45F40] createInternalError];
      (*(v9 + 2))(v9, 0, v12);
    }
  }

  else
  {
    v15 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
    }

    (*(v9 + 2))(v9, 0, 0);
  }
}

void __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke_2_cold_1(a1);
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke_8;
    v28[3] = &unk_279B051D0;
    v30 = *(a1 + 48);
    v29 = v5;
    [v7 assetCannotBeDownloaded:v8 error:v29 completionHandler:v28];

    v9 = v30;
  }

  else
  {
    v10 = MEMORY[0x277D46058];
    v11 = [a2 assetData];
    v27 = 0;
    v12 = [v10 loadData:v11 serializationType:1 error:&v27];
    v9 = v27;

    v13 = [MEMORY[0x277D45F58] assetResolverController];
    v14 = v13;
    if (v9)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke_2_cold_2(a1);
      }

      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke_10;
      v24[3] = &unk_279B051D0;
      v17 = &v26;
      v26 = *(a1 + 48);
      v18 = &v25;
      v25 = v9;
      [v15 assetCannotBeDeserialized:v16 error:v25 completionHandler:v24];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke_2_cold_3();
      }

      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke_11;
      v21[3] = &unk_279B051D0;
      v17 = &v23;
      v23 = *(a1 + 48);
      v18 = &v22;
      v22 = v12;
      [v19 assetSuccessfullyResolved:v20 completionHandler:v21];
    }
  }
}

+ (void)extractUserIdentityAsset:(id)a3 assetIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [v7 store];
    v11 = [v7 assetWithIdentifier:v8];
    if (v11)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v13 = [MEMORY[0x277D45F58] assetResolverController];
      v14 = v13;
      if (isKindOfClass)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          +[RMAssetResolverController extractUserIdentityAsset:assetIdentifier:completionHandler:];
        }

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __88__RMAssetResolverController_extractUserIdentityAsset_assetIdentifier_completionHandler___block_invoke_14;
        v21[3] = &unk_279B051D0;
        v23 = v9;
        v22 = v11;
        [v10 assetSuccessfullyResolved:v22 completionHandler:v21];

        v15 = v23;
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
        }

        v18 = MEMORY[0x277D45F40];
        v19 = [v11 declarationType];
        v20 = [v18 createAssetTypeInvalidError:v19];

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __88__RMAssetResolverController_extractUserIdentityAsset_assetIdentifier_completionHandler___block_invoke;
        v24[3] = &unk_279B051D0;
        v25 = v20;
        v26 = v9;
        v15 = v20;
        [v10 assetEncounteredInternalError:v11 error:v15 completionHandler:v24];
      }
    }

    else
    {
      v17 = [MEMORY[0x277D45F58] assetResolverController];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
      }

      v15 = [MEMORY[0x277D45F40] createInternalError];
      (*(v9 + 2))(v9, 0, v15);
    }
  }

  else
  {
    v16 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
    }

    (*(v9 + 2))(v9, 0, 0);
  }
}

+ (void)resolveKeychainAsset:(id)a3 assetIdentifier:(id)a4 accessGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__RMAssetResolverController_resolveKeychainAsset_assetIdentifier_accessGroup_completionHandler___block_invoke;
  v12[3] = &unk_279B05220;
  v13 = v10;
  v11 = v10;
  [a1 _resolveKeychainAsset:a3 assetIdentifier:a4 accessGroup:a5 completionHandler:v12];
}

void __96__RMAssetResolverController_resolveKeychainAsset_assetIdentifier_accessGroup_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 assetKeychainReference];
  (*(v4 + 16))(v4, v6, v5);
}

+ (void)resolveKeychainAssets:(id)a3 assetIdentifiers:(id)a4 accessGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = MEMORY[0x277CBEB18];
    v14 = a6;
    v15 = [v13 arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v16 = [v11 objectEnumerator];
    [a1 _resolveKeychainAssets:v10 assetIdentifiers:v16 accessGroup:v12 persistentRefs:v15 completionHandler:v14];
  }

  else
  {
    v17 = MEMORY[0x277D45F58];
    v18 = a6;
    v19 = [v17 assetResolverController];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveKeychainAssets:assetIdentifiers:accessGroup:completionHandler:];
    }

    (*(v18 + 2))(v18, 0, 0);
  }
}

+ (void)resolveKeychainAssetWithAssetIdentifier:(id)a3 configurationIdentifier:(id)a4 accessGroup:(id)a5 subscriberStore:(id)a6 scope:(int64_t)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (v14)
  {
    v19 = [RMStoreDeclarationKey newDeclarationKey:v15];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __145__RMAssetResolverController_resolveKeychainAssetWithAssetIdentifier_configurationIdentifier_accessGroup_subscriberStore_scope_completionHandler___block_invoke;
    v22[3] = &unk_279B05248;
    v26 = v18;
    v27 = a1;
    v23 = v14;
    v24 = v19;
    v25 = v16;
    v20 = v19;
    [a1 _fetchAssetDeclarationWithAssetIdentifier:v23 configurationIdentifier:v15 subscriberStore:v17 scope:a7 completionHandler:v22];
  }

  else
  {
    v21 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveKeychainAssetWithAssetIdentifier:configurationIdentifier:accessGroup:subscriberStore:scope:completionHandler:];
    }

    (*(v18 + 2))(v18, 0, 0);
  }
}

void __145__RMAssetResolverController_resolveKeychainAssetWithAssetIdentifier_configurationIdentifier_accessGroup_subscriberStore_scope_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = *(*(a1 + 56) + 16);

    v6();
  }

  else
  {
    v15 = v4;
    v16 = v5;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __145__RMAssetResolverController_resolveKeychainAssetWithAssetIdentifier_configurationIdentifier_accessGroup_subscriberStore_scope_completionHandler___block_invoke_2;
    v13[3] = &unk_279B05220;
    v12 = *(a1 + 64);
    v14 = *(a1 + 56);
    [v12 _resolveKeychainAsset:a2 assetIdentifier:v9 configurationKey:v10 store:a3 accessGroup:v11 completionHandler:v13];
  }
}

void __145__RMAssetResolverController_resolveKeychainAssetWithAssetIdentifier_configurationIdentifier_accessGroup_subscriberStore_scope_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 assetKeychainReference];
  (*(v4 + 16))(v4, v6, v5);
}

+ (void)resolveKeychainAssetsWithAssetIdentifiers:(id)a3 configurationIdentifier:(id)a4 accessGroup:(id)a5 subscriberStore:(id)a6 scope:(int64_t)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (v14 && [v14 count])
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __147__RMAssetResolverController_resolveKeychainAssetsWithAssetIdentifiers_configurationIdentifier_accessGroup_subscriberStore_scope_completionHandler___block_invoke;
    v20[3] = &unk_279B05270;
    v24 = v18;
    v25 = a1;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    [a1 _fetchSubscriberStoreIfNeededWithSubscriberStore:v17 configurationIdentifier:v22 scope:a7 completionHandler:v20];
  }

  else
  {
    v19 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveKeychainAssetsWithAssetIdentifiers:configurationIdentifier:accessGroup:subscriberStore:scope:completionHandler:];
    }

    (*(v18 + 2))(v18, 0, 0);
  }
}

void __147__RMAssetResolverController_resolveKeychainAssetsWithAssetIdentifiers_configurationIdentifier_accessGroup_subscriberStore_scope_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(a1 + 64);
    v6 = [*(a1 + 32) objectEnumerator];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = [MEMORY[0x277CBEB18] array];
    [v5 _resolveKeychainAssetsWithAssetIdentifiers:v6 configurationIdentifier:v7 accessGroup:v8 subscriberStore:v10 persistentRefs:v9 completionHandler:*(a1 + 56)];
  }
}

+ (void)resolveKeychainPasswordAsset:(id)a3 assetIdentifier:(id)a4 accessGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __104__RMAssetResolverController_resolveKeychainPasswordAsset_assetIdentifier_accessGroup_completionHandler___block_invoke;
  v12[3] = &unk_279B05220;
  v13 = v10;
  v11 = v10;
  [a1 _resolveKeychainAsset:a3 assetIdentifier:a4 accessGroup:a5 completionHandler:v12];
}

void __104__RMAssetResolverController_resolveKeychainPasswordAsset_assetIdentifier_accessGroup_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 assetKeychainReference];
  v7 = [v6 assetKeychainUserName];

  (*(v4 + 16))(v4, v8, v7, v5);
}

+ (void)resolveDataAsset:(id)a3 assetIdentifier:(id)a4 downloadURL:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v14 = [v10 store];
    v15 = [v10 assetWithIdentifier:v11];
    if (v15)
    {
      [a1 _resolveDataAsset:v15 assetIdentifier:v11 store:v14 downloadURL:v12 completionHandler:v13];
    }

    else
    {
      v17 = [MEMORY[0x277D45F58] assetResolverController];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
      }

      v18 = [MEMORY[0x277D45F40] createInternalError];
      v13[2](v13, 0, v18);
    }
  }

  else
  {
    v16 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveDataAsset:assetIdentifier:downloadURL:completionHandler:];
    }

    v13[2](v13, 1, 0);
  }
}

+ (void)resolveDataAssetWithAssetIdentifier:(id)a3 configurationIdentifier:(id)a4 downloadURL:(id)a5 subscriberStore:(id)a6 scope:(int64_t)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a8;
  v17 = v16;
  if (v14)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __141__RMAssetResolverController_resolveDataAssetWithAssetIdentifier_configurationIdentifier_downloadURL_subscriberStore_scope_completionHandler___block_invoke;
    v19[3] = &unk_279B05298;
    v22 = v16;
    v23 = a1;
    v20 = v14;
    v21 = v15;
    [a1 _fetchAssetDeclarationWithAssetIdentifier:v20 configurationIdentifier:a4 subscriberStore:a6 scope:a7 completionHandler:v19];
  }

  else
  {
    v18 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveDataAsset:assetIdentifier:downloadURL:completionHandler:];
    }

    v17[2](v17, 1, 0);
  }
}

uint64_t __141__RMAssetResolverController_resolveDataAssetWithAssetIdentifier_configurationIdentifier_downloadURL_subscriberStore_scope_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 56) _resolveDataAsset:a2 assetIdentifier:*(a1 + 32) store:a3 downloadURL:*(a1 + 40) completionHandler:*(a1 + 48)];
  }
}

+ (void)_resolveKeychainAssets:(id)a3 assetIdentifiers:(id)a4 accessGroup:(id)a5 persistentRefs:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 nextObject];
  if (v17)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __114__RMAssetResolverController__resolveKeychainAssets_assetIdentifiers_accessGroup_persistentRefs_completionHandler___block_invoke;
    v18[3] = &unk_279B052C0;
    v23 = v16;
    v19 = v15;
    v24 = a1;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    [a1 _resolveKeychainAsset:v20 assetIdentifier:v17 accessGroup:v22 completionHandler:v18];
  }

  else
  {
    (*(v16 + 2))(v16, v15, 0);
  }
}

uint64_t __114__RMAssetResolverController__resolveKeychainAssets_assetIdentifiers_accessGroup_persistentRefs_completionHandler___block_invoke(void *a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1[8];
    v5 = *(a1[8] + 16);

    return v5();
  }

  else
  {
    v7 = a1[4];
    v8 = [a2 assetKeychainReference];
    [v7 addObject:v8];

    v9 = a1[6];
    v10 = a1[7];
    v12 = a1[4];
    v11 = a1[5];
    v14 = a1[8];
    v13 = a1[9];

    return [v13 _resolveKeychainAssets:v11 assetIdentifiers:v9 accessGroup:v10 persistentRefs:v12 completionHandler:v14];
  }
}

+ (void)_resolveKeychainAssetsWithAssetIdentifiers:(id)a3 configurationIdentifier:(id)a4 accessGroup:(id)a5 subscriberStore:(id)a6 persistentRefs:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [v14 nextObject];
  if (v20)
  {
    v21 = [v17 scope];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __157__RMAssetResolverController__resolveKeychainAssetsWithAssetIdentifiers_configurationIdentifier_accessGroup_subscriberStore_persistentRefs_completionHandler___block_invoke;
    v22[3] = &unk_279B052E8;
    v28 = v19;
    v23 = v18;
    v29 = a1;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    [a1 resolveKeychainAssetWithAssetIdentifier:v20 configurationIdentifier:v25 accessGroup:v26 subscriberStore:v27 scope:v21 completionHandler:v22];
  }

  else
  {
    (*(v19 + 2))(v19, v18, 0);
  }
}

void __157__RMAssetResolverController__resolveKeychainAssetsWithAssetIdentifiers_configurationIdentifier_accessGroup_subscriberStore_persistentRefs_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 72) + 16))();
  }

  [*(a1 + 32) addObject:v5];
  [*(a1 + 80) _resolveKeychainAssetsWithAssetIdentifiers:*(a1 + 40) configurationIdentifier:*(a1 + 48) accessGroup:*(a1 + 56) subscriberStore:*(a1 + 64) persistentRefs:*(a1 + 32) completionHandler:*(a1 + 72)];
}

+ (void)_resolveKeychainAsset:(id)a3 assetIdentifier:(id)a4 accessGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = a6;
    v14 = [v10 assetWithIdentifier:v11];
    v15 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"RMAssetResolverController" reference:v10];
    v16 = [v10 store];
    [a1 _resolveKeychainAsset:v14 assetIdentifier:v11 configurationKey:v15 store:v16 accessGroup:v12 completionHandler:v13];
  }

  else
  {
    v17 = MEMORY[0x277D45F58];
    v18 = a6;
    v19 = [v17 assetResolverController];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveKeychainAssetWithAssetIdentifier:configurationIdentifier:accessGroup:subscriberStore:scope:completionHandler:];
    }

    (*(v18 + 2))(v18, 0, 0);
  }
}

+ (void)_resolveKeychainAsset:(id)a3 assetIdentifier:(id)a4 configurationKey:(id)a5 store:(id)a6 accessGroup:(id)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v19 = v17;
      if ([v19 length])
      {
LABEL_14:
        v22 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"RMAssetResolverController" store:v16 declaration:v13];
        v23 = [[RMStoreUnresolvedKeychainAsset alloc] initWithAsset:v13 assetKey:v22 configurationKey:v15 group:v19 defaultAccessibility:0];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __120__RMAssetResolverController__resolveKeychainAsset_assetIdentifier_configurationKey_store_accessGroup_completionHandler___block_invoke_2;
        v29[3] = &unk_279B051F8;
        v30 = v13;
        v31 = v16;
        v32 = v18;
        [v31 resolveAsset:v23 completionHandler:v29];

        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v20 = MEMORY[0x277D45F98];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_14;
          }

          v21 = 0;
          goto LABEL_13;
        }

        v20 = MEMORY[0x277D45F90];
      }

      v21 = *v20;
LABEL_13:

      v19 = v21;
      goto LABEL_14;
    }

    v25 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      +[RMAssetResolverController _resolveKeychainAsset:assetIdentifier:configurationKey:store:accessGroup:completionHandler:];
    }

    v26 = MEMORY[0x277D45F40];
    v27 = [v13 declarationType];
    v28 = [v26 createAssetTypeInvalidError:v27];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __120__RMAssetResolverController__resolveKeychainAsset_assetIdentifier_configurationKey_store_accessGroup_completionHandler___block_invoke;
    v33[3] = &unk_279B051D0;
    v34 = v28;
    v35 = v18;
    v19 = v28;
    [v16 assetEncounteredInternalError:v13 error:v19 completionHandler:v33];
  }

  else
  {
    v24 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      +[RMAssetResolverController _resolveKeychainAsset:assetIdentifier:configurationKey:store:accessGroup:completionHandler:];
    }

    v19 = [MEMORY[0x277D45F40] createInternalError];
    (*(v18 + 2))(v18, 0, v19);
  }

LABEL_18:
}

void __120__RMAssetResolverController__resolveKeychainAsset_assetIdentifier_configurationKey_store_accessGroup_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277D45F58] assetResolverController];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke_2_cold_1(a1);
    }

    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __120__RMAssetResolverController__resolveKeychainAsset_assetIdentifier_configurationKey_store_accessGroup_completionHandler___block_invoke_30;
    v18[3] = &unk_279B051D0;
    v11 = &v20;
    v20 = *(a1 + 48);
    v12 = &v19;
    v19 = v6;
    [v9 assetCannotBeDownloaded:v10 error:v19 completionHandler:v18];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __120__RMAssetResolverController__resolveKeychainAsset_assetIdentifier_configurationKey_store_accessGroup_completionHandler___block_invoke_2_cold_2();
    }

    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __120__RMAssetResolverController__resolveKeychainAsset_assetIdentifier_configurationKey_store_accessGroup_completionHandler___block_invoke_31;
    v15[3] = &unk_279B051D0;
    v11 = &v17;
    v17 = *(a1 + 48);
    v12 = &v16;
    v16 = v5;
    [v13 assetSuccessfullyResolved:v14 completionHandler:v15];
  }
}

+ (void)_resolveDataAsset:(id)a3 assetIdentifier:(id)a4 store:(id)a5 downloadURL:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [[RMStoreUnresolvedAsset alloc] initWithAsset:v11 queryParameters:0 downloadURL:v14 useCache:1];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __99__RMAssetResolverController__resolveDataAsset_assetIdentifier_store_downloadURL_completionHandler___block_invoke_2;
    v25[3] = &unk_279B051F8;
    v17 = &v26;
    v26 = v11;
    v18 = &v27;
    v19 = v13;
    v27 = v19;
    v28 = v15;
    v20 = v15;
    [v19 resolveAsset:v16 completionHandler:v25];
  }

  else
  {
    v21 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[RMAssetResolverController _resolveKeychainAsset:assetIdentifier:configurationKey:store:accessGroup:completionHandler:];
    }

    v22 = MEMORY[0x277D45F40];
    v23 = [v11 declarationType];
    v24 = [v22 createAssetTypeInvalidError:v23];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __99__RMAssetResolverController__resolveDataAsset_assetIdentifier_store_downloadURL_completionHandler___block_invoke;
    v29[3] = &unk_279B051D0;
    v17 = &v31;
    v18 = &v30;
    v30 = v24;
    v31 = v15;
    v20 = v24;
    v16 = v15;
    [v13 assetEncounteredInternalError:v11 error:v20 completionHandler:v29];
  }
}

void __99__RMAssetResolverController__resolveDataAsset_assetIdentifier_store_downloadURL_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x277D45F58] assetResolverController];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke_2_cold_1(a1);
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __99__RMAssetResolverController__resolveDataAsset_assetIdentifier_store_downloadURL_completionHandler___block_invoke_33;
    v14[3] = &unk_279B051D0;
    v9 = &v16;
    v16 = *(a1 + 48);
    v15 = v4;
    [v7 assetCannotBeDownloaded:v8 error:v15 completionHandler:v14];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __99__RMAssetResolverController__resolveDataAsset_assetIdentifier_store_downloadURL_completionHandler___block_invoke_2_cold_2();
    }

    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __99__RMAssetResolverController__resolveDataAsset_assetIdentifier_store_downloadURL_completionHandler___block_invoke_34;
    v12[3] = &unk_279B05310;
    v9 = &v13;
    v13 = *(a1 + 48);
    [v10 assetSuccessfullyResolved:v11 completionHandler:v12];
  }
}

+ (void)_fetchAssetDeclarationWithAssetIdentifier:(id)a3 configurationIdentifier:(id)a4 subscriberStore:(id)a5 scope:(int64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __135__RMAssetResolverController__fetchAssetDeclarationWithAssetIdentifier_configurationIdentifier_subscriberStore_scope_completionHandler___block_invoke;
  v16[3] = &unk_279B05360;
  v17 = v12;
  v18 = v13;
  v14 = v12;
  v15 = v13;
  [a1 _fetchSubscriberStoreIfNeededWithSubscriberStore:a5 configurationIdentifier:a4 scope:a6 completionHandler:v16];
}

void __135__RMAssetResolverController__fetchAssetDeclarationWithAssetIdentifier_configurationIdentifier_subscriberStore_scope_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __135__RMAssetResolverController__fetchAssetDeclarationWithAssetIdentifier_configurationIdentifier_subscriberStore_scope_completionHandler___block_invoke_2;
    v7[3] = &unk_279B05338;
    v6 = *(a1 + 32);
    v9 = *(a1 + 40);
    v8 = v5;
    [v8 declarationWithIdentifier:v6 completionHandler:v7];
  }
}

+ (void)_fetchSubscriberStoreIfNeededWithSubscriberStore:(id)a3 configurationIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  if (a3)
  {
    (*(a6 + 2))(a6, a3, 0);
  }

  else
  {
    [RMSubscriberStore storeForStoreDeclarationKeyString:a4 scope:a5 completionHandler:a6];
  }
}

+ (void)resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Wrong asset type: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Missing asset: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_261E36000, v1, v2, "Error resolving asset %{public}@: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke_2_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_261E36000, v1, v2, "Could not deserialize credentials asset %{public}@: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)_resolveKeychainAsset:assetIdentifier:configurationKey:store:accessGroup:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Wrong asset type: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_resolveKeychainAsset:assetIdentifier:configurationKey:store:accessGroup:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Missing asset: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end