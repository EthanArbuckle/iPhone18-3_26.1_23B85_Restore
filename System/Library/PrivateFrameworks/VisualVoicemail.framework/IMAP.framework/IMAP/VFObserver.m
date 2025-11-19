@interface VFObserver
+ (VFObserver)observerWithCompletionHandler:(id)a3;
+ (VFObserver)observerWithResultBlock:(id)a3;
+ (VFObserver)observerWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5;
@end

@implementation VFObserver

+ (VFObserver)observerWithResultBlock:(id)a3
{
  v3 = a3;
  v4 = [[_VFBlockObserver alloc] initWithResultBlock:v3 completionBlock:0 failureBlock:0];

  return v4;
}

+ (VFObserver)observerWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[_VFBlockObserver alloc] initWithResultBlock:v9 completionBlock:v8 failureBlock:v7];

  return v10;
}

+ (VFObserver)observerWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[VFPromise promise];
  v5 = [v4 future];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__VFObserver_observerWithCompletionHandler___block_invoke;
  v16[3] = &unk_279E35A70;
  v6 = v3;
  v17 = v6;
  [v5 addSuccessBlock:v16];

  v7 = [v4 future];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __44__VFObserver_observerWithCompletionHandler___block_invoke_2;
  v14 = &unk_279E35A98;
  v15 = v6;
  v8 = v6;
  [v7 addFailureBlock:&v11];

  v9 = [v4 resultsObserverAdapter];

  return v9;
}

@end