@interface SKDelegateResponseQueue
- (SKDelegateResponseQueue)initWithQueue:(id)queue;
@end

@implementation SKDelegateResponseQueue

- (SKDelegateResponseQueue)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = SKDelegateResponseQueue;
  v6 = [(SKDelegateResponseQueue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
  }

  return v7;
}

@end