@interface BKFirstBootDetector
+ (id)sharedInstance;
- (BKFirstBootDetector)initWithSystemAppSentinel:(id)a3 firstBootToken:(id)a4 alternateSystemAppManager:(id)a5;
- (BOOL)isFirstBoot;
- (NSString)description;
- (void)_queue_finishBootingIfNecessaryAndTellObservers:(BOOL)a3;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)systemShellDidFinishLaunching:(id)a3;
- (void)systemShellWillBootstrap;
@end

@implementation BKFirstBootDetector

- (void)_queue_finishBootingIfNecessaryAndTellObservers:(BOOL)a3
{
  v3 = a3;
  queue = self->_queue;
  BSDispatchQueueAssert();
  if ([(BKFirstBootDetector *)self isFirstBoot])
  {
    v6 = [(BKSystemShellSentinel *)self->_systemAppSentinel primarySystemShell];
    v7 = [(BKAlternateSystemAppManager *)self->_alternateSystemAppManager alternateSystemAppBundleIdentifier];
    if (v6)
    {
      v8 = [v6 bundleIdentifier];
      v9 = [v8 isEqualToString:v7];

      if ((v9 & 1) == 0)
      {
        v10 = sub_1000524BC();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "First boot is finished", buf, 2u);
        }

        os_unfair_lock_lock(&self->_lock);
        [(BKFirstBootTokenProviding *)self->_lock_firstBootToken unsetToken];
        self->_lock_isFirstBoot = 0;
        os_unfair_lock_unlock(&self->_lock);
        if (v3)
        {
          v11 = [(NSHashTable *)self->_queue_observers allObjects];
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v17;
            do
            {
              v15 = 0;
              do
              {
                if (*v17 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [*(*(&v16 + 1) + 8 * v15) firstBootDetectorDidFinishFirstBoot:self];
                v15 = v15 + 1;
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
            }

            while (v13);
          }
        }
      }
    }
  }
}

- (void)systemShellWillBootstrap
{
  v3 = sub_1000524BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "First boot: systemShellWillBootstrap", v4, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(BKFirstBootTokenProviding *)self->_lock_firstBootToken unsetToken];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)systemShellDidFinishLaunching:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041DA0;
  block[3] = &unk_1000FD150;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100041E44;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100041EE8;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (BOOL)isFirstBoot
{
  os_unfair_lock_lock(&self->_lock);
  lock_isFirstBoot = self->_lock_isFirstBoot;
  os_unfair_lock_unlock(&self->_lock);
  return lock_isFirstBoot;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendBool:self->_lock_isFirstBoot withName:@"isFirstBoot"];
  v5 = [v3 appendObject:self->_lock_firstBootToken withName:@"firstBootToken"];
  v6 = [v3 build];

  return v6;
}

- (BKFirstBootDetector)initWithSystemAppSentinel:(id)a3 firstBootToken:(id)a4 alternateSystemAppManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = BKFirstBootDetector;
  v12 = [(BKFirstBootDetector *)&v26 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_systemAppSentinel, a3);
    objc_storeStrong(&v13->_lock_firstBootToken, a4);
    objc_storeStrong(&v13->_alternateSystemAppManager, a5);
    v14 = [[NSHashTable alloc] initWithOptions:517 capacity:2];
    queue_observers = v13->_queue_observers;
    v13->_queue_observers = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    queue = v13->_queue;
    v13->_queue = SerialWithQoS;

    v20 = [v10 isTokenSet];
    v13->_lock_isFirstBoot = v20;
    v21 = v13->_queue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100042144;
    v23[3] = &unk_1000FCD90;
    v25 = v20;
    v24 = v13;
    dispatch_sync(v21, v23);
  }

  return v13;
}

+ (id)sharedInstance
{
  if (qword_100125EC0 != -1)
  {
    dispatch_once(&qword_100125EC0, &stru_1000FB018);
  }

  v3 = qword_100125EB8;

  return v3;
}

@end