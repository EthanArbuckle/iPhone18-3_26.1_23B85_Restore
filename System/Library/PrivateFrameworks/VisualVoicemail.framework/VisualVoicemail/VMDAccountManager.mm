@interface VMDAccountManager
- (NSArray)accounts;
- (VMDAccountManager)initWithDataSource:(id)source;
- (void)accountsDidChangeForAccountDataSource:(id)source;
@end

@implementation VMDAccountManager

- (NSArray)accounts
{
  dataSource = [(VMDAccountManager *)self dataSource];
  accounts = [dataSource accounts];

  return accounts;
}

- (VMDAccountManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = VMDAccountManager;
  v6 = [(VMManager *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSOperationQueue);
    dataSourceDelegateQueue = v6->_dataSourceDelegateQueue;
    v6->_dataSourceDelegateQueue = v7;

    queue = [(VMManager *)v6 queue];
    [(NSOperationQueue *)v6->_dataSourceDelegateQueue setUnderlyingQueue:queue];

    objc_storeStrong(&v6->_dataSource, source);
    [(VMAccountDataSource *)v6->_dataSource setDelegateQueue:v6->_dataSourceDelegateQueue];
    [(VMAccountDataSource *)v6->_dataSource setDelegate:v6];
  }

  return v6;
}

- (void)accountsDidChangeForAccountDataSource:(id)source
{
  sourceCopy = source;
  queue = [(VMManager *)self queue];
  dispatch_assert_queue_V2(queue);

  dataSource = [(VMDAccountManager *)self dataSource];

  if (dataSource == sourceCopy)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100066F0C;
    v7[3] = &unk_1000EE5B8;
    v7[4] = self;
    [(VMManager *)self performAtomicDelegateBlock:v7];
  }
}

@end