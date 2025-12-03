@interface ACFHTTPMethodInvocation
+ (id)invocation;
+ (id)invocationWithMethod:(id)method url:(id)url timeout:(double)timeout delegate:(id)delegate invokeImmediately:(BOOL)immediately;
+ (id)invokeHTTPMethodSynchronously:(id)synchronously withURL:(id)l timeout:(double)timeout result:(id *)result;
- (ACFHTTPMethodInvocation)init;
- (ACFHTTPMethodInvocation)initWithMethod:(id)method url:(id)url timeout:(double)timeout delegate:(id)delegate invokeImmediately:(BOOL)immediately;
- (void)cancel;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connectionDidFinishLoading:(id)loading;
- (void)dealloc;
- (void)invoke;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
- (void)unscheduleFromRunLoop:(id)loop forMode:(id)mode;
@end

@implementation ACFHTTPMethodInvocation

+ (id)invocation
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)invocationWithMethod:(id)method url:(id)url timeout:(double)timeout delegate:(id)delegate invokeImmediately:(BOOL)immediately
{
  v7 = [[self alloc] initWithMethod:method url:url timeout:delegate delegate:immediately invokeImmediately:timeout];

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ACFHTTPMethodInvocation;
  [(ACFHTTPMethodInvocation *)&v3 dealloc];
}

- (ACFHTTPMethodInvocation)init
{
  v4.receiver = self;
  v4.super_class = ACFHTTPMethodInvocation;
  v2 = [(ACFHTTPMethodInvocation *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(ACFHTTPMethodInvocationInternal);
  }

  return v2;
}

- (ACFHTTPMethodInvocation)initWithMethod:(id)method url:(id)url timeout:(double)timeout delegate:(id)delegate invokeImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v15.receiver = self;
  v15.super_class = ACFHTTPMethodInvocation;
  v12 = [(ACFHTTPMethodInvocation *)&v15 init];
  if (v12)
  {
    v12->_method = method;
    v12->_url = url;
    v12->_timeout = timeout;
    v12->_delegate = delegate;
    v12->_internal = objc_alloc_init(ACFHTTPMethodInvocationInternal);
    if (immediatelyCopy)
    {
      currentRunLoop = [MEMORY[0x29EDB8E48] currentRunLoop];
      [(ACFHTTPMethodInvocation *)v12 scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x29EDB8CC0]];
      [(ACFHTTPMethodInvocation *)v12 invoke];
    }
  }

  return v12;
}

- (void)invoke
{
  v19 = *MEMORY[0x29EDCA608];
  [(NSRecursiveLock *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] invocationGuard] lock];
  if (![(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] connection])
  {
    v3 = objc_alloc(MEMORY[0x29EDBA058]);
    v4 = [(ACFHTTPMethodInvocation *)self url];
    [(ACFHTTPMethodInvocation *)self timeout];
    v5 = [v3 initWithURL:v4 cachePolicy:1 timeoutInterval:?];
    [v5 setHTTPMethod:{-[ACFHTTPMethod name](-[ACFHTTPMethodInvocation method](self, "method"), "name")}];
    [v5 setAllHTTPHeaderFields:{-[ACFHTTPMethod headerFields](-[ACFHTTPMethodInvocation method](self, "method"), "headerFields")}];
    [v5 setHTTPBody:{-[ACFHTTPMethod body](-[ACFHTTPMethodInvocation method](self, "method"), "body")}];
    v6 = [objc_alloc(MEMORY[0x29EDBA118]) initWithRequest:v5 delegate:self startImmediately:0];
    if (v6)
    {
      if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
      {
        ACFLog(6, "[ACFHTTPMethodInvocation invoke]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 157, 0, "Begins to load the data for the URL request %@", v5);
      }

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      runLoops = [(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] runLoops];
      v8 = [(NSMutableDictionary *)runLoops countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = *v15;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(runLoops);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            v12 = [(NSMutableDictionary *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] runLoops] objectForKey:v11];
            if (v12)
            {
              [v6 scheduleInRunLoop:v12 forMode:v11];
            }
          }

          v8 = [(NSMutableDictionary *)runLoops countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v8);
      }

      [(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] setConnection:v6];
    }

    else
    {
      v13 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"com.apple.ist.ds.appleconnect.errordomain.HTTPMethodInvocation" code:65540 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithFormat:", @"Failed to create NSURLConnection instance with request %@", v5), @"NSDebugDescription"}];
      if (v13)
      {
        goto LABEL_20;
      }
    }
  }

  [(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] setIsFinished:0];
  [(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] setReceivedDataAccumulator:0];
  [(ACFHTTPMethodInvocation *)self setIsWaitingForResponse:1];
  if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACFHTTPMethodInvocation invoke]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 177, 0, "Method invocation is waiting for respone");
  }

  [(NSURLConnection *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] connection] start];
  v13 = 0;
LABEL_20:
  [(NSRecursiveLock *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] invocationGuard] unlock];
  if (v13)
  {
    [(ACFHTTPMethodInvocation *)self connection:0 didFailWithError:v13];
  }
}

- (void)cancel
{
  if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACFHTTPMethodInvocation cancel]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 196, 0, "Method invoсation canceled. It is not waiting for response now");
  }

  [(ACFHTTPMethodInvocation *)self setIsWaitingForResponse:0];
  [(NSRecursiveLock *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] invocationGuard] lock];
  [(NSURLConnection *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] connection] cancel];
  [(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] setReceivedDataAccumulator:0];
  [(NSRecursiveLock *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] invocationGuard] unlock];
}

- (void)scheduleInRunLoop:(id)loop forMode:(id)mode
{
  [(NSRecursiveLock *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] schedulingGuard] lock];
  [(NSMutableDictionary *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] runLoops] setObject:loop forKey:mode];
  [(NSURLConnection *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] connection] scheduleInRunLoop:loop forMode:mode];
  [(NSRecursiveLock *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] schedulingGuard] unlock];
}

- (void)unscheduleFromRunLoop:(id)loop forMode:(id)mode
{
  [(NSRecursiveLock *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] schedulingGuard] lock];
  [(NSMutableDictionary *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] runLoops] removeObjectForKey:mode];
  [(NSURLConnection *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] connection] unscheduleFromRunLoop:loop forMode:mode];
  [(NSRecursiveLock *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] schedulingGuard] unlock];
}

+ (id)invokeHTTPMethodSynchronously:(id)synchronously withURL:(id)l timeout:(double)timeout result:(id *)result
{
  v21 = objc_opt_new();
  v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"com.apple.ist.ds.appleconnect.HTTPMethodSynchronousInvocationRunLoopMode.%p", pthread_self()];
  v12 = objc_alloc_init(ACFHTTPMethodSynchronousInvocationHelper);
  v13 = [[self alloc] initWithMethod:synchronously url:l timeout:v12 delegate:0 invokeImmediately:timeout];
  if (!v13)
  {
    error = [MEMORY[0x29EDB9FA0] errorWithDomain:@"com.apple.ist.ds.appleconnect.errordomain.HTTPMethodInvocation" code:65540 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithFormat:", @"Failed to create ACFHTTPMethodInvocation instance.", @"NSDebugDescription"}];
    v13 = 0;
    goto LABEL_22;
  }

  [v13 scheduleInRunLoop:objc_msgSend(MEMORY[0x29EDB8E48] forMode:{"currentRunLoop"), v11}];
  [v13 invoke];
  v14 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:timeout + 3.0];
  while (([objc_msgSend(v13 "internal")] & 1) == 0)
  {
    v15 = objc_opt_new();
    [v14 timeIntervalSinceNow];
    v17 = CFRunLoopRunInMode(v11, v16, 1u);
    switch(v17)
    {
      case kCFRunLoopRunFinished:
        if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
        {
          ACFLog(7, "+[ACFHTTPMethodInvocation(ACFHTTPMethodSynchronousInvocation) invokeHTTPMethodSynchronously:withURL:timeout:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 284, 0, "The running run loop was finished (the running run loop mode has no sources or timers to process).");
        }

        break;
      case kCFRunLoopRunStopped:
        if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
        {
          ACFLog(7, "+[ACFHTTPMethodInvocation(ACFHTTPMethodSynchronousInvocation) invokeHTTPMethodSynchronously:withURL:timeout:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 288, 0, "The running run loop was finished (CFRunLoopStop was called on the run loop).");
        }

        break;
      case kCFRunLoopRunTimedOut:
        if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
        {
          ACFLog(7, "+[ACFHTTPMethodInvocation(ACFHTTPMethodSynchronousInvocation) invokeHTTPMethodSynchronously:withURL:timeout:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 292, 0, "The running run loop was finished (the specified time interval for running the run loop has passed).");
        }

        break;
      default:
        v18 = 0;
        goto LABEL_18;
    }

    v18 = 1;
LABEL_18:
    [v15 drain];
    if (v18)
    {
      break;
    }
  }

  [v13 unscheduleFromRunLoop:objc_msgSend(MEMORY[0x29EDB8E48] forMode:{"currentRunLoop"), v11}];
  error = [(ACFHTTPMethodSynchronousInvocationHelper *)v12 error];
  if (result)
  {
    *result = [(ACFHTTPMethodSynchronousInvocationHelper *)v12 result];
  }

LABEL_22:
  [v13 setDelegate:0];

  [v21 drain];
  if (result)
  {
    *result = *result;
  }

  return error;
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACFHTTPMethodInvocation(NSURLConnectionDelegate) connection:didReceiveResponse:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 346, 0, "Connection did receive response: %@", response);
  }

  [(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] setReceivedDataAccumulator:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    statusCode = [response statusCode];
    if (statusCode != 200)
    {
      v8 = MEMORY[0x29EDB9FA0];
      v9 = MEMORY[0x29EDB8DC0];
      v10 = [MEMORY[0x29EDB9FC8] localizedStringForStatusCode:statusCode];
      v11 = [v8 errorWithDomain:@"com.apple.ist.ds.appleconnect.errordomain.HTTPMethodInvocation" code:65540 userInfo:{objc_msgSend(v9, "dictionaryWithObject:forKey:", v10, *MEMORY[0x29EDB9ED8])}];

      [(ACFHTTPMethodInvocation *)self connection:connection didFailWithError:v11];
    }
  }
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACFHTTPMethodInvocation(NSURLConnectionDelegate) connection:didReceiveData:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 368, 0, "Connection did receive data.");
  }

  if ([(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] receivedDataAccumulator])
  {
    receivedDataAccumulator = [(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] receivedDataAccumulator];

    [(NSMutableData *)receivedDataAccumulator appendData:data];
  }

  else
  {
    v7 = [MEMORY[0x29EDB8DF8] dataWithData:data];
    internal = [(ACFHTTPMethodInvocation *)self internal];

    [(ACFHTTPMethodInvocationInternal *)internal setReceivedDataAccumulator:v7];
  }
}

- (void)connectionDidFinishLoading:(id)loading
{
  if (qword_2A1EB8F40)
  {
    if ((ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACFHTTPMethodInvocation(NSURLConnectionDelegate) connectionDidFinishLoading:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 381, 0, "Connection did finish loading.");
    }

    if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACFHTTPMethodInvocation(NSURLConnectionDelegate) connectionDidFinishLoading:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 382, 0, "Connection did finish loading. Method invoсation is not waiting for response now");
    }
  }

  [(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] setIsFinished:1];
  [(ACFHTTPMethodInvocation *)self setIsWaitingForResponse:0];
  delegate = [(ACFHTTPMethodInvocation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(ACFHTTPMethodInvocationDelegate *)delegate httpMethodInvocation:self didFinishWithResult:[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] receivedDataAccumulator]];
  }

  internal = [(ACFHTTPMethodInvocation *)self internal];

  [(ACFHTTPMethodInvocationInternal *)internal setReceivedDataAccumulator:0];
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACFHTTPMethodInvocation(NSURLConnectionDelegate) connection:didFailWithError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 396, 0, "Connection did fail. Method invoсation is not waiting for response now");
  }

  [(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] setIsFinished:1];
  [(ACFHTTPMethodInvocation *)self setIsWaitingForResponse:0];
  domain = [error domain];
  if ([domain isEqualToString:*MEMORY[0x29EDB9EF8]] && objc_msgSend(error, "code") == 22)
  {
    error = [MEMORY[0x29EDB9FA0] errorWithDomain:@"com.apple.ist.ds.appleconnect.errordomain.HTTPMethodInvocation" code:65539 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjectsAndKeys:", error, *MEMORY[0x29EDB9F18], 0)}];
  }

  if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACFHTTPMethodInvocation(NSURLConnectionDelegate) connection:didFailWithError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 403, 0, "Connection did fail with error: %@", error);
  }

  delegate = [(ACFHTTPMethodInvocation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    selfCopy = self;

    [(ACFHTTPMethodInvocationDelegate *)delegate httpMethodInvocation:selfCopy didFailWithError:error];
  }
}

@end