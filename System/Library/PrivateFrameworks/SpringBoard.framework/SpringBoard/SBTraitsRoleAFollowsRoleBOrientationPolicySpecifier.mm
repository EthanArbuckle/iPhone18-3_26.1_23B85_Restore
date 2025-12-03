@interface SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier
- (NSString)roleA;
- (NSString)roleB;
- (SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier)initWithComponentOrder:(id)order;
- (void)updateStageParticipantsResolutionPolicies:(id)policies context:(id)context;
@end

@implementation SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier

- (SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier)initWithComponentOrder:(id)order
{
  v10.receiver = self;
  v10.super_class = SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier;
  v3 = [(SBTraitsOrientationStageComponent *)&v10 initWithComponentOrder:order];
  v4 = v3;
  if (v3)
  {
    roleA = [(SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier *)v3 roleA];
    roleA = v4->_roleA;
    v4->_roleA = roleA;

    roleB = [(SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier *)v4 roleB];
    roleB = v4->_roleB;
    v4->_roleB = roleB;

    v4->_force = [(SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier *)v4 force];
    v4->_animate = [(SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier *)v4 animate];
  }

  return v4;
}

- (NSString)roleA
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBTraitsOrientationStageComponents.m" lineNumber:451 description:{@"This class[%@] shouldn't be directly used, pick a subclass.", v6}];

  return 0;
}

- (NSString)roleB
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBTraitsOrientationStageComponents.m" lineNumber:456 description:{@"This class[%@] shouldn't be directly used, pick a subclass.", v6}];

  return 0;
}

- (void)updateStageParticipantsResolutionPolicies:(id)policies context:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  policiesCopy = policies;
  v6 = [policiesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(policiesCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        role = [v10 role];
        v12 = [role isEqualToString:self->_roleA];

        if (v12)
        {
          v13 = [MEMORY[0x277D734D0] resolutionPolicyInfoForAssociatedParticipantWithRole:self->_roleB];
          [v13 setForceResolution:self->_force];
          if (self->_animate)
          {
            [v13 setActuationContext:0];
          }

          else
          {
            v14 = [objc_alloc(MEMORY[0x277D734E8]) initWithAnimationSettings:0 drawingFence:0];
            [v13 setActuationContext:v14];
          }

          [v10 setOrientationResolutionPolicyInfo:v13];

          goto LABEL_14;
        }
      }

      v7 = [policiesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

@end