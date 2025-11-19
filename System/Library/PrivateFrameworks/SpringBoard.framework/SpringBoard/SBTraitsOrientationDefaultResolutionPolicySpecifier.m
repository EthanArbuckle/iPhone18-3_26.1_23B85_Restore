@interface SBTraitsOrientationDefaultResolutionPolicySpecifier
- (SBTraitsOrientationDefaultResolutionPolicySpecifier)initWithComponentOrder:(id)a3 dataSource:(id)a4;
- (SBTraitsOrientationPolicySpecifierDataSource)dataSource;
- (void)updateStageParticipantsResolutionPolicies:(id)a3 context:(id)a4;
@end

@implementation SBTraitsOrientationDefaultResolutionPolicySpecifier

- (SBTraitsOrientationDefaultResolutionPolicySpecifier)initWithComponentOrder:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [SBTraitsOrientationDefaultResolutionPolicySpecifier initWithComponentOrder:a2 dataSource:self];
  }

  v12.receiver = self;
  v12.super_class = SBTraitsOrientationDefaultResolutionPolicySpecifier;
  v9 = [(SBTraitsOrientationStageComponent *)&v12 initWithComponentOrder:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_dataSource, v8);
  }

  return v10;
}

- (void)updateStageParticipantsResolutionPolicies:(id)a3 context:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v32 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (!WeakRetained)
  {
    [SBTraitsOrientationDefaultResolutionPolicySpecifier updateStageParticipantsResolutionPolicies:a2 context:?];
  }

  v9 = objc_loadWeakRetained(&self->_dataSource);
  v35 = [v9 defaultKeyboardFocusDrivenRoles];
  v10 = [v9 defaultDeviceOrientationDrivenRoles];
  v36 = [v9 defaultActiveOrientationBelowDrivenRoles];
  v31 = v9;
  v11 = [v9 defaultOtherParticipantDrivenRoles];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    v16 = 0x277D73000uLL;
    v33 = v12;
    v34 = v10;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        v19 = [v18 role];
        if ([v10 containsObject:v19])
        {
          v20 = [*(v16 + 1232) resolutionPolicyInfoDeviceOrientation];
LABEL_12:
          v21 = v20;
          goto LABEL_22;
        }

        if ([v36 containsObject:v19])
        {
          v20 = [*(v16 + 1232) resolutionPolicyInfoOrientationBelow];
          goto LABEL_12;
        }

        v22 = v16;
        if ([v35 containsObject:v19])
        {
          v23 = v11;
          v24 = [v32 validatedInputs];
          v25 = [v24 keyboardInputs];
          v26 = [v25 focusedParticipantUniqueIdentifier];

          v27 = *(v22 + 1232);
          if (v26)
          {
            [v27 resolutionPolicyInfoForAssociatedParticipantWithUniqueID:v26];
          }

          else
          {
            [v27 resolutionPolicyInfoOrientationBelow];
          }
          v21 = ;
          v12 = v33;
        }

        else
        {
          v28 = [v11 objectForKey:v19];

          v23 = v11;
          v29 = *(v22 + 1232);
          if (v28)
          {
            v30 = [v23 objectForKey:v19];
            v21 = [v29 resolutionPolicyInfoForAssociatedParticipantWithRole:v30];

            v12 = v33;
          }

          else
          {
            v21 = [*(v22 + 1232) resolutionPolicyInfoIsolation];
          }
        }

        v11 = v23;
        v16 = v22;
        v10 = v34;
LABEL_22:
        [v18 setOrientationResolutionPolicyInfo:v21];
      }

      v14 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v14);
  }
}

- (SBTraitsOrientationPolicySpecifierDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)initWithComponentOrder:(uint64_t)a1 dataSource:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTraitsOrientationStageComponents.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];
}

- (void)updateStageParticipantsResolutionPolicies:(uint64_t)a1 context:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"SBTraitsOrientationStageComponents.m" lineNumber:109 description:{@"%@ cannot start being queried without a policy data source in place", v5}];
}

@end