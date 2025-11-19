@interface TailspinSymbolicationServer
- (BOOL)_connectionIsEntitled:(id)a3 toEntitlement:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation TailspinSymbolicationServer

- (BOOL)_connectionIsEntitled:(id)a3 toEntitlement:(id)a4
{
  v4 = [a3 valueForEntitlement:a4];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  v7 = [(TailspinSymbolicationServer *)self _connectionIsEntitled:v6 toEntitlement:@"com.apple.tailspin.symbolication"];
  if (v7)
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TailspinSymbolicationServerInterface];
    [v6 setExportedInterface:v8];

    [v6 setExportedObject:self];
    [v6 resume];
    objc_storeStrong(&self->_connection, a4);
  }

  else
  {
    proc_name([v6 processIdentifier], buffer, 0x20u);
    v9 = sub_100001714();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000022FC(buffer);
    }
  }

  return v7;
}

@end