@interface CSDRelayConversation
- (CSDRelayConversation)initWithRelayMessage:(id)a3 queue:(id)a4;
- (CSDRelayConversationDelegate)delegate;
- (TUConversation)tuConversation;
- (id)description;
- (void)setEndpointOnCurrentDevice:(BOOL)a3;
- (void)updateWithProminenceRelayMessage:(id)a3;
- (void)updateWithRelayMessage:(id)a3;
@end

@implementation CSDRelayConversation

- (CSDRelayConversation)initWithRelayMessage:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = CSDRelayConversation;
  v8 = [(CSDRelayConversation *)&v36 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a4);
    v9->_state = [v6 tuState];
    v10 = [NSUUID alloc];
    v11 = [v6 uUIDString];
    v12 = [v10 initWithUUIDString:v11];
    UUID = v9->_UUID;
    v9->_UUID = v12;

    v14 = [NSUUID alloc];
    v15 = [v6 groupUUIDString];
    v16 = [v14 initWithUUIDString:v15];
    groupUUID = v9->_groupUUID;
    v9->_groupUUID = v16;

    v18 = [NSUUID alloc];
    v19 = [v6 messagesGroupUUIDString];
    v20 = [v18 initWithUUIDString:v19];
    messagesGroupUUID = v9->_messagesGroupUUID;
    v9->_messagesGroupUUID = v20;

    v22 = [v6 localMember];
    v23 = [v22 tuConversationMember];
    localMember = v9->_localMember;
    v9->_localMember = v23;

    v9->_avMode = [v6 tuAVMode];
    v25 = [v6 initiator];
    v26 = [v25 tuHandle];
    initiator = v9->_initiator;
    v9->_initiator = v26;

    v28 = [v6 reportData];
    v29 = [v28 tuConversationReport];
    report = v9->_report;
    v9->_report = v29;

    v31 = [v6 tuConversationMembers];
    remoteMembers = v9->_remoteMembers;
    v9->_remoteMembers = v31;

    v33 = [v6 tuConversationParticipants];
    activeRemoteParticipants = v9->_activeRemoteParticipants;
    v9->_activeRemoteParticipants = v33;

    v9->_endpointOnCurrentDevice = 1;
  }

  return v9;
}

- (void)updateWithRelayMessage:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [NSUUID alloc];
  v7 = [v4 messagesGroupUUIDString];
  v8 = [v6 initWithUUIDString:v7];
  [(CSDRelayConversation *)self setMessagesGroupUUID:v8];

  v9 = [v4 tuConversationParticipants];
  [(CSDRelayConversation *)self setActiveRemoteParticipants:v9];

  v10 = [v4 tuConversationMembers];
  [(CSDRelayConversation *)self setRemoteMembers:v10];

  -[CSDRelayConversation setState:](self, "setState:", [v4 tuState]);
  -[CSDRelayConversation setAvMode:](self, "setAvMode:", [v4 tuAVMode]);
  v11 = [v4 localMember];

  v12 = [v11 tuConversationMember];
  [(CSDRelayConversation *)self setLocalMember:v12];

  v13 = [(CSDRelayConversation *)self delegate];
  [v13 conversationChanged:self];
}

- (void)updateWithProminenceRelayMessage:(id)a3
{
  v4 = a3;
  v23 = self;
  v5 = [(CSDRelayConversation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 prominenceEntrys];
  v7 = v6;
  if (v6)
  {
    v21 = v4;
    obj = v6;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          v13 = [(CSDRelayConversation *)v23 activeRemoteParticipants];
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v24 + 1) + 8 * j);
                v19 = [v18 identifier];
                if (v19 == [v12 participantIdentifier])
                {
                  [v18 setAudioPriority:{objc_msgSend(v12, "audioPriority")}];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v15);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    v20 = [(CSDRelayConversation *)v23 delegate];
    [v20 conversationChanged:v23];
    v4 = v21;
    v7 = obj;
  }

  else
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100479148(v20);
    }
  }
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CSDRelayConversation *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  v5 = [(CSDRelayConversation *)self groupUUID];
  [v3 appendFormat:@" groupUUID=%@", v5];

  v6 = [(CSDRelayConversation *)self messagesGroupUUID];

  if (v6)
  {
    v7 = [(CSDRelayConversation *)self messagesGroupUUID];
    [v3 appendFormat:@" messagesGroupUUID=%@", v7];
  }

  [v3 appendFormat:@" state=%ld", -[CSDRelayConversation state](self, "state")];
  v8 = [(CSDRelayConversation *)self localMember];
  [v3 appendFormat:@" localMember=%@", v8];

  v9 = [(CSDRelayConversation *)self remoteMembers];
  [v3 appendFormat:@" remoteMembers=%@", v9];

  v10 = [(CSDRelayConversation *)self activeRemoteParticipants];
  [v3 appendFormat:@" activeRemoteParticipants=%@", v10];

  [v3 appendString:@">"];
  v11 = [v3 copy];

  return v11;
}

- (TUConversation)tuConversation
{
  v3 = [(CSDRelayConversation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDRelayConversation *)self groupUUID];
  v5 = [TUMutableConversation emptyConversationWithGroupUUID:v4];

  [v5 setHostedOnCurrentDevice:0];
  [v5 setEndpointOnCurrentDevice:{-[CSDRelayConversation endpointOnCurrentDevice](self, "endpointOnCurrentDevice")}];
  v6 = [(CSDRelayConversation *)self UUID];
  [v5 setUUID:v6];

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
    v13 = [(CSDRelayConversation *)self state];
  }

  else
  {
    v13 = 0;
  }

  [v5 setState:v13];
  [v5 setState:{-[CSDRelayConversation state](self, "state")}];
  v14 = [(CSDRelayConversation *)self messagesGroupUUID];
  [v5 setMessagesGroupUUID:v14];

  v15 = [(CSDRelayConversation *)self remoteMembers];
  [v5 setRemoteMembers:v15];

  v16 = [(CSDRelayConversation *)self localMember];
  [v5 setLocalMember:v16];

  [v5 setAvMode:{-[CSDRelayConversation avMode](self, "avMode")}];
  v17 = [(CSDRelayConversation *)self initiator];
  [v5 setInitiator:v17];

  v18 = [(CSDRelayConversation *)self report];
  [v5 setReport:v18];

  v19 = [(CSDRelayConversation *)self activeRemoteParticipants];
  v20 = [v19 copy];
  [v5 setActiveRemoteParticipants:v20];

  v21 = [v5 copy];

  return v21;
}

- (void)setEndpointOnCurrentDevice:(BOOL)a3
{
  self->_endpointOnCurrentDevice = a3;
  v4 = [(CSDRelayConversation *)self delegate];
  [v4 conversationChanged:self];
}

- (CSDRelayConversationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end