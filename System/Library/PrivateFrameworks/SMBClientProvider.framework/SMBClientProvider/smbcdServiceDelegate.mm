@interface smbcdServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation smbcdServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SMBClientMount];
  [connectionCopy setExportedInterface:v6];

  server = [(smbcdServiceDelegate *)self server];
  [connectionCopy setExportedObject:server];

  [connectionCopy resume];
  v8 = [connectionCopy valueForEntitlement:@"com.apple.private.LiveFS.connection"];
  v9 = v8;
  if (v8 && ([v8 BOOLValue] & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004B700(connectionCopy);
    }

    v10 = 0;
  }

  return v10;
}

@end