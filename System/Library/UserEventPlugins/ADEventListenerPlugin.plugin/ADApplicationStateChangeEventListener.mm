@interface ADApplicationStateChangeEventListener
- (ADApplicationStateChangeEventListener)init;
- (void)applicationStateChanged:(id)changed;
- (void)dealloc;
@end

@implementation ADApplicationStateChangeEventListener

- (ADApplicationStateChangeEventListener)init
{
  v9.receiver = self;
  v9.super_class = ADApplicationStateChangeEventListener;
  v2 = [(ADApplicationStateChangeEventListener *)&v9 init];
  if (v2)
  {
    gADEventListenerLogObject = os_log_create("com.apple.osanalytics.aggd_event_listener", "default");
    v2->_activeBundles = objc_alloc_init(NSMutableDictionary);
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v2->_session_queue = dispatch_queue_create("com.apple.ADSessionSync", v3);
    v4 = objc_alloc_init(BKSApplicationStateMonitor);
    v2->_appStateMonitor = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_EE0;
    v8[3] = &unk_4190;
    v8[4] = v2;
    [(BKSApplicationStateMonitor *)v4 setHandler:v8];
    session_queue = v2->_session_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_11D8;
    v7[3] = &unk_41B8;
    v7[4] = v2;
    notify_register_dispatch("com.apple.session.dump", &unk_4E98, session_queue, v7);
  }

  return v2;
}

- (void)dealloc
{
  [(BKSApplicationStateMonitor *)self->_appStateMonitor setHandler:0];

  dispatch_release(self->_session_queue);
  v3.receiver = self;
  v3.super_class = ADApplicationStateChangeEventListener;
  [(ADApplicationStateChangeEventListener *)&v3 dealloc];
}

- (void)applicationStateChanged:(id)changed
{
  v5 = mach_absolute_time();
  v6 = *&qword_4EA0;
  if (*&qword_4EA0 == 0.0)
  {
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v8) = info.denom;
    LODWORD(v7) = info.numer;
    v6 = v7 / v8 * 0.000000001;
    *&qword_4EA0 = v6;
  }

  v9 = [changed objectForKey:BKSApplicationStateProcessIDKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [v9 intValue];
  }

  else
  {
    intValue = 0xFFFFFFFFLL;
  }

  v11 = BKSApplicationStateDisplayIDKey;
  v12 = [changed objectForKey:BKSApplicationStateDisplayIDKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v12 isEqualToString:@"com.apple.webapp"] && (intValue & 0x80000000) == 0)
    {
      v12 = [-[BKSApplicationStateMonitor applicationInfoForPID:](self->_appStateMonitor applicationInfoForPID:{intValue), "objectForKeyedSubscript:", v11}];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [changed objectForKey:BKSApplicationStateKey];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v6 * v5;
        intValue2 = [v13 intValue];
        if (intValue2 == 32)
        {
          v16 = 8;
        }

        else
        {
          v16 = intValue2;
        }

        [changed objectForKey:BKSApplicationStateExtensionKey];
        session_queue = self->_session_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_14FC;
        block[3] = &unk_41E0;
        block[4] = self;
        block[5] = v12;
        *&block[6] = v14;
        v19 = v16;
        v20 = intValue;
        dispatch_async(session_queue, block);
      }
    }
  }
}

@end