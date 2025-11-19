@interface SBContinuitySessionStateRemapReasons
@end

@implementation SBContinuitySessionStateRemapReasons

void *___SBContinuitySessionStateRemapReasons_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 isEqualToString:@"block.embedded-display.uiBlocked"] & 1) != 0 || objc_msgSend(v2, "isEqualToString:", @"block.sos.active"))
  {
    v3 = MEMORY[0x277D67F58];
LABEL_12:
    v4 = *v3;
    goto LABEL_13;
  }

  if (([v2 isEqualToString:@"block.embedded-display.uiUnlocked"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"block.inCall") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"block.keybag-unlocked") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"block.lockScreen.searchPresented") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"block.embedded-display.secureAppUsage") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"block.airplayMirroring") & 1) != 0 || (v4 = v2, objc_msgSend(v2, "isEqualToString:", @"block.userInitiatedRemoteTransientOverlayPresented")))
  {
    v3 = MEMORY[0x277D67F50];
    goto LABEL_12;
  }

LABEL_13:
  v5 = v4;

  return v4;
}

@end