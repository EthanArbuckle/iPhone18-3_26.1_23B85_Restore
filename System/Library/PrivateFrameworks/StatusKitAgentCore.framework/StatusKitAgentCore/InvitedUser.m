@interface InvitedUser
+ (id)predicateForChannel:(id)a3;
+ (id)predicateForInvitedHandle:(id)a3;
+ (id)predicateForSenderHandle:(id)a3;
@end

@implementation InvitedUser

+ (id)predicateForInvitedHandle:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[InvitedUser invitedHandleKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForSenderHandle:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[InvitedUser senderHandleKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForChannel:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[InvitedUser channelKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

@end