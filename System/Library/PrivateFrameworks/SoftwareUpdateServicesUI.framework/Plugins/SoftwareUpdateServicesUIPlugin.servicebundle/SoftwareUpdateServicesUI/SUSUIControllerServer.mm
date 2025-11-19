@interface SUSUIControllerServer
+ (id)sharedInstance;
- (BOOL)createKeybagWithSecret:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)getPasscodePolicy:(id)a3;
- (void)run;
@end

@implementation SUSUIControllerServer

+ (id)sharedInstance
{
  v5 = &unk_6F948;
  location = 0;
  objc_storeStrong(&location, &stru_613A8);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_6F940;

  return v2;
}

- (void)run
{
  v7[2] = self;
  v7[1] = a2;
  v2 = _NSConcreteStackBlock;
  v3 = -1073741824;
  v4 = 0;
  v5 = sub_3CC18;
  v6 = &unk_5CCB0;
  v7[0] = self;
  v9 = &unk_6F950;
  location = 0;
  objc_storeStrong(&location, &v2);
  if (*v9 != -1)
  {
    dispatch_once(v9, location);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v10 = [v16 valueForEntitlement:@"com.apple.softwareupdateservices.ui.client.allowed"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    [v16 _setQueue:v18->_queue];
    [v16 setInterruptionHandler:?];
    [v16 setInvalidationHandler:0];
    v5 = v16;
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SUSUIControllerServerInterface];
    [v5 setRemoteObjectInterface:?];

    v7 = v16;
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SUSUIControllerServerInterface];
    [v7 setExportedInterface:?];

    [v16 setExportedObject:v18];
    [v16 resume];
    v12 = SUSUILog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v20, v16);
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Adding plugin client: %@", v20, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    v19 = 1;
    v13 = 1;
  }

  else
  {
    v15 = SUSUILog();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v21, v16);
      _os_log_impl(&dword_0, v15, v14, "Ignoring plugin client: %@", v21, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    v19 = 0;
    v13 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v19 & 1;
}

- (BOOL)createKeybagWithSecret:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = +[SUSUISoftwareUpdateController sharedInstance];
  v5 = [(SUSUISoftwareUpdateController *)v4 _createAutoInstallKeybagWithPasscode:location[0]];

  objc_storeStrong(location, 0);
  return v5;
}

- (void)getPasscodePolicy:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = location[0];
    v4 = +[SUSUISoftwareUpdateController sharedInstance];
    v3[2](v3, [(SUSUISoftwareUpdateController *)v4 _getPasscodePolicy]);
  }

  objc_storeStrong(location, 0);
}

@end