@interface SKDelegateResponseQueue
- (SKDelegateResponseQueue)initWithQueue:(id)a3;
@end

@implementation SKDelegateResponseQueue

- (SKDelegateResponseQueue)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKDelegateResponseQueue;
  v6 = [(SKDelegateResponseQueue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, a3);
  }

  return v7;
}

@end