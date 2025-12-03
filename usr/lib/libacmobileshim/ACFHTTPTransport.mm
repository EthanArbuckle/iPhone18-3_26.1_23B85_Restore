@interface ACFHTTPTransport
- (NSMutableArray)inProgressServerInvocations;
- (NSMutableArray)queuedServerInvocations;
- (id)requestString:(id)string;
- (id)urlWithRequest:(id)request address:(id)address;
- (void)addToQueuedServerInvocations:(id)invocations;
- (void)cancelAllInvocations;
- (void)cancelRequest;
- (void)dealloc;
- (void)httpMethodInvocation:(id)invocation didFailWithError:(id)error;
- (void)httpMethodInvocation:(id)invocation didFinishWithResult:(id)result;
- (void)invocation:(id)invocation didFinishWithError:(id)error response:(id)response;
- (void)performRequest;
- (void)performRequestWithCompletionBlock:(id)block;
- (void)removeFromQueuedServerInvocations:(id)invocations;
- (void)scheduleInvocation:(id)invocation;
- (void)scheduleNextQueuedRequest;
- (void)scheduleTimerForNextAttempt;
- (void)unscheduleInvocation:(id)invocation;
@end

@implementation ACFHTTPTransport

- (void)dealloc
{
  [(ACFHTTPTransport *)self cancelAllInvocations];
  [(ACFHTTPTransport *)self setCompletionBlock:0];
  [(ACFHTTPTransport *)self setRetryCheckBlock:0];
  [(ACFHTTPTransport *)self setRequestURLTemplate:0];
  [(ACFHTTPTransport *)self setHttpMethod:0];
  [(ACFHTTPTransport *)self setHttpHeader:0];
  [(ACFHTTPTransport *)self setHttpGETParameters:0];
  [(ACFHTTPTransport *)self setHttpPOSTBody:0];
  [(ACFHTTPTransport *)self setServerHosts:0];
  [(ACFHTTPTransport *)self setServerAttemptsDelays:0];
  v3.receiver = self;
  v3.super_class = ACFHTTPTransport;
  [(ACFHTTPTransport *)&v3 dealloc];
}

- (NSMutableArray)queuedServerInvocations
{
  result = self->_queuedServerInvocations;
  if (!result)
  {
    objc_sync_enter(self);
    if (!self->_queuedServerInvocations)
    {
      self->_queuedServerInvocations = objc_opt_new();
    }

    objc_sync_exit(self);
    return self->_queuedServerInvocations;
  }

  return result;
}

- (void)addToQueuedServerInvocations:(id)invocations
{
  objc_sync_enter(self);
  [(NSMutableArray *)[(ACFHTTPTransport *)self queuedServerInvocations] addObject:invocations];

  objc_sync_exit(self);
}

- (void)removeFromQueuedServerInvocations:(id)invocations
{
  objc_sync_enter(self);
  [(NSMutableArray *)[(ACFHTTPTransport *)self queuedServerInvocations] removeObject:invocations];

  objc_sync_exit(self);
}

- (NSMutableArray)inProgressServerInvocations
{
  result = self->_inProgressServerInvocations;
  if (!result)
  {
    objc_sync_enter(self);
    if (!self->_inProgressServerInvocations)
    {
      self->_inProgressServerInvocations = objc_opt_new();
    }

    objc_sync_exit(self);
    return self->_inProgressServerInvocations;
  }

  return result;
}

- (void)scheduleInvocation:(id)invocation
{
  objc_sync_enter(self);
  if (([(NSMutableArray *)[(ACFHTTPTransport *)self inProgressServerInvocations] containsObject:invocation]& 1) != 0)
  {

    objc_sync_exit(self);
  }

  else
  {
    [(NSMutableArray *)[(ACFHTTPTransport *)self inProgressServerInvocations] addObject:invocation];
    objc_sync_exit(self);
    [(ACFHTTPTransport *)self setTryCounter:[(ACFHTTPTransport *)self tryCounter]+ 1];
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __39__ACFHTTPTransport_scheduleInvocation___block_invoke;
    v5[3] = &unk_29EE91778;
    v5[4] = invocation;
    dispatch_async_on_main_thread(v5);
  }
}

uint64_t __39__ACFHTTPTransport_scheduleInvocation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x29EDB8E48] currentRunLoop];
  [v2 scheduleInRunLoop:v3 forMode:*MEMORY[0x29EDB8CC0]];
  v4 = *(a1 + 32);

  return [v4 invoke];
}

- (void)unscheduleInvocation:(id)invocation
{
  objc_sync_enter(self);
  if ([(NSMutableArray *)[(ACFHTTPTransport *)self inProgressServerInvocations] containsObject:invocation])
  {
    [(NSMutableArray *)[(ACFHTTPTransport *)self inProgressServerInvocations] removeObject:invocation];
    objc_sync_exit(self);
    currentRunLoop = [MEMORY[0x29EDB8E48] currentRunLoop];
    [invocation unscheduleFromRunLoop:currentRunLoop forMode:*MEMORY[0x29EDB8CC0]];

    [invocation setDelegate:0];
  }

  else
  {

    objc_sync_exit(self);
  }
}

- (void)invocation:(id)invocation didFinishWithError:(id)error response:(id)response
{
  if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "-[ACFHTTPTransport invocation:didFinishWithError:response:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 165, 0, "Received response from url %@", [invocation url]);
  }

  [(ACFHTTPTransport *)self unscheduleInvocation:invocation];
  if ([(ACFHTTPTransport *)self hasFinishedServerInvocations])
  {
    if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACFHTTPTransport invocation:didFinishWithError:response:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 201, 0, "Tried all servers. Return response or error");
    }

LABEL_21:
    [(ACFHTTPTransport *)self didEnd];
    completionBlock = [(ACFHTTPTransport *)self completionBlock];
    if (completionBlock[2](completionBlock, response, error))
    {

      [(ACFHTTPTransport *)self setCompletionBlock:0];
    }

    else
    {

      [(ACFHTTPTransport *)self performRequest];
    }

    return;
  }

  retryCheckBlock = [(ACFHTTPTransport *)self retryCheckBlock];
  if ((retryCheckBlock[2](retryCheckBlock, response, error) & 1) == 0)
  {
    if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACFHTTPTransport invocation:didFinishWithError:response:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 176, 0, "Response is valid. Cancel requests to other servers");
    }

    [(ACFHTTPTransport *)self cancelAllInvocations];
    goto LABEL_21;
  }

  if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACFHTTPTransport invocation:didFinishWithError:response:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 181, 0, "Connection error or bad server response. Wait for response from other servers");
  }

  if ([(NSMutableArray *)[(ACFHTTPTransport *)self inProgressServerInvocations] count]|| ![(NSMutableArray *)[(ACFHTTPTransport *)self queuedServerInvocations] count])
  {
    if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACFHTTPTransport invocation:didFinishWithError:response:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 195, 0, "Invocations already scheduled. Wait for response");
    }
  }

  else
  {
    if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACFHTTPTransport invocation:didFinishWithError:response:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 189, 0, "No running invocations. Schedule the first one from invocation queue");
    }

    [(ACFHTTPTransport *)self scheduleNextQueuedRequest];
  }
}

- (void)cancelAllInvocations
{
  [(NSTimer *)[(ACFHTTPTransport *)self failoverTimer] invalidate];
  [(ACFHTTPTransport *)self setFailoverTimer:0];
  firstObject = [(NSMutableArray *)[(ACFHTTPTransport *)self inProgressServerInvocations] firstObject];
  if (firstObject)
  {
    firstObject2 = firstObject;
    do
    {
      [firstObject2 cancel];
      [(ACFHTTPTransport *)self unscheduleInvocation:firstObject2];
      firstObject2 = [(NSMutableArray *)[(ACFHTTPTransport *)self inProgressServerInvocations] firstObject];
    }

    while (firstObject2);
  }

  [(ACFHTTPTransport *)self setInProgressServerInvocations:0];
  firstObject3 = [(NSMutableArray *)[(ACFHTTPTransport *)self queuedServerInvocations] firstObject];
  if (firstObject3)
  {
    firstObject4 = firstObject3;
    do
    {
      [(ACFHTTPTransport *)self removeFromQueuedServerInvocations:firstObject4];
      firstObject4 = [(NSMutableArray *)[(ACFHTTPTransport *)self queuedServerInvocations] firstObject];
    }

    while (firstObject4);
  }

  [(ACFHTTPTransport *)self setQueuedServerInvocations:0];
}

- (id)requestString:(id)string
{
  v21 = *MEMORY[0x29EDCA608];
  string = [MEMORY[0x29EDBA050] string];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [string countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    v9 = *MEMORY[0x29EDB8ED8];
    while (2)
    {
      v10 = 0;
      v11 = -v7;
      v15 = v7 + v6;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(string);
        }

        v12 = *(*(&v16 + 1) + 8 * v10);
        if (v11 != v10)
        {
          [string appendString:@"&"];
        }

        v13 = CFURLCreateStringByAddingPercentEscapes(v9, [string valueForKey:v12], 0, @":/?!$&'()*+,;=#[] ", 1u);
        if (!v13)
        {
          return 0;
        }

        [string appendFormat:@"%@=%@", v12, v13];
        ++v10;
      }

      while (v6 != v10);
      v6 = [string countByEnumeratingWithState:&v16 objects:v20 count:16];
      v7 = v15;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return string;
}

- (id)urlWithRequest:(id)request address:(id)address
{
  v6 = [(ACFHTTPTransport *)self requestString:?];
  v7 = [v6 length];
  addressCopy = address;
  if (v7)
  {
    addressCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@?%@", address, v6];
  }

  v9 = [MEMORY[0x29EDB8E70] URLWithString:addressCopy];
  v10 = v9;
  if (qword_2A1EB8FE8 && !v9 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACFHTTPTransport urlWithRequest:address:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 285, 0, "Failed to create url with address: %@, parameters: %@", address, request);
  }

  return v10;
}

- (void)performRequestWithCompletionBlock:(id)block
{
  if ([(NSArray *)[(ACFHTTPTransport *)self serverHosts] count])
  {
    [(ACFHTTPTransport *)self setCompletionBlock:block];

    [(ACFHTTPTransport *)self performRequest];
  }

  else if (block)
  {
    v5 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"com.apple.ist.ds.appleconnect.errordomain.HTTPMethodInvocation" code:65537 userInfo:0];
    v6 = *(block + 2);

    v6(block, 0, v5);
  }
}

- (void)performRequest
{
  v21 = *MEMORY[0x29EDCA608];
  [(ACFHTTPTransport *)self timeout];
  if (v3 >= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 60.0;
  }

  if (qword_2A1EB8FE8)
  {
    if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACFHTTPTransport performRequest]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 314, 0, "method = %@", [(ACFHTTPTransport *)self httpMethod]);
    }

    if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACFHTTPTransport performRequest]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 315, 0, "header = %@", [(ACFHTTPTransport *)self httpHeader]);
    }

    if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACFHTTPTransport performRequest]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 316, 0, "body = %@", [(ACFHTTPTransport *)self httpPOSTBody]);
    }
  }

  [(ACFHTTPTransport *)self setTryCounter:0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  serverHosts = [(ACFHTTPTransport *)self serverHosts];
  v6 = [(NSArray *)serverHosts countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
LABEL_13:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(serverHosts);
      }

      v11 = qword_2A1EB8FE8;
      v12 = -[ACFHTTPTransport urlWithRequest:address:](self, "urlWithRequest:address:", -[ACFHTTPTransport httpGETParameters](self, "httpGETParameters"), [MEMORY[0x29EDBA0F8] stringWithFormat:-[ACFHTTPTransport requestURLTemplate](self, "requestURLTemplate"), *(*(&v16 + 1) + 8 * v10)]);
      [-[NSArray objectAtIndex:](-[ACFHTTPTransport serverAttemptsDelays](self "serverAttemptsDelays")];
      v14 = v13;
      v4 = v4 - v13;
      if (v11 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
      {
        ACFLog(7, "[ACFHTTPTransport performRequest]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 332, 0, "Timeout attempt %d after %f", v8, v4);
      }

      if (v4 <= 0.0)
      {
        break;
      }

      v15 = [ACFHTTPMethodInvocation invocationWithMethod:[ACFHTTPMethod methodWithName:[(ACFHTTPTransport *)self httpMethod] headerFields:[(ACFHTTPTransport *)self httpHeader] body:[(ACFHTTPTransport *)self httpPOSTBody]] url:v12 timeout:self delegate:0 invokeImmediately:v4];
      if (v14 == 0.0)
      {
        [(ACFHTTPTransport *)self scheduleInvocation:v15];
      }

      else
      {
        [(ACFHTTPTransport *)self addToQueuedServerInvocations:v15];
      }

      ++v8;
      if (v7 == ++v10)
      {
        v7 = [(NSArray *)serverHosts countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_13;
        }

        break;
      }
    }
  }

  [(ACFHTTPTransport *)self scheduleTimerForNextAttempt];
  [(ACFHTTPTransport *)self didStart];
}

- (void)scheduleTimerForNextAttempt
{
  [(NSTimer *)[(ACFHTTPTransport *)self failoverTimer] invalidate];
  if (![(NSMutableArray *)[(ACFHTTPTransport *)self queuedServerInvocations] count])
  {
    v6 = 0;
    goto LABEL_8;
  }

  [-[NSArray objectAtIndex:](-[ACFHTTPTransport serverAttemptsDelays](self "serverAttemptsDelays")];
  v4 = v3;
  v5 = v3;
  if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACFHTTPTransport scheduleTimerForNextAttempt]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 369, 0, "Schedule next timer to fire after %f", v5);
  }

  if (v4 > 0.0)
  {
    v6 = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:self target:sel_scheduleNextQueuedRequest selector:0 userInfo:0 repeats:v5];
LABEL_8:

    [(ACFHTTPTransport *)self setFailoverTimer:v6];
  }
}

- (void)scheduleNextQueuedRequest
{
  [(NSTimer *)[(ACFHTTPTransport *)self failoverTimer] invalidate];
  if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACFHTTPTransport scheduleNextQueuedRequest]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 388, 0, "Schedule next invocation from queue");
  }

  firstObject = [(NSMutableArray *)[(ACFHTTPTransport *)self queuedServerInvocations] firstObject];
  if (firstObject)
  {
    v4 = firstObject;
    [(ACFHTTPTransport *)self scheduleInvocation:firstObject];
    [(ACFHTTPTransport *)self removeFromQueuedServerInvocations:v4];
  }

  [(ACFHTTPTransport *)self scheduleTimerForNextAttempt];
}

- (void)cancelRequest
{
  [(ACFHTTPTransport *)self setIsCanceled:1];
  [(ACFHTTPTransport *)self cancelAllInvocations];
  [(ACFHTTPTransport *)self didEnd];
  completionBlock = [(ACFHTTPTransport *)self completionBlock];

  [(ACFHTTPTransport *)self setCompletionBlock:0];
}

- (void)httpMethodInvocation:(id)invocation didFinishWithResult:(id)result
{
  if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACFHTTPTransport httpMethodInvocation:didFinishWithResult:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 415, 0, "method invocation did finish with result = %@", result);
  }

  [(ACFHTTPTransport *)self invocation:invocation didFinishWithError:0 response:result];
}

- (void)httpMethodInvocation:(id)invocation didFailWithError:(id)error
{
  if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACFHTTPTransport httpMethodInvocation:didFailWithError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 422, 0, "HTTP transport did fail with error = %@", error);
  }

  [(ACFHTTPTransport *)self invocation:invocation didFinishWithError:error response:0];
}

@end