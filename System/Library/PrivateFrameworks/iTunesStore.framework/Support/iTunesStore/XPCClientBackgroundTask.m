@interface XPCClientBackgroundTask
- (XPCClientBackgroundTask)initWithProcessAssertion:(id)a3 invalidationBlock:(id)a4;
- (id)invalidationBlock;
- (void)dealloc;
@end

@implementation XPCClientBackgroundTask

- (XPCClientBackgroundTask)initWithProcessAssertion:(id)a3 invalidationBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = XPCClientBackgroundTask;
  v9 = [(XPCClientBackgroundTask *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    invalidationBlock = v9->_invalidationBlock;
    v9->_invalidationBlock = v10;

    objc_storeStrong(&v9->_processAssertion, a3);
  }

  return v9;
}

- (void)dealloc
{
  [(BKSProcessAssertion *)self->_processAssertion invalidate];
  v3.receiver = self;
  v3.super_class = XPCClientBackgroundTask;
  [(XPCClientBackgroundTask *)&v3 dealloc];
}

- (id)invalidationBlock
{
  v2 = objc_retainBlock(self->_invalidationBlock);

  return v2;
}

@end