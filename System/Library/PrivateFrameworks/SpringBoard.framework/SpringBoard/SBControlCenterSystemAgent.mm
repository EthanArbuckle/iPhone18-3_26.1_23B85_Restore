@interface SBControlCenterSystemAgent
- (BOOL)hasApplicationForDisplayID:(id)d;
- (BOOL)hasApplicationPlaceholderForDisplayID:(id)d;
- (BOOL)isOrientationLocked;
- (BOOL)isPasscodeLocked;
- (BOOL)isRestoring;
- (BOOL)isRingerMuted;
- (BOOL)isUILocked;
- (SBWindowScene)windowScene;
- (id)observeRingerMutedWithBlock:(id)block;
- (id)reasonToDisallowEditing;
- (void)isOrientationLocked;
- (void)isPasscodeLocked;
- (void)isRestoring;
- (void)isRingerMuted;
- (void)isUILocked;
- (void)lockOrientation;
- (void)reasonToDisallowEditing;
- (void)setRingerMuted:(BOOL)muted reason:(id)reason;
- (void)unlockOrientation;
@end

@implementation SBControlCenterSystemAgent

- (BOOL)isRingerMuted
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent isRingerMuted];
  }

  ringerControl = [SBApp ringerControl];
  isRingerMuted = [(SBRingerControl *)ringerControl isRingerMuted];

  return isRingerMuted;
}

- (void)setRingerMuted:(BOOL)muted reason:(id)reason
{
  mutedCopy = muted;
  v5 = MEMORY[0x277CCACC8];
  reasonCopy = reason;
  if (([v5 isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent setRingerMuted:reason:];
  }

  ringerControl = [SBApp ringerControl];
  [ringerControl setRingerMuted:mutedCopy withFeedback:1 reason:reasonCopy clientType:2];
}

- (id)observeRingerMutedWithBlock:(id)block
{
  v3 = MEMORY[0x277CCACC8];
  blockCopy = block;
  if (([v3 isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent observeRingerMutedWithBlock:];
  }

  ringerControl = [SBApp ringerControl];
  v6 = [ringerControl observeRingerMutedWithBlock:blockCopy];

  return v6;
}

- (void)lockOrientation
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent lockOrientation]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)unlockOrientation
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent unlockOrientation]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (BOOL)isOrientationLocked
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent isOrientationLocked];
  }

  v2 = +[SBOrientationLockManager sharedInstance];
  isUserLocked = [v2 isUserLocked];

  return isUserLocked;
}

- (BOOL)isUILocked
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent isUILocked];
  }

  v2 = +[SBLockScreenManager sharedInstance];
  isUILocked = [v2 isUILocked];

  return isUILocked;
}

- (BOOL)isPasscodeLocked
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent isPasscodeLocked];
  }

  windowScene = [(SBControlCenterSystemAgent *)self windowScene];
  authenticationStatusProvider = [windowScene authenticationStatusProvider];
  isAuthenticated = [authenticationStatusProvider isAuthenticated];

  return isAuthenticated ^ 1;
}

- (BOOL)isRestoring
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent isRestoring];
  }

  v2 = +[SBSyncController sharedInstance];
  isRestoring = [v2 isRestoring];

  return isRestoring;
}

- (BOOL)hasApplicationPlaceholderForDisplayID:(id)d
{
  v3 = MEMORY[0x277CCACC8];
  dCopy = d;
  if (([v3 isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent hasApplicationPlaceholderForDisplayID:];
  }

  v5 = +[SBApplicationPlaceholderController sharedInstance];
  v6 = [v5 placeholderForDisplayID:dCopy];

  return v6 != 0;
}

- (BOOL)hasApplicationForDisplayID:(id)d
{
  v3 = MEMORY[0x277CCACC8];
  dCopy = d;
  if (([v3 isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent hasApplicationForDisplayID:];
  }

  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 applicationWithBundleIdentifier:dCopy];

  return v6 != 0;
}

- (id)reasonToDisallowEditing
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent reasonToDisallowEditing];
  }

  windowScene = [(SBControlCenterSystemAgent *)self windowScene];
  sceneManager = [windowScene sceneManager];
  policyAggregator = [sceneManager policyAggregator];

  v9 = 0;
  [policyAggregator allowsCapability:30 explanation:&v9];
  v6 = v9;
  v7 = v9;

  return v6;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)isRingerMuted
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent isRingerMuted]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setRingerMuted:reason:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent setRingerMuted:reason:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)observeRingerMutedWithBlock:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent observeRingerMutedWithBlock:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isOrientationLocked
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent isOrientationLocked]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isUILocked
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent isUILocked]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isPasscodeLocked
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent isPasscodeLocked]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isRestoring
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent isRestoring]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)hasApplicationPlaceholderForDisplayID:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent hasApplicationPlaceholderForDisplayID:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)hasApplicationForDisplayID:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent hasApplicationForDisplayID:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)reasonToDisallowEditing
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent reasonToDisallowEditing]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

@end