@interface CSDPendingConversation
- (CSDPendingConversation)initWithConversationLink:(id)link localMember:(id)member queue:(id)queue;
- (TUConversation)tuConversation;
- (id)description;
- (id)groupUUID;
@end

@implementation CSDPendingConversation

- (CSDPendingConversation)initWithConversationLink:(id)link localMember:(id)member queue:(id)queue
{
  linkCopy = link;
  memberCopy = member;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = CSDPendingConversation;
  v12 = [(CSDPendingConversation *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    v14 = +[NSUUID UUID];
    temporaryGroupUUID = v13->_temporaryGroupUUID;
    v13->_temporaryGroupUUID = v14;

    objc_storeStrong(&v13->_link, link);
    objc_storeStrong(&v13->_localMember, member);
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
  temporaryGroupUUID = [(CSDPendingConversation *)self temporaryGroupUUID];
  [v3 appendFormat:@" temporaryGroupUUID=%@", temporaryGroupUUID];

  conversationGroupUUID = [(CSDPendingConversation *)self conversationGroupUUID];
  [v3 appendFormat:@" conversationGroupUUID=%@", conversationGroupUUID];

  approverHandle = [(CSDPendingConversation *)self approverHandle];
  [v3 appendFormat:@" approverHandle=%@", approverHandle];

  link = [(CSDPendingConversation *)self link];
  [v3 appendFormat:@" link=%@", link];

  localMember = [(CSDPendingConversation *)self localMember];
  [v3 appendFormat:@" localMember=%@", localMember];

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
  conversationGroupUUID = [(CSDPendingConversation *)self conversationGroupUUID];
  if (conversationGroupUUID)
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
  queue = [(CSDPendingConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [TUMutableConversation alloc];
  uUID = [(CSDPendingConversation *)self UUID];
  groupUUID = [(CSDPendingConversation *)self groupUUID];
  v7 = +[TUConversationProvider faceTimeProvider];
  v8 = [v4 initWithUUID:uUID groupUUID:groupUUID provider:v7];

  [v8 setLetMeInRequestState:{-[CSDPendingConversation letMeInRequestState](self, "letMeInRequestState")}];
  link = [(CSDPendingConversation *)self link];
  [v8 setLink:link];

  [v8 setState:{-[CSDPendingConversation state](self, "state")}];
  localMember = [(CSDPendingConversation *)self localMember];
  [v8 setLocalMember:localMember];

  localMember2 = [(CSDPendingConversation *)self localMember];
  handle = [localMember2 handle];
  [v8 setInitiator:handle];

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