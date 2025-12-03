@interface CSDFaceTimeConversationProviderDelegate
+ (id)callScreenShareAttributesForAction:(id)action;
- (BOOL)_actionIsDisallowedByGreenTea:(id)tea;
- (BOOL)isManagingCallWithUUID:(id)d;
- (BOOL)isUnansweredOutgoingOneToOneConversation:(id)conversation;
- (BOOL)isWaitingForRemoteJoinForConversationUUID:(id)d;
- (BOOL)linkContainsValidLocalHandle:(id)handle;
- (BOOL)shouldHandleProvider:(id)provider;
- (BOOL)shouldHandleProviderWithIdentifier:(id)identifier;
- (CSDFaceTimeConversationProviderDelegate)initWithConversationManager:(id)manager queue:(id)queue invitationResolver:(id)resolver;
- (CSDFaceTimeConversationProviderDelegate)initWithQueue:(id)queue conversationManager:(id)manager networkSupport:(id)support serverBag:(id)bag featureFlags:(id)flags invitationResolver:(id)resolver;
- (CSDFaceTimeConversationProviderDelegate)initWithQueue:(id)queue conversationManager:(id)manager networkSupport:(id)support serverBag:(id)bag featureFlags:(id)flags invitationResolver:(id)resolver idsService:(id)service;
- (NSMutableSet)conversationUUIDsUpgradedFromAVLess;
- (NSMutableSet)conversationUUIDsWaitingForRemoteJoin;
- (id)_findPendingConversationWithCallUUID:(id)d;
- (id)activatedLinkForJoinCallAction:(id)action withError:(id *)error;
- (id)deletedLinkForJoinCallAction:(id)action withError:(id *)error;
- (id)linkForJoinCallAction:(id)action inLinks:(id)links;
- (id)linkForJoinCallAction:(id)action withError:(id *)error;
- (id)validateLinkForJoinCallActionIfNecessary:(id)necessary withError:(id *)error;
- (int)TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:(int64_t)state;
- (void)_failConversation:(id)conversation failureReason:(int64_t)reason providerEndedReason:(int64_t)endedReason;
- (void)cleanUpConversationIfNecessaryForConversationUUID:(id)d failureContext:(id)context;
- (void)conversationManager:(id)manager avModeChanged:(unint64_t)changed toAVMode:(unint64_t)mode forConversation:(id)conversation;
- (void)conversationManager:(id)manager connectionDidStartForConversation:(id)conversation;
- (void)conversationManager:(id)manager conversation:(id)conversation addedActiveParticipant:(id)participant;
- (void)conversationManager:(id)manager conversation:(id)conversation changedBytesOfDataUsed:(int64_t)used;
- (void)conversationManager:(id)manager conversation:(id)conversation failedWithContext:(id)context;
- (void)conversationManager:(id)manager conversationChanged:(id)changed;
- (void)conversationManager:(id)manager conversationScreenSharingChanged:(id)changed forParticipant:(id)participant;
- (void)conversationManager:(id)manager joinConversationWithRequest:(id)request;
- (void)conversationManager:(id)manager remoteMembersChanged:(id)changed forConversation:(id)conversation;
- (void)conversationManager:(id)manager removedConversationWithUUID:(id)d;
- (void)conversationManager:(id)manager reportedHandedOffConversation:(id)conversation replacedByIdentifier:(unint64_t)identifier localizedHandoffRecipientDeviceCategory:(id)category;
- (void)conversationManager:(id)manager reportedInvalidLinkForPendingConversation:(id)conversation;
- (void)conversationManager:(id)manager reportedLetMeInRejectedForPendingConversation:(id)conversation;
- (void)conversationManager:(id)manager reportedRemoteDoesHandedOffForConversation:(id)conversation;
- (void)declineConversation:(id)conversation reason:(int64_t)reason destinations:(id)destinations idsService:(id)service;
- (void)declineRemoteDevicesForConversation:(id)conversation reason:(int64_t)reason;
- (void)declineRemoteMembersForConversation:(id)conversation reason:(int64_t)reason;
- (void)handleDeclineMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update;
- (void)handleInvitationMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle shouldRing:(BOOL)ring;
- (void)handleInvitationMessageForLetMeIn:(id)in forConversation:(id)conversation pendingConversation:(id)pendingConversation link:(id)link fromHandle:(id)handle;
- (void)handleNicknameUpdateMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update;
- (void)handleReceivedVideoUpgradeMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle;
- (void)handleRemoveMembersMessage:(id)message forConversation:(id)conversation;
- (void)handleRespondedElsewhereMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle;
- (void)handleRespondedElsewhereMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withAliases:(id)aliases;
- (void)handleScreenShareMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update;
- (void)handleUpgradeMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update;
- (void)leaveConversation:(id)conversation withCallUUID:(id)d reason:(int64_t)reason;
- (void)leaveConversationForCallUUID:(id)d endedReason:(int64_t)reason;
- (void)performJoinCallAction:(id)action;
- (void)proceedToNewPendingConversationForLink:(id)link action:(id)action;
- (void)provider:(id)provider performAnswerCallAction:(id)action;
- (void)provider:(id)provider performEnableVideoCallAction:(id)action;
- (void)provider:(id)provider performSetAllowUplinkAudioInjectionAction:(id)action;
- (void)provider:(id)provider performSetHeldCallAction:(id)action;
- (void)provider:(id)provider performSetRelayingCallAction:(id)action;
- (void)provider:(id)provider performSetScreenShareAttributesCallAction:(id)action;
- (void)provider:(id)provider performSetScreeningCallAction:(id)action;
- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action;
- (void)provider:(id)provider performSetSharingScreenCallAction:(id)action;
- (void)provider:(id)provider performSetVideoPresentationSizeCallAction:(id)action;
- (void)provider:(id)provider performSetVideoPresentationStateCallAction:(id)action;
- (void)setCallUUID:(id)d forConversationUUID:(id)iD;
- (void)setWaitingForRemoteJoin:(BOOL)join forConversationUUID:(id)d;
- (void)startOutgoingOneToOneTimeoutIfNecessary:(id)necessary;
@end

@implementation CSDFaceTimeConversationProviderDelegate

- (CSDFaceTimeConversationProviderDelegate)initWithConversationManager:(id)manager queue:(id)queue invitationResolver:(id)resolver
{
  v14.receiver = self;
  v14.super_class = CSDFaceTimeConversationProviderDelegate;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v14 initWithConversationManager:manager queue:queue invitationResolver:resolver];
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

- (CSDFaceTimeConversationProviderDelegate)initWithQueue:(id)queue conversationManager:(id)manager networkSupport:(id)support serverBag:(id)bag featureFlags:(id)flags invitationResolver:(id)resolver
{
  resolverCopy = resolver;
  flagsCopy = flags;
  bagCopy = bag;
  supportCopy = support;
  managerCopy = manager;
  queueCopy = queue;
  v20 = +[CSDFaceTimeMultiwayIDSService sharedInstance];
  v21 = [(CSDFaceTimeConversationProviderDelegate *)self initWithQueue:queueCopy conversationManager:managerCopy networkSupport:supportCopy serverBag:bagCopy featureFlags:flagsCopy invitationResolver:resolverCopy idsService:v20];

  return v21;
}

- (CSDFaceTimeConversationProviderDelegate)initWithQueue:(id)queue conversationManager:(id)manager networkSupport:(id)support serverBag:(id)bag featureFlags:(id)flags invitationResolver:(id)resolver idsService:(id)service
{
  serviceCopy = service;
  v20.receiver = self;
  v20.super_class = CSDFaceTimeConversationProviderDelegate;
  v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v20 initWithQueue:queue conversationManager:manager networkSupport:support serverBag:bag featureFlags:flags invitationResolver:resolver];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_idsService, service);
  }

  return v18;
}

- (void)setCallUUID:(id)d forConversationUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (!dCopy)
  {
    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    v9 = [callUUIDsByConversationUUID objectForKeyedSubscript:iDCopy];

    if (v9)
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        callUUIDsByConversationUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
        v12 = [callUUIDsByConversationUUID2 objectForKeyedSubscript:iDCopy];
        *buf = 138412802;
        v23 = 0;
        v24 = 2112;
        v25 = iDCopy;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "callUUID: %@, callUUIDsByConversationUUID[%@]: %@", buf, 0x20u);
      }

      callUUIDsByConversationUUID3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
      v14 = [callUUIDsByConversationUUID3 objectForKeyedSubscript:iDCopy];
      recentlyDeletedCallUUIDsByConversationUUID = [(CSDFaceTimeConversationProviderDelegate *)self recentlyDeletedCallUUIDsByConversationUUID];
      [recentlyDeletedCallUUIDsByConversationUUID setObject:v14 forKeyedSubscript:iDCopy];

      objc_initWeak(buf, self);
      v16 = dispatch_time(0, 5000000000);
      queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001F6088;
      block[3] = &unk_10061A600;
      objc_copyWeak(&v21, buf);
      v20 = iDCopy;
      dispatch_after(v16, queue, block);

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }
  }

  v18.receiver = self;
  v18.super_class = CSDFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v18 setCallUUID:dCopy forConversationUUID:iDCopy];
}

- (BOOL)isWaitingForRemoteJoinForConversationUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsWaitingForRemoteJoin = [(CSDFaceTimeConversationProviderDelegate *)self conversationUUIDsWaitingForRemoteJoin];
  LOBYTE(queue) = [conversationUUIDsWaitingForRemoteJoin containsObject:dCopy];

  return queue;
}

- (NSMutableSet)conversationUUIDsWaitingForRemoteJoin
{
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsWaitingForRemoteJoin = self->_conversationUUIDsWaitingForRemoteJoin;

  return conversationUUIDsWaitingForRemoteJoin;
}

- (void)setWaitingForRemoteJoin:(BOOL)join forConversationUUID:(id)d
{
  joinCopy = join;
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  if (dCopy)
  {
    conversationUUIDsWaitingForRemoteJoin = [(CSDFaceTimeConversationProviderDelegate *)self conversationUUIDsWaitingForRemoteJoin];
    v8 = conversationUUIDsWaitingForRemoteJoin;
    if (joinCopy)
    {
      [conversationUUIDsWaitingForRemoteJoin addObject:dCopy];
    }

    else
    {
      [conversationUUIDsWaitingForRemoteJoin removeObject:dCopy];
    }
  }
}

- (int)TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:(int64_t)state
{
  if (state == 2)
  {
    return 2;
  }

  else
  {
    return state == 1;
  }
}

+ (id)callScreenShareAttributesForAction:(id)action
{
  actionCopy = action;
  v4 = objc_alloc_init(TUCallScreenShareAttributes);
  if (actionCopy)
  {
    [v4 setDeviceFamily:{objc_msgSend(actionCopy, "deviceFamily")}];
    [v4 setDeviceHomeButtonType:{objc_msgSend(actionCopy, "deviceHomeButtonType")}];
    [v4 setStyle:{objc_msgSend(actionCopy, "style")}];
    displayID = [actionCopy displayID];
    [v4 setDisplayID:displayID];

    frameRate = [actionCopy frameRate];
    [v4 setFrameRate:frameRate];

    [v4 setWindowed:{objc_msgSend(actionCopy, "isWindowed")}];
    windowUUID = [actionCopy windowUUID];
    [v4 setWindowUUID:windowUUID];

    displayScale = [actionCopy displayScale];
    [v4 setDisplayScale:displayScale];

    cornerRadius = [actionCopy cornerRadius];
    [v4 setCornerRadius:cornerRadius];

    scaleFactor = [actionCopy scaleFactor];
    [v4 setScaleFactor:scaleFactor];

    systemRootLayerTransform = [actionCopy systemRootLayerTransform];
    [v4 setSystemRootLayerTransform:systemRootLayerTransform];

    originalResolution = [actionCopy originalResolution];
    v13 = [originalResolution copy];
    [v4 setOriginalResolution:v13];
  }

  return v4;
}

- (BOOL)linkContainsValidLocalHandle:(id)handle
{
  handleCopy = handle;
  isLocallyCreated = [handleCopy isLocallyCreated];
  if (isLocallyCreated && (-[CSDAbstractFaceTimeConversationProviderDelegate conversationManager](self, "conversationManager"), v6 = objc_claimAutoreleasedReturnValue(), [handleCopy originatorHandle], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isValidLocalHandle:", v7), v7, v6, v8))
  {
    invitedMemberHandles = sub_100004778();
    if (os_log_type_enabled(invitedMemberHandles, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = @"YES";
      v28 = 2112;
      v29 = @"YES";
      _os_log_impl(&_mh_execute_header, invitedMemberHandles, OS_LOG_TYPE_DEFAULT, "Link was created locally: %@, using valid local handle: %@", buf, 0x16u);
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
    invitedMemberHandles = [handleCopy invitedMemberHandles];
    v10 = [invitedMemberHandles countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(invitedMemberHandles);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          LODWORD(v14) = [conversationManager isValidLocalHandle:v14];

          if (v14)
          {
            v18 = sub_100004778();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = @"NO";
              if (isLocallyCreated)
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

        v11 = [invitedMemberHandles countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    invitedMemberHandles = sub_100004778();
    if (os_log_type_enabled(invitedMemberHandles, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"YES";
      if (!isLocallyCreated)
      {
        v16 = @"NO";
      }

      *buf = 138412546;
      v27 = v16;
      v28 = 2112;
      v29 = @"NO";
      _os_log_impl(&_mh_execute_header, invitedMemberHandles, OS_LOG_TYPE_DEFAULT, "Link was created locally: %@, using valid local handle: %@", buf, 0x16u);
    }

    v17 = 0;
  }

  return v17;
}

- (void)cleanUpConversationIfNecessaryForConversationUUID:(id)d failureContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v9.receiver = self;
  v9.super_class = CSDFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v9 cleanUpConversationIfNecessaryForConversationUUID:dCopy failureContext:contextCopy];

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:dCopy];
}

- (void)handleDeclineMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update
{
  conversationCopy = conversation;
  handleCopy = handle;
  featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  if ([featureFlags nearbyFaceTimeEnabled])
  {
    isNearbySession = [conversationCopy isNearbySession];

    if (isNearbySession)
    {
      conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      uUID = [conversationCopy UUID];
      [conversationManager removeNearbyMemberWithHandle:handleCopy onConversationWithUUID:uUID];
      goto LABEL_8;
    }
  }

  else
  {
  }

  if ([conversationCopy state] == 3)
  {
    conversationManager = sub_100004778();
    if (!os_log_type_enabled(conversationManager, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      goto LABEL_13;
    }

    uUID = [conversationCopy UUID];
    v21 = 138412546;
    v22 = handleCopy;
    v23 = 2112;
    v24 = uUID;
    _os_log_impl(&_mh_execute_header, conversationManager, OS_LOG_TYPE_DEFAULT, "[WARN] Not handling received Decline message from %@ since we are already in a joined conversation with UUID: %@", &v21, 0x16u);
LABEL_8:

    goto LABEL_9;
  }

  conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  uUID2 = [conversationCopy UUID];
  [conversationManager2 leaveConversationWithUUID:uUID2];

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID3 = [conversationCopy UUID];
  v18 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID3];

  if (v18)
  {
    faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v20 = +[NSDate now];
    [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:v18 endedAtDate:v20 withReason:2 failureContext:0];
  }

LABEL_13:
}

- (void)handleNicknameUpdateMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update
{
  messageCopy = message;
  conversationCopy = conversation;
  handleCopy = handle;
  if ([messageCopy hasNickname])
  {
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    nickname = [messageCopy nickname];
    uUID = [conversationCopy UUID];
    [conversationManager processUpdatedNickname:nickname forHandle:handleCopy conversationUUID:uUID];
  }

  else
  {
    conversationManager = sub_100004778();
    if (os_log_type_enabled(conversationManager, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = messageCopy;
      _os_log_impl(&_mh_execute_header, conversationManager, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring nickname update message %@ because message doesn't have a nickname set.", &v15, 0xCu);
    }
  }
}

- (void)handleScreenShareMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update
{
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Not honoring screen sharing message", v7, 2u);
  }
}

- (void)handleReceivedVideoUpgradeMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle
{
  conversationCopy = conversation;
  handleCopy = handle;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

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
    v40 = handleCopy;
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
  v12 = conversationCopy;
  activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
  v14 = [activeRemoteParticipants countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v14)
  {
LABEL_10:

LABEL_17:
    v21 = sub_100004778();
    v11 = v33;
    conversationCopy = v12;
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
      objc_enumerationMutation(activeRemoteParticipants);
    }

    v18 = *(*(&v34 + 1) + 8 * v17);
    handle = [v18 handle];
    v20 = [handle isEqualToHandle:handleCopy];

    if (v20)
    {
      break;
    }

    if (v15 == ++v17)
    {
      v15 = [activeRemoteParticipants countByEnumeratingWithState:&v34 objects:v38 count:16];
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

  conversationCopy = v12;
  v11 = v33;
  if (([v12 state] == 3 || objc_msgSend(v12, "state") == 2) && (objc_msgSend(v12, "remoteMembers"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), v22, v23 == 1))
  {
    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    uUID = [v12 UUID];
    v26 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

    if (v26)
    {
      conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      uUID2 = [v12 UUID];
      [conversationManager setVideo:1 forConversationWithUUID:uUID2];
    }

    else
    {
      conversationManager = sub_100004778();
      if (os_log_type_enabled(conversationManager, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v12;
        _os_log_impl(&_mh_execute_header, conversationManager, OS_LOG_TYPE_DEFAULT, "[WARN] No call is being tracked, dropping message for conversation: %@", buf, 0xCu);
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

- (void)handleUpgradeMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withUpdate:(id)update
{
  messageCopy = message;
  conversationCopy = conversation;
  handleCopy = handle;
  updateCopy = update;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  serverBag = [(CSDAbstractFaceTimeConversationProviderDelegate *)self serverBag];
  isAutomaticUpgradingEnabled = [serverBag isAutomaticUpgradingEnabled];

  if ((isAutomaticUpgradingEnabled & 1) == 0)
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

  if (!updateCopy)
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

  if ([updateCopy participantUpdateSubtype] != 1)
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

  if (([messageCopy hasProtoUpgradeSessionUUID] & 1) == 0)
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

  participantDestinationID = [updateCopy participantDestinationID];
  v29 = 0;
  v18 = [participantDestinationID _stripPotentialTokenURIWithToken:&v29];
  v19 = v29;

  if (v19)
  {
    faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001F751C;
    v23[3] = &unk_10061E5F8;
    v24 = messageCopy;
    v25 = handleCopy;
    v26 = updateCopy;
    selfCopy = self;
    v28 = conversationCopy;
    [faceTimeDemuxerDelegate providerDelegate:self requestedUpgradeToExistingCallForConversation:v28 withSessionToken:v19 completion:v23];

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

- (void)handleRemoveMembersMessage:(id)message forConversation:(id)conversation
{
  messageCopy = message;
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  removedMembers = [messageCopy removedMembers];
  v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [removedMembers count]);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  removedMembers2 = [messageCopy removedMembers];
  v12 = [removedMembers2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(removedMembers2);
        }

        tuConversationMember = [*(*(&v19 + 1) + 8 * v15) tuConversationMember];
        [v10 addObject:tuConversationMember];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [removedMembers2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  uUID = [conversationCopy UUID];
  [conversationManager removeRemoteMembers:v10 fromConversationWithUUID:uUID];
}

- (void)handleInvitationMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle shouldRing:(BOOL)ring
{
  ringCopy = ring;
  messageCopy = message;
  conversationCopy = conversation;
  handleCopy = handle;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  tuConversationLink = [messageCopy tuConversationLink];
  if (!tuConversationLink)
  {
    goto LABEL_8;
  }

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  pseudonym = [tuConversationLink pseudonym];
  v17 = [conversationManager removePendingConversationWithPseudonym:pseudonym];

  if (!v17)
  {
    if ([messageCopy hasIsLetMeInApproved] && objc_msgSend(messageCopy, "isLetMeInApproved"))
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        uUID = [conversationCopy UUID];
        v28 = 138412290;
        v29 = uUID;
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
    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    uUID2 = [conversationCopy UUID];
    v17 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID2];

    if (v17)
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        uUID = [conversationCopy UUID];
        v28 = 138412546;
        v29 = uUID;
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
      if (ringCopy)
      {
        tuInvitationContext = [messageCopy tuInvitationContext];
        [(CSDAbstractFaceTimeConversationProviderDelegate *)self reportNewIncomingCallForConversation:conversationCopy fromHandle:handleCopy isReRing:0 invitationContext:tuInvitationContext];

        goto LABEL_18;
      }

      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        uUID = [conversationCopy UUID];
        invitationPreferences = [conversationCopy invitationPreferences];
        tuInvitationPreferences = [messageCopy tuInvitationPreferences];
        v28 = 138412802;
        v29 = uUID;
        v30 = 2114;
        v31 = invitationPreferences;
        v32 = 2114;
        v33 = tuInvitationPreferences;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming invitation message for %@ because shouldRing is set to NO. conversation.invitationPreferences=%{public}@, message.tuInvitationPreferences=%{public}@", &v28, 0x20u);

        goto LABEL_16;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  [(CSDFaceTimeConversationProviderDelegate *)self handleInvitationMessageForLetMeIn:messageCopy forConversation:conversationCopy pendingConversation:v17 link:tuConversationLink fromHandle:handleCopy];
LABEL_18:
}

- (void)handleInvitationMessageForLetMeIn:(id)in forConversation:(id)conversation pendingConversation:(id)pendingConversation link:(id)link fromHandle:(id)handle
{
  inCopy = in;
  conversationCopy = conversation;
  pendingConversationCopy = pendingConversation;
  linkCopy = link;
  handleCopy = handle;
  conversationGroupUUID = [pendingConversationCopy conversationGroupUUID];
  conversationGroupUUID2 = [inCopy conversationGroupUUID];
  v19 = [conversationGroupUUID isEqual:conversationGroupUUID2];

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      conversationGroupUUID3 = [inCopy conversationGroupUUID];
      conversationGroupUUID4 = [pendingConversationCopy conversationGroupUUID];
      *buf = 138412802;
      v59 = conversationGroupUUID3;
      v60 = 2112;
      v61 = conversationGroupUUID4;
      v62 = 2112;
      v63 = linkCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming invitation (LMI approval) because message's group UUID %@ did not match the pending conversation's expected group UUID %@. (link: %@)", buf, 0x20u);
    }

    v20 = 522;
  }

  approverHandle = [pendingConversationCopy approverHandle];
  v25 = [approverHandle isEquivalentToHandle:handleCopy];

  if (v25)
  {
    v26 = v19 ^ 1;
  }

  else
  {
    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      approverHandle2 = [pendingConversationCopy approverHandle];
      *buf = 138412546;
      v59 = handleCopy;
      v60 = 2112;
      v61 = approverHandle2;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming invitation (LMI approval) because it was sent from handle %@ instead of expected approverHandle %@", buf, 0x16u);
    }

    v26 = 1;
    v20 = 524;
  }

  link = [pendingConversationCopy link];
  v30 = [link isEquivalentToConversationLink:linkCopy];

  if ((v30 & 1) == 0)
  {
    v48 = sub_100004778();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v59 = linkCopy;
      v60 = 2112;
      v61 = pendingConversationCopy;
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
    uUID = [conversationCopy UUID];
    [(CSDFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:uUID failureContext:v41];
    goto LABEL_37;
  }

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID2 = [conversationCopy UUID];
  v33 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID2];

  if (!v33)
  {
    callUUIDsByConversationUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    temporaryGroupUUID = [pendingConversationCopy temporaryGroupUUID];
    v33 = [callUUIDsByConversationUUID2 objectForKeyedSubscript:temporaryGroupUUID];
  }

  if ([inCopy type] == 1 && (objc_msgSend(conversationCopy, "letMeInRequestState") == 2 || objc_msgSend(pendingConversationCopy, "letMeInRequestState") == 2))
  {
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    uUID3 = [conversationCopy UUID];
    [conversationManager updateLetMeInRequestState:3 addLink:linkCopy forConversationWithUUID:uUID3];
  }

  uUID4 = [conversationCopy UUID];
  [(CSDAbstractFaceTimeConversationProviderDelegate *)self associateCallUUID:v33 withConversationUUID:uUID4 waitingToJoin:1];

  v39 = +[TUCallCenter sharedInstance];
  queue = [v39 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F894C;
  block[3] = &unk_100619D38;
  v41 = v33;
  v57 = v41;
  dispatch_async(queue, block);

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
  provider = [conversationCopy provider];
  [(CSDConversationJoinContext *)v43 setProvider:provider];

  -[CSDConversationJoinContext setVideoEnabled:](v43, "setVideoEnabled:", [pendingConversationCopy isVideoEnabled]);
  -[CSDConversationJoinContext setVideo:](v43, "setVideo:", [pendingConversationCopy isVideo]);
  featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  avLessSharePlayEnabled = [featureFlags avLessSharePlayEnabled];

  if (avLessSharePlayEnabled)
  {
    if ([inCopy hasAvMode])
    {
      avMode = [inCopy avMode];
    }

    else if ([(CSDConversationJoinContext *)v43 isVideo])
    {
      avMode = 2;
    }

    else
    {
      avMode = 1;
    }

    [(CSDConversationJoinContext *)v43 setAvMode:avMode];
  }

  conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  uUID5 = [conversationCopy UUID];
  [conversationManager2 joinExistingConversationWithUUID:uUID5 context:v43];

  if ([pendingConversationCopy isUplinkMuted])
  {
    v52 = sub_100004778();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v59 = conversationCopy;
      v60 = 2112;
      v61 = pendingConversationCopy;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Setting uplinkMuted for conversation: %@ since pendingConversation:%@ has uplinkMuted", buf, 0x16u);
    }

    conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    uUID6 = [conversationCopy UUID];
    [conversationManager3 setUplinkMuted:1 forConversationWithUUID:uUID6];
  }

  uUID7 = [conversationCopy UUID];
  [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueOrStartAudioForConversationUUID:uUID7];

  uUID = v57;
LABEL_37:
}

- (void)handleRespondedElsewhereMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle withAliases:(id)aliases
{
  messageCopy = message;
  conversationCopy = conversation;
  handleCopy = handle;
  aliasesCopy = aliases;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  value = [handleCopy value];
  v16 = [value length];
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
    initiator = [conversationCopy initiator];
    remoteMembers = [conversationCopy remoteMembers];
    v34 = 138413058;
    v35 = initiator;
    v36 = 2112;
    v37 = handleCopy;
    v38 = 2048;
    v39 = [remoteMembers count];
    v40 = 2112;
    v41 = aliasesCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "handleRespondedElsewhereMessage: initiator: %@, handle: %@, remotemember count: %lu, allAliases: %@", &v34, 0x2Au);
  }

  remoteMembers2 = [conversationCopy remoteMembers];
  if ([remoteMembers2 count] != 1)
  {
    v23 = [aliasesCopy containsObject:value];

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

    initiator2 = [conversationCopy initiator];
    normalizedValue = [initiator2 normalizedValue];
    normalizedValue2 = [handleCopy normalizedValue];
    v34 = 138412802;
    v35 = normalizedValue;
    v36 = 2112;
    v37 = normalizedValue2;
    v38 = 2112;
    v39 = aliasesCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring responded elsewhere message since this did not come from the originator (%@), handle: %@, or one of our aliases: %@.", &v34, 0x20u);

    goto LABEL_20;
  }

  initiator3 = [conversationCopy initiator];
  if (![initiator3 isEquivalentToHandle:handleCopy])
  {
    v25 = [aliasesCopy containsObject:value];

    if (v25)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_10:
  if ([conversationCopy state] != 2 && objc_msgSend(conversationCopy, "state") != 3)
  {
    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    uUID = [conversationCopy UUID];
    v17 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

    if (!v17)
    {
      goto LABEL_22;
    }

    uUID2 = [conversationCopy UUID];
    [(CSDFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:uUID2];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:v17];
    uUID3 = [conversationCopy UUID];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:uUID3];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self updateNetworkCriticalStateIfNecessary];
    disconnectedReason = [messageCopy disconnectedReason];
    provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [provider reportCallWithUUID:v17 endedAtDate:0 privateReason:disconnectedReason];

    if ([conversationCopy state] != 1)
    {
      goto LABEL_22;
    }

    initiator2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    normalizedValue = [conversationCopy UUID];
    [initiator2 leaveConversationWithUUID:normalizedValue];
LABEL_20:

    goto LABEL_21;
  }

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    initiator2 = [conversationCopy UUID];
    v34 = 138412290;
    v35 = initiator2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring message that we've responded elsewhere for conversation %@ since the conversation is already joining or is joined.", &v34, 0xCu);
LABEL_21:
  }

LABEL_22:
}

- (void)handleRespondedElsewhereMessage:(id)message forConversation:(id)conversation fromHandle:(id)handle
{
  handleCopy = handle;
  conversationCopy = conversation;
  messageCopy = message;
  v12 = +[CSDFaceTimeMultiwayIDSService sharedInstance];
  allAliases = [v12 allAliases];
  [(CSDFaceTimeConversationProviderDelegate *)self handleRespondedElsewhereMessage:messageCopy forConversation:conversationCopy fromHandle:handleCopy withAliases:allAliases];
}

- (void)startOutgoingOneToOneTimeoutIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v7 = [conversationUUIDsByCallUUID objectForKeyedSubscript:necessaryCopy];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v10 = [conversationsByUUID objectForKeyedSubscript:v7];

  if (![(CSDFaceTimeConversationProviderDelegate *)self isWaitingForRemoteJoinForConversationUUID:v7])
  {
    if ([(CSDFaceTimeConversationProviderDelegate *)self isUnansweredOutgoingOneToOneConversation:v10])
    {
      invitationResolver = [(CSDAbstractFaceTimeConversationProviderDelegate *)self invitationResolver];
      localMember = [v10 localMember];
      handle = [localMember handle];
      v14 = [invitationResolver shouldStartRingingTimeoutForConversation:v10 handle:handle];

      if (v14)
      {
        [(CSDFaceTimeConversationProviderDelegate *)self setWaitingForRemoteJoin:1 forConversationUUID:v7];
        v15 = dispatch_time(0, 30000000000);
        queue2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1001F9104;
        v17[3] = &unk_10061A450;
        v17[4] = self;
        v18 = v7;
        v19 = necessaryCopy;
        v20 = v10;
        dispatch_after(v15, queue2, v17);
      }
    }
  }
}

- (BOOL)isUnansweredOutgoingOneToOneConversation:(id)conversation
{
  conversationCopy = conversation;
  if (![conversationCopy isLocallyCreated] || !objc_msgSend(conversationCopy, "isOneToOneModeEnabled"))
  {
    goto LABEL_17;
  }

  if ([conversationCopy state] != 2 && objc_msgSend(conversationCopy, "state") != 1)
  {
    if ([conversationCopy state] == 3)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
      v6 = [activeRemoteParticipants countByEnumeratingWithState:&v11 objects:v15 count:16];
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
              objc_enumerationMutation(activeRemoteParticipants);
            }

            if ([*(*(&v11 + 1) + 8 * i) audioVideoMode])
            {
              v5 = 0;
              goto LABEL_6;
            }
          }

          v7 = [activeRemoteParticipants countByEnumeratingWithState:&v11 objects:v15 count:16];
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

  activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
  v5 = [activeRemoteParticipants count] == 0;
LABEL_6:

LABEL_18:
  return v5;
}

- (void)declineRemoteDevicesForConversation:(id)conversation reason:(int64_t)reason
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  idsService = [(CSDFaceTimeConversationProviderDelegate *)self idsService];
  devices = [idsService devices];
  v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [devices count]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = devices;
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

  allAliases = [idsService allAliases];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = [allAliases countByEnumeratingWithState:&v25 objects:v33 count:16];
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
          objc_enumerationMutation(allAliases);
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
      v19 = [allAliases countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  [(CSDFaceTimeConversationProviderDelegate *)self declineConversation:conversationCopy reason:reason destinations:v9 idsService:idsService];
}

- (void)declineRemoteMembersForConversation:(id)conversation reason:(int64_t)reason
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteMembers = [conversationCopy remoteMembers];
  v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = remoteMembers;
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

        idsDestination = [*(*(&v17 + 1) + 8 * v14) idsDestination];
        if ([idsDestination length])
        {
          [v9 addObject:idsDestination];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  idsService = [(CSDFaceTimeConversationProviderDelegate *)self idsService];
  [(CSDFaceTimeConversationProviderDelegate *)self declineConversation:conversationCopy reason:reason destinations:v9 idsService:idsService];
}

- (void)declineConversation:(id)conversation reason:(int64_t)reason destinations:(id)destinations idsService:(id)service
{
  destinationsCopy = destinations;
  serviceCopy = service;
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v14 = [CSDMessagingConversationMessage alloc];
  groupUUID = [conversationCopy groupUUID];
  v16 = [(CSDMessagingConversationMessage *)v14 initWithType:6 groupUUID:groupUUID link:0];

  [(CSDMessagingConversationMessage *)v16 setDisconnectedReason:reason];
  localMember = [conversationCopy localMember];

  handle = [localMember handle];
  value = [handle value];

  v20 = [serviceCopy accountWithCallerID:value];
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
    reasonCopy = reason;
    v34 = 2048;
    v35 = [destinationsCopy count];
    v36 = 2112;
    v37 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "declineConversation: reason: %ld, destinations count: %lu, destinations: %@", buf, 0x20u);
  }

  data = [(CSDMessagingConversationMessage *)v16 data];
  v30 = 0;
  v31 = 0;
  v25 = [serviceCopy sendData:data fromAccount:v20 toDestinations:destinationsCopy priority:300 options:v22 identifier:&v31 error:&v30];
  v26 = v31;
  v27 = v30;

  v28 = sub_100004778();
  v29 = v28;
  if (v25)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      reasonCopy = v26;
      v34 = 2112;
      v35 = value;
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

- (void)conversationManager:(id)manager joinConversationWithRequest:(id)request
{
  requestCopy = request;
  provider = [requestCopy provider];
  v6 = [(CSDFaceTimeConversationProviderDelegate *)self shouldHandleProvider:provider];

  if (v6)
  {
    joinCallAction = [requestCopy joinCallAction];
    [(CSDFaceTimeConversationProviderDelegate *)self performJoinCallAction:joinCallAction];
  }
}

- (void)conversationManager:(id)manager avModeChanged:(unint64_t)changed toAVMode:(unint64_t)mode forConversation:(id)conversation
{
  conversationCopy = conversation;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    *buf = 134218498;
    changedCopy = changed;
    v56 = 2048;
    modeCopy = mode;
    v58 = 2112;
    v59 = uUID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Mode changing fromMode %lu, toMode: %lu, conversationUUID: %@", buf, 0x20u);
  }

  if (!changed && mode)
  {
    v12 = +[NSUUID UUID];
    uUID2 = [conversationCopy UUID];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self associateCallUUID:v12 withConversationUUID:uUID2 waitingToJoin:1];

    conversationUUIDsAwaitingActiveAudioSession = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    uUID3 = [conversationCopy UUID];
    [conversationUUIDsAwaitingActiveAudioSession addObject:uUID3];

    if ([conversationCopy state] == 3)
    {
      remoteMembers = [conversationCopy remoteMembers];
      if ([remoteMembers count] != 1)
      {
LABEL_18:

        goto LABEL_19;
      }

      activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
      if (![activeRemoteParticipants count])
      {

LABEL_17:
        remoteMembers = [(CSDFaceTimeConversationProviderDelegate *)self conversationUUIDsUpgradedFromAVLess];
        uUID4 = [conversationCopy UUID];
        [remoteMembers addObject:uUID4];

        goto LABEL_18;
      }

      activeRemoteParticipants2 = [conversationCopy activeRemoteParticipants];
      anyObject = [activeRemoteParticipants2 anyObject];
      audioVideoMode = [anyObject audioVideoMode];

      if (!audioVideoMode)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v31 = sub_100004778();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      uUID5 = [conversationCopy UUID];
      *buf = 138412546;
      changedCopy = v12;
      v56 = 2112;
      modeCopy = uUID5;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Mode changing from None, Started tracking callUUID: %@ conversationUUID: %@", buf, 0x16u);
    }

    conversationUUIDsAwaitingActiveAudioSession2 = [[CXCallUpdate alloc] initWithTUConversation:conversationCopy];
    remoteParticipantHandles = [conversationUUIDsAwaitingActiveAudioSession2 remoteParticipantHandles];
    anyObject2 = [remoteParticipantHandles anyObject];
    [conversationUUIDsAwaitingActiveAudioSession2 setRemoteMember:anyObject2];

    if (([conversationUUIDsAwaitingActiveAudioSession2 hasVideo] & 1) == 0)
    {
      [conversationUUIDsAwaitingActiveAudioSession2 updatePropertiesForVideo:mode == 2];
    }

    handoffContext = [conversationCopy handoffContext];
    setUplinkMuted = [handoffContext setUplinkMuted];

    if (setUplinkMuted)
    {
      v37 = sub_100004778();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Muting remote uplink during continuity session pullback due to handoff context.", buf, 2u);
      }

      [conversationUUIDsAwaitingActiveAudioSession2 setRemoteUplinkMuted:1];
    }

    remoteMembers2 = [conversationCopy remoteMembers];
    v39 = [remoteMembers2 count];

    if (v39 == 1)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      activeRemoteParticipants3 = [conversationCopy activeRemoteParticipants];
      v41 = [activeRemoteParticipants3 countByEnumeratingWithState:&v49 objects:v53 count:16];
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
              objc_enumerationMutation(activeRemoteParticipants3);
            }

            if ([*(*(&v49 + 1) + 8 * v44) audioVideoMode])
            {

              goto LABEL_38;
            }

            v44 = v44 + 1;
          }

          while (v42 != v44);
          v42 = [activeRemoteParticipants3 countByEnumeratingWithState:&v49 objects:v53 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }
      }

      provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      [provider reportNewOutgoingCallWithUUID:v12 update:conversationUUIDsAwaitingActiveAudioSession2];

      provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      [provider2 reportOutgoingCallWithUUID:v12 sentInvitationAtDate:0];

      [(CSDFaceTimeConversationProviderDelegate *)self startOutgoingOneToOneTimeoutIfNecessary:v12];
      goto LABEL_40;
    }

LABEL_38:
    provider3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [provider3 reportNewOutgoingCallWithUUID:v12 update:conversationUUIDsAwaitingActiveAudioSession2];

    provider4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v48 = +[NSDate date];
    [provider4 reportOutgoingCallWithUUID:v12 connectedAtDate:v48];

LABEL_39:
LABEL_40:

    goto LABEL_41;
  }

  if (changed && !mode)
  {
    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    uUID6 = [conversationCopy UUID];
    v12 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID6];

    if (!v12)
    {
LABEL_41:

      goto LABEL_42;
    }

    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      uUID7 = [conversationCopy UUID];
      *buf = 138412546;
      changedCopy = v12;
      v56 = 2112;
      modeCopy = uUID7;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Mode changing to None, Stopping tracking callUUID: %@ conversationUUID: %@", buf, 0x16u);
    }

    provider5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v26 = +[NSDate date];
    [provider5 reportCallWithUUID:v12 endedAtDate:v26 reason:0];

    uUID8 = [conversationCopy UUID];
    [(CSDFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:uUID8];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:v12];
    conversationUUIDsAwaitingActiveAudioSession2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    provider4 = [conversationCopy UUID];
    [conversationUUIDsAwaitingActiveAudioSession2 removeObject:provider4];
    goto LABEL_39;
  }

LABEL_42:
}

- (void)conversationManager:(id)manager remoteMembersChanged:(id)changed forConversation:(id)conversation
{
  managerCopy = manager;
  changedCopy = changed;
  conversationCopy = conversation;
  if ([conversationCopy state] == 3)
  {
    blockUtilities = [(CSDFaceTimeConversationProviderDelegate *)self blockUtilities];
    v11 = [blockUtilities blockListContainsMembers:changedCopy providerIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

    if (v11)
    {
      callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
      uUID = [conversationCopy UUID];
      v14 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

      if (v14)
      {
        uUID2 = [conversationCopy UUID];
        [managerCopy leaveConversationWithUUID:uUID2];

        blockUtilities2 = [(CSDFaceTimeConversationProviderDelegate *)self blockUtilities];
        provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
        [blockUtilities2 reportFailureForReason:16 provider:provider callUUID:v14 actionToFail:0];
      }
    }
  }
}

- (void)conversationManager:(id)manager conversationChanged:(id)changed
{
  managerCopy = manager;
  changedCopy = changed;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [changedCopy UUID];
  v10 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  remoteMembers = [changedCopy remoteMembers];
  if ([remoteMembers count] != 1 && objc_msgSend(changedCopy, "avMode") == 1)
  {
    resolvedAudioVideoMode = [changedCopy resolvedAudioVideoMode];

    if (resolvedAudioVideoMode != 2)
    {
      goto LABEL_8;
    }

    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found that a remote user had upgraded to video, upgrading our local conversation to video", buf, 2u);
    }

    remoteMembers = [changedCopy UUID];
    [managerCopy setVideo:1 forConversationWithUUID:remoteMembers];
  }

LABEL_8:
  v14 = [[CXCallUpdate alloc] initWithTUConversation:changedCopy];
  featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  v88 = v10;
  if (![featureFlags avLessSharePlayEnabled])
  {
LABEL_18:

    goto LABEL_19;
  }

  mergedRemoteMembers = [changedCopy mergedRemoteMembers];
  if ([mergedRemoteMembers count] != 1)
  {
LABEL_17:

    goto LABEL_18;
  }

  mergedActiveRemoteParticipants = [changedCopy mergedActiveRemoteParticipants];
  if ([mergedActiveRemoteParticipants count] != 1)
  {

    goto LABEL_17;
  }

  avMode = [changedCopy avMode];

  if (!avMode)
  {
    activeRemoteParticipants = [changedCopy activeRemoteParticipants];
    featureFlags = [activeRemoteParticipants anyObject];

    if ([featureFlags audioVideoMode] == 2)
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
  if ([changedCopy isVideoEnabled] && (objc_msgSend(changedCopy, "isVideoPaused") & 1) == 0)
  {
    [v14 setSendingVideo:1];
  }

  if ([changedCopy state] >= 1 && objc_msgSend(changedCopy, "avMode") && (objc_msgSend(changedCopy, "isVideoEnabled") & 1) == 0)
  {
    [v14 setSendingVideo:0];
  }

  remoteMembers2 = [changedCopy remoteMembers];
  v22 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers2 count]);

  remoteMembers3 = [changedCopy remoteMembers];
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_1001FB274;
  v99[3] = &unk_10061A200;
  v24 = v22;
  v100 = v24;
  [remoteMembers3 enumerateObjectsUsingBlock:v99];

  [v14 setRemoteParticipantHandles:v24];
  activeRemoteParticipantCXHandles = [changedCopy activeRemoteParticipantCXHandles];
  v26 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [activeRemoteParticipantCXHandles count]);

  activeRemoteParticipantCXHandles2 = [changedCopy activeRemoteParticipantCXHandles];
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_1001FB328;
  v97[3] = &unk_10061E620;
  v28 = v26;
  v98 = v28;
  [activeRemoteParticipantCXHandles2 enumerateObjectsUsingBlock:v97];

  [v14 setActiveRemoteParticipantHandles:v28];
  [v14 setOneToOneModeEnabled:{objc_msgSend(changedCopy, "isOneToOneModeEnabled")}];
  [v14 setScreenSharingType:{objc_msgSend(changedCopy, "screenSharingType")}];
  mergedRemoteMembers2 = [changedCopy mergedRemoteMembers];
  if ([mergedRemoteMembers2 count] == 1)
  {
    mergedActiveRemoteParticipants2 = [changedCopy mergedActiveRemoteParticipants];
    if ([mergedActiveRemoteParticipants2 count] == 1)
    {
      mergedActiveRemoteParticipants3 = [changedCopy mergedActiveRemoteParticipants];
      anyObject = [mergedActiveRemoteParticipants3 anyObject];
      streamToken = [anyObject streamToken];

      v34 = v88;
      if (!streamToken)
      {
        goto LABEL_32;
      }

      mergedRemoteMembers2 = [changedCopy mergedActiveRemoteParticipants];
      mergedActiveRemoteParticipants2 = [mergedRemoteMembers2 anyObject];
      [v14 setVideoStreamToken:{objc_msgSend(mergedActiveRemoteParticipants2, "streamToken")}];
    }
  }

  v34 = v88;

LABEL_32:
  state = [changedCopy state];
  if (state <= 1)
  {
    if (state)
    {
      if (state == 1)
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

    uUID2 = [changedCopy UUID];
    v52 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self _isWaitingToJoinForConversationUUID:uUID2];

    if ((v52 & 1) == 0)
    {
      if ([changedCopy isScreening] && objc_msgSend(changedCopy, "isOneToOneModeEnabled"))
      {
        failureContext = sub_100004778();
        if (os_log_type_enabled(failureContext, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, failureContext, OS_LOG_TYPE_DEFAULT, "Screening enabled, already ends the session, no need to cleanup conversation", buf, 2u);
        }
      }

      else
      {
        failureContext = [changedCopy failureContext];
        if (!failureContext)
        {
          failureContext = objc_alloc_init(CXCallFailureContext);
          [failureContext setFailureReason:0];
          [failureContext setProviderEndedReason:504];
        }

        uUID3 = [changedCopy UUID];
        [(CSDFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:uUID3 failureContext:failureContext];
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

    remoteParticipantHandles = [v14 remoteParticipantHandles];
    v66 = [remoteParticipantHandles count];

    if (v66 < 2 || [changedCopy resolvedAudioVideoMode] == 2)
    {
      goto LABEL_61;
    }

    [v14 setSendingVideo:0];
    v47 = sub_100004778();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      isSendingVideo = [v14 isSendingVideo];
      v68 = @"NO";
      if (isSendingVideo)
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

  if (state == 2)
  {
    if (!v34)
    {
      conversationManager = sub_100004778();
      if (os_log_type_enabled(conversationManager, OS_LOG_TYPE_ERROR))
      {
        sub_10047B0BC();
      }

      goto LABEL_68;
    }

    if ([changedCopy isLocallyCreated])
    {
      if (([changedCopy isOneToOneModeEnabled] & 1) == 0)
      {
        [v14 setRequiresInCallSounds:0];
        provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
        v42 = +[NSDate date];
        [provider reportOutgoingCallWithUUID:v34 startedConnectingAtDate:v42];
      }

      provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      v44 = +[NSDate date];
      [provider2 reportOutgoingCallWithUUID:v34 sentInvitationAtDate:v44];
    }

    v45 = +[TUCallCenter sharedInstance];
    uUIDString = [(__CFString *)v34 UUIDString];
    v47 = [v45 callWithCallUUID:uUIDString];

    -[NSObject setStartAsOneToOneMode:](v47, "setStartAsOneToOneMode:", [changedCopy isOneToOneModeEnabled]);
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self fullfillPendingJoinActionsForCallUUIDIfNecessary:v34];
    goto LABEL_58;
  }

  if (state == 4)
  {
    [v14 setMixesVoiceWithMedia:0];
LABEL_60:
    if (!v34)
    {
      goto LABEL_69;
    }

    goto LABEL_61;
  }

  if (state != 3)
  {
    goto LABEL_60;
  }

  if (!v34)
  {
    if (![changedCopy isEligibleForCall])
    {
      goto LABEL_69;
    }

    v69 = sub_100004778();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_10047B12C();
    }

    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    uUID4 = [changedCopy UUID];
    [conversationManager leaveConversationWithUUID:uUID4];

    goto LABEL_68;
  }

  if ([changedCopy avMode])
  {
    if ([changedCopy isOneToOneModeEnabled])
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      activeRemoteParticipants2 = [changedCopy activeRemoteParticipants];
      v37 = [activeRemoteParticipants2 countByEnumeratingWithState:&v93 objects:v104 count:16];
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
              objc_enumerationMutation(activeRemoteParticipants2);
            }

            if ([*(*(&v93 + 1) + 8 * i) audioVideoMode])
            {

              activeRemoteParticipants2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
              v73 = +[NSDate date];
              v34 = v88;
              [activeRemoteParticipants2 providerDelegate:self callWithUUID:v88 connectedAtDate:v73];

              goto LABEL_105;
            }
          }

          v38 = [activeRemoteParticipants2 countByEnumeratingWithState:&v93 objects:v104 count:16];
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
      uUIDString2 = [(__CFString *)v34 UUIDString];
      provider3 = [v74 callWithCallUUID:uUIDString2];

      if (provider3)
      {
        [provider3 setOneToOneFaceTimeMyself:{objc_msgSend(changedCopy, "isOneToOneFaceTimeMyself")}];
      }
    }

    else
    {
      provider3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      v72 = +[NSDate date];
      [provider3 reportOutgoingCallWithUUID:v34 connectedAtDate:v72];
    }
  }

  if ([changedCopy isOneToOneModeEnabled])
  {
    [v14 setConversation:1];
  }

  provider4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
  v77 = [provider4 pendingCallActionsOfClass:objc_opt_class() withCallUUID:v34];

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

  [v14 setSharingScreen:{objc_msgSend(changedCopy, "isScreenEnabled")}];
  if ([v14 mixesVoiceWithMedia])
  {
    v83 = +[TUCallCenter sharedInstance];
    uUIDString3 = [(__CFString *)v88 UUIDString];
    v85 = [v83 callWithCallUUID:uUIDString3];

    sourceIdentifier = [v85 sourceIdentifier];
    [v14 setIgnoresBluetoothDeviceUID:sourceIdentifier != 0];
  }

  v34 = v88;
  if ([changedCopy avMode])
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

    featureFlags2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([featureFlags2 uplevelFTAEnabled] && (objc_msgSend(v14, "hasSet") & 0x2000) != 0 && (objc_msgSend(v14, "hasVideo") & 1) == 0)
    {
      remoteParticipantHandles2 = [v14 remoteParticipantHandles];
      v55 = [remoteParticipantHandles2 count];

      if (v55 != 1)
      {
        goto LABEL_67;
      }

      v56 = +[TUCallCenter sharedInstance];
      uUIDString4 = [(__CFString *)v34 UUIDString];
      featureFlags2 = [v56 callWithCallUUID:uUIDString4];

      if ([featureFlags2 isVideo])
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
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [conversationManager reportCallWithUUID:v34 updated:v14];
LABEL_68:
  }

LABEL_69:
}

- (void)conversationManager:(id)manager conversationScreenSharingChanged:(id)changed forParticipant:(id)participant
{
  changedCopy = changed;
  participantCopy = participant;
  featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  screenSharingDeskViewEnabled = [featureFlags screenSharingDeskViewEnabled];

  if ((screenSharingDeskViewEnabled & 1) == 0 && [participantCopy isScreenEnabled])
  {
    [(CSDFaceTimeConversationProviderDelegate *)self launchScreenSharingAppIfNecessary];
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = changedCopy;
      v14 = 2112;
      v15 = participantCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Conversation screen sharing changed: %@ \n participant: %@", &v12, 0x16u);
    }
  }
}

- (BOOL)isManagingCallWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v7 = [conversationUUIDsByCallUUID objectForKeyedSubscript:dCopy];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v10 = [conversationsByUUID objectForKeyedSubscript:v7];

  if (v10)
  {
    provider = [v10 provider];
    isDefaultProvider = [provider isDefaultProvider];
  }

  else
  {
    isDefaultProvider = 1;
  }

  v15.receiver = self;
  v15.super_class = CSDFaceTimeConversationProviderDelegate;
  v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v15 isManagingCallWithUUID:dCopy];

  return v13 & isDefaultProvider;
}

- (void)conversationManager:(id)manager conversation:(id)conversation failedWithContext:(id)context
{
  conversationCopy = conversation;
  contextCopy = context;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    v13 = 138412546;
    v14 = uUID;
    v15 = 2112;
    v16 = contextCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Conversation with UUID %@ failed with context: %@", &v13, 0x16u);
  }

  uUID2 = [conversationCopy UUID];
  [(CSDFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:uUID2 failureContext:contextCopy];
}

- (void)conversationManager:(id)manager conversation:(id)conversation addedActiveParticipant:(id)participant
{
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  uUID = [conversationCopy UUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:uUID];

  if (!v13)
  {
    v15 = sub_100004778();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:

      goto LABEL_17;
    }

    uUID2 = [conversationCopy UUID];
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    conversationsByUUID2 = [conversationManager2 conversationsByUUID];
    allValues = [conversationsByUUID2 allValues];
    v32 = 138412546;
    v33 = uUID2;
    v34 = 2112;
    v35 = allValues;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Exiting addedActiveParticipant callback early since conversation with UUID %@ has been removed - current conversations are %@", &v32, 0x16u);

LABEL_15:
    goto LABEL_16;
  }

  if ([v13 state] == 1)
  {
    letMeInRequestState = [v13 letMeInRequestState];
    if ([v13 isOneToOneModeEnabled])
    {
      if (letMeInRequestState == 3)
      {
        v15 = sub_100004778();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          state = [v13 state];
          letMeInRequestState2 = [v13 letMeInRequestState];
          uUID3 = [v13 UUID];
          v32 = 134218754;
          v33 = state;
          v34 = 2048;
          v35 = letMeInRequestState2;
          v36 = 2112;
          v37 = uUID3;
          v38 = 2112;
          v39 = participantCopy;
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
      state2 = [v13 state];
      letMeInRequestState3 = [v13 letMeInRequestState];
      uUID4 = [v13 UUID];
      v32 = 134218754;
      v33 = state2;
      v34 = 2048;
      v35 = letMeInRequestState3;
      v36 = 2112;
      v37 = uUID4;
      v38 = 2112;
      v39 = participantCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Reporting call as connecting and isConversation=true since conversation (state: %ld LMI state: %ld) with UUID %@: addedActiveParticipant %@.", &v32, 0x2Au);
    }

    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    uUID5 = [v13 UUID];
    v15 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID5];

    uUID2 = [[CXCallUpdate alloc] initWithTUConversation:v13];
    if (v15)
    {
      provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      [provider reportCallWithUUID:v15 updated:uUID2];

      if ([v13 isLocallyCreated])
      {
        faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
        v31 = +[NSDate date];
        [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:v15 startedConnectingAtDate:v31];
      }
    }

    goto LABEL_15;
  }

LABEL_17:
}

- (void)conversationManager:(id)manager removedConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v8 = [callUUIDsByConversationUUID objectForKeyedSubscript:dCopy];

  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ending callUUID:%@ with conversation with UUID %@:", &v12, 0x16u);
    }

    [(CSDFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:dCopy];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:v8];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:dCopy];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self removeActiveAudioSessionObjectForConversationWithUUID:dCopy];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self updateNetworkCriticalStateIfNecessary];
    provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v11 = +[NSDate date];
    [provider reportCallWithUUID:v8 endedAtDate:v11 reason:2];
  }
}

- (void)conversationManager:(id)manager conversation:(id)conversation changedBytesOfDataUsed:(int64_t)used
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [conversationCopy UUID];
  v11 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  if (v11)
  {
    goto LABEL_5;
  }

  recentlyDeletedCallUUIDsByConversationUUID = [(CSDFaceTimeConversationProviderDelegate *)self recentlyDeletedCallUUIDsByConversationUUID];
  uUID2 = [conversationCopy UUID];
  v11 = [recentlyDeletedCallUUIDsByConversationUUID objectForKeyedSubscript:uUID2];

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
    recentlyDeletedCallUUIDsByConversationUUID2 = [(CSDFaceTimeConversationProviderDelegate *)self recentlyDeletedCallUUIDsByConversationUUID];
    uUID3 = [conversationCopy UUID];
    [recentlyDeletedCallUUIDsByConversationUUID2 setObject:0 forKeyedSubscript:uUID3];

    provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    uUIDString = [v11 UUIDString];
    [provider reportCallWithUUID:v11 crossDeviceIdentifier:uUIDString changedBytesOfDataUsed:used];
  }
}

- (void)conversationManager:(id)manager reportedLetMeInRejectedForPendingConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDFaceTimeConversationProviderDelegate *)self _failConversation:conversationCopy failureReason:8 providerEndedReason:521];
}

- (void)conversationManager:(id)manager reportedInvalidLinkForPendingConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDFaceTimeConversationProviderDelegate *)self _failConversation:conversationCopy failureReason:9 providerEndedReason:526];
}

- (void)_failConversation:(id)conversation failureReason:(int64_t)reason providerEndedReason:(int64_t)endedReason
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [conversationCopy UUID];
  v12 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  if (v12)
  {
    [(CSDFaceTimeConversationProviderDelegate *)self leaveConversation:conversationCopy withCallUUID:v12 reason:1];
    v13 = objc_alloc_init(CXCallFailureContext);
    [v13 setFailureReason:reason];
    [v13 setProviderEndedReason:endedReason];
    provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [provider reportCallWithUUID:v12 failedAtDate:0 withContext:v13];

    faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v16 = +[NSDate now];
    [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:v12 endedAtDate:v16 withReason:2 failureContext:0];
  }

  else
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [conversationCopy UUID];
      v19 = 134218242;
      reasonCopy = reason;
      v21 = 2112;
      v22 = uUID2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not fail conversation with reason %ld callUUID not found for conversation UUID %@", &v19, 0x16u);
    }
  }
}

- (void)conversationManager:(id)manager reportedHandedOffConversation:(id)conversation replacedByIdentifier:(unint64_t)identifier localizedHandoffRecipientDeviceCategory:(id)category
{
  conversationCopy = conversation;
  categoryCopy = category;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [conversationCopy UUID];
  v14 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  if (v14)
  {
    v15 = +[TUCallCenter sharedInstance];
    uUIDString = [v14 UUIDString];
    v17 = [v15 callWithCallUUID:uUIDString];

    [v17 setEndDueToHandoff:1];
    v18 = [[CXCallUpdate alloc] initWithTUConversation:conversationCopy];
    [v18 setLocalizedHandoffRecipientDeviceCategory:categoryCopy];
    v19 = [NSNumber numberWithUnsignedLongLong:identifier];
    [v18 setHandoffRecipientParticipant:v19];

    [(CSDFaceTimeConversationProviderDelegate *)self leaveConversation:conversationCopy withCallUUID:v14 reason:102];
    provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [provider reportCallWithUUID:v14 updated:v18];

    provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v22 = +[NSDate now];
    [provider2 reportCallWithUUID:v14 endedAtDate:v22 privateReason:102];

    faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v24 = +[NSDate now];
    [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:v14 endedAtDate:v24 withReason:102 failureContext:0];
  }

  else
  {
    v25 = sub_100004778();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [conversationCopy UUID];
      v27 = 138412290;
      v28 = uUID2;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[WARN] Could not report conversation as continued as could not find call for conversation UUID %@", &v27, 0xCu);
    }
  }
}

- (void)conversationManager:(id)manager reportedRemoteDoesHandedOffForConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [conversationCopy UUID];
  v9 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  if (v9)
  {
    v10 = +[TUCallCenter sharedInstance];
    uUIDString = [v9 UUIDString];
    v12 = [v10 callWithCallUUID:uUIDString];

    [v12 setRemoteDoesHandoff:1];
    uUID2 = sub_100004778();
    if (!os_log_type_enabled(uUID2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_8;
    }

    v16 = 138412290;
    v17 = v12;
    v14 = "reportedRemoteDoesHandedOffForConversation: for call: %@";
    v15 = uUID2;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
    goto LABEL_7;
  }

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uUID2 = [conversationCopy UUID];
    v16 = 138412290;
    v17 = uUID2;
    v14 = "[WARN] Could not report conversation: not find call for conversation UUID %@";
    v15 = v12;
    goto LABEL_6;
  }

LABEL_8:
}

- (void)conversationManager:(id)manager connectionDidStartForConversation:(id)conversation
{
  conversationCopy = conversation;
  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [conversationCopy UUID];

  v8 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

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

- (void)provider:(id)provider performAnswerCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 138412290;
    v37 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Joining conversation for answer call action: %@", &v36, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v10 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:v10];

  blockUtilities = [(CSDFaceTimeConversationProviderDelegate *)self blockUtilities];
  remoteMembers = [v13 remoteMembers];
  v16 = [blockUtilities blockListContainsMembers:remoteMembers providerIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

  if (v16)
  {
    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    uUID = [v13 UUID];
    v19 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

    if (!v19)
    {
LABEL_33:

      goto LABEL_34;
    }

    blockUtilities2 = [(CSDFaceTimeConversationProviderDelegate *)self blockUtilities];
    provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [(CSDConversationJoinContext *)blockUtilities2 reportFailureForReason:16 provider:provider callUUID:v19 actionToFail:actionCopy];

LABEL_32:
    goto LABEL_33;
  }

  link = [v13 link];
  if (!link || (v23 = link, v24 = TULockdownModeEnabled(), v23, !v24))
  {
    v26 = +[TUCallCenter sharedInstance];
    callUUID2 = [actionCopy callUUID];
    uUIDString = [callUUID2 UUIDString];
    v19 = [v26 callWithCallUUID:uUIDString];

    if (!v13)
    {
      v30 = sub_100004778();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10047B284();
      }

      [actionCopy fail];
      goto LABEL_33;
    }

    if ([v13 endpointOnCurrentDevice])
    {
      v29 = [actionCopy downgradeToAudio] ^ 1;
    }

    else
    {
      v29 = 0;
    }

    blockUtilities2 = objc_alloc_init(CSDConversationJoinContext);
    if (([v13 isVideo] & 1) != 0 || objc_msgSend(v19, "isVideo"))
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    [(CSDConversationJoinContext *)blockUtilities2 setVideo:v31];
    if (-[CSDConversationJoinContext isVideo](blockUtilities2, "isVideo") && [v19 isSendingVideo])
    {
      v32 = ([actionCopy pauseVideoToStart] ^ 1) & v29;
    }

    else
    {
      v32 = 0;
    }

    [(CSDConversationJoinContext *)blockUtilities2 setVideoEnabled:v32];
    if ([(CSDConversationJoinContext *)blockUtilities2 isVideo])
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    [(CSDConversationJoinContext *)blockUtilities2 setAvMode:v33];
    provider2 = [v13 provider];
    [(CSDConversationJoinContext *)blockUtilities2 setProvider:provider2];

    -[CSDConversationJoinContext setScreening:](blockUtilities2, "setScreening:", [actionCopy screening]);
    -[CSDConversationJoinContext setSpatialPersonaEnabled:](blockUtilities2, "setSpatialPersonaEnabled:", [v13 isSpatialPersonaEnabled]);
    -[CSDConversationJoinContext setIsNearbySharePlay:](blockUtilities2, "setIsNearbySharePlay:", [v13 isNearbySharePlay]);
    if (+[AVAudioClient hasActiveAudioSession])
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self setAudioSessionActive:1];
    }

    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager2 joinExistingConversationWithUUID:v10 context:blockUtilities2];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueOrStartAudioForConversationUUID:v10];
    [(CSDFaceTimeConversationProviderDelegate *)self declineRemoteDevicesForConversation:v13 reason:4];
    goto LABEL_32;
  }

  v25 = sub_100004778();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_10047B248();
  }

  [actionCopy fail];
LABEL_34:
}

- (id)linkForJoinCallAction:(id)action inLinks:(id)links
{
  actionCopy = action;
  linksCopy = links;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = actionCopy;
    v28 = 2112;
    v29 = linksCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding a matching link in join call action %@ %@", buf, 0x16u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = linksCopy;
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
        pseudonym = [actionCopy pseudonym];
        publicKey = [actionCopy publicKey];
        v16 = [v13 isEquivalentToPseudonym:pseudonym andPublicKey:publicKey];

        if (v16)
        {
          v19 = sub_100004778();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v27 = actionCopy;
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
    v27 = actionCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Couldn't find a matching link in join call action %@", buf, 0xCu);
  }

  v18 = 0;
LABEL_17:

  return v18;
}

- (id)activatedLinkForJoinCallAction:(id)action withError:(id *)error
{
  actionCopy = action;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding a matching activated link in join call action %@", &v13, 0xCu);
  }

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v9 = [conversationManager activatedConversationLinksWithError:error];

  if (*error)
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047B2F4(error);
    }

    v11 = 0;
  }

  else
  {
    v11 = [(CSDFaceTimeConversationProviderDelegate *)self linkForJoinCallAction:actionCopy inLinks:v9];
  }

  return v11;
}

- (id)deletedLinkForJoinCallAction:(id)action withError:(id *)error
{
  actionCopy = action;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding a matching deleted link in join call action %@", &v15, 0xCu);
  }

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v9 = [conversationManager deletedConversationLinksWithError:error];

  v10 = *error;
  v11 = sub_100004778();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10047B36C(error);
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

    v13 = [(CSDFaceTimeConversationProviderDelegate *)self linkForJoinCallAction:actionCopy inLinks:v9];
  }

  return v13;
}

- (id)linkForJoinCallAction:(id)action withError:(id *)error
{
  actionCopy = action;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding activated link in join call action %@", &v14, 0xCu);
  }

  v8 = [(CSDFaceTimeConversationProviderDelegate *)self activatedLinkForJoinCallAction:actionCopy withError:error];
  if (*error)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047B3E4(error);
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
      v15 = actionCopy;
      v16 = 2112;
      v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not find activated link for join call action %@, link: %@", &v14, 0x16u);
    }

    goto LABEL_7;
  }

  if (v12)
  {
    v14 = 138412546;
    v15 = actionCopy;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found activated link for join call action %@, link: %@", &v14, 0x16u);
  }

  v10 = v8;
LABEL_12:

  return v10;
}

- (id)validateLinkForJoinCallActionIfNecessary:(id)necessary withError:(id *)error
{
  necessaryCopy = necessary;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = necessaryCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Validating link for join call action %@", buf, 0xCu);
  }

  pseudonym = [necessaryCopy pseudonym];
  if (![pseudonym length])
  {

    goto LABEL_12;
  }

  publicKey = [necessaryCopy publicKey];
  v10 = [publicKey length];

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

    if (error)
    {
      v12 = 3;
LABEL_10:
      [NSError errorWithDomain:@"com.apple.calls.callservicesd.links" code:v12 userInfo:0];
      *error = v13 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v15 = [(CSDFaceTimeConversationProviderDelegate *)self linkForJoinCallAction:necessaryCopy withError:error];
  v13 = v15;
  if (*error)
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
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    pseudonym2 = [necessaryCopy pseudonym];
    v20 = [conversationManager isHandleStringLocalPseudonym:pseudonym2];

    if (v20)
    {
      v21 = sub_100004778();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        pseudonym3 = [necessaryCopy pseudonym];
        *buf = 138412290;
        v37 = pseudonym3;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "LMI: This pseudonym is mine, but couldn't find the link - triggering link recovery and failing the action {pseudonym: %@}", buf, 0xCu);
      }

      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      pseudonym4 = [necessaryCopy pseudonym];
      v40 = pseudonym4;
      v25 = [NSArray arrayWithObjects:&v40 count:1];
      [conversationManager2 recoverLinksForPseudonyms:v25];

      v12 = 1;
      goto LABEL_10;
    }

    v35 = 0;
    v26 = [(CSDFaceTimeConversationProviderDelegate *)self deletedLinkForJoinCallAction:necessaryCopy withError:&v35];
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
    pseudonym5 = [necessaryCopy pseudonym];
    publicKey2 = [necessaryCopy publicKey];
    v13 = [v29 initWithPseudonym:pseudonym5 publicKey:publicKey2 groupUUID:0 originatorHandle:0];

    if (!v13)
    {
      v32 = sub_100004778();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        pseudonym6 = [necessaryCopy pseudonym];
        publicKey3 = [necessaryCopy publicKey];
        *buf = 138412546;
        v37 = pseudonym6;
        v38 = 2112;
        v39 = publicKey3;
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
    v37 = necessaryCopy;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Validated link for join call action %@ link: %@", buf, 0x16u);
  }

LABEL_21:

  return v13;
}

- (BOOL)_actionIsDisallowedByGreenTea:(id)tea
{
  teaCopy = tea;
  featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
  if (TUGreenTeaLagunaEnabled() && ![teaCopy avMode])
  {
    presentationMode = [teaCopy presentationMode];

    if (presentationMode == 2)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      remoteMembers = [teaCopy remoteMembers];
      v7 = [remoteMembers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(remoteMembers);
            }

            handle = [*(*(&v16 + 1) + 8 * i) handle];
            value = [handle value];
            destinationIdIsPseudonym = [value destinationIdIsPseudonym];

            v10 += destinationIdIsPseudonym ^ 1;
            if (v10 > 2)
            {
              LOBYTE(v7) = 1;
              goto LABEL_6;
            }
          }

          v7 = [remoteMembers countByEnumeratingWithState:&v16 objects:v20 count:16];
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

  if (![teaCopy isVideo])
  {
    LOBYTE(v7) = 1;
    goto LABEL_8;
  }

  remoteMembers = [teaCopy remoteMembers];
  LOBYTE(v7) = [remoteMembers count] > 1;
LABEL_6:

LABEL_8:
  return v7;
}

- (void)performJoinCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [actionCopy UUID];
    *buf = 138412290;
    v260 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "performJoinCallAction UUID: %@", buf, 0xCu);
  }

  deviceSupport = [(CSDAbstractFaceTimeConversationProviderDelegate *)self deviceSupport];
  if ([deviceSupport isGreenTea])
  {
    v9 = [(CSDFaceTimeConversationProviderDelegate *)self _actionIsDisallowedByGreenTea:actionCopy];

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

  if (([actionCopy isValidScreenSharingRequest] & 1) != 0 || (-[CSDAbstractFaceTimeConversationProviderDelegate featureFlags](self, "featureFlags"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "usesModernScreenSharingFromMessages"), v12, !v13))
  {
    v251 = 0;
    v14 = [(CSDFaceTimeConversationProviderDelegate *)self validateLinkForJoinCallActionIfNecessary:actionCopy withError:&v251];
    v15 = v251;
    if (v15)
    {
      v16 = sub_100004778();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10047B4CC();
      }

      v250 = 0;
      v17 = [(CSDFaceTimeConversationProviderDelegate *)self deletedLinkForJoinCallAction:actionCopy withError:&v250];
      v18 = v250;
      v19 = sub_100004778();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v260 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Retrieve deleted link: %@", buf, 0xCu);
      }

      [actionCopy fail];
      goto LABEL_138;
    }

    if (v14)
    {
      if ([actionCopy isScreening])
      {
        v20 = sub_100004778();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot join a call with screening that is link based", buf, 2u);
        }

        [actionCopy fail];
        goto LABEL_138;
      }

      conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      pseudonym = [v14 pseudonym];
      callUUID = [actionCopy callUUID];
      [conversationManager addPseudonym:pseudonym forCallUUID:callUUID];

      if (([actionCopy isJoiningConversationWithLink] & 1) == 0)
      {
        v30 = sub_100004778();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v260 = actionCopy;
          v261 = 2112;
          v262 = v14;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "letMeIn: %@, link: %@", buf, 0x16u);
        }

        conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        pseudonym2 = [v14 pseudonym];
        v33 = [conversationManager2 conversationLinkForPseudonym:pseudonym2];

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

        conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        pseudonym3 = [v14 pseudonym];
        v38 = [conversationManager3 pendingConversationUUIDWithPseudonym:pseudonym3];

        v196 = v38;
        if (v38)
        {
          if (TUDisableLinks())
          {
            conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
            conversationsByUUID = [conversationManager4 conversationsByUUID];
            v41 = [conversationsByUUID objectForKeyedSubscript:v38];

            v42 = sub_100004778();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v260 = v41;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Joining from links is disabled by server bag value, failing pending conversation %@", buf, 0xCu);
            }

            [(CSDFaceTimeConversationProviderDelegate *)self _failConversation:v41 failureReason:10 providerEndedReason:527];
            conversationManager5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
            [conversationManager5 removeAllPendingConversations];
LABEL_45:

            [actionCopy fail];
LABEL_130:

LABEL_131:
LABEL_137:
            v15 = 0;
LABEL_138:

            goto LABEL_139;
          }

          if ([actionCopy isLetMeIn])
          {
            v125 = sub_100004778();
            if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
            {
              pseudonym4 = [v14 pseudonym];
              *buf = 138412290;
              v260 = pseudonym4;
              _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "LMI: Asking CSDConversationManager to request let me in approval for pseudonym: %@", buf, 0xCu);
            }

            conversationManager6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
            pseudonym5 = [v14 pseudonym];
            [conversationManager6 requestLetMeInApprovalForPseudonym:pseudonym5];
          }

          v129 = sub_100004778();
          if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v260 = v38;
            _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "Use existing pendingConversationUUID: %@", buf, 0xCu);
          }

          callUUID2 = [actionCopy callUUID];
          callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
          [callUUIDsByConversationUUID setObject:callUUID2 forKeyedSubscript:v38];

          [actionCopy fulfill];
LABEL_129:
          conversationManager7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          v228[0] = _NSConcreteStackBlock;
          v228[1] = 3221225472;
          v228[2] = sub_1001FF384;
          v228[3] = &unk_10061E648;
          v14 = v14;
          v229 = v14;
          [conversationManager7 renewLinkIfNeeded:v14 completionHandler:v228];

          v41 = v229;
          goto LABEL_130;
        }

        if (![v14 canCreateConversations])
        {
          [(CSDFaceTimeConversationProviderDelegate *)self proceedToNewPendingConversationForLink:v14 action:actionCopy];
          goto LABEL_129;
        }

        conversationManager8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        [conversationManager8 removeAllPendingConversations];

        conversationManager9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        conversationsByGroupUUID = [conversationManager9 conversationsByGroupUUID];
        groupUUID = [v14 groupUUID];
        v41 = [conversationsByGroupUUID objectForKeyedSubscript:groupUUID];

        if (v41)
        {
          link = [v41 link];
          v106 = [link isEquivalentToConversationLink:v14];

          if (!v106)
          {
            conversationManager5 = sub_100004778();
            if (os_log_type_enabled(conversationManager5, OS_LOG_TYPE_ERROR))
            {
              sub_10047B540(v41, v14, conversationManager5);
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

            [(CSDAbstractFaceTimeConversationProviderDelegate *)self proceedToJoinForConversation:v41 action:actionCopy];
            [actionCopy fulfill];
            goto LABEL_130;
          }

          v195 = v33;
          selfCopy = self;
          v248 = 0u;
          v249 = 0u;
          v246 = 0u;
          v247 = 0u;
          v110 = v14;
          invitedMemberHandles = [v14 invitedMemberHandles];
          v112 = [invitedMemberHandles countByEnumeratingWithState:&v246 objects:v267 count:16];
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
                  objc_enumerationMutation(invitedMemberHandles);
                }

                v116 = *(*(&v246 + 1) + 8 * i);
                initiator = [v41 initiator];
                LOBYTE(v116) = [initiator isEquivalentToHandle:v116];

                if (v116)
                {

                  v14 = v110;
                  self = selfCopy;
                  v33 = v195;
                  goto LABEL_200;
                }
              }

              v113 = [invitedMemberHandles countByEnumeratingWithState:&v246 objects:v267 count:16];
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
            initiator2 = [v41 initiator];
            value = [initiator2 value];
            originatorHandle = [v110 originatorHandle];
            invitedMemberHandles2 = [v110 invitedMemberHandles];
            *buf = 138413058;
            v260 = v41;
            v261 = 2112;
            v262 = value;
            v263 = 2112;
            v264 = originatorHandle;
            v265 = 2112;
            v266 = invitedMemberHandles2;
            _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Can't use existing conversation %@ because its initiator %@ is not us, not the link creator %@, and not an invited handle to the link %@. Falling back to LMI request/response flow.", buf, 0x2Au);
          }

          v123 = selfCopy;
          v124 = v110;
LABEL_194:
          [(CSDFaceTimeConversationProviderDelegate *)v123 proceedToNewPendingConversationForLink:v124 action:actionCopy];
          v33 = v195;
          goto LABEL_130;
        }

        conversationManager10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        originatorHandle2 = [v14 originatorHandle];
        v138 = [conversationManager10 isValidLocalHandle:originatorHandle2];

        v139 = v14;
        selfCopy2 = self;
        v195 = v33;
        v140 = actionCopy;
        if (v138)
        {
          originatorHandle3 = [v139 originatorHandle];
          v142 = [originatorHandle3 copy];
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
        invitedMemberHandles3 = [v139 invitedMemberHandles];
        v144 = [invitedMemberHandles3 countByEnumeratingWithState:&v242 objects:v258 count:16];
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
                objc_enumerationMutation(invitedMemberHandles3);
              }

              v148 = *(*(&v242 + 1) + 8 * j);
              if (!v142)
              {
                conversationManager11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy2 conversationManager];
                v150 = [conversationManager11 isValidLocalHandle:v148];

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

            v145 = [invitedMemberHandles3 countByEnumeratingWithState:&v242 objects:v258 count:16];
          }

          while (v145);
        }

        if (([v200 isLocallyCreated] & 1) == 0)
        {
          v152 = [TUConversationMember alloc];
          originatorHandle4 = [v200 originatorHandle];
          v154 = [v152 initWithHandle:originatorHandle4 nickname:0];
          [v41 addObject:v154];
        }

        if (!v142)
        {
          v181 = sub_100004778();
          if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
          {
            originatorHandle5 = [v200 originatorHandle];
            invitedMemberHandles4 = [v200 invitedMemberHandles];
            *buf = 138412546;
            v260 = originatorHandle5;
            v261 = 2112;
            v262 = invitedMemberHandles4;
            _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "Even though we have the information needed to create a conversation with this link, none of our currently active handles are the link creator %@ or one of the invited handles %@. Falling back to LMI request/response flow.", buf, 0x16u);
          }

          v123 = selfCopy2;
          v124 = v200;
          actionCopy = v140;
          v14 = v200;
          goto LABEL_194;
        }

        v194 = v142;
        otherInvitedHandles = [v140 otherInvitedHandles];
        v211 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [otherInvitedHandles count]);

        v240 = 0u;
        v241 = 0u;
        v238 = 0u;
        v239 = 0u;
        v198 = v140;
        otherInvitedHandles2 = [v140 otherInvitedHandles];
        v157 = [otherInvitedHandles2 countByEnumeratingWithState:&v238 objects:v257 count:16];
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
                objc_enumerationMutation(otherInvitedHandles2);
              }

              tuHandle = [*(*(&v238 + 1) + 8 * k) tuHandle];
              if (tuHandle)
              {
                [v211 addObject:tuHandle];
              }
            }

            v158 = [otherInvitedHandles2 countByEnumeratingWithState:&v238 objects:v257 count:16];
          }

          while (v158);
        }

        v236 = 0u;
        v237 = 0u;
        v234 = 0u;
        v235 = 0u;
        remoteMembers = [v198 remoteMembers];
        v209 = [remoteMembers countByEnumeratingWithState:&v234 objects:v256 count:16];
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
                objc_enumerationMutation(remoteMembers);
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
                    handle = [v163 handle];
                    tuHandle2 = [handle tuHandle];
                    LODWORD(v169) = [tuHandle2 isEquivalentToHandle:v169];

                    if (v169)
                    {
                      v172 = [TUConversationMember alloc];
                      handle2 = [v163 handle];
                      tuHandle3 = [handle2 tuHandle];
                      v175 = [v172 initWithHandle:tuHandle3 nickname:0];

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
            v209 = [remoteMembers countByEnumeratingWithState:&v234 objects:v256 count:16];
          }

          while (v209);
        }

        v176 = [[TUConversationMember alloc] initWithHandle:v194];
        featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy2 featureFlags];
        if ([featureFlags avLessSharePlayEnabled])
        {
          actionCopy = v198;
          avMode = [v198 avMode];

          v179 = v200;
          if (avMode)
          {
            presentationMode = 0;
          }

          else
          {
            presentationMode = [v198 presentationMode];
          }
        }

        else
        {
          actionCopy = v198;
          if ([v198 isVideo])
          {
            avMode = 2;
          }

          else
          {
            avMode = 1;
          }

          presentationMode = 0;
          v179 = v200;
        }

        conversationManager12 = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy2 conversationManager];
        groupUUID2 = [v179 groupUUID];
        v187 = +[TUConversationProvider faceTimeProvider];
        v188 = [conversationManager12 findOrCreateConversationWithGroupUUID:groupUUID2 messagesGroupUUID:0 remoteMembers:v41 otherInvitedHandles:v211 localMember:v176 remotePushTokens:0 link:v179 activity:0 avMode:avMode presentationMode:presentationMode conversationProvider:v187 screenSharingRequest:0];

        if (v188)
        {
          self = selfCopy2;
          [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy2 proceedToJoinForConversation:v188 action:actionCopy];
          link2 = [v188 link];
          v190 = [v179 isEqual:link2];

          v14 = v179;
          if ((v190 & 1) == 0)
          {
            v191 = sub_100004778();
            v33 = v195;
            if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
            {
              link3 = [v188 link];
              *buf = 138412546;
              v260 = link3;
              v261 = 2112;
              v262 = v14;
              _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "Use %@ instead of link: %@ for renewal", buf, 0x16u);
            }

            link4 = [v188 link];

            v14 = link4;
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
          [actionCopy fail];
          v14 = v179;
          self = selfCopy2;
        }

        v33 = v195;
        goto LABEL_211;
      }
    }

    else
    {
      pseudonym6 = [actionCopy pseudonym];
      if ([pseudonym6 length])
      {
        publicKey = [actionCopy publicKey];
        v23 = [publicKey length];

        if (v23)
        {
          v24 = sub_100004778();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10047B5FC();
          }

          v227 = 0;
          v25 = [(CSDFaceTimeConversationProviderDelegate *)self deletedLinkForJoinCallAction:actionCopy withError:&v227];
          v14 = v227;
          v26 = sub_100004778();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v260 = v25;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Deleted link: %@", buf, 0xCu);
          }

          [actionCopy fail];
          goto LABEL_138;
        }
      }

      else
      {
      }
    }

    selfCopy3 = self;
    v199 = v14;
    remoteMembers2 = [actionCopy remoteMembers];
    v210 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers2 count]);

    otherInvitedHandles3 = [actionCopy otherInvitedHandles];
    v46 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [otherInvitedHandles3 count]);

    v47 = +[NSMutableSet set];
    v223 = 0u;
    v224 = 0u;
    v225 = 0u;
    v226 = 0u;
    v197 = actionCopy;
    obj = [actionCopy remoteMembers];
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
          handle3 = [v52 handle];
          tuHandle4 = [handle3 tuHandle];

          if ([v47 containsObject:tuHandle4])
          {
            v55 = sub_100004778();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v260 = tuHandle4;
              v261 = 2112;
              v262 = v47;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[WARN] Skipping member with handle %@ because it already exists in seen handles: %@", buf, 0x16u);
            }
          }

          else
          {
            v55 = [[TUConversationMember alloc] initWithHandle:tuHandle4 nickname:0];
            stableDeviceIdentifier = [v52 stableDeviceIdentifier];
            [v55 setStableDeviceIdentifier:stableDeviceIdentifier];

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

                  if ([*(*(&v219 + 1) + 8 * ii) isEquivalentToHandle:tuHandle4])
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
            [v208 addObject:tuHandle4];
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
    actionCopy = v197;
    otherInvitedHandles4 = [v197 otherInvitedHandles];
    v64 = [otherInvitedHandles4 countByEnumeratingWithState:&v215 objects:v252 count:16];
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
            objc_enumerationMutation(otherInvitedHandles4);
          }

          tuHandle5 = [*(*(&v215 + 1) + 8 * jj) tuHandle];
          [v46 addObject:tuHandle5];
        }

        v65 = [otherInvitedHandles4 countByEnumeratingWithState:&v215 objects:v252 count:16];
      }

      while (v65);
    }

    joinCallActivity = [v197 joinCallActivity];
    tuActivity = [joinCallActivity tuActivity];

    if (!v210)
    {
      [v197 fail];
      v14 = v199;
LABEL_135:
      v134 = v208;
LABEL_136:

      goto LABEL_137;
    }

    callerID = [v197 callerID];
    if (callerID)
    {
      v72 = [TUConversationMember alloc];
      callerID2 = [v197 callerID];
      tuHandle6 = [callerID2 tuHandle];
      obja = [v72 initWithHandle:tuHandle6 nickname:0];
    }

    else
    {
      obja = 0;
    }

    v75 = sub_100004778();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      callerID3 = [v197 callerID];
      *buf = 138412546;
      v260 = obja;
      v261 = 2112;
      v262 = callerID3;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "localMember: %@, action.callerID: %@", buf, 0x16u);
    }

    featureFlags2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy3 featureFlags];
    v201 = v46;
    if ([featureFlags2 avLessSharePlayEnabled])
    {
      avMode2 = [v197 avMode];

      if (!avMode2)
      {
        presentationMode2 = [v197 presentationMode];
        goto LABEL_89;
      }
    }

    else
    {
      if ([v197 isVideo])
      {
        avMode2 = 2;
      }

      else
      {
        avMode2 = 1;
      }
    }

    presentationMode2 = 0;
LABEL_89:
    conversationManager13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy3 conversationManager];
    groupUUID3 = [v197 groupUUID];
    messagesGroupUUID = [v197 messagesGroupUUID];
    remotePushTokens = [v197 remotePushTokens];
    conversationProviderIdentifier = [v197 conversationProviderIdentifier];
    v84 = [TUConversationProvider providerForIdentifier:conversationProviderIdentifier];
    v85 = [conversationManager13 findOrCreateConversationWithGroupUUID:groupUUID3 messagesGroupUUID:messagesGroupUUID remoteMembers:v210 otherInvitedHandles:v201 localMember:obja remotePushTokens:remotePushTokens link:v199 activity:tuActivity avMode:avMode2 presentationMode:presentationMode2 conversationProvider:v84 screenSharingRequest:0];

    v86 = v85;
    if (!v85)
    {
      [v197 fail];
      actionCopy = v197;
      v14 = v199;
      v46 = v201;
      goto LABEL_134;
    }

    featureFlags3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy3 featureFlags];
    actionCopy = v197;
    v46 = v201;
    if ([featureFlags3 nearbyFaceTimeEnabled])
    {
      isNearbySession = [v86 isNearbySession];

      v14 = v199;
      if (!isNearbySession)
      {
LABEL_102:
        [(CSDAbstractFaceTimeConversationProviderDelegate *)selfCopy3 proceedToJoinForConversation:v86 action:v197];
        if (![v197 avMode])
        {
LABEL_133:
          [(CSDFaceTimeConversationProviderDelegate *)selfCopy3 declineRemoteDevicesForConversation:v86 reason:4];
          goto LABEL_134;
        }

        link5 = [v86 link];
        if (link5)
        {

          goto LABEL_133;
        }

        participantCluster = [v197 participantCluster];

        if (participantCluster)
        {
          goto LABEL_133;
        }

LABEL_134:

        goto LABEL_135;
      }

      participantCluster2 = [v197 participantCluster];
      if (!participantCluster2 || (v90 = participantCluster2, [v197 participantCluster], v91 = objc_claimAutoreleasedReturnValue(), v92 = objc_msgSend(v91, "type"), v91, v90, v92 != 1))
      {
        v135 = sub_100004778();
        if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
        {
          sub_10047B674();
        }

        [v197 fail];
        goto LABEL_143;
      }

      activeRemoteParticipants = [v86 activeRemoteParticipants];
      anyObject = [activeRemoteParticipants anyObject];
      cluster = [anyObject cluster];
      featureFlags3 = [cluster UUID];

      if (featureFlags3)
      {
        participantCluster3 = [v197 participantCluster];
        uUID2 = [participantCluster3 UUID];
        v98 = [featureFlags3 isEqual:uUID2];

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

  [actionCopy fail];
LABEL_139:
}

- (void)proceedToNewPendingConversationForLink:(id)link action:(id)action
{
  linkCopy = link;
  actionCopy = action;
  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [conversationManager removeAllPendingConversations];

  conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v10 = [conversationManager2 activeApprovedConversationWithLink:linkCopy];

  if (v10)
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self proceedToJoinForConversation:v10 action:actionCopy];
    [actionCopy fulfill];
  }

  else
  {
    conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v12 = [TUConversationMember alloc];
    callerID = [actionCopy callerID];
    tuHandle = [callerID tuHandle];
    v15 = [v12 initWithHandle:tuHandle nickname:0];
    v16 = [conversationManager3 initiatePendingConversationForLink:linkCopy localMember:v15 isVideoEnabled:{objc_msgSend(actionCopy, "isVideoEnabled")}];

    if (v16)
    {
      [actionCopy fulfill];
      v17 = [[CXCallUpdate alloc] initWithTUConversation:v16];
      localSenderIdentityUUID = [v17 localSenderIdentityUUID];

      if (!localSenderIdentityUUID)
      {
        conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        initiator = [v16 initiator];
        v21 = [conversationManager4 senderIdentityUUIDForCallerIDHandle:initiator];
        [v17 setLocalSenderIdentityUUID:v21];
      }

      v22 = sub_100004778();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        callUUID = [actionCopy callUUID];
        v29 = 138412546;
        v30 = callUUID;
        v31 = 2112;
        v32 = v17;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "LMI: Reporting LMI call with UUID: %@ update: %@", &v29, 0x16u);
      }

      callUUID2 = [actionCopy callUUID];
      callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
      uUID = [v16 UUID];
      [callUUIDsByConversationUUID setObject:callUUID2 forKeyedSubscript:uUID];

      provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
      callUUID3 = [actionCopy callUUID];
      [provider reportCallWithUUID:callUUID3 updated:v17];
    }

    else
    {
      [actionCopy fail];
    }
  }
}

- (id)_findPendingConversationWithCallUUID:(id)d
{
  dCopy = d;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    pseudonymsByCallUUID = [conversationManager pseudonymsByCallUUID];
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    conversationsByUUID = [conversationManager2 conversationsByUUID];
    *buf = 138412546;
    v33 = pseudonymsByCallUUID;
    v34 = 2112;
    v35 = conversationsByUUID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "pseudonymsByCallUUID: %@, conversationsByUUID: %@", buf, 0x16u);
  }

  conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  pseudonymsByCallUUID2 = [conversationManager3 pseudonymsByCallUUID];
  v12 = [pseudonymsByCallUUID2 objectForKeyedSubscript:dCopy];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID2 = [conversationManager4 conversationsByUUID];
  allValues = [conversationsByUUID2 allValues];

  v16 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v26 = dCopy;
    v17 = *v28;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(allValues);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        if ([v19 isPendingConversation])
        {
          link = [v19 link];
          if (link)
          {
            v21 = link;
            link2 = [v19 link];
            pseudonym = [link2 pseudonym];
            v24 = [pseudonym isEqualToString:v12];

            if (v24)
            {
              v16 = v19;
              goto LABEL_15;
            }
          }
        }
      }

      v16 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

LABEL_15:
    dCopy = v26;
  }

  return v16;
}

- (void)leaveConversationForCallUUID:(id)d endedReason:(int64_t)reason
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v10.receiver = self;
  v10.super_class = CSDFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v10 leaveConversationForCallUUID:dCopy endedReason:reason];
  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [conversationUUIDsByCallUUID objectForKeyedSubscript:dCopy];

  [(CSDFaceTimeConversationProviderDelegate *)self setWaitingForRemoteJoin:0 forConversationUUID:v9];
}

- (void)leaveConversation:(id)conversation withCallUUID:(id)d reason:(int64_t)reason
{
  conversationCopy = conversation;
  dCopy = d;
  v29.receiver = self;
  v29.super_class = CSDFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v29 leaveConversation:conversationCopy withCallUUID:dCopy reason:reason];
  link = [conversationCopy link];
  if (link)
  {
    v11 = link;
    isPendingConversation = [conversationCopy isPendingConversation];

    if (isPendingConversation)
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        link2 = [conversationCopy link];
        pseudonym = [link2 pseudonym];
        *buf = 138412546;
        v31 = pseudonym;
        v32 = 2112;
        v33 = dCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removing pending conversation with pseudonym %@ and callUUID %@", buf, 0x16u);
      }

      conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      link3 = [conversationCopy link];
      pseudonym2 = [link3 pseudonym];
      v19 = [conversationManager removePendingConversationWithPseudonym:pseudonym2];

      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      link4 = [conversationCopy link];
      pseudonym3 = [link4 pseudonym];
      [conversationManager2 removePseudonym:pseudonym3 forCallUUID:dCopy];

      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      uUID = [conversationCopy UUID];
      [conversationManager3 notifyDelegatesOfRemovedConversationWithUUID:uUID];
    }
  }

  uUID2 = [conversationCopy UUID];
  [(CSDFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:uUID2];

  uUID3 = [conversationCopy UUID];
  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:uUID3];

  if ([conversationCopy state])
  {
    if ([conversationCopy state] == 2)
    {
      remoteMembers = [conversationCopy remoteMembers];
      v28 = [remoteMembers count];

      if (reason == 4 && v28 == 1)
      {
        [(CSDFaceTimeConversationProviderDelegate *)self declineRemoteMembersForConversation:conversationCopy reason:4];
      }
    }
  }

  else
  {
    [(CSDFaceTimeConversationProviderDelegate *)self declineRemoteDevicesForConversation:conversationCopy reason:reason];
  }
}

- (void)provider:(id)provider performSetHeldCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v18, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v10 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:v10];

  if (([v13 isVideo] & 1) == 0 && objc_msgSend(v13, "state") == 3 && (objc_msgSend(v13, "remoteMembers"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15 == 1))
  {
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager2 setAudioPaused:objc_msgSend(actionCopy forConversationWithUUID:{"isOnHold"), v10}];

    if (([actionCopy isComplete] & 1) == 0)
    {
      [actionCopy fulfill];
    }
  }

  else
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10047B720();
    }

    [actionCopy fail];
  }
}

- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138412290;
    v40 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v39, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v10 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:v10];

  if ([actionCopy isSendingVideo] && (+[TUConversationManager allowsVideo](TUConversationManager, "allowsVideo") & 1) == 0)
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v39) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot enable video because conversations do not allow video on this device", &v39, 2u);
    }

    goto LABEL_21;
  }

  if (![actionCopy isSendingVideo] || !objc_msgSend(v13, "isOneToOneModeEnabled") || (objc_msgSend(v13, "isVideo") & 1) != 0 || !objc_msgSend(v13, "avMode"))
  {
    if ([actionCopy isSendingVideo])
    {
      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v16 = [conversationManager2 isConversationWithUUIDRedirectingAudio:v10];

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
      isOneToOneModeEnabled = [v13 isOneToOneModeEnabled];
      isSendingVideo = [actionCopy isSendingVideo];
      v19 = isSendingVideo;
      if (isOneToOneModeEnabled)
      {
        conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        isSendingVideo2 = [actionCopy isSendingVideo];
        if (v19)
        {
          [conversationManager3 setVideoEnabled:isSendingVideo2 forConversationWithUUID:v10];

          conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          v22 = [actionCopy isSendingVideo] ^ 1;
        }

        else
        {
          v22 = isSendingVideo2 ^ 1;
        }

        conversationManager7 = conversationManager3;
      }

      else
      {
        if (isSendingVideo && ([v13 isVideo] & 1) == 0)
        {
          conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          [conversationManager4 setVideo:objc_msgSend(actionCopy forConversationWithUUID:{"isSendingVideo"), v10}];
        }

        conversationManager5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        [conversationManager5 setVideoEnabled:objc_msgSend(actionCopy forConversationWithUUID:{"isSendingVideo"), v10}];

        conversationManager6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v31 = [conversationManager6 presentationStateForConversationWithUUID:v10];

        if (v31 == 2 || ![actionCopy isSendingVideo])
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

        conversationManager7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        conversationManager3 = conversationManager7;
        v22 = 0;
      }

      [conversationManager7 setVideoPaused:v22 forConversationWithUUID:v10];
    }

    else
    {
      callUUID2 = [actionCopy callUUID];
      v24 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self isManagingPendingConversationForCallWithUUID:callUUID2];

      if (!v24)
      {
        v34 = sub_100004778();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          callUUID3 = [actionCopy callUUID];
          conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
          conversationManager8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          conversationsByUUID2 = [conversationManager8 conversationsByUUID];
          v39 = 138412802;
          v40 = callUUID3;
          v41 = 2112;
          v42 = conversationUUIDsByCallUUID2;
          v43 = 2112;
          v44 = conversationsByUUID2;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for sendingVideo call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v39, 0x20u);
        }

        goto LABEL_22;
      }

      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      isSendingVideo3 = [actionCopy isSendingVideo];
      callUUID4 = [actionCopy callUUID];
      v27 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self pendingConversationUUIDForCallWithUUID:callUUID4];
      [conversationManager3 setVideoEnabled:isSendingVideo3 forPendingConversationWithUUID:v27];
    }

LABEL_40:
    [actionCopy fulfill];
    goto LABEL_41;
  }

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10047B794();
  }

LABEL_21:

LABEL_22:
  [actionCopy fail];
LABEL_41:
}

- (void)provider:(id)provider performSetSharingScreenCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138412290;
    v35 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v34, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v10 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:v10];

  if (!v13)
  {
    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager2 conversationsByUUID];
      v34 = 138412802;
      v35 = callUUID2;
      v36 = 2112;
      v37 = conversationUUIDsByCallUUID2;
      v38 = 2112;
      v39 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for screen share call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v34, 0x20u);
    }

    goto LABEL_24;
  }

  if ([actionCopy isSharingScreen])
  {
    conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    allActiveConversationParticipantsSupportSharePlay = [conversationManager3 allActiveConversationParticipantsSupportSharePlay];

    if (allActiveConversationParticipantsSupportSharePlay)
    {
      allowsScreenSharingBlock = [(CSDFaceTimeConversationProviderDelegate *)self allowsScreenSharingBlock];
      v17 = allowsScreenSharingBlock[2]();

      if (v17)
      {
        conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        v19 = [conversationManager4 isConversationWithUUIDRedirectingAudio:v10];

        if (v19)
        {
          v20 = sub_100004778();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10047B884();
          }

          [actionCopy fail];
        }

        conversationManager5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
        isScreenSharingAvailable = [conversationManager5 isScreenSharingAvailable];

        if (isScreenSharingAvailable)
        {
          goto LABEL_12;
        }

        conversationManager6 = sub_100004778();
        if (os_log_type_enabled(conversationManager6, OS_LOG_TYPE_ERROR))
        {
          sub_10047B8F4();
        }
      }

      else
      {
        conversationManager6 = sub_100004778();
        if (os_log_type_enabled(conversationManager6, OS_LOG_TYPE_ERROR))
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

      conversationManager6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [conversationManager6 displaySharePlayUnableToStartAlert];
    }

LABEL_24:
    [actionCopy fail];
    goto LABEL_25;
  }

LABEL_12:
  v23 = objc_opt_class();
  attributes = [actionCopy attributes];
  v25 = [v23 callScreenShareAttributesForAction:attributes];

  conversationManager7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [conversationManager7 setScreenEnabled:objc_msgSend(actionCopy screenShareAttributes:"isSharingScreen") forConversationWithUUID:{v25, v10}];

  [actionCopy fulfill];
LABEL_25:
}

- (void)provider:(id)provider performEnableVideoCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v21, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v9 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v12 = [conversationsByUUID objectForKeyedSubscript:v9];

  if (!v12)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager2 conversationsByUUID];
      v21 = 138412802;
      v22 = callUUID2;
      v23 = 2112;
      v24 = conversationUUIDsByCallUUID2;
      v25 = 2112;
      v26 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for enableVideo call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v21, 0x20u);
    }

    goto LABEL_13;
  }

  if ([actionCopy isVideoEnabled] && objc_msgSend(v12, "state") != 3)
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10047B930();
    }

LABEL_13:
    [actionCopy fail];
    goto LABEL_14;
  }

  conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [conversationManager3 setVideo:objc_msgSend(actionCopy forConversationWithUUID:{"isVideoEnabled"), v9}];

  conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [conversationManager4 sendVideoUpgradeMessageforConversationWithUUID:v9];

  [actionCopy fulfill];
LABEL_14:
}

- (void)provider:(id)provider performSetScreenShareAttributesCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v15, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v10 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  v11 = objc_opt_class();
  attributes = [actionCopy attributes];
  v13 = [v11 callScreenShareAttributesForAction:attributes];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [conversationManager setScreenShareAttributes:v13 forConversationWithUUID:v10];

  [actionCopy fulfill];
}

- (void)provider:(id)provider performSetVideoPresentationStateCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "", &v25, 2u);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v10 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:v10];

  conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID2 = [conversationManager2 conversationsByUUID];
  v16 = [conversationsByUUID2 objectForKeyedSubscript:v10];

  if (v16)
  {
    videoPresentationState = [actionCopy videoPresentationState];
    if (([v13 isOneToOneModeEnabled] & 1) == 0)
    {
      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [conversationManager3 setVideoPaused:videoPresentationState == 2 forConversationWithUUID:v10];
    }

    conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager4 setPresentationState:-[CSDFaceTimeConversationProviderDelegate TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:](self forConversationWithUUID:{"TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:", objc_msgSend(actionCopy, "videoPresentationState")), v10}];

    [actionCopy fulfill];
  }

  else
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID3 = [conversationManager5 conversationsByUUID];
      v25 = 138412802;
      v26 = callUUID2;
      v27 = 2112;
      v28 = conversationUUIDsByCallUUID2;
      v29 = 2112;
      v30 = conversationsByUUID3;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for set video presentation state action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v25, 0x20u);
    }

    [actionCopy fail];
  }
}

- (void)provider:(id)provider performSetVideoPresentationSizeCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "", &v23, 2u);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v10 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:v10];

  if (v13)
  {
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [actionCopy videoPresentationSize];
    v16 = v15;
    [actionCopy videoPresentationSize];
    [conversationManager2 setPresentationRect:v10 forConversationWithUUID:{0.0, 0.0, v16, v17}];

    [actionCopy fulfill];
  }

  else
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager3 conversationsByUUID];
      v23 = 138412802;
      v24 = callUUID2;
      v25 = 2112;
      v26 = conversationUUIDsByCallUUID2;
      v27 = 2112;
      v28 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for set video presentation state action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v23, 0x20u);
    }

    [actionCopy fail];
  }
}

- (void)provider:(id)provider performSetRelayingCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v20, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v10 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:v10];

  if (v13)
  {
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager2 setRelaying:objc_msgSend(actionCopy forConversationWithUUID:{"isRelaying"), v10}];

    [actionCopy fulfill];
  }

  else
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager3 conversationsByUUID];
      v20 = 138412802;
      v21 = callUUID2;
      v22 = 2112;
      v23 = conversationUUIDsByCallUUID2;
      v24 = 2112;
      v25 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for relaying call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v20, 0x20u);
    }

    [actionCopy fail];
  }
}

- (void)provider:(id)provider performSetScreeningCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v22, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v10 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:v10];

  if (v13)
  {
    link = [v13 link];

    if (!link)
    {
      conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [conversationManager2 setScreening:objc_msgSend(actionCopy forConversationWithUUID:{"isScreening"), v10}];

      [actionCopy fulfill];
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
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager3 conversationsByUUID];
      v22 = 138412802;
      v23 = callUUID2;
      v24 = 2112;
      v25 = conversationUUIDsByCallUUID2;
      v26 = 2112;
      v27 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for screening call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v22, 0x20u);
    }
  }

  [actionCopy fail];
LABEL_13:
}

- (void)provider:(id)provider performSetAllowUplinkAudioInjectionAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v22, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v10 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:v10];

  if (v13 && [v13 state] == 3 && objc_msgSend(v13, "avMode"))
  {
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    willInject = [actionCopy willInject];
    uUID = [v13 UUID];
    [conversationManager2 setAudioInjectionAllowed:willInject forConversationWithUUID:uUID];

    [actionCopy fulfill];
  }

  else
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [actionCopy callUUID];
      conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
      conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      conversationsByUUID2 = [conversationManager3 conversationsByUUID];
      v22 = 138412802;
      v23 = callUUID2;
      v24 = 2112;
      v25 = conversationUUIDsByCallUUID2;
      v26 = 2112;
      v27 = conversationsByUUID2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Did not allow audio injection action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v22, 0x20u);
    }

    [actionCopy fail];
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

- (BOOL)shouldHandleProvider:(id)provider
{
  providerCopy = provider;
  v4 = providerCopy;
  if (providerCopy && [providerCopy isDefaultProvider])
  {
    v5 = [v4 isTelephonyWithSharePlayProvider] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldHandleProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[CSDConversationProviderManager sharedInstance];
  v6 = [v5 tuConversationProviderForIdentifier:identifierCopy];

  LOBYTE(self) = [(CSDFaceTimeConversationProviderDelegate *)self shouldHandleProvider:v6];
  return self;
}

@end