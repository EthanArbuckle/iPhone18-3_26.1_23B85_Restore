@interface VFObserver
+ (VFObserver)observerWithCompletionHandler:(id)handler;
+ (VFObserver)observerWithResultBlock:(id)block;
+ (VFObserver)observerWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock;
@end

@implementation VFObserver

+ (VFObserver)observerWithResultBlock:(id)block
{
  blockCopy = block;
  v4 = [[_VFBlockObserver alloc] initWithResultBlock:blockCopy completionBlock:0 failureBlock:0];

  return v4;
}

+ (VFObserver)observerWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock
{
  failureBlockCopy = failureBlock;
  completionBlockCopy = completionBlock;
  blockCopy = block;
  v10 = [[_VFBlockObserver alloc] initWithResultBlock:blockCopy completionBlock:completionBlockCopy failureBlock:failureBlockCopy];

  return v10;
}

+ (VFObserver)observerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[VFPromise promise];
  future = [v4 future];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__VFObserver_observerWithCompletionHandler___block_invoke;
  v16[3] = &unk_279E35A70;
  v6 = handlerCopy;
  v17 = v6;
  [future addSuccessBlock:v16];

  future2 = [v4 future];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __44__VFObserver_observerWithCompletionHandler___block_invoke_2;
  v14 = &unk_279E35A98;
  v15 = v6;
  v8 = v6;
  [future2 addFailureBlock:&v11];

  resultsObserverAdapter = [v4 resultsObserverAdapter];

  return resultsObserverAdapter;
}

@end