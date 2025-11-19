@interface SBFloatingFluidSwitcherRootSwitcherModifier
- (CGRect)containerViewBounds;
- (SBFloatingFluidSwitcherRootSwitcherModifier)init;
- (id)_entityRemovalModifierForEvent:(id)a3;
- (id)_newMultitaskingModifier;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3;
- (id)floorModifierForTransitionEvent:(id)a3;
- (id)gestureModifierForGestureEvent:(id)a3;
- (id)handleEvent:(id)a3;
- (id)handleTapAppLayoutEvent:(id)a3;
- (id)insertionModifierForInsertionEvent:(id)a3;
- (id)lowEndHardwareModifier;
- (id)multitaskingModifierForEvent:(id)a3;
- (id)removalModifierForRemovalEvent:(id)a3;
- (id)shelfModifierForTransitionEvent:(id)a3;
- (id)swipeToKillModifierForSwipeToKillEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionModifierForMainTransitionEvent:(id)a3;
- (id)userScrollingModifierForScrollEvent:(id)a3;
- (void)_updateContainerViewBounds;
- (void)setDelegate:(id)a3;
@end

@implementation SBFloatingFluidSwitcherRootSwitcherModifier

- (SBFloatingFluidSwitcherRootSwitcherModifier)init
{
  v6.receiver = self;
  v6.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  v2 = [(SBSwitcherModifier *)&v6 init];
  v3 = v2;
  if (v2)
  {
    activeAppLayout = v2->_activeAppLayout;
    v2->_activeAppLayout = 0;

    v3->_interfaceOrientation = 1;
    v3->_floatingConfiguration = 4;
    v3->_floatingSwitcherVisible = 0;
  }

  return v3;
}

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  [(SBFluidSwitcherRootSwitcherModifier *)&v5 setDelegate:?];
  if (a3)
  {
    [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _updateContainerViewBounds];
  }
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] != 1)
  {
    v10 = 0;
    goto LABEL_15;
  }

  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, v4);
  v7 = [v6 toFloatingAppLayout];
  v8 = [v6 toFloatingSwitcherVisible];
  if ([v6 phase] >= 2)
  {
    if ((v8 & 1) == 0 && [v6 toEnvironmentMode] != 2)
    {
      self->_floatingConfiguration = [v6 toFloatingConfiguration];
    }

    self->_interfaceOrientation = [v6 toInterfaceOrientation];
    [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _updateContainerViewBounds];
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_activeAppLayout, v7);
    p_floatingSwitcherVisible = &self->_floatingSwitcherVisible;
    if (self->_floatingSwitcherVisible == v8)
    {
LABEL_13:
      v10 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
      goto LABEL_14;
    }

LABEL_12:
    *p_floatingSwitcherVisible = v8;
    goto LABEL_13;
  }

  p_floatingSwitcherVisible = &self->_floatingSwitcherVisible;
  if (self->_floatingSwitcherVisible != v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
LABEL_14:

LABEL_15:
  v14.receiver = self;
  v14.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  v11 = [(SBFluidSwitcherRootSwitcherModifier *)&v14 handleEvent:v4];
  v12 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v11 toResponse:v10];

  return v12;
}

- (id)handleTapAppLayoutEvent:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v11 handleTapAppLayoutEvent:v4];
  v6 = [v4 appLayout];
  if (([v4 isHandled] & 1) == 0 && objc_msgSend(v6, "isEqual:", self->_activeAppLayout) && objc_msgSend(v4, "source") == 1)
  {
    v7 = [SBSwitcherTransitionRequest requestForTapAppLayoutEvent:v4];
    v8 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v7 gestureInitiated:0];
    v9 = SBAppendSwitcherModifierResponse(v8, v5);

    v5 = v9;
  }

  return v5;
}

- (CGRect)containerViewBounds
{
  x = self->_containerViewBounds.origin.x;
  y = self->_containerViewBounds.origin.y;
  width = self->_containerViewBounds.size.width;
  height = self->_containerViewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  v5 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v15 appLayoutsToEnsureExistForMainTransitionEvent:v4];
  v6 = [v4 fromFloatingAppLayout];
  v7 = [v4 toFloatingAppLayout];
  if (BSEqualObjects() & 1) != 0 || ([v4 fromFloatingSwitcherVisible] & 1) != 0 || (objc_msgSend(v4, "isDragAndDropTransition"))
  {
    v8 = v5;
  }

  else
  {
    v8 = [v5 mutableCopy];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v10 = [v4 fromDisplayItemsPendingTermination];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __93__SBFloatingFluidSwitcherRootSwitcherModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke;
    v13[3] = &unk_2783A8C90;
    v11 = v6;
    v14 = v11;
    v12 = [v10 bs_containsObjectPassingTest:v13];

    if (v11 && (v12 & 1) == 0)
    {
      [v8 addObject:v11];
    }

    if (v7)
    {
      [v8 addObject:v7];
    }
  }

  return v8;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  v4 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v13 adjustedAppLayoutsForAppLayouts:a3];
  v5 = v4;
  if (self->_floatingSwitcherVisible)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [v5 indexOfObject:self->_activeAppLayout];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0)
    {
      [v6 addObjectsFromArray:v5];
    }

    else
    {
      v9 = v7;
      v10 = [v5 subarrayWithRange:{v9, objc_msgSend(v5, "count") - v9}];
      [v6 addObjectsFromArray:v10];

      v11 = [v5 subarrayWithRange:{0, v9}];
      [v6 addObjectsFromArray:v11];
    }
  }

  return v6;
}

- (id)topMostLayoutElements
{
  v18.receiver = self;
  v18.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  v3 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v18 switcherDimmingViewLayoutElement];
  v17.receiver = self;
  v17.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  v4 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v17 switcherBackdropLayoutElement];
  v16.receiver = self;
  v16.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  v5 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v16 slideOverTongueLayoutElement];
  v6 = v5;
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (v7 && v5 == 0)
  {
    v14.receiver = self;
    v14.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
    v12 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v14 topMostLayoutElements];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = v9;
    if (v3)
    {
      [v9 addObject:v3];
    }

    if (v4)
    {
      [v10 addObject:v4];
    }

    if (v6)
    {
      [v10 addObject:v6];
    }

    v15.receiver = self;
    v15.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
    v11 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v15 topMostLayoutElements];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v11];
      [v12 addObjectsFromArray:v10];
    }

    else
    {
      v12 = v10;
    }
  }

  return v12;
}

- (id)gestureModifierForGestureEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 gestureType];
  v6 = [v4 gestureID];
  v7 = 0;
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      v15 = [[SBMoveGestureRootFloatingSwitcherModifier alloc] initWithInitialFloatingConfiguration:self->_floatingConfiguration interfaceOrientation:self->_interfaceOrientation];
    }

    else
    {
      if (v5 != 5)
      {
        if (v5 == 6)
        {
          v8 = v4;
          v9 = [(SBAppLayout *)self->_activeAppLayout itemForLayoutRole:1];
          v10 = [v9 uniqueIdentifier];

          if (v10 && ([v8 draggedSceneIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v10), v11, (v12 & 1) == 0))
          {
            v7 = [[SBFloatingDragAndDropGestureSwitcherModifier alloc] initWithGestureID:v6 floatingSwitcherVisible:self->_floatingSwitcherVisible floatingConfiguration:self->_floatingConfiguration interfaceOrientation:self->_interfaceOrientation];
          }

          else
          {
            v7 = 0;
          }
        }

        goto LABEL_19;
      }

      v15 = [[SBSwitcherSwipeUpGestureFloatingSwitcherModifier alloc] initWithGestureID:v6];
    }

LABEL_16:
    v7 = v15;
    goto LABEL_19;
  }

  if (v5 == 1)
  {
    if (([(SBFloatingFluidSwitcherRootSwitcherModifier *)self isReduceMotionEnabled]& 1) != 0)
    {
      v7 = 0;
      goto LABEL_19;
    }

    v15 = [[SBExternalHomeGestureFloatingSwitcherModifier alloc] initWithGestureID:v6 initialFloatingConfiguration:self->_floatingConfiguration interfaceOrientation:self->_interfaceOrientation];
    goto LABEL_16;
  }

  if (v5 == 3)
  {
    v13 = [SBHomeGestureRootFloatingSwitcherModifier alloc];
    v14 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
    v7 = [(SBHomeGestureRootFloatingSwitcherModifier *)v13 initWithMultitaskingModifier:v14 floatingConfiguration:self->_floatingConfiguration];
  }

LABEL_19:

  return v7;
}

- (id)transitionModifierForMainTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 fromFloatingAppLayout];
  v6 = [v4 toFloatingAppLayout];
  v7 = [v4 fromFloatingSwitcherVisible];
  v8 = [v4 toFloatingSwitcherVisible];
  v9 = [v4 isDragAndDropTransition];
  v61 = [v4 fromFloatingConfiguration];
  v60 = [v4 toFloatingConfiguration];
  v10 = [v4 transitionID];
  v11 = [v4 toAppExposeBundleID];
  if (v11)
  {
    v12 = v11;
    v13 = v6;
    v14 = v5;
    v15 = [v4 toEnvironmentMode];

    v29 = v15 == 2;
    v5 = v14;
    v6 = v13;
    if (v29)
    {
      goto LABEL_4;
    }
  }

  if (v8)
  {
    if (v7)
    {
      v17 = [(SBTransitionSwitcherModifier *)[SBSwitcherSwipeUpToSwitcherFloatingSwitcherModifier alloc] initWithTransitionID:v10];
LABEL_15:
      v16 = v17;
      goto LABEL_16;
    }

    v25 = v5;
    v26 = [SBSwitcherToActiveFloatingSwitcherModifier alloc];
    v20 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
    v21 = v26;
    v5 = v25;
    v22 = v10;
    v23 = 1;
    v24 = v25;
    goto LABEL_11;
  }

  if (v7)
  {
    v18 = v5;
    v19 = [SBSwitcherToActiveFloatingSwitcherModifier alloc];
    v20 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
    v21 = v19;
    v5 = v18;
    v22 = v10;
    v23 = 0;
    v24 = v6;
LABEL_11:
    v27 = [(SBSwitcherToActiveFloatingSwitcherModifier *)v21 initWithTransitionID:v22 direction:v23 fullScreenAppLayout:v24 floatingDeckModifier:v20];
LABEL_12:
    v16 = v27;

    goto LABEL_16;
  }

  if (v9)
  {
    v17 = [[SBDropApplicationFloatingSwitcherModifier alloc] initWithTransitionID:v10 fromAppLayout:v5 toAppLayout:v6];
    goto LABEL_15;
  }

  v16 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _entityRemovalModifierForEvent:v4];
  if (!v16)
  {
    if ([v4 isMoveDisplaysTransition])
    {
      v17 = [[SBMoveDisplaysTransitionSwitcherModifier alloc] initWithTransitionEvent:v4];
      goto LABEL_15;
    }

    if (([v4 isAnySplitViewToOrFromSlideOverEvent] & 1) == 0 && (objc_msgSend(v4, "isSlideOverToFullScreenEvent") & 1) == 0)
    {
      if (v5)
      {
        v29 = v6 == 0;
      }

      else
      {
        v29 = 1;
      }

      v30 = !v29;
      if (!v29)
      {
        if ([v5 isEqual:v6])
        {
          v31 = v5;
          v32 = [v4 fromInterfaceOrientation];
          v29 = v32 == [v4 toInterfaceOrientation];
          v5 = v31;
          if (!v29)
          {
            v38 = [SBRotationSwitcherModifier alloc];
            v20 = [v4 toFloatingAppLayout];
            v39 = [v4 fromInterfaceOrientation];
            v40 = [v4 toInterfaceOrientation];
            v41 = v38;
            v5 = v31;
            v27 = [(SBRotationSwitcherModifier *)v41 initWithTransitionID:v10 appLayout:v20 fromInterfaceOrientation:v39 toInterfaceOrientation:v40];
            goto LABEL_12;
          }
        }
      }

      if (([v4 isEnteringSplitViewPeekEvent] & 1) == 0 && (objc_msgSend(v4, "isEnteringSlideOverPeekEvent") & 1) == 0)
      {
        if ([v4 isExitingSlideOverPeekToAppEvent])
        {
          v33 = v5;
          v34 = [SBExitSlideOverPeekSwitcherModifier alloc];
          activeAppLayout = self->_activeAppLayout;
          v36 = [v4 toFloatingConfiguration];
          v37 = v34;
          v5 = v33;
          v17 = [(SBExitSlideOverPeekSwitcherModifier *)v37 initWithTransitionID:v10 floatingAppLayout:activeAppLayout floatingConfiguration:v36];
          goto LABEL_15;
        }

        if ([v4 isExitingSlideOverPeekToHomeScreenEvent])
        {
          v42 = v5;
          v43 = [SBPeekToOffscreenSwitcherModifier alloc];
          v20 = [v4 fromFloatingAppLayout];
          v44 = [v4 fromPeekConfiguration];
          v45 = v43;
          v5 = v42;
          v27 = [(SBPeekToOffscreenSwitcherModifier *)v45 initWithTransitionID:v10 peekingAppLayout:v20 peekConfiguration:v44 spaceConfiguration:1];
          goto LABEL_12;
        }

        if (!SBPeekConfigurationIsValid([v4 toPeekConfiguration]) && (objc_msgSend(v4, "isSlideOverToCenterWindowEvent") & 1) == 0)
        {
          v46 = v5;
          if ([v4 isFloatingPulseEvent])
          {
            v47 = [SBPulseTransitionSwitcherModifier alloc];
            v48 = [v4 toFloatingAppLayout];
            v16 = [(SBPulseTransitionSwitcherModifier *)v47 initWithTransitionID:v10 appLayout:v48];

LABEL_64:
            v5 = v46;
            goto LABEL_16;
          }

          if (v30)
          {
            if (([v5 isEqual:v6] & 1) == 0 && v61 == v60)
            {
              if ([v4 fromWindowPickerRole] == 3)
              {
                v49 = [v4 fromWindowPickerRole];
                if (v49 == [v4 toWindowPickerRole])
                {
                  v5 = v46;
                  v17 = [[SBSplitDisplayItemCrossblurSwitcherModifier alloc] initWithTransitionID:v10 fromAppLayout:v46 toAppLayout:v6 layoutRole:1];
                  goto LABEL_15;
                }
              }

              if (([v4 isNewSceneTransition] & 1) != 0 || objc_msgSend(v4, "isMorphFromInAppView"))
              {
                v5 = v46;
                v17 = [[SBSlideFloatingAppFromBottomSwitcherModifier alloc] initWithTransitionID:v10 fromFloatingAppLayout:v46 toFloatingAppLayout:v6];
                goto LABEL_15;
              }

              if (([v4 isCenterWindowToSlideOverEvent] & 1) == 0)
              {
                v57 = [v4 dosidoTransitionDirection] == 1;
                v58 = [SBArcSwipeFloatingSwitcherModifier alloc];
                v59 = v57;
                v5 = v46;
                v17 = [(SBArcSwipeFloatingSwitcherModifier *)v58 initWithTransitionID:v10 fromAppLayout:v46 toAppLayout:v6 floatingConfiguration:v61 direction:v59 needsOvershoot:1];
                goto LABEL_15;
              }

              goto LABEL_63;
            }
          }

          else
          {
            if (!(v5 | v6))
            {
              goto LABEL_63;
            }

            if (!v6)
            {
              if (!v5)
              {
LABEL_61:
                v55 = [v4 fromWindowPickerRole] == 3;
                v56 = [v4 toWindowPickerRole] == 3;
                if (!v55 && !v56 || ((v55 ^ v56) & 1) == 0)
                {
                  v16 = [[SBMoveFloatingConfigurationFloatingSwitcherModifier alloc] initWithTransitionID:v10 fromFloatingConfiguration:v61 toFloatingConfiguration:v60];
                  goto LABEL_64;
                }

                goto LABEL_63;
              }

              goto LABEL_59;
            }
          }

          v50 = [v4 fromAppLayout];
          v51 = [v6 itemForLayoutRole:1];
          v52 = [v50 containsItem:v51];

          if (!v46 || v52)
          {
LABEL_60:
            if ((v52 & 1) == 0)
            {
              goto LABEL_61;
            }

LABEL_63:
            v16 = 0;
            goto LABEL_64;
          }

LABEL_59:
          v53 = [v4 toAppLayout];
          v54 = [v46 itemForLayoutRole:1];
          LOBYTE(v52) = [v53 containsItem:v54];

          goto LABEL_60;
        }
      }
    }

LABEL_4:
    v16 = 0;
  }

LABEL_16:

  return v16;
}

- (id)floorModifierForTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 toFloatingSwitcherVisible];
  v6 = [v4 toFloatingAppLayout];
  v7 = [v4 toEnvironmentMode];
  if (v5)
  {
    v8 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
    goto LABEL_3;
  }

  if (SBPeekConfigurationIsValid([v4 toPeekConfiguration]) && v6)
  {
    v10 = [v4 toAppLayout];

    if (!v10)
    {
      v8 = -[SBSlideOverPeekSwitcherModifier initWithAppLayout:peekConfiguration:environmentMode:fromFloatingConfiguration:]([SBSlideOverPeekSwitcherModifier alloc], "initWithAppLayout:peekConfiguration:environmentMode:fromFloatingConfiguration:", v6, [v4 toPeekConfiguration], v7, objc_msgSend(v4, "fromFloatingConfiguration"));
LABEL_3:
      v9 = v8;
      if (v8)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if (!v6)
  {
LABEL_12:
    v9 = [[SBStashedFloatingSwitcherModifier alloc] initWithFloatingConfiguration:self->_floatingConfiguration environmentMode:v7];
    goto LABEL_13;
  }

  if (SBFloatingConfigurationIsStashed(self->_floatingConfiguration))
  {
    goto LABEL_12;
  }

  v11 = [SBActiveAppLayoutFloatingSwitcherModifier alloc];
  v12 = [v4 toAppLayout];
  v9 = [(SBActiveAppLayoutFloatingSwitcherModifier *)v11 initWithActiveAppLayout:v6 fullScreenAppLayout:v12 floatingConfiguration:self->_floatingConfiguration environmentMode:v7];

  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v9;
}

- (id)shelfModifierForTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 toFloatingAppLayout];
  v6 = [v4 toWindowPickerRole];
  v7 = [v4 fromWindowPickerRole];
  v8 = v6 != 3 || v7 == 3;
  if (v8 || [v4 toEnvironmentMode] != 3)
  {
    v14 = 0;
  }

  else
  {
    v9 = [v5 itemForLayoutRole:1];
    v10 = [v9 bundleIdentifier];

    v11 = [[SBSwitcherShelf alloc] initWithBundleIdentifier:v10 layoutRole:v6 displayMode:1];
    v12 = [(SBSwitcherShelf *)v11 uniqueIdentifier];
    v13 = [(SBChainableModifier *)self childModifierByKey:v12];

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v15 = [SBShelfSwitcherModifier contentOptionsForTransitionEvent:v4 context:self];
      v16 = [SBShelfSwitcherModifier alloc];
      v17 = [v4 toAppLayout];
      v18 = [v4 fromAppLayout];
      v14 = [(SBShelfSwitcherModifier *)v16 initWithShelf:v11 contentOptions:v15 activeFullScreenAppLayout:v17 activeFloatingAppLayout:v5 presentationTargetFrame:v18 presentedFromAppLayout:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
    }
  }

  return v14;
}

- (id)multitaskingModifierForEvent:(id)a3
{
  v4 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _defaultMultitaskingModifierClass];
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  if (([v5 isMemberOfClass:v4] & 1) == 0)
  {
    v6 = objc_alloc_init(v4);

    v5 = v6;
  }

  return v5;
}

- (id)_entityRemovalModifierForEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 fromFloatingAppLayout];
  if (v5)
  {
    v6 = [v4 removalContextForAppLayout:v5];
    if (v6)
    {
      v7 = objc_opt_class();
      if (!SBReduceMotion() && ([v6 animationStyle] - 1) <= 2)
      {
        v7 = objc_opt_class();
      }

      v8 = [v7 alloc];
      v9 = [v4 transitionID];
      v10 = [v4 fromFloatingAppLayout];
      v11 = [v4 toFloatingAppLayout];
      v12 = [v8 initWithTransitionID:v9 fromAppLayout:v10 toAppLayout:v11 floatingConfiguration:self->_floatingConfiguration];
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

  return v12;
}

- (id)insertionModifierForInsertionEvent:(id)a3
{
  v3 = a3;
  v4 = [SBInsertionSwitcherModifier alloc];
  v5 = [v3 appLayout];

  v6 = [(SBInsertionSwitcherModifier *)v4 initWithAppLayout:v5];

  return v6;
}

- (id)swipeToKillModifierForSwipeToKillEvent:(id)a3
{
  v3 = a3;
  v4 = [SBSwipeToKillSwitcherModifier alloc];
  v5 = [v3 layoutRole];
  v6 = [v3 appLayout];

  v7 = [(SBSwipeToKillSwitcherModifier *)v4 initWithLayoutRole:v5 inAppLayout:v6 fadeOutSwipedItems:0];

  return v7;
}

- (id)removalModifierForRemovalEvent:(id)a3
{
  v3 = a3;
  v4 = [SBRemovalSwitcherModifier alloc];
  v5 = [v3 layoutRole];
  v6 = [v3 appLayout];
  v7 = [v3 reason];

  v8 = [(SBRemovalSwitcherModifier *)v4 initWithLayoutRole:v5 inAppLayout:v6 reason:v7];

  return v8;
}

- (id)lowEndHardwareModifier
{
  v2 = +[SBPlatformController sharedInstance];
  v3 = [v2 medusaCapabilities] == 1;

  v4 = [[SBFloatingLowEndHardwareModifier alloc] initWithOptions:v3];

  return v4;
}

- (id)userScrollingModifierForScrollEvent:(id)a3
{
  v3 = objc_alloc_init(SBScrollingSwitcherModifier);

  return v3;
}

- (id)_newMultitaskingModifier
{
  v2 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _defaultMultitaskingModifierClass];

  return objc_alloc_init(v2);
}

- (void)_updateContainerViewBounds
{
  p_containerViewBounds = &self->_containerViewBounds;
  [(SBFloatingFluidSwitcherRootSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:self->_interfaceOrientation floatingConfiguration:self->_floatingConfiguration];
  p_containerViewBounds->origin.x = v3;
  p_containerViewBounds->origin.y = v4;
  p_containerViewBounds->size.width = v5;
  p_containerViewBounds->size.height = v6;
}

@end