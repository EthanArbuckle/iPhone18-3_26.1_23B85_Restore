@interface SBConferenceManager
+ (SBConferenceManager)sharedInstance;
- (BOOL)activeFaceTimeCallExists;
- (BOOL)faceTimeInvitationExists;
- (BOOL)faceTimeIsAvailable;
- (BOOL)inFaceTime;
- (BOOL)inFaceTimeVideo;
- (SBConferenceManager)init;
- (id)currentFaceTimeCall;
- (void)_faceTimeStateChanged:(id)changed;
- (void)dealloc;
- (void)endFaceTime;
@end

@implementation SBConferenceManager

+ (SBConferenceManager)sharedInstance
{
  v2 = __conferenceManager;
  if (!__conferenceManager)
  {
    kdebug_trace();
    v3 = objc_alloc_init(SBConferenceManager);
    v4 = __conferenceManager;
    __conferenceManager = v3;

    kdebug_trace();
    v2 = __conferenceManager;
  }

  return v2;
}

- (BOOL)activeFaceTimeCallExists
{
  activeFaceTimeCall = [(SBConferenceManager *)self activeFaceTimeCall];
  v3 = activeFaceTimeCall != 0;

  return v3;
}

- (BOOL)inFaceTime
{
  currentFaceTimeCall = [(SBConferenceManager *)self currentFaceTimeCall];
  v3 = currentFaceTimeCall != 0;

  return v3;
}

- (id)currentFaceTimeCall
{
  activeFaceTimeCall = [(SBConferenceManager *)self activeFaceTimeCall];
  v4 = activeFaceTimeCall;
  if (activeFaceTimeCall)
  {
    incomingFaceTimeCall = activeFaceTimeCall;
  }

  else
  {
    incomingFaceTimeCall = [(SBConferenceManager *)self incomingFaceTimeCall];
  }

  v6 = incomingFaceTimeCall;

  return v6;
}

- (SBConferenceManager)init
{
  v12.receiver = self;
  v12.super_class = SBConferenceManager;
  v2 = [(SBConferenceManager *)&v12 init];
  if (v2)
  {
    v2->_hasFaceTimeCapability = MGGetBoolAnswer();
    objc_initWeak(&location, v2);
    [MEMORY[0x277CBEA60] arrayWithObject:@"venice"];
    v3 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v10, &location);
    v2->_faceTimeCapabilityUpdateToken = MGRegisterForUpdates();

    mEMORY[0x277D07D70] = [MEMORY[0x277D07D70] sharedInstance];
    [mEMORY[0x277D07D70] addListenerID:@"com.apple.springboard" forService:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__faceTimeStateChanged_ name:*MEMORY[0x277D6F038] object:0];
    mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
    sharedCallCenter = v2->_sharedCallCenter;
    v2->_sharedCallCenter = mEMORY[0x277D6EDF8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__SBConferenceManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    WeakRetained[8] = MGGetBoolAnswer();
    WeakRetained = v2;
  }
}

- (BOOL)faceTimeIsAvailable
{
  mEMORY[0x277D07D70] = [MEMORY[0x277D07D70] sharedInstance];
  v3 = [mEMORY[0x277D07D70] availabilityForListenerID:@"com.apple.springboard" forService:0] == 1;

  return v3;
}

- (BOOL)faceTimeInvitationExists
{
  incomingFaceTimeCall = [(SBConferenceManager *)self incomingFaceTimeCall];
  v3 = incomingFaceTimeCall != 0;

  return v3;
}

- (BOOL)inFaceTimeVideo
{
  currentFaceTimeCall = [(SBConferenceManager *)self currentFaceTimeCall];
  isVideo = [currentFaceTimeCall isVideo];

  return isVideo;
}

- (void)dealloc
{
  if (self->_faceTimeCapabilityUpdateToken != -1)
  {
    MGCancelNotifications();
  }

  mEMORY[0x277D07D70] = [MEMORY[0x277D07D70] sharedInstance];
  [mEMORY[0x277D07D70] removeListenerID:@"com.apple.springboard" forService:0];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v4.receiver = self;
  v4.super_class = SBConferenceManager;
  [(SBConferenceManager *)&v4 dealloc];
}

- (void)_faceTimeStateChanged:(id)changed
{
  changedCopy = changed;
  currentFaceTimeCall = [(SBConferenceManager *)self currentFaceTimeCall];
  v5 = currentFaceTimeCall;
  if (currentFaceTimeCall)
  {
    object = currentFaceTimeCall;
  }

  else
  {
    object = [changedCopy object];
  }

  v7 = object;

  if ([v7 isVideo])
  {
    status = [v7 status];
    if (status == 6 || !status)
    {
      v9 = +[SBTelephonyManager sharedTelephonyManager];
      inCall = [v9 inCall];

      if ((inCall & 1) == 0)
      {
        v11 = +[SBLockScreenManager sharedInstance];
        isUILocked = [v11 isUILocked];

        if (isUILocked)
        {
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:@"SBLockScreenFacetimeCallUINeedsUpdateNotification" object:self];
        }
      }
    }

    SBUpdateCallState();
    v14 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    [v14 resetIdleTimerForReason:@"SBConference:FaceTimeChanged"];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"SBFaceTimeStateChangedNotification" object:self];
  }
}

- (void)endFaceTime
{
  currentFaceTimeCall = [(SBConferenceManager *)self currentFaceTimeCall];
  if (currentFaceTimeCall)
  {
    v4 = currentFaceTimeCall;
    [(TUCallCenter *)self->_sharedCallCenter disconnectCall:currentFaceTimeCall];
    currentFaceTimeCall = v4;
  }
}

@end