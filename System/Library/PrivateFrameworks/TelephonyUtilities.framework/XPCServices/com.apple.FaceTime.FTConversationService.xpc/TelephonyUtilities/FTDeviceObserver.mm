@interface FTDeviceObserver
- (BOOL)isBootLockEnabled;
- (FTDeviceObserver)initWithQueue:(id)queue;
- (FTDeviceObserver)initWithQueue:(id)queue dataSource:(id)source;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)removeDelegate:(id)delegate;
- (void)setBootLockEnabled:(BOOL)enabled;
@end

@implementation FTDeviceObserver

- (FTDeviceObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_alloc_init(FTDeviceDataSource);
  v6 = [(FTDeviceObserver *)self initWithQueue:queueCopy dataSource:v5];

  return v6;
}

- (FTDeviceObserver)initWithQueue:(id)queue dataSource:(id)source
{
  queueCopy = queue;
  sourceCopy = source;
  v18.receiver = self;
  v18.super_class = FTDeviceObserver;
  v9 = [(FTDeviceObserver *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_dataSource, source);
    v11 = objc_alloc_init(TUDelegateController);
    delegateController = v10->_delegateController;
    v10->_delegateController = v11;

    objc_initWeak(&location, v10);
    queue = v10->_queue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000B9CC;
    v15[3] = &unk_100018738;
    objc_copyWeak(&v16, &location);
    dispatch_async(queue, v15);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (BOOL)isBootLockEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(FTDeviceObserver *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000BC3C;
  v5[3] = &unk_100018820;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setBootLockEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = [(FTDeviceObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_bootLockEnabled != enabledCopy)
  {
    self->_bootLockEnabled = enabledCopy;
    delegateController = [(FTDeviceObserver *)self delegateController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000BD0C;
    v7[3] = &unk_100018848;
    v7[4] = self;
    [delegateController enumerateDelegatesUsingBlock:v7];
  }
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  delegateController = [(FTDeviceObserver *)self delegateController];
  [delegateController addDelegate:delegateCopy queue:queueCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateController = [(FTDeviceObserver *)self delegateController];
  [delegateController removeDelegate:delegateCopy];
}

@end