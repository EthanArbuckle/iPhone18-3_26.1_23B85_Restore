@interface SBSASecureFlipBookElementPreferencesProvider
- (BOOL)_isTimerExpiredWithIdentifier:(id)identifier context:(id)context;
- (BOOL)_isTransitionAllowedTo:(id)to givenContext:(id)context iterationStartTime:(double)time requestRetryAfterDelay:(double *)delay;
- (BOOL)_isTransitionSecureFromState:(id)state toState:(id)toState forComponent:(id)component indefinitely:(BOOL)indefinitely givenMap:(id)map;
- (id)_startTimerForDuration:(double)duration preferencesMutator:(id)mutator;
- (id)preferencesFromContext:(id)context;
- (void)_fallbackUpdateSecureStateStatusForInitialTransitionsWithRenderingContext:(id)context;
- (void)_updateSecureStateStatusBeforeAnyTransitions:(id)transitions iterationStartTime:(double)time;
- (void)_updateSecureStateStatusWithRequestedTransitionToSecureElementContext:(id)context renderingContext:(id)renderingContext;
- (void)_updateSecureStateStatusWithTransitionToNilSecureElementContext;
@end

@implementation SBSASecureFlipBookElementPreferencesProvider

- (id)preferencesFromContext:(id)context
{
  contextCopy = context;
  BSContinuousMachTimeNow();
  v7 = v6;
  v8 = contextCopy;
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (!v12)
    {
      [(SBSASecureFlipBookElementPreferencesProvider *)v10 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v12 = 0;
  }

  preferences = [v12 preferences];
  lastChangingElementLayoutTransition = [preferences lastChangingElementLayoutTransition];

  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_lastChangingElementLayoutTransition, lastChangingElementLayoutTransition);
    self->_collisionPending = [(SBSAElementLayoutTransition *)self->_lastChangingElementLayoutTransition isCollisionRequired];
  }

  if ([v12 containsAnyOfSignals:1])
  {
    self->_collisionPending = 0;
  }

  if ([(SBSASecureFlipBookElementPreferencesProvider *)self _isTimerExpiredWithIdentifier:self->_pendingTimerIdentifier context:v12])
  {
    v15 = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Re-evaluating secure flipbook element state as result of timer firing", buf, 2u);
    }

    pendingTimerIdentifier = self->_pendingTimerIdentifier;
    self->_pendingTimerIdentifier = 0;
  }

  secureFlipBookRenderingContext = [v12 secureFlipBookRenderingContext];
  activeSecureElementIdentity = [secureFlipBookRenderingContext activeSecureElementIdentity];
  preferences2 = [v12 preferences];
  v20 = objc_opt_class();
  v21 = preferences2;
  if (v20)
  {
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __71__SBSASecureFlipBookElementPreferencesProvider_preferencesFromContext___block_invoke;
  v35[3] = &unk_2783B9BA0;
  v36 = v12;
  selfCopy = self;
  v24 = secureFlipBookRenderingContext;
  v38 = v24;
  v40 = v7;
  v25 = activeSecureElementIdentity;
  v39 = v25;
  v26 = v12;
  v27 = [v23 copyWithBlock:v35];

  v28 = [v26 copyByUpdatingPreferences:v27];
  v34.receiver = self;
  v34.super_class = SBSASecureFlipBookElementPreferencesProvider;
  v29 = [(SBSABasePreferencesProvider *)&v34 preferencesFromContext:v28];
  v30 = objc_opt_class();
  v31 = v29;
  if (v30)
  {
    if (objc_opt_isKindOfClass())
    {
      v30 = v31;
    }

    else
    {
      v30 = 0;
    }
  }

  v32 = v30;

  return v30;
}

void __71__SBSASecureFlipBookElementPreferencesProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 secureFlipBookElementPreferences];
  v5 = [*(a1 + 32) secureFlipBookElementContexts];
  v6 = [v5 firstObject];

  v7 = *(a1 + 40);
  if (v6)
  {
    if (*(v7 + 41) == 1)
    {

      v6 = 0;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    *(v7 + 41) = 1;
  }

  [*(a1 + 40) _updateSecureStateStatusBeforeAnyTransitions:*(a1 + 48) iterationStartTime:*(a1 + 64)];
  v43 = 0.0;
  if (![*(a1 + 40) _isTransitionAllowedTo:v6 givenContext:*(a1 + 48) iterationStartTime:&v43 requestRetryAfterDelay:*(a1 + 64)])
  {
    goto LABEL_11;
  }

  v9 = *(a1 + 40);
  if ((v9[40] & 1) == 0 && v6)
  {
    [v9 _updateSecureStateStatusWithRequestedTransitionToSecureElementContext:v6 renderingContext:*(a1 + 48)];
    v10 = [SBSAElementIdentification alloc];
    v11 = [v6 clientIdentifier];
    v12 = [v6 elementIdentifier];
    v13 = [(SBSAElementIdentification *)v10 initWithClientIdentifier:v11 elementIdentifier:v12];

    v14 = [*(a1 + 32) elementContexts];
    v15 = SBSAObjectInCollectionAssociatedWithElementIdentity(v13, v14, 0);

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __71__SBSASecureFlipBookElementPreferencesProvider_preferencesFromContext___block_invoke_3;
    v37[3] = &unk_2783B9B50;
    v38 = v13;
    v16 = v6;
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v39 = v16;
    v40 = v17;
    v41 = v15;
    v42 = v18;
    v19 = v15;
    v20 = v13;
    v21 = MEMORY[0x223D6F7F0](v37);

    goto LABEL_17;
  }

  if (!v9[40])
  {
    [v9 _updateSecureStateStatusWithTransitionToNilSecureElementContext];
    *(*(a1 + 40) + 41) = 0;
    if (!v8)
    {
      v21 = &__block_literal_global_214;
      if (v4)
      {
        goto LABEL_18;
      }

LABEL_24:
      v29 = [(SBSAAbstractDictionaryBackedPreferences *)SBSASecureFlipBookElementPreferences instanceWithBlock:v21];
      goto LABEL_25;
    }

    v30 = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "Transitioning through Empty due to previous nil secure element context.", buf, 2u);
    }

    v31 = [v3 actions];
    v20 = [v31 mutableCopy];

    v32 = [[SBSAPreferencesDidChangeAction alloc] initWithReasons:&unk_28336E688];
    [(SBSAElementIdentification *)v20 addObject:v32];

    [v3 setActions:v20];
    v21 = &__block_literal_global_214;
  }

  else
  {
LABEL_11:
    [*(a1 + 40) _fallbackUpdateSecureStateStatusForInitialTransitionsWithRenderingContext:*(a1 + 48)];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __71__SBSASecureFlipBookElementPreferencesProvider_preferencesFromContext___block_invoke_4;
    v33[3] = &unk_2783B9B78;
    v34 = *(a1 + 56);
    v22 = *(a1 + 48);
    v23 = *(a1 + 40);
    v35 = v22;
    v36 = v23;
    v21 = MEMORY[0x223D6F7F0](v33);
    if ((BSFloatIsZero() & 1) == 0)
    {
      v24 = *(a1 + 40);
      if (!v24[8])
      {
        v25 = [v24 _startTimerForDuration:v3 preferencesMutator:v43];
        v26 = *(a1 + 40);
        v27 = *(v26 + 64);
        *(v26 + 64) = v25;

        v28 = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v45 = v43;
          _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "Starting timer to re-evaluate secure flipbook element state after: %f", buf, 0xCu);
        }
      }
    }

    v20 = v34;
  }

LABEL_17:

  if (!v4)
  {
    goto LABEL_24;
  }

LABEL_18:
  v29 = [v4 copyWithBlock:v21];

LABEL_25:
  [v3 setSecureFlipBookElementPreferences:v29];
}

void __71__SBSASecureFlipBookElementPreferencesProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v6 setActiveSecureElementIdentity:v3];
  v4 = [*(a1 + 40) requestedConfigurationName];
  [v6 setRequestedConfigurationName:v4];

  v5 = [*(a1 + 40) requestedComponentsToStates];
  [v6 setRequestedComponentsToStates:v5];

  *(*(a1 + 48) + 80) = [*(a1 + 56) interfaceOrientation];
  [v6 setOrientation:*(*(a1 + 48) + 80)];
  *(*(a1 + 48) + 88) = [*(a1 + 64) layoutDirection] == 1;
  [v6 setLayoutDirection:*(*(a1 + 48) + 88)];
  *(*(a1 + 48) + 96) = [*(a1 + 56) layoutMode];
  [v6 setActiveLayoutMode:*(*(a1 + 48) + 96)];
}

void __71__SBSASecureFlipBookElementPreferencesProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v6 setActiveSecureElementIdentity:v3];
  v4 = [*(a1 + 40) activeConfigurationName];
  [v6 setRequestedConfigurationName:v4];

  v5 = [*(a1 + 40) requestedComponentsToStates];
  [v6 setRequestedComponentsToStates:v5];

  [v6 setOrientation:*(*(a1 + 48) + 80)];
  [v6 setLayoutDirection:*(*(a1 + 48) + 88)];
  [v6 setActiveLayoutMode:*(*(a1 + 48) + 96)];
}

- (void)_updateSecureStateStatusBeforeAnyTransitions:(id)transitions iterationStartTime:(double)time
{
  v57 = *MEMORY[0x277D85DE8];
  transitionsCopy = transitions;
  v7 = transitionsCopy;
  secureStateStatus = self->_secureStateStatus;
  if (secureStateStatus == 2)
  {
    if (self->_secureStateDisplayStartTime + 1.1 - time <= 0.0)
    {
      self->_secureStateDisplayStartTime = 0.0;
      self->_secureStateStatus = 3;
      log = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_secureStateStatus - 1;
        if (v21 > 2)
        {
          v22 = @"Insecure";
        }

        else
        {
          v22 = off_2783B9BC0[v21];
        }

        *buf = 138412290;
        v50 = v22;
        _os_log_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEFAULT, "Provisional MOT Timer Satisfied. (_secureStateStatus->%@)", buf, 0xCu);
      }

LABEL_31:
    }
  }

  else if (secureStateStatus == 1)
  {
    log = [transitionsCopy activeComponentsToStates];
    appliedComponentsToStates = [v7 appliedComponentsToStates];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = 72;
    obj = [(NSDictionary *)self->_pendingTransitionsOfComponentsToSecureStates allKeys];
    v10 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
    if (v10)
    {
      v11 = v10;
      v35 = v7;
      v12 = *v46;
      selfCopy = self;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          v15 = [appliedComponentsToStates objectForKeyedSubscript:v14];
          v16 = [*(&self->super.super.isa + v9) objectForKeyedSubscript:v14];
          if ([v15 isEqualToString:v16])
          {
            v18 = v9;

LABEL_18:
            v23 = [*(&selfCopy->super.super.isa + v18) objectForKeyedSubscript:v14];
            [dictionary setObject:v23 forKey:v14];

            v24 = *(&selfCopy->super.super.isa + v18);
            *(&selfCopy->super.super.isa + v18) = 0;

            selfCopy->_secureStateDisplayStartTime = time;
            selfCopy->_secureStateStatus = 2;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            obj = [dictionary allKeys];
            v25 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v42;
              do
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v42 != v27)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v29 = *(*(&v41 + 1) + 8 * j);
                  v30 = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    v31 = [dictionary objectForKeyedSubscript:v29];
                    v32 = v31;
                    v33 = selfCopy->_secureStateStatus - 1;
                    v34 = @"Insecure";
                    if (v33 <= 2)
                    {
                      v34 = off_2783B9BC0[v33];
                    }

                    *buf = 138412802;
                    v50 = v29;
                    v51 = 2112;
                    v52 = v31;
                    v53 = 2112;
                    v54 = v34;
                    _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "Secure transition detected component: %@ (->%@), starting Provisional MOT Timer. (_secureStateStatus->%@)", buf, 0x20u);
                  }
                }

                v26 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
              }

              while (v26);
            }

            goto LABEL_29;
          }

          v17 = [log objectForKeyedSubscript:v14];
          v18 = v9;
          v19 = [*(&self->super.super.isa + v9) objectForKeyedSubscript:v14];
          v20 = [v17 isEqualToString:v19];

          if (v20)
          {
            goto LABEL_18;
          }

          self = selfCopy;
          v9 = v18;
        }

        v11 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_29:
      v7 = v35;
    }

    goto LABEL_31;
  }
}

- (void)_updateSecureStateStatusWithRequestedTransitionToSecureElementContext:(id)context renderingContext:(id)renderingContext
{
  v82 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  renderingContextCopy = renderingContext;
  componentToSecureTransitionMapping = [renderingContextCopy componentToSecureTransitionMapping];
  activeComponentsToStates = [renderingContextCopy activeComponentsToStates];
  requestedComponentsToStates = [contextCopy requestedComponentsToStates];
  v60 = componentToSecureTransitionMapping;
  if (componentToSecureTransitionMapping)
  {
    v53 = renderingContextCopy;
    v55 = contextCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    allKeys = [activeComponentsToStates allKeys];
    v12 = [allKeys countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v70;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v70 != v14)
          {
            objc_enumerationMutation(allKeys);
          }

          v16 = *(*(&v69 + 1) + 8 * i);
          v17 = activeComponentsToStates;
          v18 = [activeComponentsToStates objectForKeyedSubscript:v16];
          v19 = [requestedComponentsToStates objectForKeyedSubscript:v16];
          if ([(SBSASecureFlipBookElementPreferencesProvider *)self _isTransitionSecureFromState:v18 toState:v19 forComponent:v16 indefinitely:0 givenMap:v60])
          {
            [dictionary setObject:v19 forKey:v16];
          }

          activeComponentsToStates = v17;
        }

        v13 = [allKeys countByEnumeratingWithState:&v69 objects:v81 count:16];
      }

      while (v13);
    }

    v20 = activeComponentsToStates;

    allKeys2 = [dictionary allKeys];
    v22 = [allKeys2 count];

    if (v22)
    {
      v23 = [dictionary copy];
    }

    else
    {
      v23 = 0;
    }

    renderingContextCopy = v53;
    contextCopy = v55;
    activeComponentsToStates = v20;
  }

  else
  {
    dictionary = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, dictionary, OS_LOG_TYPE_INFO, "Secure transition map is nil; cannot identify any possibly secure transitions", buf, 2u);
    }

    v23 = 0;
  }

  secureStateStatus = self->_secureStateStatus;
  if (secureStateStatus > 1)
  {
    if (secureStateStatus == 2)
    {
      if (![v23 count])
      {
        v25 = 262;
        goto LABEL_56;
      }

LABEL_52:
      v50 = v23;
      pendingTransitionsOfComponentsToSecureStates = self->_pendingTransitionsOfComponentsToSecureStates;
      self->_pendingTransitionsOfComponentsToSecureStates = v50;
LABEL_53:

      goto LABEL_54;
    }

    if (secureStateStatus == 3 && ![v23 count])
    {
      v26 = self->_pendingTransitionsOfComponentsToSecureStates;
      self->_pendingTransitionsOfComponentsToSecureStates = 0;

      self->_secureStateStatus = 0;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      pendingTransitionsOfComponentsToSecureStates = [v23 allKeys];
      v28 = [pendingTransitionsOfComponentsToSecureStates countByEnumeratingWithState:&v61 objects:v73 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = v23;
        v56 = contextCopy;
        v51 = activeComponentsToStates;
        v31 = *v62;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v62 != v31)
            {
              objc_enumerationMutation(pendingTransitionsOfComponentsToSecureStates);
            }

            v33 = *(*(&v61 + 1) + 8 * j);
            v34 = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [v30 objectForKey:v33];
              v36 = v35;
              v37 = self->_secureStateStatus - 1;
              v38 = @"Insecure";
              if (v37 <= 2)
              {
                v38 = off_2783B9BC0[v37];
              }

              *buf = 138412802;
              v75 = v33;
              v76 = 2112;
              v77 = v35;
              v78 = 2112;
              v79 = v38;
              _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "Insecure transition requested component %@ (->%@). (_secureStateStatus->%@)", buf, 0x20u);
            }
          }

          v29 = [pendingTransitionsOfComponentsToSecureStates countByEnumeratingWithState:&v61 objects:v73 count:16];
        }

        while (v29);
        activeComponentsToStates = v51;
        contextCopy = v56;
        v23 = v30;
      }

      goto LABEL_53;
    }
  }

  else if (secureStateStatus)
  {
    if (secureStateStatus == 1)
    {
      if (![v23 count])
      {
        v25 = 255;
LABEL_56:
        [(SBSASecureFlipBookElementPreferencesProvider *)a2 _updateSecureStateStatusWithRequestedTransitionToSecureElementContext:v25 renderingContext:?];
        goto LABEL_52;
      }

      goto LABEL_52;
    }
  }

  else if ([v23 count])
  {
    objc_storeStrong(&self->_pendingTransitionsOfComponentsToSecureStates, v23);
    self->_secureStateStatus = 1;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    pendingTransitionsOfComponentsToSecureStates = [v23 allKeys];
    v39 = [pendingTransitionsOfComponentsToSecureStates countByEnumeratingWithState:&v65 objects:v80 count:16];
    if (v39)
    {
      v40 = v39;
      v54 = renderingContextCopy;
      v57 = contextCopy;
      v52 = activeComponentsToStates;
      v41 = *v66;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v66 != v41)
          {
            objc_enumerationMutation(pendingTransitionsOfComponentsToSecureStates);
          }

          v43 = *(*(&v65 + 1) + 8 * k);
          v44 = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v23;
            v46 = [v23 objectForKey:v43];
            v47 = v46;
            v48 = self->_secureStateStatus - 1;
            v49 = @"Insecure";
            if (v48 <= 2)
            {
              v49 = off_2783B9BC0[v48];
            }

            *buf = 138412802;
            v75 = v43;
            v76 = 2112;
            v77 = v46;
            v78 = 2112;
            v79 = v49;
            _os_log_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_DEFAULT, "Secure transition requested component %@ (->%@). (_secureStateStatus->%@)", buf, 0x20u);

            v23 = v45;
          }
        }

        v40 = [pendingTransitionsOfComponentsToSecureStates countByEnumeratingWithState:&v65 objects:v80 count:16];
      }

      while (v40);
      activeComponentsToStates = v52;
      renderingContextCopy = v54;
      contextCopy = v57;
    }

    goto LABEL_53;
  }

LABEL_54:
}

- (void)_fallbackUpdateSecureStateStatusForInitialTransitionsWithRenderingContext:(id)context
{
  v50 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  componentToSecureTransitionMapping = [contextCopy componentToSecureTransitionMapping];
  activeComponentsToStates = [contextCopy activeComponentsToStates];
  appliedComponentsToStates = [contextCopy appliedComponentsToStates];
  v33 = componentToSecureTransitionMapping;
  if (componentToSecureTransitionMapping)
  {
    v29 = contextCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    allKeys = [appliedComponentsToStates allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          v14 = [activeComponentsToStates objectForKeyedSubscript:v13];
          v15 = [appliedComponentsToStates objectForKeyedSubscript:v13];
          if ([(SBSASecureFlipBookElementPreferencesProvider *)self _isTransitionSecureFromState:v14 toState:v15 forComponent:v13 indefinitely:0 givenMap:v33])
          {
            [dictionary setObject:v15 forKey:v13];
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v38 objects:v49 count:16];
      }

      while (v10);
    }

    allKeys2 = [dictionary allKeys];
    v17 = [allKeys2 count];

    if (v17)
    {
      obj = [dictionary copy];
    }

    else
    {
      obj = 0;
    }

    contextCopy = v29;
  }

  else
  {
    obj = 0;
  }

  if (!self->_secureStateStatus && [obj count])
  {
    v30 = contextCopy;
    objc_storeStrong(&self->_pendingTransitionsOfComponentsToSecureStates, obj);
    self->_secureStateStatus = 1;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    allKeys3 = [obj allKeys];
    v19 = [allKeys3 countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(allKeys3);
          }

          v23 = *(*(&v34 + 1) + 8 * j);
          v24 = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [obj objectForKey:v23];
            v26 = v25;
            v27 = self->_secureStateStatus - 1;
            v28 = @"Insecure";
            if (v27 <= 2)
            {
              v28 = off_2783B9BC0[v27];
            }

            *buf = 138412802;
            v43 = v23;
            v44 = 2112;
            v45 = v25;
            v46 = 2112;
            v47 = v28;
            _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Secure transition already applied for component %@ (->%@). (_secureStateStatus->%@)", buf, 0x20u);
          }
        }

        v20 = [allKeys3 countByEnumeratingWithState:&v34 objects:v48 count:16];
      }

      while (v20);
    }

    contextCopy = v30;
  }
}

- (void)_updateSecureStateStatusWithTransitionToNilSecureElementContext
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_secureStateStatus)
  {
    self->_secureStateStatus = 0;
    v3 = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = self->_secureStateStatus - 1;
      if (v4 > 2)
      {
        v5 = @"Insecure";
      }

      else
      {
        v5 = off_2783B9BC0[v4];
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Insecure transition requested (remove secure element context). (_secureStateStatus->%@)", &v7, 0xCu);
    }
  }

  self->_secureStateDisplayStartTime = 0.0;
  pendingTransitionsOfComponentsToSecureStates = self->_pendingTransitionsOfComponentsToSecureStates;
  self->_pendingTransitionsOfComponentsToSecureStates = 0;
}

- (BOOL)_isTransitionAllowedTo:(id)to givenContext:(id)context iterationStartTime:(double)time requestRetryAfterDelay:(double *)delay
{
  v48 = *MEMORY[0x277D85DE8];
  toCopy = to;
  contextCopy = context;
  activeSecureElementIdentity = [contextCopy activeSecureElementIdentity];
  v12 = activeSecureElementIdentity;
  if (toCopy && activeSecureElementIdentity)
  {
    if ((SAElementIdentityEqualToIdentity() & 1) == 0)
    {
      self->_requiresTransitionThroughEmpty = 1;
      componentToSecureTransitionMapping = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
      if (os_log_type_enabled(componentToSecureTransitionMapping, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v14 = "Transition not allowed. Existing rendered secure element different than requested, deferring transition";
LABEL_10:
        _os_log_impl(&dword_21ED4E000, componentToSecureTransitionMapping, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else if (!activeSecureElementIdentity)
  {
    goto LABEL_15;
  }

  if (![contextCopy transitionInProgress])
  {
    if (SAElementIdentityEqualToIdentity())
    {
      requestedConfigurationName = [toCopy requestedConfigurationName];
      activeConfigurationName = [contextCopy activeConfigurationName];
      v18 = [requestedConfigurationName isEqualToString:activeConfigurationName];

      if ((v18 & 1) == 0)
      {
        componentToSecureTransitionMapping = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
        if (!os_log_type_enabled(componentToSecureTransitionMapping, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        *buf = 0;
        v14 = "Transition not allowed. Existing secure element requesting transition to new configuration while registered";
        goto LABEL_10;
      }
    }

LABEL_15:
    secureStateStatus = self->_secureStateStatus;
    if (secureStateStatus)
    {
      v20 = secureStateStatus == 3;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v15 = 1;
      goto LABEL_21;
    }

    if (!toCopy)
    {
      v15 = 0;
      goto LABEL_21;
    }

    componentToSecureTransitionMapping = [contextCopy componentToSecureTransitionMapping];
    activeComponentsToStates = [contextCopy activeComponentsToStates];
    [toCopy requestedComponentsToStates];
    v40 = v39 = activeComponentsToStates;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    allKeys = [activeComponentsToStates allKeys];
    v24 = [allKeys countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v24)
    {
      v25 = v24;
      delayCopy = delay;
      selfCopy = self;
      v27 = componentToSecureTransitionMapping;
      v36 = v12;
      v37 = contextCopy;
      v38 = toCopy;
      v28 = 0;
      v29 = *v42;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(allKeys);
          }

          v31 = *(*(&v41 + 1) + 8 * i);
          v32 = [v39 objectForKeyedSubscript:v31];
          v33 = [v40 objectForKeyedSubscript:v31];
          v28 |= [(SBSASecureFlipBookElementPreferencesProvider *)selfCopy _isTransitionSecureFromState:v32 toState:v33 forComponent:v31 indefinitely:1 givenMap:v27];
        }

        v25 = [allKeys countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v25);

      contextCopy = v37;
      toCopy = v38;
      delay = delayCopy;
      v12 = v36;
      componentToSecureTransitionMapping = v27;
      self = selfCopy;
      if (v28)
      {
        v15 = 1;
LABEL_43:

        goto LABEL_12;
      }
    }

    else
    {
    }

    if (self->_secureStateStatus == 2)
    {
      if (delay)
      {
        *delay = 1.1;
      }

      v34 = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v46 = 0x3FF199999999999ALL;
        _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "Transition not allowed. Transition would result in insecure state before MOT is satisfied (MOT timer pending), deferring transition with retry interval %f", buf, 0xCu);
      }

      v15 = 0;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_43;
  }

  componentToSecureTransitionMapping = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
  if (os_log_type_enabled(componentToSecureTransitionMapping, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v14 = "Transition not allowed. Existing secure element transition in progress, deferring transition";
    goto LABEL_10;
  }

LABEL_11:
  v15 = 0;
LABEL_12:

LABEL_21:
  return v15;
}

- (BOOL)_isTransitionSecureFromState:(id)state toState:(id)toState forComponent:(id)component indefinitely:(BOOL)indefinitely givenMap:(id)map
{
  indefinitelyCopy = indefinitely;
  componentCopy = component;
  mapCopy = map;
  v13 = MEMORY[0x277CCACA8];
  toStateCopy = toState;
  state = [v13 stringWithFormat:@"presented.%@", state];
  toStateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"presented.%@", toStateCopy];

  v17 = [mapCopy objectForKeyedSubscript:componentCopy];
  v18 = [v17 objectForKeyedSubscript:state];

  v19 = [v18 containsObject:toStateCopy];
  if (v19)
  {
    v20 = !indefinitelyCopy;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v21 = [mapCopy objectForKeyedSubscript:componentCopy];
    v22 = [v21 objectForKeyedSubscript:toStateCopy];

    LOBYTE(v19) = [v22 containsObject:toStateCopy];
  }

  return v19;
}

- (BOOL)_isTimerExpiredWithIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  elapsedTimerDescriptions = [context elapsedTimerDescriptions];
  if ([elapsedTimerDescriptions count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__SBSASecureFlipBookElementPreferencesProvider__isTimerExpiredWithIdentifier_context___block_invoke;
    v9[3] = &unk_2783B2950;
    v10 = identifierCopy;
    v7 = [elapsedTimerDescriptions indexOfObjectPassingTest:v9] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __86__SBSASecureFlipBookElementPreferencesProvider__isTimerExpiredWithIdentifier_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 timerDescriptionIdentifier];
  v3 = BSEqualObjects();

  return v3;
}

- (id)_startTimerForDuration:(double)duration preferencesMutator:(id)mutator
{
  mutatorCopy = mutator;
  v6 = [[SBSATimerDescription alloc] initWithTimeInterval:duration];
  timerDescriptionIdentifier = [(SBSATimerDescription *)v6 timerDescriptionIdentifier];
  timerDescriptions = [mutatorCopy timerDescriptions];
  if (timerDescriptions)
  {
    timerDescriptions2 = [mutatorCopy timerDescriptions];
    v10 = [timerDescriptions2 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  [v10 addObject:v6];
  [mutatorCopy setTimerDescriptions:v10];

  return timerDescriptionIdentifier;
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSASecureFlipBookElementPreferencesProvider.m" lineNumber:71 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

- (void)_updateSecureStateStatusWithRequestedTransitionToSecureElementContext:(uint64_t)a3 renderingContext:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSASecureFlipBookElementPreferencesProvider.m" lineNumber:a3 description:@"Can't transition to insecure states while pending MOT"];
}

@end