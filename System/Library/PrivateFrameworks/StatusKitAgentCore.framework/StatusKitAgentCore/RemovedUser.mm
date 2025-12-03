@interface RemovedUser
+ (id)predicateForHandle:(id)handle;
+ (id)predicateForHandleString:(id)string;
+ (id)predicateForPresenceIdentifier:(id)identifier;
+ (id)predicateForStatusTypeIdentifier:(id)identifier;
@end

@implementation RemovedUser

+ (id)predicateForHandle:(id)handle
{
  normalizedHandleString = [handle normalizedHandleString];
  v5 = [self predicateForHandleString:normalizedHandleString];

  return v5;
}

+ (id)predicateForHandleString:(id)string
{
  v3 = MEMORY[0x277CCAC30];
  stringCopy = string;
  v5 = +[RemovedUser handleKeyPath];
  stringCopy = [v3 predicateWithFormat:@"%K == %@", v5, stringCopy];

  return stringCopy;
}

+ (id)predicateForStatusTypeIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[RemovedUser statusTypeIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForPresenceIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[RemovedUser presenceIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

@end