@interface CSStudiesServerSubmitter
- (CSStudiesServerSubmitter)initWithEndpoint:(id)a3 authorization:(id)a4 subjectToken:(id)a5;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)createSession;
- (void)dealloc;
- (void)submitFileWithURL:(id)a3 andCompletionHandler:(id)a4;
- (void)updateRegistrationWithSubjectToken:(id)a3;
@end

@implementation CSStudiesServerSubmitter

- (void)createSession
{
  v8 = +[NSUUID UUID];
  v3 = [v8 UUIDString];
  v4 = [NSString stringWithFormat:@"com.apple.anomalydetectiond.CSStudiesServerSubmitter:%@", v3];
  v5 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v4];

  [v5 setDiscretionary:1];
  [v5 setAllowsCellularAccess:0];
  [v5 setWaitsForConnectivity:1];
  [v5 setTimeoutIntervalForResource:604800.0];
  v6 = [NSURLSession sessionWithConfiguration:v5 delegate:self delegateQueue:0];
  session = self->_session;
  self->_session = v6;
}

- (CSStudiesServerSubmitter)initWithEndpoint:(id)a3 authorization:(id)a4 subjectToken:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CSStudiesServerSubmitter;
  v12 = [(CSStudiesServerSubmitter *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_endpoint, a3);
    objc_storeStrong(&v13->_authorization, a4);
    objc_storeStrong(&v13->_subjectToken, a5);
    [(CSStudiesServerSubmitter *)v13 createSession];
    v14 = objc_alloc_init(NSMutableDictionary);
    completionHandlers = v13->_completionHandlers;
    v13->_completionHandlers = v14;
  }

  return v13;
}

- (void)updateRegistrationWithSubjectToken:(id)a3
{
  v4 = a3;
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

  [(CSStudiesServerSubmitter *)self setSubjectToken:v4];
}

- (void)dealloc
{
  v3 = [(CSStudiesServerSubmitter *)self session];
  [v3 finishTasksAndInvalidate];

  v4.receiver = self;
  v4.super_class = CSStudiesServerSubmitter;
  [(CSStudiesServerSubmitter *)&v4 dealloc];
}

- (void)submitFileWithURL:(id)a3 andCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v11 = v6;
  v26 = v11;
  v28 = buf;
  v12 = v9;
  v27 = v12;
  [(NSURLSession *)session getTasksWithCompletionHandler:v25];
  v13 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v14 = [NSError errorWithDomain:NSCocoaErrorDomain code:4610 userInfo:0];
    v7[2](v7, 0, v14);
  }

  else if (v30[24] == 1)
  {
    v14 = [NSError errorWithDomain:NSCocoaErrorDomain code:516 userInfo:0];
    v7[2](v7, 0, v14);
  }

  else
  {
    v15 = [(CSStudiesServerSubmitter *)self endpoint];
    v14 = [NSMutableURLRequest requestWithURL:v15];

    v16 = [(CSStudiesServerSubmitter *)self authorization];
    [v14 setValue:v16 forHTTPHeaderField:@"Authorization"];

    v17 = [(CSStudiesServerSubmitter *)self subjectToken];
    [v14 setValue:v17 forHTTPHeaderField:@"X-HDS-Subject-Authorization"];

    [v14 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [v14 setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
    [v14 setAllowsCellularAccess:0];
    [v14 setHTTPMethod:@"POST"];
    v18 = [(CSStudiesServerSubmitter *)self session];
    v19 = [v18 uploadTaskWithRequest:v14 fromFile:v11];

    v20 = [v11 absoluteString];
    [v19 setTaskDescription:v20];

    v21 = +[NSDate now];
    [v19 setEarliestBeginDate:v21];

    completionHandlers = self->_completionHandlers;
    v23 = objc_retainBlock(v7);
    v24 = [v19 taskDescription];
    [(NSMutableDictionary *)completionHandlers setObject:v23 forKey:v24];

    [v19 resume];
  }

  _Block_object_dispose(buf, 8);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 taskDescription];
  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_completionHandlers objectForKey:v11];

    if (v12)
    {
      v13 = [(NSMutableDictionary *)self->_completionHandlers objectForKey:v11];
      v14 = v13;
      if (v10)
      {
        (*(v13 + 16))(v13, 0, v10);
      }

      else
      {
        v23 = [v9 response];
        (v14)[2](v14, v23, 0);

        [(NSMutableDictionary *)self->_completionHandlers removeObjectForKey:v11];
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
      v17 = [v8 configuration];
      v18 = [v17 identifier];
      v24 = 138543618;
      v25 = v18;
      v26 = 2114;
      v27 = v11;
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
      v17 = [v8 configuration];
      v18 = [v17 identifier];
      v24 = 138543362;
      v25 = v18;
      v19 = "Got called with task with no file for: %{public}@";
      v20 = v16;
      v21 = 12;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v19, &v24, v21);
    }
  }

LABEL_16:
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v11 = a3;
  v12 = a4;
  if (qword_1004568F8 != -1)
  {
    sub_100357D78();
  }

  v13 = qword_100456900;
  if (os_log_type_enabled(qword_100456900, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [v11 configuration];
    v16 = [v15 identifier];
    v17 = 138413314;
    v18 = v12;
    v19 = 2048;
    v20 = a5;
    v21 = 2048;
    v22 = a6;
    v23 = 2048;
    v24 = a7;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Got called back with task: %@ and bytesSent: %lld and totalBytesSent: %lld and totalBytesExpectedToSend: %lld and id: %@", &v17, 0x34u);
  }
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1004568F8 != -1)
  {
    sub_100357D78();
  }

  v8 = qword_100456900;
  if (os_log_type_enabled(qword_100456900, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Session got invalidated with error: %{public}@", &v9, 0xCu);
  }

  [(CSStudiesServerSubmitter *)self createSession];
}

@end