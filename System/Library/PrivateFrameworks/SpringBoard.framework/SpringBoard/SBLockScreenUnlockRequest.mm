@interface SBLockScreenUnlockRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation SBLockScreenUnlockRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  name = [(SBLockScreenUnlockRequest *)self name];
  [v4 setName:name];

  [v4 setSource:{-[SBLockScreenUnlockRequest source](self, "source")}];
  [v4 setIntent:{-[SBLockScreenUnlockRequest intent](self, "intent")}];
  process = [(SBLockScreenUnlockRequest *)self process];
  [v4 setProcess:process];

  destinationApplication = [(SBLockScreenUnlockRequest *)self destinationApplication];
  [v4 setDestinationApplication:destinationApplication];

  [v4 setWantsBiometricPresentation:{-[SBLockScreenUnlockRequest wantsBiometricPresentation](self, "wantsBiometricPresentation")}];
  [v4 setForceAlertAuthenticationUI:{-[SBLockScreenUnlockRequest forceAlertAuthenticationUI](self, "forceAlertAuthenticationUI")}];
  title = [(SBLockScreenUnlockRequest *)self title];
  [v4 setTitle:title];

  subtitle = [(SBLockScreenUnlockRequest *)self subtitle];
  [v4 setSubtitle:subtitle];

  unlockDestination = [(SBLockScreenUnlockRequest *)self unlockDestination];
  [v4 setUnlockDestination:unlockDestination];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_name withName:@"name" skipIfNil:1];
  v5 = NSStringFromUnlockSource();
  [v3 appendString:v5 withName:@"source"];

  v6 = NSStringFromUnlockIntent();
  [v3 appendString:v6 withName:@"intent"];

  v7 = [MEMORY[0x277CF0C00] succinctDescriptionForObject:self->_process];
  v8 = [v3 appendObject:v7 withName:@"process" skipIfNil:1];

  v9 = [MEMORY[0x277CF0C00] succinctDescriptionForObject:self->_destinationApplication];
  v10 = [v3 appendObject:v9 withName:@"destinationApplication" skipIfNil:1];

  v11 = [v3 appendBool:self->_wantsBiometricPresentation withName:@"wantsBiometricPresentation"];
  v12 = [v3 appendBool:self->_forceAlertAuthenticationUI withName:@"forcesAlertAuthenticationUI"];
  [v3 appendString:self->_title withName:@"title" skipIfEmpty:1];
  [v3 appendString:self->_subtitle withName:@"subtitle" skipIfEmpty:1];
  [v3 appendString:self->_unlockDestination withName:@"unlockDestination" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  name = self->_name;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __37__SBLockScreenUnlockRequest_isEqual___block_invoke;
  v58[3] = &unk_2783B1D60;
  v7 = equalCopy;
  v59 = v7;
  v8 = [v5 appendString:name counterpart:v58];
  source = self->_source;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __37__SBLockScreenUnlockRequest_isEqual___block_invoke_2;
  v56[3] = &unk_2783ACDE0;
  v10 = v7;
  v57 = v10;
  v11 = [v5 appendInteger:source counterpart:v56];
  intent = self->_intent;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __37__SBLockScreenUnlockRequest_isEqual___block_invoke_3;
  v54[3] = &unk_2783ACDE0;
  v13 = v10;
  v55 = v13;
  v14 = [v5 appendInteger:intent counterpart:v54];
  v15 = [(BSProcessHandle *)self->_process pid];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __37__SBLockScreenUnlockRequest_isEqual___block_invoke_4;
  v52[3] = &unk_2783ACDE0;
  v16 = v13;
  v53 = v16;
  v17 = [v5 appendInteger:v15 counterpart:v52];
  destinationApplication = self->_destinationApplication;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __37__SBLockScreenUnlockRequest_isEqual___block_invoke_5;
  v50[3] = &unk_2783ACDB8;
  v19 = v16;
  v51 = v19;
  v20 = [v5 appendObject:destinationApplication counterpart:v50];
  wantsBiometricPresentation = self->_wantsBiometricPresentation;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __37__SBLockScreenUnlockRequest_isEqual___block_invoke_6;
  v48[3] = &unk_2783ACE58;
  v22 = v19;
  v49 = v22;
  v23 = [v5 appendBool:wantsBiometricPresentation counterpart:v48];
  forceAlertAuthenticationUI = self->_forceAlertAuthenticationUI;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __37__SBLockScreenUnlockRequest_isEqual___block_invoke_7;
  v46[3] = &unk_2783ACE58;
  v25 = v22;
  v47 = v25;
  v26 = [v5 appendBool:forceAlertAuthenticationUI counterpart:v46];
  title = self->_title;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __37__SBLockScreenUnlockRequest_isEqual___block_invoke_8;
  v44[3] = &unk_2783B1D60;
  v28 = v25;
  v45 = v28;
  v29 = [v5 appendString:title counterpart:v44];
  subtitle = self->_subtitle;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __37__SBLockScreenUnlockRequest_isEqual___block_invoke_9;
  v42[3] = &unk_2783B1D60;
  v31 = v28;
  v43 = v31;
  v32 = [v5 appendString:subtitle counterpart:v42];
  unlockDestination = self->_unlockDestination;
  v37 = MEMORY[0x277D85DD0];
  v38 = 3221225472;
  v39 = __37__SBLockScreenUnlockRequest_isEqual___block_invoke_10;
  v40 = &unk_2783B1D60;
  v41 = v31;
  v34 = v31;
  v35 = [v5 appendString:unlockDestination counterpart:&v37];
  LOBYTE(v31) = [v5 isEqual];

  return v31;
}

uint64_t __37__SBLockScreenUnlockRequest_isEqual___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) process];
  v2 = [v1 pid];

  return v2;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_name];
  v5 = [builder appendInteger:self->_source];
  v6 = [builder appendInteger:self->_intent];
  v7 = [builder appendObject:self->_process];
  v8 = [builder appendObject:self->_destinationApplication];
  v9 = [builder appendBool:self->_wantsBiometricPresentation];
  v10 = [builder appendBool:self->_forceAlertAuthenticationUI];
  v11 = [builder appendString:self->_title];
  v12 = [builder appendString:self->_subtitle];
  v13 = [builder appendString:self->_unlockDestination];
  v14 = [builder hash];

  return v14;
}

@end