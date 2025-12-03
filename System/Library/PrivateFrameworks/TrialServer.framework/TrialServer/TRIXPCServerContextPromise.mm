@interface TRIXPCServerContextPromise
- (TRIXPCServerContextPromise)init;
- (void)addBlockToExecuteAfterPromiseFullfillment:(id)fullfillment;
- (void)fullfillWithContext:(id)context taskQueue:(id)queue;
- (void)reject;
@end

@implementation TRIXPCServerContextPromise

- (TRIXPCServerContextPromise)init
{
  v9.receiver = self;
  v9.super_class = TRIXPCServerContextPromise;
  v2 = [(TRIXPCServerContextPromise *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x277D425A0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 autoreleasingSerialQueueWithLabel:objc_msgSend(v5 qosClass:{"UTF8String"), 17}];
    [(TRIXPCServerContextPromise *)v2 setFullfillmentQueue:v6];

    [(TRIXPCServerContextPromise *)v2 setServerContext:0];
    [(TRIXPCServerContextPromise *)v2 setTaskQueue:0];
    fullfillmentQueue = [(TRIXPCServerContextPromise *)v2 fullfillmentQueue];
    dispatch_suspend(fullfillmentQueue);
  }

  return v2;
}

- (void)fullfillWithContext:(id)context taskQueue:(id)queue
{
  queueCopy = queue;
  [(TRIXPCServerContextPromise *)self setServerContext:context];
  [(TRIXPCServerContextPromise *)self setTaskQueue:queueCopy];

  fullfillmentQueue = [(TRIXPCServerContextPromise *)self fullfillmentQueue];
  dispatch_resume(fullfillmentQueue);
}

- (void)reject
{
  fullfillmentQueue = [(TRIXPCServerContextPromise *)self fullfillmentQueue];
  dispatch_resume(fullfillmentQueue);
}

- (void)addBlockToExecuteAfterPromiseFullfillment:(id)fullfillment
{
  fullfillmentCopy = fullfillment;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __72__TRIXPCServerContextPromise_addBlockToExecuteAfterPromiseFullfillment___block_invoke;
  v11 = &unk_279DDF7C8;
  selfCopy = self;
  v13 = fullfillmentCopy;
  v5 = fullfillmentCopy;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &v8);
  v7 = [(TRIXPCServerContextPromise *)self fullfillmentQueue:v8];
  dispatch_async(v7, v6);
}

void __72__TRIXPCServerContextPromise_addBlockToExecuteAfterPromiseFullfillment___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = TRILogCategory_Server();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = qos_class_self();
    _os_log_impl(&dword_26F567000, v2, OS_LOG_TYPE_DEFAULT, "Running server context block with qos: %u", v7, 8u);
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) serverContext];
  v5 = [*(a1 + 32) taskQueue];
  (*(v3 + 16))(v3, v4, v5);

  v6 = *MEMORY[0x277D85DE8];
}

@end