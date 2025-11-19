@interface CSDAbstractIDSProviderDelegate
+ (id)handleByFullyQualifyingHandle:(id)a3 usingCountryCode:(id)a4;
- (BOOL)isCellularDataAllowedForChat:(id)a3;
- (BOOL)isCellularDataPreferredForChat:(id)a3;
- (BOOL)isWiFiAllowedForChat:(id)a3;
- (BOOL)shouldAcceptIncomingInvite;
- (CGSize)localPortraitAspectRatioForChat:(id)a3;
- (CSDAbstractIDSProviderDelegate)init;
- (CSDAbstractIDSProviderDelegate)initWithCapabilities:(id)a3 queue:(id)a4;
- (id)callUpdateForChat:(id)a3;
- (id)callUpdateForPendingChat:(id)a3;
- (id)chatWithUUID:(id)a3;
- (id)chats;
- (id)waitingChatWithHandle:(id)a3 isOutgoing:(BOOL)a4;
- (int)TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:(int64_t)a3;
- (void)chat:(id)a3 changedBytesOfDataUsed:(int64_t)a4;
- (void)chat:(id)a3 inputFrequencyLevelChangedTo:(id)a4;
- (void)chat:(id)a3 inputLevelChangedTo:(float)a4;
- (void)chat:(id)a3 outputFrequencyLevelChangedTo:(id)a4;
- (void)chat:(id)a3 outputLevelChangedTo:(float)a4;
- (void)chatConnected:(id)a3;
- (void)chatEnded:(id)a3;
- (void)chatSentInvitation:(id)a3;
- (void)provider:(id)a3 performAnswerCallAction:(id)a4;
- (void)provider:(id)a3 performEnableVideoCallAction:(id)a4;
- (void)provider:(id)a3 performEndCallAction:(id)a4;
- (void)provider:(id)a3 performSetHeldCallAction:(id)a4;
- (void)provider:(id)a3 performSetMutedCallAction:(id)a4;
- (void)provider:(id)a3 performSetRelayingCallAction:(id)a4;
- (void)provider:(id)a3 performSetSendingVideoCallAction:(id)a4;
- (void)provider:(id)a3 performSetSharingScreenCallAction:(id)a4;
- (void)provider:(id)a3 performSetVideoPresentationSizeCallAction:(id)a4;
- (void)provider:(id)a3 performSetVideoPresentationStateCallAction:(id)a4;
- (void)providerDidBegin:(id)a3;
- (void)providerDidReset:(id)a3;
- (void)service:(id)a3 account:(id)a4 incomingPendingMessageOfType:(int64_t)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7;
- (void)updateCacheWithChat:(id)a3;
@end

@implementation CSDAbstractIDSProviderDelegate

- (CSDAbstractIDSProviderDelegate)init
{
  v3 = objc_alloc_init(CSDIDSProviderDelegateCapabilities);
  v4 = [(CSDAbstractIDSProviderDelegate *)self initWithCapabilities:v3 queue:&_dispatch_main_q];

  return v4;
}

- (CSDAbstractIDSProviderDelegate)initWithCapabilities:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = CSDAbstractIDSProviderDelegate;
  v9 = [(CSDAbstractIDSProviderDelegate *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_capabilities, a3);
    objc_storeStrong(&v10->_queue, a4);
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
  v2 = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  v3 = [v2 array];
  v4 = [v3 copy];

  return v4;
}

- (id)chatWithUUID:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 UUID];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)updateCacheWithChat:(id)a3
{
  v4 = a3;
  v5 = [v4 dateEnded];

  v6 = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  v7 = v6;
  if (v5)
  {
    [v6 removeObject:v4];
  }

  else
  {
    [v6 addObject:v4];
  }
}

+ (id)handleByFullyQualifyingHandle:(id)a3 usingCountryCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  if ([v7 type] == 2)
  {
    v9 = [v7 value];
    v10 = [TUPhoneNumber phoneNumberWithDigits:v9 countryCode:v6];

    v11 = [v10 unformattedInternationalRepresentation];
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Used country code '%@' to determine international phone number representation: %@", &v14, 0x16u);
    }

    v8 = v7;
    if (v11)
    {
      v8 = [[TUHandle alloc] initWithType:objc_msgSend(v7 value:{"type"), v11}];
    }
  }

  return v8;
}

- (BOOL)shouldAcceptIncomingInvite
{
  v3 = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  v4 = [v3 isWiFiAvailable];

  v5 = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  v6 = [v5 isWiFiAllowed];

  v7 = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  v8 = [v7 isCellularDataAvailable];

  v9 = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  v10 = [v9 isCellularDataAllowed];

  v11 = (v4 & v6 & 1) != 0 || (v8 & v10 & 1) != 0 || [(CSDAbstractIDSProviderDelegate *)self shouldOverrideNetworkAsAvailable];
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
    v18 = v4;
    v19 = 1024;
    v20 = v6 & 1;
    v21 = 1024;
    v22 = v8;
    v23 = 1024;
    v24 = v10 & 1;
    v25 = 1024;
    v26 = [(CSDAbstractIDSProviderDelegate *)self shouldOverrideNetworkAsAvailable];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Determined that invite should be %@ - (isWiFiAvailable=%d isWiFiAllowed=%d isCellularDataAvailable=%d isCellularDataAllowed=%d shouldOverrideNetworkAsAvailable=%d)", &v15, 0x2Au);
  }

  return v11;
}

- (void)service:(id)a3 account:(id)a4 incomingPendingMessageOfType:(int64_t)a5 fromID:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v34 = v12;
    v35 = 2112;
    v36 = v13;
    v37 = 2112;
    v38 = v14;
    v39 = 2112;
    v40 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Invite received for service %@ account %@ from (fromID=%@) with context: %@", buf, 0x2Au);
  }

  v17 = sub_100004778();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if ((a5 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v30 = v12;
    if (v18)
    {
      *buf = 134217984;
      v34 = a5;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Recieved pending message of type %ld", buf, 0xCu);
    }

    v19 = IDSCopyAddressDestinationForDestination();
    v17 = IDSCopyRawAddressForDestination();

    v20 = [TUHandle handleWithDestinationID:v17];
    v21 = [CSDIDSPendingChat alloc];
    v22 = +[NSUUID UUID];
    v23 = [v15 serviceIdentifier];
    v24 = -[CSDIDSPendingChat initWithUUID:isVideo:handle:](v21, "initWithUUID:isVideo:handle:", v22, [v23 containsString:@"audio"] ^ 1, v20);

    if (a5 == 6)
    {
      if (![(CSDAbstractIDSProviderDelegate *)self shouldAcceptIncomingInvite])
      {
LABEL_13:

        v12 = v30;
        goto LABEL_14;
      }

      v25 = [(CSDAbstractIDSProviderDelegate *)self callUpdateForPendingChat:v24];
      v26 = [(CSDAbstractIDSProviderDelegate *)self provider];
      v27 = [(CSDIDSPendingChat *)v24 uuid];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000FDFC4;
      v31[3] = &unk_10061A4C0;
      v32 = v24;
      [v26 reportNewIncomingCallWithUUID:v27 update:v25 completion:v31];

      v28 = v32;
    }

    else
    {
      v25 = [(CSDAbstractIDSProviderDelegate *)self provider];
      v28 = [(CSDIDSPendingChat *)v24 uuid];
      v29 = +[NSDate date];
      [v25 reportCallWithUUID:v28 endedAtDate:v29 reason:3];
    }

    goto LABEL_13;
  }

  if (v18)
  {
    *buf = 134217984;
    v34 = a5;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not handling pending message of type: %ld", buf, 0xCu);
  }

LABEL_14:
}

- (id)callUpdateForPendingChat:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CXCallUpdate);
  [v4 setHasVideo:{objc_msgSend(v3, "isVideo")}];
  v5 = [v3 handle];

  v6 = [CXHandle handleWithTUHandle:v5];
  [v4 setRemoteHandle:v6];

  [v4 setRequiresAuthentication:1];

  return v4;
}

- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [[CSDMessagingCallMessage alloc] initWithData:v14];
  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *&buf[4] = v12;
    v94 = 2112;
    v95 = v11;
    v96 = 2112;
    v97 = v13;
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
        v61 = [(CSDMessagingCallMessage *)v15 type];
        if (v61 >= 3)
        {
          v62 = [NSString stringWithFormat:@"(unknown: %i)", v61];
        }

        else
        {
          v62 = off_10061BA38[v61];
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

  v17 = [(CSDAbstractIDSProviderDelegate *)self incomingSessionProviderGenerator];
  v18 = [(CSDAbstractIDSProviderDelegate *)self queue];
  v19 = (v17)[2](v17, v12, v18);

  v20 = [[CSDExternalIDSDualSession alloc] initAsReceiverWithSessionProvider:v19 remoteFromID:v13 remoteProtocolVersion:[(CSDMessagingCallMessage *)v15 protocolVersion]];
  [v20 setInvitationTimeout:TUIncomingInvitationTimeout()];
  v21 = IDSCopyAddressDestinationForDestination();
  v22 = IDSCopyRawAddressForDestination();

  v81 = v22;
  v83 = [[CXHandle alloc] initWithDestinationID:v22];
  v23 = [CSDAbstractIDSProviderDelegate waitingChatWithHandle:"waitingChatWithHandle:isOutgoing:" isOutgoing:?];
  v24 = v23;
  v84 = self;
  v82 = v20;
  if (!v23)
  {
    goto LABEL_7;
  }

  v25 = [v23 sessionUUID];
  [v20 UUID];
  v26 = v14;
  v27 = v15;
  v28 = v13;
  v29 = v11;
  v30 = v12;
  v32 = v31 = v24;
  v33 = [v25 caseInsensitiveCompare:v32];

  v24 = v31;
  v12 = v30;
  v11 = v29;
  v13 = v28;
  v15 = v27;
  v14 = v26;
  v20 = v82;

  v34 = v33 + 1 == 0;
  self = v84;
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
    v80 = v14;
    v35 = [(CSDAbstractIDSProviderDelegate *)self incomingChatGenerator];
    v36 = [v83 tuHandle];
    v37 = [(CSDMessagingCallMessage *)v15 protoWantsVideo];
    v38 = [(CSDMessagingCallMessage *)v15 inviteData];
    v39 = [v38 faceTimeInviteDictionary];
    v40 = v20;
    v41 = v84;
    v42 = (v35)[2](v35, v40, v36, v37, v39);

    [v42 setDelegate:v84];
    [v42 setRemoteMomentsAvailable:{-[CSDMessagingCallMessage isMomentsAvailable](v15, "isMomentsAvailable")}];
    [v42 setShouldSuppressInCallUI:{-[CSDMessagingCallMessage shouldSuppressInCallUI](v15, "shouldSuppressInCallUI")}];
    v43 = [(CSDAbstractIDSProviderDelegate *)v84 callUpdateForChat:v42];
    v44 = [v11 loginID];
    v45 = [v44 length];

    if (v45)
    {
      v76 = v11;
      v77 = v43;
      v73 = v42;
      v74 = v13;
      v75 = v12;
      v46 = [v11 loginID];
      v47 = TUHandleForIDSCanonicalAddress();

      v48 = [(CSDAbstractIDSProviderDelegate *)v84 provider];
      v49 = [v48 configuration];
      v50 = [v49 prioritizedSenderIdentities];

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v51 = v50;
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
            v57 = [v56 handle];
            v58 = [v57 tuHandle];
            v59 = [v58 isEqualToHandle:v47];

            if (v59)
            {
              v66 = [v56 UUID];
              [v77 setLocalSenderIdentityUUID:v66];

              v67 = [v56 account];
              v68 = [v67 UUID];
              [v77 setLocalSenderIdentityAccountUUID:v68];

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

      v12 = v75;
      v11 = v76;
      v42 = v73;
      v13 = v74;
      v41 = v84;
      v43 = v77;
    }

    v69 = [(CSDAbstractIDSProviderDelegate *)v41 provider];
    v70 = [v42 UUID];
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_1000FE8BC;
    v85[3] = &unk_10061A6A0;
    v85[4] = v41;
    v86 = v42;
    v20 = v82;
    v87 = v82;
    v71 = v42;
    [v69 reportNewIncomingCallWithUUID:v70 update:v43 completion:v85];

    v19 = v79;
    v14 = v80;
    v24 = v78;
  }

LABEL_35:
}

- (id)waitingChatWithHandle:(id)a3 isOutgoing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      v13 = [v12 dateStartedConnecting];
      if (v13)
      {
        goto LABEL_11;
      }

      v13 = [v12 handle];
      v14 = [v6 tuHandle];
      if ((TUHandlesAreCanonicallyEqual() & 1) == 0)
      {

LABEL_11:
        continue;
      }

      v15 = [v12 isOutgoing];

      if (v15 == v4)
      {
        v16 = v12;
        goto LABEL_15;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v9);
LABEL_14:
  v16 = 0;
LABEL_15:

  return v16;
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

- (id)callUpdateForChat:(id)a3
{
  v3 = a3;
  v4 = [[CXCallUpdate alloc] initWithIDSChat:v3];

  return v4;
}

- (void)providerDidBegin:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "provider: %@", &v8, 0xCu);
  }

  [(CSDAbstractIDSProviderDelegate *)self setProvider:v4];
  v6 = [(CSDAbstractIDSProviderDelegate *)self providerDidBegin];

  if (v6)
  {
    v7 = [(CSDAbstractIDSProviderDelegate *)self providerDidBegin];
    v7[2]();
  }
}

- (void)providerDidReset:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "provider: %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(CSDAbstractIDSProviderDelegate *)self mutableChats];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) end];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)provider:(id)a3 performAnswerCallAction:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v12, 0xCu);
  }

  v7 = [v5 callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:v7];

  v9 = [v8 dateConnected];

  if (v9)
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100474A2C(v8, v10);
    }

    if (([v5 isComplete] & 1) == 0)
    {
      [v5 fail];
    }
  }

  else
  {
    if ([v5 downgradeToAudio])
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

    [v8 answerWithVideoAspectRatioDescriptor:v5];
  }
}

- (void)provider:(id)a3 performEndCallAction:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v10, 0xCu);
  }

  v7 = [v5 callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:v7];

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling end on chat %@", &v10, 0xCu);
  }

  [v8 end];
  if (([v5 isComplete] & 1) == 0)
  {
    [v5 fulfill];
  }
}

- (void)provider:(id)a3 performSetHeldCallAction:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v15, 0xCu);
  }

  v7 = [v5 callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:v7];

  v9 = [v8 dateConnected];

  if (v9)
  {
    v10 = [v5 isOnHold];
    v11 = sub_100004778();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
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

    [v8 setSendingAudio:v10 ^ 1];
    if (([v5 isComplete] & 1) == 0)
    {
      [v5 fulfill];
    }

    goto LABEL_16;
  }

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100474AA4(v8, v14);
  }

  if (([v5 isComplete] & 1) == 0)
  {
    [v5 fail];
  }

LABEL_16:
}

- (void)provider:(id)a3 performSetSendingVideoCallAction:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12[0] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v11, 0xCu);
  }

  v7 = [v5 callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:v7];

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 isSendingVideo];
    v11 = 67109378;
    LODWORD(v12[0]) = v10;
    WORD2(v12[0]) = 2112;
    *(v12 + 6) = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling setIsSendingVideo with %d for chat %@", &v11, 0x12u);
  }

  [v8 setSendingVideo:{objc_msgSend(v5, "isSendingVideo")}];
  if (([v5 isComplete] & 1) == 0)
  {
    [v5 fulfill];
  }
}

- (void)provider:(id)a3 performSetSharingScreenCallAction:(id)a4
{
  v4 = a4;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "action: %@", &v6, 0xCu);
  }

  [v4 fail];
}

- (void)provider:(id)a3 performEnableVideoCallAction:(id)a4
{
  v4 = a4;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "action: %@", &v6, 0xCu);
  }

  [v4 fail];
}

- (void)provider:(id)a3 performSetVideoPresentationSizeCallAction:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v9, 0xCu);
  }

  v7 = [v5 callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:v7];

  [v5 videoPresentationSize];
  [v8 setRemoteVideoPresentationSize:?];
  if (([v5 isComplete] & 1) == 0)
  {
    [v5 fulfill];
  }
}

- (void)provider:(id)a3 performSetVideoPresentationStateCallAction:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v9, 0xCu);
  }

  v7 = [v5 callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:v7];

  [v8 setRemoteVideoPresentationState:{-[CSDAbstractIDSProviderDelegate TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:](self, "TUCallRemoteVideoPresentationStateFromCXVideoPresentationState:", objc_msgSend(v5, "videoPresentationState"))}];
  if (([v5 isComplete] & 1) == 0)
  {
    [v5 fulfill];
  }
}

- (void)provider:(id)a3 performSetRelayingCallAction:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v9, 0xCu);
  }

  v7 = [v5 callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:v7];

  [v8 setRelaying:{objc_msgSend(v5, "isRelaying")}];
  if (([v5 isComplete] & 1) == 0)
  {
    [v5 fulfill];
  }
}

- (void)provider:(id)a3 performSetMutedCallAction:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", &v9, 0xCu);
  }

  v7 = [v5 callUUID];
  v8 = [(CSDAbstractIDSProviderDelegate *)self chatWithUUID:v7];

  [v8 setMuted:{objc_msgSend(v5, "isMuted")}];
  if (([v5 isComplete] & 1) == 0)
  {
    [v5 fulfill];
  }
}

- (BOOL)isWiFiAllowedForChat:(id)a3
{
  v3 = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  v4 = [v3 isWiFiAllowed];

  return v4;
}

- (BOOL)isCellularDataAllowedForChat:(id)a3
{
  v3 = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  v4 = [v3 isCellularDataAllowed];

  return v4;
}

- (BOOL)isCellularDataPreferredForChat:(id)a3
{
  v3 = [(CSDAbstractIDSProviderDelegate *)self capabilities];
  v4 = [v3 isCellularDataPreferred];

  return v4;
}

- (CGSize)localPortraitAspectRatioForChat:(id)a3
{
  v3 = [CUTWeakLinkClass() mainDisplay];
  [v3 bounds];
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

- (void)chatSentInvitation:(id)a3
{
  v9 = a3;
  if ([v9 isOutgoing])
  {
    v4 = [(CSDAbstractIDSProviderDelegate *)self provider];
    v5 = [v9 UUID];
    [v4 reportOutgoingCallWithUUID:v5 sentInvitationAtDate:0];

    v6 = [(CSDAbstractIDSProviderDelegate *)self callUpdateForChat:v9];
    [v6 setMayRequireBreakBeforeMake:{objc_msgSend(v9, "mayRequireBreakBeforeMake")}];
    v7 = [(CSDAbstractIDSProviderDelegate *)self provider];
    v8 = [v9 UUID];
    [v7 reportCallWithUUID:v8 updated:v6];
  }
}

- (void)chatConnected:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractIDSProviderDelegate *)self callUpdateForChat:v4];
  [v5 setVideoStreamToken:{objc_msgSend(v4, "videoStreamToken")}];
  v6 = [(CSDAbstractIDSProviderDelegate *)self provider];
  v7 = [v4 UUID];
  [v6 reportCallWithUUID:v7 updated:v5];

  LODWORD(v7) = [v4 isOutgoing];
  v8 = [(CSDAbstractIDSProviderDelegate *)self provider];
  if (v7)
  {
    v9 = [v4 UUID];
    v10 = [v4 dateConnected];
    [v8 reportOutgoingCallWithUUID:v9 connectedAtDate:v10];
  }

  else
  {
    v11 = objc_opt_class();
    v12 = [v4 UUID];
    v13 = [v8 pendingCallActionsOfClass:v11 withCallUUID:v12];

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
              v21 = [v4 dateConnected];
              if (v21)
              {
                [v19 fulfillWithDateConnected:v21];
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
        v23 = [v4 UUID];
        *buf = 138412290;
        v30 = v23;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] No pending answer call actions found with UUID: %@", buf, 0xCu);
      }
    }
  }
}

- (void)chatEnded:(id)a3
{
  v4 = a3;
  [(CSDAbstractIDSProviderDelegate *)self updateCacheWithChat:v4];
  v5 = [(CSDAbstractIDSProviderDelegate *)self provider];
  v6 = objc_opt_class();
  v7 = [v4 UUID];
  v8 = [v5 pendingCallActionsOfClass:v6 withCallUUID:v7];

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
          v21 = v4;
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

- (void)chat:(id)a3 changedBytesOfDataUsed:(int64_t)a4
{
  v6 = a3;
  v9 = [(CSDAbstractIDSProviderDelegate *)self provider];
  v7 = [v6 UUID];
  v8 = [v6 crossDeviceIdentifier];

  [v9 reportCallWithUUID:v7 crossDeviceIdentifier:v8 changedBytesOfDataUsed:a4];
}

- (void)chat:(id)a3 inputFrequencyLevelChangedTo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CSDAbstractIDSProviderDelegate *)self provider];
  v8 = [v7 UUID];

  [v9 reportCallWithUUID:v8 changedFrequencyData:v6 forDirection:2];
}

- (void)chat:(id)a3 outputFrequencyLevelChangedTo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CSDAbstractIDSProviderDelegate *)self provider];
  v8 = [v7 UUID];

  [v9 reportCallWithUUID:v8 changedFrequencyData:v6 forDirection:1];
}

- (void)chat:(id)a3 inputLevelChangedTo:(float)a4
{
  v6 = a3;
  v9 = [(CSDAbstractIDSProviderDelegate *)self provider];
  v7 = [v6 UUID];

  *&v8 = a4;
  [v9 reportCallWithUUID:v7 changedMeterLevel:2 forDirection:v8];
}

- (void)chat:(id)a3 outputLevelChangedTo:(float)a4
{
  v6 = a3;
  v9 = [(CSDAbstractIDSProviderDelegate *)self provider];
  v7 = [v6 UUID];

  *&v8 = a4;
  [v9 reportCallWithUUID:v7 changedMeterLevel:1 forDirection:v8];
}

@end