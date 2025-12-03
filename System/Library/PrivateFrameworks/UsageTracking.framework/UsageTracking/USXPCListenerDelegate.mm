@interface USXPCListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation USXPCListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  serviceName = [connectionCopy serviceName];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100066078(serviceName, connectionCopy);
  }

  if ([serviceName isEqualToString:USMachServiceNameUsageTrackingPrivate])
  {
    v6 = USTrackingAgentPrivateConnection_ptr;
    if (([USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:connectionCopy]& 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100066198(connectionCopy);
      }

LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if (([serviceName isEqualToString:USMachServiceNameUsageTracking] & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100066118(serviceName);
      }

      goto LABEL_12;
    }

    v6 = USTrackingAgentConnection_ptr;
  }

  newInterface = [*v6 newInterface];
  [connectionCopy setExportedInterface:newInterface];
  v8 = objc_opt_new();
  [connectionCopy setExportedObject:v8];

  [connectionCopy resume];
  v9 = 1;
LABEL_13:

  return v9;
}

@end