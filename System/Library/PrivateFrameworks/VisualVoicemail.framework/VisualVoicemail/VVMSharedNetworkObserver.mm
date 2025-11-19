@interface VVMSharedNetworkObserver
+ (VVMSharedNetworkObserver)sharedInstance;
- (BOOL)isNetworkReachable;
- (VVMSharedNetworkObserver)init;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)networkReachabilityChanged:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)startObservingNetworkSync;
- (void)stopObservingNetworkSync;
@end

@implementation VVMSharedNetworkObserver

+ (VVMSharedNetworkObserver)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000841FC;
  block[3] = &unk_1000EF380;
  block[4] = a1;
  if (qword_10010D9A0 != -1)
  {
    dispatch_once(&qword_10010D9A0, block);
  }

  v2 = qword_10010D998;

  return v2;
}

- (VVMSharedNetworkObserver)init
{
  v9.receiver = self;
  v9.super_class = VVMSharedNetworkObserver;
  v2 = [(VVMSharedNetworkObserver *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->fLock._os_unfair_lock_opaque = 0;
    v2->fIsObservingNetwork = 0;
    v4 = +[NSMapTable weakToWeakObjectsMapTable];
    fDelegates = v3->fDelegates;
    v3->fDelegates = v4;

    v3->fIsNetworkReachable = 0;
    v6 = dispatch_queue_create("VVMSharedNetworkObserverQueue", 0);
    fQueue = v3->fQueue;
    v3->fQueue = v6;
  }

  return v3;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v7 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->fLock);
  [(NSMapTable *)self->fDelegates setObject:v6 forKey:v7];
  [(VVMSharedNetworkObserver *)self startObservingNetworkSync];
  os_unfair_lock_unlock(&self->fLock);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->fLock);
  [(NSMapTable *)self->fDelegates removeObjectForKey:v4];
  if (![(NSMapTable *)self->fDelegates count])
  {
    [(VVMSharedNetworkObserver *)self stopObservingNetworkSync];
  }

  os_unfair_lock_unlock(&self->fLock);
}

- (void)startObservingNetworkSync
{
  if (!self->fIsObservingNetwork)
  {
    v3 = +[CPNetworkObserver sharedNetworkObserver];
    self->fIsNetworkReachable = [v3 isNetworkReachable];

    fQueue = self->fQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000844D0;
    block[3] = &unk_1000EDEC8;
    block[4] = self;
    dispatch_async(fQueue, block);
    self->fIsObservingNetwork = 1;
  }
}

- (void)stopObservingNetworkSync
{
  if (self->fIsObservingNetwork)
  {
    block[7] = v2;
    block[8] = v3;
    fQueue = self->fQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000845D4;
    block[3] = &unk_1000EDEC8;
    block[4] = self;
    dispatch_async(fQueue, block);
    self->fIsObservingNetwork = 0;
  }
}

- (void)networkReachabilityChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:CPNetworkObserverNetworkReachableNotification];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:CPNetworkObserverReachable];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 BOOLValue];
      os_unfair_lock_lock(&self->fLock);
      self->fIsNetworkReachable = v9;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      obj = self->fDelegates;
      v10 = [(NSMapTable *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            v14 = [(NSMapTable *)self->fDelegates objectForKey:v13];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000848E0;
            block[3] = &unk_1000ED8D8;
            block[4] = v13;
            v17 = v9;
            dispatch_async(v14, block);
          }

          v10 = [(NSMapTable *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      os_unfair_lock_unlock(&self->fLock);
    }
  }
}

- (BOOL)isNetworkReachable
{
  os_unfair_lock_lock(&self->fLock);
  if (self->fIsObservingNetwork)
  {
    fIsNetworkReachable = self->fIsNetworkReachable;
    os_unfair_lock_unlock(&self->fLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->fLock);
    v4 = +[CPNetworkObserver sharedNetworkObserver];
    fIsNetworkReachable = [v4 isNetworkReachable];
  }

  return fIsNetworkReachable & 1;
}

@end