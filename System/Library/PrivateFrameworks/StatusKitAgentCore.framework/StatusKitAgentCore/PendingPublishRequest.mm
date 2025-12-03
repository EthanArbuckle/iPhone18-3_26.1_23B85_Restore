@interface PendingPublishRequest
+ (id)predicateForStatusTypeIdentifier:(id)identifier;
+ (id)predicateForStatusUniqueIdentifier:(id)identifier;
@end

@implementation PendingPublishRequest

+ (id)predicateForStatusTypeIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[PendingPublishRequest statusTypeIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForStatusUniqueIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[PendingPublishRequest statusUniqueIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

@end