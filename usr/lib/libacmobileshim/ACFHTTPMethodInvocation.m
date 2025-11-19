@interface ACFHTTPMethodInvocation
+ (id)invocation;
+ (id)invocationWithMethod:(id)a3 url:(id)a4 timeout:(double)a5 delegate:(id)a6 invokeImmediately:(BOOL)a7;
+ (id)invokeHTTPMethodSynchronously:(id)a3 withURL:(id)a4 timeout:(double)a5 result:(id *)a6;
- (ACFHTTPMethodInvocation)init;
- (ACFHTTPMethodInvocation)initWithMethod:(id)a3 url:(id)a4 timeout:(double)a5 delegate:(id)a6 invokeImmediately:(BOOL)a7;
- (void)cancel;
- (void)connection:(id)a3 didFailWithError:(id)a4;
- (void)connection:(id)a3 didReceiveData:(id)a4;
- (void)connection:(id)a3 didReceiveResponse:(id)a4;
- (void)connectionDidFinishLoading:(id)a3;
- (void)dealloc;
- (void)invoke;
- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4;
- (void)unscheduleFromRunLoop:(id)a3 forMode:(id)a4;
@end

@implementation ACFHTTPMethodInvocation

+ (id)invocation
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)invocationWithMethod:(id)a3 url:(id)a4 timeout:(double)a5 delegate:(id)a6 invokeImmediately:(BOOL)a7
{
  v7 = [[a1 alloc] initWithMethod:a3 url:a4 timeout:a6 delegate:a7 invokeImmediately:a5];

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

- (ACFHTTPMethodInvocation)initWithMethod:(id)a3 url:(id)a4 timeout:(double)a5 delegate:(id)a6 invokeImmediately:(BOOL)a7
{
  v7 = a7;
  v15.receiver = self;
  v15.super_class = ACFHTTPMethodInvocation;
  v12 = [(ACFHTTPMethodInvocation *)&v15 init];
  if (v12)
  {
    v12->_method = a3;
    v12->_url = a4;
    v12->_timeout = a5;
    v12->_delegate = a6;
    v12->_internal = objc_alloc_init(ACFHTTPMethodInvocationInternal);
    if (v7)
    {
      v13 = [MEMORY[0x29EDB8E48] currentRunLoop];
      [(ACFHTTPMethodInvocation *)v12 scheduleInRunLoop:v13 forMode:*MEMORY[0x29EDB8CC0]];
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
      v7 = [(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] runLoops];
      v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = *v15;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            v12 = [(NSMutableDictionary *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] runLoops] objectForKey:v11];
            if (v12)
            {
              [v6 scheduleInRunLoop:v12 forMode:v11];
            }
          }

          v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4
{
  [(NSRecursiveLock *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] schedulingGuard] lock];
  [(NSMutableDictionary *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] runLoops] setObject:a3 forKey:a4];
  [(NSURLConnection *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] connection] scheduleInRunLoop:a3 forMode:a4];
  [(NSRecursiveLock *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] schedulingGuard] unlock];
}

- (void)unscheduleFromRunLoop:(id)a3 forMode:(id)a4
{
  [(NSRecursiveLock *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] schedulingGuard] lock];
  [(NSMutableDictionary *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] runLoops] removeObjectForKey:a4];
  [(NSURLConnection *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] connection] unscheduleFromRunLoop:a3 forMode:a4];
  [(NSRecursiveLock *)[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] schedulingGuard] unlock];
}

+ (id)invokeHTTPMethodSynchronously:(id)a3 withURL:(id)a4 timeout:(double)a5 result:(id *)a6
{
  v21 = objc_opt_new();
  v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"com.apple.ist.ds.appleconnect.HTTPMethodSynchronousInvocationRunLoopMode.%p", pthread_self()];
  v12 = objc_alloc_init(ACFHTTPMethodSynchronousInvocationHelper);
  v13 = [[a1 alloc] initWithMethod:a3 url:a4 timeout:v12 delegate:0 invokeImmediately:a5];
  if (!v13)
  {
    v19 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"com.apple.ist.ds.appleconnect.errordomain.HTTPMethodInvocation" code:65540 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithFormat:", @"Failed to create ACFHTTPMethodInvocation instance.", @"NSDebugDescription"}];
    v13 = 0;
    goto LABEL_22;
  }

  [v13 scheduleInRunLoop:objc_msgSend(MEMORY[0x29EDB8E48] forMode:{"currentRunLoop"), v11}];
  [v13 invoke];
  v14 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:a5 + 3.0];
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
  v19 = [(ACFHTTPMethodSynchronousInvocationHelper *)v12 error];
  if (a6)
  {
    *a6 = [(ACFHTTPMethodSynchronousInvocationHelper *)v12 result];
  }

LABEL_22:
  [v13 setDelegate:0];

  [v21 drain];
  if (a6)
  {
    *a6 = *a6;
  }

  return v19;
}

- (void)connection:(id)a3 didReceiveResponse:(id)a4
{
  if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACFHTTPMethodInvocation(NSURLConnectionDelegate) connection:didReceiveResponse:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 346, 0, "Connection did receive response: %@", a4);
  }

  [(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] setReceivedDataAccumulator:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a4 statusCode];
    if (v7 != 200)
    {
      v8 = MEMORY[0x29EDB9FA0];
      v9 = MEMORY[0x29EDB8DC0];
      v10 = [MEMORY[0x29EDB9FC8] localizedStringForStatusCode:v7];
      v11 = [v8 errorWithDomain:@"com.apple.ist.ds.appleconnect.errordomain.HTTPMethodInvocation" code:65540 userInfo:{objc_msgSend(v9, "dictionaryWithObject:forKey:", v10, *MEMORY[0x29EDB9ED8])}];

      [(ACFHTTPMethodInvocation *)self connection:a3 didFailWithError:v11];
    }
  }
}

- (void)connection:(id)a3 didReceiveData:(id)a4
{
  if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACFHTTPMethodInvocation(NSURLConnectionDelegate) connection:didReceiveData:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 368, 0, "Connection did receive data.");
  }

  if ([(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] receivedDataAccumulator])
  {
    v6 = [(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] receivedDataAccumulator];

    [(NSMutableData *)v6 appendData:a4];
  }

  else
  {
    v7 = [MEMORY[0x29EDB8DF8] dataWithData:a4];
    v8 = [(ACFHTTPMethodInvocation *)self internal];

    [(ACFHTTPMethodInvocationInternal *)v8 setReceivedDataAccumulator:v7];
  }
}

- (void)connectionDidFinishLoading:(id)a3
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
  v4 = [(ACFHTTPMethodInvocation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(ACFHTTPMethodInvocationDelegate *)v4 httpMethodInvocation:self didFinishWithResult:[(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] receivedDataAccumulator]];
  }

  v5 = [(ACFHTTPMethodInvocation *)self internal];

  [(ACFHTTPMethodInvocationInternal *)v5 setReceivedDataAccumulator:0];
}

- (void)connection:(id)a3 didFailWithError:(id)a4
{
  if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACFHTTPMethodInvocation(NSURLConnectionDelegate) connection:didFailWithError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 396, 0, "Connection did fail. Method invoсation is not waiting for response now");
  }

  [(ACFHTTPMethodInvocationInternal *)[(ACFHTTPMethodInvocation *)self internal] setIsFinished:1];
  [(ACFHTTPMethodInvocation *)self setIsWaitingForResponse:0];
  v6 = [a4 domain];
  if ([v6 isEqualToString:*MEMORY[0x29EDB9EF8]] && objc_msgSend(a4, "code") == 22)
  {
    a4 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"com.apple.ist.ds.appleconnect.errordomain.HTTPMethodInvocation" code:65539 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjectsAndKeys:", a4, *MEMORY[0x29EDB9F18], 0)}];
  }

  if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACFHTTPMethodInvocation(NSURLConnectionDelegate) connection:didFailWithError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 403, 0, "Connection did fail with error: %@", a4);
  }

  v7 = [(ACFHTTPMethodInvocation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = self;

    [(ACFHTTPMethodInvocationDelegate *)v7 httpMethodInvocation:v8 didFailWithError:a4];
  }
}

@end