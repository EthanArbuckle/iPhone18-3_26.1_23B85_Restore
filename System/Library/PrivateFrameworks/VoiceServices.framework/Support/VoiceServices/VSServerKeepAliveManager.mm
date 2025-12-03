@interface VSServerKeepAliveManager
- (BOOL)hasActiveKeepAlives;
- (VSServerKeepAliveManager)init;
- (void)cancelKeepAlive:(id)alive;
- (void)maintainKeepAlive:(id)alive;
@end

@implementation VSServerKeepAliveManager

- (void)cancelKeepAlive:(id)alive
{
  aliveCopy = alive;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EBE78;
  v7[3] = &unk_1000FEBE8;
  v7[4] = self;
  v8 = aliveCopy;
  v6 = aliveCopy;
  dispatch_async(queue, v7);
}

- (void)maintainKeepAlive:(id)alive
{
  aliveCopy = alive;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EBF74;
  v7[3] = &unk_1000FEBE8;
  v7[4] = self;
  v8 = aliveCopy;
  v6 = aliveCopy;
  dispatch_async(queue, v7);
}

- (BOOL)hasActiveKeepAlives
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EC084;
  v5[3] = &unk_1000FEB00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (VSServerKeepAliveManager)init
{
  v6.receiver = self;
  v6.super_class = VSServerKeepAliveManager;
  v2 = [(VSServerKeepAliveManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("KeepAliveManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

@end