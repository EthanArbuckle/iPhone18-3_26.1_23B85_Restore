@interface CSDStatusBarResolver
- (BOOL)callProviderSupportsSystemControls;
- (BOOL)callStatusSupportsSystemControls;
- (BOOL)conversationStateSupportsSystemControls;
- (BOOL)resolvedCallIsSharePlayCapableTelephony;
- (BOOL)shouldDisplayHandoffEligibleConversationControls;
- (BOOL)shouldDisplayLagunaPullConversationControls;
- (BOOL)shouldDisplaySystemCallControls;
- (CSDCall)resolvedCall;
- (CSDStatusBarResolver)initWithCallCenterObserver:(id)a3 inCallServiceProcessObserver:(id)a4 springBoardProcessObserver:(id)a5 callCenter:(id)a6 featureFlags:(id)a7 queue:(id)a8;
- (CSDStatusBarResolver)initWithQueue:(id)a3;
- (CSDStatusBarResolverDelegate)delegate;
- (TUConversation)resolvedConversation;
- (id)resolvedAVLessConversation;
- (id)resolvedCallForActiveDescriptor:(id)a3;
- (id)resolvedHandoffEligibleConversation;
- (void)callsChangedForCallCenterObserver:(id)a3;
- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 activitySessionsChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 handoffEligibilityChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 localVideoToggledForConversation:(id)a4;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
- (void)dealloc;
- (void)handleSpringBoardPIDChanged:(id)a3;
- (void)setShouldRegisterForPillDatasource:(BOOL)a3;
- (void)updateResolvedDescriptor;
@end

@implementation CSDStatusBarResolver

- (CSDStatusBarResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateResolvedDescriptor
{
  v3 = [(CSDStatusBarResolver *)self queue];
  dispatch_assert_queue_V2(v3);

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 1;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10005317C;
  v46[3] = &unk_10061C418;
  v46[4] = self;
  v46[5] = &v55;
  v46[6] = &v47;
  v46[7] = &v51;
  v4 = objc_retainBlock(v46);
  v5 = [(CSDStatusBarResolver *)self resolvedCall];
  v6 = [(CSDStatusBarResolver *)self resolvedConversation];
  v7 = v6;
  if (v5)
  {
    v8 = [v5 status] == 4;
    if ([v5 isVideo])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v5 isThirdPartyVideo];
    }

    v48[3] = v9;
    if ([v5 isPTT])
    {
      v8 = 2 * ([v5 status] != 1);
      v48[3] = 3;
    }

    if ([v5 isScreening] && objc_msgSend(v5, "screeningAnnouncementHasFinished"))
    {
      if ([v5 receptionistState])
      {
        if ([v5 receptionistState] == 7)
        {
          v8 = 4;
        }

        else
        {
          v8 = 3;
        }
      }

      else
      {
        v8 = 4;
      }
    }

    v16 = [(CSDStatusBarResolver *)self featureFlags];
    if (([v16 callRecordingEnabled] & 1) != 0 && (objc_msgSend(v5, "recordingSession"), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = [v5 recordingSession];
      v19 = [v18 recordingState];

      if (v19 == 3)
      {
        v8 = 6;
      }
    }

    else
    {
    }

    v20 = [(CSDStatusBarResolver *)self callCenter];
    v21 = [v20 queue];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10013AFF8;
    v43[3] = &unk_10061C440;
    v45 = v4;
    v43[4] = self;
    v44 = v5;
    dispatch_sync(v21, v43);

    if (*(v56 + 24) == 1)
    {
      v22 = [STCallingStatusDomainCallDescriptor alloc];
      v14 = [v22 initWithCallType:v48[3] callState:v8 copresenceActivityType:v52[3]];
    }

    else
    {
      v14 = 0;
    }

    v23 = &v45;
    v24 = v44;
    goto LABEL_45;
  }

  if (!v6)
  {
    v14 = 0;
    goto LABEL_46;
  }

  v10 = [(CSDStatusBarResolver *)self callCenter];
  v11 = [v10 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013B07C;
  block[3] = &unk_10061C440;
  v42 = v4;
  v12 = v7;
  v40 = v12;
  v41 = 0;
  dispatch_sync(v11, block);

  if ([v12 state] == 2)
  {
    goto LABEL_6;
  }

  if (![v12 avMode])
  {
    v15 = [v12 activeRemoteParticipants];
    if ([v15 count])
    {
    }

    else
    {
      v25 = v52[3];

      if (!v25)
      {
LABEL_6:
        v13 = 1;
        goto LABEL_41;
      }
    }
  }

  v26 = [v12 state];
  if (v26 || ([v12 handoffEligibility], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v27 = [v12 isContinuitySession];
    if (v26)
    {
      goto LABEL_38;
    }

    v28 = 0;
  }

  else
  {
    v27 = 1;
  }

LABEL_38:
  if (v27)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

LABEL_41:
  if (*(v56 + 24) == 1)
  {
    v29 = [STCallingStatusDomainCallDescriptor alloc];
    v14 = [v29 initWithCallType:v48[3] callState:v13 copresenceActivityType:v52[3]];
  }

  else
  {
    v14 = 0;
  }

  v23 = &v42;

  v24 = v40;
LABEL_45:

LABEL_46:
  v30 = [(CSDStatusBarResolver *)self resolvedDescriptor];
  v31 = TUObjectsAreEqualOrNil();

  if ((v31 & 1) == 0)
  {
    [(CSDStatusBarResolver *)self setResolvedDescriptor:v14];
    v32 = [(CSDStatusBarResolver *)self delegate];
    [v32 resolutionChangedForResolver:self];
  }

  os_unfair_lock_lock(&self->_durationUpdateTimerLock);
  v33 = [(CSDStatusBarResolver *)self resolvedDescriptor];

  if (!v33)
  {
    v37 = [(CSDStatusBarResolver *)self callDurationUpdateTimer];
    [v37 invalidate];

    [(CSDStatusBarResolver *)self setCallDurationUpdateTimer:0];
    v36 = sub_100004778();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "invalidate callDurationUpdateTimer", v38, 2u);
    }

    goto LABEL_55;
  }

  v34 = [(CSDStatusBarResolver *)self callDurationUpdateTimer];

  if (!v34)
  {
    v35 = sub_100004778();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "set up new callDurationUpdateTimer", v38, 2u);
    }

    v36 = [NSTimer scheduledTimerWithTimeInterval:self target:"updateResolvedDescriptor" selector:0 userInfo:1 repeats:1.0];
    [(CSDStatusBarResolver *)self setCallDurationUpdateTimer:v36];
LABEL_55:
  }

  os_unfair_lock_unlock(&self->_durationUpdateTimerLock);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
}

- (CSDCall)resolvedCall
{
  v3 = [(CSDStatusBarResolver *)self queue];
  dispatch_assert_queue_V2(v3);

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100028664;
  v13 = sub_1000328BC;
  v14 = 0;
  v4 = [(CSDStatusBarResolver *)self callCenter];
  v5 = [v4 queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003BE00;
  v8[3] = &unk_10061C1E0;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v5, v8);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (TUConversation)resolvedConversation
{
  v3 = [(CSDStatusBarResolver *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDStatusBarResolver *)self resolvedCall];

  if (v4)
  {
    v5 = [(CSDStatusBarResolver *)self callCenterObserver];
    v6 = [(CSDStatusBarResolver *)self resolvedCall];
    v7 = [v5 activeConversationForCall:v6];
  }

  else
  {
    v8 = [(CSDStatusBarResolver *)self resolvedAVLessConversation];
    v5 = v8;
    if (v8)
    {
      v9 = v8;
      v5 = v9;
    }

    else
    {
      v9 = [(CSDStatusBarResolver *)self resolvedHandoffEligibleConversation];
    }

    v7 = v9;
  }

  return v7;
}

- (id)resolvedAVLessConversation
{
  v3 = [(CSDStatusBarResolver *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDStatusBarResolver *)self featureFlags];
  v5 = [v4 avLessSharePlayEnabled];

  if (v5 && ([(CSDStatusBarResolver *)self resolvedCall], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100028664;
    v16 = sub_1000328BC;
    v17 = 0;
    v9 = [(CSDStatusBarResolver *)self callCenter];
    v10 = [v9 queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004B680;
    v11[3] = &unk_10061C1E0;
    v11[4] = self;
    v11[5] = &v12;
    dispatch_sync(v10, v11);

    v7 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)resolvedHandoffEligibleConversation
{
  v3 = [(CSDStatusBarResolver *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDStatusBarResolver *)self resolvedCall];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_100028664;
    v14 = sub_1000328BC;
    v15 = 0;
    v6 = [(CSDStatusBarResolver *)self callCenter];
    v7 = [v6 queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100053100;
    v9[3] = &unk_100619E80;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v7, v9);

    v5 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return v5;
}

- (CSDStatusBarResolver)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CSDCallCenterObserver);
  v6 = [[CSDProcessObserver alloc] initWithQueue:v4];
  v7 = [[CSDProcessObserver alloc] initWithQueue:v4];
  v8 = +[TUCallCenter sharedInstance];
  v9 = objc_alloc_init(TUFeatureFlags);
  v10 = [(CSDStatusBarResolver *)self initWithCallCenterObserver:v5 inCallServiceProcessObserver:v6 springBoardProcessObserver:v7 callCenter:v8 featureFlags:v9 queue:v4];

  return v10;
}

- (CSDStatusBarResolver)initWithCallCenterObserver:(id)a3 inCallServiceProcessObserver:(id)a4 springBoardProcessObserver:(id)a5 callCenter:(id)a6 featureFlags:(id)a7 queue:(id)a8
{
  v15 = a3;
  v30 = a4;
  v29 = a5;
  v16 = a6;
  v28 = a7;
  v17 = a8;
  v46.receiver = self;
  v46.super_class = CSDStatusBarResolver;
  v18 = [(CSDStatusBarResolver *)&v46 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, a8);
    v19->_durationUpdateTimerLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_callCenter, a6);
    objc_storeStrong(&v19->_callCenterObserver, a3);
    [(CSDCallCenterObserver *)v19->_callCenterObserver setTriggers:-1946157023];
    [(CSDCallCenterObserver *)v19->_callCenterObserver setTriggers:[(CSDCallCenterObserver *)v19->_callCenterObserver triggers]| 0x40000000];
    [(CSDCallCenterObserver *)v19->_callCenterObserver setDelegate:v19];
    objc_storeStrong(&v19->_inCallServiceProcessObserver, a4);
    objc_storeStrong(&v19->_springBoardProcessObserver, a5);
    objc_storeStrong(&v19->_featureFlags, a7);
    queue = v19->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013A848;
    block[3] = &unk_100619E58;
    v43 = v16;
    v21 = v19;
    v44 = v21;
    v45 = v17;
    dispatch_async(queue, block);
    objc_initWeak(&location, v21);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10013A89C;
    v39[3] = &unk_10061C3C8;
    objc_copyWeak(&v40, &location);
    [(CSDProcessObserverProtocol *)v19->_springBoardProcessObserver setProcessStateChanged:v39];
    springBoardProcessObserver = v19->_springBoardProcessObserver;
    v23 = TUBundleIdentifierSpringBoardApplication;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10013A978;
    v37[3] = &unk_10061C3F0;
    objc_copyWeak(&v38, &location);
    [(CSDProcessObserverProtocol *)springBoardProcessObserver processStatesForBundleIdentifier:v23 completion:v37];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10013AA08;
    v35[3] = &unk_10061C3C8;
    objc_copyWeak(&v36, &location);
    [(CSDProcessObserverProtocol *)v19->_inCallServiceProcessObserver setProcessStateChanged:v35];
    inCallServiceProcessObserver = v19->_inCallServiceProcessObserver;
    v25 = TUBundleIdentifierInCallServiceApplication;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10013ABA8;
    v33[3] = &unk_10061C3F0;
    objc_copyWeak(&v34, &location);
    [(CSDProcessObserverProtocol *)inCallServiceProcessObserver processStatesForBundleIdentifier:v25 completion:v33];
    v26 = [(CSDStatusBarResolver *)v21 queue];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10013AD18;
    v31[3] = &unk_100619D38;
    v32 = v21;
    dispatch_async(v26, v31);

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v19;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_durationUpdateTimerLock);
  [(NSTimer *)self->_callDurationUpdateTimer invalidate];
  callDurationUpdateTimer = self->_callDurationUpdateTimer;
  self->_callDurationUpdateTimer = 0;

  os_unfair_lock_unlock(&self->_durationUpdateTimerLock);
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invalidated callDurationUpdateTimer", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = CSDStatusBarResolver;
  [(CSDStatusBarResolver *)&v5 dealloc];
}

- (void)handleSpringBoardPIDChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDStatusBarResolver *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013AE80;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)resolvedCallForActiveDescriptor:(id)a3
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = a3;
  v3 = [v31 currentAudioAndVideoCalls];
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_25;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *v33;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v33 != v9)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v32 + 1) + 8 * i);
      v12 = [v11 provider];
      if (![v12 supportsCurrentPlatform])
      {
        goto LABEL_20;
      }

      v13 = [v11 isEndpointOnCurrentDevice];

      if (v13)
      {
        if ([v11 status] == 1)
        {
          if (!v6 || ([v11 callDuration], v15 = v14, objc_msgSend(v6, "callDuration"), v15 > v16))
          {
            v17 = v11;

            v6 = v17;
          }
        }

        if ([v11 status] == 3)
        {
          if (!v7 || ([v11 callDuration], v19 = v18, objc_msgSend(v7, "callDuration"), v19 > v20))
          {
            v21 = v11;

            v7 = v21;
          }
        }

        if ([v11 status] == 2)
        {
          if (!v8 || ([v11 callDuration], v23 = v22, objc_msgSend(v8, "callDuration"), v23 > v24))
          {
            v12 = v8;
            v8 = v11;
LABEL_20:

            continue;
          }
        }
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v5);
LABEL_25:

  v25 = [v31 frontmostBargeCall];
  v26 = v25;
  if (v8)
  {
    v27 = v8;
  }

  else
  {
    v27 = v25;
  }

  if (v6)
  {
    v27 = v6;
  }

  if (v7)
  {
    v27 = v7;
  }

  v28 = v27;
  v29 = v28;

  return v28;
}

- (BOOL)shouldDisplaySystemCallControls
{
  v3 = [(CSDStatusBarResolver *)self featureFlags];
  v4 = [v3 expanseEnabled];

  if (!v4 || ![(CSDStatusBarResolver *)self callProviderSupportsSystemControls]|| ![(CSDStatusBarResolver *)self conversationStateSupportsSystemControls])
  {
    return 0;
  }

  return [(CSDStatusBarResolver *)self callStatusSupportsSystemControls];
}

- (BOOL)shouldDisplayHandoffEligibleConversationControls
{
  v3 = [(CSDStatusBarResolver *)self featureFlags];
  v4 = [v3 conversationHandoffEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CSDStatusBarResolver *)self resolvedCall];

  if (v5)
  {
    return 0;
  }

  v8 = [(CSDStatusBarResolver *)self resolvedHandoffEligibleConversation];
  v6 = v8 != 0;

  return v6;
}

- (BOOL)shouldDisplayLagunaPullConversationControls
{
  v3 = [(CSDStatusBarResolver *)self featureFlags];
  v4 = [v3 lagunaEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CSDStatusBarResolver *)self featureFlags];
  v6 = [v5 lagunaPullBackEnabled];

  if (!v6)
  {
    return 0;
  }

  v7 = [(CSDStatusBarResolver *)self resolvedConversation];

  if (!v7)
  {
    return 0;
  }

  v8 = [(CSDStatusBarResolver *)self callCenter];
  v9 = [v8 neighborhoodActivityConduit];
  v10 = [(CSDStatusBarResolver *)self resolvedConversation];
  v11 = [v9 canPullBackConversation:v10];

  return v11;
}

- (BOOL)resolvedCallIsSharePlayCapableTelephony
{
  v3 = [(CSDStatusBarResolver *)self featureFlags];
  if ([v3 sharePlayInCallsEnabled])
  {
    v4 = [(CSDStatusBarResolver *)self resolvedCall];
    v5 = [v4 provider];
    if ([v5 isTelephonyProvider])
    {
      v6 = [(CSDStatusBarResolver *)self resolvedCall];
      v7 = [v6 isSharePlayCapable];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)callProviderSupportsSystemControls
{
  v3 = [(CSDStatusBarResolver *)self resolvedCall];
  v4 = [v3 provider];
  if ([v4 isFaceTimeProvider])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(CSDStatusBarResolver *)self resolvedAVLessConversation];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v5 = [(CSDStatusBarResolver *)self resolvedCallIsSharePlayCapableTelephony];
    }
  }

  return v5;
}

- (BOOL)conversationStateSupportsSystemControls
{
  v3 = [(CSDStatusBarResolver *)self resolvedConversation];
  if ([v3 state] == 1)
  {
    v4 = [(CSDStatusBarResolver *)self resolvedConversation];
    v5 = [v4 avMode];

    if (v5 == 2)
    {
      v6 = 0;
      return v6 & 1;
    }
  }

  else
  {
  }

  v7 = [(CSDStatusBarResolver *)self resolvedAVLessConversation];

  if (v7)
  {
    v8 = [(CSDStatusBarResolver *)self resolvedAVLessConversation];
    v9 = [v8 isContinuitySession] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v10 = [(CSDStatusBarResolver *)self resolvedCall];
  if ([v10 isConversation])
  {
    v6 = 1;
  }

  else
  {
    v11 = [(CSDStatusBarResolver *)self resolvedCall];
    v6 = [v11 isVideo] ^ 1 | v9;
  }

  return v6 & 1;
}

- (BOOL)callStatusSupportsSystemControls
{
  v3 = [(CSDStatusBarResolver *)self resolvedAVLessConversation];
  v4 = [(CSDStatusBarResolver *)self callCenter];
  v5 = [(CSDStatusBarResolver *)self resolvedCall];
  v6 = [v4 activeConversationForCall:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  v9 = v8;

  if ([v9 letMeInRequestState] == 2 && objc_msgSend(v9, "state") == 1)
  {
    goto LABEL_9;
  }

  v10 = [(CSDStatusBarResolver *)self resolvedCall];
  v11 = [v10 wantsHoldMusic];

  if (v11)
  {
    goto LABEL_9;
  }

  if ([v9 isContinuitySession])
  {
    goto LABEL_9;
  }

  v12 = [(CSDStatusBarResolver *)self resolvedCall];
  v13 = [v12 isConferenced];

  if (v13)
  {
    goto LABEL_9;
  }

  v16 = [(CSDStatusBarResolver *)self resolvedCall];
  if ([v16 isScreening])
  {
    v17 = [(CSDStatusBarResolver *)self resolvedCall];
    v18 = [v17 smartHoldingSession];

    if (!v18)
    {
      v19 = [(CSDStatusBarResolver *)self resolvedCall];
      v20 = [v19 receptionistState];

      if (v20 == 7 || (-[CSDStatusBarResolver resolvedCall](self, "resolvedCall"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 receptionistState], v21, !v22))
      {
LABEL_9:
        v14 = 0;
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

  v23 = [(CSDStatusBarResolver *)self resolvedCall];
  if ([v23 status] == 1)
  {
    v14 = 1;
  }

  else
  {
    v24 = [(CSDStatusBarResolver *)self resolvedCall];
    v14 = [v24 status] == 3 || v3 != 0;
  }

LABEL_10:
  return v14;
}

- (void)setShouldRegisterForPillDatasource:(BOOL)a3
{
  if (self->_shouldRegisterForPillDatasource != a3)
  {
    self->_shouldRegisterForPillDatasource = a3;
    v5 = [(CSDStatusBarResolver *)self delegate];
    [v5 pillDataSourceRegistrationChangedForResolver:self];
  }
}

- (void)callsChangedForCallCenterObserver:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callsChangedForCallCenterObserver", buf, 2u);
  }

  v6 = [v4 callContainer];
  v7 = [(CSDStatusBarResolver *)self resolvedCallForActiveDescriptor:v6];

  v8 = [v4 callContainer];

  v9 = [v8 currentAudioAndVideoCallCount] != 0;
  v10 = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BA90;
  block[3] = &unk_100619F48;
  v14 = v9;
  block[4] = self;
  v13 = v7;
  v11 = v7;
  dispatch_async(v10, block);
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:removedActiveConversation:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by removedActiveConversation for conversation UUID %@", buf, 0x16u);
  }

  v8 = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BC1C;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:addedActiveConversation:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by addedActiveConversation for conversation UUID %@", buf, 0x16u);
  }

  v8 = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BD68;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:stateChangedForConversation:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by stateChangedForConversation for conversation UUID %@", buf, 0x16u);
  }

  v8 = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BEB4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)conversationManager:(id)a3 activitySessionsChangedForConversation:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:activitySessionsChangedForConversation:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by activitySessionsChangedForConversation for conversation UUID %@", buf, 0x16u);
  }

  v8 = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C000;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:activeRemoteParticipantsChangedForConversation:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by activeRemoteParticipantsChangedForConversation for conversation UUID %@", buf, 0x16u);
  }

  v8 = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C14C;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)conversationManager:(id)a3 localVideoToggledForConversation:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:localVideoToggledForConversation:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by localVideoToggledForConversation for conversation UUID %@", buf, 0x16u);
  }

  v8 = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C298;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)conversationManager:(id)a3 handoffEligibilityChangedForConversation:(id)a4
{
  v5 = a4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:handoffEligibilityChangedForConversation:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by handoffEligibilityChangedForConversation for conversation UUID %@", buf, 0x16u);
  }

  v8 = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C3E4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v8, block);
}

@end