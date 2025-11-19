@interface PPNamedEntityReadWriteClient
+ (id)sharedInstance;
- (BOOL)_doDeletionSyncCallWithError:(id *)a3 deletedCount:(unint64_t *)a4 syncCall:(id)a5;
- (BOOL)_doSyncCallWithError:(id *)a3 syncCall:(id)a4;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 deletedCount:(unint64_t *)a4 error:(id *)a5;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 deletedCount:(unint64_t *)a5 error:(id *)a6;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThanDate:(id)a5 deletedCount:(unint64_t *)a6 error:(id *)a7;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 deletedCount:(unint64_t *)a5 error:(id *)a6;
- (BOOL)donateLocationNamedEntities:(id)a3 bundleId:(id)a4 groupId:(id)a5 error:(id *)a6;
- (BOOL)donateMapItem:(id)a3 forPlaceName:(id)a4 error:(id *)a5;
- (BOOL)donateNamedEntities:(id)a3 source:(id)a4 algorithm:(unint64_t)a5 cloudSync:(BOOL)a6 sentimentScore:(double)a7 error:(id *)a8;
- (BOOL)flushDonationsWithError:(id *)a3;
- (BOOL)removeMapItemForPlaceName:(id)a3 error:(id *)a4;
- (BOOL)removeMapItemsBeforeDate:(id)a3 error:(id *)a4;
- (PPNamedEntityReadWriteClient)init;
@end

@implementation PPNamedEntityReadWriteClient

- (BOOL)donateLocationNamedEntities:(id)a3 bundleId:(id)a4 groupId:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__PPNamedEntityReadWriteClient_donateLocationNamedEntities_bundleId_groupId_error___block_invoke;
  v17[3] = &unk_1E77F70F0;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  LOBYTE(a6) = [(PPNamedEntityReadWriteClient *)self _doSyncCallWithError:a6 syncCall:v17];

  return a6;
}

- (BOOL)removeMapItemsBeforeDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PPNamedEntityReadWriteClient_removeMapItemsBeforeDate_error___block_invoke;
  v9[3] = &unk_1E77F7088;
  v10 = v6;
  v7 = v6;
  LOBYTE(a4) = [(PPNamedEntityReadWriteClient *)self _doSyncCallWithError:a4 syncCall:v9];

  return a4;
}

- (BOOL)removeMapItemForPlaceName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PPNamedEntityReadWriteClient_removeMapItemForPlaceName_error___block_invoke;
  v9[3] = &unk_1E77F7088;
  v10 = v6;
  v7 = v6;
  LOBYTE(a4) = [(PPNamedEntityReadWriteClient *)self _doSyncCallWithError:a4 syncCall:v9];

  return a4;
}

- (BOOL)donateMapItem:(id)a3 forPlaceName:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PPNamedEntityReadWriteClient_donateMapItem_forPlaceName_error___block_invoke;
  v13[3] = &unk_1E77F7060;
  v14 = v8;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  LOBYTE(a5) = [(PPNamedEntityReadWriteClient *)self _doSyncCallWithError:a5 syncCall:v13];

  return a5;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThanDate:(id)a5 deletedCount:(unint64_t *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __119__PPNamedEntityReadWriteClient_deleteAllNamedEntitiesFromSourcesWithBundleId_groupId_olderThanDate_deletedCount_error___block_invoke;
  v19[3] = &unk_1E77F7038;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  LOBYTE(a6) = [(PPNamedEntityReadWriteClient *)self _doDeletionSyncCallWithError:a7 deletedCount:a6 syncCall:v19];

  return a6;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 deletedCount:(unint64_t *)a4 error:(id *)a5
{
  v8 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97__PPNamedEntityReadWriteClient_deleteAllNamedEntitiesFromSourcesWithBundleId_deletedCount_error___block_invoke;
  v11[3] = &unk_1E77F7010;
  v12 = v8;
  v9 = v8;
  LOBYTE(a5) = [(PPNamedEntityReadWriteClient *)self _doDeletionSyncCallWithError:a5 deletedCount:a4 syncCall:v11];

  return a5;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 deletedCount:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __106__PPNamedEntityReadWriteClient_deleteAllNamedEntitiesFromSourcesWithBundleId_groupIds_deletedCount_error___block_invoke;
  v15[3] = &unk_1E77F6FE8;
  v16 = v10;
  v17 = v11;
  v12 = v11;
  v13 = v10;
  LOBYTE(a6) = [(PPNamedEntityReadWriteClient *)self _doDeletionSyncCallWithError:a6 deletedCount:a5 syncCall:v15];

  return a6;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 deletedCount:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__PPNamedEntityReadWriteClient_deleteAllNamedEntitiesFromSourcesWithBundleId_documentIds_deletedCount_error___block_invoke;
  v15[3] = &unk_1E77F6FE8;
  v16 = v10;
  v17 = v11;
  v12 = v11;
  v13 = v10;
  LOBYTE(a6) = [(PPNamedEntityReadWriteClient *)self _doDeletionSyncCallWithError:a6 deletedCount:a5 syncCall:v15];

  return a6;
}

- (BOOL)flushDonationsWithError:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5433;
  v15 = __Block_byref_object_dispose__5434;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__PPNamedEntityReadWriteClient_flushDonationsWithError___block_invoke;
  v10[3] = &unk_1E77F7B20;
  v10[4] = &v11;
  v5 = MEMORY[0x1AC568040](v10, a2);
  v6 = [(PPNamedEntityReadWriteClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v5];
  [v6 flushDonationsWithCompletion:&__block_literal_global_101_5435];

  v7 = v12[5];
  if (a3 && v7)
  {
    v7 = v7;
    *a3 = v7;
  }

  v8 = v7 == 0;

  _Block_object_dispose(&v11, 8);
  return v8;
}

- (BOOL)donateNamedEntities:(id)a3 source:(id)a4 algorithm:(unint64_t)a5 cloudSync:(BOOL)a6 sentimentScore:(double)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__PPNamedEntityReadWriteClient_donateNamedEntities_source_algorithm_cloudSync_sentimentScore_error___block_invoke;
  v19[3] = &unk_1E77F6FC0;
  v20 = v14;
  v21 = v15;
  v22 = a5;
  v24 = a6;
  v23 = a7;
  v16 = v15;
  v17 = v14;
  LOBYTE(a8) = [(PPNamedEntityReadWriteClient *)self _doSyncCallWithError:a8 syncCall:v19];

  return a8;
}

- (BOOL)_doDeletionSyncCallWithError:(id *)a3 deletedCount:(unint64_t *)a4 syncCall:(id)a5
{
  v8 = a5;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__5433;
  v35 = __Block_byref_object_dispose__5434;
  v36 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __83__PPNamedEntityReadWriteClient__doDeletionSyncCallWithError_deletedCount_syncCall___block_invoke;
  v30[3] = &unk_1E77F7B20;
  v30[4] = &v31;
  v9 = MEMORY[0x1AC568040](v30);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5433;
  v24 = __Block_byref_object_dispose__5434;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PPNamedEntityReadWriteClient__doDeletionSyncCallWithError_deletedCount_syncCall___block_invoke_2;
  v15[3] = &unk_1E77F7B70;
  v15[4] = &v26;
  v15[5] = &v20;
  v15[6] = &v16;
  v10 = MEMORY[0x1AC568040](v15);
  v11 = [(PPNamedEntityReadWriteClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[2](v8, v11, v10);

  if (a4)
  {
    *a4 = v17[3];
  }

  v12 = v32[5];
  if (v12)
  {
    v13 = 0;
    if (a3)
    {
      *a3 = v12;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = v21[5];
    }

    v13 = *(v27 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v31, 8);

  return v13 & 1;
}

void __83__PPNamedEntityReadWriteClient__doDeletionSyncCallWithError_deletedCount_syncCall___block_invoke_2(void *a1, char a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), obj);
  v7 = obj;
  *(*(a1[6] + 8) + 24) = a3;
}

- (BOOL)_doSyncCallWithError:(id *)a3 syncCall:(id)a4
{
  v6 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5433;
  v29 = __Block_byref_object_dispose__5434;
  v30 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __62__PPNamedEntityReadWriteClient__doSyncCallWithError_syncCall___block_invoke;
  v24[3] = &unk_1E77F7B20;
  v24[4] = &v25;
  v7 = MEMORY[0x1AC568040](v24);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5433;
  v18 = __Block_byref_object_dispose__5434;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__PPNamedEntityReadWriteClient__doSyncCallWithError_syncCall___block_invoke_2;
  v13[3] = &unk_1E77F7B48;
  v13[4] = &v20;
  v13[5] = &v14;
  v8 = MEMORY[0x1AC568040](v13);
  v9 = [(PPNamedEntityReadWriteClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[2](v6, v9, v8);

  v10 = v26[5];
  if (v10)
  {
    v11 = 0;
    if (a3)
    {
      *a3 = v10;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = v15[5];
    }

    v11 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v25, 8);
  return v11 & 1;
}

- (PPNamedEntityReadWriteClient)init
{
  v8.receiver = self;
  v8.super_class = PPNamedEntityReadWriteClient;
  v2 = [(PPNamedEntityReadWriteClient *)&v8 init];
  if (v2)
  {
    v3 = [PPXPCClientHelper alloc];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B56058];
    v5 = [(PPXPCClientHelper *)v3 initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.NamedEntity.readWrite" allowedServerInterface:v4 allowedClientInterface:0 clientExportedObject:0 interruptionHandler:&__block_literal_global_5441 invalidationHandler:&__block_literal_global_94_5442];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PPNamedEntityReadWriteClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken2_5479 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_5479, block);
  }

  v2 = sharedInstance__pasExprOnceResult_5480;

  return v2;
}

void __46__PPNamedEntityReadWriteClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_5480;
  sharedInstance__pasExprOnceResult_5480 = v4;

  objc_autoreleasePoolPop(v2);
}

@end