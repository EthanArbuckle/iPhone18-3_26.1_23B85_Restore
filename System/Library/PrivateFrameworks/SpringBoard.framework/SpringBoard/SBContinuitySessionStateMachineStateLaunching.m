@interface SBContinuitySessionStateMachineStateLaunching
@end

@implementation SBContinuitySessionStateMachineStateLaunching

void __67___SBContinuitySessionStateMachineStateLaunching_enteredStateFrom___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[32] == 1)
  {
    WeakRetained[33] = 0;
    v2 = WeakRetained;
    [WeakRetained _reevaluateStateForReason:@"radar 124642623"];
    WeakRetained = v2;
  }
}

void __76___SBContinuitySessionStateMachineStateLaunching_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76___SBContinuitySessionStateMachineStateLaunching_appendDescriptionToStream___block_invoke_2;
  v6[3] = &unk_2783A92D8;
  v4 = v2;
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v4 appendProem:v3 block:v6];
}

uint64_t __76___SBContinuitySessionStateMachineStateLaunching_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 32) withName:@"isCurrentState"];
  result = [*(a1 + 32) hasSuccinctStyle];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"handlingLaunchEvents"];
  }

  return result;
}

@end