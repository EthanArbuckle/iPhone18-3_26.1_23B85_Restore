@interface CSDUserActivityManager
+ (id)allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:(id)a3 participantIdentifier:(unint64_t)a4;
+ (id)sharedInstanceWithQueue:(id)a3;
- (CSDUserActivityManager)initWithQueue:(id)a3 activityCommunicator:(id)a4 callCenter:(id)a5 featureFlags:(id)a6;
- (TUCallCenter)callCenter;
- (void)callConnected:(id)a3;
- (void)callContinuityChanged:(id)a3;
- (void)callIsSendingVideoChanged:(id)a3;
- (void)callIsUplinkMutedChanged:(id)a3;
- (void)callStartedConnecting:(id)a3;
- (void)callStatusChanged:(id)a3;
- (void)checkForSmartHoldingCallForSuppressRingtone:(id)a3;
- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4 fromOldConversation:(id)a5;
- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 avModeChangedForConversation:(id)a4 fromOldConversation:(id)a5;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 screeningChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4 fromOldConversation:(id)a5;
- (void)dealloc;
- (void)deregisterHandoffIdentifiersForConversation:(id)a3;
- (void)endHandoffActivity;
- (void)processStatusChangeAsHandedOffIfNecessaryForCall:(id)a3;
- (void)providersChangedForProviderManager:(id)a3;
- (void)receivedBroadcastedActivityType:(unsigned int)a3 dynamicIdentifier:(id)a4 originatingDeviceType:(id)a5;
- (void)shouldSuppressRingtoneChanged:(id)a3;
- (void)smartHoldingSessionChanged:(id)a3;
- (void)startSuppressRingtoneActivityBroadcastingForCall:(id)a3;
- (void)startSuppressRingtoneActivityBroadcastingIfNecessaryForCallWithStatusChange:(id)a3;
- (void)stopAdvertisingForRemovedConversationIfNecessary:(id)a3;
- (void)updateAppHistoryActivityForCall;
- (void)updateAudioVideoHandoffPreferencesForCall:(id)a3;
- (void)updateCallHandoffRegistration;
- (void)updateHandoffActivityStateForCall:(id)a3;
- (void)updateHandoffAdvertisementForCall:(id)a3;
- (void)updateHandoffAdvertisementForConversation:(id)a3 fromOldConversation:(id)a4;
- (void)updateHandoffRegistrationForConversation:(id)a3 fromOldConversation:(id)a4;
- (void)updateSuppressRingtoneActivityListeningState;
@end

@implementation CSDUserActivityManager

- (void)updateAppHistoryActivityForCall
{
  v3 = [(CSDUserActivityManager *)self callCenter];
  v4 = [v3 currentAudioAndVideoCalls];
  v5 = [v4 firstObject];

  if ([v5 isHostedOnCurrentDevice] && (objc_msgSend(v5, "status") == 3 || objc_msgSend(v5, "status") == 4))
  {
    v6 = [v5 localizedLabel];
    v7 = [v5 handle];
    v8 = [v7 value];
    v9 = [v5 isoCountryCode];
    v10 = TUFormattedPhoneNumber();
    v11 = [NSString stringWithFormat:@"%@ – %@", v6, v10];

    v12 = [NSMutableArray arrayWithCapacity:2];
    v13 = [v5 handle];
    v14 = [v13 value];

    if (v14)
    {
      v15 = [v5 handle];
      v16 = [v15 value];
      [v12 addObject:v16];
    }

    v17 = [v5 displayName];

    if (v17)
    {
      v18 = [v5 displayName];
      [v12 addObject:v18];
    }

    v19 = [NSMutableDictionary dictionaryWithCapacity:4];
    v20 = TUCallUserActivityDestinationIDKey;
    if (TUCallUserActivityDestinationIDKey)
    {
      v21 = [v5 handle];
      v22 = [v21 value];

      if (v22)
      {
        v23 = [v5 handle];
        v24 = [v23 value];
        [v19 setObject:v24 forKeyedSubscript:v20];
      }
    }

    v25 = TUCallUserActivityHandleKey;
    if (TUCallUserActivityHandleKey)
    {
      v26 = [v5 handle];
      v27 = [v26 dictionaryRepresentation];

      if (v27)
      {
        v28 = [v5 handle];
        v29 = [v28 dictionaryRepresentation];
        [v19 setObject:v29 forKeyedSubscript:v25];
      }
    }

    v30 = TUCallUserActivityProviderIdentifierKey;
    if (TUCallUserActivityProviderIdentifierKey)
    {
      v31 = [v5 provider];
      v32 = [v31 identifier];

      if (v32)
      {
        v33 = [v5 provider];
        v34 = [v33 identifier];
        [v19 setObject:v34 forKeyedSubscript:v30];
      }
    }

    v35 = [v5 displayName];
    v36 = [CSDUserActivity appHistoryActivityWithTitle:v35 subtitle:v11 keywords:v12 userInfo:v19];

    v37 = [(CSDUserActivityManager *)self activityCommunicator];
    [v37 broadcastActivity:v36 withTimeout:1 shouldPrioritize:0.0];

    v38 = sub_100004778();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v40 = v36;
      v41 = 2112;
      v42 = v5;
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
  v3 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDUserActivityManager *)self callCenter];
  v8 = [v4 callPassingTest:&stru_10061A018];

  v5 = [(CSDUserActivityManager *)self activityCommunicator];
  if (v8)
  {
    v6 = [v8 handle];
    v7 = [v6 value];
    [v5 listenForActivityType:3 dynamicIdentifier:v7];
  }

  else
  {
    [v5 stopListeningForActivityType:3 dynamicIdentifier:0];
  }
}

+ (id)sharedInstanceWithQueue:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076A40;
  block[3] = &unk_100619D38;
  v9 = a3;
  v3 = qword_1006ACAE8;
  v4 = v9;
  if (v3 != -1)
  {
    dispatch_once(&qword_1006ACAE8, block);
  }

  v5 = qword_1006ACAE0;
  v6 = qword_1006ACAE0;

  return v5;
}

- (CSDUserActivityManager)initWithQueue:(id)a3 activityCommunicator:(id)a4 callCenter:(id)a5 featureFlags:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = CSDUserActivityManager;
  v15 = [(CSDUserActivityManager *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, a3);
    objc_storeStrong(&v16->_featureFlags, a6);
    objc_storeStrong(&v16->_activityCommunicator, a4);
    [(CSDUserActivityCommunicatorProtocol *)v16->_activityCommunicator setDelegate:v16];
    objc_storeWeak(&v16->_callCenter, v13);
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
    v19 = [(CSDUserActivityManager *)v16 callCenter];
    v20 = [v19 providerManager];
    [v20 addDelegate:v16 queue:v16->_queue];

    v21 = [v19 conversationManager];
    [v21 addDelegate:v16 queue:v16->_queue];

    [(CSDUserActivityManager *)v16 updateCallHandoffRegistration];
    [(CSDUserActivityManager *)v16 updateAppHistoryActivityForCall];
    [(CSDUserActivityManager *)v16 updateSuppressRingtoneActivityListeningState];
    v22 = [v19 currentCalls];
    v23 = [v22 firstObject];

    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CSDUserActivityManager *)v16 updateHandoffActivityStateForCall:v23];
        v24 = sub_100004778();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v23;
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

  v4 = [(CSDUserActivityManager *)self callCenter];
  v5 = [v4 conversationManager];
  [v5 removeDelegate:self];

  TURemoveEveryTelephonyCenterObserver();
  v6.receiver = self;
  v6.super_class = CSDUserActivityManager;
  [(CSDUserActivityManager *)&v6 dealloc];
}

- (void)updateCallHandoffRegistration
{
  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    v3 = [(CSDUserActivityManager *)self activityCommunicator];
    [v3 stopListeningForActivityType:2 dynamicIdentifier:0];

    v4 = [(CSDUserActivityManager *)self callCenter];
    v5 = [v4 providerManager];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [v5 providers];
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
          v8 = [v7 handoffIdentifiers];
          v9 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
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
                v14 = sub_100004778();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v29 = v13;
                  v30 = 2112;
                  v31 = v7;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Registering to handle call handoff activity type with dynamic identifier %@ for provider %@", buf, 0x16u);
                }

                v15 = [(CSDUserActivityManager *)self activityCommunicator];
                [v15 listenForActivityType:2 dynamicIdentifier:v13];
              }

              v10 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
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

- (void)updateHandoffActivityStateForCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v5);

  if (![v4 isHostedOnCurrentDevice])
  {
LABEL_28:
    v20 = [(CSDUserActivityManager *)self handoffActivity];

    if (v20)
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

  v7 = [v4 isEndpointOnCurrentDevice];
  v8 = sub_100004778();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
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

    v16 = [v4 handoffDynamicIdentifier];
    v17 = [v4 handoffActivityUserInfo];
    v18 = sub_100004778();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v16 && v17)
    {
      if (v19)
      {
        v21 = 138412290;
        *v22 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "... using a broadcast activity with dynamic identifier: %@.", &v21, 0xCu);
      }

      v13 = [CSDUserActivity activityWithType:2 dynamicIdentifier:v16 userInfo:v17 originatingDeviceType:0];
    }

    else
    {
      if (v19)
      {
        v21 = 67109376;
        *v22 = v16 == 0;
        *&v22[4] = 1024;
        *&v22[6] = v17 == 0;
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
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Beginning handoff activity %@ for call %@", &v21, 0x16u);
  }

  v15 = [(CSDUserActivityManager *)self activityCommunicator];
  [v15 broadcastActivity:v13];

  [(CSDUserActivityManager *)self setHandoffActivity:v13];
LABEL_30:
}

- (void)endHandoffActivity
{
  v3 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDUserActivityManager *)self handoffActivity];

  if (v4)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CSDUserActivityManager *)self handoffActivity];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ending handoff activity: %@", &v9, 0xCu);
    }

    v7 = [(CSDUserActivityManager *)self activityCommunicator];
    v8 = [(CSDUserActivityManager *)self handoffActivity];
    [v7 stopBroadcastingActivity:v8];

    [(CSDUserActivityManager *)self setHandoffActivity:0];
  }
}

- (void)startSuppressRingtoneActivityBroadcastingIfNecessaryForCallWithStatusChange:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v4 && [v4 status] == 6 && objc_msgSend(v4, "wasDeclined"))
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Broadcasting suppress ringtone activity for declined call: %@", &v7, 0xCu);
    }

    [(CSDUserActivityManager *)self startSuppressRingtoneActivityBroadcastingForCall:v4];
  }
}

- (void)startSuppressRingtoneActivityBroadcastingForCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v9 = [(CSDUserActivityManager *)self activityCommunicator];
  v6 = [v4 handle];

  v7 = [v6 value];
  v8 = [CSDUserActivity activityWithType:3 dynamicIdentifier:v7 userInfo:0 originatingDeviceType:0];
  [v9 broadcastActivity:v8 withTimeout:1 shouldPrioritize:2.0];
}

- (void)updateHandoffAdvertisementForConversation:(id)a3 fromOldConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDUserActivityManager *)self callCenter];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007799C;
  v13[3] = &unk_10061A040;
  v14 = v6;
  v9 = v6;
  v10 = [v8 callPassingTest:v13];

  if (v10)
  {
    v11 = [v10 isUplinkMuted];
    v12 = [v10 isSendingVideo];
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  [(CSDUserActivityManager *)self updateHandoffAdvertisementForConversation:v9 fromOldConversation:v7 uplinkMuted:v11 sendingVideo:v12];
}

- (void)updateHandoffAdvertisementForCall:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 isConversation] || (objc_msgSend(v5, "callGroupUUID"), (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, v8 = objc_msgSend(v5, "status"), v7, v8 != 1))
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
    v26 = [v5 callGroupUUID];
    if (v26)
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
  v9 = [(CSDUserActivityManager *)self callCenter];
  v10 = [v9 conversationManager];
  v11 = [v10 activeConversations];

  v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
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

    v26 = [v5 callGroupUUID];
    *buf = 138412802;
    v42 = v33;
    v43 = 2112;
    v44 = v32;
    v45 = 2112;
    v46 = v26;
    v29 = "[WARN] User activity manager aware of change to audio-video state (mic muted: %@, camera enabled: %@), but could not find conversation for call with groupUUID: %@";
    v30 = v14;
    v31 = 32;
    goto LABEL_37;
  }

  v13 = v12;
  v34 = self;
  v14 = 0;
  v15 = *v37;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v37 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v36 + 1) + 8 * i);
      v18 = [v5 callGroupUUID];
      v19 = [v17 groupUUID];
      v20 = [v18 isEqual:v19];

      if (v20)
      {
        v21 = v17;

        v14 = v21;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v13);

  if (!v14)
  {
    goto LABEL_41;
  }

  -[CSDUserActivityManager updateHandoffAdvertisementForConversation:fromOldConversation:uplinkMuted:sendingVideo:](v34, "updateHandoffAdvertisementForConversation:fromOldConversation:uplinkMuted:sendingVideo:", v14, 0, [v5 isUplinkMuted], objc_msgSend(v5, "isSendingVideo"));
LABEL_39:
}

- (void)processStatusChangeAsHandedOffIfNecessaryForCall:(id)a3
{
  v4 = a3;
  v34 = self;
  v5 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 provider];
  if (![v6 isFaceTimeProvider] || objc_msgSend(v4, "status") != 6 || objc_msgSend(v4, "disconnectedReason") != 7)
  {

    goto LABEL_29;
  }

  v7 = [v4 handoffRecipientParticipant];

  if (v7)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = [(CSDUserActivityManager *)self callCenter];
    v9 = [v8 conversationManager];
    v10 = [v9 activeConversations];

    v11 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v16 = [v4 callGroupUUID];
        v17 = [v15 groupUUID];
        if ([v16 isEqual:v17])
        {
          v18 = [v15 provider];
          v19 = [v18 isDefaultProvider];

          if (!v19)
          {
            continue;
          }

          v16 = v35;
          v35 = v15;
        }

        else
        {
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (!v12)
      {

        if (v35)
        {
          v20 = [v4 handoffRecipientParticipant];
          v21 = [v20 unsignedLongLongValue];

          v22 = [v35 groupUUID];
          v23 = [CSDUserActivityManager allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:v22 participantIdentifier:v21];

          v24 = sub_100004778();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v35 UUID];
            *buf = 138412546;
            v46 = v25;
            v47 = 2048;
            v48 = v21;
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
                v32 = [(CSDUserActivityManager *)v34 activityCommunicator];
                [v32 listenForActivityType:5 dynamicIdentifier:v31];
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
          sub_100471690(v4, v33);
        }

LABEL_33:

        break;
      }
    }
  }

LABEL_29:
}

- (void)updateHandoffRegistrationForConversation:(id)a3 fromOldConversation:(id)a4
{
  v46 = a3;
  v47 = a4;
  v6 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDUserActivityManager *)self featureFlags];
  v8 = [v7 conversationHandoffEnabled];

  if (v8)
  {
    v9 = [(CSDUserActivityManager *)self lockdownModeEnabled];
    v10 = v9[2]();

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
      if ([v46 isAnyOtherAccountDeviceActive])
      {
        v13 = [v46 provider];
        v14 = [v13 isDefaultProvider];

        if (v14)
        {
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v15 = [v46 activeRemoteParticipants];
          v16 = [v15 countByEnumeratingWithState:&v60 objects:v68 count:16];
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
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v60 + 1) + 8 * i);
                if ([v20 isLocalAccountHandle])
                {
                  v21 = [v46 groupUUID];
                  v22 = +[CSDUserActivityManager allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:participantIdentifier:](CSDUserActivityManager, "allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:participantIdentifier:", v21, [v20 identifier]);
                  [v12 unionSet:v22];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v60 objects:v68 count:16];
            }

            while (v17);
          }
        }
      }

      if (v47 && [v47 isAnyOtherAccountDeviceActive])
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v23 = [v47 activeRemoteParticipants];
        v24 = [v23 countByEnumeratingWithState:&v56 objects:v67 count:16];
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
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v56 + 1) + 8 * j);
              if ([v28 isLocalAccountHandle])
              {
                v29 = [v47 groupUUID];
                v30 = +[CSDUserActivityManager allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:participantIdentifier:](CSDUserActivityManager, "allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:participantIdentifier:", v29, [v28 identifier]);

                v31 = [v30 anyObject];
                LOBYTE(v29) = [v12 containsObject:v31];

                if ((v29 & 1) == 0)
                {
                  [v45 unionSet:v30];
                }
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v56 objects:v67 count:16];
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
            v37 = [(CSDUserActivityManager *)self activityCommunicator];
            [v37 listenForActivityType:5 dynamicIdentifier:v36];
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
            v44 = [(CSDUserActivityManager *)self activityCommunicator];
            [v44 stopListeningForActivityType:5 dynamicIdentifier:v43];
          }

          v40 = [v38 countByEnumeratingWithState:&v48 objects:v65 count:16];
        }

        while (v40);
      }
    }
  }
}

- (void)deregisterHandoffIdentifiersForConversation:(id)a3
{
  v10 = a3;
  v4 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDUserActivityManager *)self featureFlags];
  v6 = [v5 conversationHandoffEnabled];

  if (v6)
  {
    v7 = [(CSDUserActivityManager *)self activityCommunicator];
    v8 = [v10 groupUUID];
    v9 = [v8 UUIDString];
    [v7 stopListeningForActivityType:5 matchingDynamicIdentifierSubstring:v9];
  }
}

+ (id)allConversationHandoffDynamicIdentifierPossibilitiesForGroupUUID:(id)a3 participantIdentifier:(unint64_t)a4
{
  v5 = a3;
  v6 = [NSString tu_conversationHandoffDynamicIdentifierWithGroupUUID:v5 participantIdentifier:a4 uplinkMuted:0 sendingVideo:0];
  v13[0] = v6;
  v7 = [NSString tu_conversationHandoffDynamicIdentifierWithGroupUUID:v5 participantIdentifier:a4 uplinkMuted:0 sendingVideo:1];
  v13[1] = v7;
  v8 = [NSString tu_conversationHandoffDynamicIdentifierWithGroupUUID:v5 participantIdentifier:a4 uplinkMuted:1 sendingVideo:0];
  v13[2] = v8;
  v9 = [NSString tu_conversationHandoffDynamicIdentifierWithGroupUUID:v5 participantIdentifier:a4 uplinkMuted:1 sendingVideo:1];

  v13[3] = v9;
  v10 = [NSArray arrayWithObjects:v13 count:4];
  v11 = [NSSet setWithArray:v10];

  return v11;
}

- (void)callStatusChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v4 object];
    [(CSDUserActivityManager *)self startSuppressRingtoneActivityBroadcastingIfNecessaryForCallWithStatusChange:v8];

    [(CSDUserActivityManager *)self updateAppHistoryActivityForCall];
    v9 = [v4 object];
    [(CSDUserActivityManager *)self updateHandoffActivityStateForCall:v9];

    [(CSDUserActivityManager *)self updateSuppressRingtoneActivityListeningState];
    v10 = [v4 object];
    [(CSDUserActivityManager *)self processStatusChangeAsHandedOffIfNecessaryForCall:v10];
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 object];
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = objc_opt_class();
      v13 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Expected %@ to be kind of class %@, but is not", &v14, 0x16u);
    }
  }
}

- (void)callContinuityChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v4 object];
    [(CSDUserActivityManager *)self updateHandoffActivityStateForCall:v8];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 object];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = objc_opt_class();
      v11 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Expected %@ to be kind of class %@, but is not", &v12, 0x16u);
    }
  }
}

- (void)shouldSuppressRingtoneChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v5);

  [(CSDUserActivityManager *)self updateSuppressRingtoneActivityListeningState];
  v6 = [v4 object];

  if ([v6 shouldSuppressRingtone] && (objc_msgSend(v6, "ringtoneSuppressedRemotely") & 1) == 0)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Broadcasting suppress ringtone activity for call that suppressed its ringtone: %@", &v8, 0xCu);
    }

    [(CSDUserActivityManager *)self startSuppressRingtoneActivityBroadcastingForCall:v6];
  }
}

- (void)callStartedConnecting:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 object];

  if (([v6 isOutgoing] & 1) == 0)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Broadcasting suppress ringtone activity for incoming call that started connecting: %@", &v8, 0xCu);
    }

    [(CSDUserActivityManager *)self startSuppressRingtoneActivityBroadcastingForCall:v6];
  }
}

- (void)callConnected:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v4 object];
    [(CSDUserActivityManager *)self updateHandoffActivityStateForCall:v8];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 object];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = objc_opt_class();
      v11 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Expected %@ to be kind of class %@, but is not", &v12, 0x16u);
    }
  }
}

- (void)callIsUplinkMutedChanged:(id)a3
{
  v8 = a3;
  v4 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDUserActivityManager *)self featureFlags];
  v6 = [v5 conversationHandoffEnabled];

  if (v6)
  {
    v7 = [v8 object];
    [(CSDUserActivityManager *)self updateAudioVideoHandoffPreferencesForCall:v7];
  }
}

- (void)callIsSendingVideoChanged:(id)a3
{
  v8 = a3;
  v4 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDUserActivityManager *)self featureFlags];
  v6 = [v5 conversationHandoffEnabled];

  if (v6)
  {
    v7 = [v8 object];
    [(CSDUserActivityManager *)self updateAudioVideoHandoffPreferencesForCall:v7];
  }
}

- (void)smartHoldingSessionChanged:(id)a3
{
  v4 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDUserActivityManager *)self featureFlags];
  v6 = [v5 smartHoldingRelayEnabled];

  if (v6)
  {

    [(CSDUserActivityManager *)self updateSuppressRingtoneActivityListeningState];
  }
}

- (void)updateAudioVideoHandoffPreferencesForCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityManager *)self featureFlags];
  v6 = [v5 conversationHandoffEnabled];

  if (v6)
  {
    if (v4 && [v4 isConversation] && (objc_msgSend(v4, "callGroupUUID"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, v9 = objc_msgSend(v4, "status"), v8, v9 == 1))
    {
      [(CSDUserActivityManager *)self updateHandoffAdvertisementForCall:v4];
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if ([v4 isUplinkMuted])
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        if ([v4 isSendingVideo])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        if (v4)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        if (v4)
        {
          if ([v4 isConversation])
          {
            v14 = @"YES";
          }

          else
          {
            v14 = @"NO";
          }

          v15 = [v4 callGroupUUID];
          if (v15)
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          v18 = 138413570;
          if ([v4 status] == 1)
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

- (void)providersChangedForProviderManager:(id)a3
{
  v4 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v4);

  [(CSDUserActivityManager *)self updateCallHandoffRegistration];
}

- (void)receivedBroadcastedActivityType:(unsigned int)a3 dynamicIdentifier:(id)a4 originatingDeviceType:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CSDUserActivityManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000797B8;
  v13[3] = &unk_10061A068;
  v17 = a3;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)checkForSmartHoldingCallForSuppressRingtone:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityManager *)self callCenter];
  v6 = [v5 frontmostCall];

  if (v6)
  {
    v7 = [v6 handle];
    v8 = [v7 value];
    if (([v8 isEqualToString:v4] & 1) != 0 && (objc_msgSend(v6, "smartHoldingSession"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      v11 = [v6 smartHoldingSession];
      v12 = [v11 state];

      if (v12 == 3)
      {
        v13 = sub_100004778();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v6;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received suppress ringtone activity broadcast. Suppressing ringtone due to smart holding requires user attention state for call %@", &v14, 0xCu);
        }

        [v6 suppressRingtoneDueToRemoteSuppression];
      }
    }

    else
    {
    }
  }
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4 fromOldConversation:(id)a5
{
  v7 = a5;
  v9 = a4;
  v8 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v8);

  [(CSDUserActivityManager *)self updateHandoffAdvertisementForConversation:v9 fromOldConversation:v7];
}

- (void)conversationManager:(id)a3 avModeChangedForConversation:(id)a4 fromOldConversation:(id)a5
{
  v7 = a5;
  v9 = a4;
  v8 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v8);

  [(CSDUserActivityManager *)self updateHandoffAdvertisementForConversation:v9 fromOldConversation:v7];
}

- (void)conversationManager:(id)a3 screeningChangedForConversation:(id)a4
{
  v6 = a4;
  v5 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v5);

  [(CSDUserActivityManager *)self updateHandoffAdvertisementForConversation:v6 fromOldConversation:0];
}

- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4 fromOldConversation:(id)a5
{
  v6 = a4;
  v7 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 UUID];
    v10 = 136315394;
    v11 = "[CSDUserActivityManager conversationManager:activeRemoteParticipantsChangedForConversation:fromOldConversation:]";
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Updating handoff registration for conversation UUID %@", &v10, 0x16u);
  }

  [(CSDUserActivityManager *)self updateHandoffRegistrationForConversation:v6 fromOldConversation:v6];
}

- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4
{
  v5 = a4;
  v6 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 UUID];
    v9 = 136315394;
    v10 = "[CSDUserActivityManager conversationManager:addedActiveConversation:]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Updating handoff registration for conversation UUID %@", &v9, 0x16u);
  }

  [(CSDUserActivityManager *)self updateHandoffRegistrationForConversation:v5 fromOldConversation:0];
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 activeConversations];

  v10 = [v9 count];
  if (v10)
  {
    [(CSDUserActivityManager *)self deregisterHandoffIdentifiersForConversation:v6];
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No more conversations, unregistering all conversation handoff dynamic identifiers", v13, 2u);
    }

    v12 = [(CSDUserActivityManager *)self activityCommunicator];
    [v12 stopListeningForActivityType:5 dynamicIdentifier:0];
  }

  [(CSDUserActivityManager *)self stopAdvertisingForRemovedConversationIfNecessary:v6];
}

- (void)stopAdvertisingForRemovedConversationIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(CSDUserActivityManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v19 = self;
  v6 = [(CSDUserActivityManager *)self activityCommunicator];
  v7 = [v6 queuedActivitiesOfType:5];

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
        v14 = [v13 dynamicIdentifier];
        v15 = [v4 groupUUID];
        v16 = [v15 UUIDString];
        v17 = [v14 containsString:v16];

        if (v17)
        {
          v18 = [(CSDUserActivityManager *)v19 activityCommunicator];
          [v18 stopBroadcastingActivity:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

@end