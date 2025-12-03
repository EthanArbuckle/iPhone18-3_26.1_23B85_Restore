@interface BTXPCTimer
- (BOOL)isActive;
- (BTXPCTimer)initWithName:(id)name date:(id)date gracePeriod:(double)period priority:(int64_t)priority options:(unint64_t)options block:(id)block;
- (BTXPCTimer)initWithName:(id)name timeInterval:(double)interval gracePeriod:(double)period priority:(int64_t)priority options:(unint64_t)options block:(id)block;
- (BTXPCTimer)initWithName:(id)name timeInterval:(double)interval priority:(int64_t)priority options:(unint64_t)options block:(id)block;
- (id)activityHandler;
- (id)criteria;
- (void)handleActivity;
- (void)invalidate;
@end

@implementation BTXPCTimer

- (BTXPCTimer)initWithName:(id)name date:(id)date gracePeriod:(double)period priority:(int64_t)priority options:(unint64_t)options block:(id)block
{
  nameCopy = name;
  dateCopy = date;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = BTXPCTimer;
  v17 = [(BTXPCTimer *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(BTXPCTimer *)v17 setName:nameCopy];
    [(BTXPCTimer *)v18 setDate:dateCopy];
    [(BTXPCTimer *)v18 setGracePeriod:period];
    [(BTXPCTimer *)v18 setPriority:priority];
    [(BTXPCTimer *)v18 setOptions:options];
    [(BTXPCTimer *)v18 setBlock:blockCopy];
    [(BTXPCTimer *)v18 handleActivity];
  }

  return v18;
}

- (BTXPCTimer)initWithName:(id)name timeInterval:(double)interval gracePeriod:(double)period priority:(int64_t)priority options:(unint64_t)options block:(id)block
{
  blockCopy = block;
  nameCopy = name;
  v16 = [NSDate dateWithTimeIntervalSinceNow:interval];
  v17 = [(BTXPCTimer *)self initWithName:nameCopy date:v16 gracePeriod:priority priority:options options:blockCopy block:period];

  return v17;
}

- (BTXPCTimer)initWithName:(id)name timeInterval:(double)interval priority:(int64_t)priority options:(unint64_t)options block:(id)block
{
  blockCopy = block;
  nameCopy = name;
  v14 = [NSDate dateWithTimeIntervalSinceNow:interval];
  v15 = [(BTXPCTimer *)self initWithName:nameCopy date:v14 gracePeriod:priority priority:options options:blockCopy block:0.0];

  return v15;
}

- (id)criteria
{
  date = [(BTXPCTimer *)self date];
  [date timeIntervalSinceNow];
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
  priority = [(BTXPCTimer *)self priority];
  v12 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  if (priority != 1)
  {
    v12 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  }

  xpc_dictionary_set_string(v10, XPC_ACTIVITY_PRIORITY, *v12);
  options = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_POWER_NAP, options & 1);
  options2 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, (options2 & 4) != 0);
  options3 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, (options3 & 2) != 0);
  options4 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_USES_DUET_POWER_BUDGETING, (options4 & 8) != 0);
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
  options5 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, (options5 & 0x80) != 0);
  options6 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, options6 & 0x100);
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_ALLOW_BATTERY, ([(BTXPCTimer *)self options]& 0x200) != 0);
  options7 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_MEMORY_INTENSIVE, (options7 & 0x400) != 0);
  options8 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_CPU_INTENSIVE, (options8 & 0x800) != 0);
  options9 = [(BTXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_DISK_INTENSIVE, (options9 & 0x1000) != 0);
  duetActivitySchedulerData = [(BTXPCTimer *)self duetActivitySchedulerData];
  if (duetActivitySchedulerData)
  {
    xpc_dictionary_set_value(v10, XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA, duetActivitySchedulerData);
  }

  return v10;
}

- (void)invalidate
{
  name = [(BTXPCTimer *)self name];
  uTF8String = [name UTF8String];

  v5 = sub_100005C14("BTXPCTimer");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = uTF8String;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BTXPCTimer Unregistering XPC activity %s", &v13, 0xCu);
  }

  activity = [(BTXPCTimer *)self activity];
  if (activity)
  {
    v7 = activity;
    activity2 = [(BTXPCTimer *)self activity];
    v9 = xpc_activity_set_state(activity2, 5);

    if (v9)
    {
      v10 = sub_100005C14("BTXPCTimer");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = uTF8String;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BTXPCTimer XPC activity marked DONE for %s", &v13, 0xCu);
      }
    }
  }

  xpc_activity_unregister(uTF8String);
  block = [(BTXPCTimer *)self block];

  if (block)
  {
    [(BTXPCTimer *)self setBlock:0];
  }

  activity3 = [(BTXPCTimer *)self activity];

  if (activity3)
  {
    [(BTXPCTimer *)self setActivity:0];
  }
}

- (id)activityHandler
{
  criteria = [(BTXPCTimer *)self criteria];
  name = [(BTXPCTimer *)self name];
  date = [(BTXPCTimer *)self date];
  [date timeIntervalSinceNow];
  v7 = v6;

  v8 = sub_100005C14("BTXPCTimer");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v7 < 0.0)
    {
      v7 = 0.0;
    }

    name2 = [(BTXPCTimer *)self name];
    [(BTXPCTimer *)self gracePeriod];
    *buf = 138412802;
    v23 = name2;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BTXPCTimer: Scheduling XPC activity (%@) in %lld ~%lf grace.", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  block = [(BTXPCTimer *)self block];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008E664;
  v17[3] = &unk_1002B9A80;
  objc_copyWeak(&v21, buf);
  v18 = name;
  v19 = criteria;
  v20 = block;
  v12 = block;
  v13 = criteria;
  v14 = name;
  v15 = objc_retainBlock(v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  return v15;
}

- (BOOL)isActive
{
  activity = [(BTXPCTimer *)self activity];

  if (!activity)
  {
    return 0;
  }

  activity2 = [(BTXPCTimer *)self activity];
  state = xpc_activity_get_state(activity2);

  v6 = sub_100005C14("BTXPCTimer");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [(BTXPCTimer *)self name];
    v9 = 138412546;
    v10 = name;
    v11 = 2048;
    v12 = state;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BTXPCTimer %@ current state %ld", &v9, 0x16u);
  }

  return state != 5;
}

- (void)handleActivity
{
  name = [(BTXPCTimer *)self name];
  v3 = name;
  uTF8String = [name UTF8String];
  activityHandler = [(BTXPCTimer *)self activityHandler];
  xpc_activity_register(uTF8String, XPC_ACTIVITY_CHECK_IN, activityHandler);
}

@end