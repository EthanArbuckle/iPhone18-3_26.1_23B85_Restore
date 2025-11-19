@interface CSDFaceTimeConversationProviderDelegate
+ (id)callScreenShareAttributesForAction:(id)a3;
- (BOOL)_actionIsDisallowedByGreenTea:(id)a3;
- (BOOL)isManagingCallWithUUID:(id)a3;
- (BOOL)isUnansweredOutgoingOneToOneConversation:(id)a3;
- (BOOL)isWaitingForRemoteJoinForConversationUUID:(id)a3;
- (BOOL)linkContainsValidLocalHandle:(id)a3;
- (BOOL)shouldHandleProvider:(id)a3;
- (BOOL)shouldHandleProviderWithIdentifier:(id)a3;
- (CSDFaceTimeConversationProviderDelegate)initWithConversationManager:(id)a3 queue:(id)a4 invitationResolver:(id)a5;
- (CSDFaceTimeConversationProviderDelegate)initWithQueue:(id)a3 conversationManager:(id)a4 networkSupport:(id)a5 serverBag:(id)a6 featureFlags:(id)a7 invitationResolver:(id)a8;
- (CSDFaceTimeConversationProviderDelegate)initWithQueue:(id)a3 conversationManager:(id)a4 networkSupport:(id)a5 serverBag:(id)a6 featureFlags:(id)a7 invitationResolver:(id)a8 idsService:(id)a9;
- (NSMutableSet)conversationUUIDsUpgradedFromAVLess;
- (NSMutableSet)conversationUUIDsWaitingForRemoteJoin;
- (id)_findPendingConversationWithCallUUID:(id)a3;
- (id)activatedLinkForJoinCallAction:(id)a3 withError:(id *)a4;
- (id)deletedLinkForJoinCallAction:(id)a3 withError:(id *)a4;
- (id)linkForJoinCallAction:(id)a3 inLinks:(id)a4;
- (id)linkForJoinCallAction:(id)a3 withError:(id *)a4;
- (id)validateLinkForJoinCallActionIfNecessary:(id)a3 withError:(id *)a4;
- (int)TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:(int64_t)a3;
- (void)_failConversation:(id)a3 failureReason:(int64_t)a4 providerEndedReason:(int64_t)a5;
- (void)cleanUpConversationIfNecessaryForConversationUUID:(id)a3 failureContext:(id)a4;
- (void)conversationManager:(id)a3 avModeChanged:(unint64_t)a4 toAVMode:(unint64_t)a5 forConversation:(id)a6;
- (void)conversationManager:(id)a3 connectionDidStartForConversation:(id)a4;
- (void)conversationManager:(id)a3 conversation:(id)a4 addedActiveParticipant:(id)a5;
- (void)conversationManager:(id)a3 conversation:(id)a4 changedBytesOfDataUsed:(int64_t)a5;
- (void)conversationManager:(id)a3 conversation:(id)a4 failedWithContext:(id)a5;
- (void)conversationManager:(id)a3 conversationChanged:(id)a4;
- (void)conversationManager:(id)a3 conversationScreenSharingChanged:(id)a4 forParticipant:(id)a5;
- (void)conversationManager:(id)a3 joinConversationWithRequest:(id)a4;
- (void)conversationManager:(id)a3 remoteMembersChanged:(id)a4 forConversation:(id)a5;
- (void)conversationManager:(id)a3 removedConversationWithUUID:(id)a4;
- (void)conversationManager:(id)a3 reportedHandedOffConversation:(id)a4 replacedByIdentifier:(unint64_t)a5 localizedHandoffRecipientDeviceCategory:(id)a6;
- (void)conversationManager:(id)a3 reportedInvalidLinkForPendingConversation:(id)a4;
- (void)conversationManager:(id)a3 reportedLetMeInRejectedForPendingConversation:(id)a4;
- (void)conversationManager:(id)a3 reportedRemoteDoesHandedOffForConversation:(id)a4;
- (void)declineConversation:(id)a3 reason:(int64_t)a4 destinations:(id)a5 idsService:(id)a6;
- (void)declineRemoteDevicesForConversation:(id)a3 reason:(int64_t)a4;
- (void)declineRemoteMembersForConversation:(id)a3 reason:(int64_t)a4;
- (void)handleDeclineMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5 withUpdate:(id)a6;
- (void)handleInvitationMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5 shouldRing:(BOOL)a6;
- (void)handleInvitationMessageForLetMeIn:(id)a3 forConversation:(id)a4 pendingConversation:(id)a5 link:(id)a6 fromHandle:(id)a7;
- (void)handleNicknameUpdateMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5 withUpdate:(id)a6;
- (void)handleReceivedVideoUpgradeMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5;
- (void)handleRemoveMembersMessage:(id)a3 forConversation:(id)a4;
- (void)handleRespondedElsewhereMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5;
- (void)handleRespondedElsewhereMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5 withAliases:(id)a6;
- (void)handleScreenShareMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5 withUpdate:(id)a6;
- (void)handleUpgradeMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5 withUpdate:(id)a6;
- (void)leaveConversation:(id)a3 withCallUUID:(id)a4 reason:(int64_t)a5;
- (void)leaveConversationForCallUUID:(id)a3 endedReason:(int64_t)a4;
- (void)performJoinCallAction:(id)a3;
- (void)proceedToNewPendingConversationForLink:(id)a3 action:(id)a4;
- (void)provider:(id)a3 performAnswerCallAction:(id)a4;
- (void)provider:(id)a3 performEnableVideoCallAction:(id)a4;
- (void)provider:(id)a3 performSetAllowUplinkAudioInjectionAction:(id)a4;
- (void)provider:(id)a3 performSetHeldCallAction:(id)a4;
- (void)provider:(id)a3 performSetRelayingCallAction:(id)a4;
- (void)provider:(id)a3 performSetScreenShareAttributesCallAction:(id)a4;
- (void)provider:(id)a3 performSetScreeningCallAction:(id)a4;
- (void)provider:(id)a3 performSetSendingVideoCallAction:(id)a4;
- (void)provider:(id)a3 performSetSharingScreenCallAction:(id)a4;
- (void)provider:(id)a3 performSetVideoPresentationSizeCallAction:(id)a4;
- (void)provider:(id)a3 performSetVideoPresentationStateCallAction:(id)a4;
- (void)setCallUUID:(id)a3 forConversationUUID:(id)a4;
- (void)setWaitingForRemoteJoin:(BOOL)a3 forConversationUUID:(id)a4;
- (void)startOutgoingOneToOneTimeoutIfNecessary:(id)a3;
@end

@implementation CSDFaceTimeConversationProviderDelegate

- (CSDFaceTimeConversationProviderDelegate)initWithConversationManager:(id)a3 queue:(id)a4 invitationResolver:(id)a5
{
  v14.receiver = self;
  v14.super_class = CSDFaceTimeConversationProviderDelegate;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v14 initWithConversationManager:a3 queue:a4 invitationResolver:a5];
  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    recentlyDeletedCallUUIDsByConversationUUID = v5->_recentlyDeletedCallUUIDsByConversationUUID;
    v5->_recentlyDeletedCallUUIDsByConversationUUID = v6;

    v8 = +[NSMutableSet set];
    conversationUUIDsWaitingForRemoteJoin = v5->_conversationUUIDsWaitingForRemoteJoin;
    v5->_conversationUUIDsWaitingForRemoteJoin = v8;

    v10 = objc_alloc_init(CSDBlockUtilities);
    blockUtilities = v5->_blockUtilities;
    v5->_blockUtilities = v10;

    allowsScreenSharingBlock = v5->_allowsScreenSharingBlock;
    v5->_allowsScreenSharingBlock = &stru_10061E5D0;
  }

  return v5;
}

- (CSDFaceTimeConversationProviderDelegate)initWithQueue:(id)a3 conversationManager:(id)a4 networkSupport:(id)a5 serverBag:(id)a6 featureFlags:(id)a7 invitationResolver:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = +[CSDFaceTimeMultiwayIDSService sharedInstance];
  v21 = [(CSDFaceTimeConversationProviderDelegate *)self initWithQueue:v19 conversationManager:v18 networkSupport:v17 serverBag:v16 featureFlags:v15 invitationResolver:v14 idsService:v20];

  return v21;
}

- (CSDFaceTimeConversationProviderDelegate)initWithQueue:(id)a3 conversationManager:(id)a4 networkSupport:(id)a5 serverBag:(id)a6 featureFlags:(id)a7 invitationResolver:(id)a8 idsService:(id)a9
{
  v16 = a9;
  v20.receiver = self;
  v20.super_class = CSDFaceTimeConversationProviderDelegate;
  v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v20 initWithQueue:a3 conversationManager:a4 networkSupport:a5 serverBag:a6 featureFlags:a7 invitationResolver:a8];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_idsService, a9);
  }

  return v18;
}

- (void)setCallUUID:(id)a3 forConversationUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    v9 = [v8 objectForKeyedSubscript:v7];

    if (v9)
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
        v12 = [v11 objectForKeyedSubscript:v7];
        *buf = 138412802;
        v23 = 0;
        v24 = 2112;
        v25 = v7;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "callUUID: %@, callUUIDsByConversationUUID[%@]: %@", buf, 0x20u);
      }

      v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
      v14 = [v13 objectForKeyedSubscript:v7];
      v15 = [(CSDFaceTimeConversationProviderDelegate *)self recentlyDeletedCallUUIDsByConversationUUID];
      [v15 setObject:v14 forKeyedSubscript:v7];

      objc_initWeak(buf, self);
      v16 = dispatch_time(0, 5000000000);
      v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001F6088;
      block[3] = &unk_10061A600;
      objc_copyWeak(&v21, buf);
      v20 = v7;
      dispatch_after(v16, v17, block);

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }
  }

  v18.receiver = self;
  v18.super_class = CSDFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v18 setCallUUID:v6 forConversationUUID:v7];
}

- (BOOL)isWaitingForRemoteJoinForConversationUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDFaceTimeConversationProviderDelegate *)self conversationUUIDsWaitingForRemoteJoin];
  LOBYTE(v5) = [v6 containsObject:v4];

  return v5;
}

- (NSMutableSet)conversationUUIDsWaitingForRemoteJoin
{
  v3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v3);

  conversationUUIDsWaitingForRemoteJoin = self->_conversationUUIDsWaitingForRemoteJoin;

  return conversationUUIDsWaitingForRemoteJoin;
}

- (void)setWaitingForRemoteJoin:(BOOL)a3 forConversationUUID:(id)a4
{
  v4 = a3;
  v9 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  if (v9)
  {
    v7 = [(CSDFaceTimeConversationProviderDelegate *)self conversationUUIDsWaitingForRemoteJoin];
    v8 = v7;
    if (v4)
    {
      [v7 addObject:v9];
    }

    else
    {
      [v7 removeObject:v9];
    }
  }
}

- (int)TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (id)callScreenShareAttributesForAction:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TUCallScreenShareAttributes);
  if (v3)
  {
    [v4 setDeviceFamily:{objc_msgSend(v3, "deviceFamily")}];
    [v4 setDeviceHomeButtonType:{objc_msgSend(v3, "deviceHomeButtonType")}];
    [v4 setStyle:{objc_msgSend(v3, "style")}];
    v5 = [v3 displayID];
    [v4 setDisplayID:v5];

    v6 = [v3 frameRate];
    [v4 setFrameRate:v6];

    [v4 setWindowed:{objc_msgSend(v3, "isWindowed")}];
    v7 = [v3 windowUUID];
    [v4 setWindowUUID:v7];

    v8 = [v3 displayScale];
    [v4 setDisplayScale:v8];

    v9 = [v3 cornerRadius];
    [v4 setCornerRadius:v9];

    v10 = [v3 scaleFactor];
    [v4 setScaleFactor:v10];

    v11 = [v3 systemRootLayerTransform];
    [v4 setSystemRootLayerTransform:v11];

    v12 = [v3 originalResolution];
    v13 = [v12 copy];
    [v4 setOriginalResolution:v13];
  }

  return v4;
}

- (BOOL)linkContainsValidLocalHandle:(id)a3
{
  v4 = a3;
  v5 = [v4 isLocallyCreated];
  if (v5 && (-[CSDAbstractFaceTimeConversationProviderDelegate conversationManager](self, "conversationManager"), v6 = objc_claimAutoreleasedReturnValue(), [v4 originatorHandle], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isValidLocalHandle:", v7), v7, v6, v8))
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = @"YES";
      v28 = 2112;
      v29 = @"YES";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Link was created locally: %@, using valid local handle: %@", buf, 0x16u);
    }

LABEL_23:
    v17 = 1;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v4 invitedMemberHandles];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          LODWORD(v14) = [v15 isValidLocalHandle:v14];

          if (v14)
          {
            v18 = sub_100004778();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = @"NO";
              if (v5)
              {
                v19 = @"YES";
              }

              *buf = 138412290;
              v27 = v19;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Link was created locally: %@ using valid local handle (YES)", buf, 0xCu);
            }

            goto LABEL_23;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"YES";
      if (!v5)
      {
        v16 = @"NO";
      }

      *buf = 138412546;
      v27 = v16;
      v28 = 2112;
      v29 = @"NO";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Link was created locally: %@, using valid local handle: %@", buf, 0x16u);
    }

    v17 = 0;
  }

  return v17;
}

- (void)cleanUpConversationIfNecessaryForConversationUUID:(id)a3 failureContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v8);

  v9.receiver = self;
  v9.super_class = CSDFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v9 cleanUpConversationIfNecessaryForConversationUUID:v7 failureContext:v6];

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:v7];
}

- (void)handleDeclineMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5 withUpdate:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  if ([v10 nearbyFaceTimeEnabled])
  {
    v11 = [v8 isNearbySession];

    if (v11)
    {
      v12 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v13 = [v8 UUID];
      [v12 removeNearbyMemberWithHandle:v9 onConversationWithUUID:v13];
      goto LABEL_8;
    }
  }

  else
  {
  }

  if ([v8 state] == 3)
  {
    v12 = sub_100004778();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      goto LABEL_13;
    }

    v13 = [v8 UUID];
    v21 = 138412546;
    v22 = v9;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Not handling received Decline message from %@ since we are already in a joined conversation with UUID: %@", &v21, 0x16u);
LABEL_8:

    goto LABEL_9;
  }

  v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v15 = [v8 UUID];
  [v14 leaveConversationWithUUID:v15];

  v16 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v17 = [v8 UUID];
  v18 = [v16 objectForKeyedSubscript:v17];

  if (v18)
  {
    v19 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v20 = +[NSDate now];
    [v19 providerDelegate:self callWithUUID:v18 endedAtDate:v20 withReason:2 failureContext:0];
  }

LABEL_13:
}

- (void)handleNicknameUpdateMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5 withUpdate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 hasNickname])
  {
    v12 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v13 = [v9 nickname];
    v14 = [v10 UUID];
    [v12 processUpdatedNickname:v13 forHandle:v11 conversationUUID:v14];
  }

  else
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring nickname update message %@ because message doesn't have a nickname set.", &v15, 0xCu);
    }
  }
}

- (void)handleScreenShareMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5 withUpdate:(id)a6
{
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Not honoring screen sharing message", v7, 2u);
  }
}

- (void)handleReceivedVideoUpgradeMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = TUCopyIDSCanonicalAddressForHandle();
  v11 = v10;
  if (!v10)
  {
    v21 = sub_100004778();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 138412290;
    v40 = v8;
    v29 = "[WARN] Could not convert %@ to IDS destination";
    v30 = v21;
    v31 = 12;
    goto LABEL_21;
  }

  v33 = v10;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = v7;
  v13 = [v7 activeRemoteParticipants];
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v14)
  {
LABEL_10:

LABEL_17:
    v21 = sub_100004778();
    v11 = v33;
    v7 = v12;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v29 = "[WARN] Dropping video upgrade message, since member is not part of conversation.";
    v30 = v21;
    v31 = 2;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
    goto LABEL_28;
  }

  v15 = v14;
  v16 = *v35;
LABEL_4:
  v17 = 0;
  while (1)
  {
    if (*v35 != v16)
    {
      objc_enumerationMutation(v13);
    }

    v18 = *(*(&v34 + 1) + 8 * v17);
    v19 = [v18 handle];
    v20 = [v19 isEqualToHandle:v8];

    if (v20)
    {
      break;
    }

    if (v15 == ++v17)
    {
      v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v15)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v21 = v18;

  if (!v21)
  {
    goto LABEL_17;
  }

  v7 = v12;
  v11 = v33;
  if (([v12 state] == 3 || objc_msgSend(v12, "state") == 2) && (objc_msgSend(v12, "remoteMembers"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), v22, v23 == 1))
  {
    v24 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    v25 = [v12 UUID];
    v26 = [v24 objectForKeyedSubscript:v25];

    if (v26)
    {
      v27 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v28 = [v12 UUID];
      [v27 setVideo:1 forConversationWithUUID:v28];
    }

    else
    {
      v27 = sub_100004778();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v12;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] No call is being tracked, dropping message for conversation: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v12;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] Conversation %@ is not in the correct state. Dropping message.", buf, 0xCu);
    }
  }

LABEL_28:
}

- (void)handleUpgradeMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5 withUpdate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self serverBag];
  v16 = [v15 isAutomaticUpgradingEnabled];

  if ((v16 & 1) == 0)
  {
    v19 = sub_100004778();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v22 = "[WARN] Not handling upgrade message for conversation since upgrades are currently disabled.";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
    goto LABEL_16;
  }

  if (!v13)
  {
    v19 = sub_100004778();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v22 = "[WARN] Not upgrading conversation since there was no join update attached.";
    goto LABEL_15;
  }

  if ([v13 participantUpdateSubtype] != 1)
  {
    v19 = sub_100004778();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v22 = "[WARN] Not upgrading conversation since the join update has an incorrect subtype.";
    goto LABEL_15;
  }

  if (([v10 hasProtoUpgradeSessionUUID] & 1) == 0)
  {
    v19 = sub_100004778();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v22 = "[WARN] Not upgrading conversation as message is missing upgrade token.";
    goto LABEL_15;
  }

  v17 = [v13 participantDestinationID];
  v29 = 0;
  v18 = [v17 _stripPotentialTokenURIWithToken:&v29];
  v19 = v29;

  if (v19)
  {
    v20 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001F751C;
    v23[3] = &unk_10061E5F8;
    v24 = v10;
    v25 = v12;
    v26 = v13;
    v27 = self;
    v28 = v11;
    [v20 providerDelegate:self requestedUpgradeToExistingCallForConversation:v28 withSessionToken:v19 completion:v23];

    v21 = v24;
  }

  else
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Not upgrading conversation as message is missing remote token.", buf, 2u);
    }
  }

LABEL_16:
}

- (void)handleRemoveMembersMessage:(id)a3 forConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 removedMembers];
  v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v9 count]);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v6 removedMembers];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * v15) tuConversationMember];
        [v10 addObject:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v18 = [v7 UUID];
  [v17 removeRemoteMembers:v10 fromConversationWithUUID:v18];
}

- (void)handleInvitationMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5 shouldRing:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v13);

  v14 = [v10 tuConversationLink];
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v16 = [v14 pseudonym];
  v17 = [v15 removePendingConversationWithPseudonym:v16];

  if (!v17)
  {
    if ([v10 hasIsLetMeInApproved] && objc_msgSend(v10, "isLetMeInApproved"))
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v11 UUID];
        v28 = 138412290;
        v29 = v19;
        v20 = "Not ringing for incoming invitation message for %@ since message is a LMI approval";
        v21 = v18;
        v22 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &v28, v22);
LABEL_16:

        goto LABEL_17;
      }

      goto LABEL_17;
    }

LABEL_8:
    v23 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    v24 = [v11 UUID];
    v17 = [v23 objectForKeyedSubscript:v24];

    if (v17)
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v11 UUID];
        v28 = 138412546;
        v29 = v19;
        v30 = 2112;
        v31 = v17;
        v20 = "Ignoring incoming invitation message for %@ since we are already tracking this with call %@";
        v21 = v18;
        v22 = 22;
        goto LABEL_11;
      }
    }

    else
    {
      if (v6)
      {
        v25 = [v10 tuInvitationContext];
        [(CSDAbstractFaceTimeConversationProviderDelegate *)self reportNewIncomingCallForConversation:v11 fromHandle:v12 isReRing:0 invitationContext:v25];

        goto LABEL_18;
      }

      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v11 UUID];
        v26 = [v11 invitationPreferences];
        v27 = [v10 tuInvitationPreferences];
        v28 = 138412802;
        v29 = v19;
        v30 = 2114;
        v31 = v26;
        v32 = 2114;
        v33 = v27;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming invitation message for %@ because shouldRing is set to NO. conversation.invitationPreferences=%{public}@, message.tuInvitationPreferences=%{public}@", &v28, 0x20u);

        goto LABEL_16;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  [(CSDFaceTimeConversationProviderDelegate *)self handleInvitationMessageForLetMeIn:v10 forConversation:v11 pendingConversation:v17 link:v14 fromHandle:v12];
LABEL_18:
}

- (void)handleInvitationMessageForLetMeIn:(id)a3 forConversation:(id)a4 pendingConversation:(id)a5 link:(id)a6 fromHandle:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v14 conversationGroupUUID];
  v18 = [v12 conversationGroupUUID];
  v19 = [v17 isEqual:v18];

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v12 conversationGroupUUID];
      v23 = [v14 conversationGroupUUID];
      *buf = 138412802;
      v59 = v22;
      v60 = 2112;
      v61 = v23;
      v62 = 2112;
      v63 = v15;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming invitation (LMI approval) because message's group UUID %@ did not match the pending conversation's expected group UUID %@. (link: %@)", buf, 0x20u);
    }

    v20 = 522;
  }

  v24 = [v14 approverHandle];
  v25 = [v24 isEquivalentToHandle:v16];

  if (v25)
  {
    v26 = v19 ^ 1;
  }

  else
  {
    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v14 approverHandle];
      *buf = 138412546;
      v59 = v16;
      v60 = 2112;
      v61 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming invitation (LMI approval) because it was sent from handle %@ instead of expected approverHandle %@", buf, 0x16u);
    }

    v26 = 1;
    v20 = 524;
  }

  v29 = [v14 link];
  v30 = [v29 isEquivalentToConversationLink:v15];

  if ((v30 & 1) == 0)
  {
    v48 = sub_100004778();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v59 = v15;
      v60 = 2112;
      v61 = v14;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming invitation (LMI approval) because message's link %@ did not match the link the user tapped (pendingConversation: %@)", buf, 0x16u);
    }

    v20 = 523;
    goto LABEL_27;
  }

  if (v26)
  {
LABEL_27:
    v41 = objc_alloc_init(CXCallFailureContext);
    [v41 setFailureReason:0];
    [v41 setProviderEndedReason:v20];
    v49 = [v13 UUID];
    [(CSDFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:v49 failureContext:v41];
    goto LABEL_37;
  }

  v31 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v32 = [v13 UUID];
  v33 = [v31 objectForKeyedSubscript:v32];

  if (!v33)
  {
    v34 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    v35 = [v14 temporaryGroupUUID];
    v33 = [v34 objectForKeyedSubscript:v35];
  }

  if ([v12 type] == 1 && (objc_msgSend(v13, "letMeInRequestState") == 2 || objc_msgSend(v14, "letMeInRequestState") == 2))
  {
    v36 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v37 = [v13 UUID];
    [v36 updateLetMeInRequestState:3 addLink:v15 forConversationWithUUID:v37];
  }

  v38 = [v13 UUID];
  [(CSDAbstractFaceTimeConversationProviderDelegate *)self associateCallUUID:v33 withConversationUUID:v38 waitingToJoin:1];

  v39 = +[TUCallCenter sharedInstance];
  v40 = [v39 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F894C;
  block[3] = &unk_100619D38;
  v41 = v33;
  v57 = v41;
  dispatch_async(v40, block);

  v42 = sub_100004778();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v41;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "LMI: Shuttling in to new conversation and stopping the pending one (moving callUUID %@ to new conversation).", buf, 0xCu);
  }

  v43 = objc_alloc_init(CSDConversationJoinContext);
  [(CSDConversationJoinContext *)v43 setWantsStagingArea:1];
  [(CSDConversationJoinContext *)v43 setRepresentsTransitionFromPending:1];
  [(CSDConversationJoinContext *)v43 setAvMode:2];
  v44 = [v13 provider];
  [(CSDConversationJoinContext *)v43 setProvider:v44];

  -[CSDConversationJoinContext setVideoEnabled:](v43, "setVideoEnabled:", [v14 isVideoEnabled]);
  -[CSDConversationJoinContext setVideo:](v43, "setVideo:", [v14 isVideo]);
  v45 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  v46 = [v45 avLessSharePlayEnabled];

  if (v46)
  {
    if ([v12 hasAvMode])
    {
      v47 = [v12 avMode];
    }

    else if ([(CSDConversationJoinContext *)v43 isVideo])
    {
      v47 = 2;
    }

    else
    {
      v47 = 1;
    }

    [(CSDConversationJoinContext *)v43 setAvMode:v47];
  }

  v50 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v51 = [v13 UUID];
  [v50 joinExistingConversationWithUUID:v51 context:v43];

  if ([v14 isUplinkMuted])
  {
    v52 = sub_100004778();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v59 = v13;
      v60 = 2112;
      v61 = v14;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Setting uplinkMuted for conversation: %@ since pendingConversation:%@ has uplinkMuted", buf, 0x16u);
    }

    v53 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v54 = [v13 UUID];
    [v53 setUplinkMuted:1 forConversationWithUUID:v54];
  }

  v55 = [v13 UUID];
  [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueOrStartAudioForConversationUUID:v55];

  v49 = v57;
LABEL_37:
}

- (void)handleRespondedElsewhereMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5 withAliases:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = [v12 value];
  v16 = [v15 length];
  v17 = sub_100004778();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (!v16)
  {
    if (v18)
    {
      LOWORD(v34) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring responded elsewhere message since it was not sent from a valid handle.", &v34, 2u);
    }

    goto LABEL_22;
  }

  if (v18)
  {
    v19 = [v11 initiator];
    v20 = [v11 remoteMembers];
    v34 = 138413058;
    v35 = v19;
    v36 = 2112;
    v37 = v12;
    v38 = 2048;
    v39 = [v20 count];
    v40 = 2112;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "handleRespondedElsewhereMessage: initiator: %@, handle: %@, remotemember count: %lu, allAliases: %@", &v34, 0x2Au);
  }

  v21 = [v11 remoteMembers];
  if ([v21 count] != 1)
  {
    v23 = [v13 containsObject:v15];

    if (v23)
    {
      goto LABEL_10;
    }

LABEL_15:
    v17 = sub_100004778();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v24 = [v11 initiator];
    v26 = [v24 normalizedValue];
    v27 = [v12 normalizedValue];
    v34 = 138412802;
    v35 = v26;
    v36 = 2112;
    v37 = v27;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring responded elsewhere message since this did not come from the originator (%@), handle: %@, or one of our aliases: %@.", &v34, 0x20u);

    goto LABEL_20;
  }

  v22 = [v11 initiator];
  if (![v22 isEquivalentToHandle:v12])
  {
    v25 = [v13 containsObject:v15];

    if (v25)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_10:
  if ([v11 state] != 2 && objc_msgSend(v11, "state") != 3)
  {
    v28 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    v29 = [v11 UUID];
    v17 = [v28 objectForKeyedSubscript:v29];

    if (!v17)
    {
      goto LABEL_22;
    }

    v30 = [v11 UUID];
    [(CSDFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:v30];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:v17];
    v31 = [v11 UUID];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:v31];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self updateNetworkCriticalStateIfNecessary];
    v32 = [v10 disconnectedReason];
    v33 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [v33 reportCallWithUUID:v17 endedAtDate:0 privateReason:v32];

    if ([v11 state] != 1)
    {
      goto LABEL_22;
    }

    v24 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v26 = [v11 UUID];
    [v24 leaveConversationWithUUID:v26];
LABEL_20:

    goto LABEL_21;
  }

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v11 UUID];
    v34 = 138412290;
    v35 = v24;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring message that we've responded elsewhere for conversation %@ since the conversation is already joining or is joined.", &v34, 0xCu);
LABEL_21:
  }

LABEL_22:
}

- (void)handleRespondedElsewhereMessage:(id)a3 forConversation:(id)a4 fromHandle:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = +[CSDFaceTimeMultiwayIDSService sharedInstance];
  v11 = [v12 allAliases];
  [(CSDFaceTimeConversationProviderDelegate *)self handleRespondedElsewhereMessage:v10 forConversation:v9 fromHandle:v8 withAliases:v11];
}

- (void)startOutgoingOneToOneTimeoutIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v9 = [v8 conversationsByUUID];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (![(CSDFaceTimeConversationProviderDelegate *)self isWaitingForRemoteJoinForConversationUUID:v7])
  {
    if ([(CSDFaceTimeConversationProviderDelegate *)self isUnansweredOutgoingOneToOneConversation:v10])
    {
      v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self invitationResolver];
      v12 = [v10 localMember];
      v13 = [v12 handle];
      v14 = [v11 shouldStartRingingTimeoutForConversation:v10 handle:v13];

      if (v14)
      {
        [(CSDFaceTimeConversationProviderDelegate *)self setWaitingForRemoteJoin:1 forConversationUUID:v7];
        v15 = dispatch_time(0, 30000000000);
        v16 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1001F9104;
        v17[3] = &unk_10061A450;
        v17[4] = self;
        v18 = v7;
        v19 = v4;
        v20 = v10;
        dispatch_after(v15, v16, v17);
      }
    }
  }
}

- (BOOL)isUnansweredOutgoingOneToOneConversation:(id)a3
{
  v3 = a3;
  if (![v3 isLocallyCreated] || !objc_msgSend(v3, "isOneToOneModeEnabled"))
  {
    goto LABEL_17;
  }

  if ([v3 state] != 2 && objc_msgSend(v3, "state") != 1)
  {
    if ([v3 state] == 3)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = [v3 activeRemoteParticipants];
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v4);
            }

            if ([*(*(&v11 + 1) + 8 * i) audioVideoMode])
            {
              v5 = 0;
              goto LABEL_6;
            }
          }

          v7 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v5 = 1;
      goto LABEL_6;
    }

LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  v4 = [v3 activeRemoteParticipants];
  v5 = [v4 count] == 0;
LABEL_6:

LABEL_18:
  return v5;
}

- (void)declineRemoteDevicesForConversation:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDFaceTimeConversationProviderDelegate *)self idsService];
  v8 = [v7 devices];
  v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v8 count]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        v16 = IDSCopyIDForDevice();
        if ([v16 length])
        {
          [v9 addObject:v16];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v12);
  }

  v17 = [v7 allAliases];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        v23 = TUCopyIDSCanonicalAddressForDestinationID();
        if ([v23 length])
        {
          [v9 addObject:v23];
        }

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  [(CSDFaceTimeConversationProviderDelegate *)self declineConversation:v5 reason:a4 destinations:v9 idsService:v7];
}

- (void)declineRemoteMembersForConversation:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [v6 remoteMembers];
  v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v8 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) idsDestination];
        if ([v15 length])
        {
          [v9 addObject:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = [(CSDFaceTimeConversationProviderDelegate *)self idsService];
  [(CSDFaceTimeConversationProviderDelegate *)self declineConversation:v6 reason:a4 destinations:v9 idsService:v16];
}

- (void)declineConversation:(id)a3 reason:(int64_t)a4 destinations:(id)a5 idsService:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v13);

  v14 = [CSDMessagingConversationMessage alloc];
  v15 = [v12 groupUUID];
  v16 = [(CSDMessagingConversationMessage *)v14 initWithType:6 groupUUID:v15 link:0];

  [(CSDMessagingConversationMessage *)v16 setDisconnectedReason:a4];
  v17 = [v12 localMember];

  v18 = [v17 handle];
  v19 = [v18 value];

  v20 = [v11 accountWithCallerID:v19];
  v38[0] = IDSSendMessageOptionFromIDKey;
  v21 = TUCopyIDSCanonicalAddressForDestinationID();
  v38[1] = IDSSendMessageOptionAlwaysSkipSelfKey;
  v39[0] = v21;
  v39[1] = &__kCFBooleanTrue;
  v22 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

  v23 = sub_100004778();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v33 = a4;
    v34 = 2048;
    v35 = [v10 count];
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "declineConversation: reason: %ld, destinations count: %lu, destinations: %@", buf, 0x20u);
  }

  v24 = [(CSDMessagingConversationMessage *)v16 data];
  v30 = 0;
  v31 = 0;
  v25 = [v11 sendData:v24 fromAccount:v20 toDestinations:v10 priority:300 options:v22 identifier:&v31 error:&v30];
  v26 = v31;
  v27 = v30;

  v28 = sub_100004778();
  v29 = v28;
  if (v25)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v33 = v26;
      v34 = 2112;
      v35 = v19;
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Successfully sent message with identifier: %@ handle:%@ account: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_10047B04C();
  }
}

- (void)conversationManager:(id)a3 joinConversationWithRequest:(id)a4
{
  v8 = a4;
  v5 = [v8 provider];
  v6 = [(CSDFaceTimeConversationProviderDelegate *)self shouldHandleProvider:v5];

  if (v6)
  {
    v7 = [v8 joinCallAction];
    [(CSDFaceTimeConversationProviderDelegate *)self performJoinCallAction:v7];
  }
}

- (void)conversationManager:(id)a3 avModeChanged:(unint64_t)a4 toAVMode:(unint64_t)a5 forConversation:(id)a6
{
  v9 = a6;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 UUID];
    *buf = 134218498;
    v55 = a4;
    v56 = 2048;
    v57 = a5;
    v58 = 2112;
    v59 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Mode changing fromMode %lu, toMode: %lu, conversationUUID: %@", buf, 0x20u);
  }

  if (!a4 && a5)
  {
    v12 = +[NSUUID UUID];
    v13 = [v9 UUID];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self associateCallUUID:v12 withConversationUUID:v13 waitingToJoin:1];

    v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    v15 = [v9 UUID];
    [v14 addObject:v15];

    if ([v9 state] == 3)
    {
      v16 = [v9 remoteMembers];
      if ([v16 count] != 1)
      {
LABEL_18:

        goto LABEL_19;
      }

      v17 = [v9 activeRemoteParticipants];
      if (![v17 count])
      {

LABEL_17:
        v16 = [(CSDFaceTimeConversationProviderDelegate *)self conversationUUIDsUpgradedFromAVLess];
        v30 = [v9 UUID];
        [v16 addObject:v30];

        goto LABEL_18;
      }

      v18 = [v9 activeRemoteParticipants];
      v19 = [v18 anyObject];
      v20 = [v19 audioVideoMode];

      if (!v20)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v31 = sub_100004778();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v9 UUID];
      *buf = 138412546;
      v55 = v12;
      v56 = 2112;
      v57 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Mode changing from None, Started tracking callUUID: %@ conversationUUID: %@", buf, 0x16u);
    }

    v28 = [[CXCallUpdate alloc] initWithTUConversation:v9];
    v33 = [v28 remoteParticipantHandles];
    v34 = [v33 anyObject];
    [v28 setRemoteMember:v34];

    if (([v28 hasVideo] & 1) == 0)
    {
      [v28 updatePropertiesForVideo:a5 == 2];
    }

    v35 = [v9 handoffContext];
    v36 = [v35 setUplinkMuted];

    if (v36)
    {
      v37 = sub_100004778();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Muting remote uplink during continuity session pullback due to handoff context.", buf, 2u);
      }

      [v28 setRemoteUplinkMuted:1];
    }

    v38 = [v9 remoteMembers];
    v39 = [v38 count];

    if (v39 == 1)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v40 = [v9 activeRemoteParticipants];
      v41 = [v40 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v50;
        while (2)
        {
          v44 = 0;
          do
          {
            if (*v50 != v43)
            {
              objc_enumerationMutation(v40);
            }

            if ([*(*(&v49 + 1) + 8 * v44) audioVideoMode])
            {

              goto LABEL_38;
            }

            v44 = v44 + 1;
          }

          while (v42 != v44);
          v42 = [v40 countByEnumeratingWithState:&v49 objects:v53 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }
      }

      v45 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      [v45 reportNewOutgoingCallWithUUID:v12 update:v28];

      v46 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      [v46 reportOutgoingCallWithUUID:v12 sentInvitationAtDate:0];

      [(CSDFaceTimeConversationProviderDelegate *)self startOutgoingOneToOneTimeoutIfNecessary:v12];
      goto LABEL_40;
    }

LABEL_38:
    v47 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [v47 reportNewOutgoingCallWithUUID:v12 update:v28];

    v29 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v48 = +[NSDate date];
    [v29 reportOutgoingCallWithUUID:v12 connectedAtDate:v48];

LABEL_39:
LABEL_40:

    goto LABEL_41;
  }

  if (a4 && !a5)
  {
    v21 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    v22 = [v9 UUID];
    v12 = [v21 objectForKeyedSubscript:v22];

    if (!v12)
    {
LABEL_41:

      goto LABEL_42;
    }

    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v9 UUID];
      *buf = 138412546;
      v55 = v12;
      v56 = 2112;
      v57 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Mode changing to None, Stopping tracking callUUID: %@ conversationUUID: %@", buf, 0x16u);
    }

    v25 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v26 = +[NSDate date];
    [v25 reportCallWithUUID:v12 endedAtDate:v26 reason:0];

    v27 = [v9 UUID];
    [(CSDFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:v27];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:v12];
    v28 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    v29 = [v9 UUID];
    [v28 removeObject:v29];
    goto LABEL_39;
  }

LABEL_42:
}

- (void)conversationManager:(id)a3 remoteMembersChanged:(id)a4 forConversation:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 state] == 3)
  {
    v10 = [(CSDFaceTimeConversationProviderDelegate *)self blockUtilities];
    v11 = [v10 blockListContainsMembers:v8 providerIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

    if (v11)
    {
      v12 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
      v13 = [v9 UUID];
      v14 = [v12 objectForKeyedSubscript:v13];

      if (v14)
      {
        v15 = [v9 UUID];
        [v18 leaveConversationWithUUID:v15];

        v16 = [(CSDFaceTimeConversationProviderDelegate *)self blockUtilities];
        v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
        [v16 reportFailureForReason:16 provider:v17 callUUID:v14 actionToFail:0];
      }
    }
  }
}

- (void)conversationManager:(id)a3 conversationChanged:(id)a4
{
  v87 = a3;
  v6 = a4;
  v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v9 = [v6 UUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [v6 remoteMembers];
  if ([v11 count] != 1 && objc_msgSend(v6, "avMode") == 1)
  {
    v12 = [v6 resolvedAudioVideoMode];

    if (v12 != 2)
    {
      goto LABEL_8;
    }

    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found that a remote user had upgraded to video, upgrading our local conversation to video", buf, 2u);
    }

    v11 = [v6 UUID];
    [v87 setVideo:1 forConversationWithUUID:v11];
  }

LABEL_8:
  v14 = [[CXCallUpdate alloc] initWithTUConversation:v6];
  v15 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  v88 = v10;
  if (![v15 avLessSharePlayEnabled])
  {
LABEL_18:

    goto LABEL_19;
  }

  v16 = [v6 mergedRemoteMembers];
  if ([v16 count] != 1)
  {
LABEL_17:

    goto LABEL_18;
  }

  v17 = [v6 mergedActiveRemoteParticipants];
  if ([v17 count] != 1)
  {

    goto LABEL_17;
  }

  v18 = [v6 avMode];

  if (!v18)
  {
    v19 = [v6 activeRemoteParticipants];
    v15 = [v19 anyObject];

    if ([v15 audioVideoMode] == 2)
    {
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "conversationChanged for U+1 call with avMode=video remote participant, upgrading CXCallUpdate to video=1", buf, 2u);
      }

      [v14 updatePropertiesForVideo:1];
    }

    goto LABEL_18;
  }

LABEL_19:
  if ([v6 isVideoEnabled] && (objc_msgSend(v6, "isVideoPaused") & 1) == 0)
  {
    [v14 setSendingVideo:1];
  }

  if ([v6 state] >= 1 && objc_msgSend(v6, "avMode") && (objc_msgSend(v6, "isVideoEnabled") & 1) == 0)
  {
    [v14 setSendingVideo:0];
  }

  v21 = [v6 remoteMembers];
  v22 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v21 count]);

  v23 = [v6 remoteMembers];
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_1001FB274;
  v99[3] = &unk_10061A200;
  v24 = v22;
  v100 = v24;
  [v23 enumerateObjectsUsingBlock:v99];

  [v14 setRemoteParticipantHandles:v24];
  v25 = [v6 activeRemoteParticipantCXHandles];
  v26 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v25 count]);

  v27 = [v6 activeRemoteParticipantCXHandles];
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_1001FB328;
  v97[3] = &unk_10061E620;
  v28 = v26;
  v98 = v28;
  [v27 enumerateObjectsUsingBlock:v97];

  [v14 setActiveRemoteParticipantHandles:v28];
  [v14 setOneToOneModeEnabled:{objc_msgSend(v6, "isOneToOneModeEnabled")}];
  [v14 setScreenSharingType:{objc_msgSend(v6, "screenSharingType")}];
  v29 = [v6 mergedRemoteMembers];
  if ([v29 count] == 1)
  {
    v30 = [v6 mergedActiveRemoteParticipants];
    if ([v30 count] == 1)
    {
      v31 = [v6 mergedActiveRemoteParticipants];
      v32 = [v31 anyObject];
      v33 = [v32 streamToken];

      v34 = v88;
      if (!v33)
      {
        goto LABEL_32;
      }

      v29 = [v6 mergedActiveRemoteParticipants];
      v30 = [v29 anyObject];
      [v14 setVideoStreamToken:{objc_msgSend(v30, "streamToken")}];
    }
  }

  v34 = v88;

LABEL_32:
  v35 = [v6 state];
  if (v35 <= 1)
  {
    if (v35)
    {
      if (v35 == 1)
      {
        [(CSDFaceTimeConversationProviderDelegate *)self startOutgoingOneToOneTimeoutIfNecessary:v34];
        [(CSDAbstractFaceTimeConversationProviderDelegate *)self fullfillPendingJoinActionsForCallUUIDIfNecessary:v34];
        if (!v34)
        {
          goto LABEL_69;
        }

        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v51 = [v6 UUID];
    v52 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self _isWaitingToJoinForConversationUUID:v51];

    if ((v52 & 1) == 0)
    {
      if ([v6 isScreening] && objc_msgSend(v6, "isOneToOneModeEnabled"))
      {
        v53 = sub_100004778();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Screening enabled, already ends the session, no need to cleanup conversation", buf, 2u);
        }
      }

      else
      {
        v53 = [v6 failureContext];
        if (!v53)
        {
          v53 = objc_alloc_init(CXCallFailureContext);
          [v53 setFailureReason:0];
          [v53 setProviderEndedReason:504];
        }

        v64 = [v6 UUID];
        [(CSDFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:v64 failureContext:v53];
      }
    }

    if (!v34)
    {
      goto LABEL_69;
    }

    if (![v14 hasVideo])
    {
      goto LABEL_61;
    }

    v65 = [v14 remoteParticipantHandles];
    v66 = [v65 count];

    if (v66 < 2 || [v6 resolvedAudioVideoMode] == 2)
    {
      goto LABEL_61;
    }

    [v14 setSendingVideo:0];
    v47 = sub_100004778();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v67 = [v14 isSendingVideo];
      v68 = @"NO";
      if (v67)
      {
        v68 = @"YES";
      }

      *buf = 138412290;
      v102 = v68;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Setting sendingVideo=%@ for conversationChanged", buf, 0xCu);
    }

LABEL_58:

    goto LABEL_61;
  }

  if (v35 == 2)
  {
    if (!v34)
    {
      v50 = sub_100004778();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_10047B0BC();
      }

      goto LABEL_68;
    }

    if ([v6 isLocallyCreated])
    {
      if (([v6 isOneToOneModeEnabled] & 1) == 0)
      {
        [v14 setRequiresInCallSounds:0];
        v41 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
        v42 = +[NSDate date];
        [v41 reportOutgoingCallWithUUID:v34 startedConnectingAtDate:v42];
      }

      v43 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      v44 = +[NSDate date];
      [v43 reportOutgoingCallWithUUID:v34 sentInvitationAtDate:v44];
    }

    v45 = +[TUCallCenter sharedInstance];
    v46 = [(__CFString *)v34 UUIDString];
    v47 = [v45 callWithCallUUID:v46];

    -[NSObject setStartAsOneToOneMode:](v47, "setStartAsOneToOneMode:", [v6 isOneToOneModeEnabled]);
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self fullfillPendingJoinActionsForCallUUIDIfNecessary:v34];
    goto LABEL_58;
  }

  if (v35 == 4)
  {
    [v14 setMixesVoiceWithMedia:0];
LABEL_60:
    if (!v34)
    {
      goto LABEL_69;
    }

    goto LABEL_61;
  }

  if (v35 != 3)
  {
    goto LABEL_60;
  }

  if (!v34)
  {
    if (![v6 isEligibleForCall])
    {
      goto LABEL_69;
    }

    v69 = sub_100004778();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_10047B12C();
    }

    v50 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v70 = [v6 UUID];
    [v50 leaveConversationWithUUID:v70];

    goto LABEL_68;
  }

  if ([v6 avMode])
  {
    if ([v6 isOneToOneModeEnabled])
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v36 = [v6 activeRemoteParticipants];
      v37 = [v36 countByEnumeratingWithState:&v93 objects:v104 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v94;
        while (2)
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v94 != v39)
            {
              objc_enumerationMutation(v36);
            }

            if ([*(*(&v93 + 1) + 8 * i) audioVideoMode])
            {

              v36 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
              v73 = +[NSDate date];
              v34 = v88;
              [v36 providerDelegate:self callWithUUID:v88 connectedAtDate:v73];

              goto LABEL_105;
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v93 objects:v104 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      v34 = v88;
LABEL_105:

      v74 = +[TUCallCenter sharedInstance];
      v75 = [(__CFString *)v34 UUIDString];
      v71 = [v74 callWithCallUUID:v75];

      if (v71)
      {
        [v71 setOneToOneFaceTimeMyself:{objc_msgSend(v6, "isOneToOneFaceTimeMyself")}];
      }
    }

    else
    {
      v71 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      v72 = +[NSDate date];
      [v71 reportOutgoingCallWithUUID:v34 connectedAtDate:v72];
    }
  }

  if ([v6 isOneToOneModeEnabled])
  {
    [v14 setConversation:1];
  }

  v76 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
  v77 = [v76 pendingCallActionsOfClass:objc_opt_class() withCallUUID:v34];

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v78 = v77;
  v79 = [v78 countByEnumeratingWithState:&v89 objects:v103 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v90;
    do
    {
      for (j = 0; j != v80; j = j + 1)
      {
        if (*v90 != v81)
        {
          objc_enumerationMutation(v78);
        }

        [*(*(&v89 + 1) + 8 * j) fulfill];
      }

      v80 = [v78 countByEnumeratingWithState:&v89 objects:v103 count:16];
    }

    while (v80);
  }

  [v14 setSharingScreen:{objc_msgSend(v6, "isScreenEnabled")}];
  if ([v14 mixesVoiceWithMedia])
  {
    v83 = +[TUCallCenter sharedInstance];
    v84 = [(__CFString *)v88 UUIDString];
    v85 = [v83 callWithCallUUID:v84];

    v86 = [v85 sourceIdentifier];
    [v14 setIgnoresBluetoothDeviceUID:v86 != 0];
  }

  v34 = v88;
  if ([v6 avMode])
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self fullfillPendingJoinActionsForCallUUIDIfNecessary:v88];
  }

  if (v88)
  {
LABEL_61:
    v48 = sub_100004778();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = v34;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "conversationProviderDelegate: report conversationChanged for call with uuid: %@", buf, 0xCu);
    }

    v49 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([v49 uplevelFTAEnabled] && (objc_msgSend(v14, "hasSet") & 0x2000) != 0 && (objc_msgSend(v14, "hasVideo") & 1) == 0)
    {
      v54 = [v14 remoteParticipantHandles];
      v55 = [v54 count];

      if (v55 != 1)
      {
        goto LABEL_67;
      }

      v56 = +[TUCallCenter sharedInstance];
      v57 = [(__CFString *)v34 UUIDString];
      v49 = [v56 callWithCallUUID:v57];

      if ([v49 isVideo])
      {
        v58 = sub_100004778();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Downgrading from FTV -> FTA, make sure Phone App is launched", buf, 2u);
        }

        v59 = +[NSURL phoneAppShowInCallUIURL];
        v60 = TUOpenURLWithError();
        v61 = 0;
        v62 = v61;
        if (!v60 || v61)
        {
          v63 = sub_100004778();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            sub_10047B19C();
          }
        }

        v34 = v88;
      }
    }

LABEL_67:
    v50 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [v50 reportCallWithUUID:v34 updated:v14];
LABEL_68:
  }

LABEL_69:
}

- (void)conversationManager:(id)a3 conversationScreenSharingChanged:(id)a4 forParticipant:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  v10 = [v9 screenSharingDeskViewEnabled];

  if ((v10 & 1) == 0 && [v8 isScreenEnabled])
  {
    [(CSDFaceTimeConversationProviderDelegate *)self launchScreenSharingAppIfNecessary];
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Conversation screen sharing changed: %@ \n participant: %@", &v12, 0x16u);
    }
  }
}

- (BOOL)isManagingCallWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v9 = [v8 conversationsByUUID];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v10 provider];
    v12 = [v11 isDefaultProvider];
  }

  else
  {
    v12 = 1;
  }

  v15.receiver = self;
  v15.super_class = CSDFaceTimeConversationProviderDelegate;
  v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v15 isManagingCallWithUUID:v4];

  return v13 & v12;
}

- (void)conversationManager:(id)a3 conversation:(id)a4 failedWithContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 UUID];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Conversation with UUID %@ failed with context: %@", &v13, 0x16u);
  }

  v12 = [v7 UUID];
  [(CSDFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:v12 failureContext:v8];
}

- (void)conversationManager:(id)a3 conversation:(id)a4 addedActiveParticipant:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v11 = [v10 conversationsByUUID];
  v12 = [v7 UUID];
  v13 = [v11 objectForKeyedSubscript:v12];

  if (!v13)
  {
    v15 = sub_100004778();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:

      goto LABEL_17;
    }

    v19 = [v7 UUID];
    v20 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v21 = [v20 conversationsByUUID];
    v22 = [v21 allValues];
    v32 = 138412546;
    v33 = v19;
    v34 = 2112;
    v35 = v22;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Exiting addedActiveParticipant callback early since conversation with UUID %@ has been removed - current conversations are %@", &v32, 0x16u);

LABEL_15:
    goto LABEL_16;
  }

  if ([v13 state] == 1)
  {
    v14 = [v13 letMeInRequestState];
    if ([v13 isOneToOneModeEnabled])
    {
      if (v14 == 3)
      {
        v15 = sub_100004778();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v13 state];
          v17 = [v13 letMeInRequestState];
          v18 = [v13 UUID];
          v32 = 134218754;
          v33 = v16;
          v34 = 2048;
          v35 = v17;
          v36 = 2112;
          v37 = v18;
          v38 = 2112;
          v39 = v8;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not reporting a U+1 call as connecting when active participant is added since it is going through LMI flow (state %ld and LMI state %ld) and should not connect until user presses join in the staging area; conversation UUID %@: addedActiveParticipant %@.", &v32, 0x2Au);
        }

        goto LABEL_16;
      }

      goto LABEL_10;
    }
  }

  else if ([v13 isOneToOneModeEnabled])
  {
LABEL_10:
    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v13 state];
      v25 = [v13 letMeInRequestState];
      v26 = [v13 UUID];
      v32 = 134218754;
      v33 = v24;
      v34 = 2048;
      v35 = v25;
      v36 = 2112;
      v37 = v26;
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Reporting call as connecting and isConversation=true since conversation (state: %ld LMI state: %ld) with UUID %@: addedActiveParticipant %@.", &v32, 0x2Au);
    }

    v27 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    v28 = [v13 UUID];
    v15 = [v27 objectForKeyedSubscript:v28];

    v19 = [[CXCallUpdate alloc] initWithTUConversation:v13];
    if (v15)
    {
      v29 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      [v29 reportCallWithUUID:v15 updated:v19];

      if ([v13 isLocallyCreated])
      {
        v30 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
        v31 = +[NSDate date];
        [v30 providerDelegate:self callWithUUID:v15 startedConnectingAtDate:v31];
      }
    }

    goto LABEL_15;
  }

LABEL_17:
}

- (void)conversationManager:(id)a3 removedConversationWithUUID:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ending callUUID:%@ with conversation with UUID %@:", &v12, 0x16u);
    }

    [(CSDFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:v5];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:v8];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:v5];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self removeActiveAudioSessionObjectForConversationWithUUID:v5];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self updateNetworkCriticalStateIfNecessary];
    v10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v11 = +[NSDate date];
    [v10 reportCallWithUUID:v8 endedAtDate:v11 reason:2];
  }
}

- (void)conversationManager:(id)a3 conversation:(id)a4 changedBytesOfDataUsed:(int64_t)a5
{
  v7 = a4;
  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v10 = [v7 UUID];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    goto LABEL_5;
  }

  v12 = [(CSDFaceTimeConversationProviderDelegate *)self recentlyDeletedCallUUIDsByConversationUUID];
  v13 = [v7 UUID];
  v11 = [v12 objectForKeyedSubscript:v13];

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CallUUID: %@ is fetched from recentlyDeletedCallUUIDsByConversationUUID since the call was ended and we could not find it in callUUIDsByConversationUUID", &v19, 0xCu);
  }

  if (v11)
  {
LABEL_5:
    v15 = [(CSDFaceTimeConversationProviderDelegate *)self recentlyDeletedCallUUIDsByConversationUUID];
    v16 = [v7 UUID];
    [v15 setObject:0 forKeyedSubscript:v16];

    v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v18 = [v11 UUIDString];
    [v17 reportCallWithUUID:v11 crossDeviceIdentifier:v18 changedBytesOfDataUsed:a5];
  }
}

- (void)conversationManager:(id)a3 reportedLetMeInRejectedForPendingConversation:(id)a4
{
  v6 = a4;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  [(CSDFaceTimeConversationProviderDelegate *)self _failConversation:v6 failureReason:8 providerEndedReason:521];
}

- (void)conversationManager:(id)a3 reportedInvalidLinkForPendingConversation:(id)a4
{
  v6 = a4;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  [(CSDFaceTimeConversationProviderDelegate *)self _failConversation:v6 failureReason:9 providerEndedReason:526];
}

- (void)_failConversation:(id)a3 failureReason:(int64_t)a4 providerEndedReason:(int64_t)a5
{
  v8 = a3;
  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v11 = [v8 UUID];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    [(CSDFaceTimeConversationProviderDelegate *)self leaveConversation:v8 withCallUUID:v12 reason:1];
    v13 = objc_alloc_init(CXCallFailureContext);
    [v13 setFailureReason:a4];
    [v13 setProviderEndedReason:a5];
    v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [v14 reportCallWithUUID:v12 failedAtDate:0 withContext:v13];

    v15 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v16 = +[NSDate now];
    [v15 providerDelegate:self callWithUUID:v12 endedAtDate:v16 withReason:2 failureContext:0];
  }

  else
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 UUID];
      v19 = 134218242;
      v20 = a4;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not fail conversation with reason %ld callUUID not found for conversation UUID %@", &v19, 0x16u);
    }
  }
}

- (void)conversationManager:(id)a3 reportedHandedOffConversation:(id)a4 replacedByIdentifier:(unint64_t)a5 localizedHandoffRecipientDeviceCategory:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v13 = [v9 UUID];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = +[TUCallCenter sharedInstance];
    v16 = [v14 UUIDString];
    v17 = [v15 callWithCallUUID:v16];

    [v17 setEndDueToHandoff:1];
    v18 = [[CXCallUpdate alloc] initWithTUConversation:v9];
    [v18 setLocalizedHandoffRecipientDeviceCategory:v10];
    v19 = [NSNumber numberWithUnsignedLongLong:a5];
    [v18 setHandoffRecipientParticipant:v19];

    [(CSDFaceTimeConversationProviderDelegate *)self leaveConversation:v9 withCallUUID:v14 reason:102];
    v20 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [v20 reportCallWithUUID:v14 updated:v18];

    v21 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v22 = +[NSDate now];
    [v21 reportCallWithUUID:v14 endedAtDate:v22 privateReason:102];

    v23 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v24 = +[NSDate now];
    [v23 providerDelegate:self callWithUUID:v14 endedAtDate:v24 withReason:102 failureContext:0];
  }

  else
  {
    v25 = sub_100004778();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v9 UUID];
      v27 = 138412290;
      v28 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[WARN] Could not report conversation as continued as could not find call for conversation UUID %@", &v27, 0xCu);
    }
  }
}

- (void)conversationManager:(id)a3 reportedRemoteDoesHandedOffForConversation:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v8 = [v5 UUID];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = +[TUCallCenter sharedInstance];
    v11 = [v9 UUIDString];
    v12 = [v10 callWithCallUUID:v11];

    [v12 setRemoteDoesHandoff:1];
    v13 = sub_100004778();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_8;
    }

    v16 = 138412290;
    v17 = v12;
    v14 = "reportedRemoteDoesHandedOffForConversation: for call: %@";
    v15 = v13;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
    goto LABEL_7;
  }

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v5 UUID];
    v16 = 138412290;
    v17 = v13;
    v14 = "[WARN] Could not report conversation: not find call for conversation UUID %@";
    v15 = v12;
    goto LABEL_6;
  }

LABEL_8:
}

- (void)conversationManager:(id)a3 connectionDidStartForConversation:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v7 = [v5 UUID];

  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    [(CSDFaceTimeConversationProviderDelegate *)self startOutgoingOneToOneTimeoutIfNecessary:v8];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047B20C();
    }
  }
}

- (void)provider:(id)a3 performAnswerCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 138412290;
    v37 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Joining conversation for answer call action: %@", &v36, 0xCu);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [v5 callUUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v12 = [v11 conversationsByUUID];
  v13 = [v12 objectForKeyedSubscript:v10];

  v14 = [(CSDFaceTimeConversationProviderDelegate *)self blockUtilities];
  v15 = [v13 remoteMembers];
  v16 = [v14 blockListContainsMembers:v15 providerIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

  if (v16)
  {
    v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    v18 = [v13 UUID];
    v19 = [v17 objectForKeyedSubscript:v18];

    if (!v19)
    {
LABEL_33:

      goto LABEL_34;
    }

    v20 = [(CSDFaceTimeConversationProviderDelegate *)self blockUtilities];
    v21 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [(CSDConversationJoinContext *)v20 reportFailureForReason:16 provider:v21 callUUID:v19 actionToFail:v5];

LABEL_32:
    goto LABEL_33;
  }

  v22 = [v13 link];
  if (!v22 || (v23 = v22, v24 = TULockdownModeEnabled(), v23, !v24))
  {
    v26 = +[TUCallCenter sharedInstance];
    v27 = [v5 callUUID];
    v28 = [v27 UUIDString];
    v19 = [v26 callWithCallUUID:v28];

    if (!v13)
    {
      v30 = sub_100004778();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10047B284();
      }

      [v5 fail];
      goto LABEL_33;
    }

    if ([v13 endpointOnCurrentDevice])
    {
      v29 = [v5 downgradeToAudio] ^ 1;
    }

    else
    {
      v29 = 0;
    }

    v20 = objc_alloc_init(CSDConversationJoinContext);
    if (([v13 isVideo] & 1) != 0 || objc_msgSend(v19, "isVideo"))
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    [(CSDConversationJoinContext *)v20 setVideo:v31];
    if (-[CSDConversationJoinContext isVideo](v20, "isVideo") && [v19 isSendingVideo])
    {
      v32 = ([v5 pauseVideoToStart] ^ 1) & v29;
    }

    else
    {
      v32 = 0;
    }

    [(CSDConversationJoinContext *)v20 setVideoEnabled:v32];
    if ([(CSDConversationJoinContext *)v20 isVideo])
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    [(CSDConversationJoinContext *)v20 setAvMode:v33];
    v34 = [v13 provider];
    [(CSDConversationJoinContext *)v20 setProvider:v34];

    -[CSDConversationJoinContext setScreening:](v20, "setScreening:", [v5 screening]);
    -[CSDConversationJoinContext setSpatialPersonaEnabled:](v20, "setSpatialPersonaEnabled:", [v13 isSpatialPersonaEnabled]);
    -[CSDConversationJoinContext setIsNearbySharePlay:](v20, "setIsNearbySharePlay:", [v13 isNearbySharePlay]);
    if (+[AVAudioClient hasActiveAudioSession])
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self setAudioSessionActive:1];
    }

    v35 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [v35 joinExistingConversationWithUUID:v10 context:v20];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueOrStartAudioForConversationUUID:v10];
    [(CSDFaceTimeConversationProviderDelegate *)self declineRemoteDevicesForConversation:v13 reason:4];
    goto LABEL_32;
  }

  v25 = sub_100004778();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_10047B248();
  }

  [v5 fail];
LABEL_34:
}

- (id)linkForJoinCallAction:(id)a3 inLinks:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding a matching link in join call action %@ %@", buf, 0x16u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v5 pseudonym];
        v15 = [v5 publicKey];
        v16 = [v13 isEquivalentToPseudonym:v14 andPublicKey:v15];

        if (v16)
        {
          v19 = sub_100004778();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v27 = v5;
            v28 = 2112;
            v29 = v13;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found matching link for join call action %@ %@", buf, 0x16u);
          }

          v18 = [v13 copy];
          v17 = v8;
          goto LABEL_17;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Couldn't find a matching link in join call action %@", buf, 0xCu);
  }

  v18 = 0;
LABEL_17:

  return v18;
}

- (id)activatedLinkForJoinCallAction:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding a matching activated link in join call action %@", &v13, 0xCu);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v9 = [v8 activatedConversationLinksWithError:a4];

  if (*a4)
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047B2F4(a4);
    }

    v11 = 0;
  }

  else
  {
    v11 = [(CSDFaceTimeConversationProviderDelegate *)self linkForJoinCallAction:v6 inLinks:v9];
  }

  return v11;
}

- (id)deletedLinkForJoinCallAction:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding a matching deleted link in join call action %@", &v15, 0xCu);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v9 = [v8 deletedConversationLinksWithError:a4];

  v10 = *a4;
  v11 = sub_100004778();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10047B36C(a4);
    }

    v13 = 0;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Deleted links: %@", &v15, 0xCu);
    }

    v13 = [(CSDFaceTimeConversationProviderDelegate *)self linkForJoinCallAction:v6 inLinks:v9];
  }

  return v13;
}

- (id)linkForJoinCallAction:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding activated link in join call action %@", &v14, 0xCu);
  }

  v8 = [(CSDFaceTimeConversationProviderDelegate *)self activatedLinkForJoinCallAction:v6 withError:a4];
  if (*a4)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047B3E4(a4);
    }

LABEL_7:
    v10 = 0;
    goto LABEL_12;
  }

  v11 = sub_100004778();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v12)
    {
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find activated link for join call action %@, link: %@", &v14, 0x16u);
    }

    goto LABEL_7;
  }

  if (v12)
  {
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found activated link for join call action %@, link: %@", &v14, 0x16u);
  }

  v10 = v8;
LABEL_12:

  return v10;
}

- (id)validateLinkForJoinCallActionIfNecessary:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Validating link for join call action %@", buf, 0xCu);
  }

  v8 = [v6 pseudonym];
  if (![v8 length])
  {

    goto LABEL_12;
  }

  v9 = [v6 publicKey];
  v10 = [v9 length];

  if (!v10)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  if (TULockdownModeEnabled())
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10047B248();
    }

    if (a4)
    {
      v12 = 3;
LABEL_10:
      [NSError errorWithDomain:@"com.apple.calls.callservicesd.links" code:v12 userInfo:0];
      *a4 = v13 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v15 = [(CSDFaceTimeConversationProviderDelegate *)self linkForJoinCallAction:v6 withError:a4];
  v13 = v15;
  if (*a4)
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10047B45C();
    }

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  if (!v15)
  {
    v18 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v19 = [v6 pseudonym];
    v20 = [v18 isHandleStringLocalPseudonym:v19];

    if (v20)
    {
      v21 = sub_100004778();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v6 pseudonym];
        *buf = 138412290;
        v37 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "LMI: This pseudonym is mine, but couldn't find the link - triggering link recovery and failing the action {pseudonym: %@}", buf, 0xCu);
      }

      v23 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v24 = [v6 pseudonym];
      v40 = v24;
      v25 = [NSArray arrayWithObjects:&v40 count:1];
      [v23 recoverLinksForPseudonyms:v25];

      v12 = 1;
      goto LABEL_10;
    }

    v35 = 0;
    v26 = [(CSDFaceTimeConversationProviderDelegate *)self deletedLinkForJoinCallAction:v6 withError:&v35];
    v27 = v35;
    v28 = sub_100004778();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No link was found, find deleted link: %@, error: %@", buf, 0x16u);
    }

    v29 = [TUConversationLink alloc];
    v30 = [v6 pseudonym];
    v31 = [v6 publicKey];
    v13 = [v29 initWithPseudonym:v30 publicKey:v31 groupUUID:0 originatorHandle:0];

    if (!v13)
    {
      v32 = sub_100004778();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v6 pseudonym];
        v34 = [v6 publicKey];
        *buf = 138412546;
        v37 = v33;
        v38 = 2112;
        v39 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "LMI: Could not assemble link for pseudonym %@ and publicKey %@", buf, 0x16u);
      }

      v12 = 2;
      goto LABEL_10;
    }
  }

LABEL_13:
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v37 = v6;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Validated link for join call action %@ link: %@", buf, 0x16u);
  }

LABEL_21:

  return v13;
}

- (BOOL)_actionIsDisallowedByGreenTea:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  if (TUGreenTeaLagunaEnabled() && ![v4 avMode])
  {
    v9 = [v4 presentationMode];

    if (v9 == 2)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = [v4 remoteMembers];
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v10 = 0;
        v11 = *v17;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v6);
            }

            v13 = [*(*(&v16 + 1) + 8 * i) handle];
            v14 = [v13 value];
            v15 = [v14 destinationIdIsPseudonym];

            v10 += v15 ^ 1;
            if (v10 > 2)
            {
              LOBYTE(v7) = 1;
              goto LABEL_6;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_6;
    }
  }

  else
  {
  }

  if (![v4 isVideo])
  {
    LOBYTE(v7) = 1;
    goto LABEL_8;
  }

  v6 = [v4 remoteMembers];
  LOBYTE(v7) = [v6 count] > 1;
LABEL_6:

LABEL_8:
  return v7;
}

- (void)performJoinCallAction:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 UUID];
    *buf = 138412290;
    v260 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "performJoinCallAction UUID: %@", buf, 0xCu);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self deviceSupport];
  if ([v8 isGreenTea])
  {
    v9 = [(CSDFaceTimeConversationProviderDelegate *)self _actionIsDisallowedByGreenTea:v4];

    if (v9)
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "[WARN] GFT/FTA calls are not allowed on GreenTea devices";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (([v4 isValidScreenSharingRequest] & 1) != 0 || (-[CSDAbstractFaceTimeConversationProviderDelegate featureFlags](self, "featureFlags"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "usesModernScreenSharingFromMessages"), v12, !v13))
  {
    v251 = 0;
    v14 = [(CSDFaceTimeConversationProviderDelegate *)self validateLinkForJoinCallActionIfNecessary:v4 withError:&v251];
    v15 = v251;
    if (v15)
    {
      v16 = sub_100004778();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10047B4CC();
      }

      v250 = 0;
      v17 = [(CSDFaceTimeConversationProviderDelegate *)self deletedLinkForJoinCallAction:v4 withError:&v250];
      v18 = v250;
      v19 = sub_100004778();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v260 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Retrieve deleted link: %@", buf, 0xCu);
      }

      [v4 fail];
      goto LABEL_138;
    }

    if (v14)
    {
      if ([v4 isScreening])
      {
        v20 = sub_100004778();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot join a call with screening that is link based", buf, 2u);
        }

        [v4 fail];
        goto LABEL_138;
      }

      v27 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v28 = [v14 pseudonym];
      v29 = [v4 callUUID];
      [v27 addPseudonym:v28 forCallUUID:v29];

      if (([v4 isJoiningConversationWithLink] & 1) == 0)
      {
        v30 = sub_100004778();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v260 = v4;
          v261 = 2112;
          v262 = v14;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "letMeIn: %@, link: %@", buf, 0x16u);
        }

        v31 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v32 = [v14 pseudonym];
        v33 = [v31 conversationLinkForPseudonym:v32];

        if (v33 && [v33 isEquivalentToConversationLink:v14])
        {
          v34 = sub_100004778();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v260 = v33;
            v261 = 2112;
            v262 = v14;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "get resolved link: %@ for link: %@", buf, 0x16u);
          }

          v35 = v33;
          v14 = v35;
        }

        v36 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v37 = [v14 pseudonym];
        v38 = [v36 pendingConversationUUIDWithPseudonym:v37];

        v196 = v38;
        if (v38)
        {
          if (TUDisableLinks())
          {
            v39 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
            v40 = [v39 conversationsByUUID];
            v41 = [v40 objectForKeyedSubscript:v38];

            v42 = sub_100004778();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v260 = v41;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Joining from links is disabled by server bag value, failing pending conversation %@", buf, 0xCu);
            }

            [(CSDFaceTimeConversationProviderDelegate *)self _failConversation:v41 failureReason:10 providerEndedReason:527];
            v43 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
            [v43 removeAllPendingConversations];
LABEL_45:

            [v4 fail];
LABEL_130:

LABEL_131:
LABEL_137:
            v15 = 0;
LABEL_138:

            goto LABEL_139;
          }

          if ([v4 isLetMeIn])
          {
            v125 = sub_100004778();
            if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
            {
              v126 = [v14 pseudonym];
              *buf = 138412290;
              v260 = v126;
              _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "LMI: Asking CSDConversationManager to request let me in approval for pseudonym: %@", buf, 0xCu);
            }

            v127 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
            v128 = [v14 pseudonym];
            [v127 requestLetMeInApprovalForPseudonym:v128];
          }

          v129 = sub_100004778();
          if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v260 = v38;
            _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "Use existing pendingConversationUUID: %@", buf, 0xCu);
          }

          v130 = [v4 callUUID];
          v131 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
          [v131 setObject:v130 forKeyedSubscript:v38];

          [v4 fulfill];
LABEL_129:
          v132 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          v228[0] = _NSConcreteStackBlock;
          v228[1] = 3221225472;
          v228[2] = sub_1001FF384;
          v228[3] = &unk_10061E648;
          v14 = v14;
          v229 = v14;
          [v132 renewLinkIfNeeded:v14 completionHandler:v228];

          v41 = v229;
          goto LABEL_130;
        }

        if (![v14 canCreateConversations])
        {
          [(CSDFaceTimeConversationProviderDelegate *)self proceedToNewPendingConversationForLink:v14 action:v4];
          goto LABEL_129;
        }

        v101 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        [v101 removeAllPendingConversations];

        v102 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v103 = [v102 conversationsByGroupUUID];
        v104 = [v14 groupUUID];
        v41 = [v103 objectForKeyedSubscript:v104];

        if (v41)
        {
          v105 = [v41 link];
          v106 = [v105 isEquivalentToConversationLink:v14];

          if (!v106)
          {
            v43 = sub_100004778();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              sub_10047B540(v41, v14, v43);
            }

            goto LABEL_45;
          }

          if ([v41 isLocallyCreated] & 1) != 0 || (objc_msgSend(v41, "initiator"), v107 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "originatorHandle"), v108 = objc_claimAutoreleasedReturnValue(), v109 = objc_msgSend(v107, "isEquivalentToHandle:", v108), v108, v107, (v109))
          {
LABEL_200:
            v184 = sub_100004778();
            if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v260 = v41;
              _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "canUseExistingConversation, proceedToJoinForConversation: %@", buf, 0xCu);
            }

            [(CSDAbstractFaceTimeConversationProviderDelegate *)self proceedToJoinForConversation:v41 action:v4];
            [v4 fulfill];
            goto LABEL_130;
          }

          v195 = v33;
          v204 = self;
          v248 = 0u;
          v249 = 0u;
          v246 = 0u;
          v247 = 0u;
          v110 = v14;
          v111 = [v14 invitedMemberHandles];
          v112 = [v111 countByEnumeratingWithState:&v246 objects:v267 count:16];
          if (v112)
          {
            v113 = v112;
            v114 = *v247;
            while (2)
            {
              for (i = 0; i != v113; i = i + 1)
              {
                if (*v247 != v114)
                {
                  objc_enumerationMutation(v111);
                }

                v116 = *(*(&v246 + 1) + 8 * i);
                v117 = [v41 initiator];
                LOBYTE(v116) = [v117 isEquivalentToHandle:v116];

                if (v116)
                {

                  v14 = v110;
                  self = v204;
                  v33 = v195;
                  goto LABEL_200;
                }
              }

              v113 = [v111 countByEnumeratingWithState:&v246 objects:v267 count:16];
              if (v113)
              {
                continue;
              }

              break;
            }
          }

          v118 = sub_100004778();
          v14 = v110;
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            v119 = [v41 initiator];
            v120 = [v119 value];
            v121 = [v110 originatorHandle];
            v122 = [v110 invitedMemberHandles];
            *buf = 138413058;
            v260 = v41;
            v261 = 2112;
            v262 = v120;
            v263 = 2112;
            v264 = v121;
            v265 = 2112;
            v266 = v122;
            _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Can't use existing conversation %@ because its initiator %@ is not us, not the link creator %@, and not an invited handle to the link %@. Falling back to LMI request/response flow.", buf, 0x2Au);
          }

          v123 = v204;
          v124 = v110;
LABEL_194:
          [(CSDFaceTimeConversationProviderDelegate *)v123 proceedToNewPendingConversationForLink:v124 action:v4];
          v33 = v195;
          goto LABEL_130;
        }

        v136 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v137 = [v14 originatorHandle];
        v138 = [v136 isValidLocalHandle:v137];

        v139 = v14;
        v205 = self;
        v195 = v33;
        v140 = v4;
        if (v138)
        {
          v141 = [v139 originatorHandle];
          v142 = [v141 copy];
        }

        else
        {
          v142 = 0;
        }

        v41 = +[NSMutableSet set];
        v242 = 0u;
        v243 = 0u;
        v244 = 0u;
        v245 = 0u;
        v200 = v139;
        v143 = [v139 invitedMemberHandles];
        v144 = [v143 countByEnumeratingWithState:&v242 objects:v258 count:16];
        if (v144)
        {
          v145 = v144;
          v146 = *v243;
          do
          {
            for (j = 0; j != v145; j = j + 1)
            {
              if (*v243 != v146)
              {
                objc_enumerationMutation(v143);
              }

              v148 = *(*(&v242 + 1) + 8 * j);
              if (!v142)
              {
                v149 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v205 conversationManager];
                v150 = [v149 isValidLocalHandle:v148];

                if (v150)
                {
                  v142 = [v148 copy];
                }

                else
                {
                  v142 = 0;
                }
              }

              v151 = [[TUConversationMember alloc] initWithHandle:v148 nickname:0];
              [v41 addObject:v151];
            }

            v145 = [v143 countByEnumeratingWithState:&v242 objects:v258 count:16];
          }

          while (v145);
        }

        if (([v200 isLocallyCreated] & 1) == 0)
        {
          v152 = [TUConversationMember alloc];
          v153 = [v200 originatorHandle];
          v154 = [v152 initWithHandle:v153 nickname:0];
          [v41 addObject:v154];
        }

        if (!v142)
        {
          v181 = sub_100004778();
          if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
          {
            v182 = [v200 originatorHandle];
            v183 = [v200 invitedMemberHandles];
            *buf = 138412546;
            v260 = v182;
            v261 = 2112;
            v262 = v183;
            _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "Even though we have the information needed to create a conversation with this link, none of our currently active handles are the link creator %@ or one of the invited handles %@. Falling back to LMI request/response flow.", buf, 0x16u);
          }

          v123 = v205;
          v124 = v200;
          v4 = v140;
          v14 = v200;
          goto LABEL_194;
        }

        v194 = v142;
        v155 = [v140 otherInvitedHandles];
        v211 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v155 count]);

        v240 = 0u;
        v241 = 0u;
        v238 = 0u;
        v239 = 0u;
        v198 = v140;
        v156 = [v140 otherInvitedHandles];
        v157 = [v156 countByEnumeratingWithState:&v238 objects:v257 count:16];
        if (v157)
        {
          v158 = v157;
          v159 = *v239;
          do
          {
            for (k = 0; k != v158; k = k + 1)
            {
              if (*v239 != v159)
              {
                objc_enumerationMutation(v156);
              }

              v161 = [*(*(&v238 + 1) + 8 * k) tuHandle];
              if (v161)
              {
                [v211 addObject:v161];
              }
            }

            v158 = [v156 countByEnumeratingWithState:&v238 objects:v257 count:16];
          }

          while (v158);
        }

        v236 = 0u;
        v237 = 0u;
        v234 = 0u;
        v235 = 0u;
        v202 = [v198 remoteMembers];
        v209 = [v202 countByEnumeratingWithState:&v234 objects:v256 count:16];
        if (v209)
        {
          v207 = *v235;
          do
          {
            v162 = 0;
            do
            {
              if (*v235 != v207)
              {
                objc_enumerationMutation(v202);
              }

              objb = v162;
              v163 = *(*(&v234 + 1) + 8 * v162);
              v230 = 0u;
              v231 = 0u;
              v232 = 0u;
              v233 = 0u;
              v164 = v211;
              v165 = [v164 countByEnumeratingWithState:&v230 objects:v255 count:16];
              if (v165)
              {
                v166 = v165;
                v167 = *v231;
                do
                {
                  for (m = 0; m != v166; m = m + 1)
                  {
                    if (*v231 != v167)
                    {
                      objc_enumerationMutation(v164);
                    }

                    v169 = *(*(&v230 + 1) + 8 * m);
                    v170 = [v163 handle];
                    v171 = [v170 tuHandle];
                    LODWORD(v169) = [v171 isEquivalentToHandle:v169];

                    if (v169)
                    {
                      v172 = [TUConversationMember alloc];
                      v173 = [v163 handle];
                      v174 = [v173 tuHandle];
                      v175 = [v172 initWithHandle:v174 nickname:0];

                      [v175 setIsOtherInvitedHandle:1];
                      [v41 addObject:v175];
                    }
                  }

                  v166 = [v164 countByEnumeratingWithState:&v230 objects:v255 count:16];
                }

                while (v166);
              }

              v162 = objb + 1;
            }

            while (objb + 1 != v209);
            v209 = [v202 countByEnumeratingWithState:&v234 objects:v256 count:16];
          }

          while (v209);
        }

        v176 = [[TUConversationMember alloc] initWithHandle:v194];
        v177 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v205 featureFlags];
        if ([v177 avLessSharePlayEnabled])
        {
          v4 = v198;
          v178 = [v198 avMode];

          v179 = v200;
          if (v178)
          {
            v180 = 0;
          }

          else
          {
            v180 = [v198 presentationMode];
          }
        }

        else
        {
          v4 = v198;
          if ([v198 isVideo])
          {
            v178 = 2;
          }

          else
          {
            v178 = 1;
          }

          v180 = 0;
          v179 = v200;
        }

        v185 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v205 conversationManager];
        v186 = [v179 groupUUID];
        v187 = +[TUConversationProvider faceTimeProvider];
        v188 = [v185 findOrCreateConversationWithGroupUUID:v186 messagesGroupUUID:0 remoteMembers:v41 otherInvitedHandles:v211 localMember:v176 remotePushTokens:0 link:v179 activity:0 avMode:v178 presentationMode:v180 conversationProvider:v187 screenSharingRequest:0];

        if (v188)
        {
          self = v205;
          [(CSDAbstractFaceTimeConversationProviderDelegate *)v205 proceedToJoinForConversation:v188 action:v4];
          v189 = [v188 link];
          v190 = [v179 isEqual:v189];

          v14 = v179;
          if ((v190 & 1) == 0)
          {
            v191 = sub_100004778();
            v33 = v195;
            if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
            {
              v192 = [v188 link];
              *buf = 138412546;
              v260 = v192;
              v261 = 2112;
              v262 = v14;
              _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "Use %@ instead of link: %@ for renewal", buf, 0x16u);
            }

            v193 = [v188 link];

            v14 = v193;
LABEL_211:

            if (!v188)
            {
              goto LABEL_131;
            }

            goto LABEL_129;
          }
        }

        else
        {
          [v4 fail];
          v14 = v179;
          self = v205;
        }

        v33 = v195;
        goto LABEL_211;
      }
    }

    else
    {
      v21 = [v4 pseudonym];
      if ([v21 length])
      {
        v22 = [v4 publicKey];
        v23 = [v22 length];

        if (v23)
        {
          v24 = sub_100004778();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10047B5FC();
          }

          v227 = 0;
          v25 = [(CSDFaceTimeConversationProviderDelegate *)self deletedLinkForJoinCallAction:v4 withError:&v227];
          v14 = v227;
          v26 = sub_100004778();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v260 = v25;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Deleted link: %@", buf, 0xCu);
          }

          [v4 fail];
          goto LABEL_138;
        }
      }

      else
      {
      }
    }

    v203 = self;
    v199 = v14;
    v44 = [v4 remoteMembers];
    v210 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v44 count]);

    v45 = [v4 otherInvitedHandles];
    v46 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v45 count]);

    v47 = +[NSMutableSet set];
    v223 = 0u;
    v224 = 0u;
    v225 = 0u;
    v226 = 0u;
    v197 = v4;
    obj = [v4 remoteMembers];
    v48 = [obj countByEnumeratingWithState:&v223 objects:v254 count:16];
    v208 = v47;
    if (v48)
    {
      v49 = v48;
      v50 = *v224;
      do
      {
        for (n = 0; n != v49; n = n + 1)
        {
          if (*v224 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v52 = *(*(&v223 + 1) + 8 * n);
          v53 = [v52 handle];
          v54 = [v53 tuHandle];

          if ([v47 containsObject:v54])
          {
            v55 = sub_100004778();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v260 = v54;
              v261 = 2112;
              v262 = v47;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[WARN] Skipping member with handle %@ because it already exists in seen handles: %@", buf, 0x16u);
            }
          }

          else
          {
            v55 = [[TUConversationMember alloc] initWithHandle:v54 nickname:0];
            v56 = [v52 stableDeviceIdentifier];
            [v55 setStableDeviceIdentifier:v56];

            v221 = 0u;
            v222 = 0u;
            v219 = 0u;
            v220 = 0u;
            v57 = v46;
            v58 = v46;
            v59 = [v58 countByEnumeratingWithState:&v219 objects:v253 count:16];
            if (v59)
            {
              v60 = v59;
              v61 = *v220;
              do
              {
                for (ii = 0; ii != v60; ii = ii + 1)
                {
                  if (*v220 != v61)
                  {
                    objc_enumerationMutation(v58);
                  }

                  if ([*(*(&v219 + 1) + 8 * ii) isEquivalentToHandle:v54])
                  {
                    [v55 setIsOtherInvitedHandle:1];
                  }
                }

                v60 = [v58 countByEnumeratingWithState:&v219 objects:v253 count:16];
              }

              while (v60);
            }

            [v210 addObject:v55];
            v47 = v208;
            [v208 addObject:v54];
            v46 = v57;
          }
        }

        v49 = [obj countByEnumeratingWithState:&v223 objects:v254 count:16];
      }

      while (v49);
    }

    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v4 = v197;
    v63 = [v197 otherInvitedHandles];
    v64 = [v63 countByEnumeratingWithState:&v215 objects:v252 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v216;
      do
      {
        for (jj = 0; jj != v65; jj = jj + 1)
        {
          if (*v216 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v68 = [*(*(&v215 + 1) + 8 * jj) tuHandle];
          [v46 addObject:v68];
        }

        v65 = [v63 countByEnumeratingWithState:&v215 objects:v252 count:16];
      }

      while (v65);
    }

    v69 = [v197 joinCallActivity];
    v70 = [v69 tuActivity];

    if (!v210)
    {
      [v197 fail];
      v14 = v199;
LABEL_135:
      v134 = v208;
LABEL_136:

      goto LABEL_137;
    }

    v71 = [v197 callerID];
    if (v71)
    {
      v72 = [TUConversationMember alloc];
      v73 = [v197 callerID];
      v74 = [v73 tuHandle];
      obja = [v72 initWithHandle:v74 nickname:0];
    }

    else
    {
      obja = 0;
    }

    v75 = sub_100004778();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = [v197 callerID];
      *buf = 138412546;
      v260 = obja;
      v261 = 2112;
      v262 = v76;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "localMember: %@, action.callerID: %@", buf, 0x16u);
    }

    v77 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v203 featureFlags];
    v201 = v46;
    if ([v77 avLessSharePlayEnabled])
    {
      v78 = [v197 avMode];

      if (!v78)
      {
        v206 = [v197 presentationMode];
        goto LABEL_89;
      }
    }

    else
    {
      if ([v197 isVideo])
      {
        v78 = 2;
      }

      else
      {
        v78 = 1;
      }
    }

    v206 = 0;
LABEL_89:
    v79 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v203 conversationManager];
    v80 = [v197 groupUUID];
    v81 = [v197 messagesGroupUUID];
    v82 = [v197 remotePushTokens];
    v83 = [v197 conversationProviderIdentifier];
    v84 = [TUConversationProvider providerForIdentifier:v83];
    v85 = [v79 findOrCreateConversationWithGroupUUID:v80 messagesGroupUUID:v81 remoteMembers:v210 otherInvitedHandles:v201 localMember:obja remotePushTokens:v82 link:v199 activity:v70 avMode:v78 presentationMode:v206 conversationProvider:v84 screenSharingRequest:0];

    v86 = v85;
    if (!v85)
    {
      [v197 fail];
      v4 = v197;
      v14 = v199;
      v46 = v201;
      goto LABEL_134;
    }

    v87 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v203 featureFlags];
    v4 = v197;
    v46 = v201;
    if ([v87 nearbyFaceTimeEnabled])
    {
      v88 = [v86 isNearbySession];

      v14 = v199;
      if (!v88)
      {
LABEL_102:
        [(CSDAbstractFaceTimeConversationProviderDelegate *)v203 proceedToJoinForConversation:v86 action:v197];
        if (![v197 avMode])
        {
LABEL_133:
          [(CSDFaceTimeConversationProviderDelegate *)v203 declineRemoteDevicesForConversation:v86 reason:4];
          goto LABEL_134;
        }

        v100 = [v86 link];
        if (v100)
        {

          goto LABEL_133;
        }

        v133 = [v197 participantCluster];

        if (v133)
        {
          goto LABEL_133;
        }

LABEL_134:

        goto LABEL_135;
      }

      v89 = [v197 participantCluster];
      if (!v89 || (v90 = v89, [v197 participantCluster], v91 = objc_claimAutoreleasedReturnValue(), v92 = objc_msgSend(v91, "type"), v91, v90, v92 != 1))
      {
        v135 = sub_100004778();
        if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
        {
          sub_10047B674();
        }

        [v197 fail];
        goto LABEL_143;
      }

      v93 = [v86 activeRemoteParticipants];
      v94 = [v93 anyObject];
      v95 = [v94 cluster];
      v87 = [v95 UUID];

      if (v87)
      {
        v96 = [v197 participantCluster];
        v97 = [v96 UUID];
        v98 = [v87 isEqual:v97];

        if ((v98 & 1) == 0)
        {
          v99 = sub_100004778();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            sub_10047B638();
          }

          [v197 fail];
LABEL_143:
          v134 = v208;

          goto LABEL_136;
        }
      }
    }

    else
    {
      v14 = v199;
    }

    goto LABEL_102;
  }

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v11 = "[WARN] Failing join call action because it is not a valid request to screen share";
    goto LABEL_12;
  }

LABEL_13:

  [v4 fail];
LABEL_139:
}

- (void)proceedToNewPendingConversationForLink:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [v8 removeAllPendingConversations];

  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v10 = [v9 activeApprovedConversationWithLink:v6];

  if (v10)
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self proceedToJoinForConversation:v10 action:v7];
    [v7 fulfill];
  }

  else
  {
    v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v12 = [TUConversationMember alloc];
    v13 = [v7 callerID];
    v14 = [v13 tuHandle];
    v15 = [v12 initWithHandle:v14 nickname:0];
    v16 = [v11 initiatePendingConversationForLink:v6 localMember:v15 isVideoEnabled:{objc_msgSend(v7, "isVideoEnabled")}];

    if (v16)
    {
      [v7 fulfill];
      v17 = [[CXCallUpdate alloc] initWithTUConversation:v16];
      v18 = [v17 localSenderIdentityUUID];

      if (!v18)
      {
        v19 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v20 = [v16 initiator];
        v21 = [v19 senderIdentityUUIDForCallerIDHandle:v20];
        [v17 setLocalSenderIdentityUUID:v21];
      }

      v22 = sub_100004778();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v7 callUUID];
        v29 = 138412546;
        v30 = v23;
        v31 = 2112;
        v32 = v17;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "LMI: Reporting LMI call with UUID: %@ update: %@", &v29, 0x16u);
      }

      v24 = [v7 callUUID];
      v25 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
      v26 = [v16 UUID];
      [v25 setObject:v24 forKeyedSubscript:v26];

      v27 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      v28 = [v7 callUUID];
      [v27 reportCallWithUUID:v28 updated:v17];
    }

    else
    {
      [v7 fail];
    }
  }
}

- (id)_findPendingConversationWithCallUUID:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v7 = [v6 pseudonymsByCallUUID];
    v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v9 = [v8 conversationsByUUID];
    *buf = 138412546;
    v33 = v7;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "pseudonymsByCallUUID: %@, conversationsByUUID: %@", buf, 0x16u);
  }

  v10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v11 = [v10 pseudonymsByCallUUID];
  v12 = [v11 objectForKeyedSubscript:v4];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v14 = [v13 conversationsByUUID];
  v15 = [v14 allValues];

  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v26 = v4;
    v17 = *v28;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        if ([v19 isPendingConversation])
        {
          v20 = [v19 link];
          if (v20)
          {
            v21 = v20;
            v22 = [v19 link];
            v23 = [v22 pseudonym];
            v24 = [v23 isEqualToString:v12];

            if (v24)
            {
              v16 = v19;
              goto LABEL_15;
            }
          }
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

LABEL_15:
    v4 = v26;
  }

  return v16;
}

- (void)leaveConversationForCallUUID:(id)a3 endedReason:(int64_t)a4
{
  v6 = a3;
  v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v7);

  v10.receiver = self;
  v10.super_class = CSDFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v10 leaveConversationForCallUUID:v6 endedReason:a4];
  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [v8 objectForKeyedSubscript:v6];

  [(CSDFaceTimeConversationProviderDelegate *)self setWaitingForRemoteJoin:0 forConversationUUID:v9];
}

- (void)leaveConversation:(id)a3 withCallUUID:(id)a4 reason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v29.receiver = self;
  v29.super_class = CSDFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v29 leaveConversation:v8 withCallUUID:v9 reason:a5];
  v10 = [v8 link];
  if (v10)
  {
    v11 = v10;
    v12 = [v8 isPendingConversation];

    if (v12)
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v8 link];
        v15 = [v14 pseudonym];
        *buf = 138412546;
        v31 = v15;
        v32 = 2112;
        v33 = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removing pending conversation with pseudonym %@ and callUUID %@", buf, 0x16u);
      }

      v16 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v17 = [v8 link];
      v18 = [v17 pseudonym];
      v19 = [v16 removePendingConversationWithPseudonym:v18];

      v20 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v21 = [v8 link];
      v22 = [v21 pseudonym];
      [v20 removePseudonym:v22 forCallUUID:v9];

      v23 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v24 = [v8 UUID];
      [v23 notifyDelegatesOfRemovedConversationWithUUID:v24];
    }
  }

  v25 = [v8 UUID];
  [(CSDFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:v25];

  v26 = [v8 UUID];
  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:v26];

  if ([v8 state])
  {
    if ([v8 state] == 2)
    {
      v27 = [v8 remoteMembers];
      v28 = [v27 count];

      if (a5 == 4 && v28 == 1)
      {
        [(CSDFaceTimeConversationProviderDelegate *)self declineRemoteMembersForConversation:v8 reason:4];
      }
    }
  }

  else
  {
    [(CSDFaceTimeConversationProviderDelegate *)self declineRemoteDevicesForConversation:v8 reason:a5];
  }
}

- (void)provider:(id)a3 performSetHeldCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v18, 0xCu);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [v5 callUUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v12 = [v11 conversationsByUUID];
  v13 = [v12 objectForKeyedSubscript:v10];

  if (([v13 isVideo] & 1) == 0 && objc_msgSend(v13, "state") == 3 && (objc_msgSend(v13, "remoteMembers"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15 == 1))
  {
    v16 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [v16 setAudioPaused:objc_msgSend(v5 forConversationWithUUID:{"isOnHold"), v10}];

    if (([v5 isComplete] & 1) == 0)
    {
      [v5 fulfill];
    }
  }

  else
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10047B720();
    }

    [v5 fail];
  }
}

- (void)provider:(id)a3 performSetSendingVideoCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138412290;
    v40 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v39, 0xCu);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [v5 callUUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v12 = [v11 conversationsByUUID];
  v13 = [v12 objectForKeyedSubscript:v10];

  if ([v5 isSendingVideo] && (+[TUConversationManager allowsVideo](TUConversationManager, "allowsVideo") & 1) == 0)
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v39) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot enable video because conversations do not allow video on this device", &v39, 2u);
    }

    goto LABEL_21;
  }

  if (![v5 isSendingVideo] || !objc_msgSend(v13, "isOneToOneModeEnabled") || (objc_msgSend(v13, "isVideo") & 1) != 0 || !objc_msgSend(v13, "avMode"))
  {
    if ([v5 isSendingVideo])
    {
      v15 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v16 = [v15 isConversationWithUUIDRedirectingAudio:v10];

      if (v16)
      {
        v14 = sub_100004778();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10047B7D0();
        }

        goto LABEL_21;
      }
    }

    if (v13)
    {
      v17 = [v13 isOneToOneModeEnabled];
      v18 = [v5 isSendingVideo];
      v19 = v18;
      if (v17)
      {
        v20 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v21 = [v5 isSendingVideo];
        if (v19)
        {
          [v20 setVideoEnabled:v21 forConversationWithUUID:v10];

          v20 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          v22 = [v5 isSendingVideo] ^ 1;
        }

        else
        {
          v22 = v21 ^ 1;
        }

        v33 = v20;
      }

      else
      {
        if (v18 && ([v13 isVideo] & 1) == 0)
        {
          v28 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          [v28 setVideo:objc_msgSend(v5 forConversationWithUUID:{"isSendingVideo"), v10}];
        }

        v29 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        [v29 setVideoEnabled:objc_msgSend(v5 forConversationWithUUID:{"isSendingVideo"), v10}];

        v30 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v31 = [v30 presentationStateForConversationWithUUID:v10];

        if (v31 == 2 || ![v5 isSendingVideo])
        {
          goto LABEL_40;
        }

        v32 = sub_100004778();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 67109120;
          LODWORD(v40) = v31;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Group conversation has presentation state %d so requesting to unpause video", &v39, 8u);
        }

        v33 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v20 = v33;
        v22 = 0;
      }

      [v33 setVideoPaused:v22 forConversationWithUUID:v10];
    }

    else
    {
      v23 = [v5 callUUID];
      v24 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self isManagingPendingConversationForCallWithUUID:v23];

      if (!v24)
      {
        v34 = sub_100004778();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v5 callUUID];
          v36 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
          v37 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          v38 = [v37 conversationsByUUID];
          v39 = 138412802;
          v40 = v35;
          v41 = 2112;
          v42 = v36;
          v43 = 2112;
          v44 = v38;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for sendingVideo call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v39, 0x20u);
        }

        goto LABEL_22;
      }

      v20 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v25 = [v5 isSendingVideo];
      v26 = [v5 callUUID];
      v27 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self pendingConversationUUIDForCallWithUUID:v26];
      [v20 setVideoEnabled:v25 forPendingConversationWithUUID:v27];
    }

LABEL_40:
    [v5 fulfill];
    goto LABEL_41;
  }

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10047B794();
  }

LABEL_21:

LABEL_22:
  [v5 fail];
LABEL_41:
}

- (void)provider:(id)a3 performSetSharingScreenCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138412290;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v34, 0xCu);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [v5 callUUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v12 = [v11 conversationsByUUID];
  v13 = [v12 objectForKeyedSubscript:v10];

  if (!v13)
  {
    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v5 callUUID];
      v29 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      v30 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v31 = [v30 conversationsByUUID];
      v34 = 138412802;
      v35 = v28;
      v36 = 2112;
      v37 = v29;
      v38 = 2112;
      v39 = v31;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for screen share call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v34, 0x20u);
    }

    goto LABEL_24;
  }

  if ([v5 isSharingScreen])
  {
    v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v15 = [v14 allActiveConversationParticipantsSupportSharePlay];

    if (v15)
    {
      v16 = [(CSDFaceTimeConversationProviderDelegate *)self allowsScreenSharingBlock];
      v17 = v16[2]();

      if (v17)
      {
        v18 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v19 = [v18 isConversationWithUUIDRedirectingAudio:v10];

        if (v19)
        {
          v20 = sub_100004778();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10047B884();
          }

          [v5 fail];
        }

        v21 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v22 = [v21 isScreenSharingAvailable];

        if (v22)
        {
          goto LABEL_12;
        }

        v33 = sub_100004778();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_10047B8F4();
        }
      }

      else
      {
        v33 = sub_100004778();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_10047B848();
        }
      }
    }

    else
    {
      v32 = sub_100004778();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10047B80C();
      }

      v33 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [v33 displaySharePlayUnableToStartAlert];
    }

LABEL_24:
    [v5 fail];
    goto LABEL_25;
  }

LABEL_12:
  v23 = objc_opt_class();
  v24 = [v5 attributes];
  v25 = [v23 callScreenShareAttributesForAction:v24];

  v26 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [v26 setScreenEnabled:objc_msgSend(v5 screenShareAttributes:"isSharingScreen") forConversationWithUUID:{v25, v10}];

  [v5 fulfill];
LABEL_25:
}

- (void)provider:(id)a3 performEnableVideoCallAction:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v21, 0xCu);
  }

  v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v8 = [v5 callUUID];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v11 = [v10 conversationsByUUID];
  v12 = [v11 objectForKeyedSubscript:v9];

  if (!v12)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v5 callUUID];
      v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      v18 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v19 = [v18 conversationsByUUID];
      v21 = 138412802;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for enableVideo call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v21, 0x20u);
    }

    goto LABEL_13;
  }

  if ([v5 isVideoEnabled] && objc_msgSend(v12, "state") != 3)
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10047B930();
    }

LABEL_13:
    [v5 fail];
    goto LABEL_14;
  }

  v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [v13 setVideo:objc_msgSend(v5 forConversationWithUUID:{"isVideoEnabled"), v9}];

  v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [v14 sendVideoUpgradeMessageforConversationWithUUID:v9];

  [v5 fulfill];
LABEL_14:
}

- (void)provider:(id)a3 performSetScreenShareAttributesCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v15, 0xCu);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [v5 callUUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = objc_opt_class();
  v12 = [v5 attributes];
  v13 = [v11 callScreenShareAttributesForAction:v12];

  v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [v14 setScreenShareAttributes:v13 forConversationWithUUID:v10];

  [v5 fulfill];
}

- (void)provider:(id)a3 performSetVideoPresentationStateCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "", &v25, 2u);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [v5 callUUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v12 = [v11 conversationsByUUID];
  v13 = [v12 objectForKeyedSubscript:v10];

  v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v15 = [v14 conversationsByUUID];
  v16 = [v15 objectForKeyedSubscript:v10];

  if (v16)
  {
    v17 = [v5 videoPresentationState];
    if (([v13 isOneToOneModeEnabled] & 1) == 0)
    {
      v18 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [v18 setVideoPaused:v17 == 2 forConversationWithUUID:v10];
    }

    v19 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [v19 setPresentationState:-[CSDFaceTimeConversationProviderDelegate TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:](self forConversationWithUUID:{"TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:", objc_msgSend(v5, "videoPresentationState")), v10}];

    [v5 fulfill];
  }

  else
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v5 callUUID];
      v22 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      v23 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v24 = [v23 conversationsByUUID];
      v25 = 138412802;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for set video presentation state action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v25, 0x20u);
    }

    [v5 fail];
  }
}

- (void)provider:(id)a3 performSetVideoPresentationSizeCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "", &v23, 2u);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [v5 callUUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v12 = [v11 conversationsByUUID];
  v13 = [v12 objectForKeyedSubscript:v10];

  if (v13)
  {
    v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [v5 videoPresentationSize];
    v16 = v15;
    [v5 videoPresentationSize];
    [v14 setPresentationRect:v10 forConversationWithUUID:{0.0, 0.0, v16, v17}];

    [v5 fulfill];
  }

  else
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v5 callUUID];
      v20 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      v21 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v22 = [v21 conversationsByUUID];
      v23 = 138412802;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for set video presentation state action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v23, 0x20u);
    }

    [v5 fail];
  }
}

- (void)provider:(id)a3 performSetRelayingCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v20, 0xCu);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [v5 callUUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v12 = [v11 conversationsByUUID];
  v13 = [v12 objectForKeyedSubscript:v10];

  if (v13)
  {
    v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [v14 setRelaying:objc_msgSend(v5 forConversationWithUUID:{"isRelaying"), v10}];

    [v5 fulfill];
  }

  else
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v5 callUUID];
      v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      v18 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v19 = [v18 conversationsByUUID];
      v20 = 138412802;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for relaying call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v20, 0x20u);
    }

    [v5 fail];
  }
}

- (void)provider:(id)a3 performSetScreeningCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v22, 0xCu);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [v5 callUUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v12 = [v11 conversationsByUUID];
  v13 = [v12 objectForKeyedSubscript:v10];

  if (v13)
  {
    v14 = [v13 link];

    if (!v14)
    {
      v21 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [v21 setScreening:objc_msgSend(v5 forConversationWithUUID:{"isScreening"), v10}];

      [v5 fulfill];
      goto LABEL_13;
    }

    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Not starting screening on a link based conversation", &v22, 2u);
    }
  }

  else
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 callUUID];
      v18 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      v19 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v20 = [v19 conversationsByUUID];
      v22 = 138412802;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for screening call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v22, 0x20u);
    }
  }

  [v5 fail];
LABEL_13:
}

- (void)provider:(id)a3 performSetAllowUplinkAudioInjectionAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v22, 0xCu);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [v5 callUUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v12 = [v11 conversationsByUUID];
  v13 = [v12 objectForKeyedSubscript:v10];

  if (v13 && [v13 state] == 3 && objc_msgSend(v13, "avMode"))
  {
    v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v15 = [v5 willInject];
    v16 = [v13 UUID];
    [v14 setAudioInjectionAllowed:v15 forConversationWithUUID:v16];

    [v5 fulfill];
  }

  else
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v5 callUUID];
      v19 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      v20 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v21 = [v20 conversationsByUUID];
      v22 = 138412802;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Did not allow audio injection action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v22, 0x20u);
    }

    [v5 fail];
  }
}

- (NSMutableSet)conversationUUIDsUpgradedFromAVLess
{
  conversationUUIDsUpgradedFromAVLess = self->_conversationUUIDsUpgradedFromAVLess;
  if (!conversationUUIDsUpgradedFromAVLess)
  {
    v4 = +[NSMutableSet set];
    v5 = self->_conversationUUIDsUpgradedFromAVLess;
    self->_conversationUUIDsUpgradedFromAVLess = v4;

    conversationUUIDsUpgradedFromAVLess = self->_conversationUUIDsUpgradedFromAVLess;
  }

  return conversationUUIDsUpgradedFromAVLess;
}

- (BOOL)shouldHandleProvider:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 isDefaultProvider])
  {
    v5 = [v4 isTelephonyWithSharePlayProvider] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldHandleProviderWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[CSDConversationProviderManager sharedInstance];
  v6 = [v5 tuConversationProviderForIdentifier:v4];

  LOBYTE(self) = [(CSDFaceTimeConversationProviderDelegate *)self shouldHandleProvider:v6];
  return self;
}

@end