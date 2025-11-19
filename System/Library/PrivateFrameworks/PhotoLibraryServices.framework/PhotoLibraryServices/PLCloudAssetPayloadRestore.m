@interface PLCloudAssetPayloadRestore
+ (id)assetForPayload:(id)a3 inManagedObjectContext:(id)a4;
+ (id)assetsForPayloadIDsWithPayloads:(id)a3 inManagedObjectContext:(id)a4;
+ (id)relationshipKeyPathsForPrefetching;
- (PLCloudAssetPayloadRestore)initWithDelegate:(id)a3 batchSize:(unint64_t)a4;
- (id)_resolveLocalIdentifiersForCloudIdentifiersForPayloadIDs;
- (void)_insertBatchOfUnresolvedCloudIdentifiers;
- (void)_insertBatchToRestore;
- (void)_insertPayload:(id)a3 forAssets:(id)a4 skipMessage:(id)a5;
- (void)addPayload:(id)a3;
- (void)insertRemainingPayloads;
@end

@implementation PLCloudAssetPayloadRestore

- (id)_resolveLocalIdentifiersForCloudIdentifiersForPayloadIDs
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  payloadsWithUnresolvedAssets = self->_payloadsWithUnresolvedAssets;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __86__PLCloudAssetPayloadRestore__resolveLocalIdentifiersForCloudIdentifiersForPayloadIDs__block_invoke;
  v25[3] = &unk_1E7578210;
  v7 = v3;
  v26 = v7;
  v8 = v4;
  v27 = v8;
  [(NSMutableDictionary *)payloadsWithUnresolvedAssets enumerateKeysAndObjectsUsingBlock:v25];
  delegate = self->_delegate;
  v24 = 0;
  v10 = [(PLCloudAssetPayloadRestoreDelegate *)delegate resolveLocalIdentifiersForCloudIdentifiers:v7 error:&v24];
  v11 = v24;
  v12 = v11;
  if (v10)
  {
    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v10;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "ComputeCache BatchRestore: Resolved remapped cloud identifiers: %@\n", buf, 0xCu);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __86__PLCloudAssetPayloadRestore__resolveLocalIdentifiersForCloudIdentifiersForPayloadIDs__block_invoke_60;
    v19[3] = &unk_1E7578238;
    v14 = &v20;
    v20 = v8;
    v15 = v5;
    v21 = v15;
    [v10 enumerateKeysAndObjectsUsingBlock:v19];
    v16 = v15;
  }

  else
  {
    v17 = self->_payloadsWithUnresolvedAssets;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __86__PLCloudAssetPayloadRestore__resolveLocalIdentifiersForCloudIdentifiersForPayloadIDs__block_invoke_2;
    v22[3] = &unk_1E7578210;
    v14 = v23;
    v23[0] = v11;
    v23[1] = self;
    [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v22];
    v16 = 0;
  }

  return v16;
}

void __86__PLCloudAssetPayloadRestore__resolveLocalIdentifiersForCloudIdentifiersForPayloadIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 assetIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [*(a1 + 32) addObject:v11];
        v12 = [*(a1 + 40) objectForKeyedSubscript:v11];
        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [*(a1 + 40) setObject:v12 forKeyedSubscript:v11];
        }

        [v12 addObject:v5];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void __86__PLCloudAssetPayloadRestore__resolveLocalIdentifiersForCloudIdentifiersForPayloadIDs__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLMigrationGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "ComputeCache BatchRestore: Skipped payload (resolve cloud identifiers failed): %@, %@\n", &v7, 0x16u);
  }

  ++*(*(a1 + 40) + 48);
}

void __86__PLCloudAssetPayloadRestore__resolveLocalIdentifiersForCloudIdentifiersForPayloadIDs__block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
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
        v13 = [*(a1 + 40) objectForKeyedSubscript:v12];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [*(a1 + 40) setObject:v13 forKeyedSubscript:v12];
        }

        [v13 setObject:v6 forKeyedSubscript:v5];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_insertPayload:(id)a3 forAssets:(id)a4 skipMessage:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  delegate = self->_delegate;
  v11 = a4;
  v12 = [(PLCloudAssetPayloadRestoreDelegate *)delegate managedObjectContext];
  v13 = [v8 insertWithAssets:v11 inManagedObjectContext:v12];

  if (v13)
  {
    v14 = 40;
  }

  else
  {
    v15 = PLMigrationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "ComputeCache BatchRestore: Skipped payload (%@): %@\n", &v16, 0x16u);
    }

    v14 = 48;
  }

  ++*(&self->super.isa + v14);
}

- (void)_insertBatchOfUnresolvedCloudIdentifiers
{
  v3 = [(PLCloudAssetPayloadRestore *)self _resolveLocalIdentifiersForCloudIdentifiersForPayloadIDs];
  v4 = v3;
  if (v3)
  {
    delegate = self->_delegate;
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __70__PLCloudAssetPayloadRestore__insertBatchOfUnresolvedCloudIdentifiers__block_invoke;
    v9 = &unk_1E7578848;
    v10 = self;
    v11 = v3;
    [(PLCloudAssetPayloadRestoreDelegate *)delegate performTransactionAndWait:&v6];
    [(NSMutableDictionary *)self->_payloadsWithUnresolvedAssets removeAllObjects:v6];
  }

  else
  {
    [(NSMutableDictionary *)self->_payloadsWithUnresolvedAssets removeAllObjects];
  }
}

void __70__PLCloudAssetPayloadRestore__insertBatchOfUnresolvedCloudIdentifiers__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__PLCloudAssetPayloadRestore__insertBatchOfUnresolvedCloudIdentifiers__block_invoke_2;
  v15[3] = &unk_1E7578210;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v16 = v3;
  v17 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v15];
  v5 = objc_opt_class();
  v6 = [*(*(a1 + 32) + 24) allValues];
  v7 = [*(*(a1 + 32) + 8) managedObjectContext];
  v8 = [v5 assetsForPayloadIDsWithPayloads:v6 inManagedObjectContext:v7];

  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PLCloudAssetPayloadRestore__insertBatchOfUnresolvedCloudIdentifiers__block_invoke_56;
  v12[3] = &unk_1E7578210;
  v13 = v8;
  v14 = v9;
  v11 = v8;
  [v10 enumerateKeysAndObjectsUsingBlock:v12];
}

void __70__PLCloudAssetPayloadRestore__insertBatchOfUnresolvedCloudIdentifiers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if ([v6 count])
  {
    [v5 setLocalAssetIdentifierForCloudIdentifiers:v6];
  }

  else
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 payloadID];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "ComputeCache BatchRestore: Skipped payload (resolved local identifiers not found for unresolved cloud identifiers): %@\n", &v9, 0xCu);
    }

    ++*(*(a1 + 40) + 48);
  }
}

void __70__PLCloudAssetPayloadRestore__insertBatchOfUnresolvedCloudIdentifiers__block_invoke_56(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = [v6 count];
  if (v7 >= [v5 assetIdentifierCount])
  {
    [*(a1 + 40) _insertPayload:v5 forAssets:v6 skipMessage:@"after resolve remapped identifiers"];
  }

  else
  {
    v8 = PLMigrationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 payloadID];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "ComputeCache BatchRestore: Skipped payload (missing assets after resolving local identifiers): %@\n", &v10, 0xCu);
    }

    ++*(*(a1 + 40) + 48);
  }
}

- (void)_insertBatchToRestore
{
  delegate = self->_delegate;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PLCloudAssetPayloadRestore__insertBatchToRestore__block_invoke;
  v3[3] = &unk_1E75781E8;
  v3[4] = self;
  [(PLCloudAssetPayloadRestoreDelegate *)delegate performTransactionAndWait:v3];
}

void __51__PLCloudAssetPayloadRestore__insertBatchToRestore__block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = [*(v3 + 8) managedObjectContext];
  v6 = [v2 assetsForPayloadIDsWithPayloads:v4 inManagedObjectContext:v5];

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __51__PLCloudAssetPayloadRestore__insertBatchToRestore__block_invoke_2;
  v13 = &unk_1E7578198;
  v14 = v6;
  v15 = v7;
  v9 = v6;
  [v8 enumerateObjectsUsingBlock:&v10];
  [*(*(a1 + 32) + 16) removeAllObjects];
}

void __51__PLCloudAssetPayloadRestore__insertBatchToRestore__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 payloadID];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 count];
  if (v7 >= [v3 assetIdentifierCount])
  {
    [*(a1 + 40) _insertPayload:v3 forAssets:v6 skipMessage:@"existing asset"];
  }

  else if ([v3 assetIdentifierType] == 1)
  {
    v8 = *(*(a1 + 40) + 24);
    v9 = [v3 payloadID];
    [v8 setObject:v3 forKeyedSubscript:v9];
  }

  else
  {
    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v3 payloadID];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "ComputeCache BatchRestore: Skipped payload (missing asset): %@\n", &v12, 0xCu);
    }

    ++*(*(a1 + 40) + 48);
  }
}

- (void)insertRemainingPayloads
{
  if ([(NSMutableArray *)self->_batchToRestore count])
  {
    [(PLCloudAssetPayloadRestore *)self _insertBatchToRestore];
  }

  if ([(NSMutableDictionary *)self->_payloadsWithUnresolvedAssets count])
  {

    [(PLCloudAssetPayloadRestore *)self _insertBatchOfUnresolvedCloudIdentifiers];
  }
}

- (void)addPayload:(id)a3
{
  [(NSMutableArray *)self->_batchToRestore addObject:a3];
  if ([(NSMutableArray *)self->_batchToRestore count]>= self->_batchSize)
  {
    [(PLCloudAssetPayloadRestore *)self _insertBatchToRestore];
  }

  if ([(NSMutableDictionary *)self->_payloadsWithUnresolvedAssets count]>= self->_batchSize)
  {

    [(PLCloudAssetPayloadRestore *)self _insertBatchOfUnresolvedCloudIdentifiers];
  }
}

- (PLCloudAssetPayloadRestore)initWithDelegate:(id)a3 batchSize:(unint64_t)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = PLCloudAssetPayloadRestore;
  v8 = [(PLCloudAssetPayloadRestore *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, a3);
    v10 = 50;
    if (a4)
    {
      v10 = a4;
    }

    v9->_batchSize = v10;
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9->_batchSize];
    batchToRestore = v9->_batchToRestore;
    v9->_batchToRestore = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    payloadsWithUnresolvedAssets = v9->_payloadsWithUnresolvedAssets;
    v9->_payloadsWithUnresolvedAssets = v13;
  }

  return v9;
}

+ (id)relationshipKeyPathsForPrefetching
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"additionalAttributes";
  v4[1] = @"detectedFaces";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)assetsForPayloadIDsWithPayloads:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __85__PLCloudAssetPayloadRestore_assetsForPayloadIDsWithPayloads_inManagedObjectContext___block_invoke;
  v40[3] = &unk_1E7578198;
  v12 = v10;
  v41 = v12;
  v13 = v11;
  v42 = v13;
  [v8 enumerateObjectsUsingBlock:v40];

  v14 = 0x1E695D000;
  if ([v13 count])
  {
    v15 = MEMORY[0x1E695D5E0];
    v16 = +[PLManagedAsset entityName];
    v17 = [v15 fetchRequestWithEntityName:v16];

    v18 = MEMORY[0x1E696AE18];
    v19 = [v13 allKeys];
    v20 = [v18 predicateWithFormat:@"%K IN %@", @"cloudAssetGUID", v19];
    [v17 setPredicate:v20];

    v21 = [a1 relationshipKeyPathsForPrefetching];
    [v17 setRelationshipKeyPathsForPrefetching:v21];

    v22 = [v6 executeFetchRequest:v17 error:0];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __85__PLCloudAssetPayloadRestore_assetsForPayloadIDsWithPayloads_inManagedObjectContext___block_invoke_2;
    v37[3] = &unk_1E75781C0;
    v38 = v13;
    v39 = v9;
    [v22 enumerateObjectsUsingBlock:v37];

    v14 = 0x1E695D000uLL;
  }

  if ([v12 count])
  {
    v23 = *(v14 + 1504);
    v24 = +[PLManagedAsset entityName];
    v25 = [v23 fetchRequestWithEntityName:v24];

    v26 = MEMORY[0x1E696AE18];
    v27 = [v12 allKeys];
    v28 = [v26 predicateWithFormat:@"%K IN %@", @"uuid", v27];
    [v25 setPredicate:v28];

    v29 = [a1 relationshipKeyPathsForPrefetching];
    [v25 setRelationshipKeyPathsForPrefetching:v29];

    v30 = [v6 executeFetchRequest:v25 error:0];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __85__PLCloudAssetPayloadRestore_assetsForPayloadIDsWithPayloads_inManagedObjectContext___block_invoke_3;
    v34[3] = &unk_1E75781C0;
    v35 = v12;
    v36 = v9;
    [v30 enumerateObjectsUsingBlock:v34];
  }

  v31 = v42;
  v32 = v9;

  return v9;
}

void __85__PLCloudAssetPayloadRestore_assetsForPayloadIDsWithPayloads_inManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 assetIdentifierType];
  if (v4 == 1)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [v3 assetIdentifiers];
    v15 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v5);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          v20 = *(a1 + 40);
          v21 = [v3 payloadID];
          v22 = v21;
          if (v19)
          {
            v23 = v21 == 0;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            [v20 setObject:v21 forKey:v19];
          }
        }

        v16 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v16);
    }

    goto LABEL_28;
  }

  if (!v4)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = [v3 assetIdentifiers];
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (j = 0; j != v7; ++j)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v28 + 1) + 8 * j);
          v11 = *(a1 + 32);
          v12 = [v3 payloadID];
          v13 = v12;
          if (v10)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            [v11 setObject:v12 forKey:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

LABEL_28:
  }
}

void __85__PLCloudAssetPayloadRestore_assetsForPayloadIDsWithPayloads_inManagedObjectContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 cloudAssetGUID];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 objectForKeyedSubscript:v5];

    if (v7)
    {
      v8 = [*(a1 + 40) objectForKeyedSubscript:v7];
      if (!v8)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
      }

      [v8 addObject:v9];
    }
  }
}

void __85__PLCloudAssetPayloadRestore_assetsForPayloadIDsWithPayloads_inManagedObjectContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 uuid];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 objectForKeyedSubscript:v5];

    if (v7)
    {
      v8 = [*(a1 + 40) objectForKeyedSubscript:v7];
      if (!v8)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
      }

      [v8 addObject:v9];
    }
  }
}

+ (id)assetForPayload:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 assetIdentifiers];
  v9 = [v8 count];

  if (!v9)
  {
    v15 = 0;
    goto LABEL_9;
  }

  v10 = MEMORY[0x1E695D5E0];
  v11 = +[PLManagedAsset entityName];
  v12 = [v10 fetchRequestWithEntityName:v11];

  v13 = [v6 assetIdentifierType];
  if (!v13)
  {
    v14 = @"uuid";
    goto LABEL_7;
  }

  if (v13 == 1)
  {
    v14 = @"cloudAssetGUID";
LABEL_7:
    v16 = MEMORY[0x1E696AE18];
    v17 = [v6 assetIdentifiers];
    v18 = [v17 anyObject];
    v19 = [v16 predicateWithFormat:@"%K == %@", v14, v18];
    [v12 setPredicate:v19];
  }

  v20 = [a1 relationshipKeyPathsForPrefetching];
  [v12 setRelationshipKeyPathsForPrefetching:v20];

  v21 = [v7 executeFetchRequest:v12 error:0];
  v15 = [v21 firstObject];

LABEL_9:

  return v15;
}

@end