@interface MediaSocialStatusPollingCoordinator
- (MediaSocialStatusPollingCoordinator)initWithDispatchQueue:(id)a3;
- (MediaSocialStatusPollingDelegate)delegate;
- (void)_addBackgroundTaskJob;
- (void)_finishRequests:(id)a3 withResponses:(id)a4;
- (void)_handleBackgroundTaskEvent:(id)a3;
- (void)addPollRequest:(id)a3;
- (void)dealloc;
@end

@implementation MediaSocialStatusPollingCoordinator

- (MediaSocialStatusPollingCoordinator)initWithDispatchQueue:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = MediaSocialStatusPollingCoordinator;
  v6 = [(MediaSocialStatusPollingCoordinator *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, a3);
    v8 = objc_alloc_init(NSMutableArray);
    requests = v7->_requests;
    v7->_requests = v8;

    v10 = objc_alloc_init(ISOperationQueue);
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v10;

    [(ISOperationQueue *)v7->_operationQueue setMaxConcurrentOperationCount:1];
    [(ISOperationQueue *)v7->_operationQueue setName:@"com.apple.itunesstored.MediaSocialStatusPollingCoordinator"];
    objc_initWeak(&location, v7);
    v12 = +[Daemon daemon];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10022FBE4;
    v16[3] = &unk_100328418;
    objc_copyWeak(&v17, &location);
    v13 = [v12 addObserverForBackgroundTaskWithIdentifierPrefix:@"com.apple.itunesstored.MediaSocial.poll" withBlock:v16];
    btaObserver = v7->_btaObserver;
    v7->_btaObserver = v13;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  if (self->_btaObserver)
  {
    v3 = +[Daemon daemon];
    [v3 removeBackgroundTaskObserver:self->_btaObserver];
  }

  v4.receiver = self;
  v4.super_class = MediaSocialStatusPollingCoordinator;
  [(MediaSocialStatusPollingCoordinator *)&v4 dealloc];
}

- (void)addPollRequest:(id)a3
{
  v11 = a3;
  v4 = [(NSMutableArray *)self->_requests count];
  v5 = [v11 copy];
  [(NSMutableArray *)self->_requests addObject:v5];
  [v11 pollingInterval];
  v6 = 15.0;
  if (v7 > 15.0)
  {
    [v11 pollingInterval];
    v6 = v8;
  }

  if (v4)
  {
    pollingInterval = self->_pollingInterval;
    if (v6 >= pollingInterval)
    {
      goto LABEL_8;
    }

    Current = self->_nextScheduledPoll - pollingInterval;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  self->_nextScheduledPoll = v6 + Current;
  self->_pollingInterval = v6;
  [(MediaSocialStatusPollingCoordinator *)self _addBackgroundTaskJob];
LABEL_8:
}

- (void)_handleBackgroundTaskEvent:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022FDF8;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_addBackgroundTaskJob
{
  v2 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_nextScheduledPoll];
  [v2 timeIntervalSinceNow];
  v4 = v3;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  *v15 = 138412546;
  *&v15[4] = objc_opt_class();
  *&v15[12] = 2112;
  *&v15[14] = v2;
  v9 = *&v15[4];
  LODWORD(v14) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [NSString stringWithCString:v10 encoding:4, v15, v14, *v15, *&v15[16]];
    free(v10);
    SSFileLog();
LABEL_11:
  }

  v11 = +[Daemon daemon];
  [v11 cancelBackgroundTaskWithIdentifier:@"com.apple.itunesstored.MediaSocial.poll"];
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v12, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 0);
  xpc_dictionary_set_BOOL(v12, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_int64(v12, XPC_ACTIVITY_DELAY, v4);
  v13 = [[BackgroundTaskRequest alloc] initWithBackgroundTaskAgentJob:v12];
  [(BackgroundTaskRequest *)v13 setRequestIdentifier:@"com.apple.itunesstored.MediaSocial.poll"];
  [v11 addBackgroundTaskWithRequest:v13];
}

- (void)_finishRequests:(id)a3 withResponses:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ISOperationQueue *)self->_operationQueue operationCount];
  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10023064C;
  v12[3] = &unk_10032CE98;
  v13 = v6;
  v14 = v7;
  v15 = self;
  v16 = v8 == 1;
  v10 = v7;
  v11 = v6;
  dispatch_async(dispatchQueue, v12);
}

- (MediaSocialStatusPollingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end