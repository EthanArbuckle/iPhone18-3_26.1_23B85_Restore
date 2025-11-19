@interface WFCloudKitItemRequest
+ (id)createRecordFromItem:(id)a3 zoneID:(id)a4;
+ (id)createRecordIDWithName:(id)a3 zoneID:(id)a4;
+ (id)desiredKeysFromProperties:(id)a3 itemType:(Class)a4;
+ (id)itemValueForRecordValue:(id)a3 item:(id)a4 property:(id)a5 resolvedReferences:(id)a6;
+ (id)recordFromSystemFieldsData:(id)a3 error:(id *)a4;
+ (id)recordValueForItemValue:(id)a3 item:(id)a4 property:(id)a5 recordKey:(id)a6 zoneID:(id)a7;
+ (id)systemFieldsDataFromRecord:(id)a3 error:(id *)a4;
+ (void)assignRecordValue:(id)a3 toItem:(id)a4 withProperty:(id)a5 resolvedReferences:(id)a6;
+ (void)hydrateItem:(id)a3 withRecord:(id)a4 resolvedReferences:(id)a5 setNilValues:(BOOL)a6;
- (WFCloudKitItemRequest)initWithContainer:(id)a3 database:(id)a4;
- (id)deleteItem:(id)a3 completionHandler:(id)a4;
- (id)fetchConfigurationAssetWithType:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
- (id)fetchItemWithID:(id)a3 itemType:(Class)a4 groupName:(id)a5 properties:(id)a6 completionHandler:(id)a7;
- (id)fetchItemsWithPredicate:(id)a3 itemType:(Class)a4 groupName:(id)a5 properties:(id)a6 sortDescriptors:(id)a7 resultsLimit:(unint64_t)a8 qualityOfService:(int64_t)a9 completionHandler:(id)a10;
- (id)fetchRecordIDs:(id)a3 desiredKeys:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6;
- (id)updateItems:(id)a3 setNilValues:(BOOL)a4 qualityOfService:(int64_t)a5 timeoutIntervalForRequest:(double)a6 completionHandler:(id)a7;
@end

@implementation WFCloudKitItemRequest

- (id)fetchConfigurationAssetWithType:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if (![v11 length])
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"WFRemoteConfigurationAsset.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"assetType.length"}];
  }

  v12 = [MEMORY[0x1E6996CA8] sharedContext];
  v13 = [v12 applicationBundle];

  v14 = [v13 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  v15 = [v13 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
  v16 = [v13 bundleIdentifier];
  [v16 UTF8String];
  if (((v10 != 0) & os_variant_has_internal_content()) != 0)
  {
    v17 = v10;
  }

  else
  {
    v17 = @"default";
  }

  v18 = v17;

  v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"assetType = %@ AND shortVersion = %@ AND buildNumber = %@ AND configuration = %@", v11, v14, v15, v18];

  v20 = objc_opt_class();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __115__WFCloudKitItemRequest_RemoteConfigurationAsset__fetchConfigurationAssetWithType_configuration_completionHandler___block_invoke;
  v25[3] = &unk_1E837F588;
  v26 = v9;
  v21 = v9;
  v22 = [(WFCloudKitItemRequest *)self fetchItemsWithPredicate:v19 itemType:v20 groupName:@"ConfigurationAssetQuery" properties:0 sortDescriptors:0 resultsLimit:1 completionHandler:v25];

  return v22;
}

void __115__WFCloudKitItemRequest_RemoteConfigurationAsset__fetchConfigurationAssetWithType_configuration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = [v6 assetDataFile];

  (*(*(a1 + 32) + 16))();
}

- (id)fetchRecordIDs:(id)a3 desiredKeys:(id)a4 operationGroup:(id)a5 completionHandler:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = getWFCloudKitLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v10 count];
    v16 = [(WFCloudKitItemRequest *)self performExpensiveFetchOperations];
    v33 = "[WFCloudKitItemRequest fetchRecordIDs:desiredKeys:operationGroup:completionHandler:]";
    v17 = @"all";
    *buf = 136315650;
    if (!v16)
    {
      v17 = v11;
    }

    v34 = 2048;
    v35 = v15;
    v36 = 2112;
    v37 = v17;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_INFO, "%s Fetching %lu records by ID. Desired keys: %@", buf, 0x20u);
  }

  v18 = [objc_alloc(MEMORY[0x1E695B938]) initWithRecordIDs:v10];
  if (![(WFCloudKitItemRequest *)self performExpensiveFetchOperations])
  {
    [v18 setDesiredKeys:v11];
  }

  [v18 setGroup:v12];
  v19 = [(WFCloudKitItemRequest *)self xpcActivity];
  v20 = [v18 configuration];
  [v20 setXpcActivity:v19];

  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __85__WFCloudKitItemRequest_fetchRecordIDs_desiredKeys_operationGroup_completionHandler___block_invoke;
  v29 = &unk_1E83798C8;
  v30 = v10;
  v31 = v13;
  v21 = v13;
  v22 = v10;
  [v18 setFetchRecordsCompletionBlock:&v26];
  v23 = [(WFCloudKitItemRequest *)self database:v26];
  [v23 addOperation:v18];

  v24 = *MEMORY[0x1E69E9840];

  return v18;
}

void __85__WFCloudKitItemRequest_fetchRecordIDs_desiredKeys_operationGroup_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = getWFCloudKitLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 32) count];
    v10 = 136315394;
    v11 = "[WFCloudKitItemRequest fetchRecordIDs:desiredKeys:operationGroup:completionHandler:]_block_invoke";
    v12 = 2048;
    v13 = v8;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s Fetching %lu records by ID completed", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

- (id)deleteItem:(id)a3 completionHandler:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = objc_alloc(MEMORY[0x1E695B9B8]);
  v10 = [v7 identifier];

  v25[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v12 = [v9 initWithRecordsToSave:0 recordIDsToDelete:v11];

  v13 = [(WFCloudKitItemRequest *)self xpcActivity];
  v14 = [v12 configuration];
  [v14 setXpcActivity:v13];

  [v8 setCloudOperation:v12];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __54__WFCloudKitItemRequest_deleteItem_completionHandler___block_invoke;
  v21[3] = &unk_1E837A588;
  v15 = v8;
  v23 = self;
  v24 = v6;
  v22 = v15;
  v16 = v6;
  [v12 setModifyRecordsCompletionBlock:v21];
  v17 = [(WFCloudKitItemRequest *)self database];
  [v17 addOperation:v12];

  v18 = v15;
  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

void __54__WFCloudKitItemRequest_deleteItem_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v5 = [*(a1 + 32) isCancelled];
  v6 = *(a1 + 48);
  if (v5)
  {
    v7 = [*(a1 + 40) createTaskCancelledError];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(a1 + 48), v8);
  }
}

- (id)updateItems:(id)a3 setNilValues:(BOOL)a4 qualityOfService:(int64_t)a5 timeoutIntervalForRequest:(double)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a7;
  v15 = objc_opt_new();
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke;
  v34[3] = &unk_1E8379800;
  v34[4] = self;
  v34[5] = a2;
  v16 = [v13 if_map:v34];
  v17 = [(WFCloudKitItemRequest *)self container];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_2;
  v25[3] = &unk_1E83798A0;
  v30 = v14;
  v31 = a5;
  v26 = v16;
  v27 = self;
  v32 = a6;
  v18 = v15;
  v28 = v18;
  v29 = v13;
  v33 = a4;
  v19 = v13;
  v20 = v16;
  v21 = v14;
  [v17 accountStatusWithCompletionHandler:v25];

  v22 = v29;
  v23 = v18;

  return v18;
}

id __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 conformsToProtocol:&unk_1F4AB1E68] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"WFCloudKitItemRequest.m" lineNumber:294 description:{@"Item must conform to WFCloudKitItem protocol: %@", v3}];
  }

  v4 = *(a1 + 32);
  v5 = [objc_opt_class() createRecordFromItem:v3 zoneID:0];

  return v5;
}

void __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a2 != 1)
  {
    v10 = WFLocalizedString(@"In order to do this, you must be signed into iCloud.");
    v11 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v13 = [v11 errorWithDomain:@"WFCloudKitErrorDomain" code:2 userInfo:v12];

    (*(*(a1 + 64) + 16))();
    goto LABEL_6;
  }

  v3 = *(a1 + 72);
  if ((v3 + 1) > 0x22)
  {
    goto LABEL_9;
  }

  if (((1 << (v3 + 1)) & 0x404040400) == 0)
  {
    if (v3 == -1)
    {
      v3 = 21;
      goto LABEL_4;
    }

LABEL_9:
    v3 = 0;
  }

LABEL_4:
  v4 = dispatch_get_global_queue(v3, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_3;
  block[3] = &unk_1E8379878;
  v5 = *(a1 + 32);
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  *&v6 = v5;
  *(&v6 + 1) = *(a1 + 40);
  v15 = v6;
  v7 = *(a1 + 48);
  v19 = *(a1 + 64);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v17 = v15;
  v18 = v9;
  v22 = *(a1 + 88);
  dispatch_async(v4, block);

  v10 = v17;
LABEL_6:

  v14 = *MEMORY[0x1E69E9840];
}

void __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695B9B8]) initWithRecordsToSave:*(a1 + 32) recordIDsToDelete:0];
  [v2 setSavePolicy:2];
  v3 = [*(a1 + 40) xpcActivity];
  v4 = [v2 configuration];
  [v4 setXpcActivity:v3];

  if (*(a1 + 72) != -1 || *(a1 + 80) != 0.0)
  {
    v5 = [v2 configuration];
    [v5 setQualityOfService:*(a1 + 72)];
    [v5 setTimeoutIntervalForRequest:*(a1 + 80)];
  }

  [*(a1 + 48) setCloudOperation:v2];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_4;
  v12[3] = &unk_1E8379850;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = *(a1 + 40);
  v11 = v8;
  *&v9 = *(a1 + 56);
  *(&v9 + 1) = v7;
  v13 = v11;
  v14 = v9;
  v15 = *(a1 + 88);
  [v2 setModifyRecordsCompletionBlock:v12];
  v10 = [*(a1 + 40) database];
  [v10 addOperation:v2];
}

void __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if ([*(a1 + 32) isCancelled])
  {
    v8 = *(a1 + 56);
    v9 = [*(a1 + 40) createTaskCancelledError];
    (*(v8 + 16))(v8, v9);
  }

  else if (v7)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_5;
    v16 = &unk_1E8379828;
    v17 = *(a1 + 48);
    v18 = *(a1 + 64);
    [v6 enumerateObjectsUsingBlock:&v13];
    v10 = getWFCloudKitLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v6 count];
      *buf = 136315394;
      v20 = "[WFCloudKitItemRequest updateItems:setNilValues:qualityOfService:timeoutIntervalForRequest:completionHandler:]_block_invoke_4";
      v21 = 2048;
      v22 = v11;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_INFO, "%s Updated %lu items", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [WFCloudKitItemRequest hydrateItem:v7 withRecord:v6 setNilValues:*(a1 + 40)];
}

- (id)fetchItemWithID:(id)a3 itemType:(Class)a4 groupName:(id)a5 properties:(id)a6 completionHandler:(id)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = a5;
  if (([(objc_class *)a4 conformsToProtocol:&unk_1F4AB1E68]& 1) == 0)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"WFCloudKitItemRequest.m" lineNumber:223 description:@"Item type must conform to WFCloudKitItem protocol"];
  }

  v17 = getWFCloudKitLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v13 recordName];
    *buf = 136315394;
    v46 = "[WFCloudKitItemRequest fetchItemWithID:itemType:groupName:properties:completionHandler:]";
    v47 = 2112;
    v48 = v18;
    _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Fetching record with ID: %@", buf, 0x16u);
  }

  v19 = objc_alloc_init(MEMORY[0x1E695BA08]);
  [v19 setName:v16];

  v20 = objc_opt_new();
  v21 = objc_alloc(MEMORY[0x1E695B938]);
  v44 = v13;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v23 = [v21 initWithRecordIDs:v22];

  v24 = [(WFCloudKitItemRequest *)self xpcActivity];
  v25 = [v23 configuration];
  [v25 setXpcActivity:v24];

  if (![(WFCloudKitItemRequest *)self performExpensiveFetchOperations])
  {
    v26 = [objc_opt_class() desiredKeysFromProperties:v14 itemType:a4];
    [v23 setDesiredKeys:v26];
  }

  [v23 setGroup:v19];
  [v20 setCloudOperation:v23];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __89__WFCloudKitItemRequest_fetchItemWithID_itemType_groupName_properties_completionHandler___block_invoke;
  v37[3] = &unk_1E83797D8;
  v27 = v20;
  v38 = v27;
  v39 = self;
  v42 = v15;
  v43 = a4;
  v40 = v13;
  v41 = v19;
  v28 = v19;
  v29 = v13;
  v30 = v15;
  [v23 setFetchRecordsCompletionBlock:v37];
  v31 = [(WFCloudKitItemRequest *)self database];
  [v31 addOperation:v23];

  v32 = v41;
  v33 = v27;

  v34 = *MEMORY[0x1E69E9840];
  return v27;
}

void __89__WFCloudKitItemRequest_fetchItemWithID_itemType_groupName_properties_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([a1[4] isCancelled])
  {
    v7 = a1[8];
    v8 = [a1[5] createTaskCancelledError];
    v7[2](v7, 0, v8);
  }

  else
  {
    v9 = [v5 allValues];
    v10 = [v9 firstObject];

    if (v10)
    {
      v11 = [v10 recordType];
      v12 = [a1[9] recordType];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        v14 = objc_alloc_init(a1[9]);
        v15 = [[WFCloudKitItemRecord alloc] initWithRecord:v10 item:v14];
        v16 = [a1[5] operationWaitingQueue];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __89__WFCloudKitItemRequest_fetchItemWithID_itemType_groupName_properties_completionHandler___block_invoke_287;
        v27[3] = &unk_1E8379788;
        v17 = a1[4];
        v18 = a1[5];
        v28 = v17;
        v29 = v18;
        v30 = v15;
        v31 = a1[7];
        v19 = a1[8];
        v32 = v14;
        v33 = v19;
        v20 = v14;
        v21 = v15;
        dispatch_async(v16, v27);
      }

      else
      {
        v22 = getWFCloudKitLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          v23 = [a1[6] recordName];
          v24 = [v10 recordType];
          v25 = [a1[9] recordType];
          *buf = 136315906;
          v35 = "[WFCloudKitItemRequest fetchItemWithID:itemType:groupName:properties:completionHandler:]_block_invoke";
          v36 = 2114;
          v37 = v23;
          v38 = 2114;
          v39 = v24;
          v40 = 2114;
          v41 = v25;
          _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s Record with identifier %{public}@ is type %{public}@, instead of %{public}@", buf, 0x2Au);
        }

        v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCloudKitErrorDomain" code:1 userInfo:0];
        (*(a1[8] + 2))();
      }
    }

    else
    {
      (*(a1[8] + 2))();
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __89__WFCloudKitItemRequest_fetchItemWithID_itemType_groupName_properties_completionHandler___block_invoke_287(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) operationQueue];
  v3 = [WFCloudKitResolveReferencesOperation alloc];
  v4 = *(a1 + 40);
  v18[0] = *(a1 + 48);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v6 = [(WFCloudKitResolveReferencesOperation *)v3 initWithRequest:v4 records:v5 operationGroup:*(a1 + 56) task:*(a1 + 32)];
  [v2 addOperation:v6];

  v7 = [*(a1 + 32) operationQueue];
  [v7 waitUntilAllOperationsAreFinished];

  v8 = [*(a1 + 40) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__WFCloudKitItemRequest_fetchItemWithID_itemType_groupName_properties_completionHandler___block_invoke_2;
  block[3] = &unk_1E837F510;
  v9 = *(a1 + 32);
  v10 = *(a1 + 72);
  *&v11 = v9;
  *(&v11 + 1) = *(a1 + 40);
  v14 = v11;
  *&v12 = *(a1 + 64);
  *(&v12 + 1) = v10;
  v16 = v14;
  v17 = v12;
  dispatch_async(v8, block);

  v13 = *MEMORY[0x1E69E9840];
}

void __89__WFCloudKitItemRequest_fetchItemWithID_itemType_groupName_properties_completionHandler___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 56);
    v13 = [*(a1 + 40) createTaskCancelledError];
    (*(v2 + 16))(v2, 0);
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = [*(a1 + 32) error];

    v5 = getWFCloudKitLogObject();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 32) error];
        *buf = 136315394;
        v15 = "[WFCloudKitItemRequest fetchItemWithID:itemType:groupName:properties:completionHandler:]_block_invoke_2";
        v16 = 2114;
        v17 = v7;
        _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Record fetch and resolve operations encountered error: %{public}@", buf, 0x16u);
      }

      v8 = *(a1 + 56);
      v9 = [*(a1 + 32) error];
      (*(v8 + 16))(v8, 0, v9);
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 48);
        *buf = 136315394;
        v15 = "[WFCloudKitItemRequest fetchItemWithID:itemType:groupName:properties:completionHandler:]_block_invoke";
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_INFO, "%s Record fetch and resolve operations completed. Item: %@", buf, 0x16u);
      }

      v11 = *(a1 + 48);
      (*(*(a1 + 56) + 16))();
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

- (id)fetchItemsWithPredicate:(id)a3 itemType:(Class)a4 groupName:(id)a5 properties:(id)a6 sortDescriptors:(id)a7 resultsLimit:(unint64_t)a8 qualityOfService:(int64_t)a9 completionHandler:(id)a10
{
  v75 = *MEMORY[0x1E69E9840];
  v54 = a3;
  v53 = a6;
  v52 = a10;
  v16 = a7;
  v17 = a5;
  if (([(objc_class *)a4 conformsToProtocol:&unk_1F4AB1E68]& 1) == 0)
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"WFCloudKitItemRequest.m" lineNumber:152 description:@"Item type must conform to WFCloudKitItem protocol"];
  }

  v18 = [MEMORY[0x1E696AFB0] UUID];
  v19 = getWFGalleryLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v68 = "[WFCloudKitItemRequest fetchItemsWithPredicate:itemType:groupName:properties:sortDescriptors:resultsLimit:qualityOfService:completionHandler:]";
    v69 = 2114;
    v70 = v18;
    _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_INFO, "%s Starting task with debugging UUID: %{public}@", buf, 0x16u);
  }

  v50 = objc_opt_new();
  v20 = objc_alloc(MEMORY[0x1E695BA30]);
  v21 = [(objc_class *)a4 recordType];
  v22 = [v20 initWithRecordType:v21 predicate:v54];

  [v22 setSortDescriptors:v16];
  v23 = getWFCloudKitLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [(objc_class *)a4 recordType];
    *buf = 136315906;
    v68 = "[WFCloudKitItemRequest fetchItemsWithPredicate:itemType:groupName:properties:sortDescriptors:resultsLimit:qualityOfService:completionHandler:]";
    v69 = 2114;
    v70 = v18;
    v71 = 2114;
    v72 = v24;
    v73 = 2112;
    v74 = v54;
    _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_INFO, "%s Debugging UUID: %{public}@ Searching records of type %{public}@ with predicate: %@", buf, 0x2Au);
  }

  v25 = objc_alloc_init(MEMORY[0x1E695BA08]);
  [v25 setName:v17];

  v26 = [v25 defaultConfiguration];
  [v26 setQualityOfService:a9];

  v27 = [(WFCloudKitItemRequest *)self xpcActivity];
  v28 = [v25 defaultConfiguration];
  [v28 setXpcActivity:v27];

  v29 = objc_opt_new();
  v30 = objc_opt_new();
  v31 = [objc_alloc(MEMORY[0x1E695BA48]) initWithQuery:v22];
  v32 = v31;
  if (a8)
  {
    [v31 setResultsLimit:?];
  }

  if (![(WFCloudKitItemRequest *)self performExpensiveFetchOperations])
  {
    v33 = [objc_opt_class() desiredKeysFromProperties:v53 itemType:a4];
    [v32 setDesiredKeys:v33];
  }

  [v32 setGroup:v25];
  v34 = objc_alloc(MEMORY[0x1E695BA90]);
  v35 = [v34 initWithZoneName:*MEMORY[0x1E695B800] ownerName:*MEMORY[0x1E695B728]];
  [v32 setZoneID:v35];

  [v50 setCloudOperation:v32];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke;
  v63[3] = &unk_1E8379760;
  v66 = a4;
  v36 = v29;
  v64 = v36;
  v37 = v30;
  v65 = v37;
  [v32 setRecordFetchedBlock:v63];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke_2;
  v55[3] = &unk_1E83797B0;
  v38 = v50;
  v56 = v38;
  v57 = v18;
  v61 = v37;
  v62 = v52;
  v58 = self;
  v59 = v36;
  v60 = v25;
  v39 = v37;
  v40 = v25;
  v41 = v36;
  v42 = v52;
  v43 = v18;
  [v32 setQueryCompletionBlock:v55];
  v44 = [(WFCloudKitItemRequest *)self database];
  [v44 addOperation:v32];

  v45 = v61;
  v46 = v38;

  v47 = *MEMORY[0x1E69E9840];
  return v38;
}

void __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v6 = objc_alloc_init(v3);
  v5 = [[WFCloudKitItemRecord alloc] initWithRecord:v4 item:v6];

  [*(a1 + 32) addObject:v5];
  [*(a1 + 40) addObject:v6];
}

void __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    goto LABEL_2;
  }

  v9 = [v4 domain];
  if (([v9 isEqualToString:*MEMORY[0x1E695B740]] & 1) == 0)
  {

    if (v4)
    {
      goto LABEL_8;
    }

LABEL_12:
    v13 = [*(a1 + 48) operationWaitingQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke_280;
    v18[3] = &unk_1E8379788;
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v19 = v14;
    v20 = v15;
    v21 = v16;
    v22 = *(a1 + 64);
    v24 = *(a1 + 80);
    v23 = *(a1 + 72);
    dispatch_async(v13, v18);

    goto LABEL_13;
  }

  v10 = [v4 code];

  if (v10 == 20)
  {
LABEL_2:
    v5 = getWFCloudKitLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      *buf = 136315394;
      v26 = "[WFCloudKitItemRequest fetchItemsWithPredicate:itemType:groupName:properties:sortDescriptors:resultsLimit:qualityOfService:completionHandler:]_block_invoke_2";
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Debugging UUID: %{public}@ cancelled task", buf, 0x16u);
    }

    v7 = *(a1 + 80);
    v8 = [*(a1 + 48) createTaskCancelledError];
    (*(v7 + 16))(v7, 0, v8);

    goto LABEL_13;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_8:
  v11 = getWFCloudKitLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 40);
    *buf = 136315650;
    v26 = "[WFCloudKitItemRequest fetchItemsWithPredicate:itemType:groupName:properties:sortDescriptors:resultsLimit:qualityOfService:completionHandler:]_block_invoke";
    v27 = 2114;
    v28 = v12;
    v29 = 2114;
    v30 = v4;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Debugging UUID: %{public}@ Unable to complete predicate query: %{public}@", buf, 0x20u);
  }

  (*(*(a1 + 80) + 16))();
LABEL_13:

  v17 = *MEMORY[0x1E69E9840];
}

void __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke_280(uint64_t a1)
{
  v2 = [*(a1 + 32) operationQueue];
  v3 = [[WFCloudKitResolveReferencesOperation alloc] initWithRequest:*(a1 + 40) records:*(a1 + 48) operationGroup:*(a1 + 56) task:*(a1 + 32)];
  [v2 addOperation:v3];

  v4 = [*(a1 + 32) operationQueue];
  [v4 waitUntilAllOperationsAreFinished];

  v5 = [*(a1 + 40) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke_2_282;
  block[3] = &unk_1E837F510;
  v6 = *(a1 + 32);
  v7 = *(a1 + 72);
  *&v8 = v6;
  *(&v8 + 1) = *(a1 + 40);
  v10 = v8;
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = v7;
  v12 = v10;
  v13 = v9;
  dispatch_async(v5, block);
}

void __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke_2_282(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 56);
    v10 = [*(a1 + 40) createTaskCancelledError];
    (*(v2 + 16))(v2, 0, v10);
    v3 = v10;
LABEL_5:

    return;
  }

  v4 = [*(a1 + 32) error];

  v5 = *(a1 + 56);
  if (v4)
  {
    v9 = [*(a1 + 32) error];
    (*(v5 + 16))(v5, 0, v9);
    v3 = v9;
    goto LABEL_5;
  }

  v6 = *(a1 + 48);
  v7 = *(v5 + 16);
  v8 = *(a1 + 56);

  v7(v8, v6, 0);
}

- (WFCloudKitItemRequest)initWithContainer:(id)a3 database:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = WFCloudKitItemRequest;
  v9 = [(WFCloudKitItemRequest *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_container, a3);
    objc_storeStrong(&v10->_database, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.shortcuts.WFCloutKitItemRequest-operation", v11);
    operationWaitingQueue = v10->_operationWaitingQueue;
    v10->_operationWaitingQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.shortcuts.WFCloudKitItemRequest-callback", v14);
    callbackQueue = v10->_callbackQueue;
    v10->_callbackQueue = v15;

    v17 = v10;
  }

  return v10;
}

+ (id)recordValueForItemValue:(id)a3 item:(id)a4 property:(id)a5 recordKey:(id)a6 zoneID:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [a5 type];
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v23 = v11;
      v16 = v23;
      if (v23 && [v23 conformsToProtocol:&unk_1F4AB1E68])
      {
        if (objc_opt_respondsToSelector())
        {
          v24 = [v12 referenceActionForKey:v13];
        }

        else
        {
          v24 = 0;
        }

        v26 = objc_alloc(MEMORY[0x1E695BAB0]);
        v27 = [v16 identifier];
        v7 = [v26 initWithRecordID:v27 action:v24];

        goto LABEL_26;
      }
    }

    else
    {
      if (v14 != 4)
      {
        goto LABEL_27;
      }

      v15 = objc_opt_class();
      v16 = WFEnforceClass_1501(v11, v15);
      if (v16)
      {
        if (objc_opt_respondsToSelector())
        {
          v17 = [v12 referenceActionForKey:v13];
        }

        else
        {
          v17 = 0;
        }

        v7 = [objc_alloc(MEMORY[0x1E695BAB0]) initWithRecordID:v16 action:v17];
        goto LABEL_26;
      }
    }

LABEL_17:
    v7 = 0;
LABEL_26:

    goto LABEL_27;
  }

  if (v14 < 2)
  {
    v7 = v11;
    goto LABEL_27;
  }

  if (v14 == 2)
  {
    v18 = objc_opt_class();
    v19 = WFEnforceClass_1501(v11, v18);
    v16 = v19;
    if (v19)
    {
      v20 = [v19 fileURL];
      if (v20)
      {
        v21 = objc_alloc(MEMORY[0x1E695B878]);
        v22 = [v16 fileURL];
        v7 = [v21 initWithFileURL:v22];
      }

      else
      {
        v25 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v30 = 136315138;
          v31 = "+[WFCloudKitItemRequest recordValueForItemValue:item:property:recordKey:zoneID:]";
          _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_ERROR, "%s Could not get URL for file.", &v30, 0xCu);
        }

        v7 = 0;
      }

      goto LABEL_26;
    }

    goto LABEL_17;
  }

LABEL_27:

  v28 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)itemValueForRecordValue:(id)a3 item:(id)a4 property:(id)a5 resolvedReferences:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v10 type];
  if (v12 > 1)
  {
    switch(v12)
    {
      case 4:
        v20 = objc_opt_class();
        v21 = WFEnforceClass_1501(v9, v20);
        v15 = v21;
        if (v21)
        {
          v6 = [v21 recordID];
LABEL_16:

          goto LABEL_20;
        }

        break;
      case 3:
        v22 = objc_opt_class();
        v23 = WFEnforceClass_1501(v9, v22);
        v15 = v23;
        if (v23)
        {
          v17 = [v23 recordID];
          v18 = [v11 objectForKeyedSubscript:v17];
          v19 = [v18 item];
          goto LABEL_14;
        }

        break;
      case 2:
        v13 = objc_opt_class();
        v14 = WFEnforceClass_1501(v9, v13);
        v15 = v14;
        if (v14)
        {
          v16 = MEMORY[0x1E6996E20];
          v17 = [v14 fileURL];
          v18 = [v10 fileType];
          v19 = [v16 fileWithURL:v17 options:5 ofType:v18];
LABEL_14:
          v6 = v19;

          goto LABEL_16;
        }

        break;
      default:
        goto LABEL_20;
    }

    v6 = 0;
    goto LABEL_16;
  }

  if (!v12)
  {
    if (!v9)
    {
      v24 = [v10 nilValue];
      goto LABEL_19;
    }

LABEL_18:
    v24 = v9;
LABEL_19:
    v6 = v24;
    goto LABEL_20;
  }

  if (v12 == 1)
  {
    goto LABEL_18;
  }

LABEL_20:

  return v6;
}

+ (id)createRecordFromItem:(id)a3 zoneID:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v8 recordType];
  v10 = [v8 properties];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v6 ensureFileAssets];
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v6 recordSystemFieldsData];

    if (v12)
    {
      v13 = [v6 recordSystemFieldsData];
      v14 = [WFCloudKitItemRequest recordFromSystemFieldsData:v13 error:0];

      if (v14)
      {
        v15 = [v14 recordID];
        v16 = [v6 identifier];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          goto LABEL_16;
        }

        v18 = getWFCloudKitLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          v19 = [v6 identifier];
          v20 = [v14 recordID];
          *buf = 136315650;
          v39 = "+[WFCloudKitItemRequest createRecordFromItem:zoneID:]";
          v40 = 2114;
          v41 = v19;
          v42 = 2114;
          v43 = v20;
          _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_FAULT, "%s CKRecord created from serialized data has different identifier than the WFCloudKitItem it was created for: WFCloudKitItem's is %{public}@, CKRecord's is %{public}@. Creating CKRecord from scratch", buf, 0x20u);
        }
      }
    }
  }

  v21 = [v6 identifier];

  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x1E695BA60]);
    v23 = [v6 identifier];
    v14 = [v22 initWithRecordType:v9 recordID:v23];
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x1E695BA60]);
    if (v7)
    {
      v25 = [v24 initWithRecordType:v9 zoneID:v7];
    }

    else
    {
      v25 = [v24 initWithRecordType:v9];
    }

    v14 = v25;
  }

LABEL_16:
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __53__WFCloudKitItemRequest_createRecordFromItem_zoneID___block_invoke;
  v33[3] = &unk_1E8379990;
  v37 = a1;
  v34 = v6;
  v35 = v7;
  v26 = v14;
  v36 = v26;
  v27 = v7;
  v28 = v6;
  [v10 enumerateKeysAndObjectsUsingBlock:v33];
  v29 = v36;
  v30 = v26;

  v31 = *MEMORY[0x1E69E9840];
  return v26;
}

void __53__WFCloudKitItemRequest_createRecordFromItem_zoneID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 hasConstantValue])
  {
    v7 = [v6 constantValue];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v6 name];
    v7 = [v8 valueForKey:v9];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__WFCloudKitItemRequest_createRecordFromItem_zoneID___block_invoke_2;
    v14[3] = &unk_1E8379968;
    v19 = *(a1 + 56);
    v15 = *(a1 + 32);
    v16 = v6;
    v17 = v5;
    v18 = *(a1 + 40);
    v10 = [v7 if_compactMap:v14];
  }

  else if (v7)
  {
    v10 = [*(a1 + 56) recordValueForItemValue:v7 item:*(a1 + 32) property:v6 recordKey:v5 zoneID:*(a1 + 40)];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 isEncrypted];
  v12 = *(a1 + 48);
  if (v11)
  {
    v13 = [v12 encryptedValues];
    [v13 setObject:v10 forKey:v5];
  }

  else
  {
    [v12 setObject:v10 forKey:v5];
  }
}

+ (id)createRecordIDWithName:(id)a3 zoneID:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695BA70];
  v7 = a3;
  v8 = [v6 alloc];
  if (v5)
  {
    v9 = [v8 initWithRecordName:v7 zoneID:v5];
  }

  else
  {
    v9 = [v8 initWithRecordName:v7];
  }

  v10 = v9;

  return v10;
}

+ (void)assignRecordValue:(id)a3 toItem:(id)a4 withProperty:(id)a5 resolvedReferences:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__WFCloudKitItemRequest_assignRecordValue_toItem_withProperty_resolvedReferences___block_invoke;
    v19[3] = &unk_1E8379940;
    v23 = a1;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v14 = [v13 if_compactMap:v19];

    if (!v14)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = [a1 itemValueForRecordValue:v13 item:v10 property:v11 resolvedReferences:v12];

  if (v14)
  {
LABEL_5:
    v15 = v10;
    v16 = [v11 name];
    [v15 willChangeValueForKey:v16];

    v17 = [v11 name];
    [v15 setValue:v14 forKey:v17];

    v18 = [v11 name];
    [v15 didChangeValueForKey:v18];
  }

LABEL_6:
}

+ (void)hydrateItem:(id)a3 withRecord:(id)a4 resolvedReferences:(id)a5 setNilValues:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [objc_opt_class() properties];
  v14 = [v11 recordID];
  [v10 setValue:v14 forKey:@"identifier"];

  if (objc_opt_respondsToSelector())
  {
    v15 = [v11 creationDate];
    v16 = [v11 modificationDate];
    v17 = [v11 creatorUserRecordID];
    v18 = [v17 recordName];
    [v10 setCreatedAt:v15 modifiedAt:v16 createdBy:v18];
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [WFCloudKitItemRequest systemFieldsDataFromRecord:v11 error:0];
    [v10 setRecordSystemFieldsData:v19];
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __80__WFCloudKitItemRequest_hydrateItem_withRecord_resolvedReferences_setNilValues___block_invoke;
  v23[3] = &unk_1E8379918;
  v28 = a6;
  v24 = v11;
  v25 = v10;
  v26 = v12;
  v27 = a1;
  v20 = v12;
  v21 = v10;
  v22 = v11;
  [v13 enumerateKeysAndObjectsUsingBlock:v23];
}

void __80__WFCloudKitItemRequest_hydrateItem_withRecord_resolvedReferences_setNilValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 isEncrypted];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 encryptedValues];
    v9 = [v8 objectForKey:v10];

    if (!v9)
    {
LABEL_5:
      if (*(a1 + 64) != 1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v9 = [v7 objectForKey:v10];
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  [*(a1 + 56) assignRecordValue:v9 toItem:*(a1 + 40) withProperty:v5 resolvedReferences:*(a1 + 48)];
LABEL_7:
}

+ (id)desiredKeysFromProperties:(id)a3 itemType:(Class)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = v6;
  if (v5)
  {
    [v6 setArray:v5];
  }

  else
  {
    v8 = [(objc_class *)a4 properties];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__WFCloudKitItemRequest_desiredKeysFromProperties_itemType___block_invoke;
    v10[3] = &unk_1E83798F0;
    v11 = v7;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];
  }

  return v7;
}

void __60__WFCloudKitItemRequest_desiredKeysFromProperties_itemType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 isIgnoredByDefault] & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

+ (id)recordFromSystemFieldsData:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ACD0];
  v6 = a3;
  v14 = 0;
  v7 = [[v5 alloc] initForReadingFromData:v6 error:&v14];

  v8 = v14;
  [v7 setRequiresSecureCoding:1];
  v9 = [objc_alloc(MEMORY[0x1E695BA60]) initWithCoder:v7];
  [v7 finishDecoding];
  if (!v9)
  {
    v10 = getWFCloudKitLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "+[WFCloudKitItemRequest recordFromSystemFieldsData:error:]";
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Failed to decode record from system fields data: %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v11 = v8;
      *a4 = v8;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)systemFieldsDataFromRecord:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ACC8];
  v6 = a3;
  v7 = [[v5 alloc] initRequiringSecureCoding:1];
  [v6 encodeSystemFieldsWithCoder:v7];

  [v7 finishEncoding];
  v8 = [v7 encodedData];
  v9 = [v7 error];
  if (!v8)
  {
    v10 = getWFCloudKitLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "+[WFCloudKitItemRequest systemFieldsDataFromRecord:error:]";
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Failed to encode system fields data from record: %{public}@", &v14, 0x16u);
    }

    if (a4)
    {
      v11 = v9;
      *a4 = v9;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

@end