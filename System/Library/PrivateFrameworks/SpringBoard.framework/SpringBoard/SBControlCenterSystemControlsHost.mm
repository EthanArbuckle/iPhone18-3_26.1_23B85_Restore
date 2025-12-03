@interface SBControlCenterSystemControlsHost
- (id)observeSilentModeWithBlock:(id)block;
@end

@implementation SBControlCenterSystemControlsHost

- (id)observeSilentModeWithBlock:(id)block
{
  v3 = MEMORY[0x277CCACC8];
  blockCopy = block;
  if (([v3 isMainThread] & 1) == 0)
  {
    [SBControlCenterSystemControlsHost observeSilentModeWithBlock:];
  }

  ringerControl = [SBApp ringerControl];
  v6 = [ringerControl observeRingerMutedWithBlock:blockCopy];

  return v6;
}

- (void)observeSilentModeWithBlock:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBControlCenterSystemControlsHost observeSilentModeWithBlock:]"];
  [v1 handleFailureInFunction:v0 file:@"SBControlCenterSystemControlsHost.m" lineNumber:19 description:@"this call must be made on the main thread"];
}

@end