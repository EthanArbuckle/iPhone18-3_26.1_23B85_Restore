@interface PBDruidRemotePasteNotifier
- (void)notifyDeniedPaste;
- (void)notifyPaste:(id)paste;
@end

@implementation PBDruidRemotePasteNotifier

- (void)notifyPaste:(id)paste
{
  pasteCopy = paste;
  v4 = [NSXPCConnection alloc];
  v7 = [v4 initWithMachServiceName:DRPasteAnnouncementServiceName options:0];
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DRPasteAnnouncing];
  [v7 setRemoteObjectInterface:v5];

  v6 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&stru_100031C28];
  [v7 resume];
  [v6 announcePaste:pasteCopy];

  [v7 invalidate];
}

- (void)notifyDeniedPaste
{
  v2 = [NSXPCConnection alloc];
  v5 = [v2 initWithMachServiceName:DRPasteAnnouncementServiceName options:0];
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DRPasteAnnouncing];
  [v5 setRemoteObjectInterface:v3];

  v4 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100031C48];
  [v5 resume];
  [v4 announceDeniedPaste];
  [v5 invalidate];
}

@end