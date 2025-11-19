@interface CSDGFTServiceConversationProviderDelegate
- (BOOL)isManagingCallWithUUID:(id)a3;
- (BOOL)isProviderForeground:(id)a3;
- (BOOL)shouldHandleProvider:(id)a3;
- (BOOL)shouldHandleProviderWithIdentifier:(id)a3;
- (CSDGFTServiceConversationProviderDelegate)initWithConversationManager:(id)a3 queue:(id)a4 invitationResolver:(id)a5;
- (void)conversationManager:(id)a3 conversationChanged:(id)a4;
- (void)provider:(id)a3 performEndCallAction:(id)a4;
- (void)provider:(id)a3 performJoinCallAction:(id)a4;
- (void)provider:(id)a3 performSetRelayingCallAction:(id)a4;
- (void)provider:(id)a3 performSetSendingVideoCallAction:(id)a4;
@end

@implementation CSDGFTServiceConversationProviderDelegate

- (CSDGFTServiceConversationProviderDelegate)initWithConversationManager:(id)a3 queue:(id)a4 invitationResolver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = CSDGFTServiceConversationProviderDelegate;
  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v18 initWithConversationManager:v8 queue:v9 invitationResolver:v10];
  if (v11)
  {
    v12 = [[CSDProcessObserver alloc] initWithQueue:v9];
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

- (BOOL)isProviderForeground:(id)a3
{
  v4 = a3;
  v5 = [(CSDGFTServiceConversationProviderDelegate *)self processObserver];
  v6 = [v5 fetchCurrentProcessStatesForBundleIdentifier:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v6 allValues];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v12 + 1) + 8 * i) integerValue] == 4)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)provider:(id)a3 performJoinCallAction:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v75 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", buf, 0xCu);
  }

  v7 = +[CSDConversationProviderManager sharedInstance];
  v8 = [v5 conversationProviderIdentifier];
  v9 = [v7 tuConversationProviderForIdentifier:v8];

  v10 = [v9 bundleIdentifier];
  if (v10 && (v11 = v10, [v9 bundleIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[CSDGFTServiceConversationProviderDelegate isProviderForeground:](self, "isProviderForeground:", v12), v12, v11, (v13 & 1) == 0))
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v9 bundleIdentifier];
      *buf = 138412290;
      v75 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] bundleIdentifer: %@ not in the foreground, failing join call action", buf, 0xCu);
    }

    [v5 fail];
  }

  else
  {
    v53 = self;
    v14 = [v5 callerID];
    v15 = &_s10Foundation3URLVMa_ptr_0;
    v54 = v9;
    if (v14)
    {
      v16 = [TUConversationMember alloc];
      v17 = [v5 callerID];
      v18 = [v17 tuHandle];
      v56 = [v16 initWithHandle:v18 nickname:0];
    }

    else
    {
      v56 = 0;
    }

    v21 = [v5 remoteMembers];
    v58 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v21 count]);

    v22 = [v5 otherInvitedHandles];
    v23 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v22 count]);

    v24 = +[NSMutableSet set];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v55 = v5;
    obj = [v5 remoteMembers];
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
          v30 = [v29 handle];
          v31 = [v30 tuHandle];

          if ([v24 containsObject:v31])
          {
            v32 = sub_100004778();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v75 = v31;
              v76 = 2112;
              v77 = v24;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] Skipping member with handle %@ because it already exists in seen handles: %@", buf, 0x16u);
            }
          }

          else
          {
            v33 = v15;
            v32 = [objc_alloc(v15[183]) initWithHandle:v31 nickname:0];
            v34 = [v29 stableDeviceIdentifier];
            [v32 setStableDeviceIdentifier:v34];

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

                  if ([*(*(&v65 + 1) + 8 * i) isEquivalentToHandle:v31])
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
            [v57 addObject:v31];
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
    v5 = v55;
    v41 = [v55 otherInvitedHandles];
    v42 = [v41 countByEnumeratingWithState:&v61 objects:v73 count:16];
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
            objc_enumerationMutation(v41);
          }

          v46 = [*(*(&v61 + 1) + 8 * j) tuHandle];
          [v23 addObject:v46];
        }

        v43 = [v41 countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v43);
    }

    v47 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v53 conversationManager];
    v48 = [v55 groupUUID];
    v49 = [v55 messagesGroupUUID];
    v50 = [v55 remotePushTokens];
    if ([v55 isVideo])
    {
      v51 = 2;
    }

    else
    {
      v51 = 1;
    }

    v52 = [v47 findOrCreateConversationWithGroupUUID:v48 messagesGroupUUID:v49 remoteMembers:v58 otherInvitedHandles:v23 localMember:v56 remotePushTokens:v50 link:0 activity:0 avMode:v51 presentationMode:objc_msgSend(v55 conversationProvider:"presentationMode") screenSharingRequest:{v54, 0}];

    if (v52)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)v53 proceedToJoinForConversation:v52 action:v55];
    }

    else
    {
      [v55 fail];
    }
  }
}

- (void)provider:(id)a3 performEndCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Performing end call action %@", &v18, 0xCu);
  }

  v8 = [v5 callUUID];
  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v10 = [v9 objectForKeyedSubscript:v8];

  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v12 = [v11 conversationsByUUID];
  v13 = [v12 objectForKeyedSubscript:v10];

  if (v13)
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversation:v13 withCallUUID:v8 reason:-1];
    [v5 fulfill];
  }

  else
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      v16 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v17 = [v16 conversationsByUUID];
      v18 = 138412802;
      v19 = v8;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for end call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v18, 0x20u);
    }

    [v5 fail];
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:v8 endedReason:-1];
}

- (void)provider:(id)a3 performSetRelayingCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failing %@ It is not supported by GFTaaS", &v8, 0xCu);
  }

  [v5 fail];
}

- (void)provider:(id)a3 performSetSendingVideoCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failing %@ It is not supported by GFTaaS", &v8, 0xCu);
  }

  [v5 fail];
}

- (BOOL)isManagingCallWithUUID:(id)a3
{
  v10 = a3;
  v4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v6 = [v5 objectForKeyedSubscript:v10];

  v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v8 = [v7 conversationsByUUID];
  v9 = [v8 objectForKeyedSubscript:v6];

  v13.receiver = self;
  v13.super_class = CSDGFTServiceConversationProviderDelegate;
  LODWORD(self) = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v13 isManagingCallWithUUID:v10];

  LOBYTE(v10) = 0;
  if (self && v9)
  {
    v11 = [v9 provider];
    LODWORD(v10) = [v11 isDefaultProvider] ^ 1;
  }

  return v10;
}

- (void)conversationManager:(id)a3 conversationChanged:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v8 = [v5 UUID];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [[CXCallUpdate alloc] initWithTUConversation:v5];
  v11 = [v5 remoteMembers];
  v12 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v11 count]);

  v13 = [v5 remoteMembers];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100203EB8;
  v50[3] = &unk_10061A200;
  v14 = v12;
  v51 = v14;
  [v13 enumerateObjectsUsingBlock:v50];

  [v10 setRemoteParticipantHandles:v14];
  v15 = [v5 activeRemoteParticipantCXHandles];
  v16 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v15 count]);

  v17 = [v5 activeRemoteParticipantCXHandles];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100203F6C;
  v48[3] = &unk_10061E620;
  v18 = v16;
  v49 = v18;
  [v17 enumerateObjectsUsingBlock:v48];

  [v10 setActiveRemoteParticipantHandles:v18];
  [v10 setOneToOneModeEnabled:{objc_msgSend(v5, "isOneToOneModeEnabled")}];
  [v10 setScreenSharingType:{objc_msgSend(v5, "screenSharingType")}];
  if ([v5 isOneToOneModeEnabled])
  {
    v19 = [v5 mergedActiveRemoteParticipants];
    if ([v19 count] == 1)
    {
      v20 = [v5 mergedActiveRemoteParticipants];
      v21 = [v20 anyObject];
      v22 = [v21 streamToken];

      if (!v22)
      {
        goto LABEL_6;
      }

      v19 = [v5 mergedActiveRemoteParticipants];
      v23 = [v19 anyObject];
      [v10 setVideoStreamToken:{objc_msgSend(v23, "streamToken")}];
    }
  }

LABEL_6:
  v24 = [v5 state];
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      if (!v9)
      {
        v35 = sub_100004778();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10047B9B4(v5, v35);
        }

        goto LABEL_44;
      }

      if ([v5 isLocallyCreated])
      {
        if (([v5 isOneToOneModeEnabled] & 1) == 0)
        {
          [v10 setRequiresInCallSounds:0];
          v27 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
          v28 = +[NSDate date];
          [v27 reportOutgoingCallWithUUID:v9 startedConnectingAtDate:v28];
        }

        v29 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
        v30 = +[NSDate date];
        [v29 reportOutgoingCallWithUUID:v9 sentInvitationAtDate:v30];
      }

      [(CSDAbstractFaceTimeConversationProviderDelegate *)self fullfillPendingJoinActionsForCallUUIDIfNecessary:v9];
      goto LABEL_43;
    }

    if (v24 == 4)
    {
      [v10 setMixesVoiceWithMedia:0];
      goto LABEL_42;
    }

    if (v24 != 3)
    {
      goto LABEL_42;
    }

    if (!v9)
    {
      v36 = sub_100004778();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10047BA2C(v5, v36);
      }

      v35 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v37 = [v5 UUID];
      [v35 leaveConversationWithUUID:v37];

      goto LABEL_44;
    }

    if ([v5 isOneToOneModeEnabled])
    {
      v25 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
      v26 = +[NSDate date];
      [v25 providerDelegate:self callWithUUID:v9 connectedAtDate:v26];
    }

    else
    {
      v25 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      v26 = +[NSDate date];
      [v25 reportOutgoingCallWithUUID:v9 connectedAtDate:v26];
    }

    if ([v5 isOneToOneModeEnabled])
    {
      [v10 setConversation:1];
    }

    v38 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v39 = [v38 pendingCallActionsOfClass:objc_opt_class() withCallUUID:v9];

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

  if (!v24)
  {
    v31 = [v5 UUID];
    v32 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self _isWaitingToJoinForConversationUUID:v31];

    if (v32)
    {
      goto LABEL_42;
    }

    v33 = objc_alloc_init(CXCallFailureContext);
    [v33 setFailureReason:0];
    [v33 setProviderEndedReason:504];
    v34 = [v5 UUID];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:v34 failureContext:v33];

    goto LABEL_41;
  }

  if (v24 == 1)
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self fullfillPendingJoinActionsForCallUUIDIfNecessary:v9];
  }

LABEL_42:
  if (v9)
  {
LABEL_43:
    v35 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [v35 reportCallWithUUID:v9 updated:v10];
LABEL_44:
  }
}

- (BOOL)shouldHandleProviderWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[CSDConversationProviderManager sharedInstance];
  v5 = [v4 conversationProviderForIdentifier:v3];

  return v5 != 0;
}

- (BOOL)shouldHandleProvider:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isDefaultProvider] & 1) == 0)
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