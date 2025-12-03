@interface VolumeManagerNSXPCListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation VolumeManagerNSXPCListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
  {
    sub_100003F7C(v8, connectionCopy);
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.private.LiveFS.connection"];
  v10 = v9;
  if (v9 && [v9 BOOLValue])
  {
    v11 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
    {
      sub_100004010(v11, connectionCopy);
    }

    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LiveFSVolumeManager];
    [connectionCopy setExportedInterface:v12];

    server = [(VolumeManagerNSXPCListenerDelegate *)self server];
    [connectionCopy setExportedObject:server];

    [connectionCopy resume];
    v14 = 1;
  }

  else
  {
    v15 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      sub_1000040A4(v15, connectionCopy);
    }

    v14 = 0;
  }

  return v14;
}

@end