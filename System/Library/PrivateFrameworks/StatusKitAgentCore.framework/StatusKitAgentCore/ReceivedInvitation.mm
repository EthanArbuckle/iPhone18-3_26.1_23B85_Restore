@interface ReceivedInvitation
+ (id)predicateForPresenceIdentifier:(id)identifier;
+ (id)predicateForSenderHandle:(id)handle;
+ (id)predicateForSenderHandleString:(id)string;
+ (id)predicateForStatusTypeIdentifier:(id)identifier;
@end

@implementation ReceivedInvitation

+ (id)predicateForSenderHandle:(id)handle
{
  normalizedHandleString = [handle normalizedHandleString];
  v5 = [self predicateForSenderHandleString:normalizedHandleString];

  return v5;
}

+ (id)predicateForSenderHandleString:(id)string
{
  v3 = MEMORY[0x277CCAC30];
  stringCopy = string;
  v5 = +[ReceivedInvitation senderHandleKeyPath];
  stringCopy = [v3 predicateWithFormat:@"%K == %@", v5, stringCopy];

  return stringCopy;
}

+ (id)predicateForStatusTypeIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[ReceivedInvitation statusTypeIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

+ (id)predicateForPresenceIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v5 = +[ReceivedInvitation presenceIdentifierKeyPath];
  identifierCopy = [v3 predicateWithFormat:@"%K == %@", v5, identifierCopy];

  return identifierCopy;
}

@end