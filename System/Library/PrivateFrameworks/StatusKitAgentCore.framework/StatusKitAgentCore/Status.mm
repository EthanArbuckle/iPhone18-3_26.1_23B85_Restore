@interface Status
+ (id)predicateForChannelIdentifier:(id)identifier;
+ (id)predicateForStatusUniqueIdentifier:(id)identifier;
@end

@implementation Status

+ (id)predicateForChannelIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[Status channelIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForStatusUniqueIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[Status uniqueIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

@end