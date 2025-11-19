@interface VVMSharedCallStatusObserver
+ (id)sharedCallStatusObserver;
- (VVMSharedCallStatusObserver)init;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)handleCallStatusChangedNotification:(id)a3;
- (void)notifyCallStatusDisconnected:(id)a3;
- (void)removeDelegate:(id)a3;
@end

@implementation VVMSharedCallStatusObserver

+ (id)sharedCallStatusObserver
{
  if (qword_10010D8D8 != -1)
  {
    sub_10009CF2C();
  }

  v3 = qword_10010D8D0;

  return v3;
}

- (VVMSharedCallStatusObserver)init
{
  v3 = sub_1000430EC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v28 = "";
    v29 = 2080;
    v30 = "";
    v31 = 2112;
    v32 = objc_opt_class();
    v33 = 2048;
    v34 = self;
    v4 = v32;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p Creating", buf, 0x2Au);
  }

  v26.receiver = self;
  v26.super_class = VVMSharedCallStatusObserver;
  v5 = [(VVMSharedCallStatusObserver *)&v26 init];
  v6 = v5;
  if (v5)
  {
    v5->lock._os_unfair_lock_opaque = 0;
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 bundleIdentifier];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [NSString stringWithFormat:@"%@.%@", v8, v10];
    v12 = v11;
    v13 = dispatch_queue_create([v11 UTF8String], 0);
    queue = v6->queue;
    v6->queue = v13;

    v15 = +[NSMapTable weakToWeakObjectsMapTable];
    delegates = v6->delegates;
    v6->delegates = v15;

    v17 = sub_1000430EC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      *buf = 136315650;
      v28 = "";
      v29 = 2080;
      v30 = "";
      v31 = 2112;
      v32 = v18;
      v19 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ Creating TUCallCenter instance", buf, 0x20u);
    }

    v20 = +[TUCallCenter sharedInstance];
    v21 = sub_1000430EC();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      *buf = 136315650;
      v28 = "";
      v29 = 2080;
      v30 = "";
      v31 = 2112;
      v32 = v22;
      v23 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ Adding observer", buf, 0x20u);
    }

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v6 selector:"handleCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = sub_1000430EC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v8 = "";
    v9 = 2080;
    v10 = "";
    v11 = 2112;
    v12 = objc_opt_class();
    v13 = 2048;
    v14 = self;
    v4 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p Deleting", buf, 0x2Au);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = VVMSharedCallStatusObserver;
  [(VVMSharedCallStatusObserver *)&v6 dealloc];
}

- (void)handleCallStatusChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_1000430EC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [v4 name];
    v21 = 136315906;
    v22 = "";
    v23 = 2080;
    v24 = "";
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling <%@>", &v21, 0x2Au);
  }

  v8 = [v4 name];
  v9 = [v8 isEqualToString:TUCallCenterCallStatusChangedNotification];

  if (v9)
  {
    v10 = [v4 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v4 object];
      v12 = [v11 provider];
      v13 = [v12 isTelephonyProvider];

      if (v13)
      {
        v14 = sub_1000430EC();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_opt_class();
          v16 = [v11 status];
          v21 = 136315906;
          v22 = "";
          v23 = 2080;
          v24 = "";
          v25 = 2112;
          v26 = v15;
          v27 = 1024;
          LODWORD(v28) = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling CallStatus changed to %d", &v21, 0x26u);
        }

        if ([v11 status] == 6)
        {
          v17 = [v11 localSenderIdentityUUID];
          v18 = sub_1000430EC();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = objc_opt_class();
            v21 = 136315906;
            v22 = "";
            v23 = 2080;
            v24 = "";
            v25 = 2112;
            v26 = v19;
            v27 = 2112;
            v28 = v17;
            v20 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is notifying delegate CallStatus Disconnected for uuid %@", &v21, 0x2Au);
          }

          [(VVMSharedCallStatusObserver *)self notifyCallStatusDisconnected:v17];
        }
      }
    }
  }
}

- (void)notifyCallStatusDisconnected:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = self->delegates;
  v5 = [(NSMapTable *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->delegates objectForKey:v8];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100043818;
        block[3] = &unk_1000EE260;
        block[4] = v8;
        v12 = v4;
        dispatch_async(v9, block);
      }

      v5 = [(NSMapTable *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->lock);
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->lock);
  [(NSMapTable *)self->delegates setObject:v6 forKey:v7];

  os_unfair_lock_unlock(&self->lock);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->lock);
  [(NSMapTable *)self->delegates removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->lock);
}

@end