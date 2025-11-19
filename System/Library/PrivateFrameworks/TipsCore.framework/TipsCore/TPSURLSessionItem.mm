@interface TPSURLSessionItem
- (TPSURLSessionItem)initWithSessionTask:(id)a3 completionHandler:(id)a4;
- (int64_t)state;
- (void)cancel;
- (void)dealloc;
- (void)notifyWithSessionTask:(id)a3 error:(id)a4;
@end

@implementation TPSURLSessionItem

- (void)dealloc
{
  [(TPSURLSessionItem *)self cancel];
  v3.receiver = self;
  v3.super_class = TPSURLSessionItem;
  [(TPSURLSessionItem *)&v3 dealloc];
}

- (TPSURLSessionItem)initWithSessionTask:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TPSURLSessionItem;
  v9 = [(TPSURLSessionItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionTask, a3);
    v11 = [v8 copy];
    completionHanlder = v10->_completionHanlder;
    v10->_completionHanlder = v11;

    [(TPSURLSessionTask *)v10->_sessionTask registerDelegate:v10];
  }

  return v10;
}

- (int64_t)state
{
  v2 = [(TPSURLSessionTask *)self->_sessionTask task];
  v3 = [v2 state];

  return v3;
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

- (void)notifyWithSessionTask:(id)a3 error:(id)a4
{
  if (self->_completionHanlder)
  {
    v6 = a4;
    v7 = a3;
    v13 = [v7 formattedData];
    v8 = [v7 dataTaskData];
    v9 = [v7 lastModified];
    completionHanlder = self->_completionHanlder;
    v11 = [v7 isCacheData];

    completionHanlder[2](completionHanlder, v13, v8, v11, v9, v6);
    v12 = self->_completionHanlder;
    self->_completionHanlder = 0;
  }
}

@end