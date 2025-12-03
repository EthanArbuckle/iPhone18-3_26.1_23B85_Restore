@interface PSXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PSPowerManager)power_manager;
- (void)disableUserActivityOverride;
- (void)getUserActivityStatusDescription:(id)description;
- (void)overrideUserActivityToUserActive;
- (void)overrideUserActivityToUserInactive;
@end

@implementation PSXPCServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSString stringWithUTF8String:"com.apple.polaris.polarisd_debug"];
  v7 = [connectionCopy valueForEntitlement:v6];

  if (v7 && [v7 BOOLValue])
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PSXPCProtocol];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    v9 = sub_100013BF4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setting up new connection", v13, 2u);
    }

    [connectionCopy resume];
    v10 = 1;
  }

  else
  {
    v11 = sub_100013BF4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109120;
      v13[1] = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "PID %d tried to connect via XPC but is not entitled", v13, 8u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)disableUserActivityOverride
{
  v3 = sub_100013BF4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Got disableOverride", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_power_manager);
  [WeakRetained disableUserActivityOverride];
}

- (void)overrideUserActivityToUserActive
{
  v3 = sub_100013BF4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Got overrideToUserActive", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_power_manager);
  [WeakRetained overrideUserActivityToUserActive];
}

- (void)overrideUserActivityToUserInactive
{
  v3 = sub_100013BF4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Got overrideToUserInactive", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_power_manager);
  [WeakRetained overrideUserActivityToUserInactive];
}

- (void)getUserActivityStatusDescription:(id)description
{
  descriptionCopy = description;
  v5 = sub_100013BF4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Got getUserActivityStatusDescription", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_power_manager);
  userActivityStatusDescription = [WeakRetained userActivityStatusDescription];
  descriptionCopy[2](descriptionCopy, userActivityStatusDescription);
}

- (PSPowerManager)power_manager
{
  WeakRetained = objc_loadWeakRetained(&self->_power_manager);

  return WeakRetained;
}

@end