@interface SWCDownloadTaskState
- (SWCDownloadTaskState)initWithDownloader:(id)a3 domain:(id)a4 downloadRoute:(unsigned __int8)a5;
- (SWCDownloader)downloader;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
- (void)cancelTaskWithError:(id)a3;
- (void)receiveSIGTERMSignal;
- (void)resumeTask;
@end

@implementation SWCDownloadTaskState

- (SWCDownloadTaskState)initWithDownloader:(id)a3 domain:(id)a4 downloadRoute:(unsigned __int8)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = SWCDownloadTaskState;
  v10 = [(SWCDownloadTaskState *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_downloader, v8);
    memset(out, 0, sizeof(out));
    uuid_generate_random(out);
    memset(v20, 0, 37);
    uuid_unparse(out, v20);
    v12 = [[NSString alloc] initWithFormat:@"AASA-%s", v20];
    taskDescription = v11->_taskDescription;
    v11->_taskDescription = v12;

    objc_storeStrong(&v11->_domain, a4);
    v11->_downloadRoute = a5;
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
    v6 = [(SWCDownloadTaskState *)self downloader];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 _sessionForTaskState:self];
      if (!v8)
      {
        v21 = +[NSAssertionHandler currentHandler];
        [v21 handleFailureInMethod:a2 object:self file:@"SWCDownloader.mm" lineNumber:385 description:@"Failed to get/create URL session"];
      }

      v9 = [(SWCDownloadTaskState *)self domain];
      v10 = [v7 _URLRequestWithDomain:v9 downloadRoute:{-[SWCDownloadTaskState downloadRoute](self, "downloadRoute")}];

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

      v12 = [(SWCDownloadTaskState *)self taskDescription];
      [v11 setTaskDescription:v12];

      objc_storeStrong(p_task, v11);
      v13 = [[NSDate alloc] initWithTimeIntervalSince1970:time(0)];
      dateScheduled = self->_dateScheduled;
      self->_dateScheduled = v13;

      v15 = [NSString alloc];
      v16 = [(_SWCDomain *)self->_domain redactedDescription];
      v17 = [v15 initWithFormat:@"com.apple.swc.aasa.dl-%@", v16];
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
        v25 = self;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Beginning data task %@", buf, 0xCu);
      }

      [v11 resume];
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)cancelTaskWithError:(id)a3
{
  objc_storeStrong(&self->_cancellationError, a3);
  v6 = a3;
  transaction = self->_transaction;
  self->_transaction = 0;

  [(NSURLSessionDataTask *)self->_task cancel];
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(NSURLSessionDataTask *)self->_task taskDescription];
  domain = self->_domain;
  v6 = [(NSMutableData *)self->_buffer length];
  v7 = sub_1000061C0(self->_downloadRoute);
  v8 = [v3 initWithFormat:@"%@ { domain: %@, bytes: %llu, route: %@ }", v4, domain, v6, v7];

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
  v4 = [(NSURLSessionDataTask *)self->_task taskDescription];
  v5 = [(_SWCDomain *)self->_domain redactedDescription];
  v6 = [(NSMutableData *)self->_buffer length];
  v7 = sub_1000061C0(self->_downloadRoute);
  v8 = [v3 initWithFormat:@"%@ { domain: %@, bytes: %llu, route: %@ }", v4, v5, v6, v7];

  return v8;
}

- (SWCDownloader)downloader
{
  WeakRetained = objc_loadWeakRetained(&self->_downloader);

  return WeakRetained;
}

@end