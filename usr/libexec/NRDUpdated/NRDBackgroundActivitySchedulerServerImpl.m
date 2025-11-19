@interface NRDBackgroundActivitySchedulerServerImpl
- (NRDBackgroundActivitySchedulerServerImpl)initWithIdentifier:(id)a3;
- (void)_isAppRefresh:(id)a3;
- (void)_setAdditionalXPCActivityProperties:(id)a3;
- (void)dealloc;
- (void)delay:(id)a3;
- (void)identifier:(id)a3;
- (void)interval:(id)a3;
- (void)preregistered:(id)a3;
- (void)qualityOfService:(id)a3;
- (void)repeats:(id)a3;
- (void)scheduleWithRemoteableBlock:(id)a3;
- (void)setCheckInHandler:(id)a3;
- (void)shouldDefer:(id)a3;
- (void)tolerance:(id)a3;
@end

@implementation NRDBackgroundActivitySchedulerServerImpl

- (NRDBackgroundActivitySchedulerServerImpl)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NRDBackgroundActivitySchedulerServerImpl *)self init];
  if (v5)
  {
    v6 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:v4];
    scheduler = v5->_scheduler;
    v5->_scheduler = v6;
  }

  return v5;
}

- (void)dealloc
{
  scheduler = self->_scheduler;
  self->_scheduler = 0;

  v4.receiver = self;
  v4.super_class = NRDBackgroundActivitySchedulerServerImpl;
  [(NRDBackgroundActivitySchedulerServerImpl *)&v4 dealloc];
}

- (void)identifier:(id)a3
{
  scheduler = self->_scheduler;
  v5 = a3;
  v6 = [(NSBackgroundActivityScheduler *)scheduler identifier];
  (*(a3 + 2))(v5, v6);
}

- (void)qualityOfService:(id)a3
{
  scheduler = self->_scheduler;
  v5 = a3;
  (*(a3 + 2))(v5, [(NSBackgroundActivityScheduler *)scheduler qualityOfService]);
}

- (void)repeats:(id)a3
{
  scheduler = self->_scheduler;
  v5 = a3;
  (*(a3 + 2))(v5, [(NSBackgroundActivityScheduler *)scheduler repeats]);
}

- (void)interval:(id)a3
{
  scheduler = self->_scheduler;
  v5 = a3;
  [(NSBackgroundActivityScheduler *)scheduler interval];
  (*(a3 + 2))(v5);
}

- (void)tolerance:(id)a3
{
  scheduler = self->_scheduler;
  v5 = a3;
  [(NSBackgroundActivityScheduler *)scheduler tolerance];
  (*(a3 + 2))(v5);
}

- (void)scheduleWithRemoteableBlock:(id)a3
{
  v4 = a3;
  v5 = nrdSharedLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSBackgroundActivityScheduler *)self->_scheduler identifier];
    v7 = "NO";
    if ([(NSBackgroundActivityScheduler *)self->_scheduler isPreregistered])
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    v9 = [(NSBackgroundActivityScheduler *)self->_scheduler qualityOfService];
    if ([(NSBackgroundActivityScheduler *)self->_scheduler repeats])
    {
      v7 = "YES";
    }

    [(NSBackgroundActivityScheduler *)self->_scheduler interval];
    v11 = v10;
    [(NSBackgroundActivityScheduler *)self->_scheduler delay];
    v13 = v12;
    [(NSBackgroundActivityScheduler *)self->_scheduler tolerance];
    *buf = 138545154;
    v20 = self;
    v21 = 2114;
    v22 = v6;
    v23 = 2082;
    v24 = v8;
    v25 = 2048;
    v26 = v9;
    v27 = 2082;
    v28 = v7;
    v29 = 2048;
    v30 = v11;
    v31 = 2048;
    v32 = v13;
    v33 = 2048;
    v34 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scheduling Activity %{public}@ = {\n\tidentifier = %{public}@\n\tpreregistered = %{public}s\n\tqualityOfService = %ld\n\trepeats = %{public}s\n\tinterval = %f\n\tdelay = %f\n\ttolerance = %f\n}", buf, 0x52u);
  }

  scheduler = self->_scheduler;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __72__NRDBackgroundActivitySchedulerServerImpl_scheduleWithRemoteableBlock___block_invoke;
  v17[3] = &unk_1000187B8;
  v17[4] = self;
  v18 = v4;
  v16 = v4;
  [(NSBackgroundActivityScheduler *)scheduler scheduleWithBlock:v17];
}

void __72__NRDBackgroundActivitySchedulerServerImpl_scheduleWithRemoteableBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v5 scheduler];
    v7 = [v6 identifier];
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ fired.", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __72__NRDBackgroundActivitySchedulerServerImpl_scheduleWithRemoteableBlock___block_invoke_2;
  v10[3] = &unk_100018790;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v3;
  v9 = v3;
  [v8 execute:v10];
}

uint64_t __72__NRDBackgroundActivitySchedulerServerImpl_scheduleWithRemoteableBlock___block_invoke_2(uint64_t a1, int a2)
{
  v4 = nrdSharedLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v5 scheduler];
    v7 = [v6 identifier];
    if (a2 == 1)
    {
      v8 = @"NSBackgroundActivityResultFinished";
    }

    else if (a2 == 2)
    {
      v8 = @"NSBackgroundActivityResultDeferred";
    }

    else
    {
      v8 = [NSString stringWithFormat:@"%ld", a2];
    }

    *buf = 138543874;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ result: %{public}@", buf, 0x20u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)shouldDefer:(id)a3
{
  scheduler = self->_scheduler;
  v5 = a3;
  (*(a3 + 2))(v5, [(NSBackgroundActivityScheduler *)scheduler shouldDefer]);
}

- (void)preregistered:(id)a3
{
  scheduler = self->_scheduler;
  v5 = a3;
  (*(a3 + 2))(v5, [(NSBackgroundActivityScheduler *)scheduler isPreregistered]);
}

- (void)delay:(id)a3
{
  scheduler = self->_scheduler;
  v5 = a3;
  [(NSBackgroundActivityScheduler *)scheduler delay];
  (*(a3 + 2))(v5);
}

- (void)_setAdditionalXPCActivityProperties:(id)a3
{
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  [(NSBackgroundActivityScheduler *)self->_scheduler _setAdditionalXPCActivityProperties:v4];
}

- (void)setCheckInHandler:(id)a3
{
  v4 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  scheduler = self->_scheduler;
  if (v4)
  {
    v6 = [(NSBackgroundActivityScheduler *)scheduler identifier];
    [(NSBackgroundActivityScheduler *)self->_scheduler description];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __62__NRDBackgroundActivitySchedulerServerImpl_setCheckInHandler___block_invoke;
    v7 = v9[3] = &unk_100018808;
    v10 = v7;
    v8 = v6;
    v11 = v8;
    v12 = v4;
    v13 = v14;
    [(NSBackgroundActivityScheduler *)self->_scheduler setCheckInHandler:v9];
  }

  else
  {
    [(NSBackgroundActivityScheduler *)scheduler setCheckInHandler:0];
  }

  _Block_object_dispose(v14, 8);
}

void __62__NRDBackgroundActivitySchedulerServerImpl_setCheckInHandler___block_invoke(void *a1)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138543618;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in.", buf, 0x16u);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __62__NRDBackgroundActivitySchedulerServerImpl_setCheckInHandler___block_invoke_5;
  v25[3] = &unk_1000187E0;
  v5 = a1[6];
  v25[4] = a1[7];
  [v5 execute:v25];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v22 = __62__NRDBackgroundActivitySchedulerServerImpl_setCheckInHandler___block_invoke_2;
  v23 = &unk_100018610;
  v24 = a1[7];
  v6 = v21;
  v7 = objc_autoreleasePoolPush();
  v8 = +[NSDate date];
  do
  {
    v9 = +[NSDate date];
    v10 = [v9 dateByAddingTimeInterval:0.02];
    v11 = +[NSRunLoop currentRunLoop];
    [v11 runUntilDate:v10];

    v12 = +[NSDate date];
    [v12 timeIntervalSinceDate:v9];
    v14 = v13;

    if (v14 < 0.02)
    {
      *buf = (0.02 - v14);
      *&buf[8] = ((0.02 - v14 - *buf) * 1000000000.0);
      nanosleep(buf, 0);
    }

    if (v22(v6))
    {
      break;
    }

    v15 = +[NSDate date];
    [v15 timeIntervalSinceDate:v8];
    v17 = v16 < 3.1536e10;
  }

  while (v17);

  objc_autoreleasePoolPop(v7);
  v18 = nrdSharedLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = a1[4];
    v20 = a1[5];
    *buf = 138543618;
    *&buf[4] = v19;
    *&buf[12] = 2114;
    *&buf[14] = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in complete.", buf, 0x16u);
  }
}

- (void)_isAppRefresh:(id)a3
{
  scheduler = self->_scheduler;
  v5 = a3;
  (*(a3 + 2))(v5, [(NSBackgroundActivityScheduler *)scheduler _isAppRefresh]);
}

@end