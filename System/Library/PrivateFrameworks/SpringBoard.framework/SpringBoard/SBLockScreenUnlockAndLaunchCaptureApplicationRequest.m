@interface SBLockScreenUnlockAndLaunchCaptureApplicationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SBLockScreenUnlockAndLaunchCaptureApplicationRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SBLockScreenUnlockAndLaunchCaptureApplicationRequest;
  v4 = [(SBLockScreenUnlockRequest *)&v7 copyWithZone:a3];
  v5 = [(SBLockScreenUnlockAndLaunchCaptureApplicationRequest *)self launchActions];
  [v4 setLaunchActions:v5];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__SBLockScreenUnlockAndLaunchCaptureApplicationRequest_isEqual___block_invoke;
  v14[3] = &unk_2783A94B0;
  v6 = v4;
  v15 = v6;
  v16 = self;
  v7 = [v5 appendEqualsBlocks:{v14, 0}];
  launchActions = self->_launchActions;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__SBLockScreenUnlockAndLaunchCaptureApplicationRequest_isEqual___block_invoke_2;
  v12[3] = &unk_2783ACDB8;
  v13 = v6;
  v9 = v6;
  v10 = [v5 appendObject:launchActions counterpart:v12];
  LOBYTE(launchActions) = [v5 isEqual];

  return launchActions;
}

id __64__SBLockScreenUnlockAndLaunchCaptureApplicationRequest_isEqual___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = SBLockScreenUnlockAndLaunchCaptureApplicationRequest;
  return objc_msgSendSuper2(&v3, sel_isEqual_, v1);
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendSuper];
  v5 = [v3 appendObject:self->_launchActions withName:@"launchActions" skipIfNil:1];
  v6 = [v3 build];

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SBLockScreenUnlockAndLaunchCaptureApplicationRequest_hash__block_invoke;
  v8[3] = &unk_2783A9500;
  v8[4] = self;
  v4 = [v3 appendHashingBlocks:{v8, 0}];
  v5 = [v3 appendObject:self->_launchActions];
  v6 = [v3 hash];

  return v6;
}

id __60__SBLockScreenUnlockAndLaunchCaptureApplicationRequest_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = SBLockScreenUnlockAndLaunchCaptureApplicationRequest;
  return objc_msgSendSuper2(&v2, sel_hash);
}

@end