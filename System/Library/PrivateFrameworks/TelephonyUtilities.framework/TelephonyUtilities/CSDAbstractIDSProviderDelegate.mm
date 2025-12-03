@interface CSDAbstractIDSProviderDelegate
+ (id)handleByFullyQualifyingHandle:(id)handle usingCountryCode:(id)code;
- (BOOL)isCellularDataAllowedForChat:(id)chat;
- (BOOL)isCellularDataPreferredForChat:(id)chat;
- (BOOL)isWiFiAllowedForChat:(id)chat;
- (BOOL)shouldAcceptIncomingInvite;
- (CGSize)localPortraitAspectRatioForChat:(id)chat;
- (CSDAbstractIDSProviderDelegate)init;
- (CSDAbstractIDSProviderDelegate)initWithCapabilities:(id)capabilities queue:(id)queue;
- (id)callUpdateForChat:(id)chat;
- (id)callUpdateForPendingChat:(id)chat;
- (id)chatWithUUID:(id)d;
- (id)chats;
- (id)waitingChatWithHandle:(id)handle isOutgoing:(BOOL)outgoing;
- (int)TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:(int64_t)state;
- (void)chat:(id)chat changedBytesOfDataUsed:(int64_t)used;
- (void)chat:(id)chat inputFrequencyLevelChangedTo:(id)to;
- (void)chat:(id)chat inputLevelChangedTo:(float)to;
- (void)chat:(id)chat outputFrequencyLevelChangedTo:(id)to;
- (void)chat:(id)chat outputLevelChangedTo:(float)to;
- (void)chatConnected:(id)connected;
- (void)chatEnded:(id)ended;
- (void)chatSentInvitation:(id)invitation;
- (void)provider:(id)provider performAnswerCallAction:(id)action;
- (void)provider:(id)provider performEnableVideoCallAction:(id)action;
- (void)provider:(id)provider performEndCallAction:(id)action;
- (void)provider:(id)provider performSetHeldCallAction:(id)action;
- (void)provider:(id)provider performSetMutedCallAction:(id)action;
- (void)provider:(id)provider performSetRelayingCallAction:(id)action;
- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action;
- (void)provider:(id)provider performSetSharingScreenCallAction:(id)action;
- (void)provider:(id)provider performSetVideoPresentationSizeCallAction:(id)action;
- (void)provider:(id)provider performSetVideoPresentationStateCallAction:(id)action;
- (void)providerDidBegin:(id)begin;
- (void)providerDidReset:(id)reset;
- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context;
- (void)updateCacheWithChat:(id)chat;
@end

@implementation CSDAbstractIDSProviderDelegate

- (CSDAbstractIDSProviderDelegate)init
{
  v3 = objc_alloc_init(CSDIDSProviderDelegateCapabilities);
  v4 = [(CSDAbstractIDSProviderDelegate *)self initWithCapabilities:v3 queue:&_dispatch_main_q];

  return v4;
}

- (CSDAbstractIDSProviderDelegate)initWithCapabilities:(id)capabilities queue:(id)queue
{
  capabilitiesCopy = capabilities;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = CSDAbstractIDSProviderDelegate;
  v9 = [(CSDAbstractIDSProviderDelegate *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_capabilities, capabilities);
    objc_storeStrong(&v10->_queue, queue);
    v11 = +[NSMutableOrderedSet orderedSet];
    mutableChats = v10->_mutableChats;
    v10->_mutableChats = v11;

    incomingSessionProviderGenerator = v10->_incomingSessionProviderGenerator;
    v10->_incomingSessionProviderGenerator = &stru_10061B9F0;

    objc_initWeak(&location, v10);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000FD63C;
    v21 = &unk_10061BA18;
    objc_copyWeak(&v22, &location);
    v14 = objc_retainBlock(&v18);
    incomingChatGenerator = v10->_incomingChatGenerator;
    v10->_incomingChatGenerator = v14;

    v16 = [NSUserDefaults tu_defaults:v18];
    v10->_shouldOverrideNetworkAsAvailable = [v16 BOOLForKey:@"NetworkAvailabilityCheckOverrideValue"];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (id)chats
{
  mutableChats = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  array = [mutableChats array];
  v4 = [array copy];

  return v4;
}

- (id)chatWithUUID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mutableChats = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  v6 = [mutableChats countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(mutableChats);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uUID = [v9 UUID];
        v11 = [uUID isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [mutableChats countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)updateCacheWithChat:(id)chat
{
  chatCopy = chat;
  dateEnded = [chatCopy dateEnded];

  mutableChats = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  v7 = mutableChats;
  if (dateEnded)
  {
    [mutableChats removeObject:chatCopy];
  }

  else
  {
    [mutableChats addObject:chatCopy];
  }
}

+ (id)handleByFullyQualifyingHandle:(id)handle usingCountryCode:(id)code
{
  handleCopy = handle;
  codeCopy = code;
  v7 = handleCopy;
  v8 = v7;
  if ([v7 type] == 2)
  {
    value = [v7 value];
    v10 = [TUPhoneNumber phoneNumberWithDigits:value countryCode:codeCopy];

    unformattedInternationalRepresentation = [v10 unformattedInternationalRepresentation];
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = codeCopy;
      v16 = 2112;
      v17 = unformattedInternationalRepresentation;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Used country code '%@' to determine international phone number representation: %@", &v14, 0x16u);
    }

    v8 = v7;
    if (unformattedInternationalRepresentation)
    {
      v8 = [[TUHandle alloc] initWithType:objc_msgSend(v7 value:{"type"), unformattedInternationalRepresentation}];
    }
  }

  return v8;
}

- (BOOL)shouldAcceptIncomingInvite
{
  capabilities = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isWiFiAvailable = [capabilities isWiFiAvailable];

  capabilities2 = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isWiFiAllowed = [capabilities2 isWiFiAllowed];

  capabilities3 = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isCellularDataAvailable = [capabilities3 isCellularDataAvailable];

  capabilities4 = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isCellularDataAllowed = [capabilities4 isCellularDataAllowed];

  v11 = (isWiFiAvailable & isWiFiAllowed & 1) != 0 || (isCellularDataAvailable & isCellularDataAllowed & 1) != 0 || [(CSDAbstractIDSProviderDelegate *)self shouldOverrideNetworkAsAvailable];
  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      v13 = @"allowed";
    }

    else
    {
      v13 = @"ignored";
    }

    v15 = 138413570;
    v16 = v13;
    v17 = 1024;
    v18 = isWiFiAvailable;
    v19 = 1024;
    v20 = isWiFiAllowed & 1;
    v21 = 1024;
    v22 = isCellularDataAvailable;
    v23 = 1024;
    v24 = isCellularDataAllowed & 1;
    v25 = 1024;
    shouldOverrideNetworkAsAvailable = [(CSDAbstractIDSProviderDelegate *)self shouldOverrideNetworkAsAvailable];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Determined that invite should be %@ - (isWiFiAvailable=%d isWiFiAllowed=%d isCellularDataAvailable=%d isCellularDataAllowed=%d shouldOverrideNetworkAsAvailable=%d)", &v15, 0x2Au);
  }

  return v11;
}

- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  dCopy = d;
  contextCopy = context;
  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    typeCopy2 = serviceCopy;
    v35 = 2112;
    v36 = accountCopy;
    v37 = 2112;
    v38 = dCopy;
    v39 = 2112;
    v40 = contextCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Invite received for service %@ account %@ from (fromID=%@) with context: %@", buf, 0x2Au);
  }

  v17 = sub_100004778();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v30 = serviceCopy;
    if (v18)
    {
      *buf = 134217984;
      typeCopy2 = type;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Recieved pending message of type %ld", buf, 0xCu);
    }

    v19 = IDSCopyAddressDestinationForDestination();
    v17 = IDSCopyRawAddressForDestination();

    v20 = [TUHandle handleWithDestinationID:v17];
    v21 = [CSDIDSPendingChat alloc];
    v22 = +[NSUUID UUID];
    serviceIdentifier = [contextCopy serviceIdentifier];
    v24 = -[CSDIDSPendingChat initWithUUID:isVideo:handle:](v21, "initWithUUID:isVideo:handle:", v22, [serviceIdentifier containsString:@"audio"] ^ 1, v20);

    if (type == 6)
    {
      if (![(CSDAbstractIDSProviderDelegate *)self shouldAcceptIncomingInvite])
      {
LABEL_13:

        serviceCopy = v30;
        goto LABEL_14;
      }

      provider2 = [(CSDAbstractIDSProviderDelegate *)self callUpdateForPendingChat:v24];
      provider = [(CSDAbstractIDSProviderDelegate *)self provider];
      uuid = [(CSDIDSPendingChat *)v24 uuid];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000FDFC4;
      v31[3] = &unk_10061A4C0;
      v32 = v24;
      [provider reportNewIncomingCallWithUUID:uuid update:provider2 completion:v31];

      uuid2 = v32;
    }

    else
    {
      provider2 = [(CSDAbstractIDSProviderDelegate *)self provider];
      uuid2 = [(CSDIDSPendingChat *)v24 uuid];
      v29 = +[NSDate date];
      [provider2 reportCallWithUUID:uuid2 endedAtDate:v29 reason:3];
    }

    goto LABEL_13;
  }

  if (v18)
  {
    *buf = 134217984;
    typeCopy2 = type;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not handling pending message of type: %ld", buf, 0xCu);
  }

LABEL_14:
}

- (id)callUpdateForPendingChat:(id)chat
{
  chatCopy = chat;
  v4 = objc_alloc_init(CXCallUpdate);
  [v4 setHasVideo:{objc_msgSend(chatCopy, "isVideo")}];
  handle = [chatCopy handle];

  v6 = [CXHandle handleWithTUHandle:handle];
  [v4 setRemoteHandle:v6];

  [v4 setRequiresAuthentication:1];

  return v4;
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context
{
  accountCopy = account;
  sessionCopy = session;
  dCopy = d;
  contextCopy = context;
  v15 = [[CSDMessagingCallMessage alloc] initWithData:contextCopy];
  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *&buf[4] = sessionCopy;
    v94 = 2112;
    v95 = accountCopy;
    v96 = 2112;
    v97 = dCopy;
    v98 = 2112;
    v99 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Invite received for session %@ account %@ from (fromID=%@) with data: %@", buf, 0x2Au);
  }

  if ([(CSDMessagingCallMessage *)v15 type]!= 1)
  {
    v19 = sub_100004778();
    v60 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v60)
      {
        type = [(CSDMessagingCallMessage *)v15 type];
        if (type >= 3)
        {
          v62 = [NSString stringWithFormat:@"(unknown: %i)", type];
        }

        else
        {
          v62 = off_10061BA38[type];
        }

        *buf = 138412290;
        *&buf[4] = v62;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Ignoring incoming invite since message with type=%@ was not an invite.", buf, 0xCu);
      }

      goto LABEL_35;
    }

    if (!v60)
    {
      goto LABEL_35;
    }

    *buf = 0;
    v63 = "[WARN] Ignoring incoming invite since accompanying message was nil";
    v64 = v19;
    v65 = 2;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, v63, buf, v65);
    goto LABEL_35;
  }

  if (![(CSDAbstractIDSProviderDelegate *)self shouldAcceptIncomingInvite])
  {
    v19 = sub_100004778();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 67109120;
    v63 = "Ignoring incoming invite since shouldAcceptIncomingInvite is %d";
    v64 = v19;
    v65 = 8;
    goto LABEL_25;
  }

  incomingSessionProviderGenerator = [(CSDAbstractIDSProviderDelegate *)self incomingSessionProviderGenerator];
  queue = [(CSDAbstractIDSProviderDelegate *)self queue];
  v19 = (incomingSessionProviderGenerator)[2](incomingSessionProviderGenerator, sessionCopy, queue);

  v20 = [[CSDExternalIDSDualSession alloc] initAsReceiverWithSessionProvider:v19 remoteFromID:dCopy remoteProtocolVersion:[(CSDMessagingCallMessage *)v15 protocolVersion]];
  [v20 setInvitationTimeout:TUIncomingInvitationTimeout()];
  v21 = IDSCopyAddressDestinationForDestination();
  v22 = IDSCopyRawAddressForDestination();

  v81 = v22;
  v83 = [[CXHandle alloc] initWithDestinationID:v22];
  v23 = [CSDAbstractIDSProviderDelegate waitingChatWithHandle:"waitingChatWithHandle:isOutgoing:" isOutgoing:?];
  v24 = v23;
  selfCopy = self;
  v82 = v20;
  if (!v23)
  {
    goto LABEL_7;
  }

  sessionUUID = [v23 sessionUUID];
  [v20 UUID];
  v26 = contextCopy;
  v27 = v15;
  v28 = dCopy;
  v29 = accountCopy;
  v30 = sessionCopy;
  v32 = v31 = v24;
  v33 = [sessionUUID caseInsensitiveCompare:v32];

  v24 = v31;
  sessionCopy = v30;
  accountCopy = v29;
  dCopy = v28;
  v15 = v27;
  contextCopy = v26;
  v20 = v82;

  v34 = v33 + 1 == 0;
  self = selfCopy;
  if (v34)
  {
    v72 = sub_100004778();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Declining this invite because we found a sending chat with the same destination: %@", buf, 0xCu);
    }

    [v82 declineInvitation];
  }

  else
  {
LABEL_7:
    v78 = v24;
    v79 = v19;
    v80 = contextCopy;
    incomingChatGenerator = [(CSDAbstractIDSProviderDelegate *)self incomingChatGenerator];
    tuHandle = [v83 tuHandle];
    protoWantsVideo = [(CSDMessagingCallMessage *)v15 protoWantsVideo];
    inviteData = [(CSDMessagingCallMessage *)v15 inviteData];
    faceTimeInviteDictionary = [inviteData faceTimeInviteDictionary];
    v40 = v20;
    v41 = selfCopy;
    v42 = (incomingChatGenerator)[2](incomingChatGenerator, v40, tuHandle, protoWantsVideo, faceTimeInviteDictionary);

    [v42 setDelegate:selfCopy];
    [v42 setRemoteMomentsAvailable:{-[CSDMessagingCallMessage isMomentsAvailable](v15, "isMomentsAvailable")}];
    [v42 setShouldSuppressInCallUI:{-[CSDMessagingCallMessage shouldSuppressInCallUI](v15, "shouldSuppressInCallUI")}];
    v43 = [(CSDAbstractIDSProviderDelegate *)selfCopy callUpdateForChat:v42];
    loginID = [accountCopy loginID];
    v45 = [loginID length];

    if (v45)
    {
      v76 = accountCopy;
      v77 = v43;
      v73 = v42;
      v74 = dCopy;
      v75 = sessionCopy;
      loginID2 = [accountCopy loginID];
      v47 = TUHandleForIDSCanonicalAddress();

      provider = [(CSDAbstractIDSProviderDelegate *)selfCopy provider];
      configuration = [provider configuration];
      prioritizedSenderIdentities = [configuration prioritizedSenderIdentities];

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v51 = prioritizedSenderIdentities;
      v52 = [v51 countByEnumeratingWithState:&v88 objects:v92 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v89;
        while (2)
        {
          for (i = 0; i != v53; i = i + 1)
          {
            if (*v89 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = *(*(&v88 + 1) + 8 * i);
            handle = [v56 handle];
            tuHandle2 = [handle tuHandle];
            v59 = [tuHandle2 isEqualToHandle:v47];

            if (v59)
            {
              uUID = [v56 UUID];
              [v77 setLocalSenderIdentityUUID:uUID];

              account = [v56 account];
              uUID2 = [account UUID];
              [v77 setLocalSenderIdentityAccountUUID:uUID2];

              goto LABEL_29;
            }
          }

          v53 = [v51 countByEnumeratingWithState:&v88 objects:v92 count:16];
          if (v53)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:

      sessionCopy = v75;
      accountCopy = v76;
      v42 = v73;
      dCopy = v74;
      v41 = selfCopy;
      v43 = v77;
    }

    provider2 = [(CSDAbstractIDSProviderDelegate *)v41 provider];
    uUID3 = [v42 UUID];
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_1000FE8BC;
    v85[3] = &unk_10061A6A0;
    v85[4] = v41;
    v86 = v42;
    v20 = v82;
    v87 = v82;
    v71 = v42;
    [provider2 reportNewIncomingCallWithUUID:uUID3 update:v43 completion:v85];

    v19 = v79;
    contextCopy = v80;
    v24 = v78;
  }

LABEL_35:
}

- (id)waitingChatWithHandle:(id)handle isOutgoing:(BOOL)outgoing
{
  outgoingCopy = outgoing;
  handleCopy = handle;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mutableChats = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  v8 = [mutableChats countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = *v19;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(mutableChats);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      dateStartedConnecting = [v12 dateStartedConnecting];
      if (dateStartedConnecting)
      {
        goto LABEL_11;
      }

      dateStartedConnecting = [v12 handle];
      tuHandle = [handleCopy tuHandle];
      if ((TUHandlesAreCanonicallyEqual() & 1) == 0)
      {

LABEL_11:
        continue;
      }

      isOutgoing = [v12 isOutgoing];

      if (isOutgoing == outgoingCopy)
      {
        v16 = v12;
        goto LABEL_15;
      }
    }

    v9 = [mutableChats countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v9);
LABEL_14:
  v16 = 0;
LABEL_15:

  return v16;
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

- (id)callUpdateForChat:(id)chat
{
  chatCopy = chat;
  v4 = [[CXCallUpdate alloc] initWithIDSChat:chatCopy];

  return v4;
}

- (void)providerDidBegin:(id)begin
{
  beginCopy = begin;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = beginCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "provider: %@", &v8, 0xCu);
  }

  [(CSDAbstractIDSProviderDelegate *)self setProvider:beginCopy];
  providerDidBegin = [(CSDAbstractIDSProviderDelegate *)self providerDidBegin];

  if (providerDidBegin)
  {
    providerDidBegin2 = [(CSDAbstractIDSProviderDelegate *)self providerDidBegin];
    providerDidBegin2[2]();
  }
}

- (void)providerDidReset:(id)reset
{
  resetCopy = reset;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = resetCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "provider: %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  mutableChats = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  v7 = [mutableChats countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(mutableChats);
        }

        [*(*(&v11 + 1) + 8 * v10) end];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [mutableChats countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)provider:(id)provider performAnswerCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v12, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  dateConnected = [v8 dateConnected];

  if (dateConnected)
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100474A2C(v8, v10);
    }

    if (([actionCopy isComplete] & 1) == 0)
    {
      [actionCopy fail];
    }
  }

  else
  {
    if ([actionCopy downgradeToAudio])
    {
      [v8 setVideo:0];
      [v8 setSendingVideo:0];
    }

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling answer on chat %@", &v12, 0xCu);
    }

    [v8 answerWithVideoAspectRatioDescriptor:actionCopy];
  }
}

- (void)provider:(id)provider performEndCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v10, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling end on chat %@", &v10, 0xCu);
  }

  [v8 end];
  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fulfill];
  }
}

- (void)provider:(id)provider performSetHeldCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v15, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  dateConnected = [v8 dateConnected];

  if (dateConnected)
  {
    isOnHold = [actionCopy isOnHold];
    v11 = sub_100004778();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isOnHold)
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v15 = 138412290;
      v16 = v8;
      v13 = "Setting sendingAudio to NO for chat %@";
    }

    else
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v15 = 138412290;
      v16 = v8;
      v13 = "Setting sendingAudio to YES for chat %@";
    }

    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, &v15, 0xCu);
LABEL_14:

    [v8 setSendingAudio:isOnHold ^ 1];
    if (([actionCopy isComplete] & 1) == 0)
    {
      [actionCopy fulfill];
    }

    goto LABEL_16;
  }

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100474AA4(v8, v14);
  }

  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fail];
  }

LABEL_16:
}

- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12[0] = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v11, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    isSendingVideo = [actionCopy isSendingVideo];
    v11 = 67109378;
    LODWORD(v12[0]) = isSendingVideo;
    WORD2(v12[0]) = 2112;
    *(v12 + 6) = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling setIsSendingVideo with %d for chat %@", &v11, 0x12u);
  }

  [v8 setSendingVideo:{objc_msgSend(actionCopy, "isSendingVideo")}];
  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fulfill];
  }
}

- (void)provider:(id)provider performSetSharingScreenCallAction:(id)action
{
  actionCopy = action;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = actionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "action: %@", &v6, 0xCu);
  }

  [actionCopy fail];
}

- (void)provider:(id)provider performEnableVideoCallAction:(id)action
{
  actionCopy = action;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = actionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "action: %@", &v6, 0xCu);
  }

  [actionCopy fail];
}

- (void)provider:(id)provider performSetVideoPresentationSizeCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v9, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  [actionCopy videoPresentationSize];
  [v8 setRemoteVideoPresentationSize:?];
  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fulfill];
  }
}

- (void)provider:(id)provider performSetVideoPresentationStateCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v9, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  [v8 setRemoteVideoPresentationState:{-[CSDAbstractIDSProviderDelegate TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:](self, "TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:", objc_msgSend(actionCopy, "videoPresentationState"))}];
  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fulfill];
  }
}

- (void)provider:(id)provider performSetRelayingCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v9, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  [v8 setRelaying:{objc_msgSend(actionCopy, "isRelaying")}];
  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fulfill];
  }
}

- (void)provider:(id)provider performSetMutedCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v9, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:callUUID];

  [v8 setMuted:{objc_msgSend(actionCopy, "isMuted")}];
  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fulfill];
  }
}

- (BOOL)isWiFiAllowedForChat:(id)chat
{
  capabilities = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isWiFiAllowed = [capabilities isWiFiAllowed];

  return isWiFiAllowed;
}

- (BOOL)isCellularDataAllowedForChat:(id)chat
{
  capabilities = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isCellularDataAllowed = [capabilities isCellularDataAllowed];

  return isCellularDataAllowed;
}

- (BOOL)isCellularDataPreferredForChat:(id)chat
{
  capabilities = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  isCellularDataPreferred = [capabilities isCellularDataPreferred];

  return isCellularDataPreferred;
}

- (CGSize)localPortraitAspectRatioForChat:(id)chat
{
  mainDisplay = [CUTWeakLinkClass() mainDisplay];
  [mainDisplay bounds];
  if (v4 <= v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = TUBinaryGCD();
  v9 = v6 / v8;
  v10 = v7 / v8;

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)chatSentInvitation:(id)invitation
{
  invitationCopy = invitation;
  if ([invitationCopy isOutgoing])
  {
    provider = [(CSDAbstractIDSProviderDelegate *)self provider];
    uUID = [invitationCopy UUID];
    [provider reportOutgoingCallWithUUID:uUID sentInvitationAtDate:0];

    v6 = [(CSDAbstractIDSProviderDelegate *)self callUpdateForChat:invitationCopy];
    [v6 setMayRequireBreakBeforeMake:{objc_msgSend(invitationCopy, "mayRequireBreakBeforeMake")}];
    provider2 = [(CSDAbstractIDSProviderDelegate *)self provider];
    uUID2 = [invitationCopy UUID];
    [provider2 reportCallWithUUID:uUID2 updated:v6];
  }
}

- (void)chatConnected:(id)connected
{
  connectedCopy = connected;
  v5 = [(CSDAbstractIDSProviderDelegate *)self callUpdateForChat:connectedCopy];
  [v5 setVideoStreamToken:{objc_msgSend(connectedCopy, "videoStreamToken")}];
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  uUID = [connectedCopy UUID];
  [provider reportCallWithUUID:uUID updated:v5];

  LODWORD(uUID) = [connectedCopy isOutgoing];
  provider2 = [(CSDAbstractIDSProviderDelegate *)self provider];
  if (uUID)
  {
    uUID2 = [connectedCopy UUID];
    dateConnected = [connectedCopy dateConnected];
    [provider2 reportOutgoingCallWithUUID:uUID2 connectedAtDate:dateConnected];
  }

  else
  {
    v11 = objc_opt_class();
    uUID3 = [connectedCopy UUID];
    v13 = [provider2 pendingCallActionsOfClass:v11 withCallUUID:uUID3];

    if ([v13 count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v24 = v5;
        v17 = *v26;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v25 + 1) + 8 * i);
            v20 = sub_100004778();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v30 = v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Chat with matching UUID connected; attempting to fulfill pending answer call action %@", buf, 0xCu);
            }

            if (([v19 isComplete] & 1) == 0)
            {
              dateConnected2 = [connectedCopy dateConnected];
              if (dateConnected2)
              {
                [v19 fulfillWithDateConnected:dateConnected2];
              }

              else
              {
                v22 = sub_100004778();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v30 = v19;
                  _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Chat did not provide a connection date; Failing answer call action %@", buf, 0xCu);
                }

                [v19 fail];
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v16);
        v5 = v24;
      }
    }

    else
    {
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        uUID4 = [connectedCopy UUID];
        *buf = 138412290;
        v30 = uUID4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] No pending answer call actions found with UUID: %@", buf, 0xCu);
      }
    }
  }
}

- (void)chatEnded:(id)ended
{
  endedCopy = ended;
  [(CSDAbstractIDSProviderDelegate *)self updateCacheWithChat:endedCopy];
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  v6 = objc_opt_class();
  uUID = [endedCopy UUID];
  v8 = [provider pendingCallActionsOfClass:v6 withCallUUID:uUID];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        v15 = sub_100004778();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = endedCopy;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failing answer call action for call because it disconnected before connecting: %@", buf, 0xCu);
        }

        if (([v14 isComplete] & 1) == 0)
        {
          [v14 fail];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)chat:(id)chat changedBytesOfDataUsed:(int64_t)used
{
  chatCopy = chat;
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  uUID = [chatCopy UUID];
  crossDeviceIdentifier = [chatCopy crossDeviceIdentifier];

  [provider reportCallWithUUID:uUID crossDeviceIdentifier:crossDeviceIdentifier changedBytesOfDataUsed:used];
}

- (void)chat:(id)chat inputFrequencyLevelChangedTo:(id)to
{
  toCopy = to;
  chatCopy = chat;
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  uUID = [chatCopy UUID];

  [provider reportCallWithUUID:uUID changedFrequencyData:toCopy forDirection:2];
}

- (void)chat:(id)chat outputFrequencyLevelChangedTo:(id)to
{
  toCopy = to;
  chatCopy = chat;
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  uUID = [chatCopy UUID];

  [provider reportCallWithUUID:uUID changedFrequencyData:toCopy forDirection:1];
}

- (void)chat:(id)chat inputLevelChangedTo:(float)to
{
  chatCopy = chat;
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  uUID = [chatCopy UUID];

  *&v8 = to;
  [provider reportCallWithUUID:uUID changedMeterLevel:2 forDirection:v8];
}

- (void)chat:(id)chat outputLevelChangedTo:(float)to
{
  chatCopy = chat;
  provider = [(CSDAbstractIDSProviderDelegate *)self provider];
  uUID = [chatCopy UUID];

  *&v8 = to;
  [provider reportCallWithUUID:uUID changedMeterLevel:1 forDirection:v8];
}

@end