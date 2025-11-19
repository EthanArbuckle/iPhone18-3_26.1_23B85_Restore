@interface RMBackgroundTask
- (RMBackgroundTask)initWithIdentifier:(id)a3 queue:(id)a4 callback:(id)a5;
- (void)dealloc;
@end

@implementation RMBackgroundTask

- (RMBackgroundTask)initWithIdentifier:(id)a3 queue:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = RMBackgroundTask;
  v11 = [(RMBackgroundTask *)&v24 init];
  if (v11)
  {
    v12 = +[RMLog backgroundTask];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Initialized task: %{public}@", buf, 0xCu);
    }

    [(RMBackgroundTask *)v11 setIdentifier:v8];
    v13 = +[BGSystemTaskScheduler sharedScheduler];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10000B044;
    v21 = &unk_1000D0F78;
    v14 = v8;
    v22 = v14;
    v23 = v10;
    v15 = [v13 registerForTaskWithIdentifier:v14 usingQueue:v9 launchHandler:&v18];

    if ((v15 & 1) == 0)
    {
      v16 = [RMLog backgroundTask:v18];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10000B3A4(v14, v16);
      }
    }
  }

  return v11;
}

- (void)dealloc
{
  v3 = +[RMLog backgroundTask];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(RMBackgroundTask *)self identifier];
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deallocated task: %{public}@", buf, 0xCu);
  }

  v5 = +[BGSystemTaskScheduler sharedScheduler];
  v6 = [(RMBackgroundTask *)self identifier];
  [v5 deregisterTaskWithIdentifier:v6];

  v7.receiver = self;
  v7.super_class = RMBackgroundTask;
  [(RMBackgroundTask *)&v7 dealloc];
}

@end