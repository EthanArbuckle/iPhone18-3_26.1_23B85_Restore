@interface CSDBlockedCallFilter
- (CSDBlockedCallFilter)initWithQueue:(id)queue;
@end

@implementation CSDBlockedCallFilter

- (CSDBlockedCallFilter)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = CSDBlockedCallFilter;
  v6 = [(CSDBlockedCallFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end