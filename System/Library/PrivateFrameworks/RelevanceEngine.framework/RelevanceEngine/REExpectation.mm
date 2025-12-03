@interface REExpectation
- (REExpectation)init;
- (void)notifyOperationsCompleteOrPerformUsingQueue:(id)queue block:(id)block;
@end

@implementation REExpectation

- (REExpectation)init
{
  v6.receiver = self;
  v6.super_class = REExpectation;
  v2 = [(REExpectation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v3;
  }

  return v2;
}

- (void)notifyOperationsCompleteOrPerformUsingQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if ([(REExpectation *)self outstandingOperations])
  {
    [(REExpectation *)self notifyOperationsCompleteOnQueue:queueCopy block:blockCopy];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

@end