@interface SDAnalytics
+ (NSUUID)deviceIdentifier;
+ (void)deviceDidDeclineLegalAgreement;
+ (void)deviceDidEnrollInSeeding;
+ (void)deviceDidUnenrollFromSeeding;
@end

@implementation SDAnalytics

+ (NSUUID)deviceIdentifier
{
  if (deviceIdentifier_onceToken != -1)
  {
    +[SDAnalytics deviceIdentifier];
  }

  v3 = deviceIdentifier_uuid;

  return v3;
}

void __31__SDAnalytics_deviceIdentifier__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.seeding"];
  v1 = [v0 stringForKey:@"DeviceIdentifier"];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v1];
    v3 = deviceIdentifier_uuid;
    deviceIdentifier_uuid = v2;

    v4 = +[SDSeedingLogging analyticsHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [deviceIdentifier_uuid UUIDString];
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "Device identifier: %{public}@", &v12, 0xCu);
    }
  }

  if (!deviceIdentifier_uuid)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = deviceIdentifier_uuid;
    deviceIdentifier_uuid = v6;

    v8 = +[SDSeedingLogging analyticsHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [deviceIdentifier_uuid UUIDString];
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_DEFAULT, "Device identifier (new): %{public}@", &v12, 0xCu);
    }

    v10 = [deviceIdentifier_uuid UUIDString];
    [v0 setValue:v10 forKey:@"DeviceIdentifier"];
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)deviceDidEnrollInSeeding
{
  v2 = +[SDSeedingLogging analyticsHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "Sending activated event", v3, 2u);
  }

  AnalyticsSendEventLazy();
}

+ (void)deviceDidUnenrollFromSeeding
{
  v2 = +[SDSeedingLogging analyticsHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "Sending deactivated event", v3, 2u);
  }

  AnalyticsSendEventLazy();
}

+ (void)deviceDidDeclineLegalAgreement
{
  v2 = +[SDSeedingLogging analyticsHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "Sending legaldeclined event", v3, 2u);
  }

  AnalyticsSendEventLazy();
}

@end