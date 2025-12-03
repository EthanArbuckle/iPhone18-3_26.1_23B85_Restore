@interface SBTraitsRoleActuatesWithCustomContext
- (SBTraitsRoleActuatesWithCustomContext)initWithComponentOrder:(id)order actuationContext:(id)context;
- (void)updateStageParticipantsResolutionPolicies:(id)policies context:(id)context;
@end

@implementation SBTraitsRoleActuatesWithCustomContext

- (SBTraitsRoleActuatesWithCustomContext)initWithComponentOrder:(id)order actuationContext:(id)context
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = SBTraitsRoleActuatesWithCustomContext;
  v7 = [(SBTraitsOrientationStageComponent *)&v14 initWithComponentOrder:order];
  v8 = v7;
  if (v7)
  {
    role = [(SBTraitsRoleActuatesWithCustomContext *)v7 role];
    role = v8->_role;
    v8->_role = role;

    v11 = [contextCopy copy];
    actuationContext = v8->_actuationContext;
    v8->_actuationContext = v11;
  }

  return v8;
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
        v12 = [role isEqualToString:self->_role];

        if (v12)
        {
          orientationResolutionPolicyInfo = [v10 orientationResolutionPolicyInfo];
          [orientationResolutionPolicyInfo setActuationContext:self->_actuationContext];

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