@interface SBTraitsCoverSheetFollowsSecureAppOrientationPolicySpecifier
- (void)updateStageParticipantsResolutionPolicies:(id)policies context:(id)context;
@end

@implementation SBTraitsCoverSheetFollowsSecureAppOrientationPolicySpecifier

- (void)updateStageParticipantsResolutionPolicies:(id)policies context:(id)context
{
  v5 = @"SBTraitsParticipantRoleSecureApp";
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __114__SBTraitsCoverSheetFollowsSecureAppOrientationPolicySpecifier_updateStageParticipantsResolutionPolicies_context___block_invoke;
  v10[3] = &unk_2783B13C8;
  v11 = v5;
  policiesCopy = policies;
  v7 = [policiesCopy bs_containsObjectPassingTest:v10];
  v8 = [policiesCopy bs_firstObjectPassingTest:&__block_literal_global_93];

  if (v8 && v7)
  {
    v9 = [MEMORY[0x277D734D0] resolutionPolicyInfoForAssociatedParticipantWithRole:v5];
    [v8 setOrientationResolutionPolicyInfo:v9];
  }
}

uint64_t __114__SBTraitsCoverSheetFollowsSecureAppOrientationPolicySpecifier_updateStageParticipantsResolutionPolicies_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 role];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __114__SBTraitsCoverSheetFollowsSecureAppOrientationPolicySpecifier_updateStageParticipantsResolutionPolicies_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 role];
  v3 = [v2 isEqualToString:@"SBTraitsParticipantRoleCoverSheet"];

  return v3;
}

@end