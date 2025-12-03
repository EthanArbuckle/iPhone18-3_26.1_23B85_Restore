@interface SBTraitsUnlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation
- (void)updateStageParticipantsResolutionPolicies:(id)policies context:(id)context;
@end

@implementation SBTraitsUnlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation

- (void)updateStageParticipantsResolutionPolicies:(id)policies context:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  policiesCopy = policies;
  if ([policiesCopy bs_containsObjectPassingTest:&__block_literal_global_80_1])
  {
    v5 = [policiesCopy sortedArrayUsingComparator:&__block_literal_global_83];
    v6 = [MEMORY[0x277D734D0] resolutionPolicyInfoForAssociatedParticipantWithRole:@"SBTraitsParticipantRoleCoverSheet"];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    reverseObjectEnumerator = [v5 reverseObjectEnumerator];
    v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v22;
      v12 = *MEMORY[0x277D76EE8] + -15.0;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          if ((v10 & 1) != 0 || ([*(*(&v21 + 1) + 8 * v13) currentSettings], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "zOrderLevelSettings"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "zOrderLevel"), v18 = v17, v16, v15, v18 < v12))
          {
            orientationResolutionPolicyInfo = [v14 orientationResolutionPolicyInfo];
            resolutionPolicy = [orientationResolutionPolicyInfo resolutionPolicy];

            if (resolutionPolicy == 1)
            {
              [v14 setOrientationResolutionPolicyInfo:v6];
            }

            v10 = 1;
          }

          else
          {
            v10 = 0;
          }

          ++v13;
        }

        while (v9 != v13);
        v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }
  }
}

uint64_t __124__SBTraitsUnlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation_updateStageParticipantsResolutionPolicies_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 role];
  v3 = [v2 isEqualToString:@"SBTraitsParticipantRoleCoverSheet"];

  return v3;
}

uint64_t __124__SBTraitsUnlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation_updateStageParticipantsResolutionPolicies_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 currentZOrderLevel];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 currentZOrderLevel];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

@end