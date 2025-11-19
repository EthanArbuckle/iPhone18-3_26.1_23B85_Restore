@interface SBTraitsRoleActuatesWithCustomContext
- (SBTraitsRoleActuatesWithCustomContext)initWithComponentOrder:(id)a3 actuationContext:(id)a4;
- (void)updateStageParticipantsResolutionPolicies:(id)a3 context:(id)a4;
@end

@implementation SBTraitsRoleActuatesWithCustomContext

- (SBTraitsRoleActuatesWithCustomContext)initWithComponentOrder:(id)a3 actuationContext:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = SBTraitsRoleActuatesWithCustomContext;
  v7 = [(SBTraitsOrientationStageComponent *)&v14 initWithComponentOrder:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [(SBTraitsRoleActuatesWithCustomContext *)v7 role];
    role = v8->_role;
    v8->_role = v9;

    v11 = [v6 copy];
    actuationContext = v8->_actuationContext;
    v8->_actuationContext = v11;
  }

  return v8;
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
        v12 = [v11 isEqualToString:self->_role];

        if (v12)
        {
          v13 = [v10 orientationResolutionPolicyInfo];
          [v13 setActuationContext:self->_actuationContext];

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