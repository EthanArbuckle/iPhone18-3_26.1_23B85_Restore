@interface TRIServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation TRIServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TrialArchivingServiceProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = objc_opt_new();
  [connectionCopy setExportedObject:v6];
  [connectionCopy resume];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v7 = TRILogCategory_Archiving();
  v8 = [_PASEntitlement taskWithAuditToken:v14 hasTrueBooleanEntitlement:@"com.apple.TrialArchivingService.internal" logHandle:v7];

  v9 = TRILogCategory_Archiving();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      processIdentifier = [connectionCopy processIdentifier];
      LODWORD(v14[0]) = 67109120;
      DWORD1(v14[0]) = processIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "accepting connection from pid %d", v14, 8u);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      processIdentifier2 = [connectionCopy processIdentifier];
      LODWORD(v14[0]) = 67109120;
      DWORD1(v14[0]) = processIdentifier2;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "connection from pid %d is missing entitlement. Rejecting connection", v14, 8u);
    }

    [connectionCopy invalidate];
  }

  return v8;
}

@end