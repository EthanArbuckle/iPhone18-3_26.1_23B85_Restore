@interface INActivity
- (BOOL)setActivityState:(int64_t)a3;
- (INActivity)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_configureXPCActivityWithCriteria:(id)a3;
- (void)_scheduleNextFireForDate:(id)a3;
- (void)checkIn;
- (void)ensureNextActivityWillOccurBeforeDate:(id)a3;
- (void)setNextActivityDate:(id)a3;
- (void)stop;
@end

@implementation INActivity

- (void)stop
{
  activityQueue = self->_activityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002248;
  block[3] = &unk_100055318;
  block[4] = self;
  dispatch_async(activityQueue, block);
}

- (INActivity)initWithTarget:(id)a3 action:(SEL)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = INActivity;
  v8 = [(INActivity *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(INActivity *)v8 setIsRepeating:1];
    objc_storeStrong(&v9->_target, a3);
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0;
    }

    v9->_action = v10;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.ind.activity", v11);
    activityQueue = v9->_activityQueue;
    v9->_activityQueue = v12;
  }

  return v9;
}

- (void)checkIn
{
  activityQueue = self->_activityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006910;
  block[3] = &unk_100055318;
  block[4] = self;
  dispatch_async(activityQueue, block);
}

- (BOOL)setActivityState:(int64_t)a3
{
  xpcActivity = self->_xpcActivity;
  if (xpcActivity)
  {
    LOBYTE(xpcActivity) = xpc_activity_set_state(xpcActivity, a3);
  }

  return xpcActivity;
}

- (void)setNextActivityDate:(id)a3
{
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100034B88(v4, self);
  }

  [(INActivity *)self _scheduleNextFireForDate:v4];
}

- (void)ensureNextActivityWillOccurBeforeDate:(id)a3
{
  v4 = a3;
  activityQueue = self->_activityQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006A38;
  v7[3] = &unk_100055340;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(activityQueue, v7);
}

- (void)_configureXPCActivityWithCriteria:(id)a3
{
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100034D90(self);
  }

  if (v4)
  {
    if (self->_xpcActivity)
    {
      v6 = [(INActivity *)self isRepeating];
      v7 = _INLogSystem();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        if (v8)
        {
          sub_100034E90(v4, self);
        }

        xpc_activity_set_criteria(self->_xpcActivity, v4);
        goto LABEL_17;
      }

      if (v8)
      {
        sub_100034E10(self);
      }
    }

    else
    {
      v7 = _INLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_100034F18(self);
      }
    }
  }

  v9 = _INLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100034F98(self);
  }

  v10 = [(INActivity *)self activityID];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006E48;
  v11[3] = &unk_100055390;
  v11[4] = self;
  v12 = v4;
  xpc_activity_register(v10, XPC_ACTIVITY_CHECK_IN, v11);

LABEL_17:
}

- (void)_scheduleNextFireForDate:(id)a3
{
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v4;
    v19 = 2080;
    v20 = [(INActivity *)self activityID];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requested date %@ for %s", &v17, 0x16u);
  }

  [v4 timeIntervalSinceNow];
  v7 = v6;
  v8 = _INLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100035290(self);
  }

  if (v7 <= 0.0)
  {
    v9 = _INLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003532C(self);
    }
  }

  else
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v9, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    if ([(INActivity *)self isRepeating])
    {
      v10 = XPC_ACTIVITY_INTERVAL_1_HOUR;
      if (v7 <= XPC_ACTIVITY_INTERVAL_1_HOUR)
      {
        v10 = 1.0;
      }

      if (v7 <= XPC_ACTIVITY_INTERVAL_1_DAY)
      {
        v11 = v10;
      }

      else
      {
        v11 = XPC_ACTIVITY_INTERVAL_1_DAY;
      }

      xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_REPEATING, 1);
      xpc_dictionary_set_int64(v9, XPC_ACTIVITY_INTERVAL, v7);
      xpc_dictionary_set_int64(v9, XPC_ACTIVITY_GRACE_PERIOD, v11);
      v7 = v7 - v11;
    }

    else
    {
      xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_REPEATING, 0);
      xpc_dictionary_set_int64(v9, XPC_ACTIVITY_GRACE_PERIOD, 1);
    }

    xpc_dictionary_set_int64(v9, XPC_ACTIVITY_DELAY, v7);
    [(INActivity *)self _configureXPCActivityWithCriteria:v9];
    [v4 timeIntervalSinceReferenceDate];
    v13 = v12;
    v14 = +[INManagedDefaults sharedInstance];
    v15 = [NSNumber numberWithDouble:v13];
    v16 = [(INActivity *)self activityNextFireDateKey];
    [v14 setValue:v15 forManagedDefault:v16];
  }
}

@end