@interface CSDOrientationMonitor
- (CSDOrientationMonitor)init;
- (CSDOrientationMonitor)initWithCallCenterObserver:(id)a3;
- (void)_updateCurrentOrientationValue;
- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4;
- (void)callCenterObserver:(id)a3 callChanged:(id)a4;
- (void)dealloc;
@end

@implementation CSDOrientationMonitor

- (CSDOrientationMonitor)init
{
  v3 = objc_alloc_init(CSDCallCenterObserver);
  v4 = [(CSDOrientationMonitor *)self initWithCallCenterObserver:v3];

  return v4;
}

- (CSDOrientationMonitor)initWithCallCenterObserver:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CSDOrientationMonitor;
  v6 = [(CSDOrientationMonitor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callCenterObserver, a3);
    [(CSDCallCenterObserver *)v7->_callCenterObserver setTriggers:1];
    [(CSDCallCenterObserver *)v7->_callCenterObserver setDelegate:v7];
    v8 = objc_alloc_init(BKSAccelerometer);
    accelerometer = v7->_accelerometer;
    v7->_accelerometer = v8;

    [(BKSAccelerometer *)v7->_accelerometer setDelegate:v7];
    [(CSDOrientationMonitor *)v7 _updateCurrentOrientationValue];
  }

  return v7;
}

- (void)dealloc
{
  [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:0];
  [(BKSAccelerometer *)self->_accelerometer setPassiveOrientationEvents:1];
  [(BKSAccelerometer *)self->_accelerometer setDelegate:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDOrientationMonitor;
  [(CSDOrientationMonitor *)&v4 dealloc];
}

- (void)_updateCurrentOrientationValue
{
  v3 = [(CSDOrientationMonitor *)self accelerometer];
  -[CSDOrientationMonitor setCurrentOrientation:](self, "setCurrentOrientation:", [v3 currentDeviceOrientation]);
}

- (void)callCenterObserver:(id)a3 callChanged:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 provider];
    if (([v7 isSystemProvider] & 1) == 0 && objc_msgSend(v6, "isVideo"))
    {
      [v6 callStatus];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(CSDOrientationMonitor *)self callCenterObserver];
  v9 = [v8 callContainer];
  v10 = [v9 currentVideoCalls];

  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [v14 provider];
        if ([v15 isSystemProvider])
        {
        }

        else
        {
          v16 = [v14 callStatus];

          if (v16 == 1)
          {
            v11 = 1;
            goto LABEL_18;
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  [(CSDOrientationMonitor *)self setOrientationEventsEnabled:v11];
}

- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4
{
  [(CSDOrientationMonitor *)self _updateCurrentOrientationValue];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(CSDOrientationMonitor *)self callCenterObserver];
  v7 = [v6 callContainer];
  v8 = [v7 currentVideoCalls];

  v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v19;
    *&v10 = 134217984;
    v17 = v10;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 provider];
        if (([v15 isSystemProvider]& 1) != 0)
        {
          goto LABEL_7;
        }

        v16 = [v14 callStatus];

        if (v16 == 1)
        {
          v15 = sub_100004778();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v23 = a4;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "accelerometer orientation changed to %ld", buf, 0xCu);
          }

LABEL_7:

          continue;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v11);
  }
}

@end