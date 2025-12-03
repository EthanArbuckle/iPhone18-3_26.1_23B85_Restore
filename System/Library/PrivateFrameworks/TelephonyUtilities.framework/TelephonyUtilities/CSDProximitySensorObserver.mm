@interface CSDProximitySensorObserver
- (BOOL)isCovered;
- (CSDProximitySensorObserver)initWithQueue:(id)queue;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)dealloc;
- (void)removeDelegate:(id)delegate;
- (void)setCovered:(BOOL)covered;
- (void)updateCovered;
@end

@implementation CSDProximitySensorObserver

- (void)updateCovered
{
  v3 = BKSHIDServicesGetObjectWithinProximity() != 0;

  [(CSDProximitySensorObserver *)self setCovered:v3];
}

- (CSDProximitySensorObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = CSDProximitySensorObserver;
  v5 = [(CSDProximitySensorObserver *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v5->_accessorLock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(TUDelegateController);
    delegateController = v6->_delegateController;
    v6->_delegateController = v7;

    objc_initWeak(&location, v6);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100264630;
    v17 = &unk_10061A740;
    objc_copyWeak(&v18, &location);
    v9 = objc_retainBlock(&v14);
    v10 = [TUNotifyObserver alloc];
    v11 = [v10 initWithNotificationName:@"com.apple.backboard.proximity.changed" queue:queueCopy callback:{v9, v14, v15, v16, v17}];
    coveredNotifyObserver = v6->_coveredNotifyObserver;
    v6->_coveredNotifyObserver = v11;

    [(TUNotifyObserver *)v6->_coveredNotifyObserver beginObserving];
    [(CSDProximitySensorObserver *)v6 updateCovered];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  [(TUNotifyObserver *)self->_coveredNotifyObserver endObserving];
  v3.receiver = self;
  v3.super_class = CSDProximitySensorObserver;
  [(CSDProximitySensorObserver *)&v3 dealloc];
}

- (BOOL)isCovered
{
  os_unfair_lock_lock(&self->_accessorLock);
  covered = self->_covered;
  os_unfair_lock_unlock(&self->_accessorLock);
  return covered;
}

- (void)setCovered:(BOOL)covered
{
  coveredCopy = covered;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_covered != coveredCopy)
  {
    self->_covered = coveredCopy;
    delegateController = [(CSDProximitySensorObserver *)self delegateController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100264854;
    v6[3] = &unk_10061FE30;
    v6[4] = self;
    v7 = coveredCopy;
    [delegateController enumerateDelegatesUsingBlock:v6];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  delegateController = [(CSDProximitySensorObserver *)self delegateController];
  [delegateController addDelegate:delegateCopy queue:queueCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateController = [(CSDProximitySensorObserver *)self delegateController];
  [delegateController removeDelegate:delegateCopy];
}

@end