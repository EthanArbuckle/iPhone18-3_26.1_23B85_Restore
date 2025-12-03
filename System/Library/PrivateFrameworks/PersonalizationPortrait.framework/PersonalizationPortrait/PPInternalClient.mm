@interface PPInternalClient
+ (id)sharedInstance;
- (BOOL)trialOverridePath:(id)path namespaceName:(id)name factorName:(id)factorName error:(id *)error;
- (PPInternalClient)init;
- (id)sysdiagnoseInformationWithError:(id *)error;
@end

@implementation PPInternalClient

- (id)sysdiagnoseInformationWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__347;
  v22 = __Block_byref_object_dispose__348;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__347;
  v16 = __Block_byref_object_dispose__348;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PPInternalClient_sysdiagnoseInformationWithError___block_invoke;
  v11[3] = &unk_1E77F7B20;
  v11[4] = &v18;
  v5 = MEMORY[0x1AC568040](v11, a2);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PPInternalClient_sysdiagnoseInformationWithError___block_invoke_2;
  v10[3] = &unk_1E77F6D38;
  v10[4] = &v12;
  v10[5] = &v18;
  v6 = MEMORY[0x1AC568040](v10);
  v7 = [(PPInternalClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v5];
  [v7 sysdiagnoseInformationWithCompletion:v6];

  if (error)
  {
    *error = v19[5];
  }

  v8 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __52__PPInternalClient_sysdiagnoseInformationWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)trialOverridePath:(id)path namespaceName:(id)name factorName:(id)factorName error:(id *)error
{
  pathCopy = path;
  nameCopy = name;
  factorNameCopy = factorName;
  v14 = factorNameCopy;
  if (nameCopy)
  {
    if (factorNameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPInternalClient.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPInternalClient.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"factorName"}];

LABEL_3:
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__347;
  v32 = __Block_byref_object_dispose__348;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __69__PPInternalClient_trialOverridePath_namespaceName_factorName_error___block_invoke;
  v23[3] = &unk_1E77F7B20;
  v23[4] = &v28;
  v15 = MEMORY[0x1AC568040](v23);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __69__PPInternalClient_trialOverridePath_namespaceName_factorName_error___block_invoke_2;
  v22[3] = &unk_1E77F7B48;
  v22[4] = &v24;
  v22[5] = &v28;
  v16 = MEMORY[0x1AC568040](v22);
  v17 = [(PPInternalClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v15];
  [v17 trialOverridePath:pathCopy namespaceName:nameCopy factorName:v14 completion:v16];

  if (error)
  {
    *error = v29[5];
  }

  v18 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v18;
}

- (PPInternalClient)init
{
  v7.receiver = self;
  v7.super_class = PPInternalClient;
  v2 = [(PPInternalClient *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B55D58];
    v4 = [[PPXPCClientHelper alloc] initWithServiceName:@"com.apple.proactive.PersonalizationPortrait.Internal" allowedServerInterface:v3 allowedClientInterface:0 clientExportedObject:0 interruptionHandler:&__block_literal_global_367 invalidationHandler:&__block_literal_global_99];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v4;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PPInternalClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2, block);
  }

  v2 = sharedInstance__pasExprOnceResult_392;

  return v2;
}

void __34__PPInternalClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_392;
  sharedInstance__pasExprOnceResult_392 = v4;

  objc_autoreleasePoolPop(v2);
}

@end