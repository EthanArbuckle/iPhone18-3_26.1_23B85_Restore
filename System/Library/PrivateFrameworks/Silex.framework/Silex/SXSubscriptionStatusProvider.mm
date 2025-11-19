@interface SXSubscriptionStatusProvider
- (SXSubscriptionStatusProvider)initWithBundleSubscriptionStatus:(int64_t)a3 channelSubscriptionStatus:(int64_t)a4;
@end

@implementation SXSubscriptionStatusProvider

- (SXSubscriptionStatusProvider)initWithBundleSubscriptionStatus:(int64_t)a3 channelSubscriptionStatus:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = SXSubscriptionStatusProvider;
  result = [(SXSubscriptionStatusProvider *)&v7 init];
  if (result)
  {
    result->_bundleSubscriptionStatus = a3;
    result->_channelSubscriptionStatus = a4;
  }

  return result;
}

@end