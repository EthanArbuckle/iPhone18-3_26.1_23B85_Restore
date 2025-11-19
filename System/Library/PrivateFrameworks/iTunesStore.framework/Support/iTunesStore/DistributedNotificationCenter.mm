@interface DistributedNotificationCenter
+ (id)defaultCenter;
+ (void)observeXPCServer:(id)a3;
+ (void)registerObserverWithMessage:(id)a3 connection:(id)a4;
+ (void)unregisterObserverWithMessage:(id)a3 connection:(id)a4;
- (DistributedNotificationCenter)init;
- (void)_addObserverWithPortName:(id)a3 notificationName:(id)a4;
- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5;
- (void)_removeObserverWithPortName:(id)a3 notificationName:(id)a4;
- (void)_saveRegisteredPortNames;
- (void)dealloc;
- (void)postNotificationName:(__CFString *)a3;
@end

@implementation DistributedNotificationCenter

- (DistributedNotificationCenter)init
{
  v16.receiver = self;
  v16.super_class = DistributedNotificationCenter;
  v11 = [(DistributedNotificationCenter *)&v16 init];
  if (v11)
  {
    v11->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.DistributedNotificationCenter", 0);
    v11->_observers = objc_alloc_init(NSMutableDictionary);
    v2 = CFPreferencesCopyAppValue(@"DistributedNotificationObservers", kSSUserDefaultsIdentifier);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v3 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v13;
        do
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v13 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = *(*(&v12 + 1) + 8 * i);
            v8 = [v2 objectForKey:v7];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v8 count])
                {
                  v9 = [[DistributedNotificationObserver alloc] initWithServiceName:v7];
                  [(DistributedNotificationObserver *)v9 addObservedNotificationNames:v8];
                  if (v9)
                  {
                    [(NSMutableDictionary *)v11->_observers setObject:v9 forKey:v7];
                  }
                }
              }
            }
          }

          v4 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
        }

        while (v4);
      }
    }
  }

  return v11;
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);

  v3.receiver = self;
  v3.super_class = DistributedNotificationCenter;
  [(DistributedNotificationCenter *)&v3 dealloc];
}

+ (id)defaultCenter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019DC38;
  block[3] = &unk_100327378;
  block[4] = a1;
  if (qword_100383FF0 != -1)
  {
    dispatch_once(&qword_100383FF0, block);
  }

  return qword_100383FE8;
}

- (void)postNotificationName:(__CFString *)a3
{
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10019DCF8;
  v6[3] = &unk_100327808;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(dispatchQueue, v6);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, a3, 0, 0, 1u);
}

+ (void)observeXPCServer:(id)a3
{
  [a3 addObserver:a1 selector:"registerObserverWithMessage:connection:" forMessage:42];

  [a3 addObserver:a1 selector:"unregisterObserverWithMessage:connection:" forMessage:43];
}

+ (void)registerObserverWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10019DF40;
  v4[3] = &unk_100327350;
  v4[4] = a3;
  [+[DistributedNotificationCenter defaultCenter](DistributedNotificationCenter "defaultCenter")];
}

+ (void)unregisterObserverWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10019E1CC;
  v4[3] = &unk_1003273E0;
  v4[4] = a3;
  v4[5] = a1;
  [+[DistributedNotificationCenter defaultCenter](DistributedNotificationCenter "defaultCenter")];
}

- (void)_addObserverWithPortName:(id)a3 notificationName:(id)a4
{
  v7 = [(NSMutableDictionary *)self->_observers objectForKey:?];
  if (!v7)
  {
    v8 = [[DistributedNotificationObserver alloc] initWithServiceName:a3];
    [(NSMutableDictionary *)self->_observers setObject:v8 forKey:a3];
    v7 = v8;
  }

  v9 = v7;
  [(DistributedNotificationObserver *)v7 addObservedNotificationName:a4];
  [(DistributedNotificationCenter *)self _saveRegisteredPortNames];
}

- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5
{
  [+[Daemon daemon](Daemon "daemon")];
  xpc_retain(a4);
  xpc_retain(a3);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019E510;
  block[3] = &unk_100327408;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  dispatch_async(dispatchQueue, block);
}

- (void)_removeObserverWithPortName:(id)a3 notificationName:(id)a4
{
  v7 = [(NSMutableDictionary *)self->_observers objectForKey:?];
  if (v7)
  {
    v8 = v7;
    [v7 removeObservedNotificationName:a4];
    if (![objc_msgSend(v8 "observedNotificationNames")])
    {
      [(NSMutableDictionary *)self->_observers removeObjectForKey:a3];
    }

    [(DistributedNotificationCenter *)self _saveRegisteredPortNames];
  }
}

- (void)_saveRegisteredPortNames
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = self->_observers;
  v5 = [(NSMutableDictionary *)observers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(observers);
        }

        [v3 setObject:objc_msgSend(-[NSMutableDictionary objectForKey:](self->_observers forKey:{"objectForKey:", *(*(&v10 + 1) + 8 * i)), "observedNotificationNames"), *(*(&v10 + 1) + 8 * i)}];
      }

      v6 = [(NSMutableDictionary *)observers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = kSSUserDefaultsIdentifier;
  CFPreferencesSetAppValue(@"DistributedNotificationObservers", v3, kSSUserDefaultsIdentifier);
  CFPreferencesAppSynchronize(v9);
}

@end