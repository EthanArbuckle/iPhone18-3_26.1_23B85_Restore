@interface TRAArbiterUpdateOrientationResolutionPolicySpecifier
- (NSArray)participantsUniqueIdentifiers;
- (TRAArbiterUpdateOrientationResolutionPolicySpecifier)initWithComponentOrder:(id)a3;
- (void)updateStageParticipantsResolutionPolicies:(id)a3 context:(id)a4;
@end

@implementation TRAArbiterUpdateOrientationResolutionPolicySpecifier

- (TRAArbiterUpdateOrientationResolutionPolicySpecifier)initWithComponentOrder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRAArbiterUpdateOrientationResolutionPolicySpecifier;
  v5 = [(TRAArbiterUpdateOrientationResolutionPolicySpecifier *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    componentOrder = v5->_componentOrder;
    v5->_componentOrder = v6;
  }

  return v5;
}

- (void)updateStageParticipantsResolutionPolicies:(id)a3 context:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        WeakRetained = objc_loadWeakRetained(&self->_participantsUniqueIdentifiers);
        v12 = [v10 uniqueIdentifier];
        v13 = [WeakRetained containsObject:v12];

        if (v13)
        {
          v14 = [v10 orientationResolutionPolicyInfo];
          [v14 setForceResolution:self->_forceResolution];
          [v14 setActuationContext:self->_actuationContext];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSArray)participantsUniqueIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_participantsUniqueIdentifiers);

  return WeakRetained;
}

@end