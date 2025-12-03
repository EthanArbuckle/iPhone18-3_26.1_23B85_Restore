@interface VMDGreetingManager
- (VMDGreetingManager)initWithDataSource:(id)source;
- (void)greetingChangedByCarrier:(id)carrier;
- (void)greetingDataSource:(id)source greetingDidChangeForAccountUUID:(id)d;
- (void)greetingDataSource:(id)source greetingWillChangeForAccountUUID:(id)d;
@end

@implementation VMDGreetingManager

- (VMDGreetingManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = VMDGreetingManager;
  v6 = [(VMManager *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSOperationQueue);
    dataSourceDelegateQueue = v6->_dataSourceDelegateQueue;
    v6->_dataSourceDelegateQueue = v7;

    queue = [(VMManager *)v6 queue];
    [(NSOperationQueue *)v6->_dataSourceDelegateQueue setUnderlyingQueue:queue];

    objc_storeStrong(&v6->_dataSource, source);
    [(VMGreetingDataSource *)v6->_dataSource setDelegate:v6];
    [(VMGreetingDataSource *)v6->_dataSource setDelegateQueue:v6->_dataSourceDelegateQueue];
  }

  return v6;
}

- (void)greetingDataSource:(id)source greetingWillChangeForAccountUUID:(id)d
{
  dCopy = d;
  sourceCopy = source;
  queue = [(VMManager *)self queue];
  dispatch_assert_queue_V2(queue);

  dataSource = [(VMDGreetingManager *)self dataSource];

  if (dataSource == sourceCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001CBD4;
    v10[3] = &unk_1000ED450;
    v10[4] = self;
    v11 = dCopy;
    [(VMManager *)self performAtomicDelegateBlock:v10];
  }
}

- (void)greetingDataSource:(id)source greetingDidChangeForAccountUUID:(id)d
{
  dCopy = d;
  sourceCopy = source;
  queue = [(VMManager *)self queue];
  dispatch_assert_queue_V2(queue);

  dataSource = [(VMDGreetingManager *)self dataSource];

  if (dataSource == sourceCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001CE7C;
    v10[3] = &unk_1000ED450;
    v10[4] = self;
    v11 = dCopy;
    [(VMManager *)self performAtomicDelegateBlock:v10];
  }
}

- (void)greetingChangedByCarrier:(id)carrier
{
  carrierCopy = carrier;
  queue = [(VMManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D0F8;
  v7[3] = &unk_1000ED450;
  v7[4] = self;
  v8 = carrierCopy;
  v6 = carrierCopy;
  [(VMManager *)self performAtomicDelegateBlock:v7];
}

@end