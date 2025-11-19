@interface SBSAIndicatorAppearanceStateTransitionProvider
- (BOOL)_areBothIndicatorsHiddenWithIndicatorAppearanceStateContext:(id)a3;
- (BOOL)_milestoneDidReachExpectedMilestone:(double)a3 property:(id)a4 context:(id)a5;
- (id)_attemptRecombinationWithPreferences:(id)a3 context:(id)a4 interSensorIndicatorNeedsAppearing:(BOOL)a5;
- (id)_ensureMicroRegionIndicatorOnlyVisible:(id)a3 context:(id)a4;
- (id)_startMicroMitosisIfNecessary:(id)a3 context:(id)a4;
- (id)_startMicroRecombinationIfNecessary:(id)a3 context:(id)a4;
- (id)_transitionInterSensorRegionToAppearingIfNecessary:(id)a3 context:(id)a4;
- (id)_transitionInterSensorRegionToDisappearingIfNecessary:(id)a3 context:(id)a4;
- (id)_transitionMicroRegionToAcceptingAndDisappearingIfNecessary:(id)a3 context:(id)a4;
- (id)_transitionMicroRegionToEjectingAndAppearingIfNecessary:(id)a3 context:(id)a4;
- (id)_updateIndicatorAppearStateWithPreferences:(id)a3 context:(id)a4;
- (id)_updatedPreferencesAddingMilestonesIfNeededWithPreferences:(id)a3 context:(id)a4;
- (id)_updatedPreferencesForCompletedMilestonesWithContext:(id)a3;
- (id)preferencesFromContext:(id)a3;
- (void)_cleanupMicroMitosisIfNecessary;
- (void)_cleanupMicroRecombinationIfNecessary;
@end

@implementation SBSAIndicatorAppearanceStateTransitionProvider

- (void)_cleanupMicroMitosisIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorMitosisProvider);
  [WeakRetained removeFromParentProvider];

  objc_storeWeak(&self->_indicatorMitosisProvider, 0);
}

- (void)_cleanupMicroRecombinationIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorRecombinationProvider);
  [WeakRetained removeFromParentProvider];

  objc_storeWeak(&self->_indicatorRecombinationProvider, 0);
}

- (id)preferencesFromContext:(id)a3
{
  v67[1] = *MEMORY[0x277D85DE8];
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
      [SBSAIndicatorAppearanceStateTransitionProvider preferencesFromContext:];
    }
  }

  else
  {
    v8 = 0;
  }

  v57 = v4;

  v9 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _updatedPreferencesForCompletedMilestonesWithContext:v8];
  v10 = [v9 maintainedPreferences];
  v11 = [v10 indicatorAppearanceStateContext];

  v12 = [v8 preferences];
  v13 = [v12 maintainedPreferences];
  v14 = [v13 indicatorAppearanceStateContext];

  LOBYTE(v12) = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _areBothIndicatorsHiddenWithIndicatorAppearanceStateContext:v14];
  v15 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _areBothIndicatorsHiddenWithIndicatorAppearanceStateContext:v11];
  if ((v12 & 1) == 0 && v15)
  {
    v16 = [[SBSAPreferencesDidChangeAction alloc] initWithReasons:&unk_28336E6D0];
    v67[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
    v18 = [v9 copyByAddingActions:v17];

    v9 = v18;
  }

  v19 = [v8 indicatorElementContext];
  v58 = v19;
  if (v11)
  {
    if (v19)
    {
      v56 = v14;
      v20 = [v8 backlightLuminanceLevel];
      v21 = [v8 isReachabilityActiveOrAnimating];
      v22 = [v8 isAccessibilityZoomActiveAndEnabled];
      v23 = [v8 secureFlipBookElementContexts];
      v24 = [v23 count] == 0;

      v25 = [v8 elementContexts];
      if ([v25 count])
      {
        [v8 elementContexts];
        v27 = v26 = v21;
        v55 = [v27 bs_containsObjectPassingTest:&__block_literal_global_221] ^ 1;

        v21 = v26;
      }

      else
      {
        v55 = 0;
      }

      if ([v11 isDisappeared])
      {
        v32 = [v9 indicatorContainerViewDescription];
        v33 = [v32 interfaceElementIdentifier];

        activeIndicatorContainerIdentifier = self->_activeIndicatorContainerIdentifier;
        v35 = SBLogSystemAperturePreferencesStackIndicator();
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
        v14 = v56;
        if (activeIndicatorContainerIdentifier == v33)
        {
          if (v36)
          {
            *buf = 134349570;
            v61 = [v8 queryIteration];
            v62 = 2112;
            *v63 = v58;
            *&v63[8] = 2112;
            v64 = v11;
            _os_log_debug_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEBUG, "[%{public}lu] Both indicators are disappeared but there is an element context: %@, so transition the interSensorRegion indicator to appear %@", buf, 0x20u);
          }

          v39 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _ensureInterSensorRegionIndicatorOnlyVisible:v9 context:v8];
        }

        else
        {
          if (v36)
          {
            [SBSAIndicatorAppearanceStateTransitionProvider preferencesFromContext:v8];
          }

          objc_storeStrong(&self->_activeIndicatorContainerIdentifier, v33);
          self->_hasAppearedOnce = 0;
          v37 = [[SBSAPreferencesDidChangeAction alloc] initWithReasons:&unk_28336E6E8];
          v66 = v37;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
          v39 = [v9 copyByAddingActions:v38];

          v9 = v37;
        }

        goto LABEL_41;
      }

      v14 = v56;
      if (v20 < 1) | (v21 | v22) & v24 & 1 || ((v55 ^ 1) & 1) != 0 || ([v58 indicatorNeedsDisplayWellKnownLocation])
      {
        v40 = SBLogSystemAperturePreferencesStackIndicator();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134350082;
          v61 = [v8 queryIteration];
          v62 = 1024;
          *v63 = v21;
          *&v63[4] = 1024;
          *&v63[6] = v20 > 0;
          LOWORD(v64) = 1024;
          *(&v64 + 2) = v55;
          HIWORD(v64) = 2112;
          v65 = v11;
          _os_log_debug_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEBUG, "[%{public}lu] Ejection is not viable, so ensure the intersensor region indicator is visible, and the micro is accepted. Reachability active: %{BOOL}u; Backlight On: %{BOOL}u; Are there portrait elements in Jindo: %{BOOL}u; AppearanceStateContext: %@", buf, 0x28u);
        }

        v31 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _ensureInterSensorRegionIndicatorOnlyVisible:v9 context:v8];
      }

      else
      {
        v41 = SBLogSystemAperturePreferencesStackIndicator();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          [SBSAIndicatorAppearanceStateTransitionProvider preferencesFromContext:];
        }

        v31 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _ensureMicroRegionIndicatorOnlyVisible:v9 context:v8];
      }
    }

    else
    {
      v31 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _ensureBothIndicatorsHidden:v9 context:v8];
    }

    v39 = v31;

LABEL_41:
    v9 = v39;
    goto LABEL_42;
  }

  v28 = [v9 indicatorContainerViewDescription];
  v29 = [v28 interfaceElementIdentifier];

  if (v29)
  {
    [SBSAIndicatorAppearanceStateTransitionProvider preferencesFromContext:];
  }

  [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroMitosisIfNecessary];
  [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroRecombinationIfNecessary];
  v30 = self->_activeIndicatorContainerIdentifier;
  self->_activeIndicatorContainerIdentifier = 0;

  self->_hasAppearedOnce = 0;
LABEL_42:
  v42 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _updateIndicatorAppearStateWithPreferences:v9 context:v8];

  v43 = [v8 copyByUpdatingPreferences:v42];
  v59.receiver = self;
  v59.super_class = SBSAIndicatorAppearanceStateTransitionProvider;
  v44 = [(SBSABasePreferencesProvider *)&v59 preferencesFromContext:v43];
  if (v44)
  {
    v45 = objc_opt_self();
    v46 = v44;
    if (v45)
    {
      if (objc_opt_isKindOfClass())
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v47 = 0;
    }

    v48 = v47;

    if (!v48)
    {
      [SBSAIndicatorAppearanceStateTransitionProvider preferencesFromContext:];
    }
  }

  else
  {
    v48 = 0;
  }

  v49 = [v48 maintainedPreferences];
  v50 = [v49 indicatorAppearanceStateContext];

  if ((BSEqualObjects() & 1) == 0)
  {
    v51 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      v54 = [v8 queryIteration];
      *buf = 134349570;
      v61 = v54;
      v62 = 2112;
      *v63 = v50;
      *&v63[8] = 2112;
      v64 = v14;
      _os_log_debug_impl(&dword_21ED4E000, v51, OS_LOG_TYPE_DEBUG, "[%{public}lu] indicator layout context updated: %@; from: %@", buf, 0x20u);
    }

    v52 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _updatedPreferencesAddingMilestonesIfNeededWithPreferences:v48 context:v8];

    v48 = v52;
  }

  return v48;
}

- (id)_ensureMicroRegionIndicatorOnlyVisible:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 elementLayoutTransition];
  v9 = [v8 isLayoutChange];

  if (v9)
  {
    [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroMitosisIfNecessary];
    v10 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionMicroRegionToEjectingAndAppearingIfNecessary:v6 context:v7];
    v11 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionInterSensorRegionToDisappearingIfNecessary:v10 context:v7];
  }

  else
  {
    v11 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _startMicroMitosisIfNecessary:v6 context:v7];
  }

  return v11;
}

- (id)_updateIndicatorAppearStateWithPreferences:(id)a3 context:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 maintainedPreferences];
  v10 = [v9 indicatorAppearanceStateContext];

  v11 = [v8 indicatorElementDescription];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke;
  v21[3] = &unk_2783AD778;
  v21[4] = self;
  v22 = v7;
  v23 = v10;
  v24 = a2;
  v12 = v7;
  v13 = v10;
  v14 = [v11 copyWithBlock:v21];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke_2;
  v18[3] = &unk_2783AD750;
  v19 = v14;
  v20 = a2;
  v18[4] = self;
  v15 = v14;
  v16 = [v8 copyWithBlock:v18];

  return v16;
}

void __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v11;
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

    v3 = v11;
    if (!v7)
    {
      __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke_cold_1();
      v3 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 appearState] != 3 && objc_msgSend(v7, "appearState") != 1;
  v9 = [*(a1 + 40) indicatorElementContext];

  if (v9)
  {
    if (*(*(a1 + 32) + 104) & v8)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else if ([*(a1 + 48) isDisappeared])
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  [v7 setAppearState:v10];
}

void __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke_2(uint64_t a1, void *a2)
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
      __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setIndicatorElementDescription:*(a1 + 40)];
}

- (id)_attemptRecombinationWithPreferences:(id)a3 context:(id)a4 interSensorIndicatorNeedsAppearing:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = [v10 maintainedPreferences];
  v12 = [v11 indicatorAppearanceStateContext];
  v13 = [v12 isMicroVisible];

  if (v13)
  {
    v14 = [v10 elementLayoutTransition];
    v15 = [v14 isLayoutChange];

    if (v15)
    {
      [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroRecombinationIfNecessary];
      v16 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionMicroRegionToAcceptingAndDisappearingIfNecessary:v10 context:v9];

      if (v5)
      {
        [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionInterSensorRegionToAppearingIfNecessary:v16 context:v9];
      }

      else
      {
        [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionInterSensorRegionToDisappearingIfNecessary:v16 context:v9];
      }
      v18 = ;
      goto LABEL_13;
    }

    v17 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _startMicroRecombinationIfNecessary:v10 context:v9];
  }

  else
  {
    if (v5)
    {
      [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionInterSensorRegionToAppearingIfNecessary:v10 context:v9];
    }

    else
    {
      [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionInterSensorRegionToDisappearingIfNecessary:v10 context:v9];
    }
    v17 = ;
  }

  v18 = v17;
  v16 = v10;
LABEL_13:

  return v18;
}

- (id)_transitionInterSensorRegionToAppearingIfNecessary:(id)a3 context:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 maintainedPreferences];
  v10 = [v9 indicatorAppearanceStateContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __109__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToAppearingIfNecessary_context___block_invoke;
  v18[3] = &unk_2783AD750;
  v19 = v7;
  v20 = a2;
  v18[4] = self;
  v11 = v7;
  v12 = [v10 copyWithBlock:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __109__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToAppearingIfNecessary_context___block_invoke_40;
  v16[3] = &unk_2783BA0B0;
  v17 = v12;
  v13 = v12;
  v14 = [v8 copyByUpdatingMaintainedPreferences:v16];

  return v14;
}

void __109__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToAppearingIfNecessary_context___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
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
      __109__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToAppearingIfNecessary_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 interSensorIndicatorPhase];
  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_16;
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 56);
    *(v9 + 56) = 0;
  }

  v11 = SBLogSystemAperturePreferencesStackIndicator();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) queryIteration];
    v13 = NSStringFromSBSAIndicatorAppearancePhase([v7 interSensorIndicatorPhase]);
    v14 = 134349314;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change InterSensor indicator state to appearing from: %@", &v14, 0x16u);
  }

  [v7 setInterSensorIndicatorPhase:2];
LABEL_16:
}

- (id)_transitionInterSensorRegionToDisappearingIfNecessary:(id)a3 context:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 maintainedPreferences];
  v10 = [v9 indicatorAppearanceStateContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __112__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToDisappearingIfNecessary_context___block_invoke;
  v18[3] = &unk_2783AD750;
  v19 = v7;
  v20 = a2;
  v18[4] = self;
  v11 = v7;
  v12 = [v10 copyWithBlock:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __112__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToDisappearingIfNecessary_context___block_invoke_42;
  v16[3] = &unk_2783BA0B0;
  v17 = v12;
  v13 = v12;
  v14 = [v8 copyByUpdatingMaintainedPreferences:v16];

  return v14;
}

void __112__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToDisappearingIfNecessary_context___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
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
      __112__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToDisappearingIfNecessary_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 interSensorIndicatorPhase];
  if (v8 != 3)
  {
    if (v8 != 2)
    {
      goto LABEL_16;
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    *(v9 + 32) = 0;
  }

  v11 = SBLogSystemAperturePreferencesStackIndicator();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) queryIteration];
    v13 = NSStringFromSBSAIndicatorAppearancePhase([v7 interSensorIndicatorPhase]);
    v14 = 134349314;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change InterSensor indicator state to disappearing from: %@", &v14, 0x16u);
  }

  [v7 setInterSensorIndicatorPhase:1];
LABEL_16:
}

- (id)_transitionMicroRegionToEjectingAndAppearingIfNecessary:(id)a3 context:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 maintainedPreferences];
  v10 = [v9 indicatorAppearanceStateContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __114__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToEjectingAndAppearingIfNecessary_context___block_invoke;
  v18[3] = &unk_2783AD750;
  v19 = v7;
  v20 = a2;
  v18[4] = self;
  v11 = v7;
  v12 = [v10 copyWithBlock:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __114__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToEjectingAndAppearingIfNecessary_context___block_invoke_43;
  v16[3] = &unk_2783BA0B0;
  v17 = v12;
  v13 = v12;
  v14 = [v8 copyByUpdatingMaintainedPreferences:v16];

  return v14;
}

void __114__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToEjectingAndAppearingIfNecessary_context___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
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
      __114__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToEjectingAndAppearingIfNecessary_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 microIndicatorPhase];
  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_16;
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  v11 = SBLogSystemAperturePreferencesStackIndicator();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) queryIteration];
    v13 = NSStringFromSBSAIndicatorAppearancePhase([v7 microIndicatorPhase]);
    v20 = 134349314;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change Micro indicator state to appearing from: %@", &v20, 0x16u);
  }

  [v7 setMicroIndicatorPhase:2];
LABEL_16:
  v14 = [v7 microIndicatorEjectionPhase];
  if (v14)
  {
    if (v14 != 1)
    {
      goto LABEL_22;
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 72);
    *(v15 + 72) = 0;
  }

  v17 = SBLogSystemAperturePreferencesStackIndicator();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 40) queryIteration];
    v19 = NSStringFromSBSAIndicatorEjectionPhase([v7 microIndicatorEjectionPhase]);
    v20 = 134349314;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change Micro indicator state to ejecting from: %@", &v20, 0x16u);
  }

  [v7 setMicroIndicatorEjectionPhase:2];
LABEL_22:
}

- (id)_transitionMicroRegionToAcceptingAndDisappearingIfNecessary:(id)a3 context:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 maintainedPreferences];
  v10 = [v9 indicatorAppearanceStateContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __118__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToAcceptingAndDisappearingIfNecessary_context___block_invoke;
  v18[3] = &unk_2783AD750;
  v19 = v7;
  v20 = a2;
  v18[4] = self;
  v11 = v7;
  v12 = [v10 copyWithBlock:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __118__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToAcceptingAndDisappearingIfNecessary_context___block_invoke_44;
  v16[3] = &unk_2783BA0B0;
  v17 = v12;
  v13 = v12;
  v14 = [v8 copyByUpdatingMaintainedPreferences:v16];

  return v14;
}

void __118__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToAcceptingAndDisappearingIfNecessary_context___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
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
      __118__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToAcceptingAndDisappearingIfNecessary_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 microIndicatorPhase];
  if (v8 != 3)
  {
    if (v8 != 2)
    {
      goto LABEL_16;
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  v11 = SBLogSystemAperturePreferencesStackIndicator();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) queryIteration];
    v13 = NSStringFromSBSAIndicatorAppearancePhase([v7 microIndicatorPhase]);
    v20 = 134349314;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change Micro indicator state to disappearing from: %@", &v20, 0x16u);
  }

  [v7 setMicroIndicatorPhase:1];
LABEL_16:
  v14 = [v7 microIndicatorEjectionPhase];
  if (v14 != 3)
  {
    if (v14 != 2)
    {
      goto LABEL_22;
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 72);
    *(v15 + 72) = 0;
  }

  v17 = SBLogSystemAperturePreferencesStackIndicator();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 40) queryIteration];
    v19 = NSStringFromSBSAIndicatorEjectionPhase([v7 microIndicatorEjectionPhase]);
    v20 = 134349314;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change Micro indicator state to accepting from: %@", &v20, 0x16u);
  }

  [v7 setMicroIndicatorEjectionPhase:1];
LABEL_22:
}

- (id)_startMicroMitosisIfNecessary:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 maintainedPreferences];
  v10 = [v9 indicatorAppearanceStateContext];
  v11 = [v10 microIndicatorPhase];

  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_16;
    }

    pendingMicroRegionDisappearanceProperty = self->_pendingMicroRegionDisappearanceProperty;
    self->_pendingMicroRegionDisappearanceProperty = 0;
  }

  [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroRecombinationIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_indicatorMitosisProvider);
  v14 = [WeakRetained parentProvider];

  if (v14 == self)
  {
    v15 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [SBSAIndicatorAppearanceStateTransitionProvider _startMicroMitosisIfNecessary:context:];
    }
  }

  else
  {
    [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroMitosisIfNecessary];
    v15 = [v8 containerViewDescriptions];
    v16 = [v15 lastObject];
    v17 = [v7 elementContexts];
    v18 = SBSAElementContextAssociatedWithContainerViewDescription(v16, v17, 0);

    v19 = [v18 layoutMode];
    if ((v19 + 1) >= 3)
    {
      if (v19 == 3)
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = [v15 count]> 1;
    }

    v21 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [SBSAIndicatorAppearanceStateTransitionProvider _startMicroMitosisIfNecessary:context:];
    }

    v22 = [[SBSAIndicatorMitosisTransitionProvider alloc] initWithType:v20 reversed:0];
    objc_storeWeak(&self->_indicatorMitosisProvider, v22);
    [(SBSABasePreferencesProvider *)self setChildProvider:v22];

    WeakRetained = v22;
  }

LABEL_16:

  return v8;
}

- (id)_startMicroRecombinationIfNecessary:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 maintainedPreferences];
  v10 = [v9 indicatorAppearanceStateContext];
  v11 = [v10 microIndicatorPhase];

  if (v11 != 3)
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    pendingMicroRegionAppearanceProperty = self->_pendingMicroRegionAppearanceProperty;
    self->_pendingMicroRegionAppearanceProperty = 0;
  }

  [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroMitosisIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_indicatorRecombinationProvider);
  v14 = [WeakRetained parentProvider];

  if (v14 == self)
  {
    v15 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [SBSAIndicatorAppearanceStateTransitionProvider _startMicroRecombinationIfNecessary:context:];
    }
  }

  else
  {
    [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroRecombinationIfNecessary];
    v15 = [v8 containerViewDescriptions];
    v16 = [v15 lastObject];
    v17 = [v7 elementContexts];
    v18 = SBSAElementContextAssociatedWithContainerViewDescription(v16, v17, 0);

    v19 = [v18 layoutMode];
    if ((v19 + 1) >= 3)
    {
      if (v19 == 3)
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = [v15 count]> 1;
    }

    v21 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [SBSAIndicatorAppearanceStateTransitionProvider _startMicroRecombinationIfNecessary:context:];
    }

    v22 = [[SBSAIndicatorMitosisTransitionProvider alloc] initWithType:v20 reversed:1];
    objc_storeWeak(&self->_indicatorRecombinationProvider, v22);
    [(SBSABasePreferencesProvider *)self setChildProvider:v22];

    WeakRetained = v22;
  }

LABEL_16:

  return v8;
}

- (id)_updatedPreferencesAddingMilestonesIfNeededWithPreferences:(id)a3 context:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 maintainedPreferences];
  v10 = [v9 indicatorAppearanceStateContext];

  v11 = [v8 indicatorContainerViewDescription];
  v12 = [v11 interfaceElementIdentifier];

  v13 = [v8 indicatorElementDescription];
  v14 = [v13 interfaceElementIdentifier];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke;
  v21[3] = &unk_2783BA0D8;
  v21[4] = self;
  v22 = v10;
  v23 = v7;
  v24 = v14;
  v25 = v12;
  v26 = a2;
  v15 = v12;
  v16 = v14;
  v17 = v7;
  v18 = v10;
  v19 = [v8 copyWithBlock:v21];

  return v19;
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke(uint64_t a1, void *a2)
{
  v76 = *MEMORY[0x277D85DE8];
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
      __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  if ([*(a1 + 40) interSensorIndicatorPhase] == 2)
  {
    v8 = *(a1 + 32);
    if (!*(v8 + 32))
    {
      v9 = *(v8 + 56);
      v10 = SBLogSystemAperturePreferencesStackIndicator();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_2(a1);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 48) queryIteration];
        *buf = 134349056;
        v75 = v12;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Creating appearance milestone for intersensor region: disappearance milestone does not exist", buf, 0xCu);
      }

      v13 = *(a1 + 32);
      v14 = *(v13 + 56);
      *(v13 + 56) = 0;

      v15 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 56) andProperty:@"fixedIndicatorViewAlpha"];
      v16 = *(a1 + 32);
      v17 = *(v16 + 32);
      *(v16 + 32) = v15;

      v18 = [MEMORY[0x277CBEB98] setWithObjects:{0x28336F620, 0}];
      [v7 addMilestones:v18 forPropertyIdentity:*(*(a1 + 32) + 32)];
    }
  }

  if ([*(a1 + 40) interSensorIndicatorPhase] == 1)
  {
    v19 = *(a1 + 32);
    if (!*(v19 + 56))
    {
      v20 = *(v19 + 32);
      v21 = SBLogSystemAperturePreferencesStackIndicator();
      v22 = v21;
      if (v20)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_3(a1);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [*(a1 + 48) queryIteration];
        *buf = 134349056;
        v75 = v23;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Creating disappearance milestone for intersensor region: appearance milestone does not exist", buf, 0xCu);
      }

      v24 = *(a1 + 32);
      v25 = *(v24 + 32);
      *(v24 + 32) = 0;

      v26 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 56) andProperty:@"fixedIndicatorViewAlpha"];
      v27 = *(a1 + 32);
      v28 = *(v27 + 56);
      *(v27 + 56) = v26;

      v29 = [MEMORY[0x277CBEB98] setWithObjects:{0x28336F620, 0}];
      [v7 addMilestones:v29 forPropertyIdentity:*(*(a1 + 32) + 56)];
    }
  }

  if ([*(a1 + 40) microIndicatorPhase] == 2)
  {
    v30 = *(a1 + 32);
    if (!*(v30 + 40))
    {
      v31 = *(v30 + 64);
      v32 = SBLogSystemAperturePreferencesStackIndicator();
      v33 = v32;
      if (v31)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_4(a1);
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [*(a1 + 48) queryIteration];
        *buf = 134349056;
        v75 = v34;
        _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Creating appearance milestone for micro region: disappearance milestone does not exist", buf, 0xCu);
      }

      v35 = *(a1 + 32);
      v36 = *(v35 + 64);
      *(v35 + 64) = 0;

      v37 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 56) andProperty:@"indicatorViewAlpha"];
      v38 = *(a1 + 32);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;

      v40 = [MEMORY[0x277CBEB98] setWithObjects:{0x28336F620, 0}];
      [v7 addMilestones:v40 forPropertyIdentity:*(*(a1 + 32) + 40)];
    }
  }

  if ([*(a1 + 40) microIndicatorPhase] == 1)
  {
    v41 = *(a1 + 32);
    if (!*(v41 + 64))
    {
      v42 = *(v41 + 40);
      v43 = SBLogSystemAperturePreferencesStackIndicator();
      v44 = v43;
      if (v42)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_5(a1);
        }
      }

      else if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [*(a1 + 48) queryIteration];
        *buf = 134349056;
        v75 = v45;
        _os_log_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Creating disappearance milestone for micro region: appearance milestone does not exist", buf, 0xCu);
      }

      v46 = *(a1 + 32);
      v47 = *(v46 + 40);
      *(v46 + 40) = 0;

      v48 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 56) andProperty:@"indicatorViewAlpha"];
      v49 = *(a1 + 32);
      v50 = *(v49 + 64);
      *(v49 + 64) = v48;

      v51 = [MEMORY[0x277CBEB98] setWithObjects:{0x28336F620, 0}];
      [v7 addMilestones:v51 forPropertyIdentity:*(*(a1 + 32) + 64)];
    }
  }

  if ([*(a1 + 40) microIndicatorEjectionPhase] == 1)
  {
    v52 = *(a1 + 32);
    if (!*(v52 + 48))
    {
      v53 = *(v52 + 72);
      v54 = SBLogSystemAperturePreferencesStackIndicator();
      v55 = v54;
      if (v53)
      {
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_6(a1);
        }
      }

      else if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v56 = [*(a1 + 48) queryIteration];
        *buf = 134349056;
        v75 = v56;
        _os_log_impl(&dword_21ED4E000, v55, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Creating appearance milestone for micro region: ejected milestone does not exist", buf, 0xCu);
      }

      v57 = *(a1 + 32);
      v58 = *(v57 + 72);
      *(v57 + 72) = 0;

      v59 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 64) andProperty:@"center"];
      v60 = *(a1 + 32);
      v61 = *(v60 + 48);
      *(v60 + 48) = v59;

      v62 = [MEMORY[0x277CBEB98] setWithObjects:{0x28336F620, 0}];
      [v7 addMilestones:v62 forPropertyIdentity:*(*(a1 + 32) + 48)];
    }
  }

  if ([*(a1 + 40) microIndicatorEjectionPhase] == 2)
  {
    v63 = *(a1 + 32);
    if (!*(v63 + 72))
    {
      v64 = *(v63 + 48);
      v65 = SBLogSystemAperturePreferencesStackIndicator();
      v66 = v65;
      if (v64)
      {
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_7(a1);
        }
      }

      else if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v67 = [*(a1 + 48) queryIteration];
        *buf = 134349056;
        v75 = v67;
        _os_log_impl(&dword_21ED4E000, v66, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Creating disappearance milestone for micro region: accepted milestone does not exist", buf, 0xCu);
      }

      v68 = *(a1 + 32);
      v69 = *(v68 + 48);
      *(v68 + 48) = 0;

      v70 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 64) andProperty:@"center"];
      v71 = *(a1 + 32);
      v72 = *(v71 + 72);
      *(v71 + 72) = v70;

      v73 = [MEMORY[0x277CBEB98] setWithObjects:{0x28336F620, 0}];
      [v7 addMilestones:v73 forPropertyIdentity:*(*(a1 + 32) + 72)];
    }
  }
}

- (id)_updatedPreferencesForCompletedMilestonesWithContext:(id)a3
{
  v5 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v6 = [v5 preferences];
  v7 = [v6 maintainedPreferences];
  v8 = [v7 indicatorAppearanceStateContext];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __103__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesForCompletedMilestonesWithContext___block_invoke;
  v15[3] = &unk_2783BA100;
  v18 = a2;
  v15[4] = self;
  v9 = v5;
  v16 = v9;
  v17 = &v19;
  v10 = [v8 copyWithBlock:v15];

  if (*(v20 + 24) == 1)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __103__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesForCompletedMilestonesWithContext___block_invoke_57;
    v13[3] = &unk_2783BA0B0;
    v14 = v10;
    v11 = [v6 copyByUpdatingMaintainedPreferences:v13];
  }

  else
  {
    v11 = v6;
  }

  _Block_object_dispose(&v19, 8);

  return v11;
}

void __103__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesForCompletedMilestonesWithContext___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
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
      __103__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesForCompletedMilestonesWithContext___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  if ([v7 interSensorIndicatorPhase] == 2)
  {
    v8 = *(a1 + 32);
    if (v8[4])
    {
      [&unk_28336F620 bs_CGFloatValue];
      if ([v8 _milestoneDidReachExpectedMilestone:*(*(a1 + 32) + 32) property:*(a1 + 40) context:?])
      {
        v9 = *(a1 + 32);
        v10 = *(v9 + 32);
        *(v9 + 32) = 0;

        *(*(a1 + 32) + 104) = 1;
        v11 = SBLogSystemAperturePreferencesStackIndicator();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(a1 + 40) queryIteration];
          v13 = NSStringFromSBSAIndicatorAppearancePhase([v7 interSensorIndicatorPhase]);
          v44 = 134349314;
          v45 = v12;
          v46 = 2112;
          v47 = v13;
          _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change InterSensor indicator state to appeared from: %@", &v44, 0x16u);
        }

        [v7 setInterSensorIndicatorPhase:3];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  if ([v7 interSensorIndicatorPhase] == 1)
  {
    v14 = *(a1 + 32);
    if (v14[7])
    {
      [&unk_28336F620 bs_CGFloatValue];
      if ([v14 _milestoneDidReachExpectedMilestone:*(*(a1 + 32) + 56) property:*(a1 + 40) context:?])
      {
        v15 = *(a1 + 32);
        v16 = *(v15 + 56);
        *(v15 + 56) = 0;

        v17 = SBLogSystemAperturePreferencesStackIndicator();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [*(a1 + 40) queryIteration];
          v19 = NSStringFromSBSAIndicatorAppearancePhase([v7 interSensorIndicatorPhase]);
          v44 = 134349314;
          v45 = v18;
          v46 = 2112;
          v47 = v19;
          _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change InterSensor indicator state to disappeared from: %@", &v44, 0x16u);
        }

        [v7 setInterSensorIndicatorPhase:0];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  if ([v7 microIndicatorPhase] == 2)
  {
    v20 = *(a1 + 32);
    if (v20[5])
    {
      [&unk_28336F620 bs_CGFloatValue];
      if ([v20 _milestoneDidReachExpectedMilestone:*(*(a1 + 32) + 40) property:*(a1 + 40) context:?])
      {
        v21 = *(a1 + 32);
        v22 = *(v21 + 40);
        *(v21 + 40) = 0;

        v23 = SBLogSystemAperturePreferencesStackIndicator();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [*(a1 + 40) queryIteration];
          v25 = NSStringFromSBSAIndicatorAppearancePhase([v7 microIndicatorPhase]);
          v44 = 134349314;
          v45 = v24;
          v46 = 2112;
          v47 = v25;
          _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change micro indicator state to appeared from: %@", &v44, 0x16u);
        }

        [v7 setMicroIndicatorPhase:3];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  if ([v7 microIndicatorPhase] == 1)
  {
    v26 = *(a1 + 32);
    if (v26[8])
    {
      [&unk_28336F620 bs_CGFloatValue];
      if ([v26 _milestoneDidReachExpectedMilestone:*(*(a1 + 32) + 64) property:*(a1 + 40) context:?])
      {
        v27 = *(a1 + 32);
        v28 = *(v27 + 64);
        *(v27 + 64) = 0;

        v29 = SBLogSystemAperturePreferencesStackIndicator();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [*(a1 + 40) queryIteration];
          v31 = NSStringFromSBSAIndicatorAppearancePhase([v7 microIndicatorPhase]);
          v44 = 134349314;
          v45 = v30;
          v46 = 2112;
          v47 = v31;
          _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change micro indicator state to disappeared from: %@", &v44, 0x16u);
        }

        [v7 setMicroIndicatorPhase:0];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  if ([v7 microIndicatorEjectionPhase] == 1)
  {
    v32 = *(a1 + 32);
    if (v32[6])
    {
      [&unk_28336F620 bs_CGFloatValue];
      if ([v32 _milestoneDidReachExpectedMilestone:*(*(a1 + 32) + 48) property:*(a1 + 40) context:?])
      {
        v33 = *(a1 + 32);
        v34 = *(v33 + 48);
        *(v33 + 48) = 0;

        v35 = SBLogSystemAperturePreferencesStackIndicator();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [*(a1 + 40) queryIteration];
          v37 = NSStringFromSBSAIndicatorEjectionPhase([v7 microIndicatorEjectionPhase]);
          v44 = 134349314;
          v45 = v36;
          v46 = 2112;
          v47 = v37;
          _os_log_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change micro indicator ejecting state to accepted from: %@", &v44, 0x16u);
        }

        [v7 setMicroIndicatorEjectionPhase:0];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  if ([v7 microIndicatorEjectionPhase] == 2)
  {
    v38 = *(a1 + 32);
    if (v38[9])
    {
      [&unk_28336F620 bs_CGFloatValue];
      if ([v38 _milestoneDidReachExpectedMilestone:*(*(a1 + 32) + 72) property:*(a1 + 40) context:?])
      {
        v39 = *(a1 + 32);
        v40 = *(v39 + 72);
        *(v39 + 72) = 0;

        v41 = SBLogSystemAperturePreferencesStackIndicator();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [*(a1 + 40) queryIteration];
          v43 = NSStringFromSBSAIndicatorEjectionPhase([v7 microIndicatorEjectionPhase]);
          v44 = 134349314;
          v45 = v42;
          v46 = 2112;
          v47 = v43;
          _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change micro indicator ejecting state to ejected from: %@", &v44, 0x16u);
        }

        [v7 setMicroIndicatorEjectionPhase:3];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }
}

- (BOOL)_milestoneDidReachExpectedMilestone:(double)a3 property:(id)a4 context:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = [v8 animatedTransitionResults];
  v10 = [v9 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (!v10)
  {

    goto LABEL_15;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v40;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v40 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v39 + 1) + 8 * i);
      v16 = [v15 associatedInterfaceElementPropertyIdentity];
      v17 = BSEqualObjects();

      if (v17 && (([v15 isTransitionEndTargeted] & 1) != 0 || (objc_msgSend(v15, "finished") & 1) == 0))
      {
        v12 = 1;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v39 objects:v51 count:16];
  }

  while (v11);

  if ((v12 & 1) == 0)
  {
LABEL_15:
    v19 = [v8 preferences];
    v20 = [v19 indicatorElementDescription];
    v21 = [v20 interfaceElementIdentifier];
    v22 = [v7 associatedInterfaceElementIdentifier];
    v23 = [v21 isEqual:v22];
    v24 = v23;
    if (v23)
    {
    }

    else
    {
      v37 = v23;
      v38 = v8;
      v25 = [v8 preferences];
      v26 = [v25 indicatorContainerViewDescription];
      v27 = [v26 interfaceElementIdentifier];
      v28 = [v7 associatedInterfaceElementIdentifier];
      v29 = [v27 isEqual:v28];

      if (v29)
      {
        v18 = 0;
        v8 = v38;
        goto LABEL_23;
      }

      v19 = SBLogSystemAperturePreferencesStackIndicator();
      v8 = v38;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v31 = [v38 queryIteration];
        v32 = [v7 description];
        v33 = [v38 preferences];
        v34 = [v33 maintainedPreferences];
        v35 = [v34 indicatorAppearanceStateContext];
        v36 = [v35 description];
        *buf = 134349826;
        v44 = v31;
        v45 = 2112;
        v46 = v32;
        v47 = 2048;
        v48 = a3;
        v49 = 2112;
        v50 = v36;
        _os_log_error_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_ERROR, "[%{public}lu] Container property identifier %@ is no longer being tracked for milestone: %f; assume that indicates the milestone is completed and we can push forward our state machine. IndicatorAppearStateContext is currently: %@", buf, 0x2Au);
      }

      v24 = v37;
    }

    v18 = v24 ^ 1;

    goto LABEL_23;
  }

  v18 = 1;
LABEL_23:

  return v18;
}

- (BOOL)_areBothIndicatorsHiddenWithIndicatorAppearanceStateContext:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 microIndicatorPhase])
    {
      v5 = 0;
    }

    else
    {
      v5 = [v4 interSensorIndicatorPhase] == 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)preferencesFromContext:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInMethod:v1 object:v0 file:@"SBSAIndicatorAppearanceStateTransitionProvider.m" lineNumber:46 description:{@"Unexpected class – expected '%@', got '%@'", v2, v4}];
}

- (void)preferencesFromContext:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)preferencesFromContext:(void *)a1 .cold.3(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)preferencesFromContext:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBSAIndicatorAppearanceStateTransitionProvider.m" lineNumber:91 description:@"there shouldn't be a container"];
}

- (void)preferencesFromContext:.cold.5()
{
  OUTLINED_FUNCTION_5_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBSAIndicatorAppearanceStateTransitionProvider.m" lineNumber:99 description:{@"Unexpected class – expected '%@', got '%@'", v3, v5}];
}

void __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaindicatore.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke_2_cold_1()
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

void __109__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToAppearingIfNecessary_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaindicatora.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __112__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToDisappearingIfNecessary_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaindicatora.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __114__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToEjectingAndAppearingIfNecessary_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaindicatora.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __118__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToAcceptingAndDisappearingIfNecessary_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaindicatora.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

- (void)_startMicroMitosisIfNecessary:context:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  v1 = OUTLINED_FUNCTION_11_1();
  v2 = NSStringFromSBSAIndicatorMitosisTransitionProviderType(v1);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_startMicroMitosisIfNecessary:context:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  [v1 queryIteration];
  v2 = [OUTLINED_FUNCTION_11_1() type];
  v3 = NSStringFromSBSAIndicatorMitosisTransitionProviderType(v2);
  v4 = [v0 debugDescription];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)_startMicroRecombinationIfNecessary:context:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  v1 = OUTLINED_FUNCTION_11_1();
  v2 = NSStringFromSBSAIndicatorMitosisTransitionProviderType(v1);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_startMicroRecombinationIfNecessary:context:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  [v1 queryIteration];
  v2 = [OUTLINED_FUNCTION_11_1() type];
  v3 = NSStringFromSBSAIndicatorMitosisTransitionProviderType(v2);
  v4 = [v0 debugDescription];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_1()
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

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}lu] Creating appearance milestone for intersensor region: disappearance milestone exists", v3, v4, v5, v6, v7);
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}lu] Creating disappearance milestone for intersensor region: appearance milestone exists", v3, v4, v5, v6, v7);
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}lu] Creating appearance milestone for micro region: disappearance milestone exists", v3, v4, v5, v6, v7);
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_5(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}lu] Creating disappearance milestone for micro region: appearance milestone exists", v3, v4, v5, v6, v7);
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}lu] Creating appearance milestone for micro region: ejected milestone exists", v3, v4, v5, v6, v7);
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_7(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}lu] Creating disappearance milestone for micro region: accepted milestone exists", v3, v4, v5, v6, v7);
}

void __103__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesForCompletedMilestonesWithContext___block_invoke_cold_1()
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