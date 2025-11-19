@interface VolumeManagerNSXPCListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation VolumeManagerNSXPCListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
  {
    sub_100003F7C(v8, v7);
  }

  v9 = [v7 valueForEntitlement:@"com.apple.private.LiveFS.connection"];
  v10 = v9;
  if (v9 && [v9 BOOLValue])
  {
    v11 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
    {
      sub_100004010(v11, v7);
    }

    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LiveFSVolumeManager];
    [v7 setExportedInterface:v12];

    v13 = [(VolumeManagerNSXPCListenerDelegate *)self server];
    [v7 setExportedObject:v13];

    [v7 resume];
    v14 = 1;
  }

  else
  {
    v15 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      sub_1000040A4(v15, v7);
    }

    v14 = 0;
  }

  return v14;
}

@end