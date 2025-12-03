@interface SBFloatingFluidSwitcherRootSwitcherModifier
- (CGRect)containerViewBounds;
- (SBFloatingFluidSwitcherRootSwitcherModifier)init;
- (id)_entityRemovalModifierForEvent:(id)event;
- (id)_newMultitaskingModifier;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event;
- (id)floorModifierForTransitionEvent:(id)event;
- (id)gestureModifierForGestureEvent:(id)event;
- (id)handleEvent:(id)event;
- (id)handleTapAppLayoutEvent:(id)event;
- (id)insertionModifierForInsertionEvent:(id)event;
- (id)lowEndHardwareModifier;
- (id)multitaskingModifierForEvent:(id)event;
- (id)removalModifierForRemovalEvent:(id)event;
- (id)shelfModifierForTransitionEvent:(id)event;
- (id)swipeToKillModifierForSwipeToKillEvent:(id)event;
- (id)topMostLayoutElements;
- (id)transitionModifierForMainTransitionEvent:(id)event;
- (id)userScrollingModifierForScrollEvent:(id)event;
- (void)_updateContainerViewBounds;
- (void)setDelegate:(id)delegate;
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

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  [(SBFluidSwitcherRootSwitcherModifier *)&v5 setDelegate:?];
  if (delegate)
  {
    [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _updateContainerViewBounds];
  }
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] != 1)
  {
    v10 = 0;
    goto LABEL_15;
  }

  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, eventCopy);
  toFloatingAppLayout = [v6 toFloatingAppLayout];
  toFloatingSwitcherVisible = [v6 toFloatingSwitcherVisible];
  if ([v6 phase] >= 2)
  {
    if ((toFloatingSwitcherVisible & 1) == 0 && [v6 toEnvironmentMode] != 2)
    {
      self->_floatingConfiguration = [v6 toFloatingConfiguration];
    }

    self->_interfaceOrientation = [v6 toInterfaceOrientation];
    [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _updateContainerViewBounds];
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_activeAppLayout, toFloatingAppLayout);
    p_floatingSwitcherVisible = &self->_floatingSwitcherVisible;
    if (self->_floatingSwitcherVisible == toFloatingSwitcherVisible)
    {
LABEL_13:
      v10 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
      goto LABEL_14;
    }

LABEL_12:
    *p_floatingSwitcherVisible = toFloatingSwitcherVisible;
    goto LABEL_13;
  }

  p_floatingSwitcherVisible = &self->_floatingSwitcherVisible;
  if (self->_floatingSwitcherVisible != toFloatingSwitcherVisible)
  {
    goto LABEL_12;
  }

  v10 = 0;
LABEL_14:

LABEL_15:
  v14.receiver = self;
  v14.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  v11 = [(SBFluidSwitcherRootSwitcherModifier *)&v14 handleEvent:eventCopy];
  v12 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v11 toResponse:v10];

  return v12;
}

- (id)handleTapAppLayoutEvent:(id)event
{
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v11 handleTapAppLayoutEvent:eventCopy];
  appLayout = [eventCopy appLayout];
  if (([eventCopy isHandled] & 1) == 0 && objc_msgSend(appLayout, "isEqual:", self->_activeAppLayout) && objc_msgSend(eventCopy, "source") == 1)
  {
    v7 = [SBSwitcherTransitionRequest requestForTapAppLayoutEvent:eventCopy];
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

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event
{
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  v5 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v15 appLayoutsToEnsureExistForMainTransitionEvent:eventCopy];
  fromFloatingAppLayout = [eventCopy fromFloatingAppLayout];
  toFloatingAppLayout = [eventCopy toFloatingAppLayout];
  if (BSEqualObjects() & 1) != 0 || ([eventCopy fromFloatingSwitcherVisible] & 1) != 0 || (objc_msgSend(eventCopy, "isDragAndDropTransition"))
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

    fromDisplayItemsPendingTermination = [eventCopy fromDisplayItemsPendingTermination];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __93__SBFloatingFluidSwitcherRootSwitcherModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke;
    v13[3] = &unk_2783A8C90;
    v11 = fromFloatingAppLayout;
    v14 = v11;
    v12 = [fromDisplayItemsPendingTermination bs_containsObjectPassingTest:v13];

    if (v11 && (v12 & 1) == 0)
    {
      [v8 addObject:v11];
    }

    if (toFloatingAppLayout)
    {
      [v8 addObject:toFloatingAppLayout];
    }
  }

  return v8;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v13.receiver = self;
  v13.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  v4 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v13 adjustedAppLayoutsForAppLayouts:layouts];
  v5 = v4;
  if (self->_floatingSwitcherVisible)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = [v5 indexOfObject:self->_activeAppLayout];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0)
    {
      [array addObjectsFromArray:v5];
    }

    else
    {
      v9 = v7;
      v10 = [v5 subarrayWithRange:{v9, objc_msgSend(v5, "count") - v9}];
      [array addObjectsFromArray:v10];

      v11 = [v5 subarrayWithRange:{0, v9}];
      [array addObjectsFromArray:v11];
    }
  }

  return array;
}

- (id)topMostLayoutElements
{
  v18.receiver = self;
  v18.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  switcherDimmingViewLayoutElement = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v18 switcherDimmingViewLayoutElement];
  v17.receiver = self;
  v17.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  switcherBackdropLayoutElement = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v17 switcherBackdropLayoutElement];
  v16.receiver = self;
  v16.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
  slideOverTongueLayoutElement = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v16 slideOverTongueLayoutElement];
  v6 = slideOverTongueLayoutElement;
  if (switcherDimmingViewLayoutElement)
  {
    v7 = 0;
  }

  else
  {
    v7 = switcherBackdropLayoutElement == 0;
  }

  if (v7 && slideOverTongueLayoutElement == 0)
  {
    v14.receiver = self;
    v14.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
    topMostLayoutElements = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v14 topMostLayoutElements];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v10 = array;
    if (switcherDimmingViewLayoutElement)
    {
      [array addObject:switcherDimmingViewLayoutElement];
    }

    if (switcherBackdropLayoutElement)
    {
      [v10 addObject:switcherBackdropLayoutElement];
    }

    if (v6)
    {
      [v10 addObject:v6];
    }

    v15.receiver = self;
    v15.super_class = SBFloatingFluidSwitcherRootSwitcherModifier;
    topMostLayoutElements2 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)&v15 topMostLayoutElements];
    if (topMostLayoutElements2)
    {
      topMostLayoutElements = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:topMostLayoutElements2];
      [topMostLayoutElements addObjectsFromArray:v10];
    }

    else
    {
      topMostLayoutElements = v10;
    }
  }

  return topMostLayoutElements;
}

- (id)gestureModifierForGestureEvent:(id)event
{
  eventCopy = event;
  gestureType = [eventCopy gestureType];
  gestureID = [eventCopy gestureID];
  v7 = 0;
  if (gestureType > 3)
  {
    if (gestureType == 4)
    {
      v15 = [[SBMoveGestureRootFloatingSwitcherModifier alloc] initWithInitialFloatingConfiguration:self->_floatingConfiguration interfaceOrientation:self->_interfaceOrientation];
    }

    else
    {
      if (gestureType != 5)
      {
        if (gestureType == 6)
        {
          v8 = eventCopy;
          v9 = [(SBAppLayout *)self->_activeAppLayout itemForLayoutRole:1];
          uniqueIdentifier = [v9 uniqueIdentifier];

          if (uniqueIdentifier && ([v8 draggedSceneIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", uniqueIdentifier), v11, (v12 & 1) == 0))
          {
            v7 = [[SBFloatingDragAndDropGestureSwitcherModifier alloc] initWithGestureID:gestureID floatingSwitcherVisible:self->_floatingSwitcherVisible floatingConfiguration:self->_floatingConfiguration interfaceOrientation:self->_interfaceOrientation];
          }

          else
          {
            v7 = 0;
          }
        }

        goto LABEL_19;
      }

      v15 = [[SBSwitcherSwipeUpGestureFloatingSwitcherModifier alloc] initWithGestureID:gestureID];
    }

LABEL_16:
    v7 = v15;
    goto LABEL_19;
  }

  if (gestureType == 1)
  {
    if (([(SBFloatingFluidSwitcherRootSwitcherModifier *)self isReduceMotionEnabled]& 1) != 0)
    {
      v7 = 0;
      goto LABEL_19;
    }

    v15 = [[SBExternalHomeGestureFloatingSwitcherModifier alloc] initWithGestureID:gestureID initialFloatingConfiguration:self->_floatingConfiguration interfaceOrientation:self->_interfaceOrientation];
    goto LABEL_16;
  }

  if (gestureType == 3)
  {
    v13 = [SBHomeGestureRootFloatingSwitcherModifier alloc];
    _newMultitaskingModifier = [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
    v7 = [(SBHomeGestureRootFloatingSwitcherModifier *)v13 initWithMultitaskingModifier:_newMultitaskingModifier floatingConfiguration:self->_floatingConfiguration];
  }

LABEL_19:

  return v7;
}

- (id)transitionModifierForMainTransitionEvent:(id)event
{
  eventCopy = event;
  fromFloatingAppLayout = [eventCopy fromFloatingAppLayout];
  toFloatingAppLayout = [eventCopy toFloatingAppLayout];
  fromFloatingSwitcherVisible = [eventCopy fromFloatingSwitcherVisible];
  toFloatingSwitcherVisible = [eventCopy toFloatingSwitcherVisible];
  isDragAndDropTransition = [eventCopy isDragAndDropTransition];
  fromFloatingConfiguration = [eventCopy fromFloatingConfiguration];
  toFloatingConfiguration = [eventCopy toFloatingConfiguration];
  transitionID = [eventCopy transitionID];
  toAppExposeBundleID = [eventCopy toAppExposeBundleID];
  if (toAppExposeBundleID)
  {
    v12 = toAppExposeBundleID;
    v13 = toFloatingAppLayout;
    v14 = fromFloatingAppLayout;
    toEnvironmentMode = [eventCopy toEnvironmentMode];

    v29 = toEnvironmentMode == 2;
    fromFloatingAppLayout = v14;
    toFloatingAppLayout = v13;
    if (v29)
    {
      goto LABEL_4;
    }
  }

  if (toFloatingSwitcherVisible)
  {
    if (fromFloatingSwitcherVisible)
    {
      v17 = [(SBTransitionSwitcherModifier *)[SBSwitcherSwipeUpToSwitcherFloatingSwitcherModifier alloc] initWithTransitionID:transitionID];
LABEL_15:
      v16 = v17;
      goto LABEL_16;
    }

    v25 = fromFloatingAppLayout;
    v26 = [SBSwitcherToActiveFloatingSwitcherModifier alloc];
    _newMultitaskingModifier = [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
    v21 = v26;
    fromFloatingAppLayout = v25;
    v22 = transitionID;
    v23 = 1;
    v24 = v25;
    goto LABEL_11;
  }

  if (fromFloatingSwitcherVisible)
  {
    v18 = fromFloatingAppLayout;
    v19 = [SBSwitcherToActiveFloatingSwitcherModifier alloc];
    _newMultitaskingModifier = [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
    v21 = v19;
    fromFloatingAppLayout = v18;
    v22 = transitionID;
    v23 = 0;
    v24 = toFloatingAppLayout;
LABEL_11:
    v27 = [(SBSwitcherToActiveFloatingSwitcherModifier *)v21 initWithTransitionID:v22 direction:v23 fullScreenAppLayout:v24 floatingDeckModifier:_newMultitaskingModifier];
LABEL_12:
    v16 = v27;

    goto LABEL_16;
  }

  if (isDragAndDropTransition)
  {
    v17 = [[SBDropApplicationFloatingSwitcherModifier alloc] initWithTransitionID:transitionID fromAppLayout:fromFloatingAppLayout toAppLayout:toFloatingAppLayout];
    goto LABEL_15;
  }

  v16 = [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _entityRemovalModifierForEvent:eventCopy];
  if (!v16)
  {
    if ([eventCopy isMoveDisplaysTransition])
    {
      v17 = [[SBMoveDisplaysTransitionSwitcherModifier alloc] initWithTransitionEvent:eventCopy];
      goto LABEL_15;
    }

    if (([eventCopy isAnySplitViewToOrFromSlideOverEvent] & 1) == 0 && (objc_msgSend(eventCopy, "isSlideOverToFullScreenEvent") & 1) == 0)
    {
      if (fromFloatingAppLayout)
      {
        v29 = toFloatingAppLayout == 0;
      }

      else
      {
        v29 = 1;
      }

      v30 = !v29;
      if (!v29)
      {
        if ([fromFloatingAppLayout isEqual:toFloatingAppLayout])
        {
          v31 = fromFloatingAppLayout;
          fromInterfaceOrientation = [eventCopy fromInterfaceOrientation];
          v29 = fromInterfaceOrientation == [eventCopy toInterfaceOrientation];
          fromFloatingAppLayout = v31;
          if (!v29)
          {
            v38 = [SBRotationSwitcherModifier alloc];
            _newMultitaskingModifier = [eventCopy toFloatingAppLayout];
            fromInterfaceOrientation2 = [eventCopy fromInterfaceOrientation];
            toInterfaceOrientation = [eventCopy toInterfaceOrientation];
            v41 = v38;
            fromFloatingAppLayout = v31;
            v27 = [(SBRotationSwitcherModifier *)v41 initWithTransitionID:transitionID appLayout:_newMultitaskingModifier fromInterfaceOrientation:fromInterfaceOrientation2 toInterfaceOrientation:toInterfaceOrientation];
            goto LABEL_12;
          }
        }
      }

      if (([eventCopy isEnteringSplitViewPeekEvent] & 1) == 0 && (objc_msgSend(eventCopy, "isEnteringSlideOverPeekEvent") & 1) == 0)
      {
        if ([eventCopy isExitingSlideOverPeekToAppEvent])
        {
          v33 = fromFloatingAppLayout;
          v34 = [SBExitSlideOverPeekSwitcherModifier alloc];
          activeAppLayout = self->_activeAppLayout;
          toFloatingConfiguration2 = [eventCopy toFloatingConfiguration];
          v37 = v34;
          fromFloatingAppLayout = v33;
          v17 = [(SBExitSlideOverPeekSwitcherModifier *)v37 initWithTransitionID:transitionID floatingAppLayout:activeAppLayout floatingConfiguration:toFloatingConfiguration2];
          goto LABEL_15;
        }

        if ([eventCopy isExitingSlideOverPeekToHomeScreenEvent])
        {
          v42 = fromFloatingAppLayout;
          v43 = [SBPeekToOffscreenSwitcherModifier alloc];
          _newMultitaskingModifier = [eventCopy fromFloatingAppLayout];
          fromPeekConfiguration = [eventCopy fromPeekConfiguration];
          v45 = v43;
          fromFloatingAppLayout = v42;
          v27 = [(SBPeekToOffscreenSwitcherModifier *)v45 initWithTransitionID:transitionID peekingAppLayout:_newMultitaskingModifier peekConfiguration:fromPeekConfiguration spaceConfiguration:1];
          goto LABEL_12;
        }

        if (!SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]) && (objc_msgSend(eventCopy, "isSlideOverToCenterWindowEvent") & 1) == 0)
        {
          v46 = fromFloatingAppLayout;
          if ([eventCopy isFloatingPulseEvent])
          {
            v47 = [SBPulseTransitionSwitcherModifier alloc];
            toFloatingAppLayout2 = [eventCopy toFloatingAppLayout];
            v16 = [(SBPulseTransitionSwitcherModifier *)v47 initWithTransitionID:transitionID appLayout:toFloatingAppLayout2];

LABEL_64:
            fromFloatingAppLayout = v46;
            goto LABEL_16;
          }

          if (v30)
          {
            if (([fromFloatingAppLayout isEqual:toFloatingAppLayout] & 1) == 0 && fromFloatingConfiguration == toFloatingConfiguration)
            {
              if ([eventCopy fromWindowPickerRole] == 3)
              {
                fromWindowPickerRole = [eventCopy fromWindowPickerRole];
                if (fromWindowPickerRole == [eventCopy toWindowPickerRole])
                {
                  fromFloatingAppLayout = v46;
                  v17 = [[SBSplitDisplayItemCrossblurSwitcherModifier alloc] initWithTransitionID:transitionID fromAppLayout:v46 toAppLayout:toFloatingAppLayout layoutRole:1];
                  goto LABEL_15;
                }
              }

              if (([eventCopy isNewSceneTransition] & 1) != 0 || objc_msgSend(eventCopy, "isMorphFromInAppView"))
              {
                fromFloatingAppLayout = v46;
                v17 = [[SBSlideFloatingAppFromBottomSwitcherModifier alloc] initWithTransitionID:transitionID fromFloatingAppLayout:v46 toFloatingAppLayout:toFloatingAppLayout];
                goto LABEL_15;
              }

              if (([eventCopy isCenterWindowToSlideOverEvent] & 1) == 0)
              {
                v57 = [eventCopy dosidoTransitionDirection] == 1;
                v58 = [SBArcSwipeFloatingSwitcherModifier alloc];
                v59 = v57;
                fromFloatingAppLayout = v46;
                v17 = [(SBArcSwipeFloatingSwitcherModifier *)v58 initWithTransitionID:transitionID fromAppLayout:v46 toAppLayout:toFloatingAppLayout floatingConfiguration:fromFloatingConfiguration direction:v59 needsOvershoot:1];
                goto LABEL_15;
              }

              goto LABEL_63;
            }
          }

          else
          {
            if (!(fromFloatingAppLayout | toFloatingAppLayout))
            {
              goto LABEL_63;
            }

            if (!toFloatingAppLayout)
            {
              if (!fromFloatingAppLayout)
              {
LABEL_61:
                v55 = [eventCopy fromWindowPickerRole] == 3;
                v56 = [eventCopy toWindowPickerRole] == 3;
                if (!v55 && !v56 || ((v55 ^ v56) & 1) == 0)
                {
                  v16 = [[SBMoveFloatingConfigurationFloatingSwitcherModifier alloc] initWithTransitionID:transitionID fromFloatingConfiguration:fromFloatingConfiguration toFloatingConfiguration:toFloatingConfiguration];
                  goto LABEL_64;
                }

                goto LABEL_63;
              }

              goto LABEL_59;
            }
          }

          fromAppLayout = [eventCopy fromAppLayout];
          v51 = [toFloatingAppLayout itemForLayoutRole:1];
          v52 = [fromAppLayout containsItem:v51];

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
          toAppLayout = [eventCopy toAppLayout];
          v54 = [v46 itemForLayoutRole:1];
          LOBYTE(v52) = [toAppLayout containsItem:v54];

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

- (id)floorModifierForTransitionEvent:(id)event
{
  eventCopy = event;
  toFloatingSwitcherVisible = [eventCopy toFloatingSwitcherVisible];
  toFloatingAppLayout = [eventCopy toFloatingAppLayout];
  toEnvironmentMode = [eventCopy toEnvironmentMode];
  if (toFloatingSwitcherVisible)
  {
    multitaskingModifier = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
    goto LABEL_3;
  }

  if (SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]) && toFloatingAppLayout)
  {
    toAppLayout = [eventCopy toAppLayout];

    if (!toAppLayout)
    {
      multitaskingModifier = -[SBSlideOverPeekSwitcherModifier initWithAppLayout:peekConfiguration:environmentMode:fromFloatingConfiguration:]([SBSlideOverPeekSwitcherModifier alloc], "initWithAppLayout:peekConfiguration:environmentMode:fromFloatingConfiguration:", toFloatingAppLayout, [eventCopy toPeekConfiguration], toEnvironmentMode, objc_msgSend(eventCopy, "fromFloatingConfiguration"));
LABEL_3:
      v9 = multitaskingModifier;
      if (multitaskingModifier)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if (!toFloatingAppLayout)
  {
LABEL_12:
    v9 = [[SBStashedFloatingSwitcherModifier alloc] initWithFloatingConfiguration:self->_floatingConfiguration environmentMode:toEnvironmentMode];
    goto LABEL_13;
  }

  if (SBFloatingConfigurationIsStashed(self->_floatingConfiguration))
  {
    goto LABEL_12;
  }

  v11 = [SBActiveAppLayoutFloatingSwitcherModifier alloc];
  toAppLayout2 = [eventCopy toAppLayout];
  v9 = [(SBActiveAppLayoutFloatingSwitcherModifier *)v11 initWithActiveAppLayout:toFloatingAppLayout fullScreenAppLayout:toAppLayout2 floatingConfiguration:self->_floatingConfiguration environmentMode:toEnvironmentMode];

  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v9;
}

- (id)shelfModifierForTransitionEvent:(id)event
{
  eventCopy = event;
  toFloatingAppLayout = [eventCopy toFloatingAppLayout];
  toWindowPickerRole = [eventCopy toWindowPickerRole];
  fromWindowPickerRole = [eventCopy fromWindowPickerRole];
  v8 = toWindowPickerRole != 3 || fromWindowPickerRole == 3;
  if (v8 || [eventCopy toEnvironmentMode] != 3)
  {
    v14 = 0;
  }

  else
  {
    v9 = [toFloatingAppLayout itemForLayoutRole:1];
    bundleIdentifier = [v9 bundleIdentifier];

    v11 = [[SBSwitcherShelf alloc] initWithBundleIdentifier:bundleIdentifier layoutRole:toWindowPickerRole displayMode:1];
    uniqueIdentifier = [(SBSwitcherShelf *)v11 uniqueIdentifier];
    v13 = [(SBChainableModifier *)self childModifierByKey:uniqueIdentifier];

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v15 = [SBShelfSwitcherModifier contentOptionsForTransitionEvent:eventCopy context:self];
      v16 = [SBShelfSwitcherModifier alloc];
      toAppLayout = [eventCopy toAppLayout];
      fromAppLayout = [eventCopy fromAppLayout];
      v14 = [(SBShelfSwitcherModifier *)v16 initWithShelf:v11 contentOptions:v15 activeFullScreenAppLayout:toAppLayout activeFloatingAppLayout:toFloatingAppLayout presentationTargetFrame:fromAppLayout presentedFromAppLayout:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
    }
  }

  return v14;
}

- (id)multitaskingModifierForEvent:(id)event
{
  _defaultMultitaskingModifierClass = [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _defaultMultitaskingModifierClass];
  multitaskingModifier = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  if (([multitaskingModifier isMemberOfClass:_defaultMultitaskingModifierClass] & 1) == 0)
  {
    v6 = objc_alloc_init(_defaultMultitaskingModifierClass);

    multitaskingModifier = v6;
  }

  return multitaskingModifier;
}

- (id)_entityRemovalModifierForEvent:(id)event
{
  eventCopy = event;
  fromFloatingAppLayout = [eventCopy fromFloatingAppLayout];
  if (fromFloatingAppLayout)
  {
    v6 = [eventCopy removalContextForAppLayout:fromFloatingAppLayout];
    if (v6)
    {
      v7 = objc_opt_class();
      if (!SBReduceMotion() && ([v6 animationStyle] - 1) <= 2)
      {
        v7 = objc_opt_class();
      }

      v8 = [v7 alloc];
      transitionID = [eventCopy transitionID];
      fromFloatingAppLayout2 = [eventCopy fromFloatingAppLayout];
      toFloatingAppLayout = [eventCopy toFloatingAppLayout];
      v12 = [v8 initWithTransitionID:transitionID fromAppLayout:fromFloatingAppLayout2 toAppLayout:toFloatingAppLayout floatingConfiguration:self->_floatingConfiguration];
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

- (id)insertionModifierForInsertionEvent:(id)event
{
  eventCopy = event;
  v4 = [SBInsertionSwitcherModifier alloc];
  appLayout = [eventCopy appLayout];

  v6 = [(SBInsertionSwitcherModifier *)v4 initWithAppLayout:appLayout];

  return v6;
}

- (id)swipeToKillModifierForSwipeToKillEvent:(id)event
{
  eventCopy = event;
  v4 = [SBSwipeToKillSwitcherModifier alloc];
  layoutRole = [eventCopy layoutRole];
  appLayout = [eventCopy appLayout];

  v7 = [(SBSwipeToKillSwitcherModifier *)v4 initWithLayoutRole:layoutRole inAppLayout:appLayout fadeOutSwipedItems:0];

  return v7;
}

- (id)removalModifierForRemovalEvent:(id)event
{
  eventCopy = event;
  v4 = [SBRemovalSwitcherModifier alloc];
  layoutRole = [eventCopy layoutRole];
  appLayout = [eventCopy appLayout];
  reason = [eventCopy reason];

  v8 = [(SBRemovalSwitcherModifier *)v4 initWithLayoutRole:layoutRole inAppLayout:appLayout reason:reason];

  return v8;
}

- (id)lowEndHardwareModifier
{
  v2 = +[SBPlatformController sharedInstance];
  v3 = [v2 medusaCapabilities] == 1;

  v4 = [[SBFloatingLowEndHardwareModifier alloc] initWithOptions:v3];

  return v4;
}

- (id)userScrollingModifierForScrollEvent:(id)event
{
  v3 = objc_alloc_init(SBScrollingSwitcherModifier);

  return v3;
}

- (id)_newMultitaskingModifier
{
  _defaultMultitaskingModifierClass = [(SBFloatingFluidSwitcherRootSwitcherModifier *)self _defaultMultitaskingModifierClass];

  return objc_alloc_init(_defaultMultitaskingModifierClass);
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