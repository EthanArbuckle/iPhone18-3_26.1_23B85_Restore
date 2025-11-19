@interface SBTraitsSwitcherPolicySpecifier
- (SBTraitsSwitcherPolicySpecifier)initWithComponentOrder:(id)a3 arbiter:(id)a4;
- (id)_specifierDescription;
- (void)_updateAcquiredParticipantsPolicies:(id)a3 context:(id)a4;
- (void)setPrimaryElementParticipantIdentifier:(id)a3;
- (void)setResolutionPolicy:(int64_t)a3;
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

- (SBTraitsSwitcherPolicySpecifier)initWithComponentOrder:(id)a3 arbiter:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBTraitsSwitcherPolicySpecifier;
  result = [(SBAbstractTraitsSwitcherPolicySpecifier *)&v5 initWithComponentOrder:a3 arbiter:a4];
  if (result)
  {
    result->_resolutionPolicy = 1;
  }

  return result;
}

- (void)setResolutionPolicy:(int64_t)a3
{
  if (self->_resolutionPolicy != a3)
  {
    self->_resolutionPolicy = a3;
    v6 = [(SBAbstractTraitsSwitcherPolicySpecifier *)self _blockBasedPolicySpecifier];
    v5 = [(SBTraitsSwitcherPolicySpecifier *)self _specifierDescription];
    [v6 setSpecifierDescription:v5];
  }
}

- (void)setPrimaryElementParticipantIdentifier:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_primaryElementParticipantIdentifier isEqualToString:?])
  {
    v4 = [v8 copy];
    primaryElementParticipantIdentifier = self->_primaryElementParticipantIdentifier;
    self->_primaryElementParticipantIdentifier = v4;

    v6 = [(SBAbstractTraitsSwitcherPolicySpecifier *)self _blockBasedPolicySpecifier];
    v7 = [(SBTraitsSwitcherPolicySpecifier *)self _specifierDescription];
    [v6 setSpecifierDescription:v7];
  }
}

- (void)_updateAcquiredParticipantsPolicies:(id)a3 context:(id)a4
{
  v8 = [a3 bs_firstObjectPassingTest:{&__block_literal_global_242, a4}];
  resolutionPolicy = self->_resolutionPolicy;
  if (resolutionPolicy > 3)
  {
    if (resolutionPolicy == 4)
    {
      v6 = [MEMORY[0x277D734D0] resolutionPolicyInfoDeviceOrientation];
    }

    else
    {
      if (resolutionPolicy != 5)
      {
        goto LABEL_13;
      }

      v6 = [MEMORY[0x277D734D0] resolutionPolicyInfoIsolation];
    }
  }

  else if (resolutionPolicy == 2)
  {
    v6 = [MEMORY[0x277D734D0] resolutionPolicyInfoOrientationBelow];
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

    v6 = [MEMORY[0x277D734D0] resolutionPolicyInfoForAssociatedParticipantWithUniqueID:v8];
  }

  v7 = v6;
  [v8 setOrientationResolutionPolicyInfo:{v6, v8}];

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