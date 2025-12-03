@interface PLPhotoAnalysisExecutiveService
- (PLPhotoAnalysisExecutiveService)initWithServiceProvider:(id)provider;
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)keepPADActiveWithOperationID:(id)d reply:(id)reply;
- (void)performOnDemandTaskWithName:(id)name reply:(id)reply;
- (void)performOnDemandTasksForScenario:(id)scenario reply:(id)reply;
- (void)requestActivityStatusWithReply:(id)reply;
- (void)requestAnalysisStatusWithReply:(id)reply;
@end

@implementation PLPhotoAnalysisExecutiveService

- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  executiveService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider executiveService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__PLPhotoAnalysisExecutiveService_cancelOperationsWithIdentifiers_reply___block_invoke;
  v15[3] = &unk_1E7576050;
  v16 = identifiersCopy;
  v9 = replyCopy;
  v17 = v9;
  v10 = identifiersCopy;
  v11 = [executiveService remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PLPhotoAnalysisExecutiveService_cancelOperationsWithIdentifiers_reply___block_invoke_2;
  v13[3] = &unk_1E7572328;
  v14 = v9;
  v12 = v9;
  [v11 cancelOperationsWithIdentifiers:v10 reply:v13];
}

void __73__PLPhotoAnalysisExecutiveService_cancelOperationsWithIdentifiers_reply___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) stringValue];
        [v4 setObject:v3 forKeyedSubscript:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)keepPADActiveWithOperationID:(id)d reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  dCopy = d;
  executiveService = [(PLPhotoAnalysisServiceProvider *)serviceProvider executiveService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__PLPhotoAnalysisExecutiveService_keepPADActiveWithOperationID_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v10 = replyCopy;
  v16 = v10;
  v11 = [executiveService remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PLPhotoAnalysisExecutiveService_keepPADActiveWithOperationID_reply___block_invoke_2;
  v13[3] = &unk_1E7577430;
  v14 = v10;
  v12 = v10;
  [v11 keepPADActiveWithOperationID:dCopy reply:v13];
}

- (void)requestActivityStatusWithReply:(id)reply
{
  replyCopy = reply;
  executiveService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider executiveService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PLPhotoAnalysisExecutiveService_requestActivityStatusWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = replyCopy;
  v12 = v6;
  v7 = [executiveService remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PLPhotoAnalysisExecutiveService_requestActivityStatusWithReply___block_invoke_2;
  v9[3] = &unk_1E7577458;
  v10 = v6;
  v8 = v6;
  [v7 requestActivityStatusWithReply:v9];
}

- (void)requestAnalysisStatusWithReply:(id)reply
{
  replyCopy = reply;
  executiveService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider executiveService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PLPhotoAnalysisExecutiveService_requestAnalysisStatusWithReply___block_invoke;
  v11[3] = &unk_1E7577430;
  v6 = replyCopy;
  v12 = v6;
  v7 = [executiveService synchronousRemoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PLPhotoAnalysisExecutiveService_requestAnalysisStatusWithReply___block_invoke_2;
  v9[3] = &unk_1E7577458;
  v10 = v6;
  v8 = v6;
  [v7 requestAnalysisStatusWithReply:v9];
}

- (void)performOnDemandTasksForScenario:(id)scenario reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  scenarioCopy = scenario;
  executiveService = [(PLPhotoAnalysisServiceProvider *)serviceProvider executiveService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__PLPhotoAnalysisExecutiveService_performOnDemandTasksForScenario_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v10 = replyCopy;
  v16 = v10;
  v11 = [executiveService remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PLPhotoAnalysisExecutiveService_performOnDemandTasksForScenario_reply___block_invoke_2;
  v13[3] = &unk_1E7577430;
  v14 = v10;
  v12 = v10;
  [v11 performOnDemandTasksForScenario:scenarioCopy reply:v13];
}

- (void)performOnDemandTaskWithName:(id)name reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  nameCopy = name;
  executiveService = [(PLPhotoAnalysisServiceProvider *)serviceProvider executiveService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PLPhotoAnalysisExecutiveService_performOnDemandTaskWithName_reply___block_invoke;
  v15[3] = &unk_1E7577430;
  v10 = replyCopy;
  v16 = v10;
  v11 = [executiveService remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PLPhotoAnalysisExecutiveService_performOnDemandTaskWithName_reply___block_invoke_2;
  v13[3] = &unk_1E7577430;
  v14 = v10;
  v12 = v10;
  [v11 performOnDemandTaskWithName:nameCopy reply:v13];
}

- (PLPhotoAnalysisExecutiveService)initWithServiceProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = PLPhotoAnalysisExecutiveService;
  v6 = [(PLPhotoAnalysisExecutiveService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceProvider, provider);
    atomic_store(0, &v7->_operationID);
  }

  return v7;
}

@end