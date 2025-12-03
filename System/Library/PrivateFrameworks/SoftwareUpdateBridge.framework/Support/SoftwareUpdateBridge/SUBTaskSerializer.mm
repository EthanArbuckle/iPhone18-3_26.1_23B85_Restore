@interface SUBTaskSerializer
- (SUBTaskSerializer)initWithQueueLabel:(const char *)label;
- (void)enqueueAsynchronousTask:(id)task;
- (void)enqueueSynchronousTask:(id)task;
@end

@implementation SUBTaskSerializer

- (SUBTaskSerializer)initWithQueueLabel:(const char *)label
{
  v9.receiver = self;
  v9.super_class = SUBTaskSerializer;
  v4 = [(SUBTaskSerializer *)&v9 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(label, v5);
    queue = v4->_queue;
    v4->_queue = v6;
  }

  return v4;
}

- (void)enqueueSynchronousTask:(id)task
{
  taskCopy = task;
  v5 = taskCopy;
  if (taskCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A93C;
    block[3] = &unk_10002D1E8;
    v8 = taskCopy;
    dispatch_sync(queue, block);
  }
}

- (void)enqueueAsynchronousTask:(id)task
{
  taskCopy = task;
  if (taskCopy)
  {
    dispatch_queue_get_label(self->_queue);
    v5 = os_transaction_create();
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000AA14;
    v8[3] = &unk_10002C750;
    v9 = v5;
    v10 = taskCopy;
    v7 = v5;
    dispatch_sync(queue, v8);
  }
}

@end