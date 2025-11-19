@interface SubscriptionAssertion
+ (id)predicateForApplicationIdentifier:(id)a3;
+ (id)predicateForChannelIdentifier:(id)a3;
+ (id)predicateForStatusTypeIdentifier:(id)a3;
@end

@implementation SubscriptionAssertion

+ (id)predicateForApplicationIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[SubscriptionAssertion applicationIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForChannelIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[SubscriptionAssertion channelIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForStatusTypeIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[SubscriptionAssertion statusTypeIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

@end