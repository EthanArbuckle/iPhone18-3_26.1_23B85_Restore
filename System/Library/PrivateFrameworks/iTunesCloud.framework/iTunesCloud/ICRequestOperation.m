@interface ICRequestOperation
- (ICRequestOperation)init;
- (void)finishWithError:(id)a3;
- (void)performRequestOnOperationQueue:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation ICRequestOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ICRequestOperation;
  [(ICAsyncOperation *)&v7 finishWithError:v4];
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, v4);
    v6 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)performRequestOnOperationQueue:(id)a3 withCompletionHandler:(id)a4
{
  v9 = a3;
  v6 = MEMORY[0x1B8C781E0](a4);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  if (v9)
  {
    [v9 addOperation:self];
  }

  else
  {
    v8 = [MEMORY[0x1E696ADC8] ic_sharedRequestOperationQueueWithQualityOfService:-1];
    [v8 addOperation:self];
  }
}

- (ICRequestOperation)init
{
  v5.receiver = self;
  v5.super_class = ICRequestOperation;
  v2 = [(ICAsyncOperation *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
    [(ICRequestOperation *)v2 setProgress:v3];
  }

  return v2;
}

@end