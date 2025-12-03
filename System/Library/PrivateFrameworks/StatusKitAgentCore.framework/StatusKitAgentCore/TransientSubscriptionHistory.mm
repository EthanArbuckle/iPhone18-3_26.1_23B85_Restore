@interface TransientSubscriptionHistory
+ (id)predicateForChannelIdentifier:(id)identifier;
+ (id)predicateForLastSubscriptionDate:(id)date;
@end

@implementation TransientSubscriptionHistory

+ (id)predicateForLastSubscriptionDate:(id)date
{
  v3 = MEMORY[0x277CCAC30];
  dateCopy = date;
  v5 = +[TransientSubscriptionHistory lastSubscriptionDateKeyPath];
  dateCopy = [v3 predicateWithFormat:@"%K == %@", v5, dateCopy];

  return dateCopy;
}

+ (id)predicateForChannelIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[TransientSubscriptionHistory channelIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

@end