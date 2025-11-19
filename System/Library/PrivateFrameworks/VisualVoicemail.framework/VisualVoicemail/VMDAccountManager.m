@interface VMDAccountManager
- (NSArray)accounts;
- (VMDAccountManager)initWithDataSource:(id)a3;
- (void)accountsDidChangeForAccountDataSource:(id)a3;
@end

@implementation VMDAccountManager

- (NSArray)accounts
{
  v2 = [(VMDAccountManager *)self dataSource];
  v3 = [v2 accounts];

  return v3;
}

- (VMDAccountManager)initWithDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = VMDAccountManager;
  v6 = [(VMManager *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSOperationQueue);
    dataSourceDelegateQueue = v6->_dataSourceDelegateQueue;
    v6->_dataSourceDelegateQueue = v7;

    v9 = [(VMManager *)v6 queue];
    [(NSOperationQueue *)v6->_dataSourceDelegateQueue setUnderlyingQueue:v9];

    objc_storeStrong(&v6->_dataSource, a3);
    [(VMAccountDataSource *)v6->_dataSource setDelegateQueue:v6->_dataSourceDelegateQueue];
    [(VMAccountDataSource *)v6->_dataSource setDelegate:v6];
  }

  return v6;
}

- (void)accountsDidChangeForAccountDataSource:(id)a3
{
  v4 = a3;
  v5 = [(VMManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(VMDAccountManager *)self dataSource];

  if (v6 == v4)
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