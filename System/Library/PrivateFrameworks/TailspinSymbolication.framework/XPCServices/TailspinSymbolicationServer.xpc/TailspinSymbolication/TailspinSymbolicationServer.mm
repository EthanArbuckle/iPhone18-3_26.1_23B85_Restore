@interface TailspinSymbolicationServer
- (BOOL)_connectionIsEntitled:(id)entitled toEntitlement:(id)entitlement;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation TailspinSymbolicationServer

- (BOOL)_connectionIsEntitled:(id)entitled toEntitlement:(id)entitlement
{
  v4 = [entitled valueForEntitlement:entitlement];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v7 = [(TailspinSymbolicationServer *)self _connectionIsEntitled:connectionCopy toEntitlement:@"com.apple.tailspin.symbolication"];
  if (v7)
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TailspinSymbolicationServerInterface];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
    objc_storeStrong(&self->_connection, connection);
  }

  else
  {
    proc_name([connectionCopy processIdentifier], buffer, 0x20u);
    v9 = sub_100001714();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000022FC(buffer);
    }
  }

  return v7;
}

@end