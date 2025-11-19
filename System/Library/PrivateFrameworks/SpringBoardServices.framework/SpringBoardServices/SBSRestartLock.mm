@interface SBSRestartLock
@end

@implementation SBSRestartLock

void ___SBSRestartLock_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AE68]);
  v1 = __SBSRestartLock;
  __SBSRestartLock = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = __SBSRestartBlocks;
  __SBSRestartBlocks = v2;

  __SBSRestartInfo = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _SBSRestarted, @"SBSpringBoardDidLaunchNotification", 0, 0);
}

@end