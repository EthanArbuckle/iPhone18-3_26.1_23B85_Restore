@interface INActivity
- (BOOL)setActivityState:(int64_t)state;
- (INActivity)initWithTarget:(id)target action:(SEL)action;
- (void)_configureXPCActivityWithCriteria:(id)criteria;
- (void)_scheduleNextFireForDate:(id)date;
- (void)checkIn;
- (void)ensureNextActivityWillOccurBeforeDate:(id)date;
- (void)setNextActivityDate:(id)date;
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

- (INActivity)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v15.receiver = self;
  v15.super_class = INActivity;
  v8 = [(INActivity *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(INActivity *)v8 setIsRepeating:1];
    objc_storeStrong(&v9->_target, target);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v9->_action = actionCopy;
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

- (BOOL)setActivityState:(int64_t)state
{
  xpcActivity = self->_xpcActivity;
  if (xpcActivity)
  {
    LOBYTE(xpcActivity) = xpc_activity_set_state(xpcActivity, state);
  }

  return xpcActivity;
}

- (void)setNextActivityDate:(id)date
{
  dateCopy = date;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100034B88(dateCopy, self);
  }

  [(INActivity *)self _scheduleNextFireForDate:dateCopy];
}

- (void)ensureNextActivityWillOccurBeforeDate:(id)date
{
  dateCopy = date;
  activityQueue = self->_activityQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006A38;
  v7[3] = &unk_100055340;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_async(activityQueue, v7);
}

- (void)_configureXPCActivityWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100034D90(self);
  }

  if (criteriaCopy)
  {
    if (self->_xpcActivity)
    {
      isRepeating = [(INActivity *)self isRepeating];
      v7 = _INLogSystem();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
      if (isRepeating)
      {
        if (v8)
        {
          sub_100034E90(criteriaCopy, self);
        }

        xpc_activity_set_criteria(self->_xpcActivity, criteriaCopy);
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

  activityID = [(INActivity *)self activityID];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006E48;
  v11[3] = &unk_100055390;
  v11[4] = self;
  v12 = criteriaCopy;
  xpc_activity_register(activityID, XPC_ACTIVITY_CHECK_IN, v11);

LABEL_17:
}

- (void)_scheduleNextFireForDate:(id)date
{
  dateCopy = date;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = dateCopy;
    v19 = 2080;
    activityID = [(INActivity *)self activityID];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requested date %@ for %s", &v17, 0x16u);
  }

  [dateCopy timeIntervalSinceNow];
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
    [dateCopy timeIntervalSinceReferenceDate];
    v13 = v12;
    v14 = +[INManagedDefaults sharedInstance];
    v15 = [NSNumber numberWithDouble:v13];
    activityNextFireDateKey = [(INActivity *)self activityNextFireDateKey];
    [v14 setValue:v15 forManagedDefault:activityNextFireDateKey];
  }
}

@end