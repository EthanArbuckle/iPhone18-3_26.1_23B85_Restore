@interface PBDruidRemotePasteAnnouncer
- (void)dealloc;
- (void)invalidate;
- (void)requestAuthorizationForPaste:(id)a3 replyHandler:(id)a4;
@end

@implementation PBDruidRemotePasteAnnouncer

- (void)requestAuthorizationForPaste:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSXPCConnection alloc];
  v9 = [v8 initWithMachServiceName:DRPasteAnnouncementServiceName options:0];
  [(PBDruidRemotePasteAnnouncer *)self setConnection:v9];

  objc_initWeak(&location, self);
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DRPasteAnnouncing];
  v11 = [(PBDruidRemotePasteAnnouncer *)self connection];
  [v11 setRemoteObjectInterface:v10];

  v12 = [(PBDruidRemotePasteAnnouncer *)self connection];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000146B4;
  v20[3] = &unk_100031A40;
  v13 = v7;
  v21 = v13;
  objc_copyWeak(&v22, &location);
  v14 = [v12 remoteObjectProxyWithErrorHandler:v20];

  v15 = [(PBDruidRemotePasteAnnouncer *)self connection];
  [v15 resume];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000147F8;
  v17[3] = &unk_100031A68;
  v16 = v13;
  v18 = v16;
  objc_copyWeak(&v19, &location);
  [v14 requestAuthorizationForPaste:v6 replyHandler:v17];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)invalidate
{
  v3 = [(PBDruidRemotePasteAnnouncer *)self connection];
  [v3 invalidate];

  [(PBDruidRemotePasteAnnouncer *)self setConnection:0];
}

- (void)dealloc
{
  v3 = [(PBDruidRemotePasteAnnouncer *)self connection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = PBDruidRemotePasteAnnouncer;
  [(PBDruidRemotePasteAnnouncer *)&v4 dealloc];
}

@end