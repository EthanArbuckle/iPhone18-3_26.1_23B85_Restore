@interface WKWebsiteDataStore
@end

@implementation WKWebsiteDataStore

void __67__WKWebsiteDataStore_SafariSharedExtras__safari_secIdentitiesCache__block_invoke()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel_removeDataOfTypes_forDataRecords_completionHandler_);
  Implementation = method_getImplementation(InstanceMethod);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__WKWebsiteDataStore_SafariSharedExtras__safari_secIdentitiesCache__block_invoke_2;
  aBlock[3] = &__block_descriptor_48_e39_v40__0_8__NSSet_16__NSArray_24___v___32l;
  aBlock[4] = Implementation;
  aBlock[5] = sel_removeDataOfTypes_forDataRecords_completionHandler_;
  v3 = _Block_copy(aBlock);
  v4 = imp_implementationWithBlock(v3);
  method_setImplementation(InstanceMethod, v4);

  v5 = objc_opt_class();
  v6 = class_getInstanceMethod(v5, sel_removeDataOfTypes_modifiedSince_completionHandler_);
  v7 = method_getImplementation(v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__WKWebsiteDataStore_SafariSharedExtras__safari_secIdentitiesCache__block_invoke_3;
  v10[3] = &__block_descriptor_48_e38_v40__0_8__NSSet_16__NSDate_24___v___32l;
  v10[4] = v7;
  v10[5] = sel_removeDataOfTypes_modifiedSince_completionHandler_;
  v8 = _Block_copy(v10);
  v9 = imp_implementationWithBlock(v8);
  method_setImplementation(v6, v9);
}

void __117__WKWebsiteDataStore_SafariSharedExtras__safari_fetchExistingDataStoresForProfilesWithIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  if (*(a1 + 56) == 1)
  {
    v5 = [MEMORY[0x1E69853B8] safari_defaultDataStore];
    [v4 addObject:v5];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) UUIDString];
        if ([*(a1 + 32) containsObject:v11])
        {
          v12 = [*(a1 + 48) safari_dataStoreWithoutCachingForProfileWithIdentifier:v11];
          [v4 addObject:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *(a1 + 40);
  v14 = [v4 copy];
  (*(v13 + 16))(v13, v14);
}

void __67__WKWebsiteDataStore_SafariSharedExtras__safari_secIdentitiesCache__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = objc_getAssociatedObject(v12, sel_safari_secIdentitiesCache);
  [v13 removeAllObjects];
  (*(a1 + 32))(v12, *(a1 + 40), v11, v10, v9);
}

void __67__WKWebsiteDataStore_SafariSharedExtras__safari_secIdentitiesCache__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = objc_getAssociatedObject(v12, sel_safari_secIdentitiesCache);
  [v13 removeAllObjects];
  (*(a1 + 32))(v12, *(a1 + 40), v11, v10, v9);
}

@end