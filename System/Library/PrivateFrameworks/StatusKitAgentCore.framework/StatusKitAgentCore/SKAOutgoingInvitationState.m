@interface SKAOutgoingInvitationState
- (SKAOutgoingInvitationState)initWithToHandle:(id)a3 fromHandle:(id)a4 channelIdentifier:(id)a5;
@end

@implementation SKAOutgoingInvitationState

- (SKAOutgoingInvitationState)initWithToHandle:(id)a3 fromHandle:(id)a4 channelIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SKAOutgoingInvitationState;
  v12 = [(SKAOutgoingInvitationState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_toHandle, a3);
    objc_storeStrong(&v13->_fromHandle, a4);
    objc_storeStrong(&v13->_channelIdentifier, a5);
  }

  return v13;
}

@end