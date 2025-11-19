@interface PHAInvoker
- (PHAInvoker)initWithDelegate:(id)a3;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)handleInvocation:(id)a3 withTarget:(id)a4 service:(id)a5;
@end

@implementation PHAInvoker

- (void)handleInvocation:(id)a3 withTarget:(id)a4 service:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = NSStringFromSelector([v10 selector]);
  [v11 UTF8String];
  v12 = os_transaction_create();
  [v10 setTarget:v9];
  v13 = [[PHAServiceCancelableOperation alloc] initWithOperationId:0 invocation:v10];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__PHAInvoker_handleInvocation_withTarget_service___block_invoke;
  v16[3] = &unk_2788B2E78;
  v17 = v12;
  v14 = v12;
  [(PHAServiceCancelableOperation *)v13 addCompletionBlock:v16];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dispatchOperation:v13 toTarget:v9 service:v8];
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v7 = a4;
  v8 = a3;
  v11 = [v7 target];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained targetForOriginalTarget:v11 connection:v8 selector:{objc_msgSend(v7, "selector")}];

  if (v10)
  {
    [(PHAInvoker *)self handleInvocation:v7 withTarget:v10 service:v11];
  }

  else
  {
    [v7 invoke];
  }
}

- (PHAInvoker)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PHAInvoker;
  v5 = [(PHAInvoker *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

@end