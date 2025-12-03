@interface CSDUserActivityManager
+ (id)allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:(id)d participantIdentifier:(unint64_t)identifier;
+ (id)sharedInstanceWithQueue:(id)queue;
- (CSDUserActivityManager)initWithQueue:(id)queue activityCommunicator:(id)communicator callCenter:(id)center featureFlags:(id)flags;
- (TUCallCenter)callCenter;
- (void)callConnected:(id)connected;
- (void)callContinuityChanged:(id)changed;
- (void)callIsSendingVideoChanged:(id)changed;
- (void)callIsUplinkMutedChanged:(id)changed;
- (void)callStartedConnecting:(id)connecting;
- (void)callStatusChanged:(id)changed;
- (void)checkForSmartHoldingCallForSuppressRingtone:(id)ringtone;
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager screeningChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)dealloc;
- (void)deregisterHandoffIdentifiersForConversation:(id)conversation;
- (void)endHandoffActivity;
- (void)processStatusChangeAsHandedOffIfNecessaryForCall:(id)call;
- (void)providersChangedForProviderManager:(id)manager;
- (void)receivedBroadcastedActivityType:(unsigned int)type dynamicIdentifier:(id)identifier originatingDeviceType:(id)deviceType;
- (void)shouldSuppressRingtoneChanged:(id)changed;
- (void)smartHoldingSessionChanged:(id)changed;
- (void)startSuppressRingtoneActivityBroadcastingForCall:(id)call;
- (void)startSuppressRingtoneActivityBroadcastingIfNecessaryForCallWithStatusChange:(id)change;
- (void)stopAdvertisingForRemovedConversationIfNecessary:(id)necessary;
- (void)updateAppHistoryActivityForCall;
- (void)updateAudioVideoHandoffPreferencesForCall:(id)call;
- (void)updateCallHandoffRegistration;
- (void)updateHandoffActivityStateForCall:(id)call;
- (void)updateHandoffAdvertisementForCall:(id)call;
- (void)updateHandoffAdvertisementForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)updateHandoffRegistrationForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)updateSuppressRingtoneActivityListeningState;
@end

@implementation CSDUserActivityManager

- (void)updateAppHistoryActivityForCall
{
  callCenter = [(CSDUserActivityManager *)self callCenter];
  currentAudioAndVideoCalls = [callCenter currentAudioAndVideoCalls];
  firstObject = [currentAudioAndVideoCalls firstObject];

  if ([firstObject isHostedOnCurrentDevice] && (objc_msgSend(firstObject, "status") == 3 || objc_msgSend(firstObject, "status") == 4))
  {
    localizedLabel = [firstObject localizedLabel];
    handle = [firstObject handle];
    value = [handle value];
    isoCountryCode = [firstObject isoCountryCode];
    v10 = TUFormattedPhoneNumber();
    v11 = [NSString stringWithFormat:@"%@ – %@", localizedLabel, v10];

    v12 = [NSMutableArray arrayWithCapacity:2];
    handle2 = [firstObject handle];
    value2 = [handle2 value];

    if (value2)
    {
      handle3 = [firstObject handle];
      value3 = [handle3 value];
      [v12 addObject:value3];
    }

    displayName = [firstObject displayName];

    if (displayName)
    {
      displayName2 = [firstObject displayName];
      [v12 addObject:displayName2];
    }

    v19 = [NSMutableDictionary dictionaryWithCapacity:4];
    v20 = TUCallUserActivityDestinationIDKey;
    if (TUCallUserActivityDestinationIDKey)
    {
      handle4 = [firstObject handle];
      value4 = [handle4 value];

      if (value4)
      {
        handle5 = [firstObject handle];
        value5 = [handle5 value];
        [v19 setObject:value5 forKeyedSubscript:v20];
      }
    }

    v25 = TUCallUserActivityHandleKey;
    if (TUCallUserActivityHandleKey)
    {
      handle6 = [firstObject handle];
      dictionaryRepresentation = [handle6 dictionaryRepresentation];

      if (dictionaryRepresentation)
      {
        handle7 = [firstObject handle];
        dictionaryRepresentation2 = [handle7 dictionaryRepresentation];
        [v19 setObject:dictionaryRepresentation2 forKeyedSubscript:v25];
      }
    }

    v30 = TUCallUserActivityProviderIdentifierKey;
    if (TUCallUserActivityProviderIdentifierKey)
    {
      provider = [firstObject provider];
      identifier = [provider identifier];

      if (identifier)
      {
        provider2 = [firstObject provider];
        identifier2 = [provider2 identifier];
        [v19 setObject:identifier2 forKeyedSubscript:v30];
      }
    }

    displayName3 = [firstObject displayName];
    v36 = [CSDUserActivity appHistoryActivityWithTitle:displayName3 subtitle:v11 keywords:v12 userInfo:v19];

    activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
    [activityCommunicator broadcastActivity:v36 withTimeout:1 shouldPrioritize:0.0];

    v38 = sub_100004778();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v40 = v36;
      v41 = 2112;
      v42 = firstObject;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Began app history activity %@ for call %@", buf, 0x16u);
    }
  }
}

- (TUCallCenter)callCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_callCenter);

  return WeakRetained;
}

- (void)updateSuppressRingtoneActivityListeningState
{
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  callCenter = [(CSDUserActivityManager *)self callCenter];
  v8 = [callCenter callPassingTest:&stru_10061A018];

  activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
  if (v8)
  {
    handle = [v8 handle];
    value = [handle value];
    [activityCommunicator listenForActivityType:3 dynamicIdentifier:value];
  }

  else
  {
    [activityCommunicator stopListeningForActivityType:3 dynamicIdentifier:0];
  }
}

+ (id)sharedInstanceWithQueue:(id)queue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076A40;
  block[3] = &unk_100619D38;
  queueCopy = queue;
  v3 = qword_1006ACAE8;
  v4 = queueCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_1006ACAE8, block);
  }

  v5 = qword_1006ACAE0;
  v6 = qword_1006ACAE0;

  return v5;
}

- (CSDUserActivityManager)initWithQueue:(id)queue activityCommunicator:(id)communicator callCenter:(id)center featureFlags:(id)flags
{
  queueCopy = queue;
  communicatorCopy = communicator;
  centerCopy = center;
  flagsCopy = flags;
  v26.receiver = self;
  v26.super_class = CSDUserActivityManager;
  v15 = [(CSDUserActivityManager *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeStrong(&v16->_featureFlags, flags);
    objc_storeStrong(&v16->_activityCommunicator, communicator);
    [(CSDUserActivityCommunicatorProtocol *)v16->_activityCommunicator setDelegate:v16];
    objc_storeWeak(&v16->_callCenter, centerCopy);
    lockdownModeEnabled = v16->_lockdownModeEnabled;
    v16->_lockdownModeEnabled = &stru_100619FD8;

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v16 selector:"callStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];
    [v18 addObserver:v16 selector:"callStatusChanged:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
    [v18 addObserver:v16 selector:"callContinuityChanged:" name:TUCallCenterCallContinuityStateChangedNotification object:0];
    [v18 addObserver:v16 selector:"shouldSuppressRingtoneChanged:" name:TUCallShouldSuppressRingingChangedNotification object:0];
    [v18 addObserver:v16 selector:"callStartedConnecting:" name:TUCallCenterCallStartedConnectingNotification object:0];
    [v18 addObserver:v16 selector:"callConnected:" name:TUCallCenterCallConnectedNotification object:0];
    [v18 addObserver:v16 selector:"callIsUplinkMutedChanged:" name:TUCallIsUplinkMutedChangedNotification object:0];
    [v18 addObserver:v16 selector:"callIsSendingVideoChanged:" name:TUCallIsSendingVideoChangedNotification object:0];
    [v18 addObserver:v16 selector:"smartHoldingSessionChanged:" name:TUCallSmartHoldingSessionChangedNotification object:0];
    callCenter = [(CSDUserActivityManager *)v16 callCenter];
    providerManager = [callCenter providerManager];
    [providerManager addDelegate:v16 queue:v16->_queue];

    conversationManager = [callCenter conversationManager];
    [conversationManager addDelegate:v16 queue:v16->_queue];

    [(CSDUserActivityManager *)v16 updateCallHandoffRegistration];
    [(CSDUserActivityManager *)v16 updateAppHistoryActivityForCall];
    [(CSDUserActivityManager *)v16 updateSuppressRingtoneActivityListeningState];
    currentCalls = [callCenter currentCalls];
    firstObject = [currentCalls firstObject];

    if (firstObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CSDUserActivityManager *)v16 updateHandoffActivityStateForCall:firstObject];
        v24 = sub_100004778();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = firstObject;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "It's interesting that we have a call here when we don't really expect one %@", buf, 0xCu);
        }
      }
    }
  }

  return v16;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  callCenter = [(CSDUserActivityManager *)self callCenter];
  conversationManager = [callCenter conversationManager];
  [conversationManager removeDelegate:self];

  TURemoveEveryTelephonyCenterObserver();
  v6.receiver = self;
  v6.super_class = CSDUserActivityManager;
  [(CSDUserActivityManager *)&v6 dealloc];
}

- (void)updateCallHandoffRegistration
{
  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
    [activityCommunicator stopListeningForActivityType:2 dynamicIdentifier:0];

    callCenter = [(CSDUserActivityManager *)self callCenter];
    providerManager = [callCenter providerManager];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [providerManager providers];
    v18 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v18)
    {
      v17 = *v25;
      do
      {
        v6 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = v6;
          v7 = *(*(&v24 + 1) + 8 * v6);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          handoffIdentifiers = [v7 handoffIdentifiers];
          v9 = [handoffIdentifiers countByEnumeratingWithState:&v20 objects:v32 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v21;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v21 != v11)
                {
                  objc_enumerationMutation(handoffIdentifiers);
                }

                v13 = *(*(&v20 + 1) + 8 * i);
                v14 = sub_100004778();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v29 = v13;
                  v30 = 2112;
                  v31 = v7;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Registering to handle call handoff activity type with dynamic identifier %@ for provider %@", buf, 0x16u);
                }

                activityCommunicator2 = [(CSDUserActivityManager *)self activityCommunicator];
                [activityCommunicator2 listenForActivityType:2 dynamicIdentifier:v13];
              }

              v10 = [handoffIdentifiers countByEnumeratingWithState:&v20 objects:v32 count:16];
            }

            while (v10);
          }

          v6 = v19 + 1;
        }

        while ((v19 + 1) != v18);
        v18 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v18);
    }
  }
}

- (void)updateHandoffActivityStateForCall:(id)call
{
  callCopy = call;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![callCopy isHostedOnCurrentDevice])
  {
LABEL_28:
    handoffActivity = [(CSDUserActivityManager *)self handoffActivity];

    if (handoffActivity)
    {
      [(CSDUserActivityManager *)self endHandoffActivity];
    }

    goto LABEL_30;
  }

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Frontmost call is hosted here ...", &v21, 2u);
  }

  isEndpointOnCurrentDevice = [callCopy isEndpointOnCurrentDevice];
  v8 = sub_100004778();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (isEndpointOnCurrentDevice)
  {
    if (v9)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "... and it is an endpoint here ...", &v21, 2u);
    }

    v10 = +[TUCallCapabilities supportsPrimaryCalling];
    v11 = sub_100004778();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "... but we are a primary device. Not broadcasting frontmost call", &v21, 2u);
      }

      goto LABEL_28;
    }

    if (v12)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "... and we are a secondary device ...", &v21, 2u);
    }

    handoffDynamicIdentifier = [callCopy handoffDynamicIdentifier];
    handoffActivityUserInfo = [callCopy handoffActivityUserInfo];
    v18 = sub_100004778();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (handoffDynamicIdentifier && handoffActivityUserInfo)
    {
      if (v19)
      {
        v21 = 138412290;
        *v22 = handoffDynamicIdentifier;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "... using a broadcast activity with dynamic identifier: %@.", &v21, 0xCu);
      }

      v13 = [CSDUserActivity activityWithType:2 dynamicIdentifier:handoffDynamicIdentifier userInfo:handoffActivityUserInfo originatingDeviceType:0];
    }

    else
    {
      if (v19)
      {
        v21 = 67109376;
        *v22 = handoffDynamicIdentifier == 0;
        *&v22[4] = 1024;
        *&v22[6] = handoffActivityUserInfo == 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] ... but no dynamic identifier could be found (%d) or no handoff user info exists (%d). Not broadcasting frontmost call", &v21, 0xEu);
      }

      v13 = 0;
    }

    if (!v13)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v9)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "... and it is being relayed elsewhere. Using a local activity", &v21, 2u);
    }

    v13 = [CSDUserActivity activityWithType:1 dynamicIdentifier:0 userInfo:0 originatingDeviceType:0];
    if (!v13)
    {
      goto LABEL_28;
    }
  }

  [(CSDUserActivityManager *)self endHandoffActivity];
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    *v22 = v13;
    *&v22[8] = 2112;
    v23 = callCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Beginning handoff activity %@ for call %@", &v21, 0x16u);
  }

  activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
  [activityCommunicator broadcastActivity:v13];

  [(CSDUserActivityManager *)self setHandoffActivity:v13];
LABEL_30:
}

- (void)endHandoffActivity
{
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  handoffActivity = [(CSDUserActivityManager *)self handoffActivity];

  if (handoffActivity)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      handoffActivity2 = [(CSDUserActivityManager *)self handoffActivity];
      v9 = 138412290;
      v10 = handoffActivity2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ending handoff activity: %@", &v9, 0xCu);
    }

    activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
    handoffActivity3 = [(CSDUserActivityManager *)self handoffActivity];
    [activityCommunicator stopBroadcastingActivity:handoffActivity3];

    [(CSDUserActivityManager *)self setHandoffActivity:0];
  }
}

- (void)startSuppressRingtoneActivityBroadcastingIfNecessaryForCallWithStatusChange:(id)change
{
  changeCopy = change;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (changeCopy && [changeCopy status] == 6 && objc_msgSend(changeCopy, "wasDeclined"))
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = changeCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Broadcasting suppress ringtone activity for declined call: %@", &v7, 0xCu);
    }

    [(CSDUserActivityManager *)self startSuppressRingtoneActivityBroadcastingForCall:changeCopy];
  }
}

- (void)startSuppressRingtoneActivityBroadcastingForCall:(id)call
{
  callCopy = call;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
  handle = [callCopy handle];

  value = [handle value];
  v8 = [CSDUserActivity activityWithType:3 dynamicIdentifier:value userInfo:0 originatingDeviceType:0];
  [activityCommunicator broadcastActivity:v8 withTimeout:1 shouldPrioritize:2.0];
}

- (void)updateHandoffAdvertisementForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  conversationCopy = conversation;
  oldConversationCopy = oldConversation;
  callCenter = [(CSDUserActivityManager *)self callCenter];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007799C;
  v13[3] = &unk_10061A040;
  v14 = conversationCopy;
  v9 = conversationCopy;
  v10 = [callCenter callPassingTest:v13];

  if (v10)
  {
    isUplinkMuted = [v10 isUplinkMuted];
    isSendingVideo = [v10 isSendingVideo];
  }

  else
  {
    isUplinkMuted = 0;
    isSendingVideo = 1;
  }

  [(CSDUserActivityManager *)self updateHandoffAdvertisementForConversation:v9 fromOldConversation:oldConversationCopy uplinkMuted:isUplinkMuted sendingVideo:isSendingVideo];
}

- (void)updateHandoffAdvertisementForCall:(id)call
{
  callCopy = call;
  v5 = callCopy;
  if (!callCopy || ![callCopy isConversation] || (objc_msgSend(v5, "callGroupUUID"), (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, v8 = objc_msgSend(v5, "status"), v7, v8 != 1))
  {
    v14 = sub_100004778();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    if ([v5 isUplinkMuted])
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    if ([v5 isSendingVideo])
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    if (v5)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    if (!v5)
    {
      *buf = 138413570;
      v42 = v22;
      v43 = 2112;
      v44 = v23;
      v45 = 2112;
      v46 = v24;
      v47 = 2112;
      v48 = @"NO";
      v49 = 2112;
      v50 = @"NO";
      v51 = 2112;
      v52 = @"NO";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] User activity manager aware of change to audio-video state (mic muted: %@, camera enabled: %@), but call didn't meet criteria (call is non-nil: %@, call is conversation: %@, call has groupUUID: %@, call is active: %@)", buf, 0x3Eu);
      goto LABEL_39;
    }

    if ([v5 isConversation])
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v35 = v25;
    callGroupUUID = [v5 callGroupUUID];
    if (callGroupUUID)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    *buf = 138413570;
    if ([v5 status] == 1)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    v42 = v22;
    v43 = 2112;
    v44 = v23;
    v45 = 2112;
    v46 = v24;
    v47 = 2112;
    v48 = v35;
    v49 = 2112;
    v50 = v27;
    v51 = 2112;
    v52 = v28;
    v29 = "[WARN] User activity manager aware of change to audio-video state (mic muted: %@, camera enabled: %@), but call didn't meet criteria (call is non-nil: %@, call is conversation: %@, call has groupUUID: %@, call is active: %@)";
    v30 = v14;
    v31 = 62;
LABEL_37:
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);

    goto LABEL_39;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  callCenter = [(CSDUserActivityManager *)self callCenter];
  conversationManager = [callCenter conversationManager];
  activeConversations = [conversationManager activeConversations];

  v12 = [activeConversations countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v12)
  {

LABEL_41:
    v14 = sub_100004778();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v32 = @"YES";
    if ([v5 isUplinkMuted])
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    if (![v5 isSendingVideo])
    {
      v32 = @"NO";
    }

    callGroupUUID = [v5 callGroupUUID];
    *buf = 138412802;
    v42 = v33;
    v43 = 2112;
    v44 = v32;
    v45 = 2112;
    v46 = callGroupUUID;
    v29 = "[WARN] User activity manager aware of change to audio-video state (mic muted: %@, camera enabled: %@), but could not find conversation for call with groupUUID: %@";
    v30 = v14;
    v31 = 32;
    goto LABEL_37;
  }

  v13 = v12;
  selfCopy = self;
  v14 = 0;
  v15 = *v37;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v37 != v15)
      {
        objc_enumerationMutation(activeConversations);
      }

      v17 = *(*(&v36 + 1) + 8 * i);
      callGroupUUID2 = [v5 callGroupUUID];
      groupUUID = [v17 groupUUID];
      v20 = [callGroupUUID2 isEqual:groupUUID];

      if (v20)
      {
        v21 = v17;

        v14 = v21;
      }
    }

    v13 = [activeConversations countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v13);

  if (!v14)
  {
    goto LABEL_41;
  }

  -[CSDUserActivityManager updateHandoffAdvertisementForConversation:fromOldConversation:uplinkMuted:sendingVideo:](selfCopy, "updateHandoffAdvertisementForConversation:fromOldConversation:uplinkMuted:sendingVideo:", v14, 0, [v5 isUplinkMuted], objc_msgSend(v5, "isSendingVideo"));
LABEL_39:
}

- (void)processStatusChangeAsHandedOffIfNecessaryForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  provider = [callCopy provider];
  if (![provider isFaceTimeProvider] || objc_msgSend(callCopy, "status") != 6 || objc_msgSend(callCopy, "disconnectedReason") != 7)
  {

    goto LABEL_29;
  }

  handoffRecipientParticipant = [callCopy handoffRecipientParticipant];

  if (handoffRecipientParticipant)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    callCenter = [(CSDUserActivityManager *)self callCenter];
    conversationManager = [callCenter conversationManager];
    activeConversations = [conversationManager activeConversations];

    v11 = [activeConversations countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (!v11)
    {

      goto LABEL_31;
    }

    v12 = v11;
    v35 = 0;
    v13 = *v41;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(activeConversations);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        callGroupUUID = [callCopy callGroupUUID];
        groupUUID = [v15 groupUUID];
        if ([callGroupUUID isEqual:groupUUID])
        {
          provider2 = [v15 provider];
          isDefaultProvider = [provider2 isDefaultProvider];

          if (!isDefaultProvider)
          {
            continue;
          }

          callGroupUUID = v35;
          v35 = v15;
        }

        else
        {
        }
      }

      v12 = [activeConversations countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (!v12)
      {

        if (v35)
        {
          handoffRecipientParticipant2 = [callCopy handoffRecipientParticipant];
          unsignedLongLongValue = [handoffRecipientParticipant2 unsignedLongLongValue];

          groupUUID2 = [v35 groupUUID];
          v23 = [CSDUserActivityManager allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:groupUUID2 participantIdentifier:unsignedLongLongValue];

          v24 = sub_100004778();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            uUID = [v35 UUID];
            *buf = 138412546;
            v46 = uUID;
            v47 = 2048;
            v48 = unsignedLongLongValue;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "After conversation %@ was handed off elsewhere, re-registering for handoff advertisement for participant %llu so that it can be handed off back", buf, 0x16u);
          }

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v26 = v23;
          v27 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v37;
            do
            {
              for (j = 0; j != v28; j = j + 1)
              {
                if (*v37 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v36 + 1) + 8 * j);
                activityCommunicator = [(CSDUserActivityManager *)selfCopy activityCommunicator];
                [activityCommunicator listenForActivityType:5 dynamicIdentifier:v31];
              }

              v28 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v28);
          }

          v33 = v35;
          goto LABEL_33;
        }

LABEL_31:
        v33 = sub_100004778();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_100471690(callCopy, v33);
        }

LABEL_33:

        break;
      }
    }
  }

LABEL_29:
}

- (void)updateHandoffRegistrationForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  conversationCopy = conversation;
  oldConversationCopy = oldConversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDUserActivityManager *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    lockdownModeEnabled = [(CSDUserActivityManager *)self lockdownModeEnabled];
    v10 = lockdownModeEnabled[2]();

    if (v10)
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not updating handoff registration because lockdown mode is enabled", buf, 2u);
      }
    }

    else
    {
      v12 = +[NSMutableSet set];
      v45 = +[NSMutableSet set];
      if ([conversationCopy isAnyOtherAccountDeviceActive])
      {
        provider = [conversationCopy provider];
        isDefaultProvider = [provider isDefaultProvider];

        if (isDefaultProvider)
        {
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
          v16 = [activeRemoteParticipants countByEnumeratingWithState:&v60 objects:v68 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v61;
            do
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v61 != v18)
                {
                  objc_enumerationMutation(activeRemoteParticipants);
                }

                v20 = *(*(&v60 + 1) + 8 * i);
                if ([v20 isLocalAccountHandle])
                {
                  groupUUID = [conversationCopy groupUUID];
                  v22 = +[CSDUserActivityManager allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:participantIdentifier:](CSDUserActivityManager, "allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:participantIdentifier:", groupUUID, [v20 identifier]);
                  [v12 unionSet:v22];
                }
              }

              v17 = [activeRemoteParticipants countByEnumeratingWithState:&v60 objects:v68 count:16];
            }

            while (v17);
          }
        }
      }

      if (oldConversationCopy && [oldConversationCopy isAnyOtherAccountDeviceActive])
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        activeRemoteParticipants2 = [oldConversationCopy activeRemoteParticipants];
        v24 = [activeRemoteParticipants2 countByEnumeratingWithState:&v56 objects:v67 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v57;
          do
          {
            for (j = 0; j != v25; j = j + 1)
            {
              if (*v57 != v26)
              {
                objc_enumerationMutation(activeRemoteParticipants2);
              }

              v28 = *(*(&v56 + 1) + 8 * j);
              if ([v28 isLocalAccountHandle])
              {
                groupUUID2 = [oldConversationCopy groupUUID];
                v30 = +[CSDUserActivityManager allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:participantIdentifier:](CSDUserActivityManager, "allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:participantIdentifier:", groupUUID2, [v28 identifier]);

                anyObject = [v30 anyObject];
                LOBYTE(groupUUID2) = [v12 containsObject:anyObject];

                if ((groupUUID2 & 1) == 0)
                {
                  [v45 unionSet:v30];
                }
              }
            }

            v25 = [activeRemoteParticipants2 countByEnumeratingWithState:&v56 objects:v67 count:16];
          }

          while (v25);
        }
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v11 = v12;
      v32 = [v11 countByEnumeratingWithState:&v52 objects:v66 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v53;
        do
        {
          for (k = 0; k != v33; k = k + 1)
          {
            if (*v53 != v34)
            {
              objc_enumerationMutation(v11);
            }

            v36 = *(*(&v52 + 1) + 8 * k);
            activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
            [activityCommunicator listenForActivityType:5 dynamicIdentifier:v36];
          }

          v33 = [v11 countByEnumeratingWithState:&v52 objects:v66 count:16];
        }

        while (v33);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v38 = v45;
      v39 = [v38 countByEnumeratingWithState:&v48 objects:v65 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v49;
        do
        {
          for (m = 0; m != v40; m = m + 1)
          {
            if (*v49 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v48 + 1) + 8 * m);
            activityCommunicator2 = [(CSDUserActivityManager *)self activityCommunicator];
            [activityCommunicator2 stopListeningForActivityType:5 dynamicIdentifier:v43];
          }

          v40 = [v38 countByEnumeratingWithState:&v48 objects:v65 count:16];
        }

        while (v40);
      }
    }
  }
}

- (void)deregisterHandoffIdentifiersForConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDUserActivityManager *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
    groupUUID = [conversationCopy groupUUID];
    uUIDString = [groupUUID UUIDString];
    [activityCommunicator stopListeningForActivityType:5 matchingDynamicIdentifierSubstring:uUIDString];
  }
}

+ (id)allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:(id)d participantIdentifier:(unint64_t)identifier
{
  dCopy = d;
  v6 = [NSString tu_conversationHandoffDynamicIdentifierWithGroupUUID:dCopy participantIdentifier:identifier uplinkMuted:0 sendingVideo:0];
  v13[0] = v6;
  v7 = [NSString tu_conversationHandoffDynamicIdentifierWithGroupUUID:dCopy participantIdentifier:identifier uplinkMuted:0 sendingVideo:1];
  v13[1] = v7;
  v8 = [NSString tu_conversationHandoffDynamicIdentifierWithGroupUUID:dCopy participantIdentifier:identifier uplinkMuted:1 sendingVideo:0];
  v13[2] = v8;
  v9 = [NSString tu_conversationHandoffDynamicIdentifierWithGroupUUID:dCopy participantIdentifier:identifier uplinkMuted:1 sendingVideo:1];

  v13[3] = v9;
  v10 = [NSArray arrayWithObjects:v13 count:4];
  v11 = [NSSet setWithArray:v10];

  return v11;
}

- (void)callStatusChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [changedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [changedCopy object];
    [(CSDUserActivityManager *)self startSuppressRingtoneActivityBroadcastingIfNecessaryForCallWithStatusChange:object2];

    [(CSDUserActivityManager *)self updateAppHistoryActivityForCall];
    object3 = [changedCopy object];
    [(CSDUserActivityManager *)self updateHandoffActivityStateForCall:object3];

    [(CSDUserActivityManager *)self updateSuppressRingtoneActivityListeningState];
    object4 = [changedCopy object];
    [(CSDUserActivityManager *)self processStatusChangeAsHandedOffIfNecessaryForCall:object4];
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      object5 = [changedCopy object];
      v14 = 138412546;
      v15 = object5;
      v16 = 2112;
      v17 = objc_opt_class();
      v13 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Expected %@ to be kind of class %@, but is not", &v14, 0x16u);
    }
  }
}

- (void)callContinuityChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [changedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [changedCopy object];
    [(CSDUserActivityManager *)self updateHandoffActivityStateForCall:object2];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      object3 = [changedCopy object];
      v12 = 138412546;
      v13 = object3;
      v14 = 2112;
      v15 = objc_opt_class();
      v11 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Expected %@ to be kind of class %@, but is not", &v12, 0x16u);
    }
  }
}

- (void)shouldSuppressRingtoneChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDUserActivityManager *)self updateSuppressRingtoneActivityListeningState];
  object = [changedCopy object];

  if ([object shouldSuppressRingtone] && (objc_msgSend(object, "ringtoneSuppressedRemotely") & 1) == 0)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = object;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Broadcasting suppress ringtone activity for call that suppressed its ringtone: %@", &v8, 0xCu);
    }

    [(CSDUserActivityManager *)self startSuppressRingtoneActivityBroadcastingForCall:object];
  }
}

- (void)callStartedConnecting:(id)connecting
{
  connectingCopy = connecting;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [connectingCopy object];

  if (([object isOutgoing] & 1) == 0)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = object;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Broadcasting suppress ringtone activity for incoming call that started connecting: %@", &v8, 0xCu);
    }

    [(CSDUserActivityManager *)self startSuppressRingtoneActivityBroadcastingForCall:object];
  }
}

- (void)callConnected:(id)connected
{
  connectedCopy = connected;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [connectedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [connectedCopy object];
    [(CSDUserActivityManager *)self updateHandoffActivityStateForCall:object2];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      object3 = [connectedCopy object];
      v12 = 138412546;
      v13 = object3;
      v14 = 2112;
      v15 = objc_opt_class();
      v11 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Expected %@ to be kind of class %@, but is not", &v12, 0x16u);
    }
  }
}

- (void)callIsUplinkMutedChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDUserActivityManager *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    object = [changedCopy object];
    [(CSDUserActivityManager *)self updateAudioVideoHandoffPreferencesForCall:object];
  }
}

- (void)callIsSendingVideoChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDUserActivityManager *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    object = [changedCopy object];
    [(CSDUserActivityManager *)self updateAudioVideoHandoffPreferencesForCall:object];
  }
}

- (void)smartHoldingSessionChanged:(id)changed
{
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDUserActivityManager *)self featureFlags];
  smartHoldingRelayEnabled = [featureFlags smartHoldingRelayEnabled];

  if (smartHoldingRelayEnabled)
  {

    [(CSDUserActivityManager *)self updateSuppressRingtoneActivityListeningState];
  }
}

- (void)updateAudioVideoHandoffPreferencesForCall:(id)call
{
  callCopy = call;
  featureFlags = [(CSDUserActivityManager *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    if (callCopy && [callCopy isConversation] && (objc_msgSend(callCopy, "callGroupUUID"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, v9 = objc_msgSend(callCopy, "status"), v8, v9 == 1))
    {
      [(CSDUserActivityManager *)self updateHandoffAdvertisementForCall:callCopy];
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if ([callCopy isUplinkMuted])
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        if ([callCopy isSendingVideo])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        if (callCopy)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        if (callCopy)
        {
          if ([callCopy isConversation])
          {
            v14 = @"YES";
          }

          else
          {
            v14 = @"NO";
          }

          callGroupUUID = [callCopy callGroupUUID];
          if (callGroupUUID)
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          v18 = 138413570;
          if ([callCopy status] == 1)
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          v19 = v11;
          v20 = 2112;
          v21 = v12;
          v22 = 2112;
          v23 = v13;
          v24 = 2112;
          v25 = v14;
          v26 = 2112;
          v27 = v16;
          v28 = 2112;
          v29 = v17;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] User activity manager aware of change to audio-video state (mic muted: %@, camera enabled: %@), but call didn't meet criteria (call is non-nil: %@, call is conversation: %@, call has groupUUID: %@, call is active: %@)", &v18, 0x3Eu);
        }

        else
        {
          v18 = 138413570;
          v19 = v11;
          v20 = 2112;
          v21 = v12;
          v22 = 2112;
          v23 = v13;
          v24 = 2112;
          v25 = @"NO";
          v26 = 2112;
          v27 = @"NO";
          v28 = 2112;
          v29 = @"NO";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] User activity manager aware of change to audio-video state (mic muted: %@, camera enabled: %@), but call didn't meet criteria (call is non-nil: %@, call is conversation: %@, call has groupUUID: %@, call is active: %@)", &v18, 0x3Eu);
        }
      }
    }
  }
}

- (void)providersChangedForProviderManager:(id)manager
{
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDUserActivityManager *)self updateCallHandoffRegistration];
}

- (void)receivedBroadcastedActivityType:(unsigned int)type dynamicIdentifier:(id)identifier originatingDeviceType:(id)deviceType
{
  identifierCopy = identifier;
  deviceTypeCopy = deviceType;
  queue = [(CSDUserActivityManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000797B8;
  v13[3] = &unk_10061A068;
  typeCopy = type;
  v14 = identifierCopy;
  selfCopy = self;
  v16 = deviceTypeCopy;
  v11 = deviceTypeCopy;
  v12 = identifierCopy;
  dispatch_async(queue, v13);
}

- (void)checkForSmartHoldingCallForSuppressRingtone:(id)ringtone
{
  ringtoneCopy = ringtone;
  callCenter = [(CSDUserActivityManager *)self callCenter];
  frontmostCall = [callCenter frontmostCall];

  if (frontmostCall)
  {
    handle = [frontmostCall handle];
    value = [handle value];
    if (([value isEqualToString:ringtoneCopy] & 1) != 0 && (objc_msgSend(frontmostCall, "smartHoldingSession"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      smartHoldingSession = [frontmostCall smartHoldingSession];
      state = [smartHoldingSession state];

      if (state == 3)
      {
        v13 = sub_100004778();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = frontmostCall;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received suppress ringtone activity broadcast. Suppressing ringtone due to smart holding requires user attention state for call %@", &v14, 0xCu);
        }

        [frontmostCall suppressRingtoneDueToRemoteSuppression];
      }
    }

    else
    {
    }
  }
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  oldConversationCopy = oldConversation;
  conversationCopy = conversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDUserActivityManager *)self updateHandoffAdvertisementForConversation:conversationCopy fromOldConversation:oldConversationCopy];
}

- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  oldConversationCopy = oldConversation;
  conversationCopy = conversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDUserActivityManager *)self updateHandoffAdvertisementForConversation:conversationCopy fromOldConversation:oldConversationCopy];
}

- (void)conversationManager:(id)manager screeningChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDUserActivityManager *)self updateHandoffAdvertisementForConversation:conversationCopy fromOldConversation:0];
}

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  conversationCopy = conversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    v10 = 136315394;
    v11 = "[CSDUserActivityManager conversationManager:activeRemoteParticipantsChangedForConversation:fromOldConversation:]";
    v12 = 2112;
    v13 = uUID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Updating handoff registration for conversation UUID %@", &v10, 0x16u);
  }

  [(CSDUserActivityManager *)self updateHandoffRegistrationForConversation:conversationCopy fromOldConversation:conversationCopy];
}

- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation
{
  conversationCopy = conversation;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    v9 = 136315394;
    v10 = "[CSDUserActivityManager conversationManager:addedActiveConversation:]";
    v11 = 2112;
    v12 = uUID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Updating handoff registration for conversation UUID %@", &v9, 0x16u);
  }

  [(CSDUserActivityManager *)self updateHandoffRegistrationForConversation:conversationCopy fromOldConversation:0];
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  conversationCopy = conversation;
  managerCopy = manager;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  activeConversations = [managerCopy activeConversations];

  v10 = [activeConversations count];
  if (v10)
  {
    [(CSDUserActivityManager *)self deregisterHandoffIdentifiersForConversation:conversationCopy];
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No more conversations, unregistering all conversation handoff dynamic identifiers", v13, 2u);
    }

    activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
    [activityCommunicator stopListeningForActivityType:5 dynamicIdentifier:0];
  }

  [(CSDUserActivityManager *)self stopAdvertisingForRemovedConversationIfNecessary:conversationCopy];
}

- (void)stopAdvertisingForRemovedConversationIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  queue = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  selfCopy = self;
  activityCommunicator = [(CSDUserActivityManager *)self activityCommunicator];
  v7 = [activityCommunicator queuedActivitiesOfType:5];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        dynamicIdentifier = [v13 dynamicIdentifier];
        groupUUID = [necessaryCopy groupUUID];
        uUIDString = [groupUUID UUIDString];
        v17 = [dynamicIdentifier containsString:uUIDString];

        if (v17)
        {
          activityCommunicator2 = [(CSDUserActivityManager *)selfCopy activityCommunicator];
          [activityCommunicator2 stopBroadcastingActivity:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

@end