@interface SBTraitsRoleResolvesOrientationInIsolationPolicySpecifier
- (NSString)targetRole;
- (SBTraitsRoleResolvesOrientationInIsolationPolicySpecifier)initWithComponentOrder:(id)order;
- (void)updateStageParticipantsResolutionPolicies:(id)policies context:(id)context;
@end

@implementation SBTraitsRoleResolvesOrientationInIsolationPolicySpecifier

- (SBTraitsRoleResolvesOrientationInIsolationPolicySpecifier)initWithComponentOrder:(id)order
{
  v8.receiver = self;
  v8.super_class = SBTraitsRoleResolvesOrientationInIsolationPolicySpecifier;
  v3 = [(SBTraitsOrientationStageComponent *)&v8 initWithComponentOrder:order];
  v4 = v3;
  if (v3)
  {
    targetRole = [(SBTraitsRoleResolvesOrientationInIsolationPolicySpecifier *)v3 targetRole];
    targetRole = v4->_targetRole;
    v4->_targetRole = targetRole;
  }

  return v4;
}

- (NSString)targetRole
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBTraitsOrientationStageComponents.m" lineNumber:541 description:{@"This class[%@] shouldn't be directly used, pick a subclass.", v6}];

  return 0;
}

- (void)updateStageParticipantsResolutionPolicies:(id)policies context:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  policiesCopy = policies;
  v6 = [policiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(policiesCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        role = [v10 role];
        v12 = [role isEqualToString:self->_targetRole];

        if (v12)
        {
          resolutionPolicyInfoIsolation = [MEMORY[0x277D734D0] resolutionPolicyInfoIsolation];
          [v10 setOrientationResolutionPolicyInfo:resolutionPolicyInfoIsolation];

          goto LABEL_11;
        }
      }

      v7 = [policiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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