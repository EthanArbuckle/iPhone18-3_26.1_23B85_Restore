@interface ServiceDelegate
- (BOOL)_auditToken:(id *)a3 hasEntitlement:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v13 = 0u;
  v14 = 0u;
  if (v7)
  {
    [v7 auditToken];
  }

  v9 = [(ServiceDelegate *)self _auditToken:&v13 hasEntitlement:@"com.apple.DiagnosticsSessionAvailability.client"];
  if (v9)
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DADiagnosticsSessionAvailabilityProtocol];
    [v8 setExportedInterface:v10];

    v11 = objc_opt_new();
    [v8 setExportedObject:v11];
    [v8 setInterruptionHandler:&stru_100014638];
    [v8 setInvalidationHandler:&stru_100014658];
    [v8 resume];
  }

  return v9;
}

- (BOOL)_auditToken:(id *)a3 hasEntitlement:(id)a4
{
  v4 = a4;
  [v4 UTF8String];
  v5 = xpc_copy_entitlement_for_token();
  v6 = v5;
  if (v5)
  {
    value = xpc_BOOL_get_value(v5);
  }

  else
  {
    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000B78C(v8);
    }

    v9 = [NSError errorWithDomain:v4 code:0 userInfo:0];
    [DSAnalytics sendAnalyticsWithEvent:5 error:v9];

    value = 0;
  }

  return value;
}

@end