@interface SBXXLockDeviceAndFeatures
@end

@implementation SBXXLockDeviceAndFeatures

void ___SBXXLockDeviceAndFeatures_block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [SBApp authenticationController];
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBS External Client (pid: %d) - LockDeviceAndFeatures", objc_msgSend(*(a1 + 32), "pid")];
    [v2 revokeAuthenticationImmediatelyForPublicReason:v3];
  }

  v4 = +[SBLockScreenManager sharedInstance];
  [v4 remoteLock:*(a1 + 41) != 0];
}

@end