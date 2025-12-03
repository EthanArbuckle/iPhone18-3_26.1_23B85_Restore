@interface CSDRelayConversation
- (CSDRelayConversation)initWithRelayMessage:(id)message queue:(id)queue;
- (CSDRelayConversationDelegate)delegate;
- (TUConversation)tuConversation;
- (id)description;
- (void)setEndpointOnCurrentDevice:(BOOL)device;
- (void)updateWithProminenceRelayMessage:(id)message;
- (void)updateWithRelayMessage:(id)message;
@end

@implementation CSDRelayConversation

- (CSDRelayConversation)initWithRelayMessage:(id)message queue:(id)queue
{
  messageCopy = message;
  queueCopy = queue;
  v36.receiver = self;
  v36.super_class = CSDRelayConversation;
  v8 = [(CSDRelayConversation *)&v36 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    v9->_state = [messageCopy tuState];
    v10 = [NSUUID alloc];
    uUIDString = [messageCopy uUIDString];
    v12 = [v10 initWithUUIDString:uUIDString];
    UUID = v9->_UUID;
    v9->_UUID = v12;

    v14 = [NSUUID alloc];
    groupUUIDString = [messageCopy groupUUIDString];
    v16 = [v14 initWithUUIDString:groupUUIDString];
    groupUUID = v9->_groupUUID;
    v9->_groupUUID = v16;

    v18 = [NSUUID alloc];
    messagesGroupUUIDString = [messageCopy messagesGroupUUIDString];
    v20 = [v18 initWithUUIDString:messagesGroupUUIDString];
    messagesGroupUUID = v9->_messagesGroupUUID;
    v9->_messagesGroupUUID = v20;

    localMember = [messageCopy localMember];
    tuConversationMember = [localMember tuConversationMember];
    localMember = v9->_localMember;
    v9->_localMember = tuConversationMember;

    v9->_avMode = [messageCopy tuAVMode];
    initiator = [messageCopy initiator];
    tuHandle = [initiator tuHandle];
    initiator = v9->_initiator;
    v9->_initiator = tuHandle;

    reportData = [messageCopy reportData];
    tuConversationReport = [reportData tuConversationReport];
    report = v9->_report;
    v9->_report = tuConversationReport;

    tuConversationMembers = [messageCopy tuConversationMembers];
    remoteMembers = v9->_remoteMembers;
    v9->_remoteMembers = tuConversationMembers;

    tuConversationParticipants = [messageCopy tuConversationParticipants];
    activeRemoteParticipants = v9->_activeRemoteParticipants;
    v9->_activeRemoteParticipants = tuConversationParticipants;

    v9->_endpointOnCurrentDevice = 1;
  }

  return v9;
}

- (void)updateWithRelayMessage:(id)message
{
  messageCopy = message;
  queue = [(CSDRelayConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [NSUUID alloc];
  messagesGroupUUIDString = [messageCopy messagesGroupUUIDString];
  v8 = [v6 initWithUUIDString:messagesGroupUUIDString];
  [(CSDRelayConversation *)self setMessagesGroupUUID:v8];

  tuConversationParticipants = [messageCopy tuConversationParticipants];
  [(CSDRelayConversation *)self setActiveRemoteParticipants:tuConversationParticipants];

  tuConversationMembers = [messageCopy tuConversationMembers];
  [(CSDRelayConversation *)self setRemoteMembers:tuConversationMembers];

  -[CSDRelayConversation setState:](self, "setState:", [messageCopy tuState]);
  -[CSDRelayConversation setAvMode:](self, "setAvMode:", [messageCopy tuAVMode]);
  localMember = [messageCopy localMember];

  tuConversationMember = [localMember tuConversationMember];
  [(CSDRelayConversation *)self setLocalMember:tuConversationMember];

  delegate = [(CSDRelayConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (void)updateWithProminenceRelayMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  queue = [(CSDRelayConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  prominenceEntrys = [messageCopy prominenceEntrys];
  v7 = prominenceEntrys;
  if (prominenceEntrys)
  {
    v21 = messageCopy;
    obj = prominenceEntrys;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [prominenceEntrys countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          activeRemoteParticipants = [(CSDRelayConversation *)selfCopy activeRemoteParticipants];
          v14 = [activeRemoteParticipants countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            do
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(activeRemoteParticipants);
                }

                v18 = *(*(&v24 + 1) + 8 * j);
                identifier = [v18 identifier];
                if (identifier == [v12 participantIdentifier])
                {
                  [v18 setAudioPriority:{objc_msgSend(v12, "audioPriority")}];
                }
              }

              v15 = [activeRemoteParticipants countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v15);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    delegate = [(CSDRelayConversation *)selfCopy delegate];
    [delegate conversationChanged:selfCopy];
    messageCopy = v21;
    v7 = obj;
  }

  else
  {
    delegate = sub_100004778();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      sub_100479148(delegate);
    }
  }
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(CSDRelayConversation *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  groupUUID = [(CSDRelayConversation *)self groupUUID];
  [v3 appendFormat:@" groupUUID=%@", groupUUID];

  messagesGroupUUID = [(CSDRelayConversation *)self messagesGroupUUID];

  if (messagesGroupUUID)
  {
    messagesGroupUUID2 = [(CSDRelayConversation *)self messagesGroupUUID];
    [v3 appendFormat:@" messagesGroupUUID=%@", messagesGroupUUID2];
  }

  [v3 appendFormat:@" state=%ld", -[CSDRelayConversation state](self, "state")];
  localMember = [(CSDRelayConversation *)self localMember];
  [v3 appendFormat:@" localMember=%@", localMember];

  remoteMembers = [(CSDRelayConversation *)self remoteMembers];
  [v3 appendFormat:@" remoteMembers=%@", remoteMembers];

  activeRemoteParticipants = [(CSDRelayConversation *)self activeRemoteParticipants];
  [v3 appendFormat:@" activeRemoteParticipants=%@", activeRemoteParticipants];

  [v3 appendString:@">"];
  v11 = [v3 copy];

  return v11;
}

- (TUConversation)tuConversation
{
  queue = [(CSDRelayConversation *)self queue];
  dispatch_assert_queue_V2(queue);

  groupUUID = [(CSDRelayConversation *)self groupUUID];
  v5 = [TUMutableConversation emptyConversationWithGroupUUID:groupUUID];

  [v5 setHostedOnCurrentDevice:0];
  [v5 setEndpointOnCurrentDevice:{-[CSDRelayConversation endpointOnCurrentDevice](self, "endpointOnCurrentDevice")}];
  uUID = [(CSDRelayConversation *)self UUID];
  [v5 setUUID:uUID];

  v7 = +[TUConversationProvider faceTimeProvider];
  [v5 setProvider:v7];

  v8 = objc_alloc_init(NSSet);
  [v5 setActivitySessions:v8];

  v9 = objc_alloc_init(NSSet);
  [v5 setKickedMembers:v9];

  v10 = objc_alloc_init(NSSet);
  [v5 setRejectedMembers:v10];

  v11 = objc_alloc_init(NSSet);
  [v5 setOtherInvitedHandles:v11];

  v12 = objc_alloc_init(NSSet);
  [v5 setParticipantHandles:v12];

  if ([(CSDRelayConversation *)self endpointOnCurrentDevice])
  {
    state = [(CSDRelayConversation *)self state];
  }

  else
  {
    state = 0;
  }

  [v5 setState:state];
  [v5 setState:{-[CSDRelayConversation state](self, "state")}];
  messagesGroupUUID = [(CSDRelayConversation *)self messagesGroupUUID];
  [v5 setMessagesGroupUUID:messagesGroupUUID];

  remoteMembers = [(CSDRelayConversation *)self remoteMembers];
  [v5 setRemoteMembers:remoteMembers];

  localMember = [(CSDRelayConversation *)self localMember];
  [v5 setLocalMember:localMember];

  [v5 setAvMode:{-[CSDRelayConversation avMode](self, "avMode")}];
  initiator = [(CSDRelayConversation *)self initiator];
  [v5 setInitiator:initiator];

  report = [(CSDRelayConversation *)self report];
  [v5 setReport:report];

  activeRemoteParticipants = [(CSDRelayConversation *)self activeRemoteParticipants];
  v20 = [activeRemoteParticipants copy];
  [v5 setActiveRemoteParticipants:v20];

  v21 = [v5 copy];

  return v21;
}

- (void)setEndpointOnCurrentDevice:(BOOL)device
{
  self->_endpointOnCurrentDevice = device;
  delegate = [(CSDRelayConversation *)self delegate];
  [delegate conversationChanged:self];
}

- (CSDRelayConversationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end