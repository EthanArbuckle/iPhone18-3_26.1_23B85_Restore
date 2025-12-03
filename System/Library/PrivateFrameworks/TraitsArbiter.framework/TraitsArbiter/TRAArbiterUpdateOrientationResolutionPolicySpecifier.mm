@interface TRAArbiterUpdateOrientationResolutionPolicySpecifier
- (NSArray)participantsUniqueIdentifiers;
- (TRAArbiterUpdateOrientationResolutionPolicySpecifier)initWithComponentOrder:(id)order;
- (void)updateStageParticipantsResolutionPolicies:(id)policies context:(id)context;
@end

@implementation TRAArbiterUpdateOrientationResolutionPolicySpecifier

- (TRAArbiterUpdateOrientationResolutionPolicySpecifier)initWithComponentOrder:(id)order
{
  orderCopy = order;
  v9.receiver = self;
  v9.super_class = TRAArbiterUpdateOrientationResolutionPolicySpecifier;
  v5 = [(TRAArbiterUpdateOrientationResolutionPolicySpecifier *)&v9 init];
  if (v5)
  {
    v6 = [orderCopy copy];
    componentOrder = v5->_componentOrder;
    v5->_componentOrder = v6;
  }

  return v5;
}

- (void)updateStageParticipantsResolutionPolicies:(id)policies context:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  policiesCopy = policies;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [policiesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(policiesCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        WeakRetained = objc_loadWeakRetained(&self->_participantsUniqueIdentifiers);
        uniqueIdentifier = [v10 uniqueIdentifier];
        v13 = [WeakRetained containsObject:uniqueIdentifier];

        if (v13)
        {
          orientationResolutionPolicyInfo = [v10 orientationResolutionPolicyInfo];
          [orientationResolutionPolicyInfo setForceResolution:self->_forceResolution];
          [orientationResolutionPolicyInfo setActuationContext:self->_actuationContext];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [policiesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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