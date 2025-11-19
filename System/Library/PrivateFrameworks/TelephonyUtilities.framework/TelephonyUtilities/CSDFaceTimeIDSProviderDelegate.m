@interface CSDFaceTimeIDSProviderDelegate
- (BOOL)canUpgradeChat:(id)a3;
- (BOOL)hasCallStartedConnectingWithUUID:(id)a3;
- (BOOL)isManagingCallWithUUID:(id)a3;
- (BOOL)isMediaAllowedForChat:(id)a3;
- (BOOL)isMomentsAvailableForChat:(id)a3;
- (BOOL)isUpgradingCallWithUUID:(id)a3;
- (CSDFaceTimeIDSProviderDelegate)init;
- (CSDFaceTimeIDSProviderDelegate)initWithCapabilities:(id)a3 queue:(id)a4;
- (CSDFaceTimeIDSProviderDelegate)initWithQueue:(id)a3;
- (CSDFaceTimeProviderDelegateManagerDelegate)faceTimeDemuxerDelegate;
- (id)ISOCountryCodeForCallWithUUID:(id)a3;
- (id)ISOCountryCodeForChat:(id)a3;
- (id)accountWithUUID:(id)a3 service:(id)a4;
- (id)callForConversation:(id)a3 withSessionToken:(id)a4;
- (id)callUpdateForChat:(id)a3;
- (id)upgradeCallForConversation:(id)a3 withSessionToken:(id)a4;
- (id)upgradeSessionUUIDForCallWithUUID:(id)a3;
- (void)chatEnded:(id)a3;
- (void)chatStartedConnecting:(id)a3;
- (void)endCallWithUUID:(id)a3;
- (void)endCallWithUUIDAsAnsweredElsewhere:(id)a3;
- (void)endCallWithUUIDAsDeclinedElsewhere:(id)a3;
- (void)endCallWithUUIDAsLocalHangup:(id)a3;
- (void)inviteIDSPeersWithAction:(id)a3 destinations:(id)a4 joinCallActionToFulfill:(id)a5 completion:(id)a6;
- (void)provider:(id)a3 performJoinCallAction:(id)a4;
- (void)providerDidBegin:(id)a3;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)updateProviderConfigurationWithAccounts:(id)a3;
- (void)updateProviderConfigurationWithAccounts:(id)a3 senderIdentities:(id)a4;
- (void)updateProviderConfigurationWithSenderIdentities:(id)a3;
- (void)upgradeChatIfNecessary:(id)a3;
@end

@implementation CSDFaceTimeIDSProviderDelegate

- (CSDFaceTimeIDSProviderDelegate)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDFaceTimeIDSProviderDelegate.m" lineNumber:47 description:{@"%s is not available. Use an available initializer instead.", "-[CSDFaceTimeIDSProviderDelegate init]"}];

  return 0;
}

- (CSDFaceTimeIDSProviderDelegate)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CSDFaceTimeIDSProviderDelegateCapabilities);
  v6 = [(CSDFaceTimeIDSProviderDelegate *)self initWithCapabilities:v5 queue:v4];

  return v6;
}

- (CSDFaceTimeIDSProviderDelegate)initWithCapabilities:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = CSDFaceTimeIDSProviderDelegate;
  v9 = [(CSDAbstractIDSProviderDelegate *)&v35 initWithCapabilities:v7 queue:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    v11 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v10->_featureFlags;
    v10->_featureFlags = v11;

    objc_storeStrong(&v10->_capabilities, a3);
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

- (id)accountWithUUID:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDFaceTimeIDSProviderDelegate *)self callProviderManager];
  v9 = [v8 faceTimeProvider];
  v10 = [v9 senderIdentityForUUID:v6];

  if (!v10)
  {
    v11 = [(CSDFaceTimeIDSProviderDelegate *)self callProviderManager];
    v12 = [v11 faceTimeProvider];
    v10 = [v12 senderIdentityForAccountUUID:v6];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = [v7 service];
  v14 = [v13 accounts];

  v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v15)
  {
    v27 = v7;
    v28 = v6;
    v16 = *v30;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = [v18 loginID];
        v20 = TUHandleForIDSCanonicalAddress();

        v21 = [v10 handle];
        v22 = [v21 isEqualToHandle:v20];

        if (v22)
        {
          v23 = [(CSDFaceTimeIDSProviderDelegate *)self isAccountActive];
          v24 = (v23)[2](v23, v18);

          if (v24)
          {
            v15 = v18;
            v25 = sub_100004778();
            v7 = v27;
            v6 = v28;
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
            v7 = v27;
            v6 = v28;
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

      v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v7 = v27;
    v6 = v28;
  }

LABEL_19:

  return v15;
}

- (void)inviteIDSPeersWithAction:(id)a3 destinations:(id)a4 joinCallActionToFulfill:(id)a5 completion:(id)a6
{
  v10 = a3;
  v74 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(CSDFaceTimeIDSProviderDelegate *)self serverBag];
  v14 = [v13 isLoaded];

  if (v14)
  {
    v15 = [(CSDFaceTimeIDSProviderDelegate *)self serverBag];
    v16 = [v15 isQuickRelaySupported];

    if ((v16 & 1) == 0)
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

      v12[2](v12, &__NSArray0__struct, 0);
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

  v20 = [v10 handle];
  v21 = [(CSDAbstractIDSProviderDelegate *)self waitingChatWithHandle:v20 isOutgoing:0];

  if (v21)
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Tried to make an outgoing call when we already had a ringing call with the same destination: %@", buf, 0xCu);
    }

    v12[2](v12, &__NSArray0__struct, 1);
    [v10 fail];
    [v11 fail];
    v23 = [v21 UUID];
    v24 = [[CXAnswerCallAction alloc] initWithCallUUID:v23];
    v25 = [[CXTransaction alloc] initWithAction:v24];
    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Requesting transaction to answer already-ringing call", buf, 2u);
    }

    v27 = [(CSDFaceTimeIDSProviderDelegate *)self faceTimeDemuxerDelegate];
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_100104D14;
    v75[3] = &unk_10061A498;
    v76 = v23;
    v77 = self;
    v28 = v23;
    [v27 providerDelegate:self requestedTransaction:v25 completion:v75];
  }

  else
  {
    v29 = [(CSDFaceTimeIDSProviderDelegate *)self facetimeIDSServiceGenerator];
    v24 = (v29)[2](v29, [v10 isVideo]);

    v30 = [v10 localSenderIdentityUUID];
    v73 = v11;
    if (v30)
    {
      v31 = [v10 localSenderIdentityUUID];
      v32 = [(CSDFaceTimeIDSProviderDelegate *)self accountWithUUID:v31 service:v24];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = [v24 account];
      }

      v25 = v34;

      v11 = v73;
    }

    else
    {
      v25 = [v24 account];
    }

    v35 = [(CSDFaceTimeIDSProviderDelegate *)self isAccountActive];
    v36 = (v35)[2](v35, v25);

    if (v36)
    {
      v71 = v24;
      v72 = [v25 csd_ISOCountryCode];
      if ([v72 length])
      {
        v37 = objc_opt_class();
        v38 = [v10 handle];
        v39 = [v38 tuHandle];
        v40 = [v37 handleByFullyQualifyingHandle:v39 usingCountryCode:v72];
        v41 = [v40 value];
        v42 = [v41 IDSFormattedDestinationID];

        v11 = v73;
      }

      else
      {
        v42 = 0;
      }

      if ([v42 length])
      {
        v84[0] = IDSSessionTransportTypeKey;
        v84[1] = IDSSessionWaitForPreConnectionDataKey;
        v85[0] = &off_10063EC78;
        v85[1] = &__kCFBooleanTrue;
        v85[2] = &__kCFBooleanTrue;
        v84[2] = IDSSessionAlwaysSkipSelfKey;
        v84[3] = IDSSessionInvitationIsRetryKey;
        v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isRetry]);
        v85[3] = v44;
        v45 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:4];

        v46 = sub_100004778();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v79 = v25;
          v80 = 2112;
          v81 = v74;
          v82 = 2112;
          v83 = v45;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Starting FaceTime IDS chat using account: %@ destinations: %@ options: %@", buf, 0x20u);
        }

        v70 = v42;
        if ([v11 screenShareRequestType])
        {
          v47 = [(CSDFaceTimeIDSProviderDelegate *)self featureFlags];
          v48 = [v47 requestToScreenShareEnabled];
        }

        else
        {
          v48 = 0;
        }

        v50 = [(CSDFaceTimeIDSProviderDelegate *)self outgoingSessionProviderGenerator];
        v51 = [(CSDFaceTimeIDSProviderDelegate *)self queue];
        v69 = (v50)[2](v50, v25, v74, v45, v48, v51);

        v52 = [[CSDExternalIDSDualSession alloc] initAsInitiatorWithSessionProvider:v69];
        v53 = [(CSDFaceTimeIDSProviderDelegate *)self callProviderManager];
        v68 = [v53 faceTimeProvider];

        [v10 isVideo];
        [v10 isUpgrade];
        v65 = v52;
        [v52 setInvitationTimeout:TUOutgoingInvitationTimeoutForCallProviderAndIsUpgrade()];
        v54 = [(CSDFaceTimeIDSProviderDelegate *)self outgoingChatGenerator];
        v64 = [v10 callUUID];
        [v10 handle];
        v55 = v67 = v25;
        [v55 tuHandle];
        v56 = v66 = v45;
        v57 = [v10 isVideo];
        v58 = [v10 isRelay];
        v59 = [v10 localSenderIdentityUUID];
        v60 = (v54)[2](v54, v52, v64, v56, v57, v58, v59);

        v25 = v67;
        [v60 setDelegate:self];
        [v60 setShouldSuppressInCallUI:{objc_msgSend(v10, "shouldSuppressInCallUI")}];
        [v60 startWithVideoAspectRatioDescriptor:v10 inviteCompletion:v12];
        [(CSDAbstractIDSProviderDelegate *)self updateCacheWithChat:v60];
        v61 = [(CSDAbstractIDSProviderDelegate *)self provider];
        v62 = [v10 callUUID];
        v63 = [(CSDFaceTimeIDSProviderDelegate *)self callUpdateForChat:v60];
        [v61 reportCallWithUUID:v62 updated:v63];

        [v10 fulfill];
        [v73 fulfill];

        v11 = v73;
        v21 = 0;
        v24 = v71;
        v42 = v70;
      }

      else
      {
        v49 = sub_100004778();
        v24 = v71;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100474C58(v10, v42, v49);
        }

        v12[2](v12, &__NSArray0__struct, 0);
      }
    }

    else
    {
      v43 = sub_100004778();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_100474BEC();
      }

      v12[2](v12, &__NSArray0__struct, 0);
    }
  }

LABEL_42:
}

- (id)callUpdateForChat:(id)a3
{
  v4 = a3;
  v5 = [[CXCallUpdate alloc] initWithFaceTimeIDSChat:v4];
  v6 = [(CSDFaceTimeIDSProviderDelegate *)self ISOCountryCodeForChat:v4];

  [v5 setISOCountryCode:v6];

  return v5;
}

- (id)upgradeCallForConversation:(id)a3 withSessionToken:(id)a4
{
  v5 = [(CSDFaceTimeIDSProviderDelegate *)self callForConversation:a3 withSessionToken:a4];
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

    v7 = [v5 UUID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)callForConversation:(id)a3 withSessionToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [(CSDAbstractIDSProviderDelegate *)self chats];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:16];
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
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v22 + 1) + 8 * v12);
      v14 = [v13 remoteFromID];
      v21 = 0;
      v15 = [v14 _stripPotentialTokenURIWithToken:&v21];
      v16 = v21;

      if (v16)
      {
        if ([v16 isEqualToData:v7])
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
            v29 = v6;
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
        v10 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:16];
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
    sub_100474DF0(v6, v19);
  }

  v18 = 0;
LABEL_21:

  return v18;
}

- (void)provider:(id)a3 performJoinCallAction:(id)a4
{
  v5 = a4;
  v6 = [v5 callUUID];
  v7 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:v6];

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
      v10 = v5;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Failing action %@ we determined that chat %@ cannot be upgraded.", &v9, 0x16u);
    }

    [v5 fail];
  }
}

- (id)ISOCountryCodeForCallWithUUID:(id)a3
{
  v4 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:a3];
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

- (id)ISOCountryCodeForChat:(id)a3
{
  v4 = a3;
  v5 = [v4 isVideo];
  v6 = off_100616620;
  if (!v5)
  {
    v6 = off_100616610;
  }

  v7 = [(__objc2_class *)*v6 sharedInstance];
  if (v7)
  {
    v8 = [v4 localSenderIdentityUUID];
    if (v8)
    {
      v9 = [(CSDFaceTimeIDSProviderDelegate *)self accountWithUUID:v8 service:v7];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [v7 account];
      }

      v13 = v11;
    }

    else
    {
      v13 = [v7 account];
    }

    v12 = [v13 csd_ISOCountryCode];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isManagingCallWithUUID:(id)a3
{
  v3 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isUpgradingCallWithUUID:(id)a3
{
  v4 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:a3];
  if (v4)
  {
    v5 = [(CSDFaceTimeIDSProviderDelegate *)self chatsPendingUpgrade];
    v6 = [v5 containsObject:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canUpgradeChat:(id)a3
{
  v4 = a3;
  v5 = [(CSDFaceTimeIDSProviderDelegate *)self chatsPendingUpgrade];
  v6 = [v5 containsObject:v4];

  if (v4 && [v4 isConnected] && objc_msgSend(v4, "isVideo") && objc_msgSend(v4, "isSendingVideo"))
  {
    v7 = [v4 isSendingAudio] & (v6 ^ 1);
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
    v14 = v4;
    v15 = 1024;
    v16 = [v4 isConnected];
    v17 = 1024;
    v18 = [v4 isVideo];
    v19 = 1024;
    v20 = [v4 isSendingVideo];
    v21 = 1024;
    v22 = [v4 isSendingAudio];
    v23 = 1024;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Auto-upgrading because chatToUpgrade is %@, isConnected: %d, isVideo: %d, isSendingVideo: %d, isSendingAudio: %d isChatPendingUpgrade: %d", &v11, 0x34u);
  }

  return v7;
}

- (void)upgradeChatIfNecessary:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Upgrading chat: %@", buf, 0xCu);
  }

  v6 = [(CSDFaceTimeIDSProviderDelegate *)self chatsPendingUpgrade];
  [v6 addObject:v4];

  [(CSDFaceTimeIDSProviderDelegate *)self upgradeTimeout];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  v9 = [(CSDFaceTimeIDSProviderDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001057E0;
  block[3] = &unk_100619D38;
  v12 = v4;
  v10 = v4;
  dispatch_after(v8, v9, block);
}

- (id)upgradeSessionUUIDForCallWithUUID:(id)a3
{
  v3 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:a3];
  v4 = [v3 upgradeSessionUUID];

  return v4;
}

- (BOOL)hasCallStartedConnectingWithUUID:(id)a3
{
  v3 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:a3];
  v4 = [v3 dateStartedConnecting];
  v5 = v4 != 0;

  return v5;
}

- (void)endCallWithUUIDAsAnsweredElsewhere:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:v4];
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
      v8 = [v4 UUIDString];
      v9 = [(CSDAbstractIDSProviderDelegate *)self chats];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find chat with UUID %@. All chats: %@", &v10, 0x16u);
    }
  }
}

- (void)endCallWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:v4];
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
      v8 = [v4 UUIDString];
      v9 = [(CSDAbstractIDSProviderDelegate *)self chats];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find chat with UUID %@. All chats: %@", &v10, 0x16u);
    }
  }
}

- (void)endCallWithUUIDAsLocalHangup:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:v4];
  v6 = v5;
  if (v5)
  {
    [v5 cancelInvitationWithLocalHangup];
    if ([v6 isConnected])
    {
      v7 = sub_100004778();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v4 UUIDString];
        v9 = [(CSDAbstractIDSProviderDelegate *)self chats];
        v13 = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = v9;
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
      v11 = [v4 UUIDString];
      v12 = [(CSDAbstractIDSProviderDelegate *)self chats];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find chat with UUID %@. All chats: %@", &v13, 0x16u);
    }
  }
}

- (void)endCallWithUUIDAsDeclinedElsewhere:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:v4];
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
      v8 = [v4 UUIDString];
      v9 = [(CSDAbstractIDSProviderDelegate *)self chats];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find chat with UUID %@. All chats: %@", &v10, 0x16u);
    }
  }
}

- (BOOL)isMediaAllowedForChat:(id)a3
{
  v4 = a3;
  v5 = [(CSDFaceTimeIDSProviderDelegate *)self faceTimeDemuxerDelegate];
  v6 = [v4 UUID];
  v7 = [v5 providerDelegate:self isManagingCallWithUUID:v6];

  if (v7)
  {
    v12.receiver = self;
    v12.super_class = CSDFaceTimeIDSProviderDelegate;
    v8 = [(CSDAbstractIDSProviderDelegate *)&v12 isMediaAllowedForChat:v4];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 UUID];
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing media for chat as the call provider is not managing a call with UUID: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (void)chatStartedConnecting:(id)a3
{
  v4 = a3;
  if ([-[CSDFaceTimeIDSProviderDelegate superclass](self "superclass")])
  {
    v11.receiver = self;
    v11.super_class = CSDFaceTimeIDSProviderDelegate;
    [(CSDFaceTimeIDSProviderDelegate *)&v11 chatStartedConnecting:v4];
  }

  if ([v4 isOutgoing])
  {
    v5 = [(CSDFaceTimeIDSProviderDelegate *)self faceTimeDemuxerDelegate];
    v6 = [v4 UUID];
    v7 = [v4 dateStartedConnecting];
    [v5 providerDelegate:self callWithUUID:v6 startedConnectingAtDate:v7];

    v8 = [(CSDFaceTimeIDSProviderDelegate *)self callUpdateForChat:v4];
    v9 = [(CSDAbstractIDSProviderDelegate *)self provider];
    v10 = [v4 UUID];
    [v9 reportCallWithUUID:v10 updated:v8];
  }
}

- (void)chatEnded:(id)a3
{
  v4 = a3;
  [(CSDAbstractIDSProviderDelegate *)self updateCacheWithChat:v4];
  v5 = [(CSDFaceTimeIDSProviderDelegate *)self chatsPendingUpgrade];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(CSDFaceTimeIDSProviderDelegate *)self faceTimeDemuxerDelegate];
    v8 = [v4 UUID];
    v9 = [v4 dateEnded];
    v10 = [v4 endedReason];
    v11 = [v4 failureContext];
    [v7 providerDelegate:self callWithUUID:v8 endedAtDate:v9 withReason:v10 failureContext:v11];

    if ([-[CSDFaceTimeIDSProviderDelegate superclass](self "superclass")])
    {
      v14.receiver = self;
      v14.super_class = CSDFaceTimeIDSProviderDelegate;
      [(CSDAbstractIDSProviderDelegate *)&v14 chatEnded:v4];
    }
  }

  v12 = +[CSDReportingController sharedInstance];
  [v12 chatReceived:v4];

  v13 = [(CSDFaceTimeIDSProviderDelegate *)self chatsPendingUpgrade];
  [v13 removeObject:v4];
}

- (BOOL)isMomentsAvailableForChat:(id)a3
{
  v3 = [(CSDFaceTimeIDSProviderDelegate *)self capabilities];
  v4 = [v3 isMomentsAvailable];

  return v4;
}

- (void)updateProviderConfigurationWithAccounts:(id)a3
{
  v6 = a3;
  v4 = [(CSDFaceTimeIDSProviderDelegate *)self accounts];

  if (v4 != v6)
  {
    [(CSDFaceTimeIDSProviderDelegate *)self setAccounts:v6];
    v5 = [(CSDFaceTimeIDSProviderDelegate *)self telephonySenderIdentities];
    [(CSDFaceTimeIDSProviderDelegate *)self updateProviderConfigurationWithAccounts:v6 senderIdentities:v5];
  }
}

- (void)updateProviderConfigurationWithSenderIdentities:(id)a3
{
  v6 = a3;
  v4 = [(CSDFaceTimeIDSProviderDelegate *)self telephonySenderIdentities];

  if (v4 != v6)
  {
    [(CSDFaceTimeIDSProviderDelegate *)self setTelephonySenderIdentities:v6];
    v5 = [(CSDFaceTimeIDSProviderDelegate *)self accounts];
    [(CSDFaceTimeIDSProviderDelegate *)self updateProviderConfigurationWithAccounts:v5 senderIdentities:v6];
  }
}

- (void)updateProviderConfigurationWithAccounts:(id)a3 senderIdentities:(id)a4
{
  v30 = a3;
  v5 = a4;
  v28 = objc_alloc_init(NSMutableOrderedSet);
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v44 = v5;
    v45 = 2112;
    v46 = v30;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Matching sender identities %@ to IDS accounts %@", buf, 0x16u);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
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
        v9 = v30;
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
              v15 = [v8 account];
              v16 = [v15 UUID];

              v17 = [v14 matchingSim];
              v18 = [v17 SIMIdentifier];
              v19 = [v16 UUIDString];
              v20 = [v18 isEqualToString:v19];

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

  v21 = [(CSDAbstractIDSProviderDelegate *)self provider];
  v22 = [v21 configuration];
  v23 = [v22 copy];

  [v23 setPrioritizedSenderIdentities:v28];
  v24 = sub_100004778();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Updating FaceTime provider with configuration %@", buf, 0xCu);
  }

  v25 = [(CSDAbstractIDSProviderDelegate *)self provider];
  [v25 setConfiguration:v23];
}

- (void)providerDidBegin:(id)a3
{
  v7.receiver = self;
  v7.super_class = CSDFaceTimeIDSProviderDelegate;
  [(CSDAbstractIDSProviderDelegate *)&v7 providerDidBegin:a3];
  v4 = +[CSDFaceTimeVideoIDSService sharedInstance];
  v5 = [v4 service];
  v6 = [v5 accounts];
  [(CSDFaceTimeIDSProviderDelegate *)self updateProviderConfigurationWithAccounts:v6];
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "service: %@ activeAccountsChanged: %@", &v9, 0x16u);
  }

  [(CSDFaceTimeIDSProviderDelegate *)self updateProviderConfigurationWithAccounts:v7];
}

- (CSDFaceTimeProviderDelegateManagerDelegate)faceTimeDemuxerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTimeDemuxerDelegate);

  return WeakRetained;
}

@end