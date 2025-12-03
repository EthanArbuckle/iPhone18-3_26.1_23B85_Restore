@interface CSDGFTServiceConversationProviderDelegate
- (BOOL)isManagingCallWithUUID:(id)d;
- (BOOL)isProviderForeground:(id)foreground;
- (BOOL)shouldHandleProvider:(id)provider;
- (BOOL)shouldHandleProviderWithIdentifier:(id)identifier;
- (CSDGFTServiceConversationProviderDelegate)initWithConversationManager:(id)manager queue:(id)queue invitationResolver:(id)resolver;
- (void)conversationManager:(id)manager conversationChanged:(id)changed;
- (void)provider:(id)provider performEndCallAction:(id)action;
- (void)provider:(id)provider performJoinCallAction:(id)action;
- (void)provider:(id)provider performSetRelayingCallAction:(id)action;
- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action;
@end

@implementation CSDGFTServiceConversationProviderDelegate

- (CSDGFTServiceConversationProviderDelegate)initWithConversationManager:(id)manager queue:(id)queue invitationResolver:(id)resolver
{
  managerCopy = manager;
  queueCopy = queue;
  resolverCopy = resolver;
  v18.receiver = self;
  v18.super_class = CSDGFTServiceConversationProviderDelegate;
  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v18 initWithConversationManager:managerCopy queue:queueCopy invitationResolver:resolverCopy];
  if (v11)
  {
    v12 = [[CSDProcessObserver alloc] initWithQueue:queueCopy];
    processObserver = v11->_processObserver;
    v11->_processObserver = v12;

    objc_initWeak(&location, v11);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10020299C;
    v15[3] = &unk_10061C3C8;
    objc_copyWeak(&v16, &location);
    [(CSDProcessObserverProtocol *)v11->_processObserver setProcessStateChanged:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (BOOL)isProviderForeground:(id)foreground
{
  foregroundCopy = foreground;
  processObserver = [(CSDGFTServiceConversationProviderDelegate *)self processObserver];
  v6 = [processObserver fetchCurrentProcessStatesForBundleIdentifier:foregroundCopy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [v6 allValues];
  v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v12 + 1) + 8 * i) integerValue] == 4)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)provider:(id)provider performJoinCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v75 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", buf, 0xCu);
  }

  v7 = +[CSDConversationProviderManager sharedInstance];
  conversationProviderIdentifier = [actionCopy conversationProviderIdentifier];
  v9 = [v7 tuConversationProviderForIdentifier:conversationProviderIdentifier];

  bundleIdentifier = [v9 bundleIdentifier];
  if (bundleIdentifier && (v11 = bundleIdentifier, [v9 bundleIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[CSDGFTServiceConversationProviderDelegate isProviderForeground:](self, "isProviderForeground:", v12), v12, v11, (v13 & 1) == 0))
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [v9 bundleIdentifier];
      *buf = 138412290;
      v75 = bundleIdentifier2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] bundleIdentifer: %@ not in the foreground, failing join call action", buf, 0xCu);
    }

    [actionCopy fail];
  }

  else
  {
    selfCopy = self;
    callerID = [actionCopy callerID];
    v15 = &_s10Foundation3URLVMa_ptr_0;
    v54 = v9;
    if (callerID)
    {
      v16 = [TUConversationMember alloc];
      callerID2 = [actionCopy callerID];
      tuHandle = [callerID2 tuHandle];
      v56 = [v16 initWithHandle:tuHandle nickname:0];
    }

    else
    {
      v56 = 0;
    }

    remoteMembers = [actionCopy remoteMembers];
    v58 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers count]);

    otherInvitedHandles = [actionCopy otherInvitedHandles];
    v23 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [otherInvitedHandles count]);

    v24 = +[NSMutableSet set];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v55 = actionCopy;
    obj = [actionCopy remoteMembers];
    v25 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
    v57 = v24;
    if (v25)
    {
      v26 = v25;
      v27 = *v70;
      do
      {
        v28 = 0;
        v59 = v26;
        do
        {
          if (*v70 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v69 + 1) + 8 * v28);
          handle = [v29 handle];
          tuHandle2 = [handle tuHandle];

          if ([v24 containsObject:tuHandle2])
          {
            v32 = sub_100004778();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v75 = tuHandle2;
              v76 = 2112;
              v77 = v24;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] Skipping member with handle %@ because it already exists in seen handles: %@", buf, 0x16u);
            }
          }

          else
          {
            v33 = v15;
            v32 = [objc_alloc(v15[183]) initWithHandle:tuHandle2 nickname:0];
            stableDeviceIdentifier = [v29 stableDeviceIdentifier];
            [v32 setStableDeviceIdentifier:stableDeviceIdentifier];

            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v35 = v23;
            v36 = v23;
            v37 = [v36 countByEnumeratingWithState:&v65 objects:v78 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v66;
              do
              {
                for (i = 0; i != v38; i = i + 1)
                {
                  if (*v66 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  if ([*(*(&v65 + 1) + 8 * i) isEquivalentToHandle:tuHandle2])
                  {
                    [v32 setIsOtherInvitedHandle:1];
                  }
                }

                v38 = [v36 countByEnumeratingWithState:&v65 objects:v78 count:16];
              }

              while (v38);
            }

            [v58 addObject:v32];
            v24 = v57;
            [v57 addObject:tuHandle2];
            v23 = v35;
            v15 = v33;
            v26 = v59;
          }

          v28 = v28 + 1;
        }

        while (v28 != v26);
        v26 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
      }

      while (v26);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    actionCopy = v55;
    otherInvitedHandles2 = [v55 otherInvitedHandles];
    v42 = [otherInvitedHandles2 countByEnumeratingWithState:&v61 objects:v73 count:16];
    v9 = v54;
    if (v42)
    {
      v43 = v42;
      v44 = *v62;
      do
      {
        for (j = 0; j != v43; j = j + 1)
        {
          if (*v62 != v44)
          {
            objc_enumerationMutation(otherInvitedHandles2);
          }

          tuHandle3 = [*(*(&v61 + 1) + 8 * j) tuHandle];
          [v23 addObject:tuHandle3];
        }

        v43 = [otherInvitedHandles2 countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v43);
    }

    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy conversationManager];
    groupUUID = [v55 groupUUID];
    messagesGroupUUID = [v55 messagesGroupUUID];
    remotePushTokens = [v55 remotePushTokens];
    if ([v55 isVideo])
    {
      v51 = 2;
    }

    else
    {
      v51 = 1;
    }

    v52 = [conversationManager findOrCreateConversationWithGroupUUID:groupUUID messagesGroupUUID:messagesGroupUUID remoteMembers:v58 otherInvitedHandles:v23 localMember:v56 remotePushTokens:remotePushTokens link:0 activity:0 avMode:v51 presentationMode:objc_msgSend(v55 conversationProvider:"presentationMode") screenSharingRequest:{v54, 0}];

    if (v52)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy proceedToJoinForConversation:v52 action:v55];
    }

    else
    {
      [v55 fail];
    }
  }
}

- (void)provider:(id)provider performEndCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Performing end call action %@", &v18, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v10 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:v10];

  if (v13)
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversation:v13 withCallUUID:callUUID reason:-1];
    [actionCopy fulfill];
  }

  else
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager2 conversationsByUUID];
      v18 = 138412802;
      v19 = callUUID;
      v20 = 2112;
      v21 = conversationUUIDsByCallUUID2;
      v22 = 2112;
      v23 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for end call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v18, 0x20u);
    }

    [actionCopy fail];
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:callUUID endedReason:-1];
}

- (void)provider:(id)provider performSetRelayingCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failing %@ It is not supported by GFTaaS", &v8, 0xCu);
  }

  [actionCopy fail];
}

- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failing %@ It is not supported by GFTaaS", &v8, 0xCu);
  }

  [actionCopy fail];
}

- (BOOL)isManagingCallWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v6 = [conversationUUIDsByCallUUID objectForKeyedSubscript:dCopy];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v9 = [conversationsByUUID objectForKeyedSubscript:v6];

  v13.receiver = self;
  v13.super_class = CSDGFTServiceConversationProviderDelegate;
  LODWORD(self) = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v13 isManagingCallWithUUID:dCopy];

  LOBYTE(dCopy) = 0;
  if (self && v9)
  {
    provider = [v9 provider];
    LODWORD(dCopy) = [provider isDefaultProvider] ^ 1;
  }

  return dCopy;
}

- (void)conversationManager:(id)manager conversationChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [changedCopy UUID];
  v9 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  v10 = [[CXCallUpdate alloc] initWithTUConversation:changedCopy];
  remoteMembers = [changedCopy remoteMembers];
  v12 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers count]);

  remoteMembers2 = [changedCopy remoteMembers];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100203EB8;
  v50[3] = &unk_10061A200;
  v14 = v12;
  v51 = v14;
  [remoteMembers2 enumerateObjectsUsingBlock:v50];

  [v10 setRemoteParticipantHandles:v14];
  activeRemoteParticipantCXHandles = [changedCopy activeRemoteParticipantCXHandles];
  v16 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [activeRemoteParticipantCXHandles count]);

  activeRemoteParticipantCXHandles2 = [changedCopy activeRemoteParticipantCXHandles];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100203F6C;
  v48[3] = &unk_10061E620;
  v18 = v16;
  v49 = v18;
  [activeRemoteParticipantCXHandles2 enumerateObjectsUsingBlock:v48];

  [v10 setActiveRemoteParticipantHandles:v18];
  [v10 setOneToOneModeEnabled:{objc_msgSend(changedCopy, "isOneToOneModeEnabled")}];
  [v10 setScreenSharingType:{objc_msgSend(changedCopy, "screenSharingType")}];
  if ([changedCopy isOneToOneModeEnabled])
  {
    mergedActiveRemoteParticipants = [changedCopy mergedActiveRemoteParticipants];
    if ([mergedActiveRemoteParticipants count] == 1)
    {
      mergedActiveRemoteParticipants2 = [changedCopy mergedActiveRemoteParticipants];
      anyObject = [mergedActiveRemoteParticipants2 anyObject];
      streamToken = [anyObject streamToken];

      if (!streamToken)
      {
        goto LABEL_6;
      }

      mergedActiveRemoteParticipants = [changedCopy mergedActiveRemoteParticipants];
      anyObject2 = [mergedActiveRemoteParticipants anyObject];
      [v10 setVideoStreamToken:{objc_msgSend(anyObject2, "streamToken")}];
    }
  }

LABEL_6:
  state = [changedCopy state];
  if (state > 1)
  {
    if (state == 2)
    {
      if (!v9)
      {
        conversationManager = sub_100004778();
        if (os_log_type_enabled(conversationManager, OS_LOG_TYPE_ERROR))
        {
          sub_10047B9B4(changedCopy, conversationManager);
        }

        goto LABEL_44;
      }

      if ([changedCopy isLocallyCreated])
      {
        if (([changedCopy isOneToOneModeEnabled] & 1) == 0)
        {
          [v10 setRequiresInCallSounds:0];
          provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
          v28 = +[NSDate date];
          [provider reportOutgoingCallWithUUID:v9 startedConnectingAtDate:v28];
        }

        provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
        v30 = +[NSDate date];
        [provider2 reportOutgoingCallWithUUID:v9 sentInvitationAtDate:v30];
      }

      [(CSDAbstractFaceTimeConversationProviderDelegate *)self fullfillPendingJoinActionsForCallUUIDIfNecessary:v9];
      goto LABEL_43;
    }

    if (state == 4)
    {
      [v10 setMixesVoiceWithMedia:0];
      goto LABEL_42;
    }

    if (state != 3)
    {
      goto LABEL_42;
    }

    if (!v9)
    {
      v36 = sub_100004778();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10047BA2C(changedCopy, v36);
      }

      conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      uUID2 = [changedCopy UUID];
      [conversationManager leaveConversationWithUUID:uUID2];

      goto LABEL_44;
    }

    if ([changedCopy isOneToOneModeEnabled])
    {
      faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
      v26 = +[NSDate date];
      [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:v9 connectedAtDate:v26];
    }

    else
    {
      faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      v26 = +[NSDate date];
      [faceTimeDemuxerDelegate reportOutgoingCallWithUUID:v9 connectedAtDate:v26];
    }

    if ([changedCopy isOneToOneModeEnabled])
    {
      [v10 setConversation:1];
    }

    provider3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v39 = [provider3 pendingCallActionsOfClass:objc_opt_class() withCallUUID:v9];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v33 = v39;
    v40 = [v33 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v45;
      do
      {
        v43 = 0;
        do
        {
          if (*v45 != v42)
          {
            objc_enumerationMutation(v33);
          }

          [*(*(&v44 + 1) + 8 * v43) fulfill];
          v43 = v43 + 1;
        }

        while (v41 != v43);
        v41 = [v33 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v41);
    }

LABEL_41:
    goto LABEL_42;
  }

  if (!state)
  {
    uUID3 = [changedCopy UUID];
    v32 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self _isWaitingToJoinForConversationUUID:uUID3];

    if (v32)
    {
      goto LABEL_42;
    }

    v33 = objc_alloc_init(CXCallFailureContext);
    [v33 setFailureReason:0];
    [v33 setProviderEndedReason:504];
    uUID4 = [changedCopy UUID];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:uUID4 failureContext:v33];

    goto LABEL_41;
  }

  if (state == 1)
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self fullfillPendingJoinActionsForCallUUIDIfNecessary:v9];
  }

LABEL_42:
  if (v9)
  {
LABEL_43:
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [conversationManager reportCallWithUUID:v9 updated:v10];
LABEL_44:
  }
}

- (BOOL)shouldHandleProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CSDConversationProviderManager sharedInstance];
  v5 = [v4 conversationProviderForIdentifier:identifierCopy];

  return v5 != 0;
}

- (BOOL)shouldHandleProvider:(id)provider
{
  providerCopy = provider;
  v4 = providerCopy;
  if (providerCopy && ([providerCopy isDefaultProvider] & 1) == 0)
  {
    v5 = [v4 isTelephonyWithSharePlayProvider] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end