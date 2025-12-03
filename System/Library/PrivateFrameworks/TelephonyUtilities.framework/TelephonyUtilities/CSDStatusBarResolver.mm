@interface CSDStatusBarResolver
- (BOOL)callProviderSupportsSystemControls;
- (BOOL)callStatusSupportsSystemControls;
- (BOOL)conversationStateSupportsSystemControls;
- (BOOL)resolvedCallIsSharePlayCapableTelephony;
- (BOOL)shouldDisplayHandoffEligibleConversationControls;
- (BOOL)shouldDisplayLagunaPullConversationControls;
- (BOOL)shouldDisplaySystemCallControls;
- (CSDCall)resolvedCall;
- (CSDStatusBarResolver)initWithCallCenterObserver:(id)observer inCallServiceProcessObserver:(id)processObserver springBoardProcessObserver:(id)boardProcessObserver callCenter:(id)center featureFlags:(id)flags queue:(id)queue;
- (CSDStatusBarResolver)initWithQueue:(id)queue;
- (CSDStatusBarResolverDelegate)delegate;
- (TUConversation)resolvedConversation;
- (id)resolvedAVLessConversation;
- (id)resolvedCallForActiveDescriptor:(id)descriptor;
- (id)resolvedHandoffEligibleConversation;
- (void)callsChangedForCallCenterObserver:(id)observer;
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager activitySessionsChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager handoffEligibilityChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager localVideoToggledForConversation:(id)conversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)dealloc;
- (void)handleSpringBoardPIDChanged:(id)changed;
- (void)setShouldRegisterForPillDatasource:(BOOL)datasource;
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
  queue = [(CSDStatusBarResolver *)self queue];
  dispatch_assert_queue_V2(queue);

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
  resolvedCall = [(CSDStatusBarResolver *)self resolvedCall];
  resolvedConversation = [(CSDStatusBarResolver *)self resolvedConversation];
  v7 = resolvedConversation;
  if (resolvedCall)
  {
    v8 = [resolvedCall status] == 4;
    if ([resolvedCall isVideo])
    {
      isThirdPartyVideo = 1;
    }

    else
    {
      isThirdPartyVideo = [resolvedCall isThirdPartyVideo];
    }

    v48[3] = isThirdPartyVideo;
    if ([resolvedCall isPTT])
    {
      v8 = 2 * ([resolvedCall status] != 1);
      v48[3] = 3;
    }

    if ([resolvedCall isScreening] && objc_msgSend(resolvedCall, "screeningAnnouncementHasFinished"))
    {
      if ([resolvedCall receptionistState])
      {
        if ([resolvedCall receptionistState] == 7)
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

    featureFlags = [(CSDStatusBarResolver *)self featureFlags];
    if (([featureFlags callRecordingEnabled] & 1) != 0 && (objc_msgSend(resolvedCall, "recordingSession"), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      recordingSession = [resolvedCall recordingSession];
      recordingState = [recordingSession recordingState];

      if (recordingState == 3)
      {
        v8 = 6;
      }
    }

    else
    {
    }

    callCenter = [(CSDStatusBarResolver *)self callCenter];
    queue2 = [callCenter queue];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10013AFF8;
    v43[3] = &unk_10061C440;
    v45 = v4;
    v43[4] = self;
    v44 = resolvedCall;
    dispatch_sync(queue2, v43);

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

  if (!resolvedConversation)
  {
    v14 = 0;
    goto LABEL_46;
  }

  callCenter2 = [(CSDStatusBarResolver *)self callCenter];
  queue3 = [callCenter2 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013B07C;
  block[3] = &unk_10061C440;
  v42 = v4;
  v12 = v7;
  v40 = v12;
  v41 = 0;
  dispatch_sync(queue3, block);

  if ([v12 state] == 2)
  {
    goto LABEL_6;
  }

  if (![v12 avMode])
  {
    activeRemoteParticipants = [v12 activeRemoteParticipants];
    if ([activeRemoteParticipants count])
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

  state = [v12 state];
  if (state || ([v12 handoffEligibility], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    isContinuitySession = [v12 isContinuitySession];
    if (state)
    {
      goto LABEL_38;
    }

    v28 = 0;
  }

  else
  {
    isContinuitySession = 1;
  }

LABEL_38:
  if (isContinuitySession)
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
  resolvedDescriptor = [(CSDStatusBarResolver *)self resolvedDescriptor];
  v31 = TUObjectsAreEqualOrNil();

  if ((v31 & 1) == 0)
  {
    [(CSDStatusBarResolver *)self setResolvedDescriptor:v14];
    delegate = [(CSDStatusBarResolver *)self delegate];
    [delegate resolutionChangedForResolver:self];
  }

  os_unfair_lock_lock(&self->_durationUpdateTimerLock);
  resolvedDescriptor2 = [(CSDStatusBarResolver *)self resolvedDescriptor];

  if (!resolvedDescriptor2)
  {
    callDurationUpdateTimer = [(CSDStatusBarResolver *)self callDurationUpdateTimer];
    [callDurationUpdateTimer invalidate];

    [(CSDStatusBarResolver *)self setCallDurationUpdateTimer:0];
    v36 = sub_100004778();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "invalidate callDurationUpdateTimer", v38, 2u);
    }

    goto LABEL_55;
  }

  callDurationUpdateTimer2 = [(CSDStatusBarResolver *)self callDurationUpdateTimer];

  if (!callDurationUpdateTimer2)
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
  queue = [(CSDStatusBarResolver *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100028664;
  v13 = sub_1000328BC;
  v14 = 0;
  callCenter = [(CSDStatusBarResolver *)self callCenter];
  queue2 = [callCenter queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003BE00;
  v8[3] = &unk_10061C1E0;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(queue2, v8);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (TUConversation)resolvedConversation
{
  queue = [(CSDStatusBarResolver *)self queue];
  dispatch_assert_queue_V2(queue);

  resolvedCall = [(CSDStatusBarResolver *)self resolvedCall];

  if (resolvedCall)
  {
    callCenterObserver = [(CSDStatusBarResolver *)self callCenterObserver];
    resolvedCall2 = [(CSDStatusBarResolver *)self resolvedCall];
    v7 = [callCenterObserver activeConversationForCall:resolvedCall2];
  }

  else
  {
    resolvedAVLessConversation = [(CSDStatusBarResolver *)self resolvedAVLessConversation];
    callCenterObserver = resolvedAVLessConversation;
    if (resolvedAVLessConversation)
    {
      resolvedHandoffEligibleConversation = resolvedAVLessConversation;
      callCenterObserver = resolvedHandoffEligibleConversation;
    }

    else
    {
      resolvedHandoffEligibleConversation = [(CSDStatusBarResolver *)self resolvedHandoffEligibleConversation];
    }

    v7 = resolvedHandoffEligibleConversation;
  }

  return v7;
}

- (id)resolvedAVLessConversation
{
  queue = [(CSDStatusBarResolver *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDStatusBarResolver *)self featureFlags];
  avLessSharePlayEnabled = [featureFlags avLessSharePlayEnabled];

  if (avLessSharePlayEnabled && ([(CSDStatusBarResolver *)self resolvedCall], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100028664;
    v16 = sub_1000328BC;
    v17 = 0;
    callCenter = [(CSDStatusBarResolver *)self callCenter];
    queue2 = [callCenter queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004B680;
    v11[3] = &unk_10061C1E0;
    v11[4] = self;
    v11[5] = &v12;
    dispatch_sync(queue2, v11);

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
  queue = [(CSDStatusBarResolver *)self queue];
  dispatch_assert_queue_V2(queue);

  resolvedCall = [(CSDStatusBarResolver *)self resolvedCall];

  if (resolvedCall)
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
    callCenter = [(CSDStatusBarResolver *)self callCenter];
    queue2 = [callCenter queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100053100;
    v9[3] = &unk_100619E80;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(queue2, v9);

    v5 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return v5;
}

- (CSDStatusBarResolver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_alloc_init(CSDCallCenterObserver);
  v6 = [[CSDProcessObserver alloc] initWithQueue:queueCopy];
  v7 = [[CSDProcessObserver alloc] initWithQueue:queueCopy];
  v8 = +[TUCallCenter sharedInstance];
  v9 = objc_alloc_init(TUFeatureFlags);
  v10 = [(CSDStatusBarResolver *)self initWithCallCenterObserver:v5 inCallServiceProcessObserver:v6 springBoardProcessObserver:v7 callCenter:v8 featureFlags:v9 queue:queueCopy];

  return v10;
}

- (CSDStatusBarResolver)initWithCallCenterObserver:(id)observer inCallServiceProcessObserver:(id)processObserver springBoardProcessObserver:(id)boardProcessObserver callCenter:(id)center featureFlags:(id)flags queue:(id)queue
{
  observerCopy = observer;
  processObserverCopy = processObserver;
  boardProcessObserverCopy = boardProcessObserver;
  centerCopy = center;
  flagsCopy = flags;
  queueCopy = queue;
  v46.receiver = self;
  v46.super_class = CSDStatusBarResolver;
  v18 = [(CSDStatusBarResolver *)&v46 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    v19->_durationUpdateTimerLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_callCenter, center);
    objc_storeStrong(&v19->_callCenterObserver, observer);
    [(CSDCallCenterObserver *)v19->_callCenterObserver setTriggers:-1946157023];
    [(CSDCallCenterObserver *)v19->_callCenterObserver setTriggers:[(CSDCallCenterObserver *)v19->_callCenterObserver triggers]| 0x40000000];
    [(CSDCallCenterObserver *)v19->_callCenterObserver setDelegate:v19];
    objc_storeStrong(&v19->_inCallServiceProcessObserver, processObserver);
    objc_storeStrong(&v19->_springBoardProcessObserver, boardProcessObserver);
    objc_storeStrong(&v19->_featureFlags, flags);
    queue = v19->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013A848;
    block[3] = &unk_100619E58;
    v43 = centerCopy;
    v21 = v19;
    v44 = v21;
    v45 = queueCopy;
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
    queue = [(CSDStatusBarResolver *)v21 queue];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10013AD18;
    v31[3] = &unk_100619D38;
    v32 = v21;
    dispatch_async(queue, v31);

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

- (void)handleSpringBoardPIDChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDStatusBarResolver *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013AE80;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (id)resolvedCallForActiveDescriptor:(id)descriptor
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  descriptorCopy = descriptor;
  currentAudioAndVideoCalls = [descriptorCopy currentAudioAndVideoCalls];
  v4 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v32 objects:v36 count:16];
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
        objc_enumerationMutation(currentAudioAndVideoCalls);
      }

      v11 = *(*(&v32 + 1) + 8 * i);
      provider = [v11 provider];
      if (![provider supportsCurrentPlatform])
      {
        goto LABEL_20;
      }

      isEndpointOnCurrentDevice = [v11 isEndpointOnCurrentDevice];

      if (isEndpointOnCurrentDevice)
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
            provider = v8;
            v8 = v11;
LABEL_20:

            continue;
          }
        }
      }
    }

    v5 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v5);
LABEL_25:

  frontmostBargeCall = [descriptorCopy frontmostBargeCall];
  v26 = frontmostBargeCall;
  if (v8)
  {
    v27 = v8;
  }

  else
  {
    v27 = frontmostBargeCall;
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
  featureFlags = [(CSDStatusBarResolver *)self featureFlags];
  expanseEnabled = [featureFlags expanseEnabled];

  if (!expanseEnabled || ![(CSDStatusBarResolver *)self callProviderSupportsSystemControls]|| ![(CSDStatusBarResolver *)self conversationStateSupportsSystemControls])
  {
    return 0;
  }

  return [(CSDStatusBarResolver *)self callStatusSupportsSystemControls];
}

- (BOOL)shouldDisplayHandoffEligibleConversationControls
{
  featureFlags = [(CSDStatusBarResolver *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (!conversationHandoffEnabled)
  {
    return 0;
  }

  resolvedCall = [(CSDStatusBarResolver *)self resolvedCall];

  if (resolvedCall)
  {
    return 0;
  }

  resolvedHandoffEligibleConversation = [(CSDStatusBarResolver *)self resolvedHandoffEligibleConversation];
  v6 = resolvedHandoffEligibleConversation != 0;

  return v6;
}

- (BOOL)shouldDisplayLagunaPullConversationControls
{
  featureFlags = [(CSDStatusBarResolver *)self featureFlags];
  lagunaEnabled = [featureFlags lagunaEnabled];

  if (!lagunaEnabled)
  {
    return 0;
  }

  featureFlags2 = [(CSDStatusBarResolver *)self featureFlags];
  lagunaPullBackEnabled = [featureFlags2 lagunaPullBackEnabled];

  if (!lagunaPullBackEnabled)
  {
    return 0;
  }

  resolvedConversation = [(CSDStatusBarResolver *)self resolvedConversation];

  if (!resolvedConversation)
  {
    return 0;
  }

  callCenter = [(CSDStatusBarResolver *)self callCenter];
  neighborhoodActivityConduit = [callCenter neighborhoodActivityConduit];
  resolvedConversation2 = [(CSDStatusBarResolver *)self resolvedConversation];
  v11 = [neighborhoodActivityConduit canPullBackConversation:resolvedConversation2];

  return v11;
}

- (BOOL)resolvedCallIsSharePlayCapableTelephony
{
  featureFlags = [(CSDStatusBarResolver *)self featureFlags];
  if ([featureFlags sharePlayInCallsEnabled])
  {
    resolvedCall = [(CSDStatusBarResolver *)self resolvedCall];
    provider = [resolvedCall provider];
    if ([provider isTelephonyProvider])
    {
      resolvedCall2 = [(CSDStatusBarResolver *)self resolvedCall];
      isSharePlayCapable = [resolvedCall2 isSharePlayCapable];
    }

    else
    {
      isSharePlayCapable = 0;
    }
  }

  else
  {
    isSharePlayCapable = 0;
  }

  return isSharePlayCapable;
}

- (BOOL)callProviderSupportsSystemControls
{
  resolvedCall = [(CSDStatusBarResolver *)self resolvedCall];
  provider = [resolvedCall provider];
  if ([provider isFaceTimeProvider])
  {
    resolvedCallIsSharePlayCapableTelephony = 1;
  }

  else
  {
    resolvedAVLessConversation = [(CSDStatusBarResolver *)self resolvedAVLessConversation];
    if (resolvedAVLessConversation)
    {
      resolvedCallIsSharePlayCapableTelephony = 1;
    }

    else
    {
      resolvedCallIsSharePlayCapableTelephony = [(CSDStatusBarResolver *)self resolvedCallIsSharePlayCapableTelephony];
    }
  }

  return resolvedCallIsSharePlayCapableTelephony;
}

- (BOOL)conversationStateSupportsSystemControls
{
  resolvedConversation = [(CSDStatusBarResolver *)self resolvedConversation];
  if ([resolvedConversation state] == 1)
  {
    resolvedConversation2 = [(CSDStatusBarResolver *)self resolvedConversation];
    avMode = [resolvedConversation2 avMode];

    if (avMode == 2)
    {
      v6 = 0;
      return v6 & 1;
    }
  }

  else
  {
  }

  resolvedAVLessConversation = [(CSDStatusBarResolver *)self resolvedAVLessConversation];

  if (resolvedAVLessConversation)
  {
    resolvedAVLessConversation2 = [(CSDStatusBarResolver *)self resolvedAVLessConversation];
    v9 = [resolvedAVLessConversation2 isContinuitySession] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  resolvedCall = [(CSDStatusBarResolver *)self resolvedCall];
  if ([resolvedCall isConversation])
  {
    v6 = 1;
  }

  else
  {
    resolvedCall2 = [(CSDStatusBarResolver *)self resolvedCall];
    v6 = [resolvedCall2 isVideo] ^ 1 | v9;
  }

  return v6 & 1;
}

- (BOOL)callStatusSupportsSystemControls
{
  resolvedAVLessConversation = [(CSDStatusBarResolver *)self resolvedAVLessConversation];
  callCenter = [(CSDStatusBarResolver *)self callCenter];
  resolvedCall = [(CSDStatusBarResolver *)self resolvedCall];
  v6 = [callCenter activeConversationForCall:resolvedCall];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = resolvedAVLessConversation;
  }

  v9 = v8;

  if ([v9 letMeInRequestState] == 2 && objc_msgSend(v9, "state") == 1)
  {
    goto LABEL_9;
  }

  resolvedCall2 = [(CSDStatusBarResolver *)self resolvedCall];
  wantsHoldMusic = [resolvedCall2 wantsHoldMusic];

  if (wantsHoldMusic)
  {
    goto LABEL_9;
  }

  if ([v9 isContinuitySession])
  {
    goto LABEL_9;
  }

  resolvedCall3 = [(CSDStatusBarResolver *)self resolvedCall];
  isConferenced = [resolvedCall3 isConferenced];

  if (isConferenced)
  {
    goto LABEL_9;
  }

  resolvedCall4 = [(CSDStatusBarResolver *)self resolvedCall];
  if ([resolvedCall4 isScreening])
  {
    resolvedCall5 = [(CSDStatusBarResolver *)self resolvedCall];
    smartHoldingSession = [resolvedCall5 smartHoldingSession];

    if (!smartHoldingSession)
    {
      resolvedCall6 = [(CSDStatusBarResolver *)self resolvedCall];
      receptionistState = [resolvedCall6 receptionistState];

      if (receptionistState == 7 || (-[CSDStatusBarResolver resolvedCall](self, "resolvedCall"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 receptionistState], v21, !v22))
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

  resolvedCall7 = [(CSDStatusBarResolver *)self resolvedCall];
  if ([resolvedCall7 status] == 1)
  {
    v14 = 1;
  }

  else
  {
    resolvedCall8 = [(CSDStatusBarResolver *)self resolvedCall];
    v14 = [resolvedCall8 status] == 3 || resolvedAVLessConversation != 0;
  }

LABEL_10:
  return v14;
}

- (void)setShouldRegisterForPillDatasource:(BOOL)datasource
{
  if (self->_shouldRegisterForPillDatasource != datasource)
  {
    self->_shouldRegisterForPillDatasource = datasource;
    delegate = [(CSDStatusBarResolver *)self delegate];
    [delegate pillDataSourceRegistrationChangedForResolver:self];
  }
}

- (void)callsChangedForCallCenterObserver:(id)observer
{
  observerCopy = observer;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callsChangedForCallCenterObserver", buf, 2u);
  }

  callContainer = [observerCopy callContainer];
  v7 = [(CSDStatusBarResolver *)self resolvedCallForActiveDescriptor:callContainer];

  callContainer2 = [observerCopy callContainer];

  v9 = [callContainer2 currentAudioAndVideoCallCount] != 0;
  queue = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BA90;
  block[3] = &unk_100619F48;
  v14 = v9;
  block[4] = self;
  v13 = v7;
  v11 = v7;
  dispatch_async(queue, block);
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  conversationCopy = conversation;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:removedActiveConversation:]";
    v12 = 2112;
    v13 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by removedActiveConversation for conversation UUID %@", buf, 0x16u);
  }

  queue = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BC1C;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation
{
  conversationCopy = conversation;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:addedActiveConversation:]";
    v12 = 2112;
    v13 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by addedActiveConversation for conversation UUID %@", buf, 0x16u);
  }

  queue = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BD68;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:stateChangedForConversation:]";
    v12 = 2112;
    v13 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by stateChangedForConversation for conversation UUID %@", buf, 0x16u);
  }

  queue = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BEB4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)conversationManager:(id)manager activitySessionsChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:activitySessionsChangedForConversation:]";
    v12 = 2112;
    v13 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by activitySessionsChangedForConversation for conversation UUID %@", buf, 0x16u);
  }

  queue = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C000;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:activeRemoteParticipantsChangedForConversation:]";
    v12 = 2112;
    v13 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by activeRemoteParticipantsChangedForConversation for conversation UUID %@", buf, 0x16u);
  }

  queue = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C14C;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)conversationManager:(id)manager localVideoToggledForConversation:(id)conversation
{
  conversationCopy = conversation;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:localVideoToggledForConversation:]";
    v12 = 2112;
    v13 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by localVideoToggledForConversation for conversation UUID %@", buf, 0x16u);
  }

  queue = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C298;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)conversationManager:(id)manager handoffEligibilityChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    *buf = 136315394;
    v11 = "[CSDStatusBarResolver conversationManager:handoffEligibilityChangedForConversation:]";
    v12 = 2112;
    v13 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating status bar triggered by handoffEligibilityChangedForConversation for conversation UUID %@", buf, 0x16u);
  }

  queue = [(CSDStatusBarResolver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C3E4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

@end