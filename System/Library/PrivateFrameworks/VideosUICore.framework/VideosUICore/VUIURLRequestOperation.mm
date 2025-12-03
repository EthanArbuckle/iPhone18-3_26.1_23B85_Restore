@interface VUIURLRequestOperation
- (VUIURLRequestOperation)init;
- (VUIURLRequestOperation)initWithRequest:(id)request session:(id)session;
- (unint64_t)elapsedTimeInMilliseconds;
- (void)cancel;
- (void)executionDidBegin;
@end

@implementation VUIURLRequestOperation

- (VUIURLRequestOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIURLRequestOperation)initWithRequest:(id)request session:(id)session
{
  requestCopy = request;
  sessionCopy = session;
  if (!requestCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"The %@ parameter must not be nil.", @"request"}];
  }

  v11.receiver = self;
  v11.super_class = VUIURLRequestOperation;
  v9 = [(VUIURLRequestOperation *)&v11 init];
  if (v9)
  {
    if (initWithRequest_session__onceToken != -1)
    {
      [VUIURLRequestOperation initWithRequest:session:];
    }

    objc_storeStrong(&v9->_request, request);
    if (!sessionCopy)
    {
      sessionCopy = [MEMORY[0x277CCAD30] sharedSession];
    }

    objc_storeStrong(&v9->_session, sessionCopy);
  }

  return v9;
}

- (unint64_t)elapsedTimeInMilliseconds
{
  result = [(VUIURLRequestOperation *)self taskStartTime];
  if (result)
  {
    v4 = mach_absolute_time();
    taskStartTime = [(VUIURLRequestOperation *)self taskStartTime];
    return (v4 - taskStartTime) * (__TimebaseInfo / *algn_28086F3C4) / 0xF4240;
  }

  return result;
}

- (void)executionDidBegin
{
  objc_initWeak(&location, self);
  session = [(VUIURLRequestOperation *)self session];
  request = [(VUIURLRequestOperation *)self request];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __43__VUIURLRequestOperation_executionDidBegin__block_invoke;
  v9 = &unk_279E215A0;
  objc_copyWeak(&v10, &location);
  v5 = [session dataTaskWithRequest:request completionHandler:&v6];

  [(VUIURLRequestOperation *)self setTaskStartTime:mach_absolute_time(), v6, v7, v8, v9];
  [v5 resume];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __43__VUIURLRequestOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setData:v11];
    [v10 setResponse:v7];
    [v10 setError:v8];
    [v10 _handleResponse:v7 responseData:v11 error:v8];
    [v10 finishExecutionIfPossible];
  }
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VUIURLRequestOperation;
  [(VUIURLRequestOperation *)&v4 cancel];
  task = [(VUIURLRequestOperation *)self task];
  [task cancel];

  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

@end