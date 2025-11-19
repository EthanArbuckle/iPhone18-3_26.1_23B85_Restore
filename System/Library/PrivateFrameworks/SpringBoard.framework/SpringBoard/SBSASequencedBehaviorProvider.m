@interface SBSASequencedBehaviorProvider
- (BOOL)_isTimerExpired:(id)a3 duration:(double *)a4;
- (SBSASequencedBehaviorProvider)initWithParticipantIdentifier:(id)a3;
- (id)nameForPhase:(int64_t)a3;
- (id)preferencesFromContext:(id)a3;
- (void)_setActivePhase:(int64_t)a3 context:(id)a4 reason:(id)a5;
- (void)_startTimerIfNecessary:(id)a3 withInterval:(double)a4;
@end

@implementation SBSASequencedBehaviorProvider

- (SBSASequencedBehaviorProvider)initWithParticipantIdentifier:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBSASequencedBehaviorProvider;
  v5 = [(SBSABasePreferencesProvider *)&v13 initWithParentProvider:0];
  if (v5)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v6 = [SBSAElementIdentification alloc];
      participatingInterfaceElementIdentifier = [v4 clientIdentifier];
      v8 = [v4 elementIdentifier];
      v9 = [(SBSAElementIdentification *)v6 initWithClientIdentifier:participatingInterfaceElementIdentifier elementIdentifier:v8];
      participatingElementIdentification = v5->_participatingElementIdentification;
      v5->_participatingElementIdentification = v9;

LABEL_7:
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v4 copy];
      participatingInterfaceElementIdentifier = v5->_participatingInterfaceElementIdentifier;
      v5->_participatingInterfaceElementIdentifier = v11;
      goto LABEL_7;
    }
  }

LABEL_8:

  return v5;
}

- (id)preferencesFromContext:(id)a3
{
  v119 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (!v8)
    {
      [SBSASequencedBehaviorProvider preferencesFromContext:];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 preferences];
  if (v9)
  {
    v10 = objc_opt_self();
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

    if (!v13)
    {
      [SBSASequencedBehaviorProvider preferencesFromContext:];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [v8 elementContexts];
  v103 = 0;
  v83 = v14;
  if (!self->_activePhase && ![(SBSASequencedBehaviorProvider *)self canProceedWithContext:v8 shouldRetry:&v103])
  {
LABEL_45:
    [(SBSASequencedBehaviorProvider *)self _setActivePhase:0 context:v8 reason:&__block_literal_global_45_0];
LABEL_46:
    v29 = 1;
    goto LABEL_76;
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v82 = v13;
  v15 = [v13 gestureDescriptions];
  v16 = [v15 countByEnumeratingWithState:&v99 objects:v118 count:16];
  if (v16)
  {
    v17 = *v100;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v100 != v17)
        {
          objc_enumerationMutation(v15);
        }

        if ([*(*(&v99 + 1) + 8 * i) gestureRecognizerState] < 0)
        {
          LODWORD(v16) = 1;
          goto LABEL_31;
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v99 objects:v118 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:

  elementContexts = self->_elementContexts;
  if (elementContexts)
  {
    v20 = v4;
    v21 = SBSAAreElementLayoutsEqualToLayouts(elementContexts, v14);
    activePhase = self->_activePhase;
    v23 = activePhase == [(SBSASequencedBehaviorProvider *)self finalPhase];
    if (v21)
    {
      v24 = 0;
    }

    else
    {
      v26 = [v14 copy];
      v24 = ![(SBSASequencedBehaviorProvider *)self canPersistAcrossLayoutStateChangesToNewElementContexts:v26];
    }
  }

  else
  {
    v20 = v4;
    v25 = self->_activePhase;
    v24 = 0;
    v23 = v25 == [(SBSASequencedBehaviorProvider *)self finalPhase];
  }

  v13 = v82;
  if (((v16 | v24) & 1) != 0 || v23)
  {
    v28 = SBLogSystemAperturePreferencesStackSequencedBehaviors();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v77 = NSStringFromBOOL();
      v78 = NSStringFromBOOL();
      v79 = NSStringFromBOOL();
      *buf = 138413058;
      *&buf[4] = self;
      v112 = 2112;
      v113 = v77;
      v114 = 2112;
      v115 = v78;
      v116 = 2112;
      v117 = v79;
      _os_log_debug_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEBUG, "Will remove behavior provider %@ (gestureActive:%@, layoutStateChange:%@, finalPhase:%@)", buf, 0x2Au);
    }

    v4 = v20;
    v14 = v83;
    if (v23)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (self->_elementContexts)
  {
    v27 = self->_activePhase;
    v4 = v20;
    if ([(SBSASequencedBehaviorProvider *)self phaseIsTimeDelayBased:v27 + 1])
    {
      *buf = 0;
      if ([(SBSASequencedBehaviorProvider *)self _isTimerExpired:v8 duration:buf])
      {
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_3;
        v93[3] = &__block_descriptor_40_e15___NSString_8__0l;
        v93[4] = *buf;
        [(SBSASequencedBehaviorProvider *)self _setActivePhase:v27 + 1 context:v8 reason:v93];
      }

      goto LABEL_75;
    }

    if (self->_pendingPhaseTransitionPropertyIdentity)
    {
      [(SBSASequencedBehaviorProvider *)self milestoneForPhase:v27 + 1];
      v34 = v33;
      [&unk_28336F620 bs_CGFloatValue];
      v35 = BSFloatEqualToFloat() && [(SBSASequencedBehaviorProvider *)self milestoneForPhaseRequiresAnimationFinished:v27 + 1];
      if (v34 > 0.0)
      {
        v84 = v27;
        v85 = v8;
        v80 = v20;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v36 = [v8 animatedTransitionResults];
        v37 = [v36 countByEnumeratingWithState:&v95 objects:v110 count:16];
        if (!v37)
        {
          goto LABEL_74;
        }

        v38 = v37;
        v39 = *v96;
        while (1)
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v96 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v95 + 1) + 8 * j);
            v42 = [v41 associatedInterfaceElementPropertyIdentity];
            if (!BSEqualObjects())
            {
              goto LABEL_71;
            }

            [v41 targetedMilestone];
            if (!BSFloatApproximatelyEqualToFloat())
            {
              goto LABEL_71;
            }

            if (!v35)
            {

LABEL_70:
              v94[0] = MEMORY[0x277D85DD0];
              v94[1] = 3221225472;
              v94[2] = __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_2;
              v94[3] = &unk_2783B1D60;
              v94[4] = v41;
              v42 = MEMORY[0x223D6F7F0](v94);
              [(SBSASequencedBehaviorProvider *)self _setActivePhase:v84 + 1 context:v85 reason:v42];
              pendingPhaseTransitionPropertyIdentity = self->_pendingPhaseTransitionPropertyIdentity;
              self->_pendingPhaseTransitionPropertyIdentity = 0;

LABEL_71:
              continue;
            }

            v43 = [v41 finished];

            if (v43)
            {
              goto LABEL_70;
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v95 objects:v110 count:16];
          if (!v38)
          {
LABEL_74:

            v4 = v80;
            v8 = v85;
            v13 = v82;
            v14 = v83;
            break;
          }
        }
      }
    }
  }

  else
  {
    if (v14)
    {
      v30 = v14;
    }

    else
    {
      v30 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&self->_elementContexts, v30);
    v31 = [(SBSASequencedBehaviorProvider *)self finalPhase];
    if (v31 >= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v31;
    }

    [(SBSASequencedBehaviorProvider *)self _setActivePhase:v32 context:v8 reason:&__block_literal_global_282];
    v4 = v20;
  }

LABEL_75:
  v45 = [(SBSASequencedBehaviorProvider *)self updatedContextFromContext:v8];

  v29 = 0;
  v8 = v45;
LABEL_76:
  v92.receiver = self;
  v92.super_class = SBSASequencedBehaviorProvider;
  v46 = [(SBSABasePreferencesProvider *)&v92 preferencesFromContext:v8];
  if (v46)
  {
    v47 = objc_opt_self();
    v48 = v46;
    if (v47)
    {
      if (objc_opt_isKindOfClass())
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;

    v14 = v83;
    if (!v50)
    {
      [SBSASequencedBehaviorProvider preferencesFromContext:];
    }
  }

  else
  {
    v50 = 0;
  }

  if (v29)
  {
    v51 = v8;
    v52 = [(SBSASequencedBehaviorProvider *)self updatedPreferencesFromPreferences:v50 context:v8 relevantPropertyIdentity:0];

    if (v103 == 1)
    {
      v53 = [SBSAPreferencesDidChangeAction alloc];
      v104 = @"containerSequencedBehaviorProvider.retry";
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
      v55 = [(SBSAPreferencesDidChangeAction *)v53 initWithReasons:v54];
      v105 = v55;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
      v57 = [v52 copyByAddingActions:v56];

      v52 = v57;
    }

    else
    {
      [(SBSABasePreferencesProvider *)self removeFromParentProvider];
    }
  }

  else
  {
    v58 = self->_activePhase;
    v59 = [(SBSASequencedBehaviorProvider *)self phaseIsTimeDelayBased:v58 + 1];
    v60 = v58 + 1;
    if (v59)
    {
      [(SBSASequencedBehaviorProvider *)self delayForPhase:v60];
      v62 = v61;
      v51 = v8;
      v52 = [(SBSASequencedBehaviorProvider *)self updatedPreferencesFromPreferences:v50 context:v8 relevantPropertyIdentity:0];

      if (!self->_pendingTimerIdentifier)
      {
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_6;
        v86[3] = &unk_2783ACD90;
        v86[4] = self;
        v86[5] = a2;
        v86[6] = v62;
        v63 = [v52 copyWithBlock:v86];

        v64 = [SBSAPreferencesDidChangeAction alloc];
        v106 = @"containerSequencedBehaviorProvider.phaseChange";
        v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v106 count:1];
        v66 = [(SBSAPreferencesDidChangeAction *)v64 initWithReasons:v65];
        v107 = v66;
        v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
        v52 = [v63 copyByAddingActions:v67];
      }
    }

    else
    {
      [(SBSASequencedBehaviorProvider *)self milestoneForPhase:v60];
      if (v68 <= 0.0)
      {
        v51 = v8;
        v52 = v50;
      }

      else
      {
        v69 = v68;
        v91 = 0;
        v51 = v8;
        v52 = [(SBSASequencedBehaviorProvider *)self updatedPreferencesFromPreferences:v50 context:v8 relevantPropertyIdentity:&v91];
        v70 = v91;

        if (!self->_pendingPhaseTransitionPropertyIdentity)
        {
          v87[0] = MEMORY[0x277D85DD0];
          v87[1] = 3221225472;
          v87[2] = __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_5;
          v87[3] = &unk_2783AF498;
          v89 = a2;
          v87[4] = self;
          v90 = v69;
          v88 = v70;
          v71 = [v52 copyWithBlock:v87];

          v72 = [SBSAPreferencesDidChangeAction alloc];
          v108 = @"containerSequencedBehaviorProvider.phaseChange";
          v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
          v74 = [(SBSAPreferencesDidChangeAction *)v72 initWithReasons:v73];
          v109 = v74;
          v75 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
          v52 = [v71 copyByAddingActions:v75];

          v14 = v83;
        }
      }
    }

    if (self->_pendingTimerIdentifier && self->_pendingPhaseTransitionPropertyIdentity)
    {
      [SBSASequencedBehaviorProvider preferencesFromContext:];
    }
  }

  return v52;
}

id __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isTransitionEndTargeted])
  {
    v2 = [*(a1 + 32) finished];
    v3 = @"<end>";
    if (v2)
    {
      v3 = @"<end, finished>";
    }

    v4 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    [*(a1 + 32) targetedMilestone];
    v4 = [v5 stringWithFormat:@"%f", v6];
  }

  v7 = v4;
  v8 = [*(a1 + 32) associatedInterfaceElementPropertyIdentity];
  v9 = [v8 interfaceElementProperty];

  v10 = [*(a1 + 32) associatedInterfaceElementPropertyIdentity];
  v11 = [v10 associatedInterfaceElementIdentifier];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reached Milestone: (%@, %@, %@)", v7, v9, v11];

  return v12;
}

void __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_5(uint64_t a1, void *a2)
{
  v13 = a2;
  if (v13)
  {
    v3 = objc_opt_self();
    v4 = v13;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_5_cold_1(a1);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v9 = [v7 initWithObjects:{v8, 0}];
  [v6 addMilestones:v9 forPropertyIdentity:*(a1 + 40)];

  v10 = [*(a1 + 40) copy];
  v11 = *(a1 + 32);
  v12 = *(v11 + 48);
  *(v11 + 48) = v10;
}

void __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_6(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_6_cold_1(a1);
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) _startTimerIfNecessary:v6 withInterval:*(a1 + 48)];
}

- (void)_setActivePhase:(int64_t)a3 context:(id)a4 reason:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (self->_activePhase != a3)
  {
    v10 = SBLogSystemAperturePreferencesStackSequencedBehaviors();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v12 = [(SBSASequencedBehaviorProvider *)self nameForPhase:self->_activePhase];
      v13 = [(SBSASequencedBehaviorProvider *)self nameForPhase:a3];
      if (v9)
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = v9[2](v9);
        v16 = [v14 stringWithFormat:@" - %@", v15];
      }

      else
      {
        v16 = &stru_283094718;
      }

      v17 = SBLogSystemAperturePreferencesStackSequencedBehaviors();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134350082;
        v19 = [v8 queryIteration];
        v20 = 2112;
        v21 = self;
        v22 = 2112;
        v23 = v12;
        v24 = 2112;
        v25 = v13;
        v26 = 2112;
        v27 = v16;
        _os_log_debug_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEBUG, "[%{public}lu] %@ Phase Transition: (%@ -> %@)%@", buf, 0x34u);
      }
    }

    self->_activePhase = a3;
  }
}

- (BOOL)_isTimerExpired:(id)a3 duration:(double *)a4
{
  v6 = [a3 elapsedTimerDescriptions];
  if ([v6 count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__SBSASequencedBehaviorProvider__isTimerExpired_duration___block_invoke;
    v14[3] = &unk_2783BD9C0;
    v14[4] = self;
    v7 = [v6 indexOfObjectPassingTest:v14];
    v8 = v7 != 0x7FFFFFFFFFFFFFFFLL;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v7;
      pendingTimerIdentifier = self->_pendingTimerIdentifier;
      self->_pendingTimerIdentifier = 0;

      if (a4)
      {
        v11 = [v6 objectAtIndex:v9];
        [v11 timeInterval];
        *a4 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __58__SBSASequencedBehaviorProvider__isTimerExpired_duration___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 timerDescriptionIdentifier];
  v3 = BSEqualObjects();

  return v3;
}

- (void)_startTimerIfNecessary:(id)a3 withInterval:(double)a4
{
  v6 = a3;
  if (!self->_pendingTimerIdentifier)
  {
    v13 = v6;
    v7 = [[SBSATimerDescription alloc] initWithTimeInterval:a4];
    v8 = [(SBSATimerDescription *)v7 timerDescriptionIdentifier];
    pendingTimerIdentifier = self->_pendingTimerIdentifier;
    self->_pendingTimerIdentifier = v8;

    v10 = [v13 timerDescriptions];
    if (v10)
    {
      v11 = [v13 timerDescriptions];
      v12 = [v11 mutableCopy];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [v12 addObject:v7];
    [v13 setTimerDescriptions:v12];

    v6 = v13;
  }
}

- (id)nameForPhase:(int64_t)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a3];
  }

  else
  {
    v4 = @"Idle";
  }

  return v4;
}

- (void)preferencesFromContext:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_3();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

- (void)preferencesFromContext:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_3();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

- (void)preferencesFromContext:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  [v4 handleFailureInMethod:v1 object:v3 file:? lineNumber:? description:?];
}

- (void)preferencesFromContext:.cold.4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_5_cold_1(uint64_t a1)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v7 handleFailureInMethod:v2 object:v3 file:@"SBSASequencedBehaviorProvider.m" lineNumber:132 description:{@"Unexpected class – expected '%@', got '%@'", v4, v6}];
}

void __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_6_cold_1(uint64_t a1)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  v5 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:v3 object:v2 file:@"SBSASequencedBehaviorProvider.m" lineNumber:144 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

@end