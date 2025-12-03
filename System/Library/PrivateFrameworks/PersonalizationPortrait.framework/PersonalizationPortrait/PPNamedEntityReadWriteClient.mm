@interface PPNamedEntityReadWriteClient
+ (id)sharedInstance;
- (BOOL)_doDeletionSyncCallWithError:(id *)error deletedCount:(unint64_t *)count syncCall:(id)call;
- (BOOL)_doSyncCallWithError:(id *)error syncCall:(id)call;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)donateLocationNamedEntities:(id)entities bundleId:(id)id groupId:(id)groupId error:(id *)error;
- (BOOL)donateMapItem:(id)item forPlaceName:(id)name error:(id *)error;
- (BOOL)donateNamedEntities:(id)entities source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score error:(id *)error;
- (BOOL)flushDonationsWithError:(id *)error;
- (BOOL)removeMapItemForPlaceName:(id)name error:(id *)error;
- (BOOL)removeMapItemsBeforeDate:(id)date error:(id *)error;
- (PPNamedEntityReadWriteClient)init;
@end

@implementation PPNamedEntityReadWriteClient

- (BOOL)donateLocationNamedEntities:(id)entities bundleId:(id)id groupId:(id)groupId error:(id *)error
{
  entitiesCopy = entities;
  idCopy = id;
  groupIdCopy = groupId;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__PPNamedEntityReadWriteClient_donateLocationNamedEntities_bundleId_groupId_error___block_invoke;
  v17[3] = &unk_1E77F70F0;
  v18 = entitiesCopy;
  v19 = idCopy;
  v20 = groupIdCopy;
  v13 = groupIdCopy;
  v14 = idCopy;
  v15 = entitiesCopy;
  LOBYTE(error) = [(PPNamedEntityReadWriteClient *)self _doSyncCallWithError:error syncCall:v17];

  return error;
}

- (BOOL)removeMapItemsBeforeDate:(id)date error:(id *)error
{
  dateCopy = date;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PPNamedEntityReadWriteClient_removeMapItemsBeforeDate_error___block_invoke;
  v9[3] = &unk_1E77F7088;
  v10 = dateCopy;
  v7 = dateCopy;
  LOBYTE(error) = [(PPNamedEntityReadWriteClient *)self _doSyncCallWithError:error syncCall:v9];

  return error;
}

- (BOOL)removeMapItemForPlaceName:(id)name error:(id *)error
{
  nameCopy = name;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PPNamedEntityReadWriteClient_removeMapItemForPlaceName_error___block_invoke;
  v9[3] = &unk_1E77F7088;
  v10 = nameCopy;
  v7 = nameCopy;
  LOBYTE(error) = [(PPNamedEntityReadWriteClient *)self _doSyncCallWithError:error syncCall:v9];

  return error;
}

- (BOOL)donateMapItem:(id)item forPlaceName:(id)name error:(id *)error
{
  itemCopy = item;
  nameCopy = name;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PPNamedEntityReadWriteClient_donateMapItem_forPlaceName_error___block_invoke;
  v13[3] = &unk_1E77F7060;
  v14 = itemCopy;
  v15 = nameCopy;
  v10 = nameCopy;
  v11 = itemCopy;
  LOBYTE(error) = [(PPNamedEntityReadWriteClient *)self _doSyncCallWithError:error syncCall:v13];

  return error;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __119__PPNamedEntityReadWriteClient_deleteAllNamedEntitiesFromSourcesWithBundleId_groupId_olderThanDate_deletedCount_error___block_invoke;
  v19[3] = &unk_1E77F7038;
  v20 = idCopy;
  v21 = groupIdCopy;
  v22 = dateCopy;
  v15 = dateCopy;
  v16 = groupIdCopy;
  v17 = idCopy;
  LOBYTE(count) = [(PPNamedEntityReadWriteClient *)self _doDeletionSyncCallWithError:error deletedCount:count syncCall:v19];

  return count;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97__PPNamedEntityReadWriteClient_deleteAllNamedEntitiesFromSourcesWithBundleId_deletedCount_error___block_invoke;
  v11[3] = &unk_1E77F7010;
  v12 = idCopy;
  v9 = idCopy;
  LOBYTE(error) = [(PPNamedEntityReadWriteClient *)self _doDeletionSyncCallWithError:error deletedCount:count syncCall:v11];

  return error;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __106__PPNamedEntityReadWriteClient_deleteAllNamedEntitiesFromSourcesWithBundleId_groupIds_deletedCount_error___block_invoke;
  v15[3] = &unk_1E77F6FE8;
  v16 = idCopy;
  v17 = idsCopy;
  v12 = idsCopy;
  v13 = idCopy;
  LOBYTE(error) = [(PPNamedEntityReadWriteClient *)self _doDeletionSyncCallWithError:error deletedCount:count syncCall:v15];

  return error;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__PPNamedEntityReadWriteClient_deleteAllNamedEntitiesFromSourcesWithBundleId_documentIds_deletedCount_error___block_invoke;
  v15[3] = &unk_1E77F6FE8;
  v16 = idCopy;
  v17 = idsCopy;
  v12 = idsCopy;
  v13 = idCopy;
  LOBYTE(error) = [(PPNamedEntityReadWriteClient *)self _doDeletionSyncCallWithError:error deletedCount:count syncCall:v15];

  return error;
}

- (BOOL)flushDonationsWithError:(id *)error
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
  if (error && v7)
  {
    v7 = v7;
    *error = v7;
  }

  v8 = v7 == 0;

  _Block_object_dispose(&v11, 8);
  return v8;
}

- (BOOL)donateNamedEntities:(id)entities source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score error:(id *)error
{
  entitiesCopy = entities;
  sourceCopy = source;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__PPNamedEntityReadWriteClient_donateNamedEntities_source_algorithm_cloudSync_sentimentScore_error___block_invoke;
  v19[3] = &unk_1E77F6FC0;
  v20 = entitiesCopy;
  v21 = sourceCopy;
  algorithmCopy = algorithm;
  syncCopy = sync;
  scoreCopy = score;
  v16 = sourceCopy;
  v17 = entitiesCopy;
  LOBYTE(error) = [(PPNamedEntityReadWriteClient *)self _doSyncCallWithError:error syncCall:v19];

  return error;
}

- (BOOL)_doDeletionSyncCallWithError:(id *)error deletedCount:(unint64_t *)count syncCall:(id)call
{
  callCopy = call;
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
  callCopy[2](callCopy, v11, v10);

  if (count)
  {
    *count = v17[3];
  }

  v12 = v32[5];
  if (v12)
  {
    v13 = 0;
    if (error)
    {
      *error = v12;
    }
  }

  else
  {
    if (error)
    {
      *error = v21[5];
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

- (BOOL)_doSyncCallWithError:(id *)error syncCall:(id)call
{
  callCopy = call;
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
  callCopy[2](callCopy, v9, v8);

  v10 = v26[5];
  if (v10)
  {
    v11 = 0;
    if (error)
    {
      *error = v10;
    }
  }

  else
  {
    if (error)
    {
      *error = v15[5];
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
  block[4] = self;
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