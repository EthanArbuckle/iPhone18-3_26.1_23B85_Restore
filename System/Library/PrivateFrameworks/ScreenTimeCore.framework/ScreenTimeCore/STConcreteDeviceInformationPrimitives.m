@interface STConcreteDeviceInformationPrimitives
- (id)deviceName;
- (id)deviceUUID;
- (id)screenTimeCapabilities;
@end

@implementation STConcreteDeviceInformationPrimitives

- (id)deviceUUID
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)deviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)screenTimeCapabilities
{
  if (_os_feature_enabled_impl())
  {
    v2 = +[STLog v2Disable];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "'v2_force_off' feature flag is set, forcing STScreenTimeCapabilities to v1", v7, 2u);
    }

    v3 = [STScreenTimeCapabilities alloc];
    v4 = 1;
  }

  else
  {
    v3 = [STScreenTimeCapabilities alloc];
    v4 = 3;
  }

  v5 = [(STScreenTimeCapabilities *)v3 initWithSupportedInfrastructure:v4];

  return v5;
}

@end