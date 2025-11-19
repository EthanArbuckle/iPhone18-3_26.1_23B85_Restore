@interface CTXPCServiceSubscriptionInfo(TelephonyPreferences)
- (id)tps_activeSubscriptionSet;
- (id)tps_subscriptionSet;
@end

@implementation CTXPCServiceSubscriptionInfo(TelephonyPreferences)

- (id)tps_activeSubscriptionSet
{
  v1 = [a1 subscriptionsInUse];
  if (v1)
  {
    v2 = [MEMORY[0x277CBEB70] orderedSetWithArray:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)tps_subscriptionSet
{
  v1 = [a1 subscriptions];
  if (v1)
  {
    v2 = [MEMORY[0x277CBEB70] orderedSetWithArray:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end