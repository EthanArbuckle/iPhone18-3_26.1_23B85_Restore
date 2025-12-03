@interface SXSubscriptionStatusProvider
- (SXSubscriptionStatusProvider)initWithBundleSubscriptionStatus:(int64_t)status channelSubscriptionStatus:(int64_t)subscriptionStatus;
@end

@implementation SXSubscriptionStatusProvider

- (SXSubscriptionStatusProvider)initWithBundleSubscriptionStatus:(int64_t)status channelSubscriptionStatus:(int64_t)subscriptionStatus
{
  v7.receiver = self;
  v7.super_class = SXSubscriptionStatusProvider;
  result = [(SXSubscriptionStatusProvider *)&v7 init];
  if (result)
  {
    result->_bundleSubscriptionStatus = status;
    result->_channelSubscriptionStatus = subscriptionStatus;
  }

  return result;
}

@end