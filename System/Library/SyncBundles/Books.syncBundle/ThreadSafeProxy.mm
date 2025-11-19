@interface ThreadSafeProxy
- (ThreadSafeProxy)initWithObject:(id)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
@end

@implementation ThreadSafeProxy

- (ThreadSafeProxy)initWithObject:(id)a3
{
  self->_object = a3;
  label = 0;
  asprintf(&label, "com.apple.atc.Books.ThreadSafeProxy.%p", self);
  self->_queue = dispatch_queue_create(label, 0);
  if (label)
  {
    free(label);
  }

  return self;
}

- (void)dealloc
{
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = ThreadSafeProxy;
  [(ThreadSafeProxy *)&v3 dealloc];
}

- (void)forwardInvocation:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_11C90;
  v4[3] = &unk_20780;
  v4[4] = a3;
  v4[5] = self;
  dispatch_sync(queue, v4);
}

@end