@interface SBSAContainerPressBehaviorProvider
- (id)_contentInteractionBeginBehaviorSettings;
- (id)preferencesFromContext:(id)a3;
@end

@implementation SBSAContainerPressBehaviorProvider

- (id)preferencesFromContext:(id)a3
{
  v142[2] = *MEMORY[0x277D85DE8];
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
      [(SBSAContainerPressBehaviorProvider *)v6 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 preferences];
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

  v14 = [v8 gestureDescriptions];
  v15 = [v14 bs_firstObjectPassingTest:&__block_literal_global_429];

  if (v15)
  {
    objc_storeStrong(&self->_activeGestureDescription, v15);
  }

  if (self->_activeGestureDescription)
  {
    v16 = [v8 elapsedTimerDescriptions];
    v110 = v16;
    if ([v16 count])
    {
      v135[0] = MEMORY[0x277D85DD0];
      v135[1] = 3221225472;
      v135[2] = __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_2;
      v135[3] = &unk_2783BD9C0;
      v135[4] = self;
      if ([v16 indexOfObjectPassingTest:v135] != 0x7FFFFFFFFFFFFFFFLL)
      {
        identifierOfActiveTimer = self->_identifierOfActiveTimer;
        self->_identifierOfActiveTimer = 0;

        v104 = v15;
        v18 = [SBSAContainerPressAction alloc];
        v102 = [(SBSAGestureDescription *)self->_activeGestureDescription associatedInterfaceElementIdentifier];
        v141 = @"containerPressBehaviorProvider.pressAction";
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
        v20 = [(SBSAContainerStaticTouchAction *)v18 initWithAssociatedInterfaceElementIdentifier:v102 reasons:v19];
        v142[0] = v20;
        v106 = v4;
        v21 = [SBSAImpactFeedbackAction alloc];
        v140 = @"containerPressBehaviorProvider.pressAction";
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
        v23 = [(SBSAImpactFeedbackAction *)v21 initWithImpactFeedbackStyle:2 prepareOnly:0 reasons:v22];
        v142[1] = v23;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:2];
        v25 = [v13 copyByAddingActions:v24];

        v4 = v106;
        v15 = v104;

        v13 = [v25 copyWithCancellationOfGestureOfClass:objc_opt_class() context:v8];
      }
    }

    v26 = [(SBSAGestureDescription *)self->_activeGestureDescription gestureRecognizerState];
    v27 = v26;
    if (v26 >= 3)
    {
      if (v26 == 3 && self->_identifierOfActiveTimer)
      {
        v28 = [SBSAContainerTapAction alloc];
        v107 = [(SBSAGestureDescription *)self->_activeGestureDescription associatedInterfaceElementIdentifier];
        v138 = @"containerPressBehaviorProvider.tapAction";
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:1];
        v30 = [(SBSAContainerStaticTouchAction *)v28 initWithAssociatedInterfaceElementIdentifier:v107 reasons:v29];
        v139 = v30;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
        v32 = [v13 copyByAddingActions:v31];
        v33 = v13;
        v34 = v15;
        v35 = v32;

        v36 = v35;
        v15 = v34;
        v13 = v36;
      }

      activeGestureDescription = self->_activeGestureDescription;
      self->_activeGestureDescription = 0;

      v38 = self->_identifierOfActiveTimer;
      self->_identifierOfActiveTimer = 0;
    }

    if (self->_activeGestureDescription)
    {
      if (v27 == 1)
      {
        if (!self->_identifierOfActiveTimer)
        {
          v39 = [[SBSATimerDescription alloc] initWithTimeInterval:0.2];
          v40 = [(SBSATimerDescription *)v39 timerDescriptionIdentifier];
          v41 = self->_identifierOfActiveTimer;
          self->_identifierOfActiveTimer = v40;

          v132[0] = MEMORY[0x277D85DD0];
          v132[1] = 3221225472;
          v132[2] = __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_3;
          v132[3] = &unk_2783AD750;
          v134 = a2;
          v132[4] = self;
          v133 = v39;
          v108 = v39;
          v42 = [v13 copyWithBlock:v132];

          v43 = [SBSAImpactFeedbackAction alloc];
          v136 = @"containerPressBehaviorProvider.pressAction";
          v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
          v45 = [(SBSAImpactFeedbackAction *)v43 initWithImpactFeedbackStyle:2 prepareOnly:1 reasons:v44];
          v137 = v45;
          v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
          v13 = [v42 copyByAddingActions:v46];
        }

LABEL_31:
        v47 = [v13 containerViewDescriptions];
        v48 = v13;
        v49 = [v47 mutableCopy];

        v131[0] = MEMORY[0x277D85DD0];
        v131[1] = 3221225472;
        v131[2] = __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_4;
        v131[3] = &unk_2783B0210;
        v131[4] = self;
        v50 = [v49 bs_firstObjectPassingTest:v131];
        if (!v50)
        {
          v88 = v48;
LABEL_44:

          v87 = v110;
          v13 = v88;
          goto LABEL_45;
        }

        v109 = v4;
        v127[0] = MEMORY[0x277D85DD0];
        v127[1] = 3221225472;
        v127[2] = __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_5;
        v127[3] = &unk_2783AD778;
        v130 = a2;
        v127[4] = self;
        v100 = v50;
        v51 = v50;
        v128 = v51;
        v52 = v8;
        v129 = v52;
        v53 = [v51 copyWithBlock:v127];
        v54 = [v49 indexOfObject:v51];
        v105 = v53;
        [v49 replaceObjectAtIndex:v54 withObject:v53];
        v103 = v48;
        v55 = [v48 maintainedPreferences];
        v56 = [v55 indicatorAppearanceStateContext];

        v57 = [v56 activeIndicatorElementContext];
        v101 = v56;
        if ([v57 supportsMicroIndicatorPosition] && v56)
        {
          v58 = [v49 count] - 1;

          if (v54 == v58)
          {
            v59 = *(MEMORY[0x277CBF2C0] + 16);
            v124 = *MEMORY[0x277CBF2C0];
            v125 = v59;
            v126 = *(MEMORY[0x277CBF2C0] + 32);
            v60 = [v52 elementContexts];
            v61 = SBSAElementContextAssociatedWithContainerViewDescription(v105, v60, 0);

            v62 = 0;
            if ([v61 layoutMode] == 3)
            {
              v62 = [v61 systemApertureCustomLayout];
            }

            v99 = v61;
            v63 = v15;
            [v105 bounds];
            [v105 center];
            SBUnintegralizedRectCenteredAboutPoint();
            SBSAMicroIndicatorFrameNearContainer(v62, [v101 microIndicatorEjectionPhase] > 1, &v124, v101, v52, v64, v65, v66, v67);
            BSRectWithSize();
            v69 = v68;
            v71 = v70;
            v73 = v72;
            v75 = v74;
            UIRectGetCenter();
            v98 = v76;
            v78 = v77;
            UIRectGetCenter();
            v80 = v79;
            v82 = v81;
            v83 = [v103 indicatorContainerViewDescription];
            v123[0] = MEMORY[0x277D85DD0];
            v123[1] = 3221225472;
            v123[2] = __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_6;
            v123[3] = &unk_2783C3D58;
            v123[4] = self;
            v123[5] = a2;
            v123[6] = v69;
            v123[7] = v71;
            v123[8] = v73;
            v123[9] = v75;
            v123[10] = v98;
            v123[11] = v78;
            v123[12] = v80;
            v123[13] = v82;
            v84 = [v83 copyWithBlock:v123];

            v85 = [v103 indicatorElementDescription];
            v119[0] = MEMORY[0x277D85DD0];
            v119[1] = 3221225472;
            v119[2] = __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_7;
            v119[3] = &unk_2783C3D80;
            v119[4] = self;
            v119[5] = a2;
            v120 = v124;
            v121 = v125;
            v122 = v126;
            v86 = [v85 copyWithBlock:v119];

            goto LABEL_43;
          }

          v63 = v15;
        }

        else
        {
          v63 = v15;
        }

        v86 = 0;
        v84 = 0;
LABEL_43:
        v113[0] = MEMORY[0x277D85DD0];
        v113[1] = 3221225472;
        v113[2] = __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_8;
        v113[3] = &unk_2783BA0D8;
        v118 = a2;
        v113[4] = self;
        v114 = v49;
        v115 = v51;
        v116 = v84;
        v117 = v86;
        v89 = v84;
        v90 = v86;
        v91 = [v103 copyWithBlock:v113];

        v8 = [v52 copyByAddingFlags:1 debugRequestingProvider:self];
        v88 = v91;
        v4 = v109;
        v15 = v63;
        v50 = v100;
        goto LABEL_44;
      }

      if ((v27 - 1) <= 1)
      {
        goto LABEL_31;
      }
    }

    v87 = v110;
LABEL_45:
  }

  v92 = [v8 copyByUpdatingPreferences:v13];

  v112.receiver = self;
  v112.super_class = SBSAContainerPressBehaviorProvider;
  v93 = [(SBSABasePreferencesProvider *)&v112 preferencesFromContext:v92];
  v94 = objc_opt_class();
  v95 = v93;
  if (v94)
  {
    if (objc_opt_isKindOfClass())
    {
      v94 = v95;
    }

    else
    {
      v94 = 0;
    }
  }

  v96 = v94;

  return v94;
}

uint64_t __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 timerDescriptionIdentifier];
  v3 = BSEqualObjects();

  return v3;
}

void __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
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
      __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_3_cold_1();
      v3 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 timerDescriptions];
  if (v8)
  {
    v9 = [v7 timerDescriptions];
    v10 = [v9 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  [v10 addObject:*(a1 + 40)];
  [v7 setTimerDescriptions:v10];
}

uint64_t __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = a2;
  v4 = [v2 associatedInterfaceElementIdentifier];
  v5 = [v3 interfaceElementIdentifier];

  v6 = BSEqualObjects();
  return v6;
}

void __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_5(uint64_t a1, void *a2)
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
      __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_5_cold_1();
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
  SBSAScaledAndClippedFrameByScalingDimensions(&v18, *(a1 + 48), v9, v11, v13, v15, v16, v17, 1.2, 1.2);
  BSRectWithSize();
  [v7 setBounds:?];
  [v7 setContentScale:{v18, v19}];
  [*(a1 + 40) bounds];
  [v7 setContentBounds:?];
  UIRectGetCenter();
  [v7 setContentCenter:?];
}

void __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_6(double *a1, void *a2)
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
      __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_6_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setBounds:{a1[6], a1[7], a1[8], a1[9]}];
  [v6 setCenter:{a1[10], a1[11]}];
  [v6 setContentCenter:{a1[12], a1[13]}];
}

void __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_7(_OWORD *a1, void *a2)
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
      __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_7_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[4];
  v9[0] = a1[3];
  v9[1] = v8;
  v9[2] = a1[5];
  [v7 setIndicatorViewTransform:v9];
}

void __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v38 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v38;
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

    v3 = v38;
    if (!v7)
    {
      __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_8_cold_1();
      v3 = v38;
    }
  }

  else
  {
    v7 = 0;
  }

  [v7 setContainerViewDescriptions:*(a1 + 40)];
  v8 = objc_opt_class();
  v9 = [*(a1 + 32) _contentInteractionBeginBehaviorSettings];
  v10 = [v8 newAnimatedTransitionDescriptionWithBehaviorSettings:v9];

  v11 = [SBSAInterfaceElementPropertyIdentity alloc];
  v12 = [*(a1 + 48) interfaceElementIdentifier];
  v13 = [(SBSAInterfaceElementPropertyIdentity *)v11 initWithAssociatedInterfaceElementIdentifier:v12 andProperty:@"bounds"];

  [v7 setAnimatedTransitionDescription:v10 forProperty:v13 withMilestones:0];
  v14 = [SBSAInterfaceElementPropertyIdentity alloc];
  v15 = [*(a1 + 48) interfaceElementIdentifier];
  v16 = [(SBSAInterfaceElementPropertyIdentity *)v14 initWithAssociatedInterfaceElementIdentifier:v15 andProperty:@"contentScale"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v13 withProperty:v16 withMilestones:0];

  v17 = [SBSAInterfaceElementPropertyIdentity alloc];
  v18 = [*(a1 + 48) interfaceElementIdentifier];
  v19 = [(SBSAInterfaceElementPropertyIdentity *)v17 initWithAssociatedInterfaceElementIdentifier:v18 andProperty:@"contentBounds"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v13 withProperty:v19 withMilestones:0];

  v20 = [SBSAInterfaceElementPropertyIdentity alloc];
  v21 = [*(a1 + 48) interfaceElementIdentifier];
  v22 = [(SBSAInterfaceElementPropertyIdentity *)v20 initWithAssociatedInterfaceElementIdentifier:v21 andProperty:@"contentCenter"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v13 withProperty:v22 withMilestones:0];

  if (*(a1 + 56))
  {
    [v7 setIndicatorContainerViewDescription:?];
    v23 = [SBSAInterfaceElementPropertyIdentity alloc];
    v24 = [*(a1 + 56) interfaceElementIdentifier];
    v25 = [(SBSAInterfaceElementPropertyIdentity *)v23 initWithAssociatedInterfaceElementIdentifier:v24 andProperty:@"bounds"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v13 withProperty:v25 withMilestones:0];

    v26 = [SBSAInterfaceElementPropertyIdentity alloc];
    v27 = [*(a1 + 56) interfaceElementIdentifier];
    v28 = [(SBSAInterfaceElementPropertyIdentity *)v26 initWithAssociatedInterfaceElementIdentifier:v27 andProperty:@"center"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v13 withProperty:v28 withMilestones:0];

    v29 = [SBSAInterfaceElementPropertyIdentity alloc];
    v30 = [*(a1 + 56) interfaceElementIdentifier];
    v31 = [(SBSAInterfaceElementPropertyIdentity *)v29 initWithAssociatedInterfaceElementIdentifier:v30 andProperty:@"contentBounds"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v13 withProperty:v31 withMilestones:0];

    v32 = [SBSAInterfaceElementPropertyIdentity alloc];
    v33 = [*(a1 + 56) interfaceElementIdentifier];
    v34 = [(SBSAInterfaceElementPropertyIdentity *)v32 initWithAssociatedInterfaceElementIdentifier:v33 andProperty:@"contentCenter"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v13 withProperty:v34 withMilestones:0];
  }

  if (*(a1 + 64))
  {
    [v7 setIndicatorElementDescription:?];
    v35 = [SBSAInterfaceElementPropertyIdentity alloc];
    v36 = [*(a1 + 64) interfaceElementIdentifier];
    v37 = [(SBSAInterfaceElementPropertyIdentity *)v35 initWithAssociatedInterfaceElementIdentifier:v36 andProperty:@"indicatorViewTransform"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v13 withProperty:v37 withMilestones:0];
  }
}

- (id)_contentInteractionBeginBehaviorSettings
{
  v2 = [objc_opt_class() settings];
  v3 = [v2 contentInteractionBeginBehaviorSettings];

  return v3;
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSAContainerPressBehaviorProvider.m" lineNumber:53 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_3_cold_1()
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

void __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_6_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_7_cold_1()
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

void __61__SBSAContainerPressBehaviorProvider_preferencesFromContext___block_invoke_8_cold_1()
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

@end