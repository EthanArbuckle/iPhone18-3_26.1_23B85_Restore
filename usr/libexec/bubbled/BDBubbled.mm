@interface BDBubbled
+ (id)sharedXPCInterface;
- (id)keybagdProxy;
- (void)beginNextClient;
- (void)bubbleIsOkayToPop;
- (void)bubbleShouldPop;
- (void)fetchMachServiceNames;
- (void)kickstartCurrentClient;
- (void)removeCurrentClient;
- (void)removeCurrentClientAndMachServiceName;
- (void)start;
@end

@implementation BDBubbled

+ (id)sharedXPCInterface
{
  if (qword_1000119F8 != -1)
  {
    sub_100005958();
  }

  v3 = qword_1000119F0;

  return v3;
}

- (id)keybagdProxy
{
  v2 = [(BDBubbled *)self keybagdConnection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&stru_10000C538];

  return v3;
}

- (void)start
{
  [(BDBubbled *)self powerLog:1];
  v3 = objc_opt_new();
  [(BDBubbled *)self setLaunchDate:v3];

  [(BDBubbled *)self setPopStatus:0];
  v4 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.mobile.keybagd.UserManager.xpc" options:4096];
  [(BDBubbled *)self setKeybagdConnection:v4];

  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDKeybagd];
  v6 = [(BDBubbled *)self keybagdConnection];
  [v6 setRemoteObjectInterface:v5];

  v7 = +[BDBubbled sharedXPCInterface];
  v8 = [(BDBubbled *)self keybagdConnection];
  [v8 setExportedInterface:v7];

  v9 = [(BDBubbled *)self keybagdConnection];
  [v9 setExportedObject:self];

  objc_initWeak(&location, self);
  v10 = [(BDBubbled *)self keybagdConnection];
  [v10 setInterruptionHandler:&stru_10000C558];

  objc_copyWeak(&v14, &location);
  v11 = [(BDBubbled *)self keybagdConnection:_NSConcreteStackBlock];
  [v11 setInvalidationHandler:&v13];

  v12 = [(BDBubbled *)self keybagdConnection];
  [v12 resume];

  [(BDBubbled *)self fetchMachServiceNames];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)fetchMachServiceNames
{
  objc_initWeak(&location, self);
  v3 = getuid();
  v4 = getpid();
  NSLog(@"UID:%d, PID %d", v3, v4);
  v5 = [(BDBubbled *)self keybagdProxy];
  v6 = getpid();
  v7 = getuid();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000042A0;
  v8[3] = &unk_10000C5A8;
  objc_copyWeak(&v9, &location);
  [v5 fetchMachServiceNameswithPID:v6 WithUID:v7 WithCompletionHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)beginNextClient
{
  v3 = [(BDBubbled *)self machServiceNames];
  v4 = [v3 count];

  if (v4)
  {
    NSLog(@"In beginNextClient, setting up connection with received mach service");
    v5 = [(BDBubbled *)self machServiceNames];
    v6 = [v5 firstObject];
    NSLog(@"In beginNextClient, setting up connection with received mach service %@", v6);

    v7 = [NSXPCConnection alloc];
    v8 = [(BDBubbled *)self machServiceNames];
    v9 = [v8 firstObject];
    v10 = [v7 initWithMachServiceName:v9 options:0];

    v11 = +[RDClient sharedXPCInterface];
    [v10 setRemoteObjectInterface:v11];

    v12 = +[BDServer sharedXPCInterface];
    [v10 setExportedInterface:v12];

    [v10 setExportedObject:self];
    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100004618;
    v16[3] = &unk_10000C580;
    objc_copyWeak(&v17, &location);
    [v10 setInterruptionHandler:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100004670;
    v14[3] = &unk_10000C580;
    objc_copyWeak(&v15, &location);
    [v10 setInvalidationHandler:v14];
    NSLog(@"resuming Connection for MACHService");
    [v10 resume];
    NSLog(@"STARTED Connection for MACHService");
    v13 = [RDClient clientWithXPCConnection:v10];
    [(BDBubbled *)self setCurrentClient:v13];

    NSLog(@"Kickstarting Connection for MACHService");
    [(BDBubbled *)self kickstartCurrentClient];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    NSLog(@"beginNextClient BUBBLEPOPCALL");

    [(BDBubbled *)self bubbleIsOkayToPop];
  }
}

- (void)kickstartCurrentClient
{
  objc_initWeak(&location, self);
  NSLog(@"Calling Upload Connection for MACHService");
  v3 = [(BDBubbled *)self currentClient];
  [v3 clearTaskLists];

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_100004854;
  v8[4] = sub_100004864;
  v4 = [(BDBubbled *)self machServiceNames];
  v9 = [v4 firstObject];

  v5 = [(BDBubbled *)self currentClient];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000486C;
  v6[3] = &unk_10000C5D0;
  objc_copyWeak(&v7, &location);
  v6[4] = v8;
  [v5 uploadContentWithCompletionHandler:v6];

  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);

  objc_destroyWeak(&location);
}

- (void)removeCurrentClient
{
  NSLog(@"Removing machservice", a2);
  v3 = [(BDBubbled *)self machServiceNames];
  [v3 removeObjectAtIndex:0];

  [(BDBubbled *)self setCurrentClient:0];

  [(BDBubbled *)self beginNextClient];
}

- (void)removeCurrentClientAndMachServiceName
{
  NSLog(@"BD: REMOVE CURRENT CLIENT AND MACH SERVICE NAME", a2);
  v3 = [(BDBubbled *)self machServiceNames];
  v6 = [v3 firstObject];

  v4 = [(BDBubbled *)self keybagdProxy];
  v5 = getpid();
  [v4 removeMachServiceName:v6 withPID:v5 WithUID:getuid()];

  [(BDBubbled *)self removeCurrentClient];
}

- (void)bubbleIsOkayToPop
{
  NSLog(@"BD: BUBBLE IS OKAY TO POP", a2);
  v3 = [(BDBubbled *)self popStatus];
  NSLog(@"Bubble is popping with Status:%lu", v3);
  v4 = [(BDBubbled *)self keybagdProxy];
  v5 = getpid();
  [v4 StopBubbleWithPID:v5 WithUID:getuid() WithStatus:v3];

  [(BDBubbled *)self powerLog:0];
  NSLog(@"XXXXXXX BUBBLED END XXXXXXXX");
  exit(0);
}

- (void)bubbleShouldPop
{
  NSLog(@"In bubbleShouldPop BDBubbled.m", a2);
  v3 = [(BDBubbled *)self currentClient];

  if (v3)
  {
    objc_initWeak(&location, self);
    v4 = [(BDBubbled *)self currentClient];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100004C68;
    v5[3] = &unk_10000C580;
    objc_copyWeak(&v6, &location);
    [v4 willSwitchToUser:0 completionHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {

    [(BDBubbled *)self bubbleIsOkayToPop];
  }
}

@end