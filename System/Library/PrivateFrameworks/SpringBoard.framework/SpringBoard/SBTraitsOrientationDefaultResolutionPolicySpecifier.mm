@interface SBTraitsOrientationDefaultResolutionPolicySpecifier
- (SBTraitsOrientationDefaultResolutionPolicySpecifier)initWithComponentOrder:(id)order dataSource:(id)source;
- (SBTraitsOrientationPolicySpecifierDataSource)dataSource;
- (void)updateStageParticipantsResolutionPolicies:(id)policies context:(id)context;
@end

@implementation SBTraitsOrientationDefaultResolutionPolicySpecifier

- (SBTraitsOrientationDefaultResolutionPolicySpecifier)initWithComponentOrder:(id)order dataSource:(id)source
{
  orderCopy = order;
  sourceCopy = source;
  if (!sourceCopy)
  {
    [SBTraitsOrientationDefaultResolutionPolicySpecifier initWithComponentOrder:a2 dataSource:self];
  }

  v12.receiver = self;
  v12.super_class = SBTraitsOrientationDefaultResolutionPolicySpecifier;
  v9 = [(SBTraitsOrientationStageComponent *)&v12 initWithComponentOrder:orderCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_dataSource, sourceCopy);
  }

  return v10;
}

- (void)updateStageParticipantsResolutionPolicies:(id)policies context:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  policiesCopy = policies;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (!WeakRetained)
  {
    [SBTraitsOrientationDefaultResolutionPolicySpecifier updateStageParticipantsResolutionPolicies:a2 context:?];
  }

  v9 = objc_loadWeakRetained(&self->_dataSource);
  defaultKeyboardFocusDrivenRoles = [v9 defaultKeyboardFocusDrivenRoles];
  defaultDeviceOrientationDrivenRoles = [v9 defaultDeviceOrientationDrivenRoles];
  defaultActiveOrientationBelowDrivenRoles = [v9 defaultActiveOrientationBelowDrivenRoles];
  v31 = v9;
  defaultOtherParticipantDrivenRoles = [v9 defaultOtherParticipantDrivenRoles];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = policiesCopy;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    v16 = 0x277D73000uLL;
    v33 = v12;
    v34 = defaultDeviceOrientationDrivenRoles;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        role = [v18 role];
        if ([defaultDeviceOrientationDrivenRoles containsObject:role])
        {
          resolutionPolicyInfoDeviceOrientation = [*(v16 + 1232) resolutionPolicyInfoDeviceOrientation];
LABEL_12:
          resolutionPolicyInfoIsolation = resolutionPolicyInfoDeviceOrientation;
          goto LABEL_22;
        }

        if ([defaultActiveOrientationBelowDrivenRoles containsObject:role])
        {
          resolutionPolicyInfoDeviceOrientation = [*(v16 + 1232) resolutionPolicyInfoOrientationBelow];
          goto LABEL_12;
        }

        v22 = v16;
        if ([defaultKeyboardFocusDrivenRoles containsObject:role])
        {
          v23 = defaultOtherParticipantDrivenRoles;
          validatedInputs = [contextCopy validatedInputs];
          keyboardInputs = [validatedInputs keyboardInputs];
          focusedParticipantUniqueIdentifier = [keyboardInputs focusedParticipantUniqueIdentifier];

          v27 = *(v22 + 1232);
          if (focusedParticipantUniqueIdentifier)
          {
            [v27 resolutionPolicyInfoForAssociatedParticipantWithUniqueID:focusedParticipantUniqueIdentifier];
          }

          else
          {
            [v27 resolutionPolicyInfoOrientationBelow];
          }
          resolutionPolicyInfoIsolation = ;
          v12 = v33;
        }

        else
        {
          v28 = [defaultOtherParticipantDrivenRoles objectForKey:role];

          v23 = defaultOtherParticipantDrivenRoles;
          v29 = *(v22 + 1232);
          if (v28)
          {
            v30 = [v23 objectForKey:role];
            resolutionPolicyInfoIsolation = [v29 resolutionPolicyInfoForAssociatedParticipantWithRole:v30];

            v12 = v33;
          }

          else
          {
            resolutionPolicyInfoIsolation = [*(v22 + 1232) resolutionPolicyInfoIsolation];
          }
        }

        defaultOtherParticipantDrivenRoles = v23;
        v16 = v22;
        defaultDeviceOrientationDrivenRoles = v34;
LABEL_22:
        [v18 setOrientationResolutionPolicyInfo:resolutionPolicyInfoIsolation];
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