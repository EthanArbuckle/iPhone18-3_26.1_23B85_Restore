@interface IMURLProtocolHandler
- (void)handleCompletionWithTask:(id)a3 metrics:(id)a4 decodedObject:(id)a5 completionHandler:(id)a6;
@end

@implementation IMURLProtocolHandler

- (void)handleCompletionWithTask:(id)a3 metrics:(id)a4 decodedObject:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__IMURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke;
  v16[3] = &unk_1E856B2A0;
  objc_copyWeak(&v18, &location);
  v14 = v13;
  v17 = v14;
  v15.receiver = self;
  v15.super_class = IMURLProtocolHandler;
  [(AMSURLProtocolHandler *)&v15 handleCompletionWithTask:v10 metrics:v11 decodedObject:v12 completionHandler:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __89__IMURLProtocolHandler_handleCompletionWithTask_metrics_decodedObject_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained followsRedirects];
    if ([v8 actionType] == 1 && (v5 & 1) == 0)
    {
      v6 = *(a1 + 32);
      v7 = +[IMIgnoreRedirectURLAction ignoreRedirectAction];
      (*(v6 + 16))(v6, v7);
    }
  }

  else
  {
    [v8 actionType];
  }
}

@end