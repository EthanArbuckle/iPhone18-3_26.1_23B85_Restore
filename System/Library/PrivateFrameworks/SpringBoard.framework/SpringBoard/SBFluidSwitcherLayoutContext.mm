@interface SBFluidSwitcherLayoutContext
- (BOOL)_shouldUpdateSwitcherModelBasedOnTimeOrUserInteraction;
- (BOOL)shouldAddAppLayoutToFront:(id)front forTransitionWithContext:(id)context recentAppLayouts:(id)layouts transitionCompleted:(BOOL)completed windowManagementContext:(id)managementContext;
- (BOOL)shouldAddAppLayoutToFront:(id)front whenBeginningGestureOfType:(int64_t)type layoutContext:(id)context;
- (BOOL)shouldAddAppLayoutToFront:(id)front whenEndingGestureOfType:(int64_t)type layoutContext:(id)context;
- (SBFluidSwitcherLayoutContext)initWithLayoutState:(id)state;
- (double)secondsSinceLastTransitionCompletion;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)supportedOrientationsForGesture;
- (void)dealloc;
- (void)didEndTransitioningToLayoutStateWithContext:(id)context;
- (void)eventSource:(id)source userTouchedApplication:(id)application;
- (void)setActiveGesture:(id)gesture;
- (void)willBeginTransitioningToLayoutStateWithContext:(id)context;
@end

@implementation SBFluidSwitcherLayoutContext

- (BOOL)_shouldUpdateSwitcherModelBasedOnTimeOrUserInteraction
{
  layoutState = [(SBFluidSwitcherLayoutContext *)self layoutState];
  if ([layoutState unlockedEnvironmentMode] == 3 && (objc_msgSend(layoutState, "isFloatingSwitcherVisible") & 1) == 0)
  {
    activeTransitionContext = [(SBFluidSwitcherLayoutContext *)self activeTransitionContext];
    if (activeTransitionContext)
    {
    }

    else
    {
      activeGesture = [(SBFluidSwitcherLayoutContext *)self activeGesture];

      if (!activeGesture)
      {
        lastTransitionCompletionDate = [(SBFluidSwitcherLayoutContext *)self lastTransitionCompletionDate];
        [lastTransitionCompletionDate timeIntervalSinceNow];
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
  lastTransitionCompletionDate = [(SBFluidSwitcherLayoutContext *)self lastTransitionCompletionDate];
  [lastTransitionCompletionDate timeIntervalSinceNow];
  v4 = -v3;

  return v4;
}

- (SBFluidSwitcherLayoutContext)initWithLayoutState:(id)state
{
  stateCopy = state;
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherLayoutContext;
  v6 = [(SBFluidSwitcherLayoutContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentLayoutState, state);
    objc_storeStrong(&v7->_previousLayoutState, state);
    v7->_previousInterfaceOrientation = [stateCopy interfaceOrientation];
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

- (void)setActiveGesture:(id)gesture
{
  gestureCopy = gesture;
  if (self->_activeGesture != gestureCopy)
  {
    v7 = gestureCopy;
    objc_storeStrong(&self->_activeGesture, gesture);
    activeTransitionContext = self->_activeTransitionContext;
    self->_activeTransitionContext = 0;

    gestureCopy = v7;
  }
}

- (void)willBeginTransitioningToLayoutStateWithContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_activeTransitionContext, context);
  request = [contextCopy request];
  source = [request source];

  if ((source - 27) > 0x32 || ((1 << (source - 27)) & 0x4020000000001) == 0)
  {
    activeGesture = self->_activeGesture;
    self->_activeGesture = 0;
  }

  layoutState = [contextCopy layoutState];
  previousLayoutState = [contextCopy previousLayoutState];
  objc_storeStrong(&self->_currentLayoutState, layoutState);
  if (([layoutState isEqual:previousLayoutState] & 1) == 0)
  {
    objc_storeStrong(&self->_previousLayoutState, previousLayoutState);
    self->_previousInterfaceOrientation = [previousLayoutState interfaceOrientation];
  }

  if (![(SBMainDisplayLayoutState *)self->_currentLayoutState isEqual:self->_previousLayoutState])
  {
    self->_hasUserInteractedWithActiveApplication = 0;
  }
}

- (void)didEndTransitioningToLayoutStateWithContext:(id)context
{
  v4 = MEMORY[0x277CBEAA8];
  contextCopy = context;
  date = [v4 date];
  lastTransitionCompletionDate = self->_lastTransitionCompletionDate;
  self->_lastTransitionCompletionDate = date;

  obj = [contextCopy layoutState];
  previousLayoutState = [contextCopy previousLayoutState];

  objc_storeStrong(&self->_currentLayoutState, obj);
  if (([obj isEqual:previousLayoutState] & 1) == 0)
  {
    objc_storeStrong(&self->_previousLayoutState, previousLayoutState);
    self->_previousInterfaceOrientation = [previousLayoutState interfaceOrientation];
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
  layoutState = [(SBFluidSwitcherLayoutContext *)self layoutState];
  v5 = 1 << [layoutState interfaceOrientation];

  activeTransitionContext = [(SBFluidSwitcherLayoutContext *)self activeTransitionContext];
  [(SBFluidSwitcherLayoutContext *)self secondsSinceLastTransitionCompletion];
  if (!activeTransitionContext)
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

  if (activeTransitionContext)
  {
    previousLayoutState = [activeTransitionContext previousLayoutState];
    layoutState2 = [activeTransitionContext layoutState];
    interfaceOrientation = [(SBLayoutState *)layoutState2 interfaceOrientation];
  }

  else
  {
    previousLayoutState = self->_previousLayoutState;
    layoutState2 = self->_currentLayoutState;
    interfaceOrientation = [(SBLayoutState *)self->_currentLayoutState interfaceOrientation];
  }

  v13 = interfaceOrientation;
  elements = [(SBLayoutState *)previousLayoutState elements];
  v27 = v5;
  if (!elements)
  {
    elements2 = [(SBLayoutState *)layoutState2 elements];
    if (![elements2 count])
    {
      v17 = 1;
LABEL_13:

      goto LABEL_14;
    }
  }

  elements3 = [(SBLayoutState *)previousLayoutState elements];
  elements4 = [(SBLayoutState *)layoutState2 elements];
  v17 = [elements3 isEqual:elements4];

  if (!elements)
  {
    goto LABEL_13;
  }

LABEL_14:

  unlockedEnvironmentMode = [(SBMainDisplayLayoutState *)previousLayoutState unlockedEnvironmentMode];
  unlockedEnvironmentMode2 = [(SBMainDisplayLayoutState *)layoutState2 unlockedEnvironmentMode];
  if (v26 == v13)
  {
    v20 = 0;
  }

  else if (unlockedEnvironmentMode == 3 && unlockedEnvironmentMode2 == 3 || unlockedEnvironmentMode2 == 1)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  layoutState3 = [(SBFluidSwitcherLayoutContext *)self layoutState];
  v24 = [layoutState3 unlockedEnvironmentMode] == 1 && objc_msgSend(SBApp, "homeScreenRotationStyle") != 0;

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

- (BOOL)shouldAddAppLayoutToFront:(id)front whenBeginningGestureOfType:(int64_t)type layoutContext:(id)context
{
  frontCopy = front;
  contextCopy = context;
  if (!frontCopy)
  {
    [SBFluidSwitcherLayoutContext shouldAddAppLayoutToFront:a2 whenBeginningGestureOfType:self layoutContext:?];
  }

  layoutState = [(SBFluidSwitcherLayoutContext *)self layoutState];
  if (type == 4)
  {
    goto LABEL_8;
  }

  if (type == 8)
  {
    v12 = 0;
    goto LABEL_17;
  }

  environment = [frontCopy environment];
  if (type == 6 && environment == 2)
  {
LABEL_8:
    v12 = 1;
    goto LABEL_17;
  }

  windowPickerRole = [layoutState windowPickerRole];
  bundleIDShowingAppExpose = [layoutState bundleIDShowingAppExpose];
  v12 = [frontCopy environment] == 2 && windowPickerRole == 3 || objc_msgSend(frontCopy, "environment") == 1 && (SBLayoutRoleIsValidForSplitView(windowPickerRole) & 1) != 0 || objc_msgSend(frontCopy, "environment") == 1 && bundleIDShowingAppExpose || -[SBFluidSwitcherLayoutContext _shouldUpdateSwitcherModelBasedOnTimeOrUserInteraction](self, "_shouldUpdateSwitcherModelBasedOnTimeOrUserInteraction");

LABEL_17:
  return v12;
}

- (BOOL)shouldAddAppLayoutToFront:(id)front whenEndingGestureOfType:(int64_t)type layoutContext:(id)context
{
  contextCopy = context;
  environment = [front environment];
  previousLayoutState = [contextCopy previousLayoutState];
  IsStashed = SBFloatingConfigurationIsStashed([previousLayoutState floatingConfiguration]);

  layoutState = [contextCopy layoutState];

  v12 = SBFloatingConfigurationIsStashed([layoutState floatingConfiguration]);
  v14 = type != 3 || environment != 2;
  return !v14 && v12 && !IsStashed;
}

- (BOOL)shouldAddAppLayoutToFront:(id)front forTransitionWithContext:(id)context recentAppLayouts:(id)layouts transitionCompleted:(BOOL)completed windowManagementContext:(id)managementContext
{
  frontCopy = front;
  contextCopy = context;
  layoutsCopy = layouts;
  managementContextCopy = managementContext;
  if (!frontCopy)
  {
    [SBFluidSwitcherLayoutContext shouldAddAppLayoutToFront:a2 forTransitionWithContext:self recentAppLayouts:? transitionCompleted:? windowManagementContext:?];
  }

  request = [contextCopy request];
  layoutState = [contextCopy layoutState];
  previousLayoutState = [contextCopy previousLayoutState];
  source = [request source];
  if (source != 14)
  {
    v21 = source;
    selfCopy = self;
    completedCopy = completed;
    elements = [previousLayoutState elements];
    elements2 = [layoutState elements];
    v47 = layoutsCopy;
    firstObject = [layoutsCopy firstObject];
    v46 = elements;
    if (BSEqualObjects())
    {
      v25 = BSEqualSets();

      v26 = elements2;
      if (v25)
      {
        goto LABEL_7;
      }
    }

    else
    {

      v26 = elements2;
    }

    preventSwitcherRecencyModelUpdates = [contextCopy preventSwitcherRecencyModelUpdates];
    LOBYTE(v20) = 0;
    v28 = !completedCopy;
    if (v21 != 15)
    {
      v28 = 0;
    }

    if (v28)
    {
      goto LABEL_45;
    }

    layoutsCopy = v47;
    if (preventSwitcherRecencyModelUpdates)
    {
LABEL_46:

      goto LABEL_47;
    }

    if ([previousLayoutState unlockedEnvironmentMode] != 2 || (v29 = objc_msgSend(layoutState, "unlockedEnvironmentMode"), v21 != 27) || v29 != 2)
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
          appLayout = [layoutState appLayout];
          v20 = [appLayout itemForLayoutRole:4];

          layoutsCopy = v47;
          if (!v20)
          {
            goto LABEL_46;
          }
        }

        else if (v21 - 11 < 2)
        {
          v31 = v21 - 11;
          v32 = v26;
          if (([v47 containsObject:frontCopy] & 1) != 0 || objc_msgSend(managementContextCopy, "isFlexibleWindowingEnabled") && (objc_msgSend(layoutState, "layoutAttributesMap"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "allValues"), v34 = objc_claimAutoreleasedReturnValue(), LODWORD(selfCopy) = objc_msgSend(v34, "bs_containsObjectPassingTest:", &__block_literal_global_65), v34, v33, layoutsCopy = v47, selfCopy))
          {
LABEL_31:
            if (completedCopy)
            {
              v26 = v32;
              if (v31 > 1)
              {
                goto LABEL_29;
              }

              elements3 = [previousLayoutState elements];
              if (![elements3 count])
              {

                goto LABEL_29;
              }

              elements4 = [layoutState elements];
              v37 = [elements4 count];

              if (v37)
              {
                if ([managementContextCopy isFlexibleWindowingEnabled])
                {
                  elements5 = [layoutState elements];
                  v49[0] = MEMORY[0x277D85DD0];
                  v49[1] = 3221225472;
                  v49[2] = __144__SBFluidSwitcherLayoutContext_shouldAddAppLayoutToFront_forTransitionWithContext_recentAppLayouts_transitionCompleted_windowManagementContext___block_invoke_2;
                  v49[3] = &unk_2783AC4F8;
                  v50 = layoutState;
                  v39 = [elements5 bs_firstObjectPassingTest:v49];

                  if (v39)
                  {
                    elements6 = [previousLayoutState elements];
                    LOBYTE(v20) = [elements6 containsObject:v39] ^ 1;

                    goto LABEL_45;
                  }
                }

LABEL_7:
                LOBYTE(v20) = 0;
LABEL_45:
                layoutsCopy = v47;
                goto LABEL_46;
              }

LABEL_44:
              LOBYTE(v20) = 1;
              goto LABEL_45;
            }

            v26 = v32;
            if ([frontCopy environment] == 2)
            {
              if ([previousLayoutState isFloatingSwitcherVisible] & 1) == 0 && (objc_msgSend(layoutState, "isFloatingSwitcherVisible"))
              {
                goto LABEL_44;
              }

              floatingAppLayout = [previousLayoutState floatingAppLayout];

              if (!floatingAppLayout)
              {
                goto LABEL_44;
              }
            }

            if ([previousLayoutState unlockedEnvironmentMode] == 1 && objc_msgSend(layoutState, "unlockedEnvironmentMode") == 3)
            {
              goto LABEL_44;
            }

            layoutsCopy = v47;
            if ([previousLayoutState unlockedEnvironmentMode] == 3)
            {
              isFloatingSwitcherVisible = [previousLayoutState isFloatingSwitcherVisible];
            }

            else
            {
              isFloatingSwitcherVisible = 1;
            }

            if ([layoutState unlockedEnvironmentMode] == 3 && ((isFloatingSwitcherVisible | objc_msgSend(layoutState, "isFloatingSwitcherVisible")) & 1) == 0)
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
        if ([(SBFluidSwitcherLayoutContext *)selfCopy _shouldUpdateSwitcherModelBasedOnTimeOrUserInteraction])
        {
          goto LABEL_29;
        }

        v31 = v21 - 11;
        v32 = v26;
        if ([layoutsCopy containsObject:frontCopy])
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      if ([managementContextCopy isFlexibleWindowingEnabled])
      {
        goto LABEL_28;
      }
    }

LABEL_22:
    LOBYTE(v20) = 0;
    goto LABEL_46;
  }

  [previousLayoutState interfaceOrientation];
  [layoutState interfaceOrientation];
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

- (void)eventSource:(id)source userTouchedApplication:(id)application
{
  applicationCopy = application;
  currentLayoutState = [(SBFluidSwitcherLayoutContext *)self currentLayoutState];
  elements = [currentLayoutState elements];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__SBFluidSwitcherLayoutContext_eventSource_userTouchedApplication___block_invoke;
  v9[3] = &unk_2783AFB50;
  v10 = applicationCopy;
  selfCopy = self;
  v8 = applicationCopy;
  [elements enumerateObjectsUsingBlock:v9];
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
  succinctDescriptionBuilder = [(SBFluidSwitcherLayoutContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFluidSwitcherLayoutContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBFluidSwitcherLayoutContext *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SBFluidSwitcherLayoutContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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