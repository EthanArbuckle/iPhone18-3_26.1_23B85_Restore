@interface SWCDownloadTaskState
- (SWCDownloadTaskState)initWithDownloader:(id)downloader domain:(id)domain downloadRoute:(unsigned __int8)route;
- (SWCDownloader)downloader;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
- (void)cancelTaskWithError:(id)error;
- (void)receiveSIGTERMSignal;
- (void)resumeTask;
@end

@implementation SWCDownloadTaskState

- (SWCDownloadTaskState)initWithDownloader:(id)downloader domain:(id)domain downloadRoute:(unsigned __int8)route
{
  downloaderCopy = downloader;
  domainCopy = domain;
  v19.receiver = self;
  v19.super_class = SWCDownloadTaskState;
  v10 = [(SWCDownloadTaskState *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_downloader, downloaderCopy);
    memset(out, 0, sizeof(out));
    uuid_generate_random(out);
    memset(v20, 0, 37);
    uuid_unparse(out, v20);
    v12 = [[NSString alloc] initWithFormat:@"AASA-%s", v20];
    taskDescription = v11->_taskDescription;
    v11->_taskDescription = v12;

    objc_storeStrong(&v11->_domain, domain);
    v11->_downloadRoute = route;
    v14 = objc_alloc_init(NSMutableArray);
    completionHandlers = v11->_completionHandlers;
    v11->_completionHandlers = v14;

    v16 = objc_alloc_init(NSMutableData);
    buffer = v11->_buffer;
    v11->_buffer = v16;
  }

  return v11;
}

- (void)receiveSIGTERMSignal
{
  transaction = self->_transaction;
  self->_transaction = 0;
  _objc_release_x1();
}

- (void)resumeTask
{
  p_task = &self->_task;
  if (!self->_task)
  {
    v5 = objc_autoreleasePoolPush();
    downloader = [(SWCDownloadTaskState *)self downloader];
    v7 = downloader;
    if (downloader)
    {
      v8 = [downloader _sessionForTaskState:self];
      if (!v8)
      {
        v21 = +[NSAssertionHandler currentHandler];
        [v21 handleFailureInMethod:a2 object:self file:@"SWCDownloader.mm" lineNumber:385 description:@"Failed to get/create URL session"];
      }

      domain = [(SWCDownloadTaskState *)self domain];
      v10 = [v7 _URLRequestWithDomain:domain downloadRoute:{-[SWCDownloadTaskState downloadRoute](self, "downloadRoute")}];

      if (!v10)
      {
        v22 = +[NSAssertionHandler currentHandler];
        [v22 handleFailureInMethod:a2 object:self file:@"SWCDownloader.mm" lineNumber:387 description:@"Failed to create URL request"];
      }

      v11 = [v8 dataTaskWithRequest:v10];
      if (!v11)
      {
        v23 = +[NSAssertionHandler currentHandler];
        [v23 handleFailureInMethod:a2 object:self file:@"SWCDownloader.mm" lineNumber:389 description:@"Failed to get data task from URL session"];
      }

      taskDescription = [(SWCDownloadTaskState *)self taskDescription];
      [v11 setTaskDescription:taskDescription];

      objc_storeStrong(p_task, v11);
      v13 = [[NSDate alloc] initWithTimeIntervalSince1970:time(0)];
      dateScheduled = self->_dateScheduled;
      self->_dateScheduled = v13;

      v15 = [NSString alloc];
      redactedDescription = [(_SWCDomain *)self->_domain redactedDescription];
      v17 = [v15 initWithFormat:@"com.apple.swc.aasa.dl-%@", redactedDescription];
      [v17 UTF8String];
      v18 = os_transaction_create();
      transaction = self->_transaction;
      self->_transaction = v18;

      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v20 = qword_100032508;
      if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Beginning data task %@", buf, 0xCu);
      }

      [v11 resume];
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)cancelTaskWithError:(id)error
{
  objc_storeStrong(&self->_cancellationError, error);
  errorCopy = error;
  transaction = self->_transaction;
  self->_transaction = 0;

  [(NSURLSessionDataTask *)self->_task cancel];
}

- (id)description
{
  v3 = [NSString alloc];
  taskDescription = [(NSURLSessionDataTask *)self->_task taskDescription];
  domain = self->_domain;
  v6 = [(NSMutableData *)self->_buffer length];
  v7 = sub_1000061C0(self->_downloadRoute);
  v8 = [v3 initWithFormat:@"%@ { domain: %@, bytes: %llu, route: %@ }", taskDescription, domain, v6, v7];

  return v8;
}

- (id)debugDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(SWCDownloadTaskState *)self description];
  v6 = [v3 initWithFormat:@"<%@ %p> %@", v4, self, v5];

  return v6;
}

- (id)redactedDescription
{
  v3 = [NSString alloc];
  taskDescription = [(NSURLSessionDataTask *)self->_task taskDescription];
  redactedDescription = [(_SWCDomain *)self->_domain redactedDescription];
  v6 = [(NSMutableData *)self->_buffer length];
  v7 = sub_1000061C0(self->_downloadRoute);
  v8 = [v3 initWithFormat:@"%@ { domain: %@, bytes: %llu, route: %@ }", taskDescription, redactedDescription, v6, v7];

  return v8;
}

- (SWCDownloader)downloader
{
  WeakRetained = objc_loadWeakRetained(&self->_downloader);

  return WeakRetained;
}

@end