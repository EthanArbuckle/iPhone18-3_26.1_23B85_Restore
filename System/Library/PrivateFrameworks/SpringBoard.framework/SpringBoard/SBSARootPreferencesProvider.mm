@interface SBSARootPreferencesProvider
- (BOOL)_handleBounceRequest:(id)request;
- (BOOL)_handleEjectRequest:(id)request;
- (BOOL)_handlePulseRequest:(id)request;
- (BOOL)_handleShakeRequest:(id)request;
- (SBSARootPreferencesProvider)initWithParentProvider:(id)provider;
- (id)preferencesFromContext:(id)context;
- (void)_handleRequests:(id)requests;
- (void)_updateDynamicsSessionProviders:(id)providers;
- (void)removeFromParentProvider;
@end

@implementation SBSARootPreferencesProvider

- (SBSARootPreferencesProvider)initWithParentProvider:(id)provider
{
  if (provider)
  {
    [SBSARootPreferencesProvider initWithParentProvider:];
  }

  v5.receiver = self;
  v5.super_class = SBSARootPreferencesProvider;
  return [(SBSABasePreferencesProvider *)&v5 initWithParentProvider:0];
}

- (void)removeFromParentProvider
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSARootPreferencesProvider.m" lineNumber:62 description:@"This is a root provider class"];
}

- (id)preferencesFromContext:(id)context
{
  v58[14] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = contextCopy;
  if (!self->_configuredInitialStack)
  {
    v46 = contextCopy;
    v47 = a2;
    v45 = objc_opt_self();
    v58[0] = v45;
    v44 = objc_opt_self();
    v58[1] = v44;
    v43 = objc_opt_self();
    v58[2] = v43;
    v42 = objc_opt_self();
    v58[3] = v42;
    v41 = objc_opt_self();
    v58[4] = v41;
    v40 = objc_opt_self();
    v58[5] = v40;
    v7 = objc_opt_self();
    v58[6] = v7;
    v8 = objc_opt_self();
    v58[7] = v8;
    v9 = objc_opt_self();
    v58[8] = v9;
    v10 = objc_opt_self();
    v58[9] = v10;
    v11 = objc_opt_self();
    v58[10] = v11;
    v12 = objc_opt_self();
    v58[11] = v12;
    v13 = objc_opt_self();
    v58[12] = v13;
    v14 = objc_opt_self();
    v58[13] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:14];

    if (_os_feature_enabled_impl())
    {
      v16 = [v15 mutableCopy];
      v17 = objc_opt_self();
      v18 = objc_opt_self();
      [v16 insertObject:v17 atIndex:{objc_msgSend(v15, "indexOfObject:", v18)}];

      v19 = [MEMORY[0x277CBEA60] arrayWithArray:v16];

      v15 = v19;
    }

    selfCopy = self;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v21 = v15;
    v22 = [v21 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v54;
      do
      {
        v25 = 0;
        v26 = selfCopy;
        do
        {
          if (*v54 != v24)
          {
            objc_enumerationMutation(v21);
          }

          selfCopy = [objc_alloc(*(*(&v53 + 1) + 8 * v25)) initWithParentProvider:v26];

          ++v25;
          v26 = selfCopy;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v23);
    }

    self->_configuredInitialStack = 1;
    v6 = v46;
    a2 = v47;
  }

  v27 = objc_opt_class();
  v28 = v6;
  if (v27)
  {
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  if (v30)
  {
    elementContexts = [v30 elementContexts];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __54__SBSARootPreferencesProvider_preferencesFromContext___block_invoke;
    v49[3] = &unk_2783AD778;
    v52 = a2;
    v49[4] = self;
    v32 = elementContexts;
    v50 = v32;
    v51 = v30;
    v33 = v30;
    v34 = [SBSAPreferences instanceWithBlock:v49];
    v30 = [v33 copyByUpdatingPreferences:v34];

    previouslyVisibleElements = self->_previouslyVisibleElements;
    self->_previouslyVisibleElements = v32;
    v36 = v32;

    [(SBSARootPreferencesProvider *)self _updateDynamicsSessionProviders:v36];
    requests = [v30 requests];
    [(SBSARootPreferencesProvider *)self _handleRequests:requests];
  }

  v48.receiver = self;
  v48.super_class = SBSARootPreferencesProvider;
  v38 = [(SBSABasePreferencesProvider *)&v48 preferencesFromContext:v30];
  [v38 finalizePreferencesForApplication:v30];

  return v38;
}

void __54__SBSARootPreferencesProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v12;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v3 = v12;
    if (!v7)
    {
      __54__SBSARootPreferencesProvider_preferencesFromContext___block_invoke_cold_1();
      v3 = v12;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [[SBSAElementLayoutTransition alloc] initWithInitialElementContexts:*(*(a1 + 32) + 40) targetElementContext:*(a1 + 40)];
  [v7 setElementLayoutTransition:v8];
  if ([(SBSAElementLayoutTransition *)v8 isLayoutChange])
  {
    objc_storeStrong((*(a1 + 32) + 48), v8);
  }

  [v7 setLastChangingElementLayoutTransition:*(*(a1 + 32) + 48)];
  v9 = [*(a1 + 48) maintainedPreferences];
  v10 = [v9 copy];
  if (v10)
  {
    [v7 setMaintainedPreferences:v10];
  }

  else
  {
    v11 = objc_alloc_init(SBSAMaintainedPreferences);
    [v7 setMaintainedPreferences:v11];
  }
}

- (BOOL)_handleShakeRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v5 = objc_opt_self();
    v6 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:v5];

    if (!v6)
    {
      v7 = [SBSAShakeBehaviorProvider alloc];
      participantIdentifier = [requestCopy participantIdentifier];
      triggeredBlock = [requestCopy triggeredBlock];
      v10 = [(SBSAShakeBehaviorProvider *)v7 initWithParticipantIdentifier:participantIdentifier triggeredBlock:triggeredBlock];

      [(SBSABasePreferencesProvider *)self setChildProvider:v10];
    }
  }

  return requestCopy != 0;
}

- (BOOL)_handleBounceRequest:(id)request
{
  if (request)
  {
    requestCopy = request;
    v6 = [SBSAAcceptanceBounceBehaviorProvider alloc];
    style = [requestCopy style];
    triggeredBlock = [requestCopy triggeredBlock];

    v9 = [(SBSAAcceptanceBounceBehaviorProvider *)v6 initWithParticipantIdentifier:0 style:style triggeredBlock:triggeredBlock];
    v10 = objc_opt_self();
    v11 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:v10];

    if (!v11)
    {
      [SBSARootPreferencesProvider _handleBounceRequest:];
    }

    [v11 setChildProvider:v9];
  }

  return request != 0;
}

- (BOOL)_handleEjectRequest:(id)request
{
  if (request)
  {
    v5 = objc_alloc_init(SBSAEjectStretchBehaviorProvider);
    v6 = objc_opt_self();
    v7 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:v6];

    if (!v7)
    {
      [SBSARootPreferencesProvider _handleEjectRequest:];
    }

    [v7 setChildProvider:v5];
  }

  return request != 0;
}

- (BOOL)_handlePulseRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v5 = objc_opt_self();
    v6 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:v5];

    if (v6)
    {
      [v6 didRequestAdditionalPulse:requestCopy];
    }

    else
    {
      v7 = [SBSAContainerDynamicsPulseAnimationProvider alloc];
      participantIdentifier = [requestCopy participantIdentifier];
      v9 = -[SBSAContainerDynamicsPulseAnimationProvider initWithElementIdentity:pulseStyle:](v7, "initWithElementIdentity:pulseStyle:", participantIdentifier, [requestCopy pulseStyle]);

      v10 = objc_opt_self();
      v11 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:v10];

      if (!v11)
      {
        [SBSARootPreferencesProvider _handlePulseRequest:];
      }

      [v11 setChildProvider:v9];
    }
  }

  return requestCopy != 0;
}

- (void)_handleRequests:(id)requests
{
  v34 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [requestsCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(requestsCopy);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = v9;
        if (v10)
        {
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        v14 = [(SBSARootPreferencesProvider *)self _handleShakeRequest:v13];
        if (!v14)
        {
          v15 = objc_opt_class();
          v16 = v11;
          if (v15)
          {
            v17 = (objc_opt_isKindOfClass() & 1) != 0 ? v16 : 0;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          v19 = [(SBSARootPreferencesProvider *)self _handleBounceRequest:v18];
          if (!v19)
          {
            v20 = objc_opt_class();
            v21 = v16;
            if (v20)
            {
              v22 = (objc_opt_isKindOfClass() & 1) != 0 ? v21 : 0;
            }

            else
            {
              v22 = 0;
            }

            v23 = v22;

            v24 = [(SBSARootPreferencesProvider *)self _handleEjectRequest:v23];
            if (!v24)
            {
              v25 = objc_opt_class();
              v26 = v21;
              if (v25)
              {
                if (objc_opt_isKindOfClass())
                {
                  v27 = v26;
                }

                else
                {
                  v27 = 0;
                }
              }

              else
              {
                v27 = 0;
              }

              v28 = v27;

              [(SBSARootPreferencesProvider *)self _handlePulseRequest:v28];
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [requestsCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }
}

- (void)_updateDynamicsSessionProviders:(id)providers
{
  v29 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [providersCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(providersCopy);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if ([v11 activeDynamicAnimation] == 1)
        {
          v8 = 1;
        }

        else
        {
          v7 |= [v11 activeDynamicAnimation] == 2;
        }
      }

      v6 = [providersCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
    if (v8)
    {
      v12 = objc_opt_self();
      v13 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:v12];

      if (!v13)
      {
        v14 = objc_opt_self();
        v15 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:v14];
        parentProvider = [v15 parentProvider];

        if (!parentProvider)
        {
          [SBSARootPreferencesProvider _updateDynamicsSessionProviders:];
        }

        v17 = objc_alloc_init(SBSAContainerDynamicsBumpAnimationProvider);
        [parentProvider setChildProvider:v17];
      }
    }

    if (v7)
    {
      v18 = objc_opt_self();
      v19 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:v18];

      if (!v19)
      {
        v20 = objc_opt_self();
        v21 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:v20];
        parentProvider2 = [v21 parentProvider];

        if (!parentProvider2)
        {
          [SBSARootPreferencesProvider _updateDynamicsSessionProviders:];
        }

        v23 = objc_alloc_init(SBSAContainerDynamicsInflateAnimationProvider);
        [parentProvider2 setChildProvider:v23];
      }
    }
  }
}

- (void)initWithParentProvider:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __54__SBSARootPreferencesProvider_preferencesFromContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:v1 object:v2 file:@"SBSARootPreferencesProvider.m" lineNumber:100 description:{@"Unexpected class – expected '%@', got '%@'", v3, v5}];
}

- (void)_handleBounceRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_handleEjectRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_handlePulseRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateDynamicsSessionProviders:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateDynamicsSessionProviders:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end