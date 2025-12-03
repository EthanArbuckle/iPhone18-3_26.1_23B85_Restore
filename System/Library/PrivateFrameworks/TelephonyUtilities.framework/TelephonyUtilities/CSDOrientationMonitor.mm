@interface CSDOrientationMonitor
- (CSDOrientationMonitor)init;
- (CSDOrientationMonitor)initWithCallCenterObserver:(id)observer;
- (void)_updateCurrentOrientationValue;
- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation;
- (void)callCenterObserver:(id)observer callChanged:(id)changed;
- (void)dealloc;
@end

@implementation CSDOrientationMonitor

- (CSDOrientationMonitor)init
{
  v3 = objc_alloc_init(CSDCallCenterObserver);
  v4 = [(CSDOrientationMonitor *)self initWithCallCenterObserver:v3];

  return v4;
}

- (CSDOrientationMonitor)initWithCallCenterObserver:(id)observer
{
  observerCopy = observer;
  v11.receiver = self;
  v11.super_class = CSDOrientationMonitor;
  v6 = [(CSDOrientationMonitor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callCenterObserver, observer);
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
  accelerometer = [(CSDOrientationMonitor *)self accelerometer];
  -[CSDOrientationMonitor setCurrentOrientation:](self, "setCurrentOrientation:", [accelerometer currentDeviceOrientation]);
}

- (void)callCenterObserver:(id)observer callChanged:(id)changed
{
  changedCopy = changed;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = changedCopy;
    provider = [v6 provider];
    if (([provider isSystemProvider] & 1) == 0 && objc_msgSend(v6, "isVideo"))
    {
      [v6 callStatus];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  callCenterObserver = [(CSDOrientationMonitor *)self callCenterObserver];
  callContainer = [callCenterObserver callContainer];
  currentVideoCalls = [callContainer currentVideoCalls];

  v11 = [currentVideoCalls countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(currentVideoCalls);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        provider2 = [v14 provider];
        if ([provider2 isSystemProvider])
        {
        }

        else
        {
          callStatus = [v14 callStatus];

          if (callStatus == 1)
          {
            v11 = 1;
            goto LABEL_18;
          }
        }
      }

      v11 = [currentVideoCalls countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation
{
  [(CSDOrientationMonitor *)self _updateCurrentOrientationValue];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  callCenterObserver = [(CSDOrientationMonitor *)self callCenterObserver];
  callContainer = [callCenterObserver callContainer];
  currentVideoCalls = [callContainer currentVideoCalls];

  v9 = [currentVideoCalls countByEnumeratingWithState:&v18 objects:v24 count:16];
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
          objc_enumerationMutation(currentVideoCalls);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        provider = [v14 provider];
        if (([provider isSystemProvider]& 1) != 0)
        {
          goto LABEL_7;
        }

        callStatus = [v14 callStatus];

        if (callStatus == 1)
        {
          provider = sub_100004778();
          if (os_log_type_enabled(provider, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            orientationCopy = orientation;
            _os_log_impl(&_mh_execute_header, provider, OS_LOG_TYPE_DEFAULT, "accelerometer orientation changed to %ld", buf, 0xCu);
          }

LABEL_7:

          continue;
        }
      }

      v11 = [currentVideoCalls countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v11);
  }
}

@end