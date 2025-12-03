@interface PPTopicReadWriteClient
+ (id)sharedInstance;
- (BOOL)_doDeletionSyncCallWithError:(id *)error deletedCount:(unint64_t *)count syncCall:(id)call;
- (BOOL)_doSyncCallWithError:(id *)error syncCall:(id)call;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsWithTopicId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)donateTopics:(id)topics source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score exactMatchesInSourceText:(id)text error:(id *)error;
- (PPTopicReadWriteClient)init;
@end

@implementation PPTopicReadWriteClient

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __106__PPTopicReadWriteClient_deleteAllTopicsFromSourcesWithBundleId_groupId_olderThanDate_deletedCount_error___block_invoke;
  v19[3] = &unk_1E77F6140;
  v20 = idCopy;
  v21 = groupIdCopy;
  v22 = dateCopy;
  v15 = dateCopy;
  v16 = groupIdCopy;
  v17 = idCopy;
  LOBYTE(count) = [(PPTopicReadWriteClient *)self _doDeletionSyncCallWithError:error deletedCount:count syncCall:v19];

  return count;
}

- (BOOL)deleteAllTopicsWithTopicId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__PPTopicReadWriteClient_deleteAllTopicsWithTopicId_deletedCount_error___block_invoke;
  v11[3] = &unk_1E77F6118;
  v12 = idCopy;
  v9 = idCopy;
  LOBYTE(error) = [(PPTopicReadWriteClient *)self _doDeletionSyncCallWithError:error deletedCount:count syncCall:v11];

  return error;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__PPTopicReadWriteClient_deleteAllTopicsFromSourcesWithBundleId_deletedCount_error___block_invoke;
  v11[3] = &unk_1E77F6118;
  v12 = idCopy;
  v9 = idCopy;
  LOBYTE(error) = [(PPTopicReadWriteClient *)self _doDeletionSyncCallWithError:error deletedCount:count syncCall:v11];

  return error;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__PPTopicReadWriteClient_deleteAllTopicsFromSourcesWithBundleId_groupIds_deletedCount_error___block_invoke;
  v15[3] = &unk_1E77F60F0;
  v16 = idCopy;
  v17 = idsCopy;
  v12 = idsCopy;
  v13 = idCopy;
  LOBYTE(error) = [(PPTopicReadWriteClient *)self _doDeletionSyncCallWithError:error deletedCount:count syncCall:v15];

  return error;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__PPTopicReadWriteClient_deleteAllTopicsFromSourcesWithBundleId_documentIds_deletedCount_error___block_invoke;
  v15[3] = &unk_1E77F60F0;
  v16 = idCopy;
  v17 = idsCopy;
  v12 = idsCopy;
  v13 = idCopy;
  LOBYTE(error) = [(PPTopicReadWriteClient *)self _doDeletionSyncCallWithError:error deletedCount:count syncCall:v15];

  return error;
}

- (BOOL)donateTopics:(id)topics source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score exactMatchesInSourceText:(id)text error:(id *)error
{
  topicsCopy = topics;
  sourceCopy = source;
  textCopy = text;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __112__PPTopicReadWriteClient_donateTopics_source_algorithm_cloudSync_sentimentScore_exactMatchesInSourceText_error___block_invoke;
  v23[3] = &unk_1E77F60C8;
  v24 = topicsCopy;
  v25 = sourceCopy;
  syncCopy = sync;
  scoreCopy = score;
  v26 = textCopy;
  algorithmCopy = algorithm;
  v19 = textCopy;
  v20 = sourceCopy;
  v21 = topicsCopy;
  LOBYTE(error) = [(PPTopicReadWriteClient *)self _doSyncCallWithError:error syncCall:v23];

  return error;
}

- (BOOL)_doDeletionSyncCallWithError:(id *)error deletedCount:(unint64_t *)count syncCall:(id)call
{
  callCopy = call;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__514;
  v35 = __Block_byref_object_dispose__515;
  v36 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __77__PPTopicReadWriteClient__doDeletionSyncCallWithError_deletedCount_syncCall___block_invoke;
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
  v23 = __Block_byref_object_copy__514;
  v24 = __Block_byref_object_dispose__515;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__PPTopicReadWriteClient__doDeletionSyncCallWithError_deletedCount_syncCall___block_invoke_2;
  v15[3] = &unk_1E77F7B70;
  v15[4] = &v26;
  v15[5] = &v20;
  v15[6] = &v16;
  v10 = MEMORY[0x1AC568040](v15);
  v11 = [(PPTopicReadWriteClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
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

void __77__PPTopicReadWriteClient__doDeletionSyncCallWithError_deletedCount_syncCall___block_invoke_2(void *a1, char a2, uint64_t a3, id obj)
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
  v28 = __Block_byref_object_copy__514;
  v29 = __Block_byref_object_dispose__515;
  v30 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__PPTopicReadWriteClient__doSyncCallWithError_syncCall___block_invoke;
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
  v17 = __Block_byref_object_copy__514;
  v18 = __Block_byref_object_dispose__515;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__PPTopicReadWriteClient__doSyncCallWithError_syncCall___block_invoke_2;
  v13[3] = &unk_1E77F7B48;
  v13[4] = &v20;
  v13[5] = &v14;
  v8 = MEMORY[0x1AC568040](v13);
  v9 = [(PPTopicReadWriteClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v7];
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

- (PPTopicReadWriteClient)init
{
  v8.receiver = self;
  v8.super_class = PPTopicReadWriteClient;
  v2 = [(PPTopicReadWriteClient *)&v8 init];
  if (v2)
  {
    v3 = [PPXPCClientHelper alloc];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B55E18];
    v5 = [(PPXPCClientHelper *)v3 initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.Topic.readWrite" allowedServerInterface:v4 allowedClientInterface:0 clientExportedObject:0 interruptionHandler:&__block_literal_global_520 invalidationHandler:&__block_literal_global_86];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PPTopicReadWriteClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken2_542 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_542, block);
  }

  v2 = sharedInstance__pasExprOnceResult_543;

  return v2;
}

void __40__PPTopicReadWriteClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_543;
  sharedInstance__pasExprOnceResult_543 = v4;

  objc_autoreleasePoolPop(v2);
}

@end