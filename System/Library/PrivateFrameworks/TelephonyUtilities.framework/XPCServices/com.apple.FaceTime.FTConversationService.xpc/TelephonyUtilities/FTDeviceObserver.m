@interface FTDeviceObserver
- (BOOL)isBootLockEnabled;
- (FTDeviceObserver)initWithQueue:(id)a3;
- (FTDeviceObserver)initWithQueue:(id)a3 dataSource:(id)a4;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)removeDelegate:(id)a3;
- (void)setBootLockEnabled:(BOOL)a3;
@end

@implementation FTDeviceObserver

- (FTDeviceObserver)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(FTDeviceDataSource);
  v6 = [(FTDeviceObserver *)self initWithQueue:v4 dataSource:v5];

  return v6;
}

- (FTDeviceObserver)initWithQueue:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = FTDeviceObserver;
  v9 = [(FTDeviceObserver *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_dataSource, a4);
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
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(FTDeviceObserver *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000BC3C;
  v5[3] = &unk_100018820;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setBootLockEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(FTDeviceObserver *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_bootLockEnabled != v3)
  {
    self->_bootLockEnabled = v3;
    v6 = [(FTDeviceObserver *)self delegateController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000BD0C;
    v7[3] = &unk_100018848;
    v7[4] = self;
    [v6 enumerateDelegatesUsingBlock:v7];
  }
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FTDeviceObserver *)self delegateController];
  [v8 addDelegate:v7 queue:v6];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(FTDeviceObserver *)self delegateController];
  [v5 removeDelegate:v4];
}

@end