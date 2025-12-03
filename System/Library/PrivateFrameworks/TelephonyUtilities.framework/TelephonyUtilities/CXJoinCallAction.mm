@interface CXJoinCallAction
- (BOOL)isValidScreenSharingRequest;
- (TUConversationParticipantCluster)tuParticipantCluster;
- (TUScreenSharingRequest)tuScreenSharingRequest;
@end

@implementation CXJoinCallAction

- (TUScreenSharingRequest)tuScreenSharingRequest
{
  remoteMembers = [(CXJoinCallAction *)self remoteMembers];
  anyObject = [remoteMembers anyObject];

  handle = [anyObject handle];
  tuHandle = [handle tuHandle];

  v7 = 0;
  if ([(CXJoinCallAction *)self isValidScreenSharingRequest]&& tuHandle)
  {
    screenShareRequestType = [(CXJoinCallAction *)self screenShareRequestType];
    if (screenShareRequestType == 2)
    {
      v9 = [TUScreenSharingRequest alloc];
      shouldSendLegacyScreenSharingInvite = [(CXJoinCallAction *)self shouldSendLegacyScreenSharingInvite];
      screenSharingRequestMetadata = [(CXJoinCallAction *)self screenSharingRequestMetadata];
      tuMetadata = [screenSharingRequestMetadata tuMetadata];
      v7 = [v9 initWithHandle:tuHandle shareMyScreen:1 originType:1 shouldSendLegacyInvite:shouldSendLegacyScreenSharingInvite metadata:tuMetadata];
    }

    else if (screenShareRequestType == 1)
    {
      v7 = [[TUScreenSharingRequest alloc] initWithHandle:tuHandle shareMyScreen:0 originType:1 shouldSendLegacyInvite:-[CXJoinCallAction shouldSendLegacyScreenSharingInvite](self metadata:{"shouldSendLegacyScreenSharingInvite"), 0}];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isValidScreenSharingRequest
{
  if (![(CXJoinCallAction *)self screenShareRequestType])
  {
    return 1;
  }

  remoteMembers = [(CXJoinCallAction *)self remoteMembers];
  v4 = [remoteMembers count];

  if (v4 == 1)
  {
    return 1;
  }

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10047DA68(self, v6);
  }

  return 0;
}

- (TUConversationParticipantCluster)tuParticipantCluster
{
  participantCluster = [(CXJoinCallAction *)self participantCluster];

  if (participantCluster)
  {
    v4 = [TUConversationParticipantCluster alloc];
    participantCluster2 = [(CXJoinCallAction *)self participantCluster];
    uUID = [participantCluster2 UUID];
    participantCluster3 = [(CXJoinCallAction *)self participantCluster];
    v8 = [v4 initWithUUID:uUID type:{objc_msgSend(participantCluster3, "type")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end