@interface PPSClientRegistrationService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)checkPermissionForSubsystem:(id)a3 category:(id)a4 withReply:(id)a5;
@end

@implementation PPSClientRegistrationService

- (void)checkPermissionForSubsystem:(id)a3 category:(id)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [PPSClientPermissions checkWritePermissionForSubsystem:v7 category:v8];
  if (qword_100008610 != -1)
  {
    sub_1000017E4();
  }

  v11 = qword_100008608;
  if (os_log_type_enabled(qword_100008608, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 1024;
    v17 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Subsystem/Category: %@/%@ Permission: %d", &v12, 0x1Cu);
  }

  v9[2](v9, v10);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PPSClientRegistrationProtocol];
  [v4 setExportedInterface:v5];

  v6 = objc_opt_new();
  [v4 setExportedObject:v6];
  [v4 resume];

  return 1;
}

@end