@interface PPLocationReadWriteClient
+ (id)sharedInstance;
- (BOOL)_doDeletionSyncCallWithError:(id *)error deletedCount:(unint64_t *)count syncCall:(id)call;
- (BOOL)_doSyncCallWithError:(id *)error syncCall:(id)call;
- (BOOL)donateLocations:(id)locations source:(id)source contextualNamedEntities:(id)entities algorithm:(unsigned __int16)algorithm cloudSync:(BOOL)sync decayRate:(double)rate error:(id *)error;
- (PPLocationReadWriteClient)init;
@end

@implementation PPLocationReadWriteClient

- (BOOL)donateLocations:(id)locations source:(id)source contextualNamedEntities:(id)entities algorithm:(unsigned __int16)algorithm cloudSync:(BOOL)sync decayRate:(double)rate error:(id *)error
{
  locationsCopy = locations;
  sourceCopy = source;
  entitiesCopy = entities;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __112__PPLocationReadWriteClient_donateLocations_source_contextualNamedEntities_algorithm_cloudSync_decayRate_error___block_invoke;
  v23[3] = &unk_1E77F7B98;
  v24 = locationsCopy;
  v25 = sourceCopy;
  v26 = entitiesCopy;
  algorithmCopy = algorithm;
  syncCopy = sync;
  rateCopy = rate;
  v19 = entitiesCopy;
  v20 = sourceCopy;
  v21 = locationsCopy;
  LOBYTE(error) = [(PPLocationReadWriteClient *)self _doSyncCallWithError:error syncCall:v23];

  return error;
}

- (BOOL)_doDeletionSyncCallWithError:(id *)error deletedCount:(unint64_t *)count syncCall:(id)call
{
  callCopy = call;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__7677;
  v35 = __Block_byref_object_dispose__7678;
  v36 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __80__PPLocationReadWriteClient__doDeletionSyncCallWithError_deletedCount_syncCall___block_invoke;
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
  v23 = __Block_byref_object_copy__7677;
  v24 = __Block_byref_object_dispose__7678;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__PPLocationReadWriteClient__doDeletionSyncCallWithError_deletedCount_syncCall___block_invoke_2;
  v15[3] = &unk_1E77F7B70;
  v15[4] = &v26;
  v15[5] = &v20;
  v15[6] = &v16;
  v10 = MEMORY[0x1AC568040](v15);
  v11 = [(PPLocationReadWriteClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
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

void __80__PPLocationReadWriteClient__doDeletionSyncCallWithError_deletedCount_syncCall___block_invoke_2(void *a1, char a2, uint64_t a3, id obj)
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
  v28 = __Block_byref_object_copy__7677;
  v29 = __Block_byref_object_dispose__7678;
  v30 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__PPLocationReadWriteClient__doSyncCallWithError_syncCall___block_invoke;
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
  v17 = __Block_byref_object_copy__7677;
  v18 = __Block_byref_object_dispose__7678;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__PPLocationReadWriteClient__doSyncCallWithError_syncCall___block_invoke_2;
  v13[3] = &unk_1E77F7B48;
  v13[4] = &v20;
  v13[5] = &v14;
  v8 = MEMORY[0x1AC568040](v13);
  v9 = [(PPLocationReadWriteClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v7];
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

- (PPLocationReadWriteClient)init
{
  v8.receiver = self;
  v8.super_class = PPLocationReadWriteClient;
  v2 = [(PPLocationReadWriteClient *)&v8 init];
  if (v2)
  {
    v3 = [PPXPCClientHelper alloc];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B56238];
    v5 = [(PPXPCClientHelper *)v3 initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.Location.readWrite" allowedServerInterface:v4 allowedClientInterface:0 clientExportedObject:0 interruptionHandler:&__block_literal_global_7684 invalidationHandler:&__block_literal_global_74];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PPLocationReadWriteClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken2_7699 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_7699, block);
  }

  v2 = sharedInstance__pasExprOnceResult_7700;

  return v2;
}

void __43__PPLocationReadWriteClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_7700;
  sharedInstance__pasExprOnceResult_7700 = v4;

  objc_autoreleasePoolPop(v2);
}

@end