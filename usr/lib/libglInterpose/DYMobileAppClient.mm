@interface DYMobileAppClient
- (DYMobileAppClient)initWithTransport:(id)transport;
- (void)_handleDidEnterBackground:(id)background;
- (void)_handleWillEnterForeground:(id)foreground;
- (void)dealloc;
@end

@implementation DYMobileAppClient

- (DYMobileAppClient)initWithTransport:(id)transport
{
  v8.receiver = self;
  v8.super_class = DYMobileAppClient;
  v3 = [(DYMobileAppClient *)&v8 initWithTransport:transport];
  v4 = v3;
  if (v3)
  {
    v5 = *&v3->super.DYGuestAppClient_opaque[OBJC_IVAR___DYGuestAppClient__globalSyncQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __39__DYMobileAppClient_initWithTransport___block_invoke;
    block[3] = &unk_20D490;
    block[4] = v4;
    dispatch_async(v5, block);
  }

  return v4;
}

id __39__DYMobileAppClient_initWithTransport___block_invoke(uint64_t a1)
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:*(a1 + 32) name:"_handleDidEnterBackground:" object:UIApplicationDidEnterBackgroundNotification, 0];
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);

  return [(NSNotificationCenter *)v2 addObserver:v3 selector:"_handleWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  v3.receiver = self;
  v3.super_class = DYMobileAppClient;
  [(DYMobileAppClient *)&v3 dealloc];
}

- (void)_handleDidEnterBackground:(id)background
{
  v4 = [[DYTransportMessage alloc] initWithKind:1544 attributes:0 objectPayload:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}];
  [(DYMobileAppClient *)self sendMessage:v4 inReplyTo:0];
}

- (void)_handleWillEnterForeground:(id)foreground
{
  v4 = [[DYTransportMessage alloc] initWithKind:1544 attributes:0 objectPayload:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 0)}];
  [(DYMobileAppClient *)self sendMessage:v4 inReplyTo:0];
}

@end