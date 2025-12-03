@interface SBInitialRestartState
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation SBInitialRestartState

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBInitialRestartState *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBInitialRestartState *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBInitialRestartState *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SBInitialRestartState_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v5 = succinctDescriptionBuilder;
  v10 = v5;
  selfCopy = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

void __63__SBInitialRestartState_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 8) & 1) == 0 withName:@"isPasscodeLocked"];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 10) withName:@"isBlocked"];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"isInLostMode"];
  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 11) withName:@"hasPasscodeSet"];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 12) withName:@"requiresSetup"];
  v7 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 13) withName:@"shouldNeverLock"];
  v8 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 14) withName:@"forSimulator"];
  v9 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 15) withName:@"isLoginSession"];
  v10 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"bootDefaults"];
  v11 = *(a1 + 32);
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(a1 + 40) + 16)];
  v12 = [v11 appendObject:v13 withName:@"homeButtonType"];
}

@end