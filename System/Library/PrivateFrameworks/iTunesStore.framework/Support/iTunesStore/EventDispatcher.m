@interface EventDispatcher
+ (id)eventDispatcher;
+ (void)connectEventMonitorWithMessage:(id)a3 connection:(id)a4;
- (EventDispatcher)init;
- (void)_clientDisconnectNotification:(id)a3;
- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5;
- (void)dealloc;
- (void)postEventWithName:(id)a3 userInfo:(id)a4;
@end

@implementation EventDispatcher

+ (id)eventDispatcher
{
  if (qword_100384010 != -1)
  {
    sub_100272510();
  }

  return qword_100384008;
}

- (EventDispatcher)init
{
  v4.receiver = self;
  v4.super_class = EventDispatcher;
  v2 = [(EventDispatcher *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.EventDispatcher", 0);
    v2->_eventMonitors = objc_alloc_init(NSMutableArray);
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"_clientDisconnectNotification:" object:@"XPCClientDisconnectNotification", 0];
  }

  return v2;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"XPCClientDisconnectNotification", 0];
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = EventDispatcher;
  [(EventDispatcher *)&v4 dealloc];
}

- (void)postEventWithName:(id)a3 userInfo:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0460;
  block[3] = &unk_1003273E0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(dispatchQueue, block);
}

+ (void)connectEventMonitorWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A074C;
  v4[3] = &unk_10032AE90;
  v4[4] = a4;
  v4[5] = a1;
  v4[6] = a3;
  [+[EventDispatcher eventDispatcher](EventDispatcher "eventDispatcher")];
}

- (void)_clientDisconnectNotification:(id)a3
{
  v4 = [a3 object];
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A0B24;
  v6[3] = &unk_100327350;
  v6[4] = self;
  v6[5] = v4;
  dispatch_async(dispatchQueue, v6);
}

- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5
{
  [+[Daemon daemon](Daemon "daemon")];
  xpc_retain(a4);
  xpc_retain(a3);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0D88;
  block[3] = &unk_100327408;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  dispatch_async(dispatchQueue, block);
}

@end