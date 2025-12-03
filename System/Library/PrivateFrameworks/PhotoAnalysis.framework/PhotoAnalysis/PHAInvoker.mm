@interface PHAInvoker
- (PHAInvoker)initWithDelegate:(id)delegate;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)handleInvocation:(id)invocation withTarget:(id)target service:(id)service;
@end

@implementation PHAInvoker

- (void)handleInvocation:(id)invocation withTarget:(id)target service:(id)service
{
  serviceCopy = service;
  targetCopy = target;
  invocationCopy = invocation;
  v11 = NSStringFromSelector([invocationCopy selector]);
  [v11 UTF8String];
  v12 = os_transaction_create();
  [invocationCopy setTarget:targetCopy];
  v13 = [[PHAServiceCancelableOperation alloc] initWithOperationId:0 invocation:invocationCopy];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__PHAInvoker_handleInvocation_withTarget_service___block_invoke;
  v16[3] = &unk_2788B2E78;
  v17 = v12;
  v14 = v12;
  [(PHAServiceCancelableOperation *)v13 addCompletionBlock:v16];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dispatchOperation:v13 toTarget:targetCopy service:serviceCopy];
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  invocationCopy = invocation;
  connectionCopy = connection;
  target = [invocationCopy target];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained targetForOriginalTarget:target connection:connectionCopy selector:{objc_msgSend(invocationCopy, "selector")}];

  if (v10)
  {
    [(PHAInvoker *)self handleInvocation:invocationCopy withTarget:v10 service:target];
  }

  else
  {
    [invocationCopy invoke];
  }
}

- (PHAInvoker)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = PHAInvoker;
  v5 = [(PHAInvoker *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

@end