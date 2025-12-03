@interface DirectUploadSessionController
- (DirectUploadSessionController)initWithDispatchQueue:(id)queue;
- (DirectUploadSessionDelegate)delegate;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)_addUploadTaskWithRequest:(id)request configuration:(id)configuration URLRequest:(id)lRequest;
- (void)_asyncModifyTasksForDatabaseIDs:(id)ds usingBlock:(id)block;
- (void)_cleanupForDatabaseID:(id)d;
- (void)_failUploadWithDatabaseID:(id)d error:(id)error;
- (void)_flushProgress;
- (void)addUploadTasksWithRequests:(id)requests;
- (void)cancelUploadTasksWithDatabaseIdentifiers:(id)identifiers;
- (void)dealloc;
- (void)invalidURLSessions;
- (void)pauseUploadTasksWithDatabaseIdentifiers:(id)identifiers;
@end

@implementation DirectUploadSessionController

- (DirectUploadSessionController)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = DirectUploadSessionController;
  v6 = [(DirectUploadSessionController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
    v8 = objc_alloc_init(ISOperationQueue);
    preparationQueue = v7->_preparationQueue;
    v7->_preparationQueue = v8;

    [(ISOperationQueue *)v7->_preparationQueue setMaxConcurrentOperationCount:1];
    [(ISOperationQueue *)v7->_preparationQueue setName:@"com.apple.DirectUploadSessionController"];
    v10 = +[Daemon daemon];
    [v10 addKeepAliveOperationQueue:v7->_preparationQueue];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[Daemon daemon];
  [v3 removeKeepAliveOperationQueue:self->_preparationQueue];

  progressFlushTimer = self->_progressFlushTimer;
  if (progressFlushTimer)
  {
    dispatch_source_cancel(progressFlushTimer);
  }

  v5.receiver = self;
  v5.super_class = DirectUploadSessionController;
  [(DirectUploadSessionController *)&v5 dealloc];
}

- (void)addUploadTasksWithRequests:(id)requests
{
  requestsCopy = requests;
  if (!self->_uploadDatabaseIDs)
  {
    v5 = objc_alloc_init(NSMutableArray);
    uploadDatabaseIDs = self->_uploadDatabaseIDs;
    self->_uploadDatabaseIDs = v5;
  }

  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v11 = objc_opt_class();
    v12 = v11;
    *location = 138412546;
    *&location[4] = v11;
    v33 = 2048;
    v34 = [requestsCopy count];
    LODWORD(v22) = 22;
    v13 = _os_log_send_and_compose_impl();

    if (v13)
    {
      v14 = [NSString stringWithCString:v13 encoding:4, location, v22];
      free(v13);
      SSFileLog();
    }
  }

  else
  {
  }

  objc_initWeak(location, self);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = requestsCopy;
  v15 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = *v28;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        v19 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v18, "databaseIdentifier")}];
        v20 = [[PrepareDirectUploadOperation alloc] initWithRequest:v18];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1000D4640;
        v24[3] = &unk_1003282B0;
        objc_copyWeak(&v26, location);
        v24[4] = v18;
        v24[5] = self;
        v21 = v19;
        v25 = v21;
        [(PrepareDirectUploadOperation *)v20 setOutputBlock:v24];
        [(NSMutableArray *)self->_uploadDatabaseIDs addObject:v21];
        [(ISOperationQueue *)self->_preparationQueue addOperation:v20];

        objc_destroyWeak(&v26);
      }

      v15 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  objc_destroyWeak(location);
}

- (void)cancelUploadTasksWithDatabaseIdentifiers:(id)identifiers
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D49C4;
  v3[3] = &unk_1003282D8;
  v3[4] = self;
  [(DirectUploadSessionController *)self _asyncModifyTasksForDatabaseIDs:identifiers usingBlock:v3];
}

- (void)invalidURLSessions
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_sessions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) invalidateAndCancel];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  sessions = self->_sessions;
  self->_sessions = 0;
}

- (void)pauseUploadTasksWithDatabaseIdentifiers:(id)identifiers
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D4D38;
  v3[3] = &unk_1003282D8;
  v3[4] = self;
  [(DirectUploadSessionController *)self _asyncModifyTasksForDatabaseIDs:identifiers usingBlock:v3];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  object = task;
  dataCopy = data;
  v7 = objc_getAssociatedObject(object, "com.apple.itunesstored.upload.id");
  v8 = v7;
  if (dataCopy && v7)
  {
    v9 = [DirectUploadResponse alloc];
    response = [object response];
    v11 = [(DirectUploadResponse *)v9 initWithURLResponse:response data:dataCopy];

    if (v11)
    {
      -[DirectUploadResponse setCountOfBytesSent:](v11, "setCountOfBytesSent:", [object countOfBytesSent]);
      objc_setAssociatedObject(object, "com.apple.itunesstored.upload.response", v11, 1);
    }
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  itunes_statusCode = [response itunes_statusCode];
  if (itunes_statusCode > 399)
  {
    v11 = itunes_statusCode;
    v12 = SSError();
    v13 = [NSNumber numberWithInteger:v11];
    v14 = SSErrorBySettingUserInfoValue();

    objc_setAssociatedObject(taskCopy, "com.apple.itunesstored.upload.error", v14, 1);
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = objc_opt_class();
      v20 = v19;
      objc_getAssociatedObject(taskCopy, "com.apple.itunesstored.upload.id");
      v23 = 138412802;
      v24 = v19;
      v26 = v25 = 2112;
      v27 = 2112;
      v28 = v14;
      LODWORD(v22) = 32;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_14:

        handlerCopy[2](handlerCopy, 0);
        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v21 encoding:4, &v23, v22];
      free(v21);
      SSFileLog();
    }

    goto LABEL_14;
  }

  handlerCopy[2](handlerCopy, 1);
LABEL_15:
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = objc_getAssociatedObject(taskCopy, "com.apple.itunesstored.upload.id");
  if (v11)
  {
    v12 = objc_getAssociatedObject(taskCopy, "com.apple.itunesstored.upload.response");
    dispatchQueue = self->_dispatchQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000D5418;
    v15[3] = &unk_100328300;
    v16 = errorCopy;
    v17 = v12;
    v18 = taskCopy;
    selfCopy = self;
    v20 = v11;
    v21 = sessionCopy;
    v14 = v12;
    dispatch_async(dispatchQueue, v15);
  }
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  v10 = objc_getAssociatedObject(task, "com.apple.itunesstored.upload.id");
  v11 = v10;
  if (v10)
  {
    dispatchQueue = self->_dispatchQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000D5A14;
    v13[3] = &unk_100328350;
    v14 = v10;
    selfCopy = self;
    sendCopy = send;
    sentCopy = sent;
    dispatch_async(dispatchQueue, v13);
  }
}

- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  v11 = objc_getAssociatedObject(task, "com.apple.itunesstored.upload.id");
  v12 = v11;
  if (v11)
  {
    dispatchQueue = self->_dispatchQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000D5E5C;
    v14[3] = &unk_100327238;
    v14[4] = self;
    v15 = v11;
    dispatch_async(dispatchQueue, v14);
  }

  handlerCopy[2](handlerCopy, connectionCopy);
}

- (void)_addUploadTaskWithRequest:(id)request configuration:(id)configuration URLRequest:(id)lRequest
{
  requestCopy = request;
  configurationCopy = configuration;
  lRequestCopy = lRequest;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = self->_sessions;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v39 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v38 + 1) + 8 * v14);
      configuration = [v15 configuration];
      v17 = [configuration isEqual:configurationCopy];

      if (v17)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v38 objects:v50 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v18 = v15;

    if (v18)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  if (!self->_sessions)
  {
    v19 = objc_alloc_init(NSMutableArray);
    sessions = self->_sessions;
    self->_sessions = v19;
  }

  v18 = [NSURLSession sessionWithConfiguration:configurationCopy delegate:self delegateQueue:0];
  [(NSMutableArray *)self->_sessions addObject:v18];
LABEL_14:
  localAssetURL = [requestCopy localAssetURL];
  v22 = [v18 uploadTaskWithRequest:lRequestCopy fromFile:localAssetURL];

  v36 = requestCopy;
  v23 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(requestCopy, "databaseIdentifier")}];
  objc_setAssociatedObject(v22, "com.apple.itunesstored.upload.id", v23, 1);
  v24 = +[SSLogConfig sharedDaemonConfig];
  if (!v24)
  {
    v24 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v24 shouldLog];
  if ([v24 shouldLogToDisk])
  {
    v26 = shouldLog | 2;
  }

  else
  {
    v26 = shouldLog;
  }

  oSLogObject = [v24 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v28 = v26;
  }

  else
  {
    v28 = v26 & 2;
  }

  if (!v28)
  {
    v33 = v36;
    goto LABEL_26;
  }

  v29 = objc_opt_class();
  v35 = v29;
  taskIdentifier = [v22 taskIdentifier];
  identifier = [configurationCopy identifier];
  v42 = 138413058;
  v43 = v29;
  v44 = 2048;
  v45 = taskIdentifier;
  v46 = 2112;
  v47 = v23;
  v48 = 2112;
  v49 = identifier;
  LODWORD(v34) = 42;
  v32 = _os_log_send_and_compose_impl();

  v33 = v36;
  if (v32)
  {
    oSLogObject = [NSString stringWithCString:v32 encoding:4, &v42, v34];
    free(v32);
    SSFileLog();
LABEL_26:
  }

  [v22 resume];
}

- (void)_asyncModifyTasksForDatabaseIDs:(id)ds usingBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_sessions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000D6404;
        v14[3] = &unk_100328378;
        v15 = dsCopy;
        v16 = blockCopy;
        [v13 getTasksWithCompletionHandler:v14];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)_cleanupForDatabaseID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  v12 = dCopy;
  if (self->_progress)
  {
    longLongValue = [dCopy longLongValue];
    v7 = [(NSMutableArray *)self->_progress count];
    if (v7 >= 1)
    {
      v8 = v7 + 1;
      do
      {
        v9 = [(NSMutableArray *)self->_progress objectAtIndex:v8 - 2];
        if ([v9 uploadDatabaseIdentifier] == longLongValue)
        {
          [(NSMutableArray *)self->_progress removeObjectAtIndex:v8 - 2];
        }

        --v8;
      }

      while (v8 > 1);
    }

    v10 = [(NSMutableArray *)self->_progress count];
    v5 = v12;
    if (!v10)
    {
      progress = self->_progress;
      self->_progress = 0;

      v5 = v12;
    }
  }

  [(NSMutableArray *)self->_uploadDatabaseIDs removeObject:v5];
}

- (void)_failUploadWithDatabaseID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  [(DirectUploadSessionController *)self _cleanupForDatabaseID:dCopy];
  delegate = [(DirectUploadSessionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate uploadSessionController:self uploadDidFailWithDatabaseID:objc_msgSend(dCopy error:{"longLongValue"), errorCopy}];
  }
}

- (void)_flushProgress
{
  progressFlushTimer = self->_progressFlushTimer;
  if (progressFlushTimer)
  {
    dispatch_source_cancel(progressFlushTimer);
    v4 = self->_progressFlushTimer;
    self->_progressFlushTimer = 0;
  }

  if ([(NSMutableArray *)self->_progress count])
  {
    delegate = [(DirectUploadSessionController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {

      delegate = 0;
    }

    v30 = objc_alloc_init(NSMutableArray);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    selfCopy = self;
    obj = self->_progress;
    v32 = [(NSMutableArray *)obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v32)
    {
      v6 = *v34;
      v7 = &CFDictionaryGetValue_ptr;
      v27 = *v34;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v34 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v33 + 1) + 8 * i);
          countOfBytesExpectedToSend = [v9 countOfBytesExpectedToSend];
          if (countOfBytesExpectedToSend >= 1)
          {
            v11 = countOfBytesExpectedToSend;
            sharedDaemonConfig = [v7[412] sharedDaemonConfig];
            if (!sharedDaemonConfig)
            {
              sharedDaemonConfig = [v7[412] sharedConfig];
            }

            shouldLog = [sharedDaemonConfig shouldLog];
            if ([sharedDaemonConfig shouldLogToDisk])
            {
              v14 = shouldLog | 2;
            }

            else
            {
              v14 = shouldLog;
            }

            oSLogObject = [sharedDaemonConfig OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
            {
              v16 = v14;
            }

            else
            {
              v16 = v14 & 2;
            }

            if (v16)
            {
              v17 = objc_opt_class();
              v31 = v17;
              v18 = v7;
              v19 = delegate;
              uploadDatabaseIdentifier = [v9 uploadDatabaseIdentifier];
              countOfBytesSent = [v9 countOfBytesSent];
              v37 = 138412802;
              v38 = v17;
              v39 = 2048;
              v40 = uploadDatabaseIdentifier;
              delegate = v19;
              v7 = v18;
              v41 = 2048;
              v42 = (countOfBytesSent / v11);
              LODWORD(v26) = 32;
              v25 = &v37;
              v22 = _os_log_send_and_compose_impl();

              v6 = v27;
              if (v22)
              {
                oSLogObject = [NSString stringWithCString:v22 encoding:4, &v37, v26];
                free(v22);
                v25 = oSLogObject;
                SSFileLog();
                goto LABEL_23;
              }
            }

            else
            {
LABEL_23:
            }
          }

          if (delegate)
          {
            v23 = [v9 copy];
            [v30 addObject:v23];
          }
        }

        v32 = [(NSMutableArray *)obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v32);
    }

    [delegate uploadSessionController:selfCopy uploadProgressDidChange:v30];
    progress = selfCopy->_progress;
    selfCopy->_progress = 0;
  }
}

- (DirectUploadSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end