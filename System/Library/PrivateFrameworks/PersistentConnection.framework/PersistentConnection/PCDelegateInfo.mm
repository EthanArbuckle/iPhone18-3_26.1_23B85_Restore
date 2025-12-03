@interface PCDelegateInfo
- (void)setQueue:(id)queue;
@end

@implementation PCDelegateInfo

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  queue = self->_queue;
  p_queue = &self->_queue;
  if (queue != queueCopy)
  {
    v8 = queueCopy;
    objc_storeStrong(p_queue, queue);
    queueCopy = v8;
  }
}

@end