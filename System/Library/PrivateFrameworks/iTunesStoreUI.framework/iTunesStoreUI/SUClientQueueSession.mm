@interface SUClientQueueSession
- (SUClientQueueSession)initWithQueue:(id)a3;
- (void)dealloc;
@end

@implementation SUClientQueueSession

- (SUClientQueueSession)initWithQueue:(id)a3
{
  v4 = [(SUClientQueueSession *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_count = 1;
    v4->_queue = a3;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUClientQueueSession;
  [(SUClientQueueSession *)&v3 dealloc];
}

@end