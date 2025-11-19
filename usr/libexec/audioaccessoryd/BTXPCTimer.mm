@interface BTXPCTimer
- (BOOL)isActive;
- (BTXPCTimer)initWithName:(id)a3 date:(id)a4 gracePeriod:(double)a5 priority:(int64_t)a6 options:(unint64_t)a7 block:(id)a8;
- (BTXPCTimer)initWithName:(id)a3 timeInterval:(double)a4 gracePeriod:(double)a5 priority:(int64_t)a6 options:(unint64_t)a7 block:(id)a8;
- (BTXPCTimer)initWithName:(id)a3 timeInterval:(double)a4 priority:(int64_t)a5 options:(unint64_t)a6 block:(id)a7;
- (id)activityHandler;
- (id)criteria;
- (void)handleActivity;
- (void)invalidate;
@end

@implementation BTXPCTimer

- (BTXPCTimer)initWithName:(id)a3 date:(id)a4 gracePeriod:(double)a5 priority:(int64_t)a6 options:(unint64_t)a7 block:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = BTXPCTimer;
  v17 = [(BTXPCTimer *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(BTXPCTimer *)v17 setName:v14];
    [(BTXPCTimer *)v18 setDate:v15];
    [(BTXPCTimer *)v18 setGracePeriod:a5];
    [(BTXPCTimer *)v18 setPriority:a6];
    [(BTXPCTimer *)v18 setOptions:a7];
    [(BTXPCTimer *)v18 setBlock:v16];
    [(BTXPCTimer *)v18 handleActivity];
  }

  return v18;
}

- (BTXPCTimer)initWithName:(id)a3 timeInterval:(double)a4 gracePeriod:(double)a5 priority:(int64_t)a6 options:(unint64_t)a7 block:(id)a8
{
  v14 = a8;
  v15 = a3;
  v16 = [NSDate dateWithTimeIntervalSinceNow:a4];
  v17 = [(BTXPCTimer *)self initWithName:v15 date:v16 gracePeriod:a6 priority:a7 options:v14 block:a5];

  return v17;
}

- (BTXPCTimer)initWithName:(id)a3 timeInterval:(double)a4 priority:(int64_t)a5 options:(unint64_t)a6 block:(id)a7
{
  v12 = a7;
  v13 = a3;
  v14 = [NSDate dateWithTimeIntervalSinceNow:a4];
  v15 = [(BTXPCTimer *)self initWithName:v13 date:v14 gracePeriod:a5 priority:a6 options:v12 block:0.0];

  return v15;
}

- (id)criteria
{
  v3 = [(BTXPCTimer *)self date];
  [v3 timeIntervalSinceNow];
  v5 = v4;

  v6 = 0.0;
  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  v7 = v6;
  [(BTXPCTimer *)self gracePeriod];
  v9 = v8;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_int64(v10, XPC_ACTIVITY_DELAY, v7);
  xpc_dictionary_set_int64(v10, XPC_ACTIVITY_GRACE_PERIOD, v9);
  v11 = [(BTXPCTimer *)self priority];
  v12 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  if (v11 != 1)
  {
    v12 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  }

  xpc_dictionary_set_string(v10, XPC_ACTIVITY_PRIORITY, *v12);
  v13 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_POWER_NAP, v13 & 1);
  v14 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, (v14 & 4) != 0);
  v15 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, (v15 & 2) != 0);
  v16 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_USES_DUET_POWER_BUDGETING, (v16 & 8) != 0);
  if (([(BTXPCTimer *)self options]& 0x10) != 0)
  {
    v17 = &XPC_ACTIVITY_REQUIRES_CLASS_A;
  }

  else if (([(BTXPCTimer *)self options]& 0x20) != 0)
  {
    v17 = &XPC_ACTIVITY_REQUIRES_CLASS_B;
  }

  else
  {
    if (([(BTXPCTimer *)self options]& 0x40) == 0)
    {
      goto LABEL_13;
    }

    v17 = &XPC_ACTIVITY_REQUIRES_CLASS_C;
  }

  if (*v17)
  {
    xpc_dictionary_set_BOOL(v10, *v17, 1);
  }

LABEL_13:
  v18 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, (v18 & 0x80) != 0);
  v19 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, v19 & 0x100);
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_ALLOW_BATTERY, ([(BTXPCTimer *)self options]& 0x200) != 0);
  v20 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_MEMORY_INTENSIVE, (v20 & 0x400) != 0);
  v21 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_CPU_INTENSIVE, (v21 & 0x800) != 0);
  v22 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_DISK_INTENSIVE, (v22 & 0x1000) != 0);
  v23 = [(BTXPCTimer *)self duetActivitySchedulerData];
  if (v23)
  {
    xpc_dictionary_set_value(v10, XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA, v23);
  }

  return v10;
}

- (void)invalidate
{
  v3 = [(BTXPCTimer *)self name];
  v4 = [v3 UTF8String];

  v5 = sub_100005C14("BTXPCTimer");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BTXPCTimer Unregistering XPC activity %s", &v13, 0xCu);
  }

  v6 = [(BTXPCTimer *)self activity];
  if (v6)
  {
    v7 = v6;
    v8 = [(BTXPCTimer *)self activity];
    v9 = xpc_activity_set_state(v8, 5);

    if (v9)
    {
      v10 = sub_100005C14("BTXPCTimer");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BTXPCTimer XPC activity marked DONE for %s", &v13, 0xCu);
      }
    }
  }

  xpc_activity_unregister(v4);
  v11 = [(BTXPCTimer *)self block];

  if (v11)
  {
    [(BTXPCTimer *)self setBlock:0];
  }

  v12 = [(BTXPCTimer *)self activity];

  if (v12)
  {
    [(BTXPCTimer *)self setActivity:0];
  }
}

- (id)activityHandler
{
  v3 = [(BTXPCTimer *)self criteria];
  v4 = [(BTXPCTimer *)self name];
  v5 = [(BTXPCTimer *)self date];
  [v5 timeIntervalSinceNow];
  v7 = v6;

  v8 = sub_100005C14("BTXPCTimer");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v7 < 0.0)
    {
      v7 = 0.0;
    }

    v9 = [(BTXPCTimer *)self name];
    [(BTXPCTimer *)self gracePeriod];
    *buf = 138412802;
    v23 = v9;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BTXPCTimer: Scheduling XPC activity (%@) in %lld ~%lf grace.", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v11 = [(BTXPCTimer *)self block];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008E664;
  v17[3] = &unk_1002B9A80;
  objc_copyWeak(&v21, buf);
  v18 = v4;
  v19 = v3;
  v20 = v11;
  v12 = v11;
  v13 = v3;
  v14 = v4;
  v15 = objc_retainBlock(v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  return v15;
}

- (BOOL)isActive
{
  v3 = [(BTXPCTimer *)self activity];

  if (!v3)
  {
    return 0;
  }

  v4 = [(BTXPCTimer *)self activity];
  state = xpc_activity_get_state(v4);

  v6 = sub_100005C14("BTXPCTimer");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(BTXPCTimer *)self name];
    v9 = 138412546;
    v10 = v7;
    v11 = 2048;
    v12 = state;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BTXPCTimer %@ current state %ld", &v9, 0x16u);
  }

  return state != 5;
}

- (void)handleActivity
{
  v6 = [(BTXPCTimer *)self name];
  v3 = v6;
  v4 = [v6 UTF8String];
  v5 = [(BTXPCTimer *)self activityHandler];
  xpc_activity_register(v4, XPC_ACTIVITY_CHECK_IN, v5);
}

@end