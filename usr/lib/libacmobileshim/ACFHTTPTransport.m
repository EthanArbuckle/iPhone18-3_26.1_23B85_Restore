@interface ACFHTTPTransport
- (NSMutableArray)inProgressServerInvocations;
- (NSMutableArray)queuedServerInvocations;
- (id)requestString:(id)a3;
- (id)urlWithRequest:(id)a3 address:(id)a4;
- (void)addToQueuedServerInvocations:(id)a3;
- (void)cancelAllInvocations;
- (void)cancelRequest;
- (void)dealloc;
- (void)httpMethodInvocation:(id)a3 didFailWithError:(id)a4;
- (void)httpMethodInvocation:(id)a3 didFinishWithResult:(id)a4;
- (void)invocation:(id)a3 didFinishWithError:(id)a4 response:(id)a5;
- (void)performRequest;
- (void)performRequestWithCompletionBlock:(id)a3;
- (void)removeFromQueuedServerInvocations:(id)a3;
- (void)scheduleInvocation:(id)a3;
- (void)scheduleNextQueuedRequest;
- (void)scheduleTimerForNextAttempt;
- (void)unscheduleInvocation:(id)a3;
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

- (void)addToQueuedServerInvocations:(id)a3
{
  objc_sync_enter(self);
  [(NSMutableArray *)[(ACFHTTPTransport *)self queuedServerInvocations] addObject:a3];

  objc_sync_exit(self);
}

- (void)removeFromQueuedServerInvocations:(id)a3
{
  objc_sync_enter(self);
  [(NSMutableArray *)[(ACFHTTPTransport *)self queuedServerInvocations] removeObject:a3];

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

- (void)scheduleInvocation:(id)a3
{
  objc_sync_enter(self);
  if (([(NSMutableArray *)[(ACFHTTPTransport *)self inProgressServerInvocations] containsObject:a3]& 1) != 0)
  {

    objc_sync_exit(self);
  }

  else
  {
    [(NSMutableArray *)[(ACFHTTPTransport *)self inProgressServerInvocations] addObject:a3];
    objc_sync_exit(self);
    [(ACFHTTPTransport *)self setTryCounter:[(ACFHTTPTransport *)self tryCounter]+ 1];
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __39__ACFHTTPTransport_scheduleInvocation___block_invoke;
    v5[3] = &unk_29EE91778;
    v5[4] = a3;
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

- (void)unscheduleInvocation:(id)a3
{
  objc_sync_enter(self);
  if ([(NSMutableArray *)[(ACFHTTPTransport *)self inProgressServerInvocations] containsObject:a3])
  {
    [(NSMutableArray *)[(ACFHTTPTransport *)self inProgressServerInvocations] removeObject:a3];
    objc_sync_exit(self);
    v5 = [MEMORY[0x29EDB8E48] currentRunLoop];
    [a3 unscheduleFromRunLoop:v5 forMode:*MEMORY[0x29EDB8CC0]];

    [a3 setDelegate:0];
  }

  else
  {

    objc_sync_exit(self);
  }
}

- (void)invocation:(id)a3 didFinishWithError:(id)a4 response:(id)a5
{
  if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "-[ACFHTTPTransport invocation:didFinishWithError:response:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 165, 0, "Received response from url %@", [a3 url]);
  }

  [(ACFHTTPTransport *)self unscheduleInvocation:a3];
  if ([(ACFHTTPTransport *)self hasFinishedServerInvocations])
  {
    if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACFHTTPTransport invocation:didFinishWithError:response:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 201, 0, "Tried all servers. Return response or error");
    }

LABEL_21:
    [(ACFHTTPTransport *)self didEnd];
    v10 = [(ACFHTTPTransport *)self completionBlock];
    if (v10[2](v10, a5, a4))
    {

      [(ACFHTTPTransport *)self setCompletionBlock:0];
    }

    else
    {

      [(ACFHTTPTransport *)self performRequest];
    }

    return;
  }

  v9 = [(ACFHTTPTransport *)self retryCheckBlock];
  if ((v9[2](v9, a5, a4) & 1) == 0)
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
  v3 = [(NSMutableArray *)[(ACFHTTPTransport *)self inProgressServerInvocations] firstObject];
  if (v3)
  {
    v4 = v3;
    do
    {
      [v4 cancel];
      [(ACFHTTPTransport *)self unscheduleInvocation:v4];
      v4 = [(NSMutableArray *)[(ACFHTTPTransport *)self inProgressServerInvocations] firstObject];
    }

    while (v4);
  }

  [(ACFHTTPTransport *)self setInProgressServerInvocations:0];
  v5 = [(NSMutableArray *)[(ACFHTTPTransport *)self queuedServerInvocations] firstObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      [(ACFHTTPTransport *)self removeFromQueuedServerInvocations:v6];
      v6 = [(NSMutableArray *)[(ACFHTTPTransport *)self queuedServerInvocations] firstObject];
    }

    while (v6);
  }

  [(ACFHTTPTransport *)self setQueuedServerInvocations:0];
}

- (id)requestString:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = [MEMORY[0x29EDBA050] string];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v16 + 1) + 8 * v10);
        if (v11 != v10)
        {
          [v4 appendString:@"&"];
        }

        v13 = CFURLCreateStringByAddingPercentEscapes(v9, [a3 valueForKey:v12], 0, @":/?!$&'()*+,;=#[] ", 1u);
        if (!v13)
        {
          return 0;
        }

        [v4 appendFormat:@"%@=%@", v12, v13];
        ++v10;
      }

      while (v6 != v10);
      v6 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v7 = v15;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (id)urlWithRequest:(id)a3 address:(id)a4
{
  v6 = [(ACFHTTPTransport *)self requestString:?];
  v7 = [v6 length];
  v8 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@?%@", a4, v6];
  }

  v9 = [MEMORY[0x29EDB8E70] URLWithString:v8];
  v10 = v9;
  if (qword_2A1EB8FE8 && !v9 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACFHTTPTransport urlWithRequest:address:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 285, 0, "Failed to create url with address: %@, parameters: %@", a4, a3);
  }

  return v10;
}

- (void)performRequestWithCompletionBlock:(id)a3
{
  if ([(NSArray *)[(ACFHTTPTransport *)self serverHosts] count])
  {
    [(ACFHTTPTransport *)self setCompletionBlock:a3];

    [(ACFHTTPTransport *)self performRequest];
  }

  else if (a3)
  {
    v5 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"com.apple.ist.ds.appleconnect.errordomain.HTTPMethodInvocation" code:65537 userInfo:0];
    v6 = *(a3 + 2);

    v6(a3, 0, v5);
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
  v5 = [(ACFHTTPTransport *)self serverHosts];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v5);
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
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

  v3 = [(NSMutableArray *)[(ACFHTTPTransport *)self queuedServerInvocations] firstObject];
  if (v3)
  {
    v4 = v3;
    [(ACFHTTPTransport *)self scheduleInvocation:v3];
    [(ACFHTTPTransport *)self removeFromQueuedServerInvocations:v4];
  }

  [(ACFHTTPTransport *)self scheduleTimerForNextAttempt];
}

- (void)cancelRequest
{
  [(ACFHTTPTransport *)self setIsCanceled:1];
  [(ACFHTTPTransport *)self cancelAllInvocations];
  [(ACFHTTPTransport *)self didEnd];
  v3 = [(ACFHTTPTransport *)self completionBlock];

  [(ACFHTTPTransport *)self setCompletionBlock:0];
}

- (void)httpMethodInvocation:(id)a3 didFinishWithResult:(id)a4
{
  if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACFHTTPTransport httpMethodInvocation:didFinishWithResult:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 415, 0, "method invocation did finish with result = %@", a4);
  }

  [(ACFHTTPTransport *)self invocation:a3 didFinishWithError:0 response:a4];
}

- (void)httpMethodInvocation:(id)a3 didFailWithError:(id)a4
{
  if (qword_2A1EB8FE8 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACFHTTPTransport httpMethodInvocation:didFailWithError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPTransport.m", 422, 0, "HTTP transport did fail with error = %@", a4);
  }

  [(ACFHTTPTransport *)self invocation:a3 didFinishWithError:a4 response:0];
}

@end