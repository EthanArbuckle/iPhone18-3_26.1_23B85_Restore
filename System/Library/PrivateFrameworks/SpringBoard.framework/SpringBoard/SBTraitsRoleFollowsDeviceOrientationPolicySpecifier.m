@interface SBTraitsRoleFollowsDeviceOrientationPolicySpecifier
- (NSString)targetRole;
- (SBTraitsRoleFollowsDeviceOrientationPolicySpecifier)initWithComponentOrder:(id)a3;
- (void)setDeviceOrientationStateTypes:(id)a3;
- (void)updateStageParticipantsResolutionPolicies:(id)a3 context:(id)a4;
@end

@implementation SBTraitsRoleFollowsDeviceOrientationPolicySpecifier

- (SBTraitsRoleFollowsDeviceOrientationPolicySpecifier)initWithComponentOrder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBTraitsRoleFollowsDeviceOrientationPolicySpecifier;
  v3 = [(SBTraitsOrientationStageComponent *)&v8 initWithComponentOrder:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(SBTraitsRoleFollowsDeviceOrientationPolicySpecifier *)v3 targetRole];
    targetRole = v4->_targetRole;
    v4->_targetRole = v5;

    [(SBTraitsRoleFollowsDeviceOrientationPolicySpecifier *)v4 setDeviceOrientationStateTypes:0];
  }

  return v4;
}

- (NSString)targetRole
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"SBTraitsOrientationStageComponents.m" lineNumber:496 description:{@"This class[%@] shouldn't be directly used, pick a subclass.", v6}];

  return 0;
}

- (void)setDeviceOrientationStateTypes:(id)a3
{
  v4 = a3;
  v5 = &unk_28336EC28;
  if (v4)
  {
    v5 = v4;
  }

  deviceOrientationStateTypes = self->_deviceOrientationStateTypes;
  self->_deviceOrientationStateTypes = v5;
}

- (void)updateStageParticipantsResolutionPolicies:(id)a3 context:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 role];
        v12 = [v11 isEqualToString:self->_targetRole];

        if (v12)
        {
          v13 = [MEMORY[0x277D734D0] resolutionPolicyInfoDeviceOrientationWithStateTypes:self->_deviceOrientationStateTypes];
          [v10 setOrientationResolutionPolicyInfo:v13];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

@end