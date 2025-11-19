@interface SBContinuitySessionStateMachineStateWaitingForRemoteUnlock
@end

@implementation SBContinuitySessionStateMachineStateWaitingForRemoteUnlock

void __89___SBContinuitySessionStateMachineStateWaitingForRemoteUnlock_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89___SBContinuitySessionStateMachineStateWaitingForRemoteUnlock_appendDescriptionToStream___block_invoke_2;
  v6[3] = &unk_2783A92D8;
  v4 = v2;
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v4 appendProem:v3 block:v6];
}

uint64_t __89___SBContinuitySessionStateMachineStateWaitingForRemoteUnlock_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 25) withName:@"isCurrentState"];
  result = [*(a1 + 32) hasSuccinctStyle];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) appendBool:*(*(a1 + 40) + 24) withName:@"remoteUnlocked"];
  }

  return result;
}

@end