@interface SubscriptionAssertion
+ (id)predicateForApplicationIdentifier:(id)identifier;
+ (id)predicateForChannelIdentifier:(id)identifier;
+ (id)predicateForStatusTypeIdentifier:(id)identifier;
@end

@implementation SubscriptionAssertion

+ (id)predicateForApplicationIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[SubscriptionAssertion applicationIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForChannelIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[SubscriptionAssertion channelIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForStatusTypeIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[SubscriptionAssertion statusTypeIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

@end