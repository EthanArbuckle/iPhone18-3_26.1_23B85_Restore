@interface SBLockScreenUnlockAndLaunchCaptureApplicationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation SBLockScreenUnlockAndLaunchCaptureApplicationRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SBLockScreenUnlockAndLaunchCaptureApplicationRequest;
  v4 = [(SBLockScreenUnlockRequest *)&v7 copyWithZone:zone];
  launchActions = [(SBLockScreenUnlockAndLaunchCaptureApplicationRequest *)self launchActions];
  [v4 setLaunchActions:launchActions];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__SBLockScreenUnlockAndLaunchCaptureApplicationRequest_isEqual___block_invoke;
  v14[3] = &unk_2783A94B0;
  v6 = equalCopy;
  v15 = v6;
  selfCopy = self;
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
  appendSuper = [v3 appendSuper];
  v5 = [v3 appendObject:self->_launchActions withName:@"launchActions" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SBLockScreenUnlockAndLaunchCaptureApplicationRequest_hash__block_invoke;
  v8[3] = &unk_2783A9500;
  v8[4] = self;
  v4 = [builder appendHashingBlocks:{v8, 0}];
  v5 = [builder appendObject:self->_launchActions];
  v6 = [builder hash];

  return v6;
}

id __60__SBLockScreenUnlockAndLaunchCaptureApplicationRequest_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = SBLockScreenUnlockAndLaunchCaptureApplicationRequest;
  return objc_msgSendSuper2(&v2, sel_hash);
}

@end