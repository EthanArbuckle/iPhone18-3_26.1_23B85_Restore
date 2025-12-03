@interface UNNotificationRequest(Analytics)
- (uint64_t)hksp_analyticsSleepNotificationType;
- (uint64_t)hksp_shouldSubmitAnalytics;
@end

@implementation UNNotificationRequest(Analytics)

- (uint64_t)hksp_shouldSubmitAnalytics
{
  content = [self content];
  categoryIdentifier = [content categoryIdentifier];
  if ([categoryIdentifier isEqualToString:*MEMORY[0x277D62010]])
  {
    v4 = 1;
  }

  else
  {
    content2 = [self content];
    categoryIdentifier2 = [content2 categoryIdentifier];
    if ([categoryIdentifier2 isEqualToString:*MEMORY[0x277D623F0]])
    {
      v4 = 1;
    }

    else
    {
      content3 = [self content];
      categoryIdentifier3 = [content3 categoryIdentifier];
      v4 = [categoryIdentifier3 isEqualToString:*MEMORY[0x277D62080]];
    }
  }

  return v4;
}

- (uint64_t)hksp_analyticsSleepNotificationType
{
  content = [self content];
  categoryIdentifier = [content categoryIdentifier];
  v3 = [categoryIdentifier isEqualToString:*MEMORY[0x277D62080]];

  return v3;
}

@end