@interface XPCClientBackgroundTask
- (XPCClientBackgroundTask)initWithProcessAssertion:(id)assertion invalidationBlock:(id)block;
- (id)invalidationBlock;
- (void)dealloc;
@end

@implementation XPCClientBackgroundTask

- (XPCClientBackgroundTask)initWithProcessAssertion:(id)assertion invalidationBlock:(id)block
{
  assertionCopy = assertion;
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = XPCClientBackgroundTask;
  v9 = [(XPCClientBackgroundTask *)&v13 init];
  if (v9)
  {
    v10 = [blockCopy copy];
    invalidationBlock = v9->_invalidationBlock;
    v9->_invalidationBlock = v10;

    objc_storeStrong(&v9->_processAssertion, assertion);
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