@interface SBTraitsSwitcherPolicySpecifier
- (SBTraitsSwitcherPolicySpecifier)initWithComponentOrder:(id)order arbiter:(id)arbiter;
- (id)_specifierDescription;
- (void)_updateAcquiredParticipantsPolicies:(id)policies context:(id)context;
- (void)setPrimaryElementParticipantIdentifier:(id)identifier;
- (void)setResolutionPolicy:(int64_t)policy;
@end

@implementation SBTraitsSwitcherPolicySpecifier

- (id)_specifierDescription
{
  v4 = self->_resolutionPolicy - 2;
  if (v4 > 3)
  {
    v5 = @"None";
  }

  else
  {
    v5 = off_2783BABC8[v4];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"Switcher policy: %@; primary element identifier: %@", v5, self->_primaryElementParticipantIdentifier, v2, v3];
}

- (SBTraitsSwitcherPolicySpecifier)initWithComponentOrder:(id)order arbiter:(id)arbiter
{
  v5.receiver = self;
  v5.super_class = SBTraitsSwitcherPolicySpecifier;
  result = [(SBAbstractTraitsSwitcherPolicySpecifier *)&v5 initWithComponentOrder:order arbiter:arbiter];
  if (result)
  {
    result->_resolutionPolicy = 1;
  }

  return result;
}

- (void)setResolutionPolicy:(int64_t)policy
{
  if (self->_resolutionPolicy != policy)
  {
    self->_resolutionPolicy = policy;
    _blockBasedPolicySpecifier = [(SBAbstractTraitsSwitcherPolicySpecifier *)self _blockBasedPolicySpecifier];
    _specifierDescription = [(SBTraitsSwitcherPolicySpecifier *)self _specifierDescription];
    [_blockBasedPolicySpecifier setSpecifierDescription:_specifierDescription];
  }
}

- (void)setPrimaryElementParticipantIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_primaryElementParticipantIdentifier isEqualToString:?])
  {
    v4 = [identifierCopy copy];
    primaryElementParticipantIdentifier = self->_primaryElementParticipantIdentifier;
    self->_primaryElementParticipantIdentifier = v4;

    _blockBasedPolicySpecifier = [(SBAbstractTraitsSwitcherPolicySpecifier *)self _blockBasedPolicySpecifier];
    _specifierDescription = [(SBTraitsSwitcherPolicySpecifier *)self _specifierDescription];
    [_blockBasedPolicySpecifier setSpecifierDescription:_specifierDescription];
  }
}

- (void)_updateAcquiredParticipantsPolicies:(id)policies context:(id)context
{
  v8 = [policies bs_firstObjectPassingTest:{&__block_literal_global_242, context}];
  resolutionPolicy = self->_resolutionPolicy;
  if (resolutionPolicy > 3)
  {
    if (resolutionPolicy == 4)
    {
      resolutionPolicyInfoDeviceOrientation = [MEMORY[0x277D734D0] resolutionPolicyInfoDeviceOrientation];
    }

    else
    {
      if (resolutionPolicy != 5)
      {
        goto LABEL_13;
      }

      resolutionPolicyInfoDeviceOrientation = [MEMORY[0x277D734D0] resolutionPolicyInfoIsolation];
    }
  }

  else if (resolutionPolicy == 2)
  {
    resolutionPolicyInfoDeviceOrientation = [MEMORY[0x277D734D0] resolutionPolicyInfoOrientationBelow];
  }

  else
  {
    if (resolutionPolicy != 3)
    {
      goto LABEL_13;
    }

    if (!self->_primaryElementParticipantIdentifier)
    {
      [SBTraitsSwitcherPolicySpecifier _updateAcquiredParticipantsPolicies:context:];
    }

    resolutionPolicyInfoDeviceOrientation = [MEMORY[0x277D734D0] resolutionPolicyInfoForAssociatedParticipantWithUniqueID:v8];
  }

  v7 = resolutionPolicyInfoDeviceOrientation;
  [v8 setOrientationResolutionPolicyInfo:{resolutionPolicyInfoDeviceOrientation, v8}];

LABEL_13:
}

uint64_t __79__SBTraitsSwitcherPolicySpecifier__updateAcquiredParticipantsPolicies_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 role];
  v3 = [v2 isEqual:@"SBTraitsParticipantRoleSwitcherRaw"];

  return v3;
}

- (void)_updateAcquiredParticipantsPolicies:context:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBSwitcherTraitsPolicySpecifiers.m" lineNumber:95 description:@"SBTraitsSwitcherPolicySpecifier set to be following primary element but its identifier is nil."];

  *v0 = *v1;
}

@end