@interface SBGestureRootSwitcherModifier
- (SBGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4;
- (id)handleEvent:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleRemovalEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4;
- (int64_t)gestureType;
@end

@implementation SBGestureRootSwitcherModifier

- (SBGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBGestureRootSwitcherModifier;
  result = [(SBSwitcherModifier *)&v5 init];
  if (result)
  {
    result->_currentEnvironmentMode = a3;
  }

  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBGestureRootSwitcherModifier;
  v4 = [(SBChainableModifier *)&v11 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  v6 = [v5 succinctDescription];
  v7 = [v4 appendObject:v6 withName:@"selectedAppLayout"];

  v8 = SBStringForUnlockedEnvironmentMode(self->_currentEnvironmentMode);
  v9 = [v4 appendObject:v8 withName:@"currentEnvironmentMode"];

  return v4;
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  v5 = [(SBGestureRootSwitcherModifier *)self transitionModifier];
  transitionModifierBeforeHandlingEvent = self->_transitionModifierBeforeHandlingEvent;
  self->_transitionModifierBeforeHandlingEvent = v5;

  v7 = [(SBGestureRootSwitcherModifier *)self gestureModifier];
  gestureModifierBeforeHandlingEvent = self->_gestureModifierBeforeHandlingEvent;
  self->_gestureModifierBeforeHandlingEvent = v7;

  v13.receiver = self;
  v13.super_class = SBGestureRootSwitcherModifier;
  v9 = [(SBChainableModifier *)&v13 handleEvent:v4];

  v10 = self->_transitionModifierBeforeHandlingEvent;
  self->_transitionModifierBeforeHandlingEvent = 0;

  v11 = self->_gestureModifierBeforeHandlingEvent;
  self->_gestureModifierBeforeHandlingEvent = 0;

  return v9;
}

- (id)handleTransitionEvent:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SBGestureRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v25 handleTransitionEvent:v4];
  if ([v4 phase]== 1 && [v4 isGestureInitiated])
  {
    gestureModifierBeforeHandlingEvent = self->_gestureModifierBeforeHandlingEvent;
    if (!gestureModifierBeforeHandlingEvent)
    {
      if (![(SBGestureRootSwitcherModifier *)self canTransitionWithoutGestureModifier])
      {
        v7 = SBLogAppSwitcher();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_13;
        }

        v24 = objc_opt_class();
        v12 = NSStringFromClass(v24);
        *buf = 138412546;
        v27 = v12;
        v28 = 2112;
        v29 = v4;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[%@]: No gesture modifier to handle gesture initiated transition event %@", buf, 0x16u);
        goto LABEL_12;
      }

      gestureModifierBeforeHandlingEvent = self->_gestureModifierBeforeHandlingEvent;
    }

    v7 = [(SBGestureRootSwitcherModifier *)self transitionChildModifierForMainTransitionEvent:v4 activeGestureModifier:gestureModifierBeforeHandlingEvent];
    if (v7)
    {
      [(SBChainableModifier *)self addChildModifier:v7 atLevel:0 key:@"Transition"];
      v8 = MEMORY[0x277CCACA8];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v8 stringWithFormat:@"%@ handling gesture initiated transition.", v10];
      [v4 handleWithReason:v11];

      v12 = SBLogAppSwitcher();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138412802;
        v27 = v14;
        v28 = 2112;
        v29 = v7;
        v30 = 2112;
        v31 = v4;
        v15 = "[%@]: Adding transition modifier %@ for event %@";
        v16 = v12;
        v17 = 32;
LABEL_11:
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, v15, buf, v17);
      }
    }

    else
    {
      v12 = SBLogAppSwitcher();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v14 = NSStringFromClass(v18);
        *buf = 138412546;
        v27 = v14;
        v28 = 2112;
        v29 = v4;
        v15 = "[%@]: No transition modifier to handle transition event %@";
        v16 = v12;
        v17 = 22;
        goto LABEL_11;
      }
    }

LABEL_12:

LABEL_13:
  }

  if ([v4 phase]== 1)
  {
    self->_currentEnvironmentMode = [v4 toEnvironmentMode];
    v19 = SBLogAppSwitcher();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = SBStringForUnlockedEnvironmentMode(self->_currentEnvironmentMode);
      *buf = 138412546;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, "[%@] Updating our notion of starting environment to %@", buf, 0x16u);
    }
  }

  return v5;
}

- (id)handleGestureEvent:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBGestureRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v15 handleGestureEvent:v4];
  if ([v4 phase] == 1)
  {
    v6 = [v4 gestureType];
    if (v6 == -[SBGestureRootSwitcherModifier gestureType](self, "gestureType") && (![v4 isIndirectPanGestureEvent] || objc_msgSend(v4, "gestureType") != 8))
    {
      v7 = [v4 selectedAppLayout];
      selectedAppLayout = self->_selectedAppLayout;
      self->_selectedAppLayout = v7;

      v9 = [(SBGestureRootSwitcherModifier *)self gestureChildModifierForGestureEvent:v4 activeTransitionModifier:self->_transitionModifierBeforeHandlingEvent];
      if (v9)
      {
        [(SBChainableModifier *)self addChildModifier:v9 atLevel:1 key:@"Gesture"];
        v10 = SBLogAppSwitcher();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          *buf = 138412802;
          v17 = v12;
          v18 = 2112;
          v19 = v9;
          v20 = 2112;
          v21 = v4;
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "[%@]: Adding gesture modifier %@ for event %@", buf, 0x20u);
        }

        if (self->_transitionModifierBeforeHandlingEvent)
        {
          v13 = @"Continuing gesture";
        }

        else
        {
          v13 = @"Starting new gesture";
        }

        [v4 handleWithReason:v13];
      }
    }
  }

  return v5;
}

- (id)handleRemovalEvent:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBGestureRootSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v9 handleRemovalEvent:v4];
  v6 = [v4 appLayout];

  if ([(SBAppLayout *)self->_selectedAppLayout isEqual:v6])
  {
    selectedAppLayout = self->_selectedAppLayout;
    self->_selectedAppLayout = 0;
  }

  return v5;
}

- (int64_t)gestureType
{
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  return 0;
}

- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4
{
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  return 0;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4
{
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  return 0;
}

@end