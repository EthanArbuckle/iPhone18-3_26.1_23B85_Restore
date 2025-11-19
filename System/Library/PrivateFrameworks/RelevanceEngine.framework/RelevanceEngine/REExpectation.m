@interface REExpectation
- (REExpectation)init;
- (void)notifyOperationsCompleteOrPerformUsingQueue:(id)a3 block:(id)a4;
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

- (void)notifyOperationsCompleteOrPerformUsingQueue:(id)a3 block:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(REExpectation *)self outstandingOperations])
  {
    [(REExpectation *)self notifyOperationsCompleteOnQueue:v7 block:v6];
  }

  else
  {
    v6[2](v6);
  }
}

@end