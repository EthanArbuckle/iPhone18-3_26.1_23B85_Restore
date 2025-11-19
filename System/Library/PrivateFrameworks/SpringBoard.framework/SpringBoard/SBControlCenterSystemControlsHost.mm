@interface SBControlCenterSystemControlsHost
- (id)observeSilentModeWithBlock:(id)a3;
@end

@implementation SBControlCenterSystemControlsHost

- (id)observeSilentModeWithBlock:(id)a3
{
  v3 = MEMORY[0x277CCACC8];
  v4 = a3;
  if (([v3 isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemControlsHost observeSilentModeWithBlock:];
  }

  v5 = [SBApp ringerControl];
  v6 = [v5 observeRingerMutedWithBlock:v4];

  return v6;
}

- (void)observeSilentModeWithBlock:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemControlsHost observeSilentModeWithBlock:]"];
  [v1 handleFailureInFunction:v0 file:@"SBControlCenterSystemControlsHost.m" lineNumber:19 description:@"this call must be made on the main thread"];
}

@end