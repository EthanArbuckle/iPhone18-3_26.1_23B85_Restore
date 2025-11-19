@interface TRCompletionOperationHandler
- (TRCompletionOperationHandler)initWithCompletionHandler:(id)a3;
- (void)_handleCompletionRequest:(id)a3 withResponseHandler:(id)a4;
- (void)registerMessageHandlersForSession:(id)a3;
@end

@implementation TRCompletionOperationHandler

- (TRCompletionOperationHandler)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRCompletionOperationHandler;
  v5 = [(TRCompletionOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v6;
  }

  return v5;
}

- (void)registerMessageHandlersForSession:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__TRCompletionOperationHandler_registerMessageHandlersForSession___block_invoke;
  v4[3] = &unk_279DCEAD8;
  v4[4] = self;
  v3 = a3;
  [v3 setRequestHandler:v4 forRequestClass:objc_opt_class()];
}

- (void)_handleCompletionRequest:(id)a3 withResponseHandler:(id)a4
{
  v10 = a3;
  if (self->_completionHandler)
  {
    v6 = a4;
    v7 = objc_alloc_init(TRSetupCompletionResponse);
    v6[2](v6, 0, v7);

    [v10 completedSuccessfully];
    [v10 errorCode];
    (*(self->_completionHandler + 2))();
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = a4;
    v7 = [v8 errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
    v9[2](v9, v7, 0);
  }
}

@end