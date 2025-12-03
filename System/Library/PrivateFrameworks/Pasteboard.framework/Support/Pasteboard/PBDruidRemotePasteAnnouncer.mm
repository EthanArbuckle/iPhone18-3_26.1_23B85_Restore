@interface PBDruidRemotePasteAnnouncer
- (void)dealloc;
- (void)invalidate;
- (void)requestAuthorizationForPaste:(id)paste replyHandler:(id)handler;
@end

@implementation PBDruidRemotePasteAnnouncer

- (void)requestAuthorizationForPaste:(id)paste replyHandler:(id)handler
{
  pasteCopy = paste;
  handlerCopy = handler;
  v8 = [NSXPCConnection alloc];
  v9 = [v8 initWithMachServiceName:DRPasteAnnouncementServiceName options:0];
  [(PBDruidRemotePasteAnnouncer *)self setConnection:v9];

  objc_initWeak(&location, self);
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DRPasteAnnouncing];
  connection = [(PBDruidRemotePasteAnnouncer *)self connection];
  [connection setRemoteObjectInterface:v10];

  connection2 = [(PBDruidRemotePasteAnnouncer *)self connection];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000146B4;
  v20[3] = &unk_100031A40;
  v13 = handlerCopy;
  v21 = v13;
  objc_copyWeak(&v22, &location);
  v14 = [connection2 remoteObjectProxyWithErrorHandler:v20];

  connection3 = [(PBDruidRemotePasteAnnouncer *)self connection];
  [connection3 resume];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000147F8;
  v17[3] = &unk_100031A68;
  v16 = v13;
  v18 = v16;
  objc_copyWeak(&v19, &location);
  [v14 requestAuthorizationForPaste:pasteCopy replyHandler:v17];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)invalidate
{
  connection = [(PBDruidRemotePasteAnnouncer *)self connection];
  [connection invalidate];

  [(PBDruidRemotePasteAnnouncer *)self setConnection:0];
}

- (void)dealloc
{
  connection = [(PBDruidRemotePasteAnnouncer *)self connection];
  [connection invalidate];

  v4.receiver = self;
  v4.super_class = PBDruidRemotePasteAnnouncer;
  [(PBDruidRemotePasteAnnouncer *)&v4 dealloc];
}

@end