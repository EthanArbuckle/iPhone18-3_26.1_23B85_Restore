@interface TPSURLSessionItem
- (TPSURLSessionItem)initWithSessionTask:(id)task completionHandler:(id)handler;
- (int64_t)state;
- (void)cancel;
- (void)dealloc;
- (void)notifyWithSessionTask:(id)task error:(id)error;
@end

@implementation TPSURLSessionItem

- (void)dealloc
{
  [(TPSURLSessionItem *)self cancel];
  v3.receiver = self;
  v3.super_class = TPSURLSessionItem;
  [(TPSURLSessionItem *)&v3 dealloc];
}

- (TPSURLSessionItem)initWithSessionTask:(id)task completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = TPSURLSessionItem;
  v9 = [(TPSURLSessionItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionTask, task);
    v11 = [handlerCopy copy];
    completionHanlder = v10->_completionHanlder;
    v10->_completionHanlder = v11;

    [(TPSURLSessionTask *)v10->_sessionTask registerDelegate:v10];
  }

  return v10;
}

- (int64_t)state
{
  task = [(TPSURLSessionTask *)self->_sessionTask task];
  state = [task state];

  return state;
}

- (void)cancel
{
  v7[1] = *MEMORY[0x1E69E9840];
  self->_cancelled = 1;
  [(TPSURLSessionTask *)self->_sessionTask unregisterDelegate:self];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Cancelled";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"Request" code:-1 userInfo:v3];
  [(TPSURLSessionItem *)self notifyWithSessionTask:0 error:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)notifyWithSessionTask:(id)task error:(id)error
{
  if (self->_completionHanlder)
  {
    errorCopy = error;
    taskCopy = task;
    formattedData = [taskCopy formattedData];
    dataTaskData = [taskCopy dataTaskData];
    lastModified = [taskCopy lastModified];
    completionHanlder = self->_completionHanlder;
    isCacheData = [taskCopy isCacheData];

    completionHanlder[2](completionHanlder, formattedData, dataTaskData, isCacheData, lastModified, errorCopy);
    v12 = self->_completionHanlder;
    self->_completionHanlder = 0;
  }
}

@end