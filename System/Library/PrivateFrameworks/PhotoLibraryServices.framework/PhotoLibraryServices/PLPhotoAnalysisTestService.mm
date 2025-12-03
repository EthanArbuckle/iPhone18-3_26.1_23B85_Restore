@interface PLPhotoAnalysisTestService
- (PLPhotoAnalysisTestService)initWithServiceProvider:(id)provider;
- (id)performGetString;
- (unint64_t)performAsyncLongOperationWithReply:(id)reply;
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
@end

@implementation PLPhotoAnalysisTestService

- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  testService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider testService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__PLPhotoAnalysisTestService_cancelOperationsWithIdentifiers_reply___block_invoke;
  v15[3] = &unk_1E7576050;
  v16 = identifiersCopy;
  v9 = replyCopy;
  v17 = v9;
  v10 = identifiersCopy;
  v11 = [testService remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PLPhotoAnalysisTestService_cancelOperationsWithIdentifiers_reply___block_invoke_2;
  v13[3] = &unk_1E7572328;
  v14 = v9;
  v12 = v9;
  [v11 cancelOperationsWithIdentifiers:v10 reply:v13];
}

void __68__PLPhotoAnalysisTestService_cancelOperationsWithIdentifiers_reply___block_invoke(uint64_t a1, void *a2)
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

- (unint64_t)performAsyncLongOperationWithReply:(id)reply
{
  replyCopy = reply;
  add = atomic_fetch_add(&self->_operationID, 1uLL);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", add];
  testService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider testService];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__PLPhotoAnalysisTestService_performAsyncLongOperationWithReply___block_invoke;
  v14[3] = &unk_1E7577430;
  v8 = replyCopy;
  v15 = v8;
  v9 = [testService remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PLPhotoAnalysisTestService_performAsyncLongOperationWithReply___block_invoke_2;
  v12[3] = &unk_1E75644B8;
  v13 = v8;
  v10 = v8;
  [v9 performLongOperationWithOperationID:v6 reply:v12];

  return add;
}

- (id)performGetString
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__179;
  v14 = __Block_byref_object_dispose__180;
  v15 = 0;
  add = atomic_fetch_add(&self->_operationID, 1uLL);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", add];
  testService = [(PLPhotoAnalysisServiceProvider *)self->_serviceProvider testService];
  v6 = [testService synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_219];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__PLPhotoAnalysisTestService_performGetString__block_invoke_2;
  v9[3] = &unk_1E7564520;
  v9[4] = &v10;
  [v6 performGetStringWithOperationID:v4 reply:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (PLPhotoAnalysisTestService)initWithServiceProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = PLPhotoAnalysisTestService;
  v6 = [(PLPhotoAnalysisTestService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceProvider, provider);
    atomic_store(0, &v7->_operationID);
  }

  return v7;
}

@end