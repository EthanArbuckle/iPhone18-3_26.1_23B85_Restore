@interface NDTActivity
- (NDTActivity)initWithDelegate:(id)delegate;
- (NDTActivityDelegate)delegate;
- (OS_xpc_object)activity;
- (id)_currentCriteria;
- (void)_activityComplete;
- (void)_checkIn;
- (void)_setState:(int64_t)state;
- (void)_startDeferralPolling;
- (void)_stopDeferralPolling;
- (void)completeAndFireIn:(int64_t)in;
- (void)completeAndFireNever;
- (void)completeAndFireOnConnection;
@end

@implementation NDTActivity

- (NDTActivity)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = NDTActivity;
  v5 = [(NDTActivity *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(NDTActivity *)v5 setDelegate:delegateCopy];
    v7 = objc_alloc_init(NSCondition);
    [(NDTActivity *)v6 setActivityCondition:v7];

    v8 = os_log_create([delegateCopy activitySubsystem:v6], "xpc_activity");
    [(NDTActivity *)v6 setLog:v8];

    [(NDTActivity *)v6 setCriteriaDelay:-1];
    [(NDTActivity *)v6 setCriteriaOnConnection:0];
    [(NDTActivity *)v6 _checkIn];
  }

  return v6;
}

- (OS_xpc_object)activity
{
  activityCondition = [(NDTActivity *)self activityCondition];
  [activityCondition lock];
  while (1)
  {

    if (self->_activity)
    {
      break;
    }

    activityCondition = [(NDTActivity *)self activityCondition];
    [activityCondition wait];
  }

  activityCondition2 = [(NDTActivity *)self activityCondition];
  [activityCondition2 unlock];

  activity = self->_activity;

  return activity;
}

- (void)_checkIn
{
  delegate = [(NDTActivity *)self delegate];
  objc_initWeak(&location, self);
  v4 = [delegate activityIdentifier:self];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000D13C;
  handler[3] = &unk_10005CEE0;
  objc_copyWeak(&v8, &location);
  v5 = delegate;
  v7 = v5;
  xpc_activity_register(v4, XPC_ACTIVITY_CHECK_IN, handler);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)_currentCriteria
{
  if ([(NDTActivity *)self criteriaDelay]== -1 && ![(NDTActivity *)self criteriaOnConnection])
  {
    v5 = 0;
  }

  else
  {
    delegate = [(NDTActivity *)self delegate];
    activity = [(NDTActivity *)self activity];
    v5 = xpc_activity_copy_criteria(activity);

    if (!v5)
    {
      v5 = xpc_dictionary_create(0, 0, 0);
    }

    xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_GRACE_PERIOD, 10);
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_INTERVAL, 0);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REPEATING, 0);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, [(NDTActivity *)self criteriaOnConnection]);
    if (![(NDTActivity *)self criteriaOnConnection])
    {
      xpc_dictionary_set_int64(v5, XPC_ACTIVITY_DELAY, [(NDTActivity *)self criteriaDelay]);
    }

    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate activity:self customizeCriteria:v5];
    }
  }

  return v5;
}

- (void)completeAndFireIn:(int64_t)in
{
  v5 = [(NDTActivity *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109120;
    LODWORD(v14) = in;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "completeAndFireIn: %d", &v13, 8u);
  }

  v6 = os_transaction_create();
  [(NDTActivity *)self setWaitingForCheckin:v6];

  v7 = [NSDate dateWithTimeIntervalSinceNow:in];
  estimatedFireDate = [(NDTActivity *)self estimatedFireDate];
  [(NDTActivity *)self setEstimatedFireDate:0];
  [(NDTActivity *)self _activityComplete];
  if (!estimatedFireDate || [v7 compare:estimatedFireDate] == -1)
  {
    v12 = [(NDTActivity *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      LODWORD(v14) = in;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "fireIn: %d", &v13, 8u);
    }

    [(NDTActivity *)self setCriteriaOnConnection:0];
    [(NDTActivity *)self setCriteriaDelay:in];
    [(NDTActivity *)self setEstimatedFireDate:v7];
    [(NDTActivity *)self _checkIn];
  }

  else
  {
    [estimatedFireDate timeIntervalSinceNow];
    v10 = v9;
    v11 = [(NDTActivity *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "fireIn request disregarded for previous scheduled timer (%0.2f to go)", &v13, 0xCu);
    }
  }
}

- (void)completeAndFireOnConnection
{
  v3 = [(NDTActivity *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "completeAndFireOnConnection", v6, 2u);
  }

  v4 = os_transaction_create();
  [(NDTActivity *)self setWaitingForCheckin:v4];

  [(NDTActivity *)self setEstimatedFireDate:0];
  [(NDTActivity *)self _activityComplete];
  [(NDTActivity *)self setCriteriaOnConnection:1];
  [(NDTActivity *)self setCriteriaDelay:0];
  [(NDTActivity *)self _checkIn];
  v5 = +[NSDate date];
  [(NDTActivity *)self setEstimatedFireDate:v5];
}

- (void)completeAndFireNever
{
  v3 = [(NDTActivity *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "completeAndFireNever", v4, 2u);
  }

  [(NDTActivity *)self _activityComplete];
}

- (void)_setState:(int64_t)state
{
  if (self->_activity)
  {
    activity = [(NDTActivity *)self activity];
    v6 = xpc_activity_set_state(activity, state);

    v7 = [(NDTActivity *)self log];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        if (state <= 5)
        {
          v9 = (&off_10005CF00)[state];
        }

        else
        {
          v9 = "OUT_OF_BOUNDS";
        }

        v12 = 136315138;
        v13 = v9;
        v11 = "Set activity state to %s";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
      }
    }

    else if (v8)
    {
      if (state <= 5)
      {
        v10 = (&off_10005CF00)[state];
      }

      else
      {
        v10 = "OUT_OF_BOUNDS";
      }

      v12 = 136315138;
      v13 = v10;
      v11 = "Failed to set activity state to %s";
      goto LABEL_13;
    }
  }
}

- (void)_activityComplete
{
  v3 = [(NDTActivity *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_activityComplete", v4, 2u);
  }

  [(NDTActivity *)self _stopDeferralPolling];
  [(NDTActivity *)self _setState:5];
  [(NDTActivity *)self setEstimatedFireDate:0];
}

- (void)_startDeferralPolling
{
  [(NDTActivity *)self _stopDeferralPolling];
  v3 = dispatch_get_global_queue(17, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  deferPollingSource = self->_deferPollingSource;
  self->_deferPollingSource = v4;

  objc_initWeak(&location, self);
  v6 = self->_deferPollingSource;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000DC00;
  v9[3] = &unk_10005CE40;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v6, v9);
  v7 = self->_deferPollingSource;
  v8 = dispatch_time(0, 3000000000);
  dispatch_source_set_timer(v7, v8, 0xB2D05E00uLL, 0);
  dispatch_activate(self->_deferPollingSource);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_stopDeferralPolling
{
  deferPollingSource = self->_deferPollingSource;
  if (deferPollingSource)
  {
    dispatch_source_cancel(deferPollingSource);
    v4 = self->_deferPollingSource;
    self->_deferPollingSource = 0;
  }
}

- (NDTActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end