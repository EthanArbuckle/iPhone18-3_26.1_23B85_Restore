@interface UNNotificationRequest(Analytics)
- (uint64_t)hksp_analyticsSleepNotificationType;
- (uint64_t)hksp_shouldSubmitAnalytics;
@end

@implementation UNNotificationRequest(Analytics)

- (uint64_t)hksp_shouldSubmitAnalytics
{
  v2 = [a1 content];
  v3 = [v2 categoryIdentifier];
  if ([v3 isEqualToString:*MEMORY[0x277D62010]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 content];
    v6 = [v5 categoryIdentifier];
    if ([v6 isEqualToString:*MEMORY[0x277D623F0]])
    {
      v4 = 1;
    }

    else
    {
      v7 = [a1 content];
      v8 = [v7 categoryIdentifier];
      v4 = [v8 isEqualToString:*MEMORY[0x277D62080]];
    }
  }

  return v4;
}

- (uint64_t)hksp_analyticsSleepNotificationType
{
  v1 = [a1 content];
  v2 = [v1 categoryIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277D62080]];

  return v3;
}

@end