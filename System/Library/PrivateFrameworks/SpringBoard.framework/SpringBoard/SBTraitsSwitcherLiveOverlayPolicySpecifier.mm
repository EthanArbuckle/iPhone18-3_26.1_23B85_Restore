@interface SBTraitsSwitcherLiveOverlayPolicySpecifier
- (SBTraitsSwitcherLiveOverlayPolicySpecifier)initWithComponentOrder:(id)order arbiter:(id)arbiter;
- (id)_specifierDescription;
- (void)_updateAcquiredParticipantsPolicies:(id)policies context:(id)context;
- (void)_updateParticipant:(id)participant withPolicy:(int64_t)policy context:(id)context;
- (void)setNonPrimaryResolutionPolicy:(int64_t)policy;
- (void)setPrimaryElementResolutionPolicy:(int64_t)policy;
@end

@implementation SBTraitsSwitcherLiveOverlayPolicySpecifier

- (id)_specifierDescription
{
  v4 = self->_primaryElementResolutionPolicy - 2;
  if (v4 > 4)
  {
    v5 = @"None";
  }

  else
  {
    v5 = off_2783BABE8[v4];
  }

  v6 = self->_nonPrimaryResolutionPolicy - 2;
  if (v6 > 4)
  {
    v7 = @"None";
  }

  else
  {
    v7 = off_2783BABE8[v6];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"Switcher primary overlay: %@; non-primary overlays: %@;", v5, v7, v2, v3];
}

- (SBTraitsSwitcherLiveOverlayPolicySpecifier)initWithComponentOrder:(id)order arbiter:(id)arbiter
{
  v5.receiver = self;
  v5.super_class = SBTraitsSwitcherLiveOverlayPolicySpecifier;
  result = [(SBAbstractTraitsSwitcherPolicySpecifier *)&v5 initWithComponentOrder:order arbiter:arbiter];
  if (result)
  {
    result->_primaryElementResolutionPolicy = 1;
    result->_nonPrimaryResolutionPolicy = 1;
  }

  return result;
}

- (void)setPrimaryElementResolutionPolicy:(int64_t)policy
{
  if (self->_primaryElementResolutionPolicy != policy)
  {
    self->_primaryElementResolutionPolicy = policy;
    _blockBasedPolicySpecifier = [(SBAbstractTraitsSwitcherPolicySpecifier *)self _blockBasedPolicySpecifier];
    _specifierDescription = [(SBTraitsSwitcherLiveOverlayPolicySpecifier *)self _specifierDescription];
    [_blockBasedPolicySpecifier setSpecifierDescription:_specifierDescription];
  }
}

- (void)setNonPrimaryResolutionPolicy:(int64_t)policy
{
  if (self->_nonPrimaryResolutionPolicy != policy)
  {
    self->_nonPrimaryResolutionPolicy = policy;
    _blockBasedPolicySpecifier = [(SBAbstractTraitsSwitcherPolicySpecifier *)self _blockBasedPolicySpecifier];
    _specifierDescription = [(SBTraitsSwitcherLiveOverlayPolicySpecifier *)self _specifierDescription];
    [_blockBasedPolicySpecifier setSpecifierDescription:_specifierDescription];
  }
}

- (void)_updateAcquiredParticipantsPolicies:(id)policies context:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  policiesCopy = policies;
  contextCopy = context;
  primaryElementResolutionPolicy = self->_primaryElementResolutionPolicy;
  if (!primaryElementResolutionPolicy)
  {
    [SBTraitsSwitcherLiveOverlayPolicySpecifier _updateAcquiredParticipantsPolicies:context:];
    primaryElementResolutionPolicy = v24;
  }

  if (primaryElementResolutionPolicy == 5)
  {
    [SBTraitsSwitcherLiveOverlayPolicySpecifier _updateAcquiredParticipantsPolicies:a2 context:self];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = policiesCopy;
  v9 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        role = [v13 role];
        uniqueIdentifier = [v13 uniqueIdentifier];
        v16 = [uniqueIdentifier isEqualToString:self->_primaryElementParticipantIdentifier];

        p_primaryElementResolutionPolicy = &self->_primaryElementResolutionPolicy;
        if ((v16 & 1) == 0)
        {
          if (![role isEqualToString:@"SBTraitsParticipantRoleSwitcherLiveOverlay"])
          {
            goto LABEL_15;
          }

          p_primaryElementResolutionPolicy = &self->_nonPrimaryResolutionPolicy;
        }

        if (*p_primaryElementResolutionPolicy != 1)
        {
          [(SBTraitsSwitcherLiveOverlayPolicySpecifier *)self _updateParticipant:v13 withPolicy:*p_primaryElementResolutionPolicy context:contextCopy];
        }

LABEL_15:
      }

      v10 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v10);
  }
}

- (void)_updateParticipant:(id)participant withPolicy:(int64_t)policy context:(id)context
{
  v24[3] = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  contextCopy = context;
  if (policy <= 3)
  {
    if (policy == 2)
    {
      resolutionPolicyInfoIsolation = [MEMORY[0x277D734D0] resolutionPolicyInfoIsolation];
    }

    else
    {
      if (policy != 3)
      {
        goto LABEL_15;
      }

      resolutionPolicyInfoIsolation = [MEMORY[0x277D734D0] resolutionPolicyInfoForAssociatedParticipantWithRole:@"SBTraitsParticipantRoleSwitcherRaw"];
    }

LABEL_14:
    v18 = resolutionPolicyInfoIsolation;
    [participantCopy setOrientationResolutionPolicyInfo:resolutionPolicyInfoIsolation];

    goto LABEL_15;
  }

  switch(policy)
  {
    case 4:
      resolutionPolicyInfoIsolation = [MEMORY[0x277D734D0] resolutionPolicyInfoDeviceOrientation];
      goto LABEL_14;
    case 5:
      resolutionPolicyInfoIsolation = [MEMORY[0x277D734D0] resolutionPolicyInfoForAssociatedParticipantWithUniqueID:self->_primaryElementParticipantIdentifier];
      goto LABEL_14;
    case 6:
      v10 = +[SBOrientationLockManager sharedInstance];
      isUserLocked = [v10 isUserLocked];

      if (isUserLocked)
      {
        v12 = +[SBOrientationLockManager sharedInstance];
        userLockOrientation = [v12 userLockOrientation];

        if ((userLockOrientation - 3) > 1)
        {
          v21[0] = &unk_2833714F8;
          v21[1] = &unk_283371510;
          v22[0] = &unk_28336E778;
          v22[1] = &unk_28336E778;
          v21[2] = &unk_283371528;
          v22[2] = &unk_28336E778;
          v14 = MEMORY[0x277CBEAC0];
          v15 = v22;
          v16 = v21;
        }

        else
        {
          v23[0] = &unk_2833714B0;
          v23[1] = &unk_2833714C8;
          v24[0] = &unk_28336E778;
          v24[1] = &unk_28336E778;
          v23[2] = &unk_2833714E0;
          v24[2] = &unk_28336E778;
          v14 = MEMORY[0x277CBEAC0];
          v15 = v24;
          v16 = v23;
        }

        v20 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:3];
        resolutionPolicyInfoDeviceOrientation = [MEMORY[0x277D734D0] resolutionPolicyInfoDeviceOrientationWithStateTypesBySupportedOrientationMask:v20];
      }

      else
      {
        resolutionPolicyInfoDeviceOrientation = [MEMORY[0x277D734D0] resolutionPolicyInfoDeviceOrientation];
      }

      [participantCopy setOrientationResolutionPolicyInfo:resolutionPolicyInfoDeviceOrientation];

      break;
  }

LABEL_15:
}

- (void)_updateAcquiredParticipantsPolicies:context:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBSwitcherTraitsPolicySpecifiers.m" lineNumber:145 description:@"primary element unique identifier missing"];

  *v0 = *v1;
}

- (void)_updateAcquiredParticipantsPolicies:(uint64_t)a1 context:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherTraitsPolicySpecifiers.m" lineNumber:146 description:@"Primary element asked to follow itself"];
}

@end