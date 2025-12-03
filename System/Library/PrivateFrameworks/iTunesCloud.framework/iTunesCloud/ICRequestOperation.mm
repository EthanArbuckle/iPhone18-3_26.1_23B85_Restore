@interface ICRequestOperation
- (ICRequestOperation)init;
- (void)finishWithError:(id)error;
- (void)performRequestOnOperationQueue:(id)queue withCompletionHandler:(id)handler;
@end

@implementation ICRequestOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  v7.receiver = self;
  v7.super_class = ICRequestOperation;
  [(ICAsyncOperation *)&v7 finishWithError:errorCopy];
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, errorCopy);
    v6 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)performRequestOnOperationQueue:(id)queue withCompletionHandler:(id)handler
{
  queueCopy = queue;
  v6 = MEMORY[0x1B8C781E0](handler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  if (queueCopy)
  {
    [queueCopy addOperation:self];
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