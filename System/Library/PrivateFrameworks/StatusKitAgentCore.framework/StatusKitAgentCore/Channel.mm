@interface Channel
+ (id)predicateForChannelIdentifier:(id)identifier;
+ (id)predicateForChannelTypePresence;
+ (id)predicateForChannelTypeStatus;
+ (id)predicateForCreationDateNotNil;
+ (id)predicateForPresenceIdentifier:(id)identifier;
+ (id)predicateForStatusTypeIdentifier:(id)identifier;
@end

@implementation Channel

+ (id)predicateForStatusTypeIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[Channel statusTypeKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForChannelTypeStatus
{
  v2 = MEMORY[0x277CCAC30];
  v3 = +[Channel channelTypeKeyPath];
  v4 = [v2 predicateWithFormat:@"%K == %@", v3, &unk_2833EBA20];

  return v4;
}

+ (id)predicateForChannelTypePresence
{
  v2 = MEMORY[0x277CCAC30];
  v3 = +[Channel channelTypeKeyPath];
  v4 = [v2 predicateWithFormat:@"%K == %@", v3, &unk_2833EBA38];

  return v4;
}

+ (id)predicateForPresenceIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[Channel presenceIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForChannelIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[Channel identifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForCreationDateNotNil
{
  v2 = MEMORY[0x277CCAC30];
  v3 = +[Channel dateChannelCreatedKeyPath];
  v4 = [v2 predicateWithFormat:@"%K != nil", v3];

  return v4;
}

@end