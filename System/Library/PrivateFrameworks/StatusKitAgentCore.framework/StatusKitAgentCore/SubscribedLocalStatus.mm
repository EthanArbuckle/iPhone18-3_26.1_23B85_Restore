@interface SubscribedLocalStatus
+ (id)predicateForSubscribedLocalStatusIDSIdentifier:(id)identifier;
+ (id)predicateForSubscribedLocalStatusIdentifier:(id)identifier;
+ (id)predicateForSubscribedLocalStatusIdentifier:(id)identifier idsIdentifier:(id)idsIdentifier;
@end

@implementation SubscribedLocalStatus

+ (id)predicateForSubscribedLocalStatusIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[SubscribedLocalStatus identifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForSubscribedLocalStatusIDSIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[SubscribedLocalStatus idsIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForSubscribedLocalStatusIdentifier:(id)identifier idsIdentifier:(id)idsIdentifier
{
  v5 = MEMORY[0x277CCAC30];
  idsIdentifierCopy = idsIdentifier;
  identifierCopy = identifier;
  v8 = +[SubscribedLocalStatus idsIdentifierKeyPath];
  v9 = +[SubscribedLocalStatus identifierKeyPath];
  identifierCopy = [v5 predicateWithFormat:@"%K == %@ AND %K == %@", v8, idsIdentifierCopy, v9, identifierCopy];

  return identifierCopy;
}

@end