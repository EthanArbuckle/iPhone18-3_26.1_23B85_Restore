@interface SBSAIndicatorMitosisTransitionProvider
- (BOOL)_milestoneDidReachExpectedMilestone:(double)milestone property:(id)property context:(id)context;
- (BOOL)_wantsIndicatorUnderAssociatedContainerWithPreferences:(id)preferences context:(id)context;
- (SBSAIndicatorMitosisTransitionProvider)initWithType:(unint64_t)type reversed:(BOOL)reversed;
- (double)milestoneForPhase:(unint64_t)phase;
- (id)_associatedContainerViewDescriptionFromPreferences:(id)preferences context:(id)context outIndex:(unint64_t *)index;
- (id)_mitosisPhaseSettingsForPhase:(unint64_t)phase;
- (id)_mitosisSettings;
- (id)_positionIndicatorUnderAssociatedContainerWithPreferences:(id)preferences context:(id)context;
- (id)_updateMaintainedPreferencesForActivePhaseWithContext:(id)context;
- (id)_updatedPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity;
- (id)_updatedPreferencesWithPhaseSettings:(id)settings preferences:(id)preferences context:(id)context;
- (id)debugDescription;
- (id)preferencesFromContext:(id)context;
- (void)_advancePhaseWithContext:(id)context;
@end

@implementation SBSAIndicatorMitosisTransitionProvider

- (SBSAIndicatorMitosisTransitionProvider)initWithType:(unint64_t)type reversed:(BOOL)reversed
{
  v7.receiver = self;
  v7.super_class = SBSAIndicatorMitosisTransitionProvider;
  result = [(SBSABasePreferencesProvider *)&v7 initWithParentProvider:0];
  if (result)
  {
    result->_type = type;
    result->_reversed = reversed;
    result->_activePhase = 0;
  }

  return result;
}

- (id)preferencesFromContext:(id)context
{
  v71 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    v6 = objc_opt_self();
    v7 = contextCopy;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (!v9)
    {
      [SBSAIndicatorMitosisTransitionProvider preferencesFromContext:];
    }
  }

  else
  {
    v9 = 0;
  }

  preferences = [v9 preferences];
  v11 = [(SBSAIndicatorMitosisTransitionProvider *)self _mitosisPhaseSettingsForPhase:self->_activePhase];
  [(SBSAIndicatorMitosisTransitionProvider *)self _advancePhaseWithContext:v9];
  if (self->_activePhase == 4)
  {
    v59.receiver = self;
    v59.super_class = SBSAIndicatorMitosisTransitionProvider;
    v12 = [(SBSABasePreferencesProvider *)&v59 preferencesFromContext:v9];
    if (v12)
    {
      v13 = objc_opt_self();
      v14 = v12;
      if (v13)
      {
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v21 = v15;

      if (!v21)
      {
        [SBSAIndicatorMitosisTransitionProvider preferencesFromContext:];
      }
    }

    else
    {
      v21 = 0;
    }

    [(SBSABasePreferencesProvider *)self removeFromParentProvider];
  }

  else
  {
    v51 = a2;
    v16 = [(SBSAIndicatorMitosisTransitionProvider *)self _updateMaintainedPreferencesForActivePhaseWithContext:v9];

    v58.receiver = self;
    v58.super_class = SBSAIndicatorMitosisTransitionProvider;
    v17 = [(SBSABasePreferencesProvider *)&v58 preferencesFromContext:v16];
    if (v17)
    {
      v18 = objc_opt_self();
      v19 = v17;
      if (v18)
      {
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      if (!v21)
      {
        [SBSAIndicatorMitosisTransitionProvider preferencesFromContext:];
      }
    }

    else
    {
      v21 = 0;
    }

    v9 = [v16 copyByUpdatingPreferences:v21];
    if (v11)
    {
      v57 = 0;
      v22 = [(SBSAIndicatorMitosisTransitionProvider *)self _updatedPreferencesFromPreferences:v21 context:v9 relevantPropertyIdentity:&v57];
      v23 = v57;
      v24 = v57;

      if (v24)
      {
        [(SBSAIndicatorMitosisTransitionProvider *)self milestoneForPhase:self->_activePhase];
        v26 = v25;
        if (v25 <= 0.0)
        {
          [SBSAIndicatorMitosisTransitionProvider preferencesFromContext:];
        }

        if (self->_pendingPhaseTransitionPropertyIdentity)
        {
          if ((BSEqualObjects() & 1) == 0)
          {
            v27 = SBLogSystemAperturePreferencesStackIndicator();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              queryIteration = [v9 queryIteration];
              activePhase = self->_activePhase;
              if (activePhase > 4)
              {
                v48 = 0;
              }

              else
              {
                v48 = off_2783AF558[activePhase];
              }

              v39 = [(SBSAInterfaceElementPropertyIdentity *)self->_pendingPhaseTransitionPropertyIdentity description];
              v52 = v39;
              v40 = @"nil";
              if (v39)
              {
                v40 = v39;
              }

              v47 = v40;
              uUIDString = [(NSUUID *)self->_pendingPhaseTransitionTimerIdentity UUIDString];
              v49 = uUIDString;
              v42 = @"nil";
              if (uUIDString)
              {
                v42 = uUIDString;
              }

              v45 = v42;
              v43 = [v24 description];
              v46 = v43;
              *buf = 134350082;
              v44 = @"nil";
              if (v43)
              {
                v44 = v43;
              }

              v62 = queryIteration;
              v63 = 2112;
              v64 = v48;
              v65 = 2112;
              v66 = v47;
              v67 = 2112;
              v68 = v45;
              v69 = 2112;
              v70 = v44;
              _os_log_error_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_ERROR, "[%{public}lu] The associated phase transition identity changed, indicating something is very wrong in the stack and we should skip this phase: %@; Property ID: %@; timer ID: %@; new property ID: %@", buf, 0x34u);
            }

            pendingPhaseTransitionPropertyIdentity = self->_pendingPhaseTransitionPropertyIdentity;
            self->_pendingPhaseTransitionPropertyIdentity = 0;

            pendingPhaseTransitionTimerIdentity = self->_pendingPhaseTransitionTimerIdentity;
            self->_pendingPhaseTransitionTimerIdentity = 0;

            v30 = self->_activePhase + 1;
            self->_activePhase = v30;
            if (v30 == 4)
            {
              [(SBSABasePreferencesProvider *)self removeFromParentProvider];
            }

            else
            {
              v34 = [[SBSAPreferencesDidChangeAction alloc] initWithReasons:&unk_28336DF08];
              v60 = v34;
              v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
              v36 = [v22 copyByAddingActions:v35];

              v22 = v36;
            }
          }
        }

        else
        {
          if (self->_pendingPhaseTransitionTimerIdentity)
          {
            v31 = SBLogSystemAperturePreferencesStackIndicator();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [(SBSAIndicatorMitosisTransitionProvider *)v9 preferencesFromContext:?];
            }

            v32 = self->_pendingPhaseTransitionTimerIdentity;
            self->_pendingPhaseTransitionTimerIdentity = 0;
          }

          objc_storeStrong(&self->_pendingPhaseTransitionPropertyIdentity, v23);
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __65__SBSAIndicatorMitosisTransitionProvider_preferencesFromContext___block_invoke;
          v53[3] = &unk_2783AF498;
          v55 = v51;
          v53[4] = self;
          v56 = v26;
          v54 = v24;
          v33 = [v22 copyWithBlock:v53];

          v22 = v33;
        }
      }

      v21 = v22;
    }
  }

  return v21;
}

void __65__SBSAIndicatorMitosisTransitionProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  if (v20)
  {
    v3 = objc_opt_self();
    v4 = v20;
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
      __65__SBSAIndicatorMitosisTransitionProvider_preferencesFromContext___block_invoke_cold_1();
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
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [[SBSATimerDescription alloc] initWithTimeInterval:2.0];
  v14 = [(SBSATimerDescription *)v13 timerDescriptionIdentifier];
  v15 = *(a1 + 32);
  v16 = *(v15 + 48);
  *(v15 + 48) = v14;

  v17 = [v6 timerDescriptions];
  v18 = v17;
  if (!v17)
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  v19 = [v17 arrayByAddingObject:v13];
  [v6 setTimerDescriptions:v19];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  type = self->_type;
  v6 = @"Compact";
  if (type == 1)
  {
    v6 = @"BabyJindo";
  }

  if (type == 2)
  {
    v7 = @"Custom";
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  v9 = NSStringFromBOOL();
  activePhase = self->_activePhase;
  if (activePhase > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_2783AF558[activePhase];
  }

  v12 = [(SBSAInterfaceElementPropertyIdentity *)self->_pendingPhaseTransitionPropertyIdentity description];
  v13 = v12;
  v14 = @"nil";
  if (v12)
  {
    v14 = v12;
  }

  v15 = [v3 stringWithFormat:@"<%@: %p> type: %@ reversed: %@; activePhase: %@; pendingPhaseTransitionPropertyIdentity: %@", v4, self, v8, v9, v11, v14];;

  return v15;
}

- (void)_advancePhaseWithContext:(id)context
{
  v52 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  [(SBSAIndicatorMitosisTransitionProvider *)self milestoneForPhase:self->_activePhase];
  pendingPhaseTransitionPropertyIdentity = self->_pendingPhaseTransitionPropertyIdentity;
  if (pendingPhaseTransitionPropertyIdentity)
  {
    v6 = [(SBSAIndicatorMitosisTransitionProvider *)self _milestoneDidReachExpectedMilestone:pendingPhaseTransitionPropertyIdentity property:contextCopy context:?];
    v7 = v6;
    p_pendingPhaseTransitionTimerIdentity = &self->_pendingPhaseTransitionTimerIdentity;
    if (!self->_pendingPhaseTransitionTimerIdentity)
    {
      if (v6)
      {
        v9 = 0;
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else
  {
    p_pendingPhaseTransitionTimerIdentity = &self->_pendingPhaseTransitionTimerIdentity;
    if (!self->_pendingPhaseTransitionTimerIdentity)
    {
      goto LABEL_27;
    }

    v7 = 0;
  }

  elapsedTimerDescriptions = [contextCopy elapsedTimerDescriptions];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __67__SBSAIndicatorMitosisTransitionProvider__advancePhaseWithContext___block_invoke;
  v37[3] = &unk_2783AF4C0;
  v37[4] = self;
  v9 = [elapsedTimerDescriptions bs_containsObjectPassingTest:v37];

  if (v7)
  {
LABEL_8:
    v11 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      queryIteration = [contextCopy queryIteration];
      activePhase = self->_activePhase;
      if (activePhase > 4)
      {
        v32 = 0;
      }

      else
      {
        v32 = off_2783AF558[activePhase];
      }

      v14 = self->_activePhase + 1;
      log = v11;
      if (v14 > 4)
      {
        v31 = 0;
      }

      else
      {
        v31 = off_2783AF558[v14];
      }

      v15 = [(SBSAInterfaceElementPropertyIdentity *)self->_pendingPhaseTransitionPropertyIdentity description];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = @"nil";
      }

      v18 = [(SBSAInterfaceElementPropertyIdentity *)self->_pendingPhaseTransitionPropertyIdentity description];
      v19 = v18;
      *buf = 134350594;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = @"nil";
      }

      v39 = queryIteration;
      v40 = 2112;
      v41 = v32;
      v42 = 2112;
      v43 = v31;
      v44 = 1024;
      v45 = 1;
      v46 = 2112;
      v47 = v17;
      v48 = 1024;
      v49 = v9;
      v50 = 2112;
      v51 = v20;
      v11 = log;
      _os_log_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Advancing from phase %@ to %@ because: (milestone completed: %{BOOL}u - %@, timer completed: %{BOOL}u - %@)", buf, 0x40u);
    }

LABEL_26:

    ++self->_activePhase;
    v21 = self->_pendingPhaseTransitionPropertyIdentity;
    self->_pendingPhaseTransitionPropertyIdentity = 0;

    v22 = *p_pendingPhaseTransitionTimerIdentity;
    *p_pendingPhaseTransitionTimerIdentity = 0;

    goto LABEL_27;
  }

  if (v9)
  {
    v11 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      queryIteration2 = [contextCopy queryIteration];
      v13 = self->_activePhase;
      if (v13 > 4)
      {
        v33 = 0;
      }

      else
      {
        v33 = off_2783AF558[v13];
      }

      v23 = self->_activePhase + 1;
      if (v23 > 4)
      {
        v24 = 0;
      }

      else
      {
        v24 = off_2783AF558[v23];
      }

      v25 = [(SBSAInterfaceElementPropertyIdentity *)self->_pendingPhaseTransitionPropertyIdentity description];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = @"nil";
      }

      v28 = [(SBSAInterfaceElementPropertyIdentity *)self->_pendingPhaseTransitionPropertyIdentity description];
      v29 = v28;
      *buf = 134350594;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = @"nil";
      }

      v39 = queryIteration2;
      v40 = 2112;
      v41 = v33;
      v42 = 2112;
      v43 = v24;
      v44 = 1024;
      v45 = 0;
      v46 = 2112;
      v47 = v27;
      v48 = 1024;
      v49 = 1;
      v50 = 2112;
      v51 = v30;
      _os_log_error_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_ERROR, "[%{public}lu] Advancing from phase %@ to %@ because: (milestone completed: %{BOOL}u - %@, timer completed: %{BOOL}u - %@)", buf, 0x40u);
    }

    goto LABEL_26;
  }

LABEL_27:
}

uint64_t __67__SBSAIndicatorMitosisTransitionProvider__advancePhaseWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isElapsed])
  {
    v3 = [v2 timerDescriptionIdentifier];
    v4 = BSEqualObjects();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_positionIndicatorUnderAssociatedContainerWithPreferences:(id)preferences context:(id)context
{
  preferencesCopy = preferences;
  contextCopy = context;
  v9 = preferencesCopy;
  v10 = [(SBSAIndicatorMitosisTransitionProvider *)self _associatedContainerViewDescriptionFromPreferences:v9 context:contextCopy outIndex:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__SBSAIndicatorMitosisTransitionProvider__positionIndicatorUnderAssociatedContainerWithPreferences_context___block_invoke;
  v15[3] = &unk_2783AE068;
  v18 = v9;
  v19 = a2;
  v15[4] = self;
  v16 = v10;
  v17 = contextCopy;
  v11 = contextCopy;
  v12 = v10;
  v13 = [v9 copyWithBlock:v15];

  return v13;
}

void __108__SBSAIndicatorMitosisTransitionProvider__positionIndicatorUnderAssociatedContainerWithPreferences_context___block_invoke(uint64_t a1, void *a2)
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
      __108__SBSAIndicatorMitosisTransitionProvider__positionIndicatorUnderAssociatedContainerWithPreferences_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 indicatorContainerViewDescription];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__SBSAIndicatorMitosisTransitionProvider__positionIndicatorUnderAssociatedContainerWithPreferences_context___block_invoke_2;
  v15[3] = &unk_2783AE068;
  v18 = *(a1 + 64);
  v14 = *(a1 + 32);
  v9 = *(&v14 + 1);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v16 = v14;
  v17 = v12;
  v13 = [v8 copyWithBlock:v15];

  [v7 setIndicatorContainerViewDescription:v13];
}

void __108__SBSAIndicatorMitosisTransitionProvider__positionIndicatorUnderAssociatedContainerWithPreferences_context___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v22 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v22;
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

    v3 = v22;
    if (!v7)
    {
      __108__SBSAIndicatorMitosisTransitionProvider__positionIndicatorUnderAssociatedContainerWithPreferences_context___block_invoke_2_cold_1();
      v3 = v22;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[5];
  v9 = [a1[6] elementContexts];
  v10 = SBSAElementContextAssociatedWithContainerViewDescription(v8, v9, 0);

  v11 = 0;
  if ([v10 layoutMode] == 3)
  {
    v11 = [v10 systemApertureCustomLayout];
  }

  [a1[5] bounds];
  [a1[5] center];
  SBUnintegralizedRectCenteredAboutPoint();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [a1[7] maintainedPreferences];
  v21 = [v20 indicatorAppearanceStateContext];
  SBSAMicroIndicatorFrameHiddenUnderContainer(v11, v21, a1[6], v13, v15, v17, v19);

  BSRectWithSize();
  [v7 setBounds:?];
  UIRectGetCenter();
  [v7 setCenter:?];
}

- (BOOL)_wantsIndicatorUnderAssociatedContainerWithPreferences:(id)preferences context:(id)context
{
  v5 = [(SBSAIndicatorMitosisTransitionProvider *)self _mitosisSettings:preferences];
  microIndicatorTranslationTransitionBeginPhase = [v5 microIndicatorTranslationTransitionBeginPhase];
  activePhase = self->_activePhase;
  if (microIndicatorTranslationTransitionBeginPhase <= 1)
  {
    if (!microIndicatorTranslationTransitionBeginPhase)
    {
      v8 = 1;
      goto LABEL_14;
    }

    if (microIndicatorTranslationTransitionBeginPhase == 1)
    {
      v8 = activePhase != 0;
      goto LABEL_14;
    }

LABEL_8:
    v8 = 0;
    LOBYTE(reversed) = self->_reversed;
LABEL_17:
    v11 = !reversed && !v8;
    goto LABEL_18;
  }

  if (microIndicatorTranslationTransitionBeginPhase == 2)
  {
    v9 = activePhase > 1;
  }

  else
  {
    if (microIndicatorTranslationTransitionBeginPhase != 3)
    {
      goto LABEL_8;
    }

    v9 = activePhase > 2;
  }

  v8 = v9;
LABEL_14:
  reversed = self->_reversed;
  if (!reversed || !v8)
  {
    goto LABEL_17;
  }

  v11 = 1;
LABEL_18:

  return v11 & 1;
}

- (id)_updatedPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity
{
  preferencesCopy = preferences;
  contextCopy = context;
  v10 = [(SBSAIndicatorMitosisTransitionProvider *)self _mitosisPhaseSettingsForPhase:self->_activePhase];
  v11 = preferencesCopy;
  phaseEndMilestoneTargetProperty = [v10 phaseEndMilestoneTargetProperty];
  v13 = v11;
  if ([(SBSAIndicatorMitosisTransitionProvider *)self _wantsIndicatorUnderAssociatedContainerWithPreferences:v11 context:contextCopy])
  {
    v13 = [(SBSAIndicatorMitosisTransitionProvider *)self _positionIndicatorUnderAssociatedContainerWithPreferences:v11 context:contextCopy];
  }

  if (v10)
  {
    v14 = [(SBSAIndicatorMitosisTransitionProvider *)self _associatedContainerViewDescriptionFromPreferences:v11 context:contextCopy outIndex:0];
    phaseEndMilestoneTarget = [v10 phaseEndMilestoneTarget];
    if (phaseEndMilestoneTarget == 3)
    {
      indicatorElementDescription = [v11 indicatorElementDescription];
    }

    else
    {
      if (phaseEndMilestoneTarget != 2)
      {
        if (phaseEndMilestoneTarget == 1)
        {
          v34 = a2;
          v35 = phaseEndMilestoneTargetProperty;
          associatedSystemApertureElementIdentity = [v14 associatedSystemApertureElementIdentity];
          elementDescriptions = [v13 elementDescriptions];
          SBSAElementDescriptionAssociatedWithElementIdentity(associatedSystemApertureElementIdentity, elementDescriptions, 0);
          v19 = v18 = v14;

          if (v19)
          {
            v20 = v19;
            v21 = v18;

            phaseEndMilestoneTargetProperty = v35;
          }

          else
          {
            v21 = v18;
            v23 = SBLogSystemAperturePreferencesStackIndicator();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [SBSAIndicatorMitosisTransitionProvider _updatedPreferencesFromPreferences:contextCopy context:? relevantPropertyIdentity:?];
            }

            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            v25 = currentHandler;
            activePhase = self->_activePhase;
            if (activePhase > 4)
            {
              v27 = 0;
            }

            else
            {
              v27 = off_2783AF558[activePhase];
            }

            [currentHandler handleFailureInMethod:v34 object:self file:@"SBSAIndicatorMitosisTransitionProvider.m" lineNumber:178 description:{@"unexpected lost the preferred target: %@", v27}];

            phaseEndMilestoneTargetProperty = @"bounds";
            v20 = v21;
          }

          v14 = v21;
        }

        else
        {
          v20 = v14;
        }

        goto LABEL_20;
      }

      indicatorElementDescription = [v11 indicatorContainerViewDescription];
    }

    v20 = indicatorElementDescription;

LABEL_20:
    v28 = [SBSAInterfaceElementPropertyIdentity alloc];
    interfaceElementIdentifier = [v20 interfaceElementIdentifier];
    v30 = [(SBSAInterfaceElementPropertyIdentity *)v28 initWithAssociatedInterfaceElementIdentifier:interfaceElementIdentifier andProperty:phaseEndMilestoneTargetProperty];

    v31 = [(SBSAIndicatorMitosisTransitionProvider *)self _updatedPreferencesWithPhaseSettings:v10 preferences:v13 context:contextCopy];

    if (identity)
    {
      v32 = v30;
      *identity = v30;
    }

    v13 = v31;
  }

  return v13;
}

- (id)_updatedPreferencesWithPhaseSettings:(id)settings preferences:(id)preferences context:(id)context
{
  settingsCopy = settings;
  preferencesCopy = preferences;
  contextCopy = context;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __99__SBSAIndicatorMitosisTransitionProvider__updatedPreferencesWithPhaseSettings_preferences_context___block_invoke;
  v17[3] = &unk_2783AE068;
  v20 = contextCopy;
  v21 = a2;
  v17[4] = self;
  v18 = settingsCopy;
  v19 = preferencesCopy;
  v12 = contextCopy;
  v13 = preferencesCopy;
  v14 = settingsCopy;
  v15 = [v13 copyWithBlock:v17];

  return v15;
}

void __99__SBSAIndicatorMitosisTransitionProvider__updatedPreferencesWithPhaseSettings_preferences_context___block_invoke(uint64_t a1, void *a2)
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
      __99__SBSAIndicatorMitosisTransitionProvider__updatedPreferencesWithPhaseSettings_preferences_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  if (([v7 isBlobEnabled] & 1) == 0)
  {
    [*(a1 + 40) blobRadius];
    [v7 setBlobRadius:?];
    [v7 setBlobEnabled:1];
  }

  v90[0] = -1;
  v8 = [*(a1 + 32) _associatedContainerViewDescriptionFromPreferences:*(a1 + 48) context:*(a1 + 56) outIndex:v90];
  v9 = [*(a1 + 40) scale];
  [v9 sizeValue];
  v11 = v10;
  v13 = v12;

  v14 = [*(a1 + 40) contentScale];
  [v14 sizeValue];
  v16 = v15;
  v18 = v17;

  v19 = [*(a1 + 40) containerCenterOffset];
  [v19 pointValue];
  v21 = v20;
  v23 = v22;

  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __99__SBSAIndicatorMitosisTransitionProvider__updatedPreferencesWithPhaseSettings_preferences_context___block_invoke_2;
  v82[3] = &unk_2783AF4E8;
  v82[4] = *(a1 + 32);
  v84 = v16;
  v85 = v18;
  v86 = v11;
  v87 = v13;
  v88 = v21;
  v89 = v23;
  v77 = *(a1 + 56);
  v24 = v77;
  v83 = v77;
  v25 = [v8 copyWithBlock:v82];

  v26 = [v25 interfaceElementIdentifier];
  v27 = [*(a1 + 48) containerViewDescriptions];
  v28 = [v27 mutableCopy];

  [v28 replaceObjectAtIndex:v90[0] withObject:v25];
  v76 = v28;
  v29 = [v28 copy];
  [v7 setContainerViewDescriptions:v29];

  v78 = v25;
  v30 = [v25 associatedSystemApertureElementIdentity];
  v31 = off_2783A1000;
  if (v30)
  {
    v32 = [v7 elementDescriptions];
    v33 = SBSAElementDescriptionAssociatedWithElementIdentity(v30, v32, v90);

    if (v33)
    {
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __99__SBSAIndicatorMitosisTransitionProvider__updatedPreferencesWithPhaseSettings_preferences_context___block_invoke_3;
      v79[3] = &unk_2783AD750;
      v34 = *(a1 + 32);
      v35 = *(a1 + 40);
      v81 = *(a1 + 64);
      v79[4] = v34;
      v80 = v35;
      v36 = [v33 copyWithBlock:v79];

      [*(a1 + 48) elementDescriptions];
      v37 = v75 = v3;
      v38 = [v37 mutableCopy];

      [v38 replaceObjectAtIndex:v90[0] withObject:v36];
      v39 = [v38 copy];
      [v7 setElementDescriptions:v39];

      v74 = v30;
      v40 = objc_opt_class();
      v41 = [*(a1 + 40) associatedContainerBehaviorSettings];
      v42 = [v41 sensorObscuringShadowProgressBehaviorSettings];
      v43 = [v40 newAnimatedTransitionDescriptionWithBehaviorSettings:v42];
      v44 = [SBSAInterfaceElementPropertyIdentity alloc];
      v45 = [v36 interfaceElementIdentifier];
      v46 = [(SBSAInterfaceElementPropertyIdentity *)v44 initWithAssociatedInterfaceElementIdentifier:v45 andProperty:@"sensorObscuringShadowProgress"];
      [v7 setAnimatedTransitionDescription:v43 forProperty:v46 withMilestones:0];

      v30 = v74;
      v31 = off_2783A1000;

      v3 = v75;
    }
  }

  v47 = v30;
  v48 = objc_opt_class();
  v49 = [*(a1 + 40) associatedContainerBehaviorSettings];
  v50 = [v49 boundsBehaviorSettings];
  v51 = [v48 newAnimatedTransitionDescriptionWithBehaviorSettings:v50];
  v52 = v31;
  v53 = [objc_alloc(v31[296]) initWithAssociatedInterfaceElementIdentifier:v26 andProperty:@"bounds"];
  [v7 setAnimatedTransitionDescription:v51 forProperty:v53 withMilestones:0];

  v54 = objc_opt_class();
  v55 = [*(a1 + 40) associatedContainerBehaviorSettings];
  v56 = [v55 centerBehaviorSettings];
  v57 = [v54 newAnimatedTransitionDescriptionWithBehaviorSettings:v56];
  v58 = [objc_alloc(v52[296]) initWithAssociatedInterfaceElementIdentifier:v26 andProperty:@"center"];
  [v7 setAnimatedTransitionDescription:v57 forProperty:v58 withMilestones:0];

  v59 = objc_opt_class();
  v60 = [*(a1 + 40) associatedContainerBehaviorSettings];
  v61 = [v60 contentBoundsBehaviorSettings];
  v62 = [v59 newAnimatedTransitionDescriptionWithBehaviorSettings:v61];
  v63 = [objc_alloc(v52[296]) initWithAssociatedInterfaceElementIdentifier:v26 andProperty:@"contentBounds"];
  [v7 setAnimatedTransitionDescription:v62 forProperty:v63 withMilestones:0];

  v64 = objc_opt_class();
  v65 = [*(a1 + 40) associatedContainerBehaviorSettings];
  v66 = [v65 contentScaleBehaviorSettings];
  v67 = [v64 newAnimatedTransitionDescriptionWithBehaviorSettings:v66];
  v68 = [objc_alloc(v52[296]) initWithAssociatedInterfaceElementIdentifier:v26 andProperty:@"contentScale"];
  [v7 setAnimatedTransitionDescription:v67 forProperty:v68 withMilestones:0];

  v69 = objc_opt_class();
  v70 = [*(a1 + 40) associatedContainerBehaviorSettings];
  v71 = [v70 contentCenterBehaviorSettings];
  v72 = [v69 newAnimatedTransitionDescriptionWithBehaviorSettings:v71];
  v73 = [objc_alloc(v52[296]) initWithAssociatedInterfaceElementIdentifier:v26 andProperty:@"contentCenter"];
  [v7 setAnimatedTransitionDescription:v72 forProperty:v73 withMilestones:0];
}

void __99__SBSAIndicatorMitosisTransitionProvider__updatedPreferencesWithPhaseSettings_preferences_context___block_invoke_2(uint64_t a1, void *a2)
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
      __99__SBSAIndicatorMitosisTransitionProvider__updatedPreferencesWithPhaseSettings_preferences_context___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  [v7 setContentScale:{*(a1 + 56), *(a1 + 64)}];
  v8 = *(*(a1 + 32) + 64);
  switch(v8)
  {
    case 2:
      goto LABEL_13;
    case 1:
      [v7 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      [v7 center];
      SBSAScaledAndClippedFrameByScalingDimensions(0, *(a1 + 40), v44, v46, v48, v50, v51, v52, *(a1 + 72), *(a1 + 80));
      BSRectWithSize();
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;
      UIRectGetCenter();
      v62 = v61 - *(a1 + 88);
      v64 = v63 - *(a1 + 96);
      [v7 setBounds:{v54, v56, v58, v60}];
      [v7 setCenter:{v62, v64}];
      v42 = v7;
      v38 = v54;
      v39 = v56;
      v40 = v58;
      v41 = v60;
      goto LABEL_15;
    case 0:
LABEL_13:
      v9 = *(MEMORY[0x277CBF3A0] + 16);
      v65 = *MEMORY[0x277CBF3A0];
      v66 = v9;
      [v7 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [v7 center];
      SBSAScaledAndClippedFrameByScalingLeadingTrailingViews(&v65, *(a1 + 40), v11, v13, v15, v17, v24, v25, *(a1 + 72), *(a1 + 80), v18, v19, v20, v21, v22, v23, *(a1 + 96));
      BSRectWithSize();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      UIRectGetCenter();
      v35 = v34;
      v37 = v36;
      [v7 setBounds:{v27, v29, v31, v33}];
      [v7 setCenter:{v35, v37}];
      v39 = *(&v65 + 1);
      v38 = *&v65;
      v41 = *(&v66 + 1);
      v40 = *&v66;
      v42 = v7;
LABEL_15:
      [v42 setContentBounds:{v38, v39, v40, v41}];
      UIRectGetCenter();
      [v7 setContentCenter:?];
      break;
  }
}

void __99__SBSAIndicatorMitosisTransitionProvider__updatedPreferencesWithPhaseSettings_preferences_context___block_invoke_3(uint64_t a1, void *a2)
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
      __99__SBSAIndicatorMitosisTransitionProvider__updatedPreferencesWithPhaseSettings_preferences_context___block_invoke_3_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 40) sensorShadowProgress];
  [v6 setSensorObscuringShadowProgress:?];
}

- (id)_updateMaintainedPreferencesForActivePhaseWithContext:(id)context
{
  contextCopy = context;
  _mitosisSettings = [(SBSAIndicatorMitosisTransitionProvider *)self _mitosisSettings];
  activePhase = self->_activePhase;
  v7 = [(SBSAIndicatorMitosisTransitionProvider *)self _mitosisPhaseSettingsForPhase:activePhase];
  preferences = [contextCopy preferences];
  indicatorElementDescription = [preferences indicatorElementDescription];
  interfaceElementIdentifier = [indicatorElementDescription interfaceElementIdentifier];

  preferences2 = [contextCopy preferences];
  indicatorContainerViewDescription = [preferences2 indicatorContainerViewDescription];
  interfaceElementIdentifier2 = [indicatorContainerViewDescription interfaceElementIdentifier];

  interSensorIndicatorAppearanceTransitionBeginPhase = [_mitosisSettings interSensorIndicatorAppearanceTransitionBeginPhase];
  v15 = 0;
  if (interSensorIndicatorAppearanceTransitionBeginPhase > 1)
  {
    if (interSensorIndicatorAppearanceTransitionBeginPhase == 2)
    {
      v16 = activePhase > 1;
    }

    else
    {
      if (interSensorIndicatorAppearanceTransitionBeginPhase != 3)
      {
        goto LABEL_13;
      }

      v16 = activePhase > 2;
    }

    v15 = v16;
  }

  else if (interSensorIndicatorAppearanceTransitionBeginPhase)
  {
    if (interSensorIndicatorAppearanceTransitionBeginPhase == 1)
    {
      v15 = activePhase != 0;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_13:
  microIndicatorAppearanceTransitionBeginPhase = [_mitosisSettings microIndicatorAppearanceTransitionBeginPhase];
  v18 = 0;
  if (microIndicatorAppearanceTransitionBeginPhase > 1)
  {
    if (microIndicatorAppearanceTransitionBeginPhase == 2)
    {
      v19 = activePhase > 1;
    }

    else
    {
      if (microIndicatorAppearanceTransitionBeginPhase != 3)
      {
        goto LABEL_25;
      }

      v19 = activePhase > 2;
    }

    v18 = v19;
  }

  else if (microIndicatorAppearanceTransitionBeginPhase)
  {
    if (microIndicatorAppearanceTransitionBeginPhase == 1)
    {
      v18 = activePhase != 0;
    }
  }

  else
  {
    v18 = 1;
  }

LABEL_25:
  microIndicatorTranslationTransitionBeginPhase = [_mitosisSettings microIndicatorTranslationTransitionBeginPhase];
  v21 = 0;
  if (microIndicatorTranslationTransitionBeginPhase > 1)
  {
    if (microIndicatorTranslationTransitionBeginPhase == 2)
    {
      v22 = activePhase > 1;
    }

    else
    {
      if (microIndicatorTranslationTransitionBeginPhase != 3)
      {
        goto LABEL_37;
      }

      v22 = activePhase > 2;
    }

    v21 = v22;
  }

  else if (microIndicatorTranslationTransitionBeginPhase)
  {
    if (microIndicatorTranslationTransitionBeginPhase == 1)
    {
      v21 = activePhase != 0;
    }
  }

  else
  {
    v21 = 1;
  }

LABEL_37:
  preferences3 = [contextCopy preferences];
  if (v15 || v18 || v21)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __96__SBSAIndicatorMitosisTransitionProvider__updateMaintainedPreferencesForActivePhaseWithContext___block_invoke;
    v29[3] = &unk_2783AF538;
    v34 = v28;
    v29[4] = self;
    v35 = v15;
    v30 = contextCopy;
    v36 = v18;
    v37 = v21;
    v31 = v7;
    v32 = interfaceElementIdentifier;
    v33 = interfaceElementIdentifier2;
    v24 = [preferences3 copyWithBlock:v29];

    preferences3 = v24;
  }

  v25 = [contextCopy copyByUpdatingPreferences:preferences3];

  return v25;
}

void __96__SBSAIndicatorMitosisTransitionProvider__updateMaintainedPreferencesForActivePhaseWithContext___block_invoke(uint64_t a1, void *a2)
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
      __96__SBSAIndicatorMitosisTransitionProvider__updateMaintainedPreferencesForActivePhaseWithContext___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 maintainedPreferences];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __96__SBSAIndicatorMitosisTransitionProvider__updateMaintainedPreferencesForActivePhaseWithContext___block_invoke_2;
  v16 = &unk_2783AF510;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v23 = *(a1 + 72);
  v17 = v9;
  v24 = *(a1 + 80);
  v18 = v10;
  v25 = *(a1 + 81);
  v19 = *(a1 + 48);
  v20 = v7;
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v11 = v7;
  v12 = [v8 copyWithBlock:&v13];

  [v11 setMaintainedPreferences:{v12, v13, v14, v15, v16, v17}];
}

void __96__SBSAIndicatorMitosisTransitionProvider__updateMaintainedPreferencesForActivePhaseWithContext___block_invoke_2(uint64_t a1, void *a2)
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
      __96__SBSAIndicatorMitosisTransitionProvider__updateMaintainedPreferencesForActivePhaseWithContext___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 indicatorAppearanceStateContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __96__SBSAIndicatorMitosisTransitionProvider__updateMaintainedPreferencesForActivePhaseWithContext___block_invoke_3;
  v15[3] = &unk_2783AF510;
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  v14 = *(a1 + 32);
  v9 = *(&v14 + 1);
  v22 = *(a1 + 89);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v16 = v14;
  v17 = v12;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v13 = [v8 copyWithBlock:v15];

  [v7 setIndicatorAppearanceStateContext:v13];
}

void __96__SBSAIndicatorMitosisTransitionProvider__updateMaintainedPreferencesForActivePhaseWithContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v75 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v75;
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

    v3 = v75;
    if (!v7)
    {
      __96__SBSAIndicatorMitosisTransitionProvider__updateMaintainedPreferencesForActivePhaseWithContext___block_invoke_3_cold_1();
      v3 = v75;
    }
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 88) == 1)
  {
    if (*(*(a1 + 32) + 56) == 1 && ([*(a1 + 40) indicatorElementContext], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [v7 interSensorIndicatorPhase];
      v10 = v9 == 2;
      if (v9 < 2)
      {
        v11 = v7;
        v12 = 2;
LABEL_17:
        [v11 setInterSensorIndicatorPhase:v12];
LABEL_21:
        v14 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v13 = [v7 interSensorIndicatorPhase];
      if ((v13 - 2) < 2)
      {
        v11 = v7;
        v12 = 1;
        goto LABEL_17;
      }

      v10 = v13 == 1;
    }

    if (v10)
    {
      goto LABEL_21;
    }
  }

  v14 = 0;
LABEL_23:
  if (*(a1 + 89) == 1)
  {
    v15 = *(*(a1 + 32) + 56);
    v16 = [v7 microIndicatorPhase];
    if (v15 == 1)
    {
      if (v16 - 2 < 2)
      {
        v17 = v7;
        v18 = 1;
LABEL_29:
        [v17 setMicroIndicatorPhase:v18];
LABEL_33:
        v20 = 1;
        goto LABEL_35;
      }

      v19 = v16 == 1;
    }

    else
    {
      v19 = v16 == 2;
      if (v16 < 2)
      {
        v17 = v7;
        v18 = 2;
        goto LABEL_29;
      }
    }

    if (v19)
    {
      goto LABEL_33;
    }
  }

  v20 = 0;
LABEL_35:
  if (*(a1 + 90) == 1)
  {
    v21 = *(*(a1 + 32) + 56);
    v22 = [v7 microIndicatorEjectionPhase];
    if (v21 == 1)
    {
      if (v22 - 2 < 2)
      {
        v23 = v7;
        v24 = 1;
LABEL_41:
        [v23 setMicroIndicatorEjectionPhase:v24];
LABEL_45:
        v26 = 1;
        goto LABEL_47;
      }

      v25 = v22 == 1;
    }

    else
    {
      v25 = v22 == 2;
      if (v22 < 2)
      {
        v23 = v7;
        v24 = 2;
        goto LABEL_41;
      }
    }

    if (v25)
    {
      goto LABEL_45;
    }
  }

  v26 = 0;
LABEL_47:
  if (!*(a1 + 48))
  {
    goto LABEL_52;
  }

  if (v14)
  {
    v39 = *(a1 + 56);
    v40 = objc_opt_class();
    v41 = [*(a1 + 48) indicatorElementTransitionSettings];
    v42 = [v41 fixedIndicatorElementViewAlphaBehaviorSettings];
    v43 = [v40 newAnimatedTransitionDescriptionWithBehaviorSettings:v42];
    v44 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 64) andProperty:@"fixedIndicatorViewAlpha"];
    [v39 setAnimatedTransitionDescription:v43 forProperty:v44 withMilestones:0];

    v45 = *(a1 + 56);
    v46 = objc_opt_class();
    v47 = [*(a1 + 48) indicatorElementTransitionSettings];
    v48 = [v47 fixedIndicatorElementViewBlurProgressBehaviorSettings];
    v49 = [v46 newAnimatedTransitionDescriptionWithBehaviorSettings:v48];
    v50 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 64) andProperty:@"fixedIndicatorViewBlurProgress"];
    [v45 setAnimatedTransitionDescription:v49 forProperty:v50 withMilestones:0];

    v51 = *(a1 + 56);
    v52 = objc_opt_class();
    v53 = [*(a1 + 48) indicatorElementTransitionSettings];
    v54 = [v53 fixedIndicatorElementViewTransformBehaviorSettings];
    v55 = [v52 newAnimatedTransitionDescriptionWithBehaviorSettings:v54];
    v56 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 64) andProperty:@"fixedIndicatorViewTransform"];
    [v51 setAnimatedTransitionDescription:v55 forProperty:v56 withMilestones:0];

    if (!v20)
    {
LABEL_50:
      if (!v26)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }
  }

  else if (!v20)
  {
    goto LABEL_50;
  }

  v57 = *(a1 + 56);
  v58 = objc_opt_class();
  v59 = [*(a1 + 48) indicatorElementTransitionSettings];
  v60 = [v59 indicatorElementViewAlphaBehaviorSettings];
  v61 = [v58 newAnimatedTransitionDescriptionWithBehaviorSettings:v60];
  v62 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 64) andProperty:@"indicatorViewAlpha"];
  [v57 setAnimatedTransitionDescription:v61 forProperty:v62 withMilestones:0];

  v63 = *(a1 + 56);
  v64 = objc_opt_class();
  v65 = [*(a1 + 48) indicatorElementTransitionSettings];
  v66 = [v65 indicatorElementViewBlurProgressBehaviorSettings];
  v67 = [v64 newAnimatedTransitionDescriptionWithBehaviorSettings:v66];
  v68 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 64) andProperty:@"indicatorViewBlurProgress"];
  [v63 setAnimatedTransitionDescription:v67 forProperty:v68 withMilestones:0];

  v69 = *(a1 + 56);
  v70 = objc_opt_class();
  v71 = [*(a1 + 48) indicatorElementTransitionSettings];
  v72 = [v71 indicatorElementViewTransformBehaviorSettings];
  v73 = [v70 newAnimatedTransitionDescriptionWithBehaviorSettings:v72];
  v74 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 64) andProperty:@"indicatorViewTransform"];
  [v69 setAnimatedTransitionDescription:v73 forProperty:v74 withMilestones:0];

  if (v26)
  {
LABEL_51:
    v27 = *(a1 + 56);
    v28 = objc_opt_class();
    v29 = [*(a1 + 48) indicatorElementTransitionSettings];
    v30 = [v29 indicatorContainerBoundsBehaviorSettings];
    v31 = [v28 newAnimatedTransitionDescriptionWithBehaviorSettings:v30];
    v32 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 72) andProperty:@"bounds"];
    [v27 setAnimatedTransitionDescription:v31 forProperty:v32 withMilestones:0];

    v33 = *(a1 + 56);
    v34 = objc_opt_class();
    v35 = [*(a1 + 48) indicatorElementTransitionSettings];
    v36 = [v35 indicatorContainerCenterBehaviorSettings];
    v37 = [v34 newAnimatedTransitionDescriptionWithBehaviorSettings:v36];
    v38 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 72) andProperty:@"center"];
    [v33 setAnimatedTransitionDescription:v37 forProperty:v38 withMilestones:0];
  }

LABEL_52:
}

- (id)_associatedContainerViewDescriptionFromPreferences:(id)preferences context:(id)context outIndex:(unint64_t *)index
{
  containerViewDescriptions = [preferences containerViewDescriptions];
  v8 = containerViewDescriptions;
  if (self->_pendingPhaseTransitionPropertyIdentity && (v13[0] = MEMORY[0x277D85DD0], v13[1] = 3221225472, v13[2] = __110__SBSAIndicatorMitosisTransitionProvider__associatedContainerViewDescriptionFromPreferences_context_outIndex___block_invoke, v13[3] = &unk_2783AE040, v13[4] = self, v9 = [containerViewDescriptions indexOfObjectPassingTest:v13], v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    if (index)
    {
      *index = v9;
    }

    lastObject = [v8 objectAtIndex:v9];
  }

  else
  {
    if (index)
    {
      *index = [v8 count] - 1;
    }

    lastObject = [v8 lastObject];
  }

  v11 = lastObject;

  return v11;
}

uint64_t __110__SBSAIndicatorMitosisTransitionProvider__associatedContainerViewDescriptionFromPreferences_context_outIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(*(a1 + 32) + 40);
  v6 = a2;
  v7 = [v5 interfaceElementProperty];
  v8 = [v6 interfaceElementIdentifier];

  v9 = BSEqualObjects();
  if (v9)
  {
    *a4 = 1;
  }

  return v9;
}

- (id)_mitosisSettings
{
  settings = [objc_opt_class() settings];
  v4 = settings;
  type = self->_type;
  switch(type)
  {
    case 0uLL:
      if (self->_reversed)
      {
        [settings reversedCompactIndicatorMitosisSettings];
      }

      else
      {
        [settings compactIndicatorMitosisSettings];
      }

      goto LABEL_10;
    case 1uLL:
      if (self->_reversed)
      {
        [settings reversedBabyJindoIndicatorMitosisSettings];
      }

      else
      {
        [settings babyJindoIndicatorMitosisSettings];
      }

      goto LABEL_10;
    case 2uLL:
      if (self->_reversed)
      {
        [settings reversedCustomIndicatorMitosisSettings];
      }

      else
      {
        [settings customIndicatorMitosisSettings];
      }

      v6 = LABEL_10:;
      v7 = v6;
      goto LABEL_15;
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (id)_mitosisPhaseSettingsForPhase:(unint64_t)phase
{
  _mitosisSettings = [(SBSAIndicatorMitosisTransitionProvider *)self _mitosisSettings];
  v5 = _mitosisSettings;
  v6 = 0;
  if (phase > 1)
  {
    if (phase == 2)
    {
      preparingToSettlePhaseSettings = [_mitosisSettings preparingToSettlePhaseSettings];
    }

    else
    {
      if (phase != 3)
      {
        goto LABEL_11;
      }

      preparingToSettlePhaseSettings = [_mitosisSettings settlingPhaseSettings];
    }
  }

  else if (phase)
  {
    if (phase != 1)
    {
      goto LABEL_11;
    }

    preparingToSettlePhaseSettings = [_mitosisSettings kickedPhaseSettings];
  }

  else
  {
    preparingToSettlePhaseSettings = [_mitosisSettings kickingPhaseSettings];
  }

  v6 = preparingToSettlePhaseSettings;
LABEL_11:

  return v6;
}

- (double)milestoneForPhase:(unint64_t)phase
{
  v3 = [(SBSAIndicatorMitosisTransitionProvider *)self _mitosisPhaseSettingsForPhase:phase];
  v4 = v3;
  if (v3)
  {
    [v3 phaseEndMilestone];
    v6 = v5;
    if (v5 >= 1.0)
    {
      [&unk_28336F620 bs_CGFloatValue];
      v6 = v7;
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (BOOL)_milestoneDidReachExpectedMilestone:(double)milestone property:(id)property context:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  animatedTransitionResults = [context animatedTransitionResults];
  v8 = [animatedTransitionResults countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(animatedTransitionResults);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        associatedInterfaceElementPropertyIdentity = [v13 associatedInterfaceElementPropertyIdentity];
        v15 = BSEqualObjects();

        if (v15)
        {
          if ([v13 finished])
          {
            retargeted = 0;
          }

          else
          {
            retargeted = [v13 retargeted];
          }

          [&unk_28336F620 bs_CGFloatValue];
          v17 = BSFloatEqualToFloat();
          [v13 targetedMilestone];
          isTransitionEndTargeted = BSFloatApproximatelyEqualToFloat();
          if (v17)
          {
            isTransitionEndTargeted = [v13 isTransitionEndTargeted];
          }

          v10 |= retargeted | isTransitionEndTargeted;
        }
      }

      v9 = [animatedTransitionResults countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
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
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  [v4 handleFailureInMethod:v1 object:v3 file:? lineNumber:? description:?];
}

- (void)preferencesFromContext:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)preferencesFromContext:(void *)a1 .cold.4(void *a1, id *a2)
{
  [a1 queryIteration];
  v9 = [*a2 UUIDString];
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v3, v4, "[%{public}lu] It is unexpected to have a timer running when there isn't a milestone being tracked. Tossing: %@", v5, v6, v7, v8, 2u);
}

- (void)preferencesFromContext:.cold.5()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  [v4 handleFailureInMethod:v1 object:v3 file:? lineNumber:? description:?];
}

void __65__SBSAIndicatorMitosisTransitionProvider_preferencesFromContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __108__SBSAIndicatorMitosisTransitionProvider__positionIndicatorUnderAssociatedContainerWithPreferences_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_6_0();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __108__SBSAIndicatorMitosisTransitionProvider__positionIndicatorUnderAssociatedContainerWithPreferences_context___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_6_0();
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __99__SBSAIndicatorMitosisTransitionProvider__updatedPreferencesWithPhaseSettings_preferences_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_6_0();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __99__SBSAIndicatorMitosisTransitionProvider__updatedPreferencesWithPhaseSettings_preferences_context___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __99__SBSAIndicatorMitosisTransitionProvider__updatedPreferencesWithPhaseSettings_preferences_context___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaelementdes.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __96__SBSAIndicatorMitosisTransitionProvider__updateMaintainedPreferencesForActivePhaseWithContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __96__SBSAIndicatorMitosisTransitionProvider__updateMaintainedPreferencesForActivePhaseWithContext___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsamaintained.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __96__SBSAIndicatorMitosisTransitionProvider__updateMaintainedPreferencesForActivePhaseWithContext___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaindicatora.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end