@interface ReceivedInvitation
+ (id)predicateForPresenceIdentifier:(id)a3;
+ (id)predicateForSenderHandle:(id)a3;
+ (id)predicateForSenderHandleString:(id)a3;
+ (id)predicateForStatusTypeIdentifier:(id)a3;
@end

@implementation ReceivedInvitation

+ (id)predicateForSenderHandle:(id)a3
{
  v4 = [a3 normalizedHandleString];
  v5 = [a1 predicateForSenderHandleString:v4];

  return v5;
}

+ (id)predicateForSenderHandleString:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[ReceivedInvitation senderHandleKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForStatusTypeIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[ReceivedInvitation statusTypeIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForPresenceIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[ReceivedInvitation presenceIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

@end