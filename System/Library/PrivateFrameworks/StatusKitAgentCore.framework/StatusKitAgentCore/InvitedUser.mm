@interface InvitedUser
+ (id)predicateForChannel:(id)channel;
+ (id)predicateForInvitedHandle:(id)handle;
+ (id)predicateForSenderHandle:(id)handle;
@end

@implementation InvitedUser

+ (id)predicateForInvitedHandle:(id)handle
{
  v3 = MEMORY[0x277CCAC30];
  handleCopy = handle;
  v5 = +[InvitedUser invitedHandleKeyPath];
  handleCopy = [v3 predicateWithFormat:@"%K == %@", v5, handleCopy];

  return handleCopy;
}

+ (id)predicateForSenderHandle:(id)handle
{
  v3 = MEMORY[0x277CCAC30];
  handleCopy = handle;
  v5 = +[InvitedUser senderHandleKeyPath];
  handleCopy = [v3 predicateWithFormat:@"%K == %@", v5, handleCopy];

  return handleCopy;
}

+ (id)predicateForChannel:(id)channel
{
  v3 = MEMORY[0x277CCAC30];
  channelCopy = channel;
  v5 = +[InvitedUser channelKeyPath];
  channelCopy = [v3 predicateWithFormat:@"%K == %@", v5, channelCopy];

  return channelCopy;
}

@end