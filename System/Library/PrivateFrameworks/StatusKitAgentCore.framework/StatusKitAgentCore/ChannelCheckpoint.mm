@interface ChannelCheckpoint
+ (id)predicateForChannelIdentifier:(id)identifier;
@end

@implementation ChannelCheckpoint

+ (id)predicateForChannelIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[ChannelCheckpoint identifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

@end