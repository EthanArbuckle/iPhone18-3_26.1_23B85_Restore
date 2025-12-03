@interface SKAOutgoingInvitationState
- (SKAOutgoingInvitationState)initWithToHandle:(id)handle fromHandle:(id)fromHandle channelIdentifier:(id)identifier;
@end

@implementation SKAOutgoingInvitationState

- (SKAOutgoingInvitationState)initWithToHandle:(id)handle fromHandle:(id)fromHandle channelIdentifier:(id)identifier
{
  handleCopy = handle;
  fromHandleCopy = fromHandle;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SKAOutgoingInvitationState;
  v12 = [(SKAOutgoingInvitationState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_toHandle, handle);
    objc_storeStrong(&v13->_fromHandle, fromHandle);
    objc_storeStrong(&v13->_channelIdentifier, identifier);
  }

  return v13;
}

@end