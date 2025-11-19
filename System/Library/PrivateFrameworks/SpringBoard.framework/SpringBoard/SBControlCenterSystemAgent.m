@interface SBControlCenterSystemAgent
- (BOOL)hasApplicationForDisplayID:(id)a3;
- (BOOL)hasApplicationPlaceholderForDisplayID:(id)a3;
- (BOOL)isOrientationLocked;
- (BOOL)isPasscodeLocked;
- (BOOL)isRestoring;
- (BOOL)isRingerMuted;
- (BOOL)isUILocked;
- (SBWindowScene)windowScene;
- (id)observeRingerMutedWithBlock:(id)a3;
- (id)reasonToDisallowEditing;
- (void)isOrientationLocked;
- (void)isPasscodeLocked;
- (void)isRestoring;
- (void)isRingerMuted;
- (void)isUILocked;
- (void)lockOrientation;
- (void)reasonToDisallowEditing;
- (void)setRingerMuted:(BOOL)a3 reason:(id)a4;
- (void)unlockOrientation;
@end

@implementation SBControlCenterSystemAgent

- (BOOL)isRingerMuted
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent isRingerMuted];
  }

  v2 = [SBApp ringerControl];
  v3 = [(SBRingerControl *)v2 isRingerMuted];

  return v3;
}

- (void)setRingerMuted:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v5 = MEMORY[0x277CCACC8];
  v6 = a4;
  if (([v5 isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent setRingerMuted:reason:];
  }

  v7 = [SBApp ringerControl];
  [v7 setRingerMuted:v4 withFeedback:1 reason:v6 clientType:2];
}

- (id)observeRingerMutedWithBlock:(id)a3
{
  v3 = MEMORY[0x277CCACC8];
  v4 = a3;
  if (([v3 isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent observeRingerMutedWithBlock:];
  }

  v5 = [SBApp ringerControl];
  v6 = [v5 observeRingerMutedWithBlock:v4];

  return v6;
}

- (void)lockOrientation
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent lockOrientation]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)unlockOrientation
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
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
  v3 = [v2 isUserLocked];

  return v3;
}

- (BOOL)isUILocked
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent isUILocked];
  }

  v2 = +[SBLockScreenManager sharedInstance];
  v3 = [v2 isUILocked];

  return v3;
}

- (BOOL)isPasscodeLocked
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent isPasscodeLocked];
  }

  v3 = [(SBControlCenterSystemAgent *)self windowScene];
  v4 = [v3 authenticationStatusProvider];
  v5 = [v4 isAuthenticated];

  return v5 ^ 1;
}

- (BOOL)isRestoring
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent isRestoring];
  }

  v2 = +[SBSyncController sharedInstance];
  v3 = [v2 isRestoring];

  return v3;
}

- (BOOL)hasApplicationPlaceholderForDisplayID:(id)a3
{
  v3 = MEMORY[0x277CCACC8];
  v4 = a3;
  if (([v3 isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent hasApplicationPlaceholderForDisplayID:];
  }

  v5 = +[SBApplicationPlaceholderController sharedInstance];
  v6 = [v5 placeholderForDisplayID:v4];

  return v6 != 0;
}

- (BOOL)hasApplicationForDisplayID:(id)a3
{
  v3 = MEMORY[0x277CCACC8];
  v4 = a3;
  if (([v3 isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent hasApplicationForDisplayID:];
  }

  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 applicationWithBundleIdentifier:v4];

  return v6 != 0;
}

- (id)reasonToDisallowEditing
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemAgent reasonToDisallowEditing];
  }

  v3 = [(SBControlCenterSystemAgent *)self windowScene];
  v4 = [v3 sceneManager];
  v5 = [v4 policyAggregator];

  v9 = 0;
  [v5 allowsCapability:30 explanation:&v9];
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
  v7 = [MEMORY[0x277CCA890] currentHandler];
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
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent isOrientationLocked]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isUILocked
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent isUILocked]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isPasscodeLocked
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent isPasscodeLocked]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isRestoring
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
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
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemAgent reasonToDisallowEditing]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

@end