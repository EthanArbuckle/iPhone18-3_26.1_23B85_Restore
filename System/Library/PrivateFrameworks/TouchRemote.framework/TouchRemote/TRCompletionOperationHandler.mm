@interface TRCompletionOperationHandler
- (TRCompletionOperationHandler)initWithCompletionHandler:(id)handler;
- (void)_handleCompletionRequest:(id)request withResponseHandler:(id)handler;
- (void)registerMessageHandlersForSession:(id)session;
@end

@implementation TRCompletionOperationHandler

- (TRCompletionOperationHandler)initWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = TRCompletionOperationHandler;
  v5 = [(TRCompletionOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v6;
  }

  return v5;
}

- (void)registerMessageHandlersForSession:(id)session
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__TRCompletionOperationHandler_registerMessageHandlersForSession___block_invoke;
  v4[3] = &unk_279DCEAD8;
  v4[4] = self;
  sessionCopy = session;
  [sessionCopy setRequestHandler:v4 forRequestClass:objc_opt_class()];
}

- (void)_handleCompletionRequest:(id)request withResponseHandler:(id)handler
{
  requestCopy = request;
  if (self->_completionHandler)
  {
    handlerCopy = handler;
    v7 = objc_alloc_init(TRSetupCompletionResponse);
    handlerCopy[2](handlerCopy, 0, v7);

    [requestCopy completedSuccessfully];
    [requestCopy errorCode];
    (*(self->_completionHandler + 2))();
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    handlerCopy2 = handler;
    v7 = [v8 errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
    handlerCopy2[2](handlerCopy2, v7, 0);
  }
}

@end