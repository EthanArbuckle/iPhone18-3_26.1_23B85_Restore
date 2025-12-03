@interface TUJoinConversationRequest
- (CXJoinCallAction)joinCallAction;
@end

@implementation TUJoinConversationRequest

- (CXJoinCallAction)joinCallAction
{
  selfCopy = self;
  remoteMembers = [(TUJoinConversationRequest *)selfCopy remoteMembers];
  v60 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers count]);

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v59 = selfCopy;
  remoteMembers2 = [(TUJoinConversationRequest *)selfCopy remoteMembers];
  v5 = [remoteMembers2 countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v66;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v66 != v7)
        {
          objc_enumerationMutation(remoteMembers2);
        }

        v9 = *(*(&v65 + 1) + 8 * i);
        v10 = [CXMember alloc];
        handle = [v9 handle];
        v12 = [CXHandle handleWithTUHandle:handle];
        stableDeviceIdentifier = [v9 stableDeviceIdentifier];
        v14 = [v10 initWithHandle:v12 identityBlob:0 stableDeviceIdentifier:stableDeviceIdentifier];
        [v60 addObject:v14];
      }

      v6 = [remoteMembers2 countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v6);
  }

  otherInvitedHandles = [(TUJoinConversationRequest *)selfCopy otherInvitedHandles];
  v16 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [otherInvitedHandles count]);

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  otherInvitedHandles2 = [(TUJoinConversationRequest *)selfCopy otherInvitedHandles];
  v18 = [otherInvitedHandles2 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v62;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v62 != v20)
        {
          objc_enumerationMutation(otherInvitedHandles2);
        }

        v22 = [CXHandle handleWithTUHandle:*(*(&v61 + 1) + 8 * j)];
        [v16 addObject:v22];
      }

      v19 = [otherInvitedHandles2 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v19);
  }

  conversationLink = [(TUJoinConversationRequest *)v59 conversationLink];
  if (conversationLink && ([(TUJoinConversationRequest *)v59 isJoiningConversationWithLink]& 1) == 0)
  {
    uUID = [(TUJoinConversationRequest *)v59 UUID];
  }

  else
  {
    messagesGroupUUID = [(TUJoinConversationRequest *)v59 messagesGroupUUID];
    v25 = messagesGroupUUID;
    if (messagesGroupUUID)
    {
      uUID = messagesGroupUUID;
    }

    else
    {
      conversationLink2 = [(TUJoinConversationRequest *)v59 conversationLink];
      groupUUID = [conversationLink2 groupUUID];
      v29 = groupUUID;
      if (groupUUID)
      {
        v30 = groupUUID;
      }

      else
      {
        v30 = +[NSUUID UUID];
      }

      uUID = v30;
    }
  }

  v31 = [CXJoinCallAction alloc];
  uUID2 = [(TUJoinConversationRequest *)v59 UUID];
  v33 = [v31 initWithCallUUID:uUID2 groupUUID:uUID];

  if (conversationLink)
  {
    pseudonym = [conversationLink pseudonym];
    [v33 setPseudonym:pseudonym];

    publicKey = [conversationLink publicKey];
    [v33 setPublicKey:publicKey];
  }

  [v33 setRemoteMembers:v60];
  [v33 setOtherInvitedHandles:v16];
  [v33 setVideoEnabled:{-[TUJoinConversationRequest isVideoEnabled](v59, "isVideoEnabled")}];
  activity = [(TUJoinConversationRequest *)v59 activity];
  if (activity)
  {
    activity2 = [(TUJoinConversationRequest *)v59 activity];
    v38 = [CXJoinCallActivity activityWithTUConversationActivity:activity2];
    [v33 setJoinCallActivity:v38];
  }

  else
  {
    [v33 setJoinCallActivity:0];
  }

  [v33 setVideo:{-[TUJoinConversationRequest isVideo](v59, "isVideo")}];
  callerID = [(TUJoinConversationRequest *)v59 callerID];
  if (callerID)
  {
    callerID2 = [(TUJoinConversationRequest *)v59 callerID];
    v41 = [CXHandle handleWithTUHandle:callerID2];
    [v33 setCallerID:v41];
  }

  else
  {
    [v33 setCallerID:0];
  }

  [v33 setAvMode:{-[TUJoinConversationRequest avMode](v59, "avMode")}];
  [v33 setPresentationMode:{-[TUJoinConversationRequest presentationMode](v59, "presentationMode")}];
  [v33 setUplinkMuted:{-[TUJoinConversationRequest isUplinkMuted](v59, "isUplinkMuted")}];
  [v33 setShouldSuppressInCallUI:{-[TUJoinConversationRequest shouldSuppressInCallUI](v59, "shouldSuppressInCallUI")}];
  [v33 setLaunchInBackground:{-[TUJoinConversationRequest launchInBackground](v59, "launchInBackground")}];
  messagesGroupUUID2 = [(TUJoinConversationRequest *)v59 messagesGroupUUID];
  [v33 setMessagesGroupUUID:messagesGroupUUID2];

  messagesGroupName = [(TUJoinConversationRequest *)v59 messagesGroupName];
  [v33 setMessagesGroupName:messagesGroupName];

  [v33 setWantsStagingArea:{-[TUJoinConversationRequest wantsStagingArea](v59, "wantsStagingArea")}];
  [v33 setLetMeIn:{-[TUJoinConversationRequest sendLetMeInRequest](v59, "sendLetMeInRequest")}];
  [v33 setJoiningConversationWithLink:{-[TUJoinConversationRequest isJoiningConversationWithLink](v59, "isJoiningConversationWithLink")}];
  provider = [(TUJoinConversationRequest *)v59 provider];
  identifier = [provider identifier];
  [v33 setConversationProviderIdentifier:identifier];

  collaborationIdentifier = [(TUJoinConversationRequest *)v59 collaborationIdentifier];
  [v33 setCollaborationIdentifier:collaborationIdentifier];

  invitationPreferences = [(TUJoinConversationRequest *)v59 invitationPreferences];
  v48 = [invitationPreferences count];

  if (v48)
  {
    v49 = sub_100004778();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      invitationPreferences2 = [(TUJoinConversationRequest *)v59 invitationPreferences];
      *buf = 138412290;
      v70 = invitationPreferences2;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Join request specifies invitation preferences: %@", buf, 0xCu);
    }

    notificationStylesByHandleType = [(TUJoinConversationRequest *)v59 notificationStylesByHandleType];
    [v33 setNotificationStylesByHandleType:notificationStylesByHandleType];
  }

  [v33 setRelay:{-[TUJoinConversationRequest endpointOnCurrentDevice](v59, "endpointOnCurrentDevice") ^ 1}];
  participantCluster = [(TUJoinConversationRequest *)v59 participantCluster];

  if (participantCluster)
  {
    v53 = [CXJoinCallParticipantCluster alloc];
    participantCluster2 = [(TUJoinConversationRequest *)v59 participantCluster];
    uUID3 = [participantCluster2 UUID];
    participantCluster3 = [(TUJoinConversationRequest *)v59 participantCluster];
    v57 = [v53 initWithUUID:uUID3 type:{objc_msgSend(participantCluster3, "type")}];
    [v33 setParticipantCluster:v57];
  }

  return v33;
}

@end