@interface CSDFaceTimeIDSProviderDelegate
- (BOOL)canUpgradeChat:(id)chat;
- (BOOL)hasCallStartedConnectingWithUUID:(id)d;
- (BOOL)isManagingCallWithUUID:(id)d;
- (BOOL)isMediaAllowedForChat:(id)chat;
- (BOOL)isMomentsAvailableForChat:(id)chat;
- (BOOL)isUpgradingCallWithUUID:(id)d;
- (CSDFaceTimeIDSProviderDelegate)init;
- (CSDFaceTimeIDSProviderDelegate)initWithCapabilities:(id)capabilities queue:(id)queue;
- (CSDFaceTimeIDSProviderDelegate)initWithQueue:(id)queue;
- (CSDFaceTimeProviderDelegateManagerDelegate)faceTimeDemuxerDelegate;
- (id)ISOCountryCodeForCallWithUUID:(id)d;
- (id)ISOCountryCodeForChat:(id)chat;
- (id)accountWithUUID:(id)d service:(id)service;
- (id)callForConversation:(id)conversation withSessionToken:(id)token;
- (id)callUpdateForChat:(id)chat;
- (id)upgradeCallForConversation:(id)conversation withSessionToken:(id)token;
- (id)upgradeSessionUUIDForCallWithUUID:(id)d;
- (void)chatEnded:(id)ended;
- (void)chatStartedConnecting:(id)connecting;
- (void)endCallWithUUID:(id)d;
- (void)endCallWithUUIDAsAnsweredElsewhere:(id)elsewhere;
- (void)endCallWithUUIDAsDeclinedElsewhere:(id)elsewhere;
- (void)endCallWithUUIDAsLocalHangup:(id)hangup;
- (void)inviteIDSPeersWithAction:(id)action destinations:(id)destinations joinCallActionToFulfill:(id)fulfill completion:(id)completion;
- (void)provider:(id)provider performJoinCallAction:(id)action;
- (void)providerDidBegin:(id)begin;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)updateProviderConfigurationWithAccounts:(id)accounts;
- (void)updateProviderConfigurationWithAccounts:(id)accounts senderIdentities:(id)identities;
- (void)updateProviderConfigurationWithSenderIdentities:(id)identities;
- (void)upgradeChatIfNecessary:(id)necessary;
@end

@implementation CSDFaceTimeIDSProviderDelegate

- (CSDFaceTimeIDSProviderDelegate)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDFaceTimeIDSProviderDelegate.m" lineNumber:47 description:{@"%s is not available. Use an available initializer instead.", "-[CSDFaceTimeIDSProviderDelegate init]"}];

  return 0;
}

- (CSDFaceTimeIDSProviderDelegate)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_alloc_init(CSDFaceTimeIDSProviderDelegateCapabilities);
  v6 = [(CSDFaceTimeIDSProviderDelegate *)self initWithCapabilities:v5 queue:queueCopy];

  return v6;
}

- (CSDFaceTimeIDSProviderDelegate)initWithCapabilities:(id)capabilities queue:(id)queue
{
  capabilitiesCopy = capabilities;
  queueCopy = queue;
  v35.receiver = self;
  v35.super_class = CSDFaceTimeIDSProviderDelegate;
  v9 = [(CSDAbstractIDSProviderDelegate *)&v35 initWithCapabilities:capabilitiesCopy queue:queueCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v10->_featureFlags;
    v10->_featureFlags = v11;

    objc_storeStrong(&v10->_capabilities, capabilities);
    v13 = +[FTServerBag sharedInstance];
    serverBag = v10->_serverBag;
    v10->_serverBag = v13;

    if (([(CSDFaceTimeIDSProviderDelegateServerBag *)v10->_serverBag isLoaded]& 1) == 0)
    {
      [(CSDFaceTimeIDSProviderDelegateServerBag *)v10->_serverBag startBagLoad];
    }

    v15 = objc_alloc_init(CSDSharedConversationServerBag);
    conversationServerBag = v10->_conversationServerBag;
    v10->_conversationServerBag = v15;

    facetimeIDSServiceGenerator = v10->_facetimeIDSServiceGenerator;
    v10->_facetimeIDSServiceGenerator = &stru_10061BAD0;

    isAccountActive = v10->_isAccountActive;
    v10->_isAccountActive = &stru_10061BB10;

    objc_initWeak(&location, v10);
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_100103E6C;
    v32 = &unk_10061BB38;
    objc_copyWeak(&v33, &location);
    v19 = objc_retainBlock(&v29);
    outgoingSessionProviderGenerator = v10->_outgoingSessionProviderGenerator;
    v10->_outgoingSessionProviderGenerator = v19;

    outgoingChatGenerator = v10->_outgoingChatGenerator;
    v10->_outgoingChatGenerator = &stru_10061BB78;

    v22 = [CSDFaceTimeAudioIDSService sharedInstance:v29];
    [v22 addServiceDelegate:v10 queue:v10->_queue];

    v23 = +[CSDFaceTimeVideoIDSService sharedInstance];
    [v23 addServiceDelegate:v10 queue:v10->_queue];

    v24 = +[NSMutableSet set];
    chatsPendingUpgrade = v10->_chatsPendingUpgrade;
    v10->_chatsPendingUpgrade = v24;

    v10->_upgradeTimeout = 5.0;
    v26 = objc_alloc_init(TUCallProviderManager);
    callProviderManager = v10->_callProviderManager;
    v10->_callProviderManager = v26;

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (id)accountWithUUID:(id)d service:(id)service
{
  dCopy = d;
  serviceCopy = service;
  callProviderManager = [(CSDFaceTimeIDSProviderDelegate *)self callProviderManager];
  faceTimeProvider = [callProviderManager faceTimeProvider];
  v10 = [faceTimeProvider senderIdentityForUUID:dCopy];

  if (!v10)
  {
    callProviderManager2 = [(CSDFaceTimeIDSProviderDelegate *)self callProviderManager];
    faceTimeProvider2 = [callProviderManager2 faceTimeProvider];
    v10 = [faceTimeProvider2 senderIdentityForAccountUUID:dCopy];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  service = [serviceCopy service];
  accounts = [service accounts];

  v15 = [accounts countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v15)
  {
    v27 = serviceCopy;
    v28 = dCopy;
    v16 = *v30;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(accounts);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        loginID = [v18 loginID];
        v20 = TUHandleForIDSCanonicalAddress();

        handle = [v10 handle];
        v22 = [handle isEqualToHandle:v20];

        if (v22)
        {
          isAccountActive = [(CSDFaceTimeIDSProviderDelegate *)self isAccountActive];
          v24 = (isAccountActive)[2](isAccountActive, v18);

          if (v24)
          {
            v15 = v18;
            v25 = sub_100004778();
            serviceCopy = v27;
            dCopy = v28;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v34 = v28;
              v35 = 2112;
              v36 = v15;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found matching account: %@ for uuid: %@", buf, 0x16u);
            }
          }

          else
          {
            v25 = sub_100004778();
            serviceCopy = v27;
            dCopy = v28;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v34 = v28;
              v35 = 2112;
              v36 = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found matching account: %@ for uuid: %@ but it was not active and cannot be used for FaceTime.", buf, 0x16u);
            }

            v15 = 0;
          }

          goto LABEL_19;
        }
      }

      v15 = [accounts countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    serviceCopy = v27;
    dCopy = v28;
  }

LABEL_19:

  return v15;
}

- (void)inviteIDSPeersWithAction:(id)action destinations:(id)destinations joinCallActionToFulfill:(id)fulfill completion:(id)completion
{
  actionCopy = action;
  destinationsCopy = destinations;
  fulfillCopy = fulfill;
  completionCopy = completion;
  serverBag = [(CSDFaceTimeIDSProviderDelegate *)self serverBag];
  isLoaded = [serverBag isLoaded];

  if (isLoaded)
  {
    serverBag2 = [(CSDFaceTimeIDSProviderDelegate *)self serverBag];
    isQuickRelaySupported = [serverBag2 isQuickRelaySupported];

    if ((isQuickRelaySupported & 1) == 0)
    {
      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Server bag does not support quick relay", buf, 2u);
      }

      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Not attempting to use IDSSession for outgoing FT call because server bag does not allow quick relay invitations", buf, 2u);
      }

      completionCopy[2](completionCopy, &__NSArray0__struct, 0);
      goto LABEL_42;
    }
  }

  else
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Server bag is not loaded. Assuming we can make a FaceTime call over quick relay", buf, 2u);
    }
  }

  handle = [actionCopy handle];
  v21 = [(CSDAbstractIDSProviderDelegate *)self waitingChatWithHandle:handle isOutgoing:0];

  if (v21)
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Tried to make an outgoing call when we already had a ringing call with the same destination: %@", buf, 0xCu);
    }

    completionCopy[2](completionCopy, &__NSArray0__struct, 1);
    [actionCopy fail];
    [fulfillCopy fail];
    uUID = [v21 UUID];
    v24 = [[CXAnswerCallAction alloc] initWithCallUUID:uUID];
    account2 = [[CXTransaction alloc] initWithAction:v24];
    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Requesting transaction to answer already-ringing call", buf, 2u);
    }

    faceTimeDemuxerDelegate = [(CSDFaceTimeIDSProviderDelegate *)self faceTimeDemuxerDelegate];
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_100104D14;
    v75[3] = &unk_10061A498;
    v76 = uUID;
    selfCopy = self;
    v28 = uUID;
    [faceTimeDemuxerDelegate providerDelegate:self requestedTransaction:account2 completion:v75];
  }

  else
  {
    facetimeIDSServiceGenerator = [(CSDFaceTimeIDSProviderDelegate *)self facetimeIDSServiceGenerator];
    v24 = (facetimeIDSServiceGenerator)[2](facetimeIDSServiceGenerator, [actionCopy isVideo]);

    localSenderIdentityUUID = [actionCopy localSenderIdentityUUID];
    v73 = fulfillCopy;
    if (localSenderIdentityUUID)
    {
      localSenderIdentityUUID2 = [actionCopy localSenderIdentityUUID];
      v32 = [(CSDFaceTimeIDSProviderDelegate *)self accountWithUUID:localSenderIdentityUUID2 service:v24];
      v33 = v32;
      if (v32)
      {
        account = v32;
      }

      else
      {
        account = [v24 account];
      }

      account2 = account;

      fulfillCopy = v73;
    }

    else
    {
      account2 = [v24 account];
    }

    isAccountActive = [(CSDFaceTimeIDSProviderDelegate *)self isAccountActive];
    v36 = (isAccountActive)[2](isAccountActive, account2);

    if (v36)
    {
      v71 = v24;
      csd_ISOCountryCode = [account2 csd_ISOCountryCode];
      if ([csd_ISOCountryCode length])
      {
        v37 = objc_opt_class();
        handle2 = [actionCopy handle];
        tuHandle = [handle2 tuHandle];
        v40 = [v37 handleByFullyQualifyingHandle:tuHandle usingCountryCode:csd_ISOCountryCode];
        value = [v40 value];
        iDSFormattedDestinationID = [value IDSFormattedDestinationID];

        fulfillCopy = v73;
      }

      else
      {
        iDSFormattedDestinationID = 0;
      }

      if ([iDSFormattedDestinationID length])
      {
        v84[0] = IDSSessionTransportTypeKey;
        v84[1] = IDSSessionWaitForPreConnectionDataKey;
        v85[0] = &off_10063EC78;
        v85[1] = &__kCFBooleanTrue;
        v85[2] = &__kCFBooleanTrue;
        v84[2] = IDSSessionAlwaysSkipSelfKey;
        v84[3] = IDSSessionInvitationIsRetryKey;
        v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [actionCopy isRetry]);
        v85[3] = v44;
        v45 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:4];

        v46 = sub_100004778();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v79 = account2;
          v80 = 2112;
          v81 = destinationsCopy;
          v82 = 2112;
          v83 = v45;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Starting FaceTime IDS chat using account: %@ destinations: %@ options: %@", buf, 0x20u);
        }

        v70 = iDSFormattedDestinationID;
        if ([fulfillCopy screenShareRequestType])
        {
          featureFlags = [(CSDFaceTimeIDSProviderDelegate *)self featureFlags];
          requestToScreenShareEnabled = [featureFlags requestToScreenShareEnabled];
        }

        else
        {
          requestToScreenShareEnabled = 0;
        }

        outgoingSessionProviderGenerator = [(CSDFaceTimeIDSProviderDelegate *)self outgoingSessionProviderGenerator];
        queue = [(CSDFaceTimeIDSProviderDelegate *)self queue];
        v69 = (outgoingSessionProviderGenerator)[2](outgoingSessionProviderGenerator, account2, destinationsCopy, v45, requestToScreenShareEnabled, queue);

        v52 = [[CSDExternalIDSDualSession alloc] initAsInitiatorWithSessionProvider:v69];
        callProviderManager = [(CSDFaceTimeIDSProviderDelegate *)self callProviderManager];
        faceTimeProvider = [callProviderManager faceTimeProvider];

        [actionCopy isVideo];
        [actionCopy isUpgrade];
        v65 = v52;
        [v52 setInvitationTimeout:TUOutgoingInvitationTimeoutForCallProviderAndIsUpgrade()];
        outgoingChatGenerator = [(CSDFaceTimeIDSProviderDelegate *)self outgoingChatGenerator];
        callUUID = [actionCopy callUUID];
        [actionCopy handle];
        v55 = v67 = account2;
        [v55 tuHandle];
        v56 = v66 = v45;
        isVideo = [actionCopy isVideo];
        isRelay = [actionCopy isRelay];
        localSenderIdentityUUID3 = [actionCopy localSenderIdentityUUID];
        v60 = (outgoingChatGenerator)[2](outgoingChatGenerator, v52, callUUID, v56, isVideo, isRelay, localSenderIdentityUUID3);

        account2 = v67;
        [v60 setDelegate:self];
        [v60 setShouldSuppressInCallUI:{objc_msgSend(actionCopy, "shouldSuppressInCallUI")}];
        [v60 startWithVideoAspectRatioDescriptor:actionCopy inviteCompletion:completionCopy];
        [(CSDAbstractIDSProviderDelegate *)self updateCacheWithChat:v60];
        provider = [(CSDAbstractIDSProviderDelegate *)self provider];
        callUUID2 = [actionCopy callUUID];
        v63 = [(CSDFaceTimeIDSProviderDelegate *)self callUpdateForChat:v60];
        [provider reportCallWithUUID:callUUID2 updated:v63];

        [actionCopy fulfill];
        [v73 fulfill];

        fulfillCopy = v73;
        v21 = 0;
        v24 = v71;
        iDSFormattedDestinationID = v70;
      }

      else
      {
        v49 = sub_100004778();
        v24 = v71;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100474C58(actionCopy, iDSFormattedDestinationID, v49);
        }

        completionCopy[2](completionCopy, &__NSArray0__struct, 0);
      }
    }

    else
    {
      v43 = sub_100004778();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_100474BEC();
      }

      completionCopy[2](completionCopy, &__NSArray0__struct, 0);
    }
  }

LABEL_42:
}

- (id)callUpdateForChat:(id)chat
{
  chatCopy = chat;
  v5 = [[CXCallUpdate alloc] initWithFaceTimeIDSChat:chatCopy];
  v6 = [(CSDFaceTimeIDSProviderDelegate *)self ISOCountryCodeForChat:chatCopy];

  [v5 setISOCountryCode:v6];

  return v5;
}

- (id)upgradeCallForConversation:(id)conversation withSessionToken:(id)token
{
  v5 = [(CSDFaceTimeIDSProviderDelegate *)self callForConversation:conversation withSessionToken:token];
  if ([(CSDFaceTimeIDSProviderDelegate *)self canUpgradeChat:v5])
  {
    [(CSDFaceTimeIDSProviderDelegate *)self upgradeChatIfNecessary:v5];
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Found a chat to upgrade: %@", &v9, 0xCu);
    }

    uUID = [v5 UUID];
  }

  else
  {
    uUID = 0;
  }

  return uUID;
}

- (id)callForConversation:(id)conversation withSessionToken:(id)token
{
  conversationCopy = conversation;
  tokenCopy = token;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  chats = [(CSDAbstractIDSProviderDelegate *)self chats];
  v9 = [chats countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(chats);
      }

      v13 = *(*(&v22 + 1) + 8 * v12);
      remoteFromID = [v13 remoteFromID];
      v21 = 0;
      v15 = [remoteFromID _stripPotentialTokenURIWithToken:&v21];
      v16 = v21;

      if (v16)
      {
        if ([v16 isEqualToData:tokenCopy])
        {
          v18 = v13;

          if (!v18)
          {
            goto LABEL_18;
          }

          v19 = sub_100004778();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v27 = v18;
            v28 = 2112;
            v29 = conversationCopy;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found existing chat: %@ for conversation: %@", buf, 0x16u);
          }

          goto LABEL_21;
        }
      }

      else
      {
        v17 = sub_100004778();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100474D78(v30, v13, &v31, v17);
        }
      }

      if (v10 == ++v12)
      {
        v10 = [chats countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_18:
  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_100474DF0(conversationCopy, v19);
  }

  v18 = 0;
LABEL_21:

  return v18;
}

- (void)provider:(id)provider performJoinCallAction:(id)action
{
  actionCopy = action;
  callUUID = [actionCopy callUUID];
  v7 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  if ([(CSDFaceTimeIDSProviderDelegate *)self canUpgradeChat:v7])
  {
    [(CSDFaceTimeIDSProviderDelegate *)self upgradeChatIfNecessary:v7];
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = actionCopy;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Failing action %@ we determined that chat %@ cannot be upgraded.", &v9, 0x16u);
    }

    [actionCopy fail];
  }
}

- (id)ISOCountryCodeForCallWithUUID:(id)d
{
  v4 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:d];
  if (v4)
  {
    v5 = [(CSDFaceTimeIDSProviderDelegate *)self ISOCountryCodeForChat:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)ISOCountryCodeForChat:(id)chat
{
  chatCopy = chat;
  isVideo = [chatCopy isVideo];
  v6 = off_100616620;
  if (!isVideo)
  {
    v6 = off_100616610;
  }

  sharedInstance = [(__objc2_class *)*v6 sharedInstance];
  if (sharedInstance)
  {
    localSenderIdentityUUID = [chatCopy localSenderIdentityUUID];
    if (localSenderIdentityUUID)
    {
      v9 = [(CSDFaceTimeIDSProviderDelegate *)self accountWithUUID:localSenderIdentityUUID service:sharedInstance];
      v10 = v9;
      if (v9)
      {
        account = v9;
      }

      else
      {
        account = [sharedInstance account];
      }

      account2 = account;
    }

    else
    {
      account2 = [sharedInstance account];
    }

    csd_ISOCountryCode = [account2 csd_ISOCountryCode];
  }

  else
  {
    csd_ISOCountryCode = 0;
  }

  return csd_ISOCountryCode;
}

- (BOOL)isManagingCallWithUUID:(id)d
{
  v3 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:d];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isUpgradingCallWithUUID:(id)d
{
  v4 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:d];
  if (v4)
  {
    chatsPendingUpgrade = [(CSDFaceTimeIDSProviderDelegate *)self chatsPendingUpgrade];
    v6 = [chatsPendingUpgrade containsObject:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canUpgradeChat:(id)chat
{
  chatCopy = chat;
  chatsPendingUpgrade = [(CSDFaceTimeIDSProviderDelegate *)self chatsPendingUpgrade];
  v6 = [chatsPendingUpgrade containsObject:chatCopy];

  if (chatCopy && [chatCopy isConnected] && objc_msgSend(chatCopy, "isVideo") && objc_msgSend(chatCopy, "isSendingVideo"))
  {
    v7 = [chatCopy isSendingAudio] & (v6 ^ 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v9 = &stru_100631E68;
    }

    else
    {
      v9 = @"Not";
    }

    v11 = 138413826;
    v12 = v9;
    v13 = 2112;
    v14 = chatCopy;
    v15 = 1024;
    isConnected = [chatCopy isConnected];
    v17 = 1024;
    isVideo = [chatCopy isVideo];
    v19 = 1024;
    isSendingVideo = [chatCopy isSendingVideo];
    v21 = 1024;
    isSendingAudio = [chatCopy isSendingAudio];
    v23 = 1024;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Auto-upgrading because chatToUpgrade is %@, isConnected: %d, isVideo: %d, isSendingVideo: %d, isSendingAudio: %d isChatPendingUpgrade: %d", &v11, 0x34u);
  }

  return v7;
}

- (void)upgradeChatIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = necessaryCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Upgrading chat: %@", buf, 0xCu);
  }

  chatsPendingUpgrade = [(CSDFaceTimeIDSProviderDelegate *)self chatsPendingUpgrade];
  [chatsPendingUpgrade addObject:necessaryCopy];

  [(CSDFaceTimeIDSProviderDelegate *)self upgradeTimeout];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  queue = [(CSDFaceTimeIDSProviderDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001057E0;
  block[3] = &unk_100619D38;
  v12 = necessaryCopy;
  v10 = necessaryCopy;
  dispatch_after(v8, queue, block);
}

- (id)upgradeSessionUUIDForCallWithUUID:(id)d
{
  v3 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:d];
  upgradeSessionUUID = [v3 upgradeSessionUUID];

  return upgradeSessionUUID;
}

- (BOOL)hasCallStartedConnectingWithUUID:(id)d
{
  v3 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:d];
  dateStartedConnecting = [v3 dateStartedConnecting];
  v5 = dateStartedConnecting != 0;

  return v5;
}

- (void)endCallWithUUIDAsAnsweredElsewhere:(id)elsewhere
{
  elsewhereCopy = elsewhere;
  v5 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:elsewhereCopy];
  v6 = v5;
  if (v5)
  {
    [v5 cancelInvitationWithAnsweredElsewhere];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [elsewhereCopy UUIDString];
      chats = [(CSDAbstractIDSProviderDelegate *)self chats];
      v10 = 138412546;
      v11 = uUIDString;
      v12 = 2112;
      v13 = chats;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find chat with UUID %@. All chats: %@", &v10, 0x16u);
    }
  }
}

- (void)endCallWithUUID:(id)d
{
  dCopy = d;
  v5 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:dCopy];
  v6 = v5;
  if (v5)
  {
    [v5 end];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [dCopy UUIDString];
      chats = [(CSDAbstractIDSProviderDelegate *)self chats];
      v10 = 138412546;
      v11 = uUIDString;
      v12 = 2112;
      v13 = chats;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find chat with UUID %@. All chats: %@", &v10, 0x16u);
    }
  }
}

- (void)endCallWithUUIDAsLocalHangup:(id)hangup
{
  hangupCopy = hangup;
  v5 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:hangupCopy];
  v6 = v5;
  if (v5)
  {
    [v5 cancelInvitationWithLocalHangup];
    if ([v6 isConnected])
    {
      v7 = sub_100004778();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [hangupCopy UUIDString];
        chats = [(CSDAbstractIDSProviderDelegate *)self chats];
        v13 = 138412546;
        v14 = uUIDString;
        v15 = 2112;
        v16 = chats;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found chat with UUID %@. Ending it: %@", &v13, 0x16u);
      }

      [v6 end];
    }
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString2 = [hangupCopy UUIDString];
      chats2 = [(CSDAbstractIDSProviderDelegate *)self chats];
      v13 = 138412546;
      v14 = uUIDString2;
      v15 = 2112;
      v16 = chats2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find chat with UUID %@. All chats: %@", &v13, 0x16u);
    }
  }
}

- (void)endCallWithUUIDAsDeclinedElsewhere:(id)elsewhere
{
  elsewhereCopy = elsewhere;
  v5 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:elsewhereCopy];
  v6 = v5;
  if (v5)
  {
    [v5 cancelInvitationWithDeclinedElsewhere];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [elsewhereCopy UUIDString];
      chats = [(CSDAbstractIDSProviderDelegate *)self chats];
      v10 = 138412546;
      v11 = uUIDString;
      v12 = 2112;
      v13 = chats;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find chat with UUID %@. All chats: %@", &v10, 0x16u);
    }
  }
}

- (BOOL)isMediaAllowedForChat:(id)chat
{
  chatCopy = chat;
  faceTimeDemuxerDelegate = [(CSDFaceTimeIDSProviderDelegate *)self faceTimeDemuxerDelegate];
  uUID = [chatCopy UUID];
  v7 = [faceTimeDemuxerDelegate providerDelegate:self isManagingCallWithUUID:uUID];

  if (v7)
  {
    v12.receiver = self;
    v12.super_class = CSDFaceTimeIDSProviderDelegate;
    v8 = [(CSDAbstractIDSProviderDelegate *)&v12 isMediaAllowedForChat:chatCopy];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [chatCopy UUID];
      *buf = 138412290;
      v14 = uUID2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing media for chat as the call provider is not managing a call with UUID: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (void)chatStartedConnecting:(id)connecting
{
  connectingCopy = connecting;
  if ([-[CSDFaceTimeIDSProviderDelegate superclass](self "superclass")])
  {
    v11.receiver = self;
    v11.super_class = CSDFaceTimeIDSProviderDelegate;
    [(CSDFaceTimeIDSProviderDelegate *)&v11 chatStartedConnecting:connectingCopy];
  }

  if ([connectingCopy isOutgoing])
  {
    faceTimeDemuxerDelegate = [(CSDFaceTimeIDSProviderDelegate *)self faceTimeDemuxerDelegate];
    uUID = [connectingCopy UUID];
    dateStartedConnecting = [connectingCopy dateStartedConnecting];
    [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:uUID startedConnectingAtDate:dateStartedConnecting];

    v8 = [(CSDFaceTimeIDSProviderDelegate *)self callUpdateForChat:connectingCopy];
    provider = [(CSDAbstractIDSProviderDelegate *)self provider];
    uUID2 = [connectingCopy UUID];
    [provider reportCallWithUUID:uUID2 updated:v8];
  }
}

- (void)chatEnded:(id)ended
{
  endedCopy = ended;
  [(CSDAbstractIDSProviderDelegate *)self updateCacheWithChat:endedCopy];
  chatsPendingUpgrade = [(CSDFaceTimeIDSProviderDelegate *)self chatsPendingUpgrade];
  v6 = [chatsPendingUpgrade containsObject:endedCopy];

  if ((v6 & 1) == 0)
  {
    faceTimeDemuxerDelegate = [(CSDFaceTimeIDSProviderDelegate *)self faceTimeDemuxerDelegate];
    uUID = [endedCopy UUID];
    dateEnded = [endedCopy dateEnded];
    endedReason = [endedCopy endedReason];
    failureContext = [endedCopy failureContext];
    [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:uUID endedAtDate:dateEnded withReason:endedReason failureContext:failureContext];

    if ([-[CSDFaceTimeIDSProviderDelegate superclass](self "superclass")])
    {
      v14.receiver = self;
      v14.super_class = CSDFaceTimeIDSProviderDelegate;
      [(CSDAbstractIDSProviderDelegate *)&v14 chatEnded:endedCopy];
    }
  }

  v12 = +[CSDReportingController sharedInstance];
  [v12 chatReceived:endedCopy];

  chatsPendingUpgrade2 = [(CSDFaceTimeIDSProviderDelegate *)self chatsPendingUpgrade];
  [chatsPendingUpgrade2 removeObject:endedCopy];
}

- (BOOL)isMomentsAvailableForChat:(id)chat
{
  capabilities = [(CSDFaceTimeIDSProviderDelegate *)self capabilities];
  isMomentsAvailable = [capabilities isMomentsAvailable];

  return isMomentsAvailable;
}

- (void)updateProviderConfigurationWithAccounts:(id)accounts
{
  accountsCopy = accounts;
  accounts = [(CSDFaceTimeIDSProviderDelegate *)self accounts];

  if (accounts != accountsCopy)
  {
    [(CSDFaceTimeIDSProviderDelegate *)self setAccounts:accountsCopy];
    telephonySenderIdentities = [(CSDFaceTimeIDSProviderDelegate *)self telephonySenderIdentities];
    [(CSDFaceTimeIDSProviderDelegate *)self updateProviderConfigurationWithAccounts:accountsCopy senderIdentities:telephonySenderIdentities];
  }
}

- (void)updateProviderConfigurationWithSenderIdentities:(id)identities
{
  identitiesCopy = identities;
  telephonySenderIdentities = [(CSDFaceTimeIDSProviderDelegate *)self telephonySenderIdentities];

  if (telephonySenderIdentities != identitiesCopy)
  {
    [(CSDFaceTimeIDSProviderDelegate *)self setTelephonySenderIdentities:identitiesCopy];
    accounts = [(CSDFaceTimeIDSProviderDelegate *)self accounts];
    [(CSDFaceTimeIDSProviderDelegate *)self updateProviderConfigurationWithAccounts:accounts senderIdentities:identitiesCopy];
  }
}

- (void)updateProviderConfigurationWithAccounts:(id)accounts senderIdentities:(id)identities
{
  accountsCopy = accounts;
  identitiesCopy = identities;
  v28 = objc_alloc_init(NSMutableOrderedSet);
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v44 = identitiesCopy;
    v45 = 2112;
    v46 = accountsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Matching sender identities %@ to IDS accounts %@", buf, 0x16u);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = identitiesCopy;
  v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v31)
  {
    v29 = *v38;
    do
    {
      v7 = 0;
      do
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v7;
        v8 = *(*(&v37 + 1) + 8 * v7);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v9 = accountsCopy;
        v10 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v34;
          while (2)
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v34 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v33 + 1) + 8 * i);
              account = [v8 account];
              uUID = [account UUID];

              matchingSim = [v14 matchingSim];
              sIMIdentifier = [matchingSim SIMIdentifier];
              uUIDString = [uUID UUIDString];
              v20 = [sIMIdentifier isEqualToString:uUIDString];

              if (v20)
              {
                [v28 addObject:v8];

                goto LABEL_18;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:

        v7 = v32 + 1;
      }

      while ((v32 + 1) != v31);
      v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v31);
  }

  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  configuration = [provider configuration];
  v23 = [configuration copy];

  [v23 setPrioritizedSenderIdentities:v28];
  v24 = sub_100004778();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Updating FaceTime provider with configuration %@", buf, 0xCu);
  }

  provider2 = [(CSDAbstractIDSProviderDelegate *)self provider];
  [provider2 setConfiguration:v23];
}

- (void)providerDidBegin:(id)begin
{
  v7.receiver = self;
  v7.super_class = CSDFaceTimeIDSProviderDelegate;
  [(CSDAbstractIDSProviderDelegate *)&v7 providerDidBegin:begin];
  v4 = +[CSDFaceTimeVideoIDSService sharedInstance];
  service = [v4 service];
  accounts = [service accounts];
  [(CSDFaceTimeIDSProviderDelegate *)self updateProviderConfigurationWithAccounts:accounts];
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  serviceCopy = service;
  changedCopy = changed;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = serviceCopy;
    v11 = 2112;
    v12 = changedCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "service: %@ activeAccountsChanged: %@", &v9, 0x16u);
  }

  [(CSDFaceTimeIDSProviderDelegate *)self updateProviderConfigurationWithAccounts:changedCopy];
}

- (CSDFaceTimeProviderDelegateManagerDelegate)faceTimeDemuxerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTimeDemuxerDelegate);

  return WeakRetained;
}

@end