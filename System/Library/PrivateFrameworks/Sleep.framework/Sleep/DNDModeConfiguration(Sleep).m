@interface DNDModeConfiguration(Sleep)
- (id)hksp_configurationWithConfigurationState:()Sleep;
- (uint64_t)hksp_configurationState;
@end

@implementation DNDModeConfiguration(Sleep)

- (uint64_t)hksp_configurationState
{
  v1 = [a1 configuration];
  if ([v1 senderConfigurationType] == 2 && objc_msgSend(v1, "applicationConfigurationType") == 2)
  {
    v2 = 1;
  }

  else if ([v1 senderConfigurationType] || objc_msgSend(v1, "applicationConfigurationType"))
  {
    if ([v1 senderConfigurationType] == 1 && objc_msgSend(v1, "applicationConfigurationType") == 1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 3;
  }

  return v2;
}

- (id)hksp_configurationWithConfigurationState:()Sleep
{
  v4 = [a1 mutableCopy];
  v5 = [v4 configuration];
  v6 = [v5 mutableCopy];

  if ((a3 - 1) <= 2)
  {
    v7 = 3 - a3;
    [v6 setSenderConfigurationType:v7];
    [v6 setApplicationConfigurationType:v7];
  }

  [v4 setConfiguration:v6];
  v8 = [v4 copy];

  return v8;
}

@end