@interface smbcdServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation smbcdServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SMBClientMount];
  [v5 setExportedInterface:v6];

  v7 = [(smbcdServiceDelegate *)self server];
  [v5 setExportedObject:v7];

  [v5 resume];
  v8 = [v5 valueForEntitlement:@"com.apple.private.LiveFS.connection"];
  v9 = v8;
  if (v8 && ([v8 BOOLValue] & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004B700(v5);
    }

    v10 = 0;
  }

  return v10;
}

@end