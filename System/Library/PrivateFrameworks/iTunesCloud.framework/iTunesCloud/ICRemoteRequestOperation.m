@interface ICRemoteRequestOperation
- (ICRemoteRequestOperation)initWithCoder:(id)a3;
- (void)_execute;
@end

@implementation ICRemoteRequestOperation

- (ICRemoteRequestOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICRemoteRequestOperation;
  return [(ICRequestOperation *)&v4 init];
}

- (void)_execute
{
  if (-[ICRemoteRequestOperation _isShadowOperationForRemoteExecution](self, "_isShadowOperationForRemoteExecution") || ([MEMORY[0x1E696AE30] processInfo], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "ic_isCloudDaemon"), v3, v4))
  {
    v10.receiver = self;
    v10.super_class = ICRemoteRequestOperation;
    [(ICAsyncOperation *)&v10 _execute];
  }

  else
  {
    v5 = [[ICRemoteRequestOperationExecutionContext alloc] initWithRemoteRequestOperation:self];
    v6 = [MEMORY[0x1E696ADC8] currentQueue];
    v7 = v6;
    if (v6)
    {
      -[ICRemoteRequestOperationExecutionContext setQualityOfService:](v5, "setQualityOfService:", [v6 qualityOfService]);
    }

    v8 = +[ICRemoteRequestOperationController sharedRemoteRequestOperationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__ICRemoteRequestOperation__execute__block_invoke;
    v9[3] = &unk_1E7BF8E00;
    v9[4] = self;
    [v8 performRemoteRequestOperationWithExecutionContext:v5 completionHandler:v9];
  }
}

void __36__ICRemoteRequestOperation__execute__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10 = v5;
  if (v5)
  {
    v7 = [v5 remoteRequestOperationResponse];
    [v6 setResponse:v7];

    v8 = *(a1 + 32);
    v9 = [v10 remoteRequestOperationError];
    [v8 finishWithError:v9];
  }

  else
  {
    [v6 finishWithError:a3];
  }
}

@end