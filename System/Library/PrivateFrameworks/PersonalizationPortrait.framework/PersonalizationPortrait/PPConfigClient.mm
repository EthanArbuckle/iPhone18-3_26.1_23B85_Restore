@interface PPConfigClient
+ (id)sharedInstance;
- (PPConfigClient)init;
- (id)readableTrialTreatmentsMappingWithError:(id *)error;
- (id)variantNameWithError:(id *)error;
- (unint64_t)assetVersionWithError:(id *)error;
@end

@implementation PPConfigClient

- (id)readableTrialTreatmentsMappingWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3458;
  v22 = __Block_byref_object_dispose__3459;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3458;
  v16 = __Block_byref_object_dispose__3459;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__PPConfigClient_readableTrialTreatmentsMappingWithError___block_invoke;
  v11[3] = &unk_1E77F6AE0;
  v11[4] = &v18;
  v11[5] = &v12;
  v5 = MEMORY[0x1AC568040](v11, a2);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__PPConfigClient_readableTrialTreatmentsMappingWithError___block_invoke_2;
  v10[3] = &unk_1E77F6B30;
  v10[4] = &v18;
  v10[5] = &v12;
  v6 = MEMORY[0x1AC568040](v10);
  v7 = [(PPConfigClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v5];
  [v7 readableTrialTreatmentsMappingWithCompletion:v6];

  if (error)
  {
    *error = v13[5];
  }

  v8 = v19[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __58__PPConfigClient_readableTrialTreatmentsMappingWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __58__PPConfigClient_readableTrialTreatmentsMappingWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)variantNameWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3458;
  v22 = __Block_byref_object_dispose__3459;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3458;
  v16 = __Block_byref_object_dispose__3459;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__PPConfigClient_variantNameWithError___block_invoke;
  v11[3] = &unk_1E77F6AE0;
  v11[4] = &v18;
  v11[5] = &v12;
  v5 = MEMORY[0x1AC568040](v11, a2);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__PPConfigClient_variantNameWithError___block_invoke_2;
  v10[3] = &unk_1E77F6D38;
  v10[4] = &v18;
  v10[5] = &v12;
  v6 = MEMORY[0x1AC568040](v10);
  v7 = [(PPConfigClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v5];
  [v7 variantNameWithCompletion:v6];

  if (error)
  {
    *error = v13[5];
  }

  v8 = v19[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __39__PPConfigClient_variantNameWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __39__PPConfigClient_variantNameWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (unint64_t)assetVersionWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3458;
  v16 = __Block_byref_object_dispose__3459;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__PPConfigClient_assetVersionWithError___block_invoke;
  v11[3] = &unk_1E77F6AE0;
  v11[4] = &v18;
  v11[5] = &v12;
  v5 = MEMORY[0x1AC568040](v11, a2);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__PPConfigClient_assetVersionWithError___block_invoke_2;
  v10[3] = &unk_1E77F6B08;
  v10[4] = &v18;
  v10[5] = &v12;
  v6 = MEMORY[0x1AC568040](v10);
  v7 = [(PPConfigClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v5];
  [v7 assetVersionWithCompletion:v6];

  if (error)
  {
    *error = v13[5];
  }

  v8 = v19[3];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v8;
}

- (PPConfigClient)init
{
  v8.receiver = self;
  v8.super_class = PPConfigClient;
  v2 = [(PPConfigClient *)&v8 init];
  if (v2)
  {
    v3 = [PPXPCClientHelper alloc];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B55ED8];
    v5 = [(PPXPCClientHelper *)v3 initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.Config" allowedServerInterface:v4 allowedClientInterface:0 clientExportedObject:0 interruptionHandler:&__block_literal_global_3466 invalidationHandler:&__block_literal_global_73];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PPConfigClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken2_3480 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_3480, block);
  }

  v2 = sharedInstance__pasExprOnceResult_3481;

  return v2;
}

void __32__PPConfigClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_3481;
  sharedInstance__pasExprOnceResult_3481 = v4;

  objc_autoreleasePoolPop(v2);
}

@end