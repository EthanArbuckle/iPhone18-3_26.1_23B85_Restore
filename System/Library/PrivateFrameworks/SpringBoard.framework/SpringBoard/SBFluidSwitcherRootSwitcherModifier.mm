@interface SBFluidSwitcherRootSwitcherModifier
- (id)_handleEvent:(id)event;
- (id)floorModifier;
- (id)handleEvent:(id)event;
- (id)handleGestureEvent:(id)event;
- (id)handleHighlightEvent:(id)event;
- (id)handleInsertionEvent:(id)event;
- (id)handleReduceMotionChangedEvent:(id)event;
- (id)handleRemovalEvent:(id)event;
- (id)handleScrollEvent:(id)event;
- (id)handleSwipeToKillEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)handleUpdateFocusedAppLayoutEvent:(id)event;
- (id)responseForProposedChildResponse:(id)response childModifier:(id)modifier event:(id)event;
- (void)_setup;
- (void)_updateFloorModifierWithGestureEvent:(id)event;
- (void)_updateFloorModifierWithProposedFloorModifier:(id)modifier;
- (void)_updateFloorModifierWithTransitionEvent:(id)event;
- (void)_updateLowEndHardwareModifier;
- (void)_updateMultitaskingModifierWithEvent:(id)event;
- (void)_updateReduceMotionModifierWithReduceMotionChangedEvent:(id)event;
- (void)_updateTransientlyVisibleSlideOverTongueModifierWithEvent:(id)event;
- (void)didMoveToParentModifier:(id)modifier;
- (void)setDelegate:(id)delegate;
@end

@implementation SBFluidSwitcherRootSwitcherModifier

- (id)floorModifier
{
  multitaskingModifier = [(SBChainableModifier *)self childModifierByKey:@"Fluid Switcher Floor Modifier"];
  if (!multitaskingModifier)
  {
    multitaskingModifier = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  }

  return multitaskingModifier;
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = SBFluidSwitcherRootSwitcherModifier;
  [(SBChainableModifier *)&v5 setDelegate:?];
  if (delegate)
  {
    if (!self->_hasPerformedInitialSetup)
    {
      self->_hasPerformedInitialSetup = 1;
      [(SBFluidSwitcherRootSwitcherModifier *)self _setup];
    }
  }
}

- (void)didMoveToParentModifier:(id)modifier
{
  v5.receiver = self;
  v5.super_class = SBFluidSwitcherRootSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (modifier)
  {
    if (!self->_hasPerformedInitialSetup)
    {
      self->_hasPerformedInitialSetup = 1;
      [(SBFluidSwitcherRootSwitcherModifier *)self _setup];
    }
  }
}

- (void)_setup
{
  [(SBFluidSwitcherRootSwitcherModifier *)self _updateMultitaskingModifierWithEvent:0];
  [(SBFluidSwitcherRootSwitcherModifier *)self _updateFloorModifierWithTransitionEvent:0];
  [(SBFluidSwitcherRootSwitcherModifier *)self _updateReduceMotionModifierWithReduceMotionChangedEvent:0];

  [(SBFluidSwitcherRootSwitcherModifier *)self _updateLowEndHardwareModifier];
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  kdebug_trace();
  v7.receiver = self;
  v7.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBChainableModifier *)&v7 handleEvent:eventCopy];

  kdebug_trace();

  return v5;
}

- (id)_handleEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBFluidSwitcherRootSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v7 _handleEvent:eventCopy];
  [(SBFluidSwitcherRootSwitcherModifier *)self _updateTransientlyVisibleSlideOverTongueModifierWithEvent:eventCopy, v7.receiver, v7.super_class];

  return v5;
}

- (id)responseForProposedChildResponse:(id)response childModifier:(id)modifier event:(id)event
{
  responseCopy = response;
  modifierCopy = modifier;
  eventCopy = event;
  multitaskingModifier = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  v12 = multitaskingModifier;
  if (multitaskingModifier != modifierCopy)
  {

LABEL_3:
    v19.receiver = self;
    v19.super_class = SBFluidSwitcherRootSwitcherModifier;
    v13 = [(SBChainableModifier *)&v19 responseForProposedChildResponse:responseCopy childModifier:modifierCopy event:eventCopy];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __92__SBFluidSwitcherRootSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke;
    v18[3] = &unk_2783AF6C8;
    v18[4] = self;
    v14 = [v13 responseByTransformingResponseWithTransformer:v18];

    goto LABEL_6;
  }

  multitaskingModifier2 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  floorModifier = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];

  if (multitaskingModifier2 == floorModifier)
  {
    goto LABEL_3;
  }

  v14 = 0;
LABEL_6:

  return v14;
}

id __92__SBFluidSwitcherRootSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 31)
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v5 modifier];
    v7 = [v5 level];
    v8 = [v5 key];

    [v4 addChildModifier:v6 atLevel:v7 key:v8];
    v9 = 0;
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

- (id)handleGestureEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v13 handleGestureEvent:eventCopy];
  if ([eventCopy phase] == 1)
  {
    [(SBFluidSwitcherRootSwitcherModifier *)self _updateFloorModifierWithGestureEvent:eventCopy];
    if ([eventCopy isHandled])
    {
      goto LABEL_11;
    }

    windowManagementContext = [(SBFluidSwitcherRootSwitcherModifier *)self gestureModifierForGestureEvent:eventCopy];
    if (windowManagementContext)
    {
      [(SBChainableModifier *)self addChildModifier:windowManagementContext atLevel:3 key:0];
      v7 = SBLogAppSwitcher();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        succinctDescription = [windowManagementContext succinctDescription];
        *buf = 138412546;
        v15 = v9;
        v16 = 2112;
        v17 = succinctDescription;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for gesture %@.", buf, 0x16u);
      }
    }

    goto LABEL_10;
  }

  windowManagementContext = [(SBFluidSwitcherRootSwitcherModifier *)self windowManagementContext];
  if (([windowManagementContext isChamoisOrFlexibleWindowing] & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  isWindowDragGestureEvent = [eventCopy isWindowDragGestureEvent];

  if (isWindowDragGestureEvent)
  {
    [(SBFluidSwitcherRootSwitcherModifier *)self _updateFloorModifierWithGestureEvent:eventCopy];
  }

LABEL_11:

  return v5;
}

- (id)handleTransitionEvent:(id)event
{
  v27 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v22.receiver = self;
  v22.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v22 handleTransitionEvent:eventCopy];
  [(SBFluidSwitcherRootSwitcherModifier *)self _updateMultitaskingModifierWithEvent:eventCopy];
  phase = [eventCopy phase];
  if (phase >= 2)
  {
    if (phase != 2 && ([eventCopy isAnimated] & 1) != 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    [(SBFluidSwitcherRootSwitcherModifier *)self _updateFloorModifierWithTransitionEvent:eventCopy];
    goto LABEL_9;
  }

  if (phase == 1 && (([eventCopy isDragAndDropTransition] & 1) != 0 || objc_msgSend(eventCopy, "isAnySplitViewToOrFromSlideOverEvent")))
  {
    goto LABEL_8;
  }

LABEL_9:
  if ([eventCopy phase] == 2 || (objc_msgSend(eventCopy, "isAnimated") & 1) == 0)
  {
    v7 = [(SBFluidSwitcherRootSwitcherModifier *)self shelfModifierForTransitionEvent:eventCopy];
    v8 = v7;
    if (v7)
    {
      shelf = [v7 shelf];
      uniqueIdentifier = [shelf uniqueIdentifier];
      [(SBChainableModifier *)self addChildModifier:v8 atLevel:5 key:uniqueIdentifier];
    }
  }

  if ([eventCopy phase] == 1 && (objc_msgSend(eventCopy, "isHandled") & 1) == 0)
  {
    if ([eventCopy isRotationTransition] && (v11 = objc_msgSend(eventCopy, "fromInterfaceOrientation"), v11 == objc_msgSend(eventCopy, "toInterfaceOrientation")))
    {
      [(SBFluidSwitcherRootSwitcherModifier *)self switcherModifierLevelForTransitionEvent:eventCopy];
      v12 = 0;
    }

    else
    {
      v12 = [(SBFluidSwitcherRootSwitcherModifier *)self transitionModifierForMainTransitionEvent:eventCopy];
      v13 = [(SBFluidSwitcherRootSwitcherModifier *)self switcherModifierLevelForTransitionEvent:eventCopy];
      if (v12)
      {
        [(SBChainableModifier *)self addChildModifier:v12 atLevel:v13 key:0];
        v14 = SBLogAppSwitcher();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          succinctDescription = [v12 succinctDescription];
          *buf = 138412546;
          v24 = v16;
          v25 = 2112;
          v26 = succinctDescription;
          _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for transition %@.", buf, 0x16u);
        }

        if (objc_opt_respondsToSelector())
        {
          consumedPreludeToken = [v12 consumedPreludeToken];
          if (consumedPreludeToken)
          {
            v19 = [[SBConsumedPreludeAnimationTokenSwitcherEventResponse alloc] initWithPreludeToken:consumedPreludeToken];
            v20 = SBAppendSwitcherModifierResponse(v19, v5);

            v5 = v20;
          }
        }
      }
    }
  }

  return v5;
}

- (id)handleReduceMotionChangedEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBFluidSwitcherRootSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v7 handleReduceMotionChangedEvent:eventCopy];
  [(SBFluidSwitcherRootSwitcherModifier *)self _updateMultitaskingModifierWithEvent:eventCopy, v7.receiver, v7.super_class];
  [(SBFluidSwitcherRootSwitcherModifier *)self _updateReduceMotionModifierWithReduceMotionChangedEvent:eventCopy];

  return v5;
}

- (id)handleSwipeToKillEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v14 handleSwipeToKillEvent:eventCopy];
  appLayout = [eventCopy appLayout];
  if (appLayout)
  {
    v7 = [(SBFluidSwitcherRootSwitcherModifier *)self _swipeToKillModifierKeyForAppLayout:appLayout];
    v8 = [(SBChainableModifier *)self childModifierByKey:v7];
    if (!v8)
    {
      [eventCopy progress];
      if (BSFloatIsZero())
      {
        v8 = 0;
      }

      else
      {
        v8 = [(SBFluidSwitcherRootSwitcherModifier *)self swipeToKillModifierForSwipeToKillEvent:eventCopy];
        if (v8)
        {
          [(SBChainableModifier *)self addChildModifier:v8 atLevel:3 key:v7];
          v9 = SBLogAppSwitcher();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            succinctDescription = [v8 succinctDescription];
            *buf = 138412546;
            v16 = v11;
            v17 = 2112;
            v18 = succinctDescription;
            _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for swipe to kill %@.", buf, 0x16u);
          }
        }
      }
    }
  }

  return v5;
}

- (id)handleHighlightEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v16 handleHighlightEvent:eventCopy];
  appLayout = [eventCopy appLayout];
  if (appLayout)
  {
    appLayout2 = [eventCopy appLayout];
    v8 = [appLayout2 leafAppLayoutForRole:{objc_msgSend(eventCopy, "layoutRole")}];

    v9 = [(SBFluidSwitcherRootSwitcherModifier *)self _highlightModifierKeyForAppLayout:v8];
    if (![eventCopy phase])
    {
      v10 = [(SBFluidSwitcherRootSwitcherModifier *)self highlightModifierForHighlightEvent:eventCopy];
      if (v10)
      {
        [(SBChainableModifier *)self addChildModifier:v10 atLevel:3 key:v9];
        v11 = SBLogAppSwitcher();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          succinctDescription = [v10 succinctDescription];
          *buf = 138412546;
          v18 = v13;
          v19 = 2112;
          v20 = succinctDescription;
          _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for highlight %@.", buf, 0x16u);
        }
      }
    }
  }

  return v5;
}

- (id)handleInsertionEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v12 handleInsertionEvent:eventCopy];
  if ([eventCopy phase] == 1)
  {
    v6 = [(SBFluidSwitcherRootSwitcherModifier *)self insertionModifierForInsertionEvent:eventCopy];
    if (v6)
    {
      [(SBChainableModifier *)self addChildModifier:v6 atLevel:3 key:0];
      v7 = SBLogAppSwitcher();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        succinctDescription = [v6 succinctDescription];
        *buf = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = succinctDescription;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for insertion %@.", buf, 0x16u);
      }
    }
  }

  return v5;
}

- (id)handleRemovalEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v12 handleRemovalEvent:eventCopy];
  if ([eventCopy phase] == 1)
  {
    v6 = [(SBFluidSwitcherRootSwitcherModifier *)self removalModifierForRemovalEvent:eventCopy];
    if (v6)
    {
      [(SBChainableModifier *)self addChildModifier:v6 atLevel:3 key:0];
      v7 = SBLogAppSwitcher();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        succinctDescription = [v6 succinctDescription];
        *buf = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = succinctDescription;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for removal %@.", buf, 0x16u);
      }
    }
  }

  return v5;
}

- (id)handleScrollEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v12 handleScrollEvent:eventCopy];
  if (![eventCopy phase] && objc_msgSend(eventCopy, "isUserInitiated"))
  {
    v6 = [(SBChainableModifier *)self childModifierByKey:@"UserScrollingModifier"];
    if (!v6)
    {
      v6 = [(SBFluidSwitcherRootSwitcherModifier *)self userScrollingModifierForScrollEvent:eventCopy];
      if (v6)
      {
        [(SBChainableModifier *)self addChildModifier:v6 atLevel:3 key:@"UserScrollingModifier"];
        v7 = SBLogAppSwitcher();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          succinctDescription = [v6 succinctDescription];
          *buf = 138412546;
          v14 = v9;
          v15 = 2112;
          v16 = succinctDescription;
          _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for scroll %@.", buf, 0x16u);
        }
      }
    }
  }

  return v5;
}

- (id)handleUpdateFocusedAppLayoutEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v14 handleUpdateFocusedAppLayoutEvent:eventCopy];
  appLayout = [eventCopy appLayout];
  if (appLayout)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"FocusedAppModifier-%p", appLayout];
    v8 = [(SBChainableModifier *)self childModifierByKey:v7];
    if (!v8)
    {
      if ([eventCopy isFocused])
      {
        v8 = [(SBFluidSwitcherRootSwitcherModifier *)self focusedAppModifierForUpdateFocusedAppLayoutEvent:eventCopy];
        if (v8)
        {
          [(SBChainableModifier *)self addChildModifier:v8 atLevel:3 key:v7];
          v9 = SBLogAppSwitcher();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            succinctDescription = [v8 succinctDescription];
            *buf = 138412546;
            v16 = v11;
            v17 = 2112;
            v18 = succinctDescription;
            _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[%@] Adding child modifier for focusedApp %@.", buf, 0x16u);
          }
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v5;
}

- (void)_updateFloorModifierWithTransitionEvent:(id)event
{
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifierForTransitionEvent:event];
  v6 = v5;
  if (!v5)
  {
    [(SBFluidSwitcherRootSwitcherModifier *)a2 _updateFloorModifierWithTransitionEvent:?];
    v5 = 0;
  }

  [(SBFluidSwitcherRootSwitcherModifier *)self _updateFloorModifierWithProposedFloorModifier:v5];
}

- (void)_updateFloorModifierWithGestureEvent:(id)event
{
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifierForGestureEvent:event];
  v6 = v5;
  if (!v5)
  {
    [(SBFluidSwitcherRootSwitcherModifier *)a2 _updateFloorModifierWithGestureEvent:?];
    v5 = 0;
  }

  [(SBFluidSwitcherRootSwitcherModifier *)self _updateFloorModifierWithProposedFloorModifier:v5];
}

- (void)_updateFloorModifierWithProposedFloorModifier:(id)modifier
{
  v17 = *MEMORY[0x277D85DE8];
  modifierCopy = modifier;
  multitaskingModifier = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  floorModifier = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  v7 = floorModifier;
  if (floorModifier == modifierCopy)
  {
    v8 = floorModifier;
  }

  else
  {
    if (floorModifier && floorModifier != multitaskingModifier)
    {
      [(SBChainableModifier *)self removeChildModifier:floorModifier];
    }

    v8 = modifierCopy;

    if (multitaskingModifier != v8)
    {
      [(SBChainableModifier *)self addChildModifier:v8 atLevel:12 key:@"Fluid Switcher Floor Modifier"];
    }

    v9 = SBLogAppSwitcher();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      succinctDescription = [v8 succinctDescription];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = succinctDescription;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "[%@] Updated floor modifier to %@", &v13, 0x16u);
    }
  }
}

- (void)_updateMultitaskingModifierWithEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  multitaskingModifier = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  v6 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifierForEvent:eventCopy];

  if (!v6 || v6 == multitaskingModifier)
  {
    v7 = multitaskingModifier;
  }

  else
  {
    if (multitaskingModifier)
    {
      [(SBChainableModifier *)self removeChildModifier:multitaskingModifier];
    }

    v7 = v6;

    [(SBChainableModifier *)self addChildModifier:v7 atLevel:13 key:@"Fluid Switcher Multitasking Modifier"];
    v8 = SBLogAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      succinctDescription = [v7 succinctDescription];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = succinctDescription;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "[%@] Updated multitasking modifier to %@", &v12, 0x16u);
    }
  }
}

- (void)_updateReduceMotionModifierWithReduceMotionChangedEvent:(id)event
{
  v14 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  _reduceMotionModifier = [(SBFluidSwitcherRootSwitcherModifier *)self _reduceMotionModifier];
  v6 = [(SBFluidSwitcherRootSwitcherModifier *)self reduceMotionModifierForReduceMotionChangedEvent:eventCopy];
  v7 = v6;
  if (v6 && _reduceMotionModifier != v6)
  {
    [(SBChainableModifier *)self removeChildModifier:_reduceMotionModifier];
    [(SBChainableModifier *)self addChildModifier:v7 atLevel:1 key:@"Fluid Switcher Reduce Motion Modifier"];
    v8 = SBLogAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      succinctDescription = [v7 succinctDescription];
      v10 = 138412546;
      v11 = eventCopy;
      v12 = 2112;
      v13 = succinctDescription;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "[Fluid Switcher Root] Handled reduce motion changed event %@ by adding child modifier %@.", &v10, 0x16u);
    }
  }
}

- (void)_updateLowEndHardwareModifier
{
  v12 = *MEMORY[0x277D85DE8];
  lowEndHardwareModifier = [(SBFluidSwitcherRootSwitcherModifier *)self lowEndHardwareModifier];
  if (lowEndHardwareModifier)
  {
    v4 = [(SBChainableModifier *)self childModifierByKey:@"Fluid Switcher Low End Hardware Modifier"];
    v5 = v4;
    if (v4 && v4 != lowEndHardwareModifier)
    {
      [(SBChainableModifier *)self removeChildModifier:v4];
      v6 = SBLogAppSwitcher();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        succinctDescription = [v5 succinctDescription];
        v10 = 138412290;
        v11 = succinctDescription;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "[Fluid Switcher Root] Removed low end hardware modifier: %@.", &v10, 0xCu);
      }
    }

    [(SBChainableModifier *)self addChildModifier:lowEndHardwareModifier atLevel:0 key:@"Fluid Switcher Low End Hardware Modifier"];
    v8 = SBLogAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      succinctDescription2 = [lowEndHardwareModifier succinctDescription];
      v10 = 138412290;
      v11 = succinctDescription2;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "[Fluid Switcher Root] Added low end hardware modifier: %@.", &v10, 0xCu);
    }
  }
}

- (void)_updateTransientlyVisibleSlideOverTongueModifierWithEvent:(id)event
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [(SBFluidSwitcherRootSwitcherModifier *)self transientlyVisibleSlideOverTongueModifierForEvent:event];
  if (v4)
  {
    v5 = [(SBChainableModifier *)self childModifierByKey:@"Fluid Switcher Transiently Visible Slide Over Tongue Modifier"];
    if (v5)
    {
      [(SBChainableModifier *)self removeChildModifier:v5];
    }

    [(SBChainableModifier *)self addChildModifier:v4 atLevel:3 key:@"Fluid Switcher Transiently Visible Slide Over Tongue Modifier"];
    v6 = SBLogAppSwitcher();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      succinctDescription = [v4 succinctDescription];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = succinctDescription;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "[%@] Updated transiently visible slide over tongue modifier to %@", &v10, 0x16u);
    }
  }
}

- (void)_updateFloorModifierWithTransitionEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherRootSwitcherModifier.m" lineNumber:413 description:@"A floor modifier is required"];
}

- (void)_updateFloorModifierWithGestureEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherRootSwitcherModifier.m" lineNumber:419 description:@"A floor modifier is required"];
}

@end