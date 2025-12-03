@interface CSStudiesServerSubmitter
- (CSStudiesServerSubmitter)initWithEndpoint:(id)endpoint authorization:(id)authorization subjectToken:(id)token;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)createSession;
- (void)dealloc;
- (void)submitFileWithURL:(id)l andCompletionHandler:(id)handler;
- (void)updateRegistrationWithSubjectToken:(id)token;
@end

@implementation CSStudiesServerSubmitter

- (void)createSession
{
  v8 = +[NSUUID UUID];
  uUIDString = [v8 UUIDString];
  v4 = [NSString stringWithFormat:@"com.apple.anomalydetectiond.CSStudiesServerSubmitter:%@", uUIDString];
  v5 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v4];

  [v5 setDiscretionary:1];
  [v5 setAllowsCellularAccess:0];
  [v5 setWaitsForConnectivity:1];
  [v5 setTimeoutIntervalForResource:604800.0];
  v6 = [NSURLSession sessionWithConfiguration:v5 delegate:self delegateQueue:0];
  session = self->_session;
  self->_session = v6;
}

- (CSStudiesServerSubmitter)initWithEndpoint:(id)endpoint authorization:(id)authorization subjectToken:(id)token
{
  endpointCopy = endpoint;
  authorizationCopy = authorization;
  tokenCopy = token;
  v17.receiver = self;
  v17.super_class = CSStudiesServerSubmitter;
  v12 = [(CSStudiesServerSubmitter *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_endpoint, endpoint);
    objc_storeStrong(&v13->_authorization, authorization);
    objc_storeStrong(&v13->_subjectToken, token);
    [(CSStudiesServerSubmitter *)v13 createSession];
    v14 = objc_alloc_init(NSMutableDictionary);
    completionHandlers = v13->_completionHandlers;
    v13->_completionHandlers = v14;
  }

  return v13;
}

- (void)updateRegistrationWithSubjectToken:(id)token
{
  tokenCopy = token;
  if (qword_1004568F8 != -1)
  {
    sub_100357D78();
  }

  v5 = qword_100456900;
  if (os_log_type_enabled(qword_100456900, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Updating submitter registration", v6, 2u);
  }

  [(CSStudiesServerSubmitter *)self setSubjectToken:tokenCopy];
}

- (void)dealloc
{
  session = [(CSStudiesServerSubmitter *)self session];
  [session finishTasksAndInvalidate];

  v4.receiver = self;
  v4.super_class = CSStudiesServerSubmitter;
  [(CSStudiesServerSubmitter *)&v4 dealloc];
}

- (void)submitFileWithURL:(id)l andCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (qword_1004568F8 != -1)
  {
    sub_100357D78();
  }

  v8 = qword_100456900;
  if (os_log_type_enabled(qword_100456900, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "submitFileWithURL", buf, 2u);
  }

  v9 = dispatch_semaphore_create(0);
  *buf = 0;
  v30 = buf;
  v31 = 0x2020000000;
  v32 = 0;
  session = self->_session;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000168F8;
  v25[3] = &unk_100413168;
  v11 = lCopy;
  v26 = v11;
  v28 = buf;
  v12 = v9;
  v27 = v12;
  [(NSURLSession *)session getTasksWithCompletionHandler:v25];
  v13 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v14 = [NSError errorWithDomain:NSCocoaErrorDomain code:4610 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v14);
  }

  else if (v30[24] == 1)
  {
    v14 = [NSError errorWithDomain:NSCocoaErrorDomain code:516 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v14);
  }

  else
  {
    endpoint = [(CSStudiesServerSubmitter *)self endpoint];
    v14 = [NSMutableURLRequest requestWithURL:endpoint];

    authorization = [(CSStudiesServerSubmitter *)self authorization];
    [v14 setValue:authorization forHTTPHeaderField:@"Authorization"];

    subjectToken = [(CSStudiesServerSubmitter *)self subjectToken];
    [v14 setValue:subjectToken forHTTPHeaderField:@"X-HDS-Subject-Authorization"];

    [v14 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [v14 setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
    [v14 setAllowsCellularAccess:0];
    [v14 setHTTPMethod:@"POST"];
    session = [(CSStudiesServerSubmitter *)self session];
    v19 = [session uploadTaskWithRequest:v14 fromFile:v11];

    absoluteString = [v11 absoluteString];
    [v19 setTaskDescription:absoluteString];

    v21 = +[NSDate now];
    [v19 setEarliestBeginDate:v21];

    completionHandlers = self->_completionHandlers;
    v23 = objc_retainBlock(handlerCopy);
    taskDescription = [v19 taskDescription];
    [(NSMutableDictionary *)completionHandlers setObject:v23 forKey:taskDescription];

    [v19 resume];
  }

  _Block_object_dispose(buf, 8);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  taskDescription = [taskCopy taskDescription];
  if (taskDescription)
  {
    v12 = [(NSMutableDictionary *)self->_completionHandlers objectForKey:taskDescription];

    if (v12)
    {
      v13 = [(NSMutableDictionary *)self->_completionHandlers objectForKey:taskDescription];
      v14 = v13;
      if (errorCopy)
      {
        (*(v13 + 16))(v13, 0, errorCopy);
      }

      else
      {
        response = [taskCopy response];
        (v14)[2](v14, response, 0);

        [(NSMutableDictionary *)self->_completionHandlers removeObjectForKey:taskDescription];
      }

      goto LABEL_16;
    }

    if (qword_1004568F8 != -1)
    {
      sub_100357D78();
    }

    v22 = qword_100456900;
    if (os_log_type_enabled(qword_100456900, OS_LOG_TYPE_ERROR))
    {
      v16 = v22;
      configuration = [sessionCopy configuration];
      identifier = [configuration identifier];
      v24 = 138543618;
      v25 = identifier;
      v26 = 2114;
      v27 = taskDescription;
      v19 = "Got called for %{public}@ with non existent file: %{public}@";
      v20 = v16;
      v21 = 22;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1004568F8 != -1)
    {
      sub_100357D78();
    }

    v15 = qword_100456900;
    if (os_log_type_enabled(qword_100456900, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      configuration = [sessionCopy configuration];
      identifier = [configuration identifier];
      v24 = 138543362;
      v25 = identifier;
      v19 = "Got called with task with no file for: %{public}@";
      v20 = v16;
      v21 = 12;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v19, &v24, v21);
    }
  }

LABEL_16:
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  sessionCopy = session;
  taskCopy = task;
  if (qword_1004568F8 != -1)
  {
    sub_100357D78();
  }

  v13 = qword_100456900;
  if (os_log_type_enabled(qword_100456900, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    configuration = [sessionCopy configuration];
    identifier = [configuration identifier];
    v17 = 138413314;
    v18 = taskCopy;
    v19 = 2048;
    dataCopy = data;
    v21 = 2048;
    sentCopy = sent;
    v23 = 2048;
    sendCopy = send;
    v25 = 2112;
    v26 = identifier;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Got called back with task: %@ and bytesSent: %lld and totalBytesSent: %lld and totalBytesExpectedToSend: %lld and id: %@", &v17, 0x34u);
  }
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  if (qword_1004568F8 != -1)
  {
    sub_100357D78();
  }

  v8 = qword_100456900;
  if (os_log_type_enabled(qword_100456900, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Session got invalidated with error: %{public}@", &v9, 0xCu);
  }

  [(CSStudiesServerSubmitter *)self createSession];
}

@end