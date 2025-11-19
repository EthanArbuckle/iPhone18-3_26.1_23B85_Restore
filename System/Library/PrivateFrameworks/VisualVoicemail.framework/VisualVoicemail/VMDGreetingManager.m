@interface VMDGreetingManager
- (VMDGreetingManager)initWithDataSource:(id)a3;
- (void)greetingChangedByCarrier:(id)a3;
- (void)greetingDataSource:(id)a3 greetingDidChangeForAccountUUID:(id)a4;
- (void)greetingDataSource:(id)a3 greetingWillChangeForAccountUUID:(id)a4;
@end

@implementation VMDGreetingManager

- (VMDGreetingManager)initWithDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = VMDGreetingManager;
  v6 = [(VMManager *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSOperationQueue);
    dataSourceDelegateQueue = v6->_dataSourceDelegateQueue;
    v6->_dataSourceDelegateQueue = v7;

    v9 = [(VMManager *)v6 queue];
    [(NSOperationQueue *)v6->_dataSourceDelegateQueue setUnderlyingQueue:v9];

    objc_storeStrong(&v6->_dataSource, a3);
    [(VMGreetingDataSource *)v6->_dataSource setDelegate:v6];
    [(VMGreetingDataSource *)v6->_dataSource setDelegateQueue:v6->_dataSourceDelegateQueue];
  }

  return v6;
}

- (void)greetingDataSource:(id)a3 greetingWillChangeForAccountUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VMManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(VMDGreetingManager *)self dataSource];

  if (v9 == v7)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001CBD4;
    v10[3] = &unk_1000ED450;
    v10[4] = self;
    v11 = v6;
    [(VMManager *)self performAtomicDelegateBlock:v10];
  }
}

- (void)greetingDataSource:(id)a3 greetingDidChangeForAccountUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VMManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(VMDGreetingManager *)self dataSource];

  if (v9 == v7)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001CE7C;
    v10[3] = &unk_1000ED450;
    v10[4] = self;
    v11 = v6;
    [(VMManager *)self performAtomicDelegateBlock:v10];
  }
}

- (void)greetingChangedByCarrier:(id)a3
{
  v4 = a3;
  v5 = [(VMManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D0F8;
  v7[3] = &unk_1000ED450;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(VMManager *)self performAtomicDelegateBlock:v7];
}

@end