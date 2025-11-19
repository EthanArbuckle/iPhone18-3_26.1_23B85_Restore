@interface BKEventStatisticsLoggingController
+ (OS_dispatch_queue)workQueue;
- (BKEventStatisticsLoggingController)initWithLabel:(id)a3 logCategory:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)updateStatistics:(id)a3;
@end

@implementation BKEventStatisticsLoggingController

- (void)invalidate
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003C00;
  block[3] = &unk_1000FD150;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)dealloc
{
  if (!self->_invalid)
  {
    v4 = [NSString stringWithFormat:@"someone forgot to invoke -invalidate on %@", self];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      v14 = self;
      v15 = 2114;
      v16 = @"BKEventStatisticsLoggingController.m";
      v17 = 1024;
      v18 = 439;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100004B14);
  }

  v8.receiver = self;
  v8.super_class = BKEventStatisticsLoggingController;
  [(BKEventStatisticsLoggingController *)&v8 dealloc];
}

+ (OS_dispatch_queue)workQueue
{
  if (qword_100126038 != -1)
  {
    dispatch_once(&qword_100126038, &stru_1000FC268);
  }

  v3 = qword_100126040;

  return v3;
}

- (void)updateStatistics:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100071784;
  v7[3] = &unk_1000FC300;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (BKEventStatisticsLoggingController)initWithLabel:(id)a3 logCategory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = BKEventStatisticsLoggingController;
  v8 = [(BKEventStatisticsLoggingController *)&v24 init];
  v9 = v8;
  if (v8)
  {
    v8->_resetStartTime = 1;
    v10 = [v6 copy];
    label = v9->_label;
    v9->_label = v10;

    objc_storeStrong(&v9->_logCategory, a4);
    objc_initWeak(&location, v9);
    v12 = [@"BKEventStatistics-" stringByAppendingString:v6];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100071B18;
    v21 = &unk_1000FC290;
    objc_copyWeak(&v22, &location);
    v13 = [BSCompoundAssertion assertionWithIdentifier:v12 stateDidChangeHandler:&v18];
    transactionAssertion = v9->_transactionAssertion;
    v9->_transactionAssertion = v13;

    v15 = [objc_opt_class() workQueue];
    workQueue = v9->_workQueue;
    v9->_workQueue = v15;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v9;
}

@end