@interface CXJoinCallAction
- (BOOL)isValidScreenSharingRequest;
- (TUConversationParticipantCluster)tuParticipantCluster;
- (TUScreenSharingRequest)tuScreenSharingRequest;
@end

@implementation CXJoinCallAction

- (TUScreenSharingRequest)tuScreenSharingRequest
{
  v3 = [(CXJoinCallAction *)self remoteMembers];
  v4 = [v3 anyObject];

  v5 = [v4 handle];
  v6 = [v5 tuHandle];

  v7 = 0;
  if ([(CXJoinCallAction *)self isValidScreenSharingRequest]&& v6)
  {
    v8 = [(CXJoinCallAction *)self screenShareRequestType];
    if (v8 == 2)
    {
      v9 = [TUScreenSharingRequest alloc];
      v10 = [(CXJoinCallAction *)self shouldSendLegacyScreenSharingInvite];
      v11 = [(CXJoinCallAction *)self screenSharingRequestMetadata];
      v12 = [v11 tuMetadata];
      v7 = [v9 initWithHandle:v6 shareMyScreen:1 originType:1 shouldSendLegacyInvite:v10 metadata:v12];
    }

    else if (v8 == 1)
    {
      v7 = [[TUScreenSharingRequest alloc] initWithHandle:v6 shareMyScreen:0 originType:1 shouldSendLegacyInvite:-[CXJoinCallAction shouldSendLegacyScreenSharingInvite](self metadata:{"shouldSendLegacyScreenSharingInvite"), 0}];
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

  v3 = [(CXJoinCallAction *)self remoteMembers];
  v4 = [v3 count];

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
  v3 = [(CXJoinCallAction *)self participantCluster];

  if (v3)
  {
    v4 = [TUConversationParticipantCluster alloc];
    v5 = [(CXJoinCallAction *)self participantCluster];
    v6 = [v5 UUID];
    v7 = [(CXJoinCallAction *)self participantCluster];
    v8 = [v4 initWithUUID:v6 type:{objc_msgSend(v7, "type")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end