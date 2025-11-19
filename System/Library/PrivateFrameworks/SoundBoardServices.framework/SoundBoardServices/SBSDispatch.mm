@interface SBSDispatch
- (SBSDispatch)initWithQueue:(id)a3;
- (void)async:(id)a3;
- (void)sync:(id)a3;
@end

@implementation SBSDispatch

- (void)async:(id)a3
{
  v4 = a3;
  v5 = [(SBSDispatch *)self queue];
  dispatch_async(v5, v4);
}

- (void)sync:(id)a3
{
  v4 = a3;
  v5 = [(SBSDispatch *)self queue];
  dispatch_sync(v5, v4);
}

- (SBSDispatch)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSDispatch;
  v6 = [(SBSDispatch *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

@end