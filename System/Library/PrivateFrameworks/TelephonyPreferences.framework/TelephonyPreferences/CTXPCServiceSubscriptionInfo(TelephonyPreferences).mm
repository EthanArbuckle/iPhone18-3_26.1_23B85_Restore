@interface CTXPCServiceSubscriptionInfo(TelephonyPreferences)
- (id)tps_activeSubscriptionSet;
- (id)tps_subscriptionSet;
@end

@implementation CTXPCServiceSubscriptionInfo(TelephonyPreferences)

- (id)tps_activeSubscriptionSet
{
  subscriptionsInUse = [self subscriptionsInUse];
  if (subscriptionsInUse)
  {
    v2 = [MEMORY[0x277CBEB70] orderedSetWithArray:subscriptionsInUse];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)tps_subscriptionSet
{
  subscriptions = [self subscriptions];
  if (subscriptions)
  {
    v2 = [MEMORY[0x277CBEB70] orderedSetWithArray:subscriptions];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end