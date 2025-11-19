@interface PSXPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PSPowerManager)power_manager;
- (void)disableUserActivityOverride;
- (void)getUserActivityStatusDescription:(id)a3;
- (void)overrideUserActivityToUserActive;
- (void)overrideUserActivityToUserInactive;
@end

@implementation PSXPCServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSString stringWithUTF8String:"com.apple.polaris.polarisd_debug"];
  v7 = [v5 valueForEntitlement:v6];

  if (v7 && [v7 BOOLValue])
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PSXPCProtocol];
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:self];
    v9 = sub_100013BF4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setting up new connection", v13, 2u);
    }

    [v5 resume];
    v10 = 1;
  }

  else
  {
    v11 = sub_100013BF4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109120;
      v13[1] = [v5 processIdentifier];
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

- (void)getUserActivityStatusDescription:(id)a3
{
  v4 = a3;
  v5 = sub_100013BF4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Got getUserActivityStatusDescription", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_power_manager);
  v7 = [WeakRetained userActivityStatusDescription];
  v4[2](v4, v7);
}

- (PSPowerManager)power_manager
{
  WeakRetained = objc_loadWeakRetained(&self->_power_manager);

  return WeakRetained;
}

@end