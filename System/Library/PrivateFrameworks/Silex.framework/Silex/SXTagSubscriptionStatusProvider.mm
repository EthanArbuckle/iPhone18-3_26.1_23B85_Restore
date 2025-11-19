@interface SXTagSubscriptionStatusProvider
- (SXTagSubscriptionStatus)tagSubscriptionStatus;
@end

@implementation SXTagSubscriptionStatusProvider

- (SXTagSubscriptionStatus)tagSubscriptionStatus
{
  v2 = [SXTagSubscriptionStatus alloc];
  v3 = [(SXTagSubscriptionStatus *)v2 initWithFollowing:0 tags:MEMORY[0x1E695E0F0]];

  return v3;
}

@end