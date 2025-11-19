@interface SHUDManager
- (SHUDManager)init;
- (SUIHUDHostProtocol)remoteObject;
- (id)currentBannerRequest;
- (void)bannerButtonTappedWithType:(int64_t)a3;
- (void)bannerDismissedWithType:(int64_t)a3;
- (void)dismissBanner;
- (void)showBanner:(id)a3;
- (void)updatePairedUnlockBannerToUnlocked;
@end

@implementation SHUDManager

- (SHUDManager)init
{
  v8.receiver = self;
  v8.super_class = SHUDManager;
  v2 = [(SHUDManager *)&v8 init];
  v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.sharing.HUD" options:0];
  xpcConnection = v2->_xpcConnection;
  v2->_xpcConnection = v3;

  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SUIHUDHostProtocol];
  [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];

  [(NSXPCConnection *)v2->_xpcConnection setExportedObject:v2];
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SUIHUDClientProtocol];
  [(NSXPCConnection *)v2->_xpcConnection setExportedInterface:v6];

  [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&stru_100014658];
  [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&stru_100014678];
  [(NSXPCConnection *)v2->_xpcConnection resume];
  return v2;
}

- (SUIHUDHostProtocol)remoteObject
{
  remoteObject = self->_remoteObject;
  if (!remoteObject)
  {
    v4 = [(NSXPCConnection *)self->_xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&stru_1000146B8];
    v5 = self->_remoteObject;
    self->_remoteObject = v4;

    remoteObject = self->_remoteObject;
  }

  return remoteObject;
}

- (id)currentBannerRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100008ECC;
  v10 = sub_100008EDC;
  v11 = 0;
  v2 = [(SHUDManager *)self remoteObject];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008EE4;
  v5[3] = &unk_1000146E0;
  v5[4] = &v6;
  [v2 currentBannerRequestWithCompletion:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)bannerDismissedWithType:(int64_t)a3
{
  v4 = [(SHUDManager *)self remoteObject];
  [v4 bannerDidDismissWithType:a3];
}

- (void)bannerButtonTappedWithType:(int64_t)a3
{
  v4 = [(SHUDManager *)self remoteObject];
  [v4 bannerButtonTappedWithType:a3];
}

- (void)showBanner:(id)a3
{
  v4 = a3;
  if (![v4 type])
  {
    v5 = paired_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requested to display paired unlock banner", v8, 2u);
    }
  }

  v6 = [(SHUDManager *)self bannerRequestHandler];

  if (v6)
  {
    v7 = [(SHUDManager *)self bannerRequestHandler];
    (v7)[2](v7, v4);
  }
}

- (void)updatePairedUnlockBannerToUnlocked
{
  v3 = [(SHUDManager *)self updatePairedUnlockHandler];

  if (v3)
  {
    v4 = [(SHUDManager *)self updatePairedUnlockHandler];
    v4[2]();
  }
}

- (void)dismissBanner
{
  v3 = [(SHUDManager *)self dismissBannerHandler];

  if (v3)
  {
    v4 = [(SHUDManager *)self dismissBannerHandler];
    v4[2]();
  }
}

@end