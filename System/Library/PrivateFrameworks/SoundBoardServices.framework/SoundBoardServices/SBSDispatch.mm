@interface SBSDispatch
- (SBSDispatch)initWithQueue:(id)queue;
- (void)async:(id)async;
- (void)sync:(id)sync;
@end

@implementation SBSDispatch

- (void)async:(id)async
{
  asyncCopy = async;
  queue = [(SBSDispatch *)self queue];
  dispatch_async(queue, asyncCopy);
}

- (void)sync:(id)sync
{
  syncCopy = sync;
  queue = [(SBSDispatch *)self queue];
  dispatch_sync(queue, syncCopy);
}

- (SBSDispatch)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = SBSDispatch;
  v6 = [(SBSDispatch *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end