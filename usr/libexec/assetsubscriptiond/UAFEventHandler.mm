@interface UAFEventHandler
+ (void)handleSignal:(int)signal;
+ (void)setupSignalHandlers;
- (UAFEventHandler)init;
@end

@implementation UAFEventHandler

- (UAFEventHandler)init
{
  v7.receiver = self;
  v7.super_class = UAFEventHandler;
  v2 = [(UAFEventHandler *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.assetsubscriptiond.xpc.event_stream.queue", v3);
    event_stream_queue = v2->_event_stream_queue;
    v2->_event_stream_queue = v4;
  }

  return v2;
}

+ (void)handleSignal:(int)signal
{
  v4 = +[UAFAssetSetManager getSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000FC4;
  block[3] = &unk_1000041D0;
  signalCopy = signal;
  dispatch_sync(v4, block);
}

+ (void)setupSignalHandlers
{
  if (qword_1000081A8 != -1)
  {
    sub_10000154C();
  }
}

@end