@interface CSDPendingConversation
- (CSDPendingConversation)initWithConversationLink:(id)a3 localMember:(id)a4 queue:(id)a5;
- (TUConversation)tuConversation;
- (id)description;
- (id)groupUUID;
@end

@implementation CSDPendingConversation

- (CSDPendingConversation)initWithConversationLink:(id)a3 localMember:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = CSDPendingConversation;
  v12 = [(CSDPendingConversation *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a5);
    v14 = +[NSUUID UUID];
    temporaryGroupUUID = v13->_temporaryGroupUUID;
    v13->_temporaryGroupUUID = v14;

    objc_storeStrong(&v13->_link, a3);
    objc_storeStrong(&v13->_localMember, a4);
    v13->_letMeInRequestState = 1;
    *&v13->_videoEnabled = 257;
    v13->_video = 1;
    v16 = +[NSDate date];
    dateCreated = v13->_dateCreated;
    v13->_dateCreated = v16;
  }

  return v13;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" letMeInRequestState=%ld", -[CSDPendingConversation letMeInRequestState](self, "letMeInRequestState")];
  v4 = [(CSDPendingConversation *)self temporaryGroupUUID];
  [v3 appendFormat:@" temporaryGroupUUID=%@", v4];

  v5 = [(CSDPendingConversation *)self conversationGroupUUID];
  [v3 appendFormat:@" conversationGroupUUID=%@", v5];

  v6 = [(CSDPendingConversation *)self approverHandle];
  [v3 appendFormat:@" approverHandle=%@", v6];

  v7 = [(CSDPendingConversation *)self link];
  [v3 appendFormat:@" link=%@", v7];

  v8 = [(CSDPendingConversation *)self localMember];
  [v3 appendFormat:@" localMember=%@", v8];

  [v3 appendFormat:@" isAudioEnabled=%d", -[CSDPendingConversation isAudioEnabled](self, "isAudioEnabled")];
  [v3 appendFormat:@" isVideoEnabled=%d", -[CSDPendingConversation isVideoEnabled](self, "isVideoEnabled")];
  [v3 appendFormat:@" isVideo=%d", -[CSDPendingConversation isVideo](self, "isVideo")];
  [v3 appendFormat:@" isUplinkMuted=%d", -[CSDPendingConversation isUplinkMuted](self, "isUplinkMuted")];
  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

- (id)groupUUID
{
  v3 = [(CSDPendingConversation *)self conversationGroupUUID];
  if (v3)
  {
    [(CSDPendingConversation *)self conversationGroupUUID];
  }

  else
  {
    [(CSDPendingConversation *)self temporaryGroupUUID];
  }
  v4 = ;

  return v4;
}

- (TUConversation)tuConversation
{
  v3 = [(CSDPendingConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [TUMutableConversation alloc];
  v5 = [(CSDPendingConversation *)self UUID];
  v6 = [(CSDPendingConversation *)self groupUUID];
  v7 = +[TUConversationProvider faceTimeProvider];
  v8 = [v4 initWithUUID:v5 groupUUID:v6 provider:v7];

  [v8 setLetMeInRequestState:{-[CSDPendingConversation letMeInRequestState](self, "letMeInRequestState")}];
  v9 = [(CSDPendingConversation *)self link];
  [v8 setLink:v9];

  [v8 setState:{-[CSDPendingConversation state](self, "state")}];
  v10 = [(CSDPendingConversation *)self localMember];
  [v8 setLocalMember:v10];

  v11 = [(CSDPendingConversation *)self localMember];
  v12 = [v11 handle];
  [v8 setInitiator:v12];

  [v8 setAudioEnabled:1];
  [v8 setVideoEnabled:{-[CSDPendingConversation isVideoEnabled](self, "isVideoEnabled")}];
  [v8 setVideo:{-[CSDPendingConversation isVideo](self, "isVideo")}];
  [v8 setHasJoined:0];
  v13 = +[NSSet set];
  [v8 setRemoteMembers:v13];

  v14 = +[NSSet set];
  [v8 setPendingMembers:v14];

  v15 = +[NSSet set];
  [v8 setKickedMembers:v15];

  v16 = +[NSSet set];
  [v8 setOtherInvitedHandles:v16];

  [v8 setMessagesGroupUUID:0];
  [v8 setAvcSessionToken:-1];
  [v8 setAvcSessionIdentifier:0];
  [v8 setLocallyCreated:1];
  [v8 setMessagesGroupName:0];
  [v8 setMaxVideoDecodesAllowed:9];
  [v8 setReportingHierarchyToken:0];
  [v8 setReportingHierarchySubToken:0];
  v17 = +[NSSet set];
  [v8 setActiveRemoteParticipants:v17];

  v18 = [TUConversationReport alloc];
  v19 = +[NSUUID UUID];
  v20 = +[NSUUID UUID];
  v21 = +[NSDate date];
  v22 = [v18 initWithConversationID:v19 padding:v20 timebase:v21];
  [v8 setReport:v22];

  [v8 setPendingConversation:1];
  v23 = [v8 copy];

  return v23;
}

@end