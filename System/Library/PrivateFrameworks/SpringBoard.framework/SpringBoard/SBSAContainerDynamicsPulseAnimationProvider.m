@interface SBSAContainerDynamicsPulseAnimationProvider
- (BOOL)_isTimerExpiredWithIdentifier:(id)a3 context:(id)a4;
- (SBSAContainerDynamicsPulseAnimationProvider)initWithElementIdentity:(id)a3 pulseStyle:(int64_t)a4;
- (id)_pulseSettings;
- (id)_startTimerForDuration:(double)a3 preferencesMutator:(id)a4;
- (id)preferencesFromContext:(id)a3;
- (void)_checkContextForCompletedContractionAnimationMilestone:(id)a3;
- (void)_pulseContractWithPreferencesMutator:(id)a3 context:(id)a4;
- (void)_pulseExpandWithPreferencesMutator:(id)a3 context:(id)a4;
- (void)_pulseWaitingToExpandWithPreferencesMutator:(id)a3 context:(id)a4;
- (void)_updatePreferencesContainerWithInterfaceElementIdentifier:(id)a3 toScale:(double)a4 settings:(id)a5 preferencesMutator:(id)a6 context:(id)a7;
- (void)didRequestAdditionalPulse:(id)a3;
@end

@implementation SBSAContainerDynamicsPulseAnimationProvider

- (SBSAContainerDynamicsPulseAnimationProvider)initWithElementIdentity:(id)a3 pulseStyle:(int64_t)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = SBSAContainerDynamicsPulseAnimationProvider;
  v7 = [(SBSABasePreferencesProvider *)&v17 initWithParentProvider:0];
  if (v7)
  {
    v8 = [v6 clientIdentifier];
    if (v8)
    {
      v9 = v8;
      v10 = [v6 elementIdentifier];

      if (v10)
      {
        v11 = [SBSAElementIdentification alloc];
        v12 = [v6 clientIdentifier];
        v13 = [v6 elementIdentifier];
        v14 = [(SBSAElementIdentification *)v11 initWithClientIdentifier:v12 elementIdentifier:v13];
        elementIdentity = v7->_elementIdentity;
        v7->_elementIdentity = v14;
      }
    }

    v7->_pulseStyle = a4;
  }

  return v7;
}

- (id)preferencesFromContext:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  phase = self->_phase;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__36;
  v39 = __Block_byref_object_dispose__36;
  v40 = 0;
  v7 = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = objc_opt_self();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    [(SBSAContainerDynamicsPulseAnimationProvider *)v9 preferencesFromContext:a2, self];
LABEL_9:
    v11 = 0;
  }

  v12 = v36[5];
  v36[5] = v11;

  v13 = [v36[5] preferences];
  v14 = objc_opt_class();
  v15 = v13;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = v36[5];
  v34.receiver = self;
  v34.super_class = SBSAContainerDynamicsPulseAnimationProvider;
  v19 = [(SBSABasePreferencesProvider *)&v34 preferencesFromContext:v18];
  v20 = objc_opt_class();
  v21 = v19;
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

  [(SBSAContainerDynamicsPulseAnimationProvider *)self _checkContextForCompletedContractionAnimationMilestone:v36[5]];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __70__SBSAContainerDynamicsPulseAnimationProvider_preferencesFromContext___block_invoke;
  v33[3] = &unk_2783B01E8;
  v33[4] = self;
  v33[5] = &v35;
  v33[6] = a2;
  v24 = [v23 copyWithBlock:v33];

  if (phase != self->_phase)
  {
    v25 = SBLogSystemAperturePreferencesStackDynamicsAnimations();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v29 = [v36[5] queryIteration];
      if ((phase - 1) > 3)
      {
        v30 = @"Idle";
      }

      else
      {
        v30 = off_2783B2970[phase - 1];
      }

      v31 = self->_phase - 1;
      if (v31 > 3)
      {
        v32 = @"Idle";
      }

      else
      {
        v32 = off_2783B2970[v31];
      }

      *buf = 134349570;
      v42 = v29;
      v43 = 2112;
      v44 = v30;
      v45 = 2112;
      v46 = v32;
      _os_log_debug_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEBUG, "[%{public}lu] Pulse phase changed from: %@ to: %@", buf, 0x20u);
    }
  }

  v26 = [v36[5] copyByUpdatingPreferences:v24];
  v27 = v36[5];
  v36[5] = v26;

  if (self->_phase == 4)
  {
    [(SBSABasePreferencesProvider *)self removeFromParentProvider];
  }

  _Block_object_dispose(&v35, 8);

  return v24;
}

void __70__SBSAContainerDynamicsPulseAnimationProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v10;
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

    v3 = v10;
    if (!v7)
    {
      __70__SBSAContainerDynamicsPulseAnimationProvider_preferencesFromContext___block_invoke_cold_1(a1);
      v3 = v10;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  v9 = v8[4];
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8[4] = 1;
      v8 = *(a1 + 32);
    }

    [v8 _pulseWaitingToExpandWithPreferencesMutator:v7 context:*(*(*(a1 + 40) + 8) + 40)];
    goto LABEL_20;
  }

  if (v9 == 2)
  {
    [v8 _pulseExpandWithPreferencesMutator:v7 context:*(*(*(a1 + 40) + 8) + 40)];
  }

  else if (v9 == 3)
  {
    [v8 _pulseContractWithPreferencesMutator:v7 context:*(*(*(a1 + 40) + 8) + 40)];
  }

LABEL_20:
}

- (void)didRequestAdditionalPulse:(id)a3
{
  v17 = a3;
  phase = self->_phase;
  if (phase == 1)
  {
    v5 = &OBJC_IVAR___SBSAContainerDynamicsPulseAnimationProvider__waitingToExpandTimerIdentifier;
    goto LABEL_5;
  }

  if (phase == 2)
  {
    v5 = &OBJC_IVAR___SBSAContainerDynamicsPulseAnimationProvider__expandingTimerIdentifier;
LABEL_5:
    v6 = *v5;
    v7 = *(&self->super.super.isa + v6);
    *(&self->super.super.isa + v6) = 0;
  }

  self->_phase = 0;
  v8 = [v17 participantIdentifier];
  v9 = [v8 clientIdentifier];
  if (v9 && (v10 = v9, [v8 elementIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [SBSAElementIdentification alloc];
    v13 = [v8 clientIdentifier];
    v14 = [v8 elementIdentifier];
    v15 = [(SBSAElementIdentification *)v12 initWithClientIdentifier:v13 elementIdentifier:v14];
    elementIdentity = self->_elementIdentity;
    self->_elementIdentity = v15;
  }

  else
  {
    v13 = self->_elementIdentity;
    self->_elementIdentity = 0;
  }

  self->_pulseStyle = [v17 pulseStyle];
}

- (id)_pulseSettings
{
  v3 = [objc_opt_class() settings];
  v4 = v3;
  pulseStyle = self->_pulseStyle;
  if (pulseStyle)
  {
    if (pulseStyle != 1)
    {
      goto LABEL_6;
    }

    v6 = [v3 pulseIndicatorSettings];
  }

  else
  {
    v6 = [v3 pulseNoActionSettings];
  }

  self = v6;
LABEL_6:

  return self;
}

- (void)_pulseWaitingToExpandWithPreferencesMutator:(id)a3 context:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([(SBSAContainerDynamicsPulseAnimationProvider *)self _isTimerExpiredWithIdentifier:self->_expandingTimerIdentifier context:v6])
  {
    self->_phase = 2;
    [(SBSAContainerDynamicsPulseAnimationProvider *)self _pulseExpandWithPreferencesMutator:v10 context:v6];
  }

  else if (!self->_expandingTimerIdentifier)
  {
    v7 = [(SBSAContainerDynamicsPulseAnimationProvider *)self _pulseSettings];
    [v7 expandDelay];
    v8 = [(SBSAContainerDynamicsPulseAnimationProvider *)self _startTimerForDuration:v10 preferencesMutator:?];
    expandingTimerIdentifier = self->_expandingTimerIdentifier;
    self->_expandingTimerIdentifier = v8;
  }
}

- (void)_pulseExpandWithPreferencesMutator:(id)a3 context:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(SBSAContainerDynamicsPulseAnimationProvider *)self _isTimerExpiredWithIdentifier:self->_expandingTimerIdentifier context:v7])
  {
    self->_phase = 3;
    [(SBSAContainerDynamicsPulseAnimationProvider *)self _pulseContractWithPreferencesMutator:v6 context:v7];
  }

  else
  {
    if (!self->_expandingTimerIdentifier)
    {
      v8 = [(SBSAContainerDynamicsPulseAnimationProvider *)self _pulseSettings];
      [v8 expandDuration];
      v9 = [(SBSAContainerDynamicsPulseAnimationProvider *)self _startTimerForDuration:v6 preferencesMutator:?];
      expandingTimerIdentifier = self->_expandingTimerIdentifier;
      self->_expandingTimerIdentifier = v9;
    }

    v11 = [v6 containerViewDescriptions];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __90__SBSAContainerDynamicsPulseAnimationProvider__pulseExpandWithPreferencesMutator_context___block_invoke;
    v22[3] = &unk_2783B0210;
    v22[4] = self;
    v12 = [v11 bs_firstObjectPassingTest:v22];

    v13 = [v12 interfaceElementIdentifier];
    if (v13)
    {
      v14 = [(SBSAContainerDynamicsPulseAnimationProvider *)self _pulseSettings];
      [v14 expandScale];
      v16 = v15;
      v17 = [(SBSAContainerDynamicsPulseAnimationProvider *)self _pulseSettings];
      v18 = [v17 expandBehaviorSettings];
      [(SBSAContainerDynamicsPulseAnimationProvider *)self _updatePreferencesContainerWithInterfaceElementIdentifier:v13 toScale:v18 settings:v6 preferencesMutator:v7 context:v16];

      objc_storeWeak(&self->_expandedInterfaceElementIdentifier, v13);
    }

    else
    {
      self->_phase = 4;
      v19 = SBLogSystemAperturePreferencesStackDynamicsAnimations();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v7 queryIteration];
        elementIdentity = self->_elementIdentity;
        *buf = 134349314;
        v24 = v20;
        v25 = 2112;
        v26 = elementIdentity;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}lu] [Pulse] Element requested for pulse not found. Ignoring pulse request for: '%@'", buf, 0x16u);
      }
    }
  }
}

uint64_t __90__SBSAContainerDynamicsPulseAnimationProvider__pulseExpandWithPreferencesMutator_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 associatedSystemApertureElementIdentity];
  v3 = SAElementIdentityEqualToIdentity();

  return v3;
}

- (void)_pulseContractWithPreferencesMutator:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_expandedInterfaceElementIdentifier);
  if (!WeakRetained)
  {
    self->_phase = 4;
    contractionCompletionMilestonePropertyIdentity = self->_contractionCompletionMilestonePropertyIdentity;
    self->_contractionCompletionMilestonePropertyIdentity = 0;

    v13 = SBLogSystemAperturePreferencesStackDynamicsAnimations();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SBSAContainerDynamicsPulseAnimationProvider _pulseContractWithPreferencesMutator:v7 context:?];
    }

    goto LABEL_6;
  }

  v9 = [(SBSAContainerDynamicsPulseAnimationProvider *)self _pulseSettings];
  v10 = [v9 contractBehaviorSettings];
  [(SBSAContainerDynamicsPulseAnimationProvider *)self _updatePreferencesContainerWithInterfaceElementIdentifier:WeakRetained toScale:v10 settings:v6 preferencesMutator:v7 context:1.0];

  if (!self->_contractionCompletionMilestonePropertyIdentity)
  {
    v11 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:WeakRetained andProperty:@"bounds"];
    v12 = self->_contractionCompletionMilestonePropertyIdentity;
    self->_contractionCompletionMilestonePropertyIdentity = v11;

    v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{0x28336F620, 0}];
    [v6 addMilestones:v13 forPropertyIdentity:self->_contractionCompletionMilestonePropertyIdentity];
LABEL_6:
  }

  objc_storeWeak(&self->_expandedInterfaceElementIdentifier, 0);
}

- (void)_checkContextForCompletedContractionAnimationMilestone:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_phase == 3)
  {
    if (!self->_contractionCompletionMilestonePropertyIdentity)
    {
      [(SBSAContainerDynamicsPulseAnimationProvider *)a2 _checkContextForCompletedContractionAnimationMilestone:?];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = v5;
    v6 = [v5 animatedTransitionResults];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 associatedInterfaceElementPropertyIdentity];
          v13 = BSEqualObjects();

          if (v13 && [v11 isTransitionEndTargeted])
          {
            self->_phase = 4;
            contractionCompletionMilestonePropertyIdentity = self->_contractionCompletionMilestonePropertyIdentity;
            self->_contractionCompletionMilestonePropertyIdentity = 0;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v5 = v15;
  }
}

- (BOOL)_isTimerExpiredWithIdentifier:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = [a4 elapsedTimerDescriptions];
  if ([v7 count])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__SBSAContainerDynamicsPulseAnimationProvider__isTimerExpiredWithIdentifier_context___block_invoke;
    v12[3] = &unk_2783B2950;
    v13 = v6;
    v8 = [v7 indexOfObjectPassingTest:v12];
    v9 = v8 != 0x7FFFFFFFFFFFFFFFLL;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      expandingTimerIdentifier = self->_expandingTimerIdentifier;
      self->_expandingTimerIdentifier = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __85__SBSAContainerDynamicsPulseAnimationProvider__isTimerExpiredWithIdentifier_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 timerDescriptionIdentifier];
  v3 = BSEqualObjects();

  return v3;
}

- (id)_startTimerForDuration:(double)a3 preferencesMutator:(id)a4
{
  v5 = a4;
  v6 = [[SBSATimerDescription alloc] initWithTimeInterval:a3];
  v7 = [(SBSATimerDescription *)v6 timerDescriptionIdentifier];
  v8 = [v5 timerDescriptions];
  if (v8)
  {
    v9 = [v5 timerDescriptions];
    v10 = [v9 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  [v10 addObject:v6];
  [v5 setTimerDescriptions:v10];

  return v7;
}

- (void)_updatePreferencesContainerWithInterfaceElementIdentifier:(id)a3 toScale:(double)a4 settings:(id)a5 preferencesMutator:(id)a6 context:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v15 containerViewDescriptions];
  v18 = [v17 mutableCopy];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __149__SBSAContainerDynamicsPulseAnimationProvider__updatePreferencesContainerWithInterfaceElementIdentifier_toScale_settings_preferencesMutator_context___block_invoke;
  v45[3] = &unk_2783B0210;
  v19 = v13;
  v46 = v19;
  v20 = [v18 bs_firstObjectPassingTest:v45];
  v21 = v20;
  if (v20)
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __149__SBSAContainerDynamicsPulseAnimationProvider__updatePreferencesContainerWithInterfaceElementIdentifier_toScale_settings_preferencesMutator_context___block_invoke_2;
    v40[3] = &unk_2783B0690;
    v43 = a2;
    v40[4] = self;
    v22 = v20;
    v41 = v22;
    v44 = a4;
    v42 = v16;
    v38 = [v22 copyWithBlock:v40];
    [v18 replaceObjectAtIndex:0 withObject:v38];
    [v15 setContainerViewDescriptions:v18];
    v23 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v14];
    v24 = [SBSAInterfaceElementPropertyIdentity alloc];
    [v22 interfaceElementIdentifier];
    v25 = v39 = v14;
    v26 = [(SBSAInterfaceElementPropertyIdentity *)v24 initWithAssociatedInterfaceElementIdentifier:v25 andProperty:@"bounds"];

    [v15 setAnimatedTransitionDescription:v23 forProperty:v26 withMilestones:0];
    v27 = [SBSAInterfaceElementPropertyIdentity alloc];
    [v22 interfaceElementIdentifier];
    v29 = v28 = v16;
    v30 = [(SBSAInterfaceElementPropertyIdentity *)v27 initWithAssociatedInterfaceElementIdentifier:v29 andProperty:@"contentScale"];
    [v15 associateAnimatedTransitionDescriptionOfProperty:v26 withProperty:v30 withMilestones:0];

    v31 = [SBSAInterfaceElementPropertyIdentity alloc];
    v32 = [v22 interfaceElementIdentifier];
    v33 = [(SBSAInterfaceElementPropertyIdentity *)v31 initWithAssociatedInterfaceElementIdentifier:v32 andProperty:@"contentBounds"];
    [v15 associateAnimatedTransitionDescriptionOfProperty:v26 withProperty:v33 withMilestones:0];

    v34 = [SBSAInterfaceElementPropertyIdentity alloc];
    v35 = [v22 interfaceElementIdentifier];
    v36 = [(SBSAInterfaceElementPropertyIdentity *)v34 initWithAssociatedInterfaceElementIdentifier:v35 andProperty:@"contentCenter"];
    [v15 associateAnimatedTransitionDescriptionOfProperty:v26 withProperty:v36 withMilestones:0];

    v14 = v39;
    v16 = v28;
  }

  else
  {
    self->_phase = 4;
    v37 = SBLogSystemAperturePreferencesStackDynamicsAnimations();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [SBSAContainerDynamicsPulseAnimationProvider _updatePreferencesContainerWithInterfaceElementIdentifier:v16 toScale:? settings:? preferencesMutator:? context:?];
    }
  }
}

uint64_t __149__SBSAContainerDynamicsPulseAnimationProvider__updatePreferencesContainerWithInterfaceElementIdentifier_toScale_settings_preferencesMutator_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 interfaceElementIdentifier];
  v3 = BSEqualObjects();

  return v3;
}

void __149__SBSAContainerDynamicsPulseAnimationProvider__updatePreferencesContainerWithInterfaceElementIdentifier_toScale_settings_preferencesMutator_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
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

    if (!v7)
    {
      __149__SBSAContainerDynamicsPulseAnimationProvider__updatePreferencesContainerWithInterfaceElementIdentifier_toScale_settings_preferencesMutator_context___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = 0.0;
  v19 = 0.0;
  [*(a1 + 40) bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [*(a1 + 40) center];
  SBSAScaledAndClippedFrameByScalingDimensions(&v18, *(a1 + 48), v9, v11, v13, v15, v16, v17, *(a1 + 64), *(a1 + 64));
  BSRectWithSize();
  [v7 setBounds:?];
  [v7 setContentScale:{v18, v19}];
  [*(a1 + 40) bounds];
  [v7 setContentBounds:?];
  UIRectGetCenter();
  [v7 setContentCenter:?];
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 handleFailureInMethod:a2 object:a3 file:@"SBSAContainerDynamicsPulseAnimationProvider.m" lineNumber:73 description:{@"Unexpected class – expected '%@', got '%@'", v6, v8}];
}

void __70__SBSAContainerDynamicsPulseAnimationProvider_preferencesFromContext___block_invoke_cold_1(uint64_t a1)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v7 handleFailureInMethod:v2 object:v3 file:@"SBSAContainerDynamicsPulseAnimationProvider.m" lineNumber:78 description:{@"Unexpected class – expected '%@', got '%@'", v4, v6}];
}

- (void)_checkContextForCompletedContractionAnimationMilestone:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSAContainerDynamicsPulseAnimationProvider.m" lineNumber:205 description:{@"If we are in the contract phase, we should be tracking the contraction milestone"}];
}

void __149__SBSAContainerDynamicsPulseAnimationProvider__updatePreferencesContainerWithInterfaceElementIdentifier_toScale_settings_preferencesMutator_context___block_invoke_2_cold_1(uint64_t a1)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v7 handleFailureInMethod:v2 object:v3 file:@"SBSAContainerDynamicsPulseAnimationProvider.m" lineNumber:253 description:{@"Unexpected class – expected '%@', got '%@'", v4, v6}];
}

@end