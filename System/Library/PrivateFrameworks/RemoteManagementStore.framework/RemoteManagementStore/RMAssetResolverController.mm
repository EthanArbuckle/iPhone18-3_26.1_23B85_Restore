@interface RMAssetResolverController
+ (void)_fetchAssetDeclarationWithAssetIdentifier:(id)identifier configurationIdentifier:(id)configurationIdentifier subscriberStore:(id)store scope:(int64_t)scope completionHandler:(id)handler;
+ (void)_fetchSubscriberStoreIfNeededWithSubscriberStore:(id)store configurationIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
+ (void)_resolveDataAsset:(id)asset assetIdentifier:(id)identifier store:(id)store downloadURL:(id)l completionHandler:(id)handler;
+ (void)_resolveKeychainAsset:(id)asset assetIdentifier:(id)identifier accessGroup:(id)group completionHandler:(id)handler;
+ (void)_resolveKeychainAsset:(id)asset assetIdentifier:(id)identifier configurationKey:(id)key store:(id)store accessGroup:(id)group completionHandler:(id)handler;
+ (void)_resolveKeychainAssets:(id)assets assetIdentifiers:(id)identifiers accessGroup:(id)group persistentRefs:(id)refs completionHandler:(id)handler;
+ (void)_resolveKeychainAssetsWithAssetIdentifiers:(id)identifiers configurationIdentifier:(id)identifier accessGroup:(id)group subscriberStore:(id)store persistentRefs:(id)refs completionHandler:(id)handler;
+ (void)extractUserIdentityAsset:(id)asset assetIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)resolveDataAsset:(id)asset assetIdentifier:(id)identifier downloadURL:(id)l completionHandler:(id)handler;
+ (void)resolveDataAssetWithAssetIdentifier:(id)identifier configurationIdentifier:(id)configurationIdentifier downloadURL:(id)l subscriberStore:(id)store scope:(int64_t)scope completionHandler:(id)handler;
+ (void)resolveKeychainAsset:(id)asset assetIdentifier:(id)identifier accessGroup:(id)group completionHandler:(id)handler;
+ (void)resolveKeychainAssetWithAssetIdentifier:(id)identifier configurationIdentifier:(id)configurationIdentifier accessGroup:(id)group subscriberStore:(id)store scope:(int64_t)scope completionHandler:(id)handler;
+ (void)resolveKeychainAssets:(id)assets assetIdentifiers:(id)identifiers accessGroup:(id)group completionHandler:(id)handler;
+ (void)resolveKeychainAssetsWithAssetIdentifiers:(id)identifiers configurationIdentifier:(id)identifier accessGroup:(id)group subscriberStore:(id)store scope:(int64_t)scope completionHandler:(id)handler;
+ (void)resolveKeychainPasswordAsset:(id)asset assetIdentifier:(id)identifier accessGroup:(id)group completionHandler:(id)handler;
+ (void)resolveUserNameAndPasswordAsset:(id)asset assetIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation RMAssetResolverController

+ (void)resolveUserNameAndPasswordAsset:(id)asset assetIdentifier:(id)identifier completionHandler:(id)handler
{
  assetCopy = asset;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (identifierCopy)
  {
    store = [assetCopy store];
    v11 = [assetCopy assetWithIdentifier:identifierCopy];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        createInternalError = [[RMStoreUnresolvedAsset alloc] initWithAsset:v11 queryParameters:0 useCache:0];
        store2 = [assetCopy store];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke_2;
        v21[3] = &unk_279B051F8;
        v22 = v11;
        v23 = store;
        v24 = handlerCopy;
        [store2 resolveAsset:createInternalError completionHandler:v21];

        v14 = v22;
      }

      else
      {
        assetResolverController = [MEMORY[0x277D45F58] assetResolverController];
        if (os_log_type_enabled(assetResolverController, OS_LOG_TYPE_ERROR))
        {
          +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
        }

        v18 = MEMORY[0x277D45F40];
        declarationType = [v11 declarationType];
        v20 = [v18 createAssetTypeInvalidError:declarationType];

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __95__RMAssetResolverController_resolveUserNameAndPasswordAsset_assetIdentifier_completionHandler___block_invoke;
        v25[3] = &unk_279B051D0;
        v26 = v20;
        v27 = handlerCopy;
        createInternalError = v20;
        [store assetEncounteredInternalError:v11 error:createInternalError completionHandler:v25];

        v14 = v27;
      }
    }

    else
    {
      assetResolverController2 = [MEMORY[0x277D45F58] assetResolverController];
      if (os_log_type_enabled(assetResolverController2, OS_LOG_TYPE_ERROR))
      {
        +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
      }

      createInternalError = [MEMORY[0x277D45F40] createInternalError];
      (*(handlerCopy + 2))(handlerCopy, 0, createInternalError);
    }
  }

  else
  {
    assetResolverController3 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(assetResolverController3, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
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

+ (void)extractUserIdentityAsset:(id)asset assetIdentifier:(id)identifier completionHandler:(id)handler
{
  assetCopy = asset;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (identifierCopy)
  {
    store = [assetCopy store];
    v11 = [assetCopy assetWithIdentifier:identifierCopy];
    if (v11)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      assetResolverController = [MEMORY[0x277D45F58] assetResolverController];
      v14 = assetResolverController;
      if (isKindOfClass)
      {
        if (os_log_type_enabled(assetResolverController, OS_LOG_TYPE_DEBUG))
        {
          +[RMAssetResolverController extractUserIdentityAsset:assetIdentifier:completionHandler:];
        }

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __88__RMAssetResolverController_extractUserIdentityAsset_assetIdentifier_completionHandler___block_invoke_14;
        v21[3] = &unk_279B051D0;
        v23 = handlerCopy;
        v22 = v11;
        [store assetSuccessfullyResolved:v22 completionHandler:v21];

        createInternalError = v23;
      }

      else
      {
        if (os_log_type_enabled(assetResolverController, OS_LOG_TYPE_ERROR))
        {
          +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
        }

        v18 = MEMORY[0x277D45F40];
        declarationType = [v11 declarationType];
        v20 = [v18 createAssetTypeInvalidError:declarationType];

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __88__RMAssetResolverController_extractUserIdentityAsset_assetIdentifier_completionHandler___block_invoke;
        v24[3] = &unk_279B051D0;
        v25 = v20;
        v26 = handlerCopy;
        createInternalError = v20;
        [store assetEncounteredInternalError:v11 error:createInternalError completionHandler:v24];
      }
    }

    else
    {
      assetResolverController2 = [MEMORY[0x277D45F58] assetResolverController];
      if (os_log_type_enabled(assetResolverController2, OS_LOG_TYPE_ERROR))
      {
        +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
      }

      createInternalError = [MEMORY[0x277D45F40] createInternalError];
      (*(handlerCopy + 2))(handlerCopy, 0, createInternalError);
    }
  }

  else
  {
    assetResolverController3 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(assetResolverController3, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

+ (void)resolveKeychainAsset:(id)asset assetIdentifier:(id)identifier accessGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__RMAssetResolverController_resolveKeychainAsset_assetIdentifier_accessGroup_completionHandler___block_invoke;
  v12[3] = &unk_279B05220;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [self _resolveKeychainAsset:asset assetIdentifier:identifier accessGroup:group completionHandler:v12];
}

void __96__RMAssetResolverController_resolveKeychainAsset_assetIdentifier_accessGroup_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 assetKeychainReference];
  (*(v4 + 16))(v4, v6, v5);
}

+ (void)resolveKeychainAssets:(id)assets assetIdentifiers:(id)identifiers accessGroup:(id)group completionHandler:(id)handler
{
  assetsCopy = assets;
  identifiersCopy = identifiers;
  groupCopy = group;
  if (identifiersCopy)
  {
    v13 = MEMORY[0x277CBEB18];
    handlerCopy = handler;
    v15 = [v13 arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    objectEnumerator = [identifiersCopy objectEnumerator];
    [self _resolveKeychainAssets:assetsCopy assetIdentifiers:objectEnumerator accessGroup:groupCopy persistentRefs:v15 completionHandler:handlerCopy];
  }

  else
  {
    v17 = MEMORY[0x277D45F58];
    handlerCopy2 = handler;
    assetResolverController = [v17 assetResolverController];
    if (os_log_type_enabled(assetResolverController, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveKeychainAssets:assetIdentifiers:accessGroup:completionHandler:];
    }

    (*(handlerCopy2 + 2))(handlerCopy2, 0, 0);
  }
}

+ (void)resolveKeychainAssetWithAssetIdentifier:(id)identifier configurationIdentifier:(id)configurationIdentifier accessGroup:(id)group subscriberStore:(id)store scope:(int64_t)scope completionHandler:(id)handler
{
  identifierCopy = identifier;
  configurationIdentifierCopy = configurationIdentifier;
  groupCopy = group;
  storeCopy = store;
  handlerCopy = handler;
  if (identifierCopy)
  {
    v19 = [RMStoreDeclarationKey newDeclarationKey:configurationIdentifierCopy];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __145__RMAssetResolverController_resolveKeychainAssetWithAssetIdentifier_configurationIdentifier_accessGroup_subscriberStore_scope_completionHandler___block_invoke;
    v22[3] = &unk_279B05248;
    v26 = handlerCopy;
    selfCopy = self;
    v23 = identifierCopy;
    v24 = v19;
    v25 = groupCopy;
    v20 = v19;
    [self _fetchAssetDeclarationWithAssetIdentifier:v23 configurationIdentifier:configurationIdentifierCopy subscriberStore:storeCopy scope:scope completionHandler:v22];
  }

  else
  {
    assetResolverController = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(assetResolverController, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveKeychainAssetWithAssetIdentifier:configurationIdentifier:accessGroup:subscriberStore:scope:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
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

+ (void)resolveKeychainAssetsWithAssetIdentifiers:(id)identifiers configurationIdentifier:(id)identifier accessGroup:(id)group subscriberStore:(id)store scope:(int64_t)scope completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  groupCopy = group;
  storeCopy = store;
  handlerCopy = handler;
  if (identifiersCopy && [identifiersCopy count])
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __147__RMAssetResolverController_resolveKeychainAssetsWithAssetIdentifiers_configurationIdentifier_accessGroup_subscriberStore_scope_completionHandler___block_invoke;
    v20[3] = &unk_279B05270;
    v24 = handlerCopy;
    selfCopy = self;
    v21 = identifiersCopy;
    v22 = identifierCopy;
    v23 = groupCopy;
    [self _fetchSubscriberStoreIfNeededWithSubscriberStore:storeCopy configurationIdentifier:v22 scope:scope completionHandler:v20];
  }

  else
  {
    assetResolverController = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(assetResolverController, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveKeychainAssetsWithAssetIdentifiers:configurationIdentifier:accessGroup:subscriberStore:scope:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
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

+ (void)resolveKeychainPasswordAsset:(id)asset assetIdentifier:(id)identifier accessGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __104__RMAssetResolverController_resolveKeychainPasswordAsset_assetIdentifier_accessGroup_completionHandler___block_invoke;
  v12[3] = &unk_279B05220;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [self _resolveKeychainAsset:asset assetIdentifier:identifier accessGroup:group completionHandler:v12];
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

+ (void)resolveDataAsset:(id)asset assetIdentifier:(id)identifier downloadURL:(id)l completionHandler:(id)handler
{
  assetCopy = asset;
  identifierCopy = identifier;
  lCopy = l;
  handlerCopy = handler;
  if (identifierCopy)
  {
    store = [assetCopy store];
    v15 = [assetCopy assetWithIdentifier:identifierCopy];
    if (v15)
    {
      [self _resolveDataAsset:v15 assetIdentifier:identifierCopy store:store downloadURL:lCopy completionHandler:handlerCopy];
    }

    else
    {
      assetResolverController = [MEMORY[0x277D45F58] assetResolverController];
      if (os_log_type_enabled(assetResolverController, OS_LOG_TYPE_ERROR))
      {
        +[RMAssetResolverController resolveUserNameAndPasswordAsset:assetIdentifier:completionHandler:];
      }

      createInternalError = [MEMORY[0x277D45F40] createInternalError];
      handlerCopy[2](handlerCopy, 0, createInternalError);
    }
  }

  else
  {
    assetResolverController2 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(assetResolverController2, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveDataAsset:assetIdentifier:downloadURL:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 1, 0);
  }
}

+ (void)resolveDataAssetWithAssetIdentifier:(id)identifier configurationIdentifier:(id)configurationIdentifier downloadURL:(id)l subscriberStore:(id)store scope:(int64_t)scope completionHandler:(id)handler
{
  identifierCopy = identifier;
  lCopy = l;
  handlerCopy = handler;
  v17 = handlerCopy;
  if (identifierCopy)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __141__RMAssetResolverController_resolveDataAssetWithAssetIdentifier_configurationIdentifier_downloadURL_subscriberStore_scope_completionHandler___block_invoke;
    v19[3] = &unk_279B05298;
    v22 = handlerCopy;
    selfCopy = self;
    v20 = identifierCopy;
    v21 = lCopy;
    [self _fetchAssetDeclarationWithAssetIdentifier:v20 configurationIdentifier:configurationIdentifier subscriberStore:store scope:scope completionHandler:v19];
  }

  else
  {
    assetResolverController = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(assetResolverController, OS_LOG_TYPE_DEBUG))
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

+ (void)_resolveKeychainAssets:(id)assets assetIdentifiers:(id)identifiers accessGroup:(id)group persistentRefs:(id)refs completionHandler:(id)handler
{
  assetsCopy = assets;
  identifiersCopy = identifiers;
  groupCopy = group;
  refsCopy = refs;
  handlerCopy = handler;
  nextObject = [identifiersCopy nextObject];
  if (nextObject)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __114__RMAssetResolverController__resolveKeychainAssets_assetIdentifiers_accessGroup_persistentRefs_completionHandler___block_invoke;
    v18[3] = &unk_279B052C0;
    v23 = handlerCopy;
    v19 = refsCopy;
    selfCopy = self;
    v20 = assetsCopy;
    v21 = identifiersCopy;
    v22 = groupCopy;
    [self _resolveKeychainAsset:v20 assetIdentifier:nextObject accessGroup:v22 completionHandler:v18];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, refsCopy, 0);
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

+ (void)_resolveKeychainAssetsWithAssetIdentifiers:(id)identifiers configurationIdentifier:(id)identifier accessGroup:(id)group subscriberStore:(id)store persistentRefs:(id)refs completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  groupCopy = group;
  storeCopy = store;
  refsCopy = refs;
  handlerCopy = handler;
  nextObject = [identifiersCopy nextObject];
  if (nextObject)
  {
    scope = [storeCopy scope];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __157__RMAssetResolverController__resolveKeychainAssetsWithAssetIdentifiers_configurationIdentifier_accessGroup_subscriberStore_persistentRefs_completionHandler___block_invoke;
    v22[3] = &unk_279B052E8;
    v28 = handlerCopy;
    v23 = refsCopy;
    selfCopy = self;
    v24 = identifiersCopy;
    v25 = identifierCopy;
    v26 = groupCopy;
    v27 = storeCopy;
    [self resolveKeychainAssetWithAssetIdentifier:nextObject configurationIdentifier:v25 accessGroup:v26 subscriberStore:v27 scope:scope completionHandler:v22];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, refsCopy, 0);
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

+ (void)_resolveKeychainAsset:(id)asset assetIdentifier:(id)identifier accessGroup:(id)group completionHandler:(id)handler
{
  assetCopy = asset;
  identifierCopy = identifier;
  groupCopy = group;
  if (identifierCopy)
  {
    handlerCopy = handler;
    v14 = [assetCopy assetWithIdentifier:identifierCopy];
    v15 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"RMAssetResolverController" reference:assetCopy];
    store = [assetCopy store];
    [self _resolveKeychainAsset:v14 assetIdentifier:identifierCopy configurationKey:v15 store:store accessGroup:groupCopy completionHandler:handlerCopy];
  }

  else
  {
    v17 = MEMORY[0x277D45F58];
    handlerCopy2 = handler;
    assetResolverController = [v17 assetResolverController];
    if (os_log_type_enabled(assetResolverController, OS_LOG_TYPE_DEBUG))
    {
      +[RMAssetResolverController resolveKeychainAssetWithAssetIdentifier:configurationIdentifier:accessGroup:subscriberStore:scope:completionHandler:];
    }

    (*(handlerCopy2 + 2))(handlerCopy2, 0, 0);
  }
}

+ (void)_resolveKeychainAsset:(id)asset assetIdentifier:(id)identifier configurationKey:(id)key store:(id)store accessGroup:(id)group completionHandler:(id)handler
{
  assetCopy = asset;
  identifierCopy = identifier;
  keyCopy = key;
  storeCopy = store;
  groupCopy = group;
  handlerCopy = handler;
  if (assetCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      createInternalError = groupCopy;
      if ([createInternalError length])
      {
LABEL_14:
        v22 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"RMAssetResolverController" store:storeCopy declaration:assetCopy];
        v23 = [[RMStoreUnresolvedKeychainAsset alloc] initWithAsset:assetCopy assetKey:v22 configurationKey:keyCopy group:createInternalError defaultAccessibility:0];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __120__RMAssetResolverController__resolveKeychainAsset_assetIdentifier_configurationKey_store_accessGroup_completionHandler___block_invoke_2;
        v29[3] = &unk_279B051F8;
        v30 = assetCopy;
        v31 = storeCopy;
        v32 = handlerCopy;
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

      createInternalError = v21;
      goto LABEL_14;
    }

    assetResolverController = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(assetResolverController, OS_LOG_TYPE_ERROR))
    {
      +[RMAssetResolverController _resolveKeychainAsset:assetIdentifier:configurationKey:store:accessGroup:completionHandler:];
    }

    v26 = MEMORY[0x277D45F40];
    declarationType = [assetCopy declarationType];
    v28 = [v26 createAssetTypeInvalidError:declarationType];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __120__RMAssetResolverController__resolveKeychainAsset_assetIdentifier_configurationKey_store_accessGroup_completionHandler___block_invoke;
    v33[3] = &unk_279B051D0;
    v34 = v28;
    v35 = handlerCopy;
    createInternalError = v28;
    [storeCopy assetEncounteredInternalError:assetCopy error:createInternalError completionHandler:v33];
  }

  else
  {
    assetResolverController2 = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(assetResolverController2, OS_LOG_TYPE_ERROR))
    {
      +[RMAssetResolverController _resolveKeychainAsset:assetIdentifier:configurationKey:store:accessGroup:completionHandler:];
    }

    createInternalError = [MEMORY[0x277D45F40] createInternalError];
    (*(handlerCopy + 2))(handlerCopy, 0, createInternalError);
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

+ (void)_resolveDataAsset:(id)asset assetIdentifier:(id)identifier store:(id)store downloadURL:(id)l completionHandler:(id)handler
{
  assetCopy = asset;
  identifierCopy = identifier;
  storeCopy = store;
  lCopy = l;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [[RMStoreUnresolvedAsset alloc] initWithAsset:assetCopy queryParameters:0 downloadURL:lCopy useCache:1];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __99__RMAssetResolverController__resolveDataAsset_assetIdentifier_store_downloadURL_completionHandler___block_invoke_2;
    v25[3] = &unk_279B051F8;
    v17 = &v26;
    v26 = assetCopy;
    v18 = &v27;
    v19 = storeCopy;
    v27 = v19;
    v28 = handlerCopy;
    v20 = handlerCopy;
    [v19 resolveAsset:v16 completionHandler:v25];
  }

  else
  {
    assetResolverController = [MEMORY[0x277D45F58] assetResolverController];
    if (os_log_type_enabled(assetResolverController, OS_LOG_TYPE_ERROR))
    {
      +[RMAssetResolverController _resolveKeychainAsset:assetIdentifier:configurationKey:store:accessGroup:completionHandler:];
    }

    v22 = MEMORY[0x277D45F40];
    declarationType = [assetCopy declarationType];
    v24 = [v22 createAssetTypeInvalidError:declarationType];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __99__RMAssetResolverController__resolveDataAsset_assetIdentifier_store_downloadURL_completionHandler___block_invoke;
    v29[3] = &unk_279B051D0;
    v17 = &v31;
    v18 = &v30;
    v30 = v24;
    v31 = handlerCopy;
    v20 = v24;
    v16 = handlerCopy;
    [storeCopy assetEncounteredInternalError:assetCopy error:v20 completionHandler:v29];
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

+ (void)_fetchAssetDeclarationWithAssetIdentifier:(id)identifier configurationIdentifier:(id)configurationIdentifier subscriberStore:(id)store scope:(int64_t)scope completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __135__RMAssetResolverController__fetchAssetDeclarationWithAssetIdentifier_configurationIdentifier_subscriberStore_scope_completionHandler___block_invoke;
  v16[3] = &unk_279B05360;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v14 = identifierCopy;
  v15 = handlerCopy;
  [self _fetchSubscriberStoreIfNeededWithSubscriberStore:store configurationIdentifier:configurationIdentifier scope:scope completionHandler:v16];
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

+ (void)_fetchSubscriberStoreIfNeededWithSubscriberStore:(id)store configurationIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  if (store)
  {
    (*(handler + 2))(handler, store, 0);
  }

  else
  {
    [RMSubscriberStore storeForStoreDeclarationKeyString:identifier scope:scope completionHandler:handler];
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