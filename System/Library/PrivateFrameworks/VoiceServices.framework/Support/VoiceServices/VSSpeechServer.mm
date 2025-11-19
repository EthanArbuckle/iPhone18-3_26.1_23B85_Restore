@interface VSSpeechServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (VSSpeechServer)init;
- (void)dealloc;
- (void)scheduleBackgroundTasks;
- (void)setConnectionCount:(unint64_t)a3;
@end

@implementation VSSpeechServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VSSpeechServiceDelegate];
  [v5 setRemoteObjectInterface:v6];

  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VSSpeechXPCServiceProtocol];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v8 = [NSArray arrayWithObjects:v22 count:2];
  v9 = [NSSet setWithArray:v8];

  [v7 setClasses:v9 forSelector:"setSubscribedVoiceAssets:withClientID:forAccessoryID:" argumentIndex:0 ofReply:0];
  [v7 setClasses:v9 forSelector:"triggerCellularDownloadedVoiceAssets:withClientID:" argumentIndex:0 ofReply:0];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v21[2] = objc_opt_class();
  v10 = [NSArray arrayWithObjects:v21 count:3];
  v11 = [NSSet setWithArray:v10];

  [v7 setClasses:v11 forSelector:"startPresynthesizedAudioRequest:" argumentIndex:0 ofReply:0];
  [v5 setExportedInterface:v7];
  v12 = [[VSSpeechXPCHandler alloc] initWithConnection:v5];
  [v5 setExportedObject:v12];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000EC628;
  v18 = &unk_1000FEBE8;
  v19 = v12;
  v20 = self;
  v13 = v12;
  [v5 setInvalidationHandler:&v15];
  [v5 resume];

  [(VSSpeechServer *)self setConnectionCount:[(VSSpeechServer *)self connectionCount]+ 1];
  return 1;
}

- (void)setConnectionCount:(unint64_t)a3
{
  pthread_mutex_lock(&stru_100101560);
  self->_connectionCount = a3;
  runloopSourceRef = self->_runloopSourceRef;
  if (a3)
  {
    if (!runloopSourceRef)
    {
      runloopSourceRef = sub_1000E1934(0, 0);
      self->_runloopSourceRef = runloopSourceRef;
      if (runloopSourceRef)
      {
        Current = CFRunLoopGetCurrent();
        CFRunLoopAddSource(Current, self->_runloopSourceRef, kCFRunLoopDefaultMode);
        runloopSourceRef = self->_runloopSourceRef;
      }
    }

    sub_1000E1A1C(runloopSourceRef, 1);
  }

  else
  {
    sub_1000E1A1C(runloopSourceRef, 0);
    sub_1000E1AEC(self->_runloopSourceRef);
    CFRunLoopSourceInvalidate(self->_runloopSourceRef);
    CFRelease(self->_runloopSourceRef);
    self->_runloopSourceRef = 0;
  }

  pthread_mutex_unlock(&stru_100101560);
}

- (void)scheduleBackgroundTasks
{
  if ((+[VSFeatureFlags useSiriTTSServiceV2]& 1) == 0)
  {
    xpc_activity_register("com.apple.voiced", XPC_ACTIVITY_CHECK_IN, &stru_1000FEB40);
    xpc_activity_register("com.apple.voiced.weekly", XPC_ACTIVITY_CHECK_IN, &stru_1000FEBA0);
    if (+[VSNeuralTTSUtils isANECompilationPlatform])
    {
      if ((+[VSFeatureFlags useSiriTTSService]& 1) == 0)
      {

        xpc_activity_register("com.apple.voiced.neural-compiling", XPC_ACTIVITY_CHECK_IN, &stru_1000FEBC0);
      }
    }
  }
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = VSSpeechServer;
  [(VSSpeechServer *)&v3 dealloc];
}

- (VSSpeechServer)init
{
  v7.receiver = self;
  v7.super_class = VSSpeechServer;
  v2 = [(VSSpeechServer *)&v7 init];
  if (v2)
  {
    v3 = [NSXPCListener alloc];
    v4 = [v3 initWithMachServiceName:VSTTSMachServiceName];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(VSSpeechServer *)v2 scheduleBackgroundTasks];
  }

  return v2;
}

@end