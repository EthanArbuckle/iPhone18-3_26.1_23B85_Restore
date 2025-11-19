@interface SBFluidSwitcherRootSwitcherModifier
- (id)_handleEvent:(id)a3;
- (id)floorModifier;
- (id)handleEvent:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleHighlightEvent:(id)a3;
- (id)handleInsertionEvent:(id)a3;
- (id)handleReduceMotionChangedEvent:(id)a3;
- (id)handleRemovalEvent:(id)a3;
- (id)handleScrollEvent:(id)a3;
- (id)handleSwipeToKillEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)handleUpdateFocusedAppLayoutEvent:(id)a3;
- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5;
- (void)_setup;
- (void)_updateFloorModifierWithGestureEvent:(id)a3;
- (void)_updateFloorModifierWithProposedFloorModifier:(id)a3;
- (void)_updateFloorModifierWithTransitionEvent:(id)a3;
- (void)_updateLowEndHardwareModifier;
- (void)_updateMultitaskingModifierWithEvent:(id)a3;
- (void)_updateReduceMotionModifierWithReduceMotionChangedEvent:(id)a3;
- (void)_updateTransientlyVisibleSlideOverTongueModifierWithEvent:(id)a3;
- (void)didMoveToParentModifier:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation SBFluidSwitcherRootSwitcherModifier

- (id)floorModifier
{
  v3 = [(SBChainableModifier *)self childModifierByKey:@"Fluid Switcher Floor Modifier"];
  if (!v3)
  {
    v3 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  }

  return v3;
}

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBFluidSwitcherRootSwitcherModifier;
  [(SBChainableModifier *)&v5 setDelegate:?];
  if (a3)
  {
    if (!self->_hasPerformedInitialSetup)
    {
      self->_hasPerformedInitialSetup = 1;
      [(SBFluidSwitcherRootSwitcherModifier *)self _setup];
    }
  }
}

- (void)didMoveToParentModifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBFluidSwitcherRootSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (a3)
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

- (id)handleEvent:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v7.receiver = self;
  v7.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBChainableModifier *)&v7 handleEvent:v4];

  kdebug_trace();

  return v5;
}

- (id)_handleEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBFluidSwitcherRootSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v7 _handleEvent:v4];
  [(SBFluidSwitcherRootSwitcherModifier *)self _updateTransientlyVisibleSlideOverTongueModifierWithEvent:v4, v7.receiver, v7.super_class];

  return v5;
}

- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  v12 = v11;
  if (v11 != v9)
  {

LABEL_3:
    v19.receiver = self;
    v19.super_class = SBFluidSwitcherRootSwitcherModifier;
    v13 = [(SBChainableModifier *)&v19 responseForProposedChildResponse:v8 childModifier:v9 event:v10];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __92__SBFluidSwitcherRootSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke;
    v18[3] = &unk_2783AF6C8;
    v18[4] = self;
    v14 = [v13 responseByTransformingResponseWithTransformer:v18];

    goto LABEL_6;
  }

  v15 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  v16 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];

  if (v15 == v16)
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

- (id)handleGestureEvent:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v13 handleGestureEvent:v4];
  if ([v4 phase] == 1)
  {
    [(SBFluidSwitcherRootSwitcherModifier *)self _updateFloorModifierWithGestureEvent:v4];
    if ([v4 isHandled])
    {
      goto LABEL_11;
    }

    v6 = [(SBFluidSwitcherRootSwitcherModifier *)self gestureModifierForGestureEvent:v4];
    if (v6)
    {
      [(SBChainableModifier *)self addChildModifier:v6 atLevel:3 key:0];
      v7 = SBLogAppSwitcher();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [v6 succinctDescription];
        *buf = 138412546;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for gesture %@.", buf, 0x16u);
      }
    }

    goto LABEL_10;
  }

  v6 = [(SBFluidSwitcherRootSwitcherModifier *)self windowManagementContext];
  if (([v6 isChamoisOrFlexibleWindowing] & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v11 = [v4 isWindowDragGestureEvent];

  if (v11)
  {
    [(SBFluidSwitcherRootSwitcherModifier *)self _updateFloorModifierWithGestureEvent:v4];
  }

LABEL_11:

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v22 handleTransitionEvent:v4];
  [(SBFluidSwitcherRootSwitcherModifier *)self _updateMultitaskingModifierWithEvent:v4];
  v6 = [v4 phase];
  if (v6 >= 2)
  {
    if (v6 != 2 && ([v4 isAnimated] & 1) != 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    [(SBFluidSwitcherRootSwitcherModifier *)self _updateFloorModifierWithTransitionEvent:v4];
    goto LABEL_9;
  }

  if (v6 == 1 && (([v4 isDragAndDropTransition] & 1) != 0 || objc_msgSend(v4, "isAnySplitViewToOrFromSlideOverEvent")))
  {
    goto LABEL_8;
  }

LABEL_9:
  if ([v4 phase] == 2 || (objc_msgSend(v4, "isAnimated") & 1) == 0)
  {
    v7 = [(SBFluidSwitcherRootSwitcherModifier *)self shelfModifierForTransitionEvent:v4];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 shelf];
      v10 = [v9 uniqueIdentifier];
      [(SBChainableModifier *)self addChildModifier:v8 atLevel:5 key:v10];
    }
  }

  if ([v4 phase] == 1 && (objc_msgSend(v4, "isHandled") & 1) == 0)
  {
    if ([v4 isRotationTransition] && (v11 = objc_msgSend(v4, "fromInterfaceOrientation"), v11 == objc_msgSend(v4, "toInterfaceOrientation")))
    {
      [(SBFluidSwitcherRootSwitcherModifier *)self switcherModifierLevelForTransitionEvent:v4];
      v12 = 0;
    }

    else
    {
      v12 = [(SBFluidSwitcherRootSwitcherModifier *)self transitionModifierForMainTransitionEvent:v4];
      v13 = [(SBFluidSwitcherRootSwitcherModifier *)self switcherModifierLevelForTransitionEvent:v4];
      if (v12)
      {
        [(SBChainableModifier *)self addChildModifier:v12 atLevel:v13 key:0];
        v14 = SBLogAppSwitcher();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = [v12 succinctDescription];
          *buf = 138412546;
          v24 = v16;
          v25 = 2112;
          v26 = v17;
          _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for transition %@.", buf, 0x16u);
        }

        if (objc_opt_respondsToSelector())
        {
          v18 = [v12 consumedPreludeToken];
          if (v18)
          {
            v19 = [[SBConsumedPreludeAnimationTokenSwitcherEventResponse alloc] initWithPreludeToken:v18];
            v20 = SBAppendSwitcherModifierResponse(v19, v5);

            v5 = v20;
          }
        }
      }
    }
  }

  return v5;
}

- (id)handleReduceMotionChangedEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBFluidSwitcherRootSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v7 handleReduceMotionChangedEvent:v4];
  [(SBFluidSwitcherRootSwitcherModifier *)self _updateMultitaskingModifierWithEvent:v4, v7.receiver, v7.super_class];
  [(SBFluidSwitcherRootSwitcherModifier *)self _updateReduceMotionModifierWithReduceMotionChangedEvent:v4];

  return v5;
}

- (id)handleSwipeToKillEvent:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v14 handleSwipeToKillEvent:v4];
  v6 = [v4 appLayout];
  if (v6)
  {
    v7 = [(SBFluidSwitcherRootSwitcherModifier *)self _swipeToKillModifierKeyForAppLayout:v6];
    v8 = [(SBChainableModifier *)self childModifierByKey:v7];
    if (!v8)
    {
      [v4 progress];
      if (BSFloatIsZero())
      {
        v8 = 0;
      }

      else
      {
        v8 = [(SBFluidSwitcherRootSwitcherModifier *)self swipeToKillModifierForSwipeToKillEvent:v4];
        if (v8)
        {
          [(SBChainableModifier *)self addChildModifier:v8 atLevel:3 key:v7];
          v9 = SBLogAppSwitcher();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            v12 = [v8 succinctDescription];
            *buf = 138412546;
            v16 = v11;
            v17 = 2112;
            v18 = v12;
            _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for swipe to kill %@.", buf, 0x16u);
          }
        }
      }
    }
  }

  return v5;
}

- (id)handleHighlightEvent:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v16 handleHighlightEvent:v4];
  v6 = [v4 appLayout];
  if (v6)
  {
    v7 = [v4 appLayout];
    v8 = [v7 leafAppLayoutForRole:{objc_msgSend(v4, "layoutRole")}];

    v9 = [(SBFluidSwitcherRootSwitcherModifier *)self _highlightModifierKeyForAppLayout:v8];
    if (![v4 phase])
    {
      v10 = [(SBFluidSwitcherRootSwitcherModifier *)self highlightModifierForHighlightEvent:v4];
      if (v10)
      {
        [(SBChainableModifier *)self addChildModifier:v10 atLevel:3 key:v9];
        v11 = SBLogAppSwitcher();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = [v10 succinctDescription];
          *buf = 138412546;
          v18 = v13;
          v19 = 2112;
          v20 = v14;
          _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for highlight %@.", buf, 0x16u);
        }
      }
    }
  }

  return v5;
}

- (id)handleInsertionEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v12 handleInsertionEvent:v4];
  if ([v4 phase] == 1)
  {
    v6 = [(SBFluidSwitcherRootSwitcherModifier *)self insertionModifierForInsertionEvent:v4];
    if (v6)
    {
      [(SBChainableModifier *)self addChildModifier:v6 atLevel:3 key:0];
      v7 = SBLogAppSwitcher();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [v6 succinctDescription];
        *buf = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for insertion %@.", buf, 0x16u);
      }
    }
  }

  return v5;
}

- (id)handleRemovalEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v12 handleRemovalEvent:v4];
  if ([v4 phase] == 1)
  {
    v6 = [(SBFluidSwitcherRootSwitcherModifier *)self removalModifierForRemovalEvent:v4];
    if (v6)
    {
      [(SBChainableModifier *)self addChildModifier:v6 atLevel:3 key:0];
      v7 = SBLogAppSwitcher();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [v6 succinctDescription];
        *buf = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for removal %@.", buf, 0x16u);
      }
    }
  }

  return v5;
}

- (id)handleScrollEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v12 handleScrollEvent:v4];
  if (![v4 phase] && objc_msgSend(v4, "isUserInitiated"))
  {
    v6 = [(SBChainableModifier *)self childModifierByKey:@"UserScrollingModifier"];
    if (!v6)
    {
      v6 = [(SBFluidSwitcherRootSwitcherModifier *)self userScrollingModifierForScrollEvent:v4];
      if (v6)
      {
        [(SBChainableModifier *)self addChildModifier:v6 atLevel:3 key:@"UserScrollingModifier"];
        v7 = SBLogAppSwitcher();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          v10 = [v6 succinctDescription];
          *buf = 138412546;
          v14 = v9;
          v15 = 2112;
          v16 = v10;
          _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[%@] Adding child modifier for scroll %@.", buf, 0x16u);
        }
      }
    }
  }

  return v5;
}

- (id)handleUpdateFocusedAppLayoutEvent:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBFluidSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v14 handleUpdateFocusedAppLayoutEvent:v4];
  v6 = [v4 appLayout];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"FocusedAppModifier-%p", v6];
    v8 = [(SBChainableModifier *)self childModifierByKey:v7];
    if (!v8)
    {
      if ([v4 isFocused])
      {
        v8 = [(SBFluidSwitcherRootSwitcherModifier *)self focusedAppModifierForUpdateFocusedAppLayoutEvent:v4];
        if (v8)
        {
          [(SBChainableModifier *)self addChildModifier:v8 atLevel:3 key:v7];
          v9 = SBLogAppSwitcher();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            v12 = [v8 succinctDescription];
            *buf = 138412546;
            v16 = v11;
            v17 = 2112;
            v18 = v12;
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

- (void)_updateFloorModifierWithTransitionEvent:(id)a3
{
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifierForTransitionEvent:a3];
  v6 = v5;
  if (!v5)
  {
    [(SBFluidSwitcherRootSwitcherModifier *)a2 _updateFloorModifierWithTransitionEvent:?];
    v5 = 0;
  }

  [(SBFluidSwitcherRootSwitcherModifier *)self _updateFloorModifierWithProposedFloorModifier:v5];
}

- (void)_updateFloorModifierWithGestureEvent:(id)a3
{
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifierForGestureEvent:a3];
  v6 = v5;
  if (!v5)
  {
    [(SBFluidSwitcherRootSwitcherModifier *)a2 _updateFloorModifierWithGestureEvent:?];
    v5 = 0;
  }

  [(SBFluidSwitcherRootSwitcherModifier *)self _updateFloorModifierWithProposedFloorModifier:v5];
}

- (void)_updateFloorModifierWithProposedFloorModifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  v6 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  v7 = v6;
  if (v6 == v4)
  {
    v8 = v6;
  }

  else
  {
    if (v6 && v6 != v5)
    {
      [(SBChainableModifier *)self removeChildModifier:v6];
    }

    v8 = v4;

    if (v5 != v8)
    {
      [(SBChainableModifier *)self addChildModifier:v8 atLevel:12 key:@"Fluid Switcher Floor Modifier"];
    }

    v9 = SBLogAppSwitcher();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v8 succinctDescription];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "[%@] Updated floor modifier to %@", &v13, 0x16u);
    }
  }
}

- (void)_updateMultitaskingModifierWithEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  v6 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifierForEvent:v4];

  if (!v6 || v6 == v5)
  {
    v7 = v5;
  }

  else
  {
    if (v5)
    {
      [(SBChainableModifier *)self removeChildModifier:v5];
    }

    v7 = v6;

    [(SBChainableModifier *)self addChildModifier:v7 atLevel:13 key:@"Fluid Switcher Multitasking Modifier"];
    v8 = SBLogAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v7 succinctDescription];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "[%@] Updated multitasking modifier to %@", &v12, 0x16u);
    }
  }
}

- (void)_updateReduceMotionModifierWithReduceMotionChangedEvent:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)self _reduceMotionModifier];
  v6 = [(SBFluidSwitcherRootSwitcherModifier *)self reduceMotionModifierForReduceMotionChangedEvent:v4];
  v7 = v6;
  if (v6 && v5 != v6)
  {
    [(SBChainableModifier *)self removeChildModifier:v5];
    [(SBChainableModifier *)self addChildModifier:v7 atLevel:1 key:@"Fluid Switcher Reduce Motion Modifier"];
    v8 = SBLogAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 succinctDescription];
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "[Fluid Switcher Root] Handled reduce motion changed event %@ by adding child modifier %@.", &v10, 0x16u);
    }
  }
}

- (void)_updateLowEndHardwareModifier
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(SBFluidSwitcherRootSwitcherModifier *)self lowEndHardwareModifier];
  if (v3)
  {
    v4 = [(SBChainableModifier *)self childModifierByKey:@"Fluid Switcher Low End Hardware Modifier"];
    v5 = v4;
    if (v4 && v4 != v3)
    {
      [(SBChainableModifier *)self removeChildModifier:v4];
      v6 = SBLogAppSwitcher();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [v5 succinctDescription];
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "[Fluid Switcher Root] Removed low end hardware modifier: %@.", &v10, 0xCu);
      }
    }

    [(SBChainableModifier *)self addChildModifier:v3 atLevel:0 key:@"Fluid Switcher Low End Hardware Modifier"];
    v8 = SBLogAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 succinctDescription];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "[Fluid Switcher Root] Added low end hardware modifier: %@.", &v10, 0xCu);
    }
  }
}

- (void)_updateTransientlyVisibleSlideOverTongueModifierWithEvent:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [(SBFluidSwitcherRootSwitcherModifier *)self transientlyVisibleSlideOverTongueModifierForEvent:a3];
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
      v9 = [v4 succinctDescription];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
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