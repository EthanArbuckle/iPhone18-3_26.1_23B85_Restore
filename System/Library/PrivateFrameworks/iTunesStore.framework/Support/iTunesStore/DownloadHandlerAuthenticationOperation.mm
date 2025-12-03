@interface DownloadHandlerAuthenticationOperation
- (DownloadHandlerAuthenticationOperation)initWithSessionProperties:(id)properties;
- (DownloadSessionProperties)sessionProperties;
- (NSURLCredential)URLCredential;
- (id)_openSession;
- (id)outputBlock;
- (int64_t)downloadSessionState;
- (void)_setState:(int64_t)state;
- (void)_setURLCredential:(id)credential;
- (void)cancel;
- (void)dealloc;
- (void)downloadHandlerManager:(id)manager sessionsDidChange:(id)change;
- (void)run;
- (void)setOutputBlock:(id)block;
@end

@implementation DownloadHandlerAuthenticationOperation

- (DownloadHandlerAuthenticationOperation)initWithSessionProperties:(id)properties
{
  v6.receiver = self;
  v6.super_class = DownloadHandlerAuthenticationOperation;
  v4 = [(DownloadHandlerAuthenticationOperation *)&v6 init];
  if (v4)
  {
    v4->_semaphore = dispatch_semaphore_create(0);
    v4->_sessionProperties = [properties copy];
  }

  return v4;
}

- (void)dealloc
{
  semaphore = self->_semaphore;
  if (semaphore)
  {
    dispatch_release(semaphore);
  }

  v4.receiver = self;
  v4.super_class = DownloadHandlerAuthenticationOperation;
  [(DownloadHandlerAuthenticationOperation *)&v4 dealloc];
}

- (int64_t)downloadSessionState
{
  [(DownloadHandlerAuthenticationOperation *)self lock];
  state = self->_state;
  [(DownloadHandlerAuthenticationOperation *)self unlock];
  return state;
}

- (id)outputBlock
{
  [(DownloadHandlerAuthenticationOperation *)self lock];
  v3 = [self->_outputBlock copy];
  [(DownloadHandlerAuthenticationOperation *)self unlock];

  return v3;
}

- (DownloadSessionProperties)sessionProperties
{
  v2 = [(DownloadSessionProperties *)self->_sessionProperties copy];

  return v2;
}

- (void)setOutputBlock:(id)block
{
  [(DownloadHandlerAuthenticationOperation *)self lock];
  outputBlock = self->_outputBlock;
  if (outputBlock != block)
  {

    self->_outputBlock = [block copy];
  }

  [(DownloadHandlerAuthenticationOperation *)self unlock];
}

- (NSURLCredential)URLCredential
{
  [(DownloadHandlerAuthenticationOperation *)self lock];
  v3 = self->_urlCredential;
  [(DownloadHandlerAuthenticationOperation *)self unlock];
  return v3;
}

- (void)cancel
{
  [(DownloadHandlerAuthenticationOperation *)self lock];
  sessionID = self->_sessionID;
  [(DownloadHandlerAuthenticationOperation *)self unlock];
  if (sessionID)
  {
    [+[DownloadHandlerManager handlerManager](DownloadHandlerManager "handlerManager")];
  }

  v4.receiver = self;
  v4.super_class = DownloadHandlerAuthenticationOperation;
  [(DownloadHandlerAuthenticationOperation *)&v4 cancel];
}

- (void)run
{
  v3 = +[DownloadHandlerManager handlerManager];
  [v3 addHandlerObserver:self];
  v4 = 0;
  sessionID = 0;
  while (sessionID)
  {
LABEL_5:
    dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
    downloadSessionState = [(DownloadHandlerAuthenticationOperation *)self downloadSessionState];
    if (downloadSessionState)
    {
      if (downloadSessionState != 7)
      {
        goto LABEL_21;
      }

      if (v4)
      {
        [v3 endBackgroundTaskForSessionWithID:sessionID identifier:v4];
      }

      [(DownloadHandlerAuthenticationOperation *)self lock];
      self->_sessionID = 0;
      [(DownloadHandlerAuthenticationOperation *)self unlock];
      [NSThread sleepForTimeInterval:10.0];
      v4 = 0;
      sessionID = 0;
    }
  }

  _openSession = [(DownloadHandlerAuthenticationOperation *)self _openSession];
  if (_openSession)
  {
    v7 = _openSession;
    [(DownloadHandlerAuthenticationOperation *)self lock];
    sessionID = [v7 sessionID];
    self->_sessionID = sessionID;
    [(DownloadHandlerAuthenticationOperation *)self unlock];
    v8 = [SSWeakReference weakReferenceWithObject:self];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001EFA34;
    v22[3] = &unk_100327378;
    v22[4] = v8;
    v4 = [v3 beginBackgroundTaskForSessionWithID:sessionID reason:10 expirationBlock:v22];
    v9 = v4;
    [v3 beginSessionWithID:sessionID];
    goto LABEL_5;
  }

  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = shouldLog | 2;
  }

  else
  {
    v13 = shouldLog;
  }

  if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v13 &= 2u;
  }

  if (v13)
  {
    v14 = objc_opt_class();
    sessionProperties = self->_sessionProperties;
    v23 = 138412546;
    v24 = v14;
    v25 = 2112;
    v26 = sessionProperties;
    LODWORD(v21) = 22;
    v20 = &v23;
    v16 = _os_log_send_and_compose_impl();
    if (v16)
    {
      v17 = v16;
      v18 = [NSString stringWithCString:v16 encoding:4, &v23, v21];
      free(v17);
      v20 = v18;
      SSFileLog();
    }
  }

  [(DownloadHandlerAuthenticationOperation *)self _setState:10, v20];
  sessionID = 0;
LABEL_21:
  outputBlock = [(DownloadHandlerAuthenticationOperation *)self outputBlock];
  if (outputBlock)
  {
    outputBlock[2](outputBlock, [(DownloadHandlerAuthenticationOperation *)self downloadSessionState], [(DownloadHandlerAuthenticationOperation *)self URLCredential]);
    [(DownloadHandlerAuthenticationOperation *)self setOutputBlock:0];
  }

  if (v4)
  {
    [v3 endBackgroundTaskForSessionWithID:sessionID identifier:v4];
  }

  [v3 removeHandlerObserver:self];
}

- (void)downloadHandlerManager:(id)manager sessionsDidChange:(id)change
{
  [(DownloadHandlerAuthenticationOperation *)self lock];
  sessionID = self->_sessionID;
  [(DownloadHandlerAuthenticationOperation *)self unlock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [change countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(change);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 sessionID] == sessionID)
        {
          sessionState = [v11 sessionState];
          -[DownloadHandlerAuthenticationOperation setError:](self, "setError:", [v11 error]);
          [(DownloadHandlerAuthenticationOperation *)self setSuccess:sessionState != 8];
          -[DownloadHandlerAuthenticationOperation _setURLCredential:](self, "_setURLCredential:", [v11 URLCredential]);
          [(DownloadHandlerAuthenticationOperation *)self _setState:sessionState];
          return;
        }
      }

      v8 = [change countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }
}

- (id)_openSession
{
  v3 = +[DownloadHandlerManager handlerManager];
  clientIdentifier = [(DownloadSessionProperties *)self->_sessionProperties clientIdentifier];
  result = [v3 openSessionWithProperties:self->_sessionProperties];
  if (result)
  {
    v6 = 1;
  }

  else
  {
    v6 = clientIdentifier == 0;
  }

  if (!v6)
  {
    v20 = FBSOpenApplicationOptionKeyActivateSuspended;
    v21 = &__kCFBooleanTrue;
    v7 = [+[SpringBoardUtility sharedInstance](SpringBoardUtility launchApplicationWithIdentifier:"launchApplicationWithIdentifier:options:error:" options:clientIdentifier error:[NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1], 0];
    result = 0;
    if (v7)
    {
      v8 = +[SSLogConfig sharedDaemonConfig];
      if (!v8)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v10 = shouldLog | 2;
      }

      else
      {
        v10 = shouldLog;
      }

      if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v16 = 138412546;
        v17 = objc_opt_class();
        v18 = 2112;
        v19 = clientIdentifier;
        LODWORD(v15) = 22;
        v14 = &v16;
        v11 = _os_log_send_and_compose_impl();
        if (v11)
        {
          v12 = v11;
          v13 = [NSString stringWithCString:v11 encoding:4, &v16, v15];
          free(v12);
          v14 = v13;
          SSFileLog();
        }
      }

      [NSThread sleepForTimeInterval:10.0, v14];
      return [v3 openSessionWithProperties:self->_sessionProperties];
    }
  }

  return result;
}

- (void)_setState:(int64_t)state
{
  [(DownloadHandlerAuthenticationOperation *)self lock];
  if (self->_state != state)
  {
    self->_state = state;
    dispatch_semaphore_signal(self->_semaphore);
  }

  [(DownloadHandlerAuthenticationOperation *)self unlock];
}

- (void)_setURLCredential:(id)credential
{
  [(DownloadHandlerAuthenticationOperation *)self lock];
  urlCredential = self->_urlCredential;
  if (urlCredential != credential)
  {

    self->_urlCredential = credential;
  }

  [(DownloadHandlerAuthenticationOperation *)self unlock];
}

@end