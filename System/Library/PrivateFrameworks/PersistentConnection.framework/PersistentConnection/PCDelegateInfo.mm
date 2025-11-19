@interface PCDelegateInfo
- (void)setQueue:(id)a3;
@end

@implementation PCDelegateInfo

- (void)setQueue:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  p_queue = &self->_queue;
  if (queue != v5)
  {
    v8 = v5;
    objc_storeStrong(p_queue, a3);
    v5 = v8;
  }
}

@end