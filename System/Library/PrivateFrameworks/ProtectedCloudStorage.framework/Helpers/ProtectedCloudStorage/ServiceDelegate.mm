@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.private.protectedcloudstorage.keysyncing"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 BOOLValue])
  {
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PCSSyncingProtocol];
    [v4 setExportedInterface:v6];

    v7 = [v4 exportedInterface];
    _PCSSyncingSetupInterface();

    v8 = +[PCSSyncing defaultPCSSyncing];
    [v4 setExportedObject:v8];
    [v4 resume];

    v9 = 1;
  }

  else
  {
    v10 = qword_1000407B8;
    v9 = 0;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v13[0] = 67109378;
      v13[1] = [v4 processIdentifier];
      v14 = 2112;
      v15 = @"com.apple.private.protectedcloudstorage.keysyncing";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Client pid: %d doesn't have entitlement: %@", v13, 0x12u);

      v9 = 0;
    }
  }

  return v9;
}

@end