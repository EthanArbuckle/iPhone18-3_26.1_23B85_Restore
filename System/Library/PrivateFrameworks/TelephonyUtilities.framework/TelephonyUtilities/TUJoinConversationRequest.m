@interface TUJoinConversationRequest
- (CXJoinCallAction)joinCallAction;
@end

@implementation TUJoinConversationRequest

- (CXJoinCallAction)joinCallAction
{
  v2 = self;
  v3 = [(TUJoinConversationRequest *)v2 remoteMembers];
  v60 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v59 = v2;
  v4 = [(TUJoinConversationRequest *)v2 remoteMembers];
  v5 = [v4 countByEnumeratingWithState:&v65 objects:v72 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v65 + 1) + 8 * i);
        v10 = [CXMember alloc];
        v11 = [v9 handle];
        v12 = [CXHandle handleWithTUHandle:v11];
        v13 = [v9 stableDeviceIdentifier];
        v14 = [v10 initWithHandle:v12 identityBlob:0 stableDeviceIdentifier:v13];
        [v60 addObject:v14];
      }

      v6 = [v4 countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v6);
  }

  v15 = [(TUJoinConversationRequest *)v2 otherInvitedHandles];
  v16 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v15 count]);

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v17 = [(TUJoinConversationRequest *)v2 otherInvitedHandles];
  v18 = [v17 countByEnumeratingWithState:&v61 objects:v71 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = [CXHandle handleWithTUHandle:*(*(&v61 + 1) + 8 * j)];
        [v16 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v19);
  }

  v23 = [(TUJoinConversationRequest *)v59 conversationLink];
  if (v23 && ([(TUJoinConversationRequest *)v59 isJoiningConversationWithLink]& 1) == 0)
  {
    v26 = [(TUJoinConversationRequest *)v59 UUID];
  }

  else
  {
    v24 = [(TUJoinConversationRequest *)v59 messagesGroupUUID];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v27 = [(TUJoinConversationRequest *)v59 conversationLink];
      v28 = [v27 groupUUID];
      v29 = v28;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = +[NSUUID UUID];
      }

      v26 = v30;
    }
  }

  v31 = [CXJoinCallAction alloc];
  v32 = [(TUJoinConversationRequest *)v59 UUID];
  v33 = [v31 initWithCallUUID:v32 groupUUID:v26];

  if (v23)
  {
    v34 = [v23 pseudonym];
    [v33 setPseudonym:v34];

    v35 = [v23 publicKey];
    [v33 setPublicKey:v35];
  }

  [v33 setRemoteMembers:v60];
  [v33 setOtherInvitedHandles:v16];
  [v33 setVideoEnabled:{-[TUJoinConversationRequest isVideoEnabled](v59, "isVideoEnabled")}];
  v36 = [(TUJoinConversationRequest *)v59 activity];
  if (v36)
  {
    v37 = [(TUJoinConversationRequest *)v59 activity];
    v38 = [CXJoinCallActivity activityWithTUConversationActivity:v37];
    [v33 setJoinCallActivity:v38];
  }

  else
  {
    [v33 setJoinCallActivity:0];
  }

  [v33 setVideo:{-[TUJoinConversationRequest isVideo](v59, "isVideo")}];
  v39 = [(TUJoinConversationRequest *)v59 callerID];
  if (v39)
  {
    v40 = [(TUJoinConversationRequest *)v59 callerID];
    v41 = [CXHandle handleWithTUHandle:v40];
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
  v42 = [(TUJoinConversationRequest *)v59 messagesGroupUUID];
  [v33 setMessagesGroupUUID:v42];

  v43 = [(TUJoinConversationRequest *)v59 messagesGroupName];
  [v33 setMessagesGroupName:v43];

  [v33 setWantsStagingArea:{-[TUJoinConversationRequest wantsStagingArea](v59, "wantsStagingArea")}];
  [v33 setLetMeIn:{-[TUJoinConversationRequest sendLetMeInRequest](v59, "sendLetMeInRequest")}];
  [v33 setJoiningConversationWithLink:{-[TUJoinConversationRequest isJoiningConversationWithLink](v59, "isJoiningConversationWithLink")}];
  v44 = [(TUJoinConversationRequest *)v59 provider];
  v45 = [v44 identifier];
  [v33 setConversationProviderIdentifier:v45];

  v46 = [(TUJoinConversationRequest *)v59 collaborationIdentifier];
  [v33 setCollaborationIdentifier:v46];

  v47 = [(TUJoinConversationRequest *)v59 invitationPreferences];
  v48 = [v47 count];

  if (v48)
  {
    v49 = sub_100004778();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [(TUJoinConversationRequest *)v59 invitationPreferences];
      *buf = 138412290;
      v70 = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Join request specifies invitation preferences: %@", buf, 0xCu);
    }

    v51 = [(TUJoinConversationRequest *)v59 notificationStylesByHandleType];
    [v33 setNotificationStylesByHandleType:v51];
  }

  [v33 setRelay:{-[TUJoinConversationRequest endpointOnCurrentDevice](v59, "endpointOnCurrentDevice") ^ 1}];
  v52 = [(TUJoinConversationRequest *)v59 participantCluster];

  if (v52)
  {
    v53 = [CXJoinCallParticipantCluster alloc];
    v54 = [(TUJoinConversationRequest *)v59 participantCluster];
    v55 = [v54 UUID];
    v56 = [(TUJoinConversationRequest *)v59 participantCluster];
    v57 = [v53 initWithUUID:v55 type:{objc_msgSend(v56, "type")}];
    [v33 setParticipantCluster:v57];
  }

  return v33;
}

@end