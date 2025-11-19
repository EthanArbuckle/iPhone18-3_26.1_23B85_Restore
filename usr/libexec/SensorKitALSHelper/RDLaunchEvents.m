@interface RDLaunchEvents
+ (void)initialize;
- (void)dealloc;
- (void)registerForXPCActivities:(id)a3;
- (void)registerForXPCEvent:(id)a3;
- (void)unregisterForXPCActivities:(id)a3;
@end

@implementation RDLaunchEvents

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_10002B280 = os_log_create("com.apple.SensorKit", "RDLaunchEvents");
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 24);
    objc_setProperty_nonatomic(self, v3, 0, 32);
    objc_setProperty_nonatomic(self, v4, 0, 16);
  }

  v5.receiver = self;
  v5.super_class = RDLaunchEvents;
  [(RDLaunchEvents *)&v5 dealloc];
}

- (void)registerForXPCActivities:(id)a3
{
  objc_initWeak(&location, self);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v4)
  {
    v6 = *v17;
    *&v5 = 138543362;
    v12 = v5;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(a3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = sub_100005AA0(self, v8);
        v10 = qword_10002B280;
        if (v9)
        {
          if (os_log_type_enabled(qword_10002B280, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v12;
            v22 = v8;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Registering for %{public}@", buf, 0xCu);
          }

          v11 = [v8 UTF8String];
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_1000061A8;
          handler[3] = &unk_100024B00;
          objc_copyWeak(&v15, &location);
          handler[4] = v8;
          xpc_activity_register(v11, XPC_ACTIVITY_CHECK_IN, handler);
          objc_destroyWeak(&v15);
        }

        else if (os_log_type_enabled(qword_10002B280, OS_LOG_TYPE_FAULT))
        {
          *buf = v12;
          v22 = v8;
          _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Failed to create an RDXPCActivity named %{public}@", buf, 0xCu);
        }
      }

      v4 = [a3 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v4);
  }

  objc_destroyWeak(&location);
}

- (void)unregisterForXPCActivities:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v13;
    *&v5 = 138543362;
    v11 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = qword_10002B280;
        if (os_log_type_enabled(qword_10002B280, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v11;
          v17 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unregistering for %{public}@", buf, 0xCu);
        }

        xpc_activity_unregister([v9 UTF8String]);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)registerForXPCEvent:(id)a3
{
  v4 = self;
  objc_initWeak(&location, self);
  v5 = [a3 UTF8String];
  if (v4)
  {
    v4 = v4->_q;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006740;
  v6[3] = &unk_100024B28;
  objc_copyWeak(&v7, &location);
  xpc_set_event_stream_handler(v5, &v4->super, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

@end