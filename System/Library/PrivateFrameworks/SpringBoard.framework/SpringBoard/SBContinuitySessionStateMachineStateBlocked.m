@interface SBContinuitySessionStateMachineStateBlocked
@end

@implementation SBContinuitySessionStateMachineStateBlocked

void __74___SBContinuitySessionStateMachineStateBlocked_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74___SBContinuitySessionStateMachineStateBlocked_appendDescriptionToStream___block_invoke_2;
  v6[3] = &unk_2783A92D8;
  v4 = v2;
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v4 appendProem:v3 block:v6];
}

uint64_t __74___SBContinuitySessionStateMachineStateBlocked_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 33) withName:@"isCurrentState"];
  result = [*(a1 + 32) hasSuccinctStyle];
  if ((result & 1) == 0)
  {
    v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 24) withName:@"clientConnected"];
    v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 25) withName:@"uiLocked"];
    v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 26) withName:@"uiBlocked"];
    v7 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 27) withName:@"inCall"];
    v8 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 28) withName:@"sosActive"];
    v9 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 29) withName:@"lockScreenSearchPresented"];
    v10 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 30) withName:@"usingSecureApp"];
    v11 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 31) withName:@"airplayMirroring"];
    v12 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 32) withName:@"userInitiatedRemoteTransientOverlayPresented"];
    return [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"clientBlockedReasons"];
  }

  return result;
}

@end