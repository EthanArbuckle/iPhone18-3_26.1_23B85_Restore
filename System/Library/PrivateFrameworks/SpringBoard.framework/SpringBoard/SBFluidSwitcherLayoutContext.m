@interface SBFluidSwitcherLayoutContext
- (BOOL)_shouldUpdateSwitcherModelBasedOnTimeOrUserInteraction;
- (BOOL)shouldAddAppLayoutToFront:(id)a3 forTransitionWithContext:(id)a4 recentAppLayouts:(id)a5 transitionCompleted:(BOOL)a6 windowManagementContext:(id)a7;
- (BOOL)shouldAddAppLayoutToFront:(id)a3 whenBeginningGestureOfType:(int64_t)a4 layoutContext:(id)a5;
- (BOOL)shouldAddAppLayoutToFront:(id)a3 whenEndingGestureOfType:(int64_t)a4 layoutContext:(id)a5;
- (SBFluidSwitcherLayoutContext)initWithLayoutState:(id)a3;
- (double)secondsSinceLastTransitionCompletion;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)supportedOrientationsForGesture;
- (void)dealloc;
- (void)didEndTransitioningToLayoutStateWithContext:(id)a3;
- (void)eventSource:(id)a3 userTouchedApplication:(id)a4;
- (void)setActiveGesture:(id)a3;
- (void)willBeginTransitioningToLayoutStateWithContext:(id)a3;
@end

@implementation SBFluidSwitcherLayoutContext

- (BOOL)_shouldUpdateSwitcherModelBasedOnTimeOrUserInteraction
{
  v3 = [(SBFluidSwitcherLayoutContext *)self layoutState];
  if ([v3 unlockedEnvironmentMode] == 3 && (objc_msgSend(v3, "isFloatingSwitcherVisible") & 1) == 0)
  {
    v4 = [(SBFluidSwitcherLayoutContext *)self activeTransitionContext];
    if (v4)
    {
    }

    else
    {
      v5 = [(SBFluidSwitcherLayoutContext *)self activeGesture];

      if (!v5)
      {
        v8 = [(SBFluidSwitcherLayoutContext *)self lastTransitionCompletionDate];
        [v8 timeIntervalSinceNow];
        v10 = -v9;

        [(SBHomeGestureSettings *)self->_homeGestureSettings secondsToResetSwitcherListAfterTransition];
        if (v11 < v10 || self->_hasUserInteractedWithActiveApplication && [(SBHomeGestureSettings *)self->_homeGestureSettings resetSwitcherListAfterAppInteraction])
        {
          v6 = 1;
          goto LABEL_7;
        }
      }
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (double)secondsSinceLastTransitionCompletion
{
  v2 = [(SBFluidSwitcherLayoutContext *)self lastTransitionCompletionDate];
  [v2 timeIntervalSinceNow];
  v4 = -v3;

  return v4;
}

- (SBFluidSwitcherLayoutContext)initWithLayoutState:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherLayoutContext;
  v6 = [(SBFluidSwitcherLayoutContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentLayoutState, a3);
    objc_storeStrong(&v7->_previousLayoutState, a3);
    v7->_previousInterfaceOrientation = [v5 interfaceOrientation];
    v8 = +[SBHomeGestureDomain rootSettings];
    homeGestureSettings = v7->_homeGestureSettings;
    v7->_homeGestureSettings = v8;

    v10 = +[SBAppInteractionEventSourceManager sharedInstance];
    [v10 addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[SBAppInteractionEventSourceManager sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBFluidSwitcherLayoutContext;
  [(SBFluidSwitcherLayoutContext *)&v4 dealloc];
}

- (void)setActiveGesture:(id)a3
{
  v5 = a3;
  if (self->_activeGesture != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_activeGesture, a3);
    activeTransitionContext = self->_activeTransitionContext;
    self->_activeTransitionContext = 0;

    v5 = v7;
  }
}

- (void)willBeginTransitioningToLayoutStateWithContext:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_activeTransitionContext, a3);
  v5 = [v11 request];
  v6 = [v5 source];

  if ((v6 - 27) > 0x32 || ((1 << (v6 - 27)) & 0x4020000000001) == 0)
  {
    activeGesture = self->_activeGesture;
    self->_activeGesture = 0;
  }

  v9 = [v11 layoutState];
  v10 = [v11 previousLayoutState];
  objc_storeStrong(&self->_currentLayoutState, v9);
  if (([v9 isEqual:v10] & 1) == 0)
  {
    objc_storeStrong(&self->_previousLayoutState, v10);
    self->_previousInterfaceOrientation = [v10 interfaceOrientation];
  }

  if (![(SBMainDisplayLayoutState *)self->_currentLayoutState isEqual:self->_previousLayoutState])
  {
    self->_hasUserInteractedWithActiveApplication = 0;
  }
}

- (void)didEndTransitioningToLayoutStateWithContext:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  lastTransitionCompletionDate = self->_lastTransitionCompletionDate;
  self->_lastTransitionCompletionDate = v6;

  obj = [v5 layoutState];
  v8 = [v5 previousLayoutState];

  objc_storeStrong(&self->_currentLayoutState, obj);
  if (([obj isEqual:v8] & 1) == 0)
  {
    objc_storeStrong(&self->_previousLayoutState, v8);
    self->_previousInterfaceOrientation = [v8 interfaceOrientation];
  }

  if (![(SBMainDisplayLayoutState *)self->_currentLayoutState isEqual:self->_previousLayoutState])
  {
    self->_hasUserInteractedWithActiveApplication = 0;
  }

  activeTransitionContext = self->_activeTransitionContext;
  self->_activeTransitionContext = 0;
}

- (unint64_t)supportedOrientationsForGesture
{
  v4 = [(SBFluidSwitcherLayoutContext *)self layoutState];
  v5 = 1 << [v4 interfaceOrientation];

  v6 = [(SBFluidSwitcherLayoutContext *)self activeTransitionContext];
  [(SBFluidSwitcherLayoutContext *)self secondsSinceLastTransitionCompletion];
  if (!v6)
  {
    v8 = v7;
    [(SBHomeGestureSettings *)self->_homeGestureSettings secondsToAllowMultipleEdges];
    if (v8 >= v9)
    {
      goto LABEL_32;
    }
  }

  if (self->_hasUserInteractedWithActiveApplication && [(SBHomeGestureSettings *)self->_homeGestureSettings preventMultipleEdgesAfterAppInteraction])
  {
    goto LABEL_32;
  }

  if (v6)
  {
    v10 = [v6 previousLayoutState];
    v11 = [v6 layoutState];
    v12 = [(SBLayoutState *)v11 interfaceOrientation];
  }

  else
  {
    v10 = self->_previousLayoutState;
    v11 = self->_currentLayoutState;
    v12 = [(SBLayoutState *)self->_currentLayoutState interfaceOrientation];
  }

  v13 = v12;
  v14 = [(SBLayoutState *)v10 elements];
  v27 = v5;
  if (!v14)
  {
    v2 = [(SBLayoutState *)v11 elements];
    if (![v2 count])
    {
      v17 = 1;
LABEL_13:

      goto LABEL_14;
    }
  }

  v15 = [(SBLayoutState *)v10 elements];
  v16 = [(SBLayoutState *)v11 elements];
  v17 = [v15 isEqual:v16];

  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_14:

  v18 = [(SBMainDisplayLayoutState *)v10 unlockedEnvironmentMode];
  v19 = [(SBMainDisplayLayoutState *)v11 unlockedEnvironmentMode];
  if (v26 == v13)
  {
    v20 = 0;
  }

  else if (v18 == 3 && v19 == 3 || v19 == 1)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  v23 = [(SBFluidSwitcherLayoutContext *)self layoutState];
  v24 = [v23 unlockedEnvironmentMode] == 1 && objc_msgSend(SBApp, "homeScreenRotationStyle") != 0;

  if ((v20 | v24))
  {
    v5 = v27;
  }

  else
  {
    v5 = ((1 << v13) | (1 << v26) | v27);
  }

LABEL_32:
  return v5;
}

- (BOOL)shouldAddAppLayoutToFront:(id)a3 whenBeginningGestureOfType:(int64_t)a4 layoutContext:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    [SBFluidSwitcherLayoutContext shouldAddAppLayoutToFront:a2 whenBeginningGestureOfType:self layoutContext:?];
  }

  v11 = [(SBFluidSwitcherLayoutContext *)self layoutState];
  if (a4 == 4)
  {
    goto LABEL_8;
  }

  if (a4 == 8)
  {
    v12 = 0;
    goto LABEL_17;
  }

  v13 = [v9 environment];
  if (a4 == 6 && v13 == 2)
  {
LABEL_8:
    v12 = 1;
    goto LABEL_17;
  }

  v14 = [v11 windowPickerRole];
  v15 = [v11 bundleIDShowingAppExpose];
  v12 = [v9 environment] == 2 && v14 == 3 || objc_msgSend(v9, "environment") == 1 && (SBLayoutRoleIsValidForSplitView(v14) & 1) != 0 || objc_msgSend(v9, "environment") == 1 && v15 || -[SBFluidSwitcherLayoutContext _shouldUpdateSwitcherModelBasedOnTimeOrUserInteraction](self, "_shouldUpdateSwitcherModelBasedOnTimeOrUserInteraction");

LABEL_17:
  return v12;
}

- (BOOL)shouldAddAppLayoutToFront:(id)a3 whenEndingGestureOfType:(int64_t)a4 layoutContext:(id)a5
{
  v7 = a5;
  v8 = [a3 environment];
  v9 = [v7 previousLayoutState];
  IsStashed = SBFloatingConfigurationIsStashed([v9 floatingConfiguration]);

  v11 = [v7 layoutState];

  v12 = SBFloatingConfigurationIsStashed([v11 floatingConfiguration]);
  v14 = a4 != 3 || v8 != 2;
  return !v14 && v12 && !IsStashed;
}

- (BOOL)shouldAddAppLayoutToFront:(id)a3 forTransitionWithContext:(id)a4 recentAppLayouts:(id)a5 transitionCompleted:(BOOL)a6 windowManagementContext:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v48 = a7;
  if (!v13)
  {
    [SBFluidSwitcherLayoutContext shouldAddAppLayoutToFront:a2 forTransitionWithContext:self recentAppLayouts:? transitionCompleted:? windowManagementContext:?];
  }

  v16 = [v14 request];
  v17 = [v14 layoutState];
  v18 = [v14 previousLayoutState];
  v19 = [v16 source];
  if (v19 != 14)
  {
    v21 = v19;
    v44 = self;
    v45 = a6;
    v22 = [v18 elements];
    v23 = [v17 elements];
    v47 = v15;
    v24 = [v15 firstObject];
    v46 = v22;
    if (BSEqualObjects())
    {
      v25 = BSEqualSets();

      v26 = v23;
      if (v25)
      {
        goto LABEL_7;
      }
    }

    else
    {

      v26 = v23;
    }

    v27 = [v14 preventSwitcherRecencyModelUpdates];
    LOBYTE(v20) = 0;
    v28 = !v45;
    if (v21 != 15)
    {
      v28 = 0;
    }

    if (v28)
    {
      goto LABEL_45;
    }

    v15 = v47;
    if (v27)
    {
LABEL_46:

      goto LABEL_47;
    }

    if ([v18 unlockedEnvironmentMode] != 2 || (v29 = objc_msgSend(v17, "unlockedEnvironmentMode"), v21 != 27) || v29 != 2)
    {
      if (v21 != 63)
      {
        if (v21 == 56)
        {
LABEL_29:
          LOBYTE(v20) = 1;
          goto LABEL_46;
        }

        if (v21 == 52)
        {
          v30 = [v17 appLayout];
          v20 = [v30 itemForLayoutRole:4];

          v15 = v47;
          if (!v20)
          {
            goto LABEL_46;
          }
        }

        else if (v21 - 11 < 2)
        {
          v31 = v21 - 11;
          v32 = v26;
          if (([v47 containsObject:v13] & 1) != 0 || objc_msgSend(v48, "isFlexibleWindowingEnabled") && (objc_msgSend(v17, "layoutAttributesMap"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "allValues"), v34 = objc_claimAutoreleasedReturnValue(), LODWORD(v44) = objc_msgSend(v34, "bs_containsObjectPassingTest:", &__block_literal_global_65), v34, v33, v15 = v47, v44))
          {
LABEL_31:
            if (v45)
            {
              v26 = v32;
              if (v31 > 1)
              {
                goto LABEL_29;
              }

              v35 = [v18 elements];
              if (![v35 count])
              {

                goto LABEL_29;
              }

              v36 = [v17 elements];
              v37 = [v36 count];

              if (v37)
              {
                if ([v48 isFlexibleWindowingEnabled])
                {
                  v38 = [v17 elements];
                  v49[0] = MEMORY[0x277D85DD0];
                  v49[1] = 3221225472;
                  v49[2] = __144__SBFluidSwitcherLayoutContext_shouldAddAppLayoutToFront_forTransitionWithContext_recentAppLayouts_transitionCompleted_windowManagementContext___block_invoke_2;
                  v49[3] = &unk_2783AC4F8;
                  v50 = v17;
                  v39 = [v38 bs_firstObjectPassingTest:v49];

                  if (v39)
                  {
                    v40 = [v18 elements];
                    LOBYTE(v20) = [v40 containsObject:v39] ^ 1;

                    goto LABEL_45;
                  }
                }

LABEL_7:
                LOBYTE(v20) = 0;
LABEL_45:
                v15 = v47;
                goto LABEL_46;
              }

LABEL_44:
              LOBYTE(v20) = 1;
              goto LABEL_45;
            }

            v26 = v32;
            if ([v13 environment] == 2)
            {
              if ([v18 isFloatingSwitcherVisible] & 1) == 0 && (objc_msgSend(v17, "isFloatingSwitcherVisible"))
              {
                goto LABEL_44;
              }

              v41 = [v18 floatingAppLayout];

              if (!v41)
              {
                goto LABEL_44;
              }
            }

            if ([v18 unlockedEnvironmentMode] == 1 && objc_msgSend(v17, "unlockedEnvironmentMode") == 3)
            {
              goto LABEL_44;
            }

            v15 = v47;
            if ([v18 unlockedEnvironmentMode] == 3)
            {
              v43 = [v18 isFloatingSwitcherVisible];
            }

            else
            {
              v43 = 1;
            }

            if ([v17 unlockedEnvironmentMode] == 3 && ((v43 | objc_msgSend(v17, "isFloatingSwitcherVisible")) & 1) == 0)
            {
              if (v21 < 0x10)
              {
                LODWORD(v20) = 0x67FFu >> v21;
                goto LABEL_46;
              }

              goto LABEL_29;
            }

            goto LABEL_22;
          }

LABEL_27:
          LOBYTE(v20) = 1;
          v26 = v32;
          goto LABEL_46;
        }

LABEL_28:
        if ([(SBFluidSwitcherLayoutContext *)v44 _shouldUpdateSwitcherModelBasedOnTimeOrUserInteraction])
        {
          goto LABEL_29;
        }

        v31 = v21 - 11;
        v32 = v26;
        if ([v15 containsObject:v13])
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      if ([v48 isFlexibleWindowingEnabled])
      {
        goto LABEL_28;
      }
    }

LABEL_22:
    LOBYTE(v20) = 0;
    goto LABEL_46;
  }

  [v18 interfaceOrientation];
  [v17 interfaceOrientation];
  LOBYTE(v20) = 0;
LABEL_47:

  return v20 & 1;
}

uint64_t __144__SBFluidSwitcherLayoutContext_shouldAddAppLayoutToFront_forTransitionWithContext_recentAppLayouts_transitionCompleted_windowManagementContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) layoutAttributesForElement:a2];
  [(SBDisplayItemLayoutAttributes *)v2 slideOverConfiguration];
  IsValid = SBDisplayItemSlideOverConfigurationIsValid(v5);

  return IsValid;
}

- (void)eventSource:(id)a3 userTouchedApplication:(id)a4
{
  v5 = a4;
  v6 = [(SBFluidSwitcherLayoutContext *)self currentLayoutState];
  v7 = [v6 elements];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__SBFluidSwitcherLayoutContext_eventSource_userTouchedApplication___block_invoke;
  v9[3] = &unk_2783AFB50;
  v10 = v5;
  v11 = self;
  v8 = v5;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __67__SBFluidSwitcherLayoutContext_eventSource_userTouchedApplication___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 workspaceEntity];
  v6 = [v5 applicationSceneEntity];
  v7 = [v6 application];
  v8 = [v7 bundleIdentifier];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    *(*(a1 + 40) + 8) = 1;
    *a3 = 1;
  }
}

- (id)succinctDescription
{
  v2 = [(SBFluidSwitcherLayoutContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFluidSwitcherLayoutContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherLayoutContext *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SBFluidSwitcherLayoutContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __70__SBFluidSwitcherLayoutContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"currentLayoutState"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"previousLayoutState"];
  v4 = *(*(a1 + 40) + 48);
  v5 = @"UIInterfaceOrientationLandscapeRight";
  v6 = @"UIInterfaceOrientationLandscapeLeft";
  v7 = @"UIInterfaceOrientationPortraitUpsideDown";
  if (v4 != 2)
  {
    v7 = 0;
  }

  if (v4 != 4)
  {
    v6 = v7;
  }

  if (v4 != 3)
  {
    v5 = v6;
  }

  if (v4 == 1)
  {
    v8 = @"UIInterfaceOrientationPortrait";
  }

  else
  {
    v8 = v5;
  }

  [*(a1 + 32) appendString:v8 withName:@"previousInterfaceOrientation"];
  v9 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"lastTransitionCompletionDate"];
  v10 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"hasUserInteractedWithActiveApplication"];
  v11 = *(a1 + 32);
  v12 = [v11 activeMultilinePrefix];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __70__SBFluidSwitcherLayoutContext_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v28 = &unk_2783A92D8;
  v24 = *(a1 + 32);
  v13 = v24.i64[0];
  v29 = vextq_s8(v24, v24, 8uLL);
  [v11 appendBodySectionWithName:@"supportedOrientationsForGesture" multilinePrefix:v12 block:&v25];

  v14 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 24) != 0 withName:@"isTransitioning"];
  v15 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"activeTransitionContext" skipIfNil:1];
  v16 = *(a1 + 40);
  if (v16[3])
  {
    v17 = *(a1 + 32);
    v18 = [v16 transitioningFromLayoutState];
    v19 = [v17 appendObject:v18 withName:@"transitioningFromLayoutState"];

    v20 = *(a1 + 32);
    v21 = [*(a1 + 40) transitioningToLayoutState];
    v22 = [v20 appendObject:v21 withName:@"transitioningToLayoutState"];

    v16 = *(a1 + 40);
  }

  v23 = [*(a1 + 32) appendObject:v16[2] withName:{@"activeGesture", *&v24, v25, v26, v27, v28}];
}

void __70__SBFluidSwitcherLayoutContext_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) supportedOrientationsForGesture];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __70__SBFluidSwitcherLayoutContext_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v9 = &unk_2783A95A0;
  v10 = *(a1 + 40);
  v3 = v7;
  if (v2)
  {
    v4 = 0;
    v11 = 0;
    v5 = vcnt_s8(v2);
    v5.i16[0] = vaddlv_u8(v5);
    v6 = v5.i32[0];
    do
    {
      if (((1 << v4) & *&v2) != 0)
      {
        v8(v3);
        if (v11)
        {
          break;
        }

        --v6;
      }

      if (v4 > 0x3E)
      {
        break;
      }

      ++v4;
    }

    while (v6 > 0);
  }
}

void __70__SBFluidSwitcherLayoutContext_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = BSInterfaceOrientationDescription();
  v2 = [v1 appendObject:v3 withName:0];
}

- (void)shouldAddAppLayoutToFront:(uint64_t)a1 whenBeginningGestureOfType:(uint64_t)a2 layoutContext:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherLayoutContext.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"newAppLayout"}];
}

- (void)shouldAddAppLayoutToFront:(uint64_t)a1 forTransitionWithContext:(uint64_t)a2 recentAppLayouts:transitionCompleted:windowManagementContext:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherLayoutContext.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"newAppLayout"}];
}

@end