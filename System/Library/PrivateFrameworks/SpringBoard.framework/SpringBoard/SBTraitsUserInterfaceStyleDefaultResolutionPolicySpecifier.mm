@interface SBTraitsUserInterfaceStyleDefaultResolutionPolicySpecifier
- (void)updateStageParticipantsResolutionPolicies:(id)a3 context:(id)a4;
@end

@implementation SBTraitsUserInterfaceStyleDefaultResolutionPolicySpecifier

- (void)updateStageParticipantsResolutionPolicies:(id)a3 context:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [v9 role];
        if (![v10 isEqualToString:@"SBTraitsParticipantRoleAXUIServer"])
        {
          v11 = 0;
          goto LABEL_12;
        }

        if (_AXSClassicInvertColorsEnabled())
        {

LABEL_11:
          v13 = objc_alloc(MEMORY[0x277D73500]);
          v14 = objc_alloc(MEMORY[0x277D734E8]);
          v10 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
          v15 = [v14 initWithAnimationSettings:v10 drawingFence:0];
          v11 = [v13 initWithActuationContext:v15];

LABEL_12:
          goto LABEL_13;
        }

        v12 = _AXSInvertColorsEnabled();

        if (v12)
        {
          goto LABEL_11;
        }

        v11 = 0;
LABEL_13:
        [v9 setUserInterfaceStyleResolutionPolicyInfo:v11];

        ++v8;
      }

      while (v6 != v8);
      v16 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v6 = v16;
    }

    while (v16);
  }
}

@end