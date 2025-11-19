@interface SBConferenceManager
+ (SBConferenceManager)sharedInstance;
- (BOOL)activeFaceTimeCallExists;
- (BOOL)faceTimeInvitationExists;
- (BOOL)faceTimeIsAvailable;
- (BOOL)inFaceTime;
- (BOOL)inFaceTimeVideo;
- (SBConferenceManager)init;
- (id)currentFaceTimeCall;
- (void)_faceTimeStateChanged:(id)a3;
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
  v2 = [(SBConferenceManager *)self activeFaceTimeCall];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)inFaceTime
{
  v2 = [(SBConferenceManager *)self currentFaceTimeCall];
  v3 = v2 != 0;

  return v3;
}

- (id)currentFaceTimeCall
{
  v3 = [(SBConferenceManager *)self activeFaceTimeCall];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SBConferenceManager *)self incomingFaceTimeCall];
  }

  v6 = v5;

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

    v4 = [MEMORY[0x277D07D70] sharedInstance];
    [v4 addListenerID:@"com.apple.springboard" forService:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__faceTimeStateChanged_ name:*MEMORY[0x277D6F038] object:0];
    v6 = [MEMORY[0x277D6EDF8] sharedInstance];
    sharedCallCenter = v2->_sharedCallCenter;
    v2->_sharedCallCenter = v6;

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
  v2 = [MEMORY[0x277D07D70] sharedInstance];
  v3 = [v2 availabilityForListenerID:@"com.apple.springboard" forService:0] == 1;

  return v3;
}

- (BOOL)faceTimeInvitationExists
{
  v2 = [(SBConferenceManager *)self incomingFaceTimeCall];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)inFaceTimeVideo
{
  v2 = [(SBConferenceManager *)self currentFaceTimeCall];
  v3 = [v2 isVideo];

  return v3;
}

- (void)dealloc
{
  if (self->_faceTimeCapabilityUpdateToken != -1)
  {
    MGCancelNotifications();
  }

  v3 = [MEMORY[0x277D07D70] sharedInstance];
  [v3 removeListenerID:@"com.apple.springboard" forService:0];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v4.receiver = self;
  v4.super_class = SBConferenceManager;
  [(SBConferenceManager *)&v4 dealloc];
}

- (void)_faceTimeStateChanged:(id)a3
{
  v16 = a3;
  v4 = [(SBConferenceManager *)self currentFaceTimeCall];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v16 object];
  }

  v7 = v6;

  if ([v7 isVideo])
  {
    v8 = [v7 status];
    if (v8 == 6 || !v8)
    {
      v9 = +[SBTelephonyManager sharedTelephonyManager];
      v10 = [v9 inCall];

      if ((v10 & 1) == 0)
      {
        v11 = +[SBLockScreenManager sharedInstance];
        v12 = [v11 isUILocked];

        if (v12)
        {
          v13 = [MEMORY[0x277CCAB98] defaultCenter];
          [v13 postNotificationName:@"SBLockScreenFacetimeCallUINeedsUpdateNotification" object:self];
        }
      }
    }

    SBUpdateCallState();
    v14 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    [v14 resetIdleTimerForReason:@"SBConference:FaceTimeChanged"];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 postNotificationName:@"SBFaceTimeStateChangedNotification" object:self];
  }
}

- (void)endFaceTime
{
  v3 = [(SBConferenceManager *)self currentFaceTimeCall];
  if (v3)
  {
    v4 = v3;
    [(TUCallCenter *)self->_sharedCallCenter disconnectCall:v3];
    v3 = v4;
  }
}

@end