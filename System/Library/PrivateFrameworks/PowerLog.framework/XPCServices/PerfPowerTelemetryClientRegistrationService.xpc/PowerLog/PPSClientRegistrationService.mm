@interface PPSClientRegistrationService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)checkPermissionForSubsystem:(id)subsystem category:(id)category withReply:(id)reply;
@end

@implementation PPSClientRegistrationService

- (void)checkPermissionForSubsystem:(id)subsystem category:(id)category withReply:(id)reply
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  replyCopy = reply;
  v10 = [PPSClientPermissions checkWritePermissionForSubsystem:subsystemCopy category:categoryCopy];
  if (qword_100008610 != -1)
  {
    sub_1000017E4();
  }

  v11 = qword_100008608;
  if (os_log_type_enabled(qword_100008608, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = subsystemCopy;
    v14 = 2112;
    v15 = categoryCopy;
    v16 = 1024;
    v17 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Subsystem/Category: %@/%@ Permission: %d", &v12, 0x1Cu);
  }

  replyCopy[2](replyCopy, v10);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PPSClientRegistrationProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = objc_opt_new();
  [connectionCopy setExportedObject:v6];
  [connectionCopy resume];

  return 1;
}

@end