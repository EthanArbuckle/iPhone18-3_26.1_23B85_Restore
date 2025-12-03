@interface SBGestureRootSwitcherModifier
- (SBGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)handleEvent:(id)event;
- (id)handleGestureEvent:(id)event;
- (id)handleRemovalEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
- (int64_t)gestureType;
@end

@implementation SBGestureRootSwitcherModifier

- (SBGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = SBGestureRootSwitcherModifier;
  result = [(SBSwitcherModifier *)&v5 init];
  if (result)
  {
    result->_currentEnvironmentMode = mode;
  }

  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v11.receiver = self;
  v11.super_class = SBGestureRootSwitcherModifier;
  v4 = [(SBChainableModifier *)&v11 descriptionBuilderWithMultilinePrefix:prefix];
  selectedAppLayout = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  succinctDescription = [selectedAppLayout succinctDescription];
  v7 = [v4 appendObject:succinctDescription withName:@"selectedAppLayout"];

  v8 = SBStringForUnlockedEnvironmentMode(self->_currentEnvironmentMode);
  v9 = [v4 appendObject:v8 withName:@"currentEnvironmentMode"];

  return v4;
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  transitionModifier = [(SBGestureRootSwitcherModifier *)self transitionModifier];
  transitionModifierBeforeHandlingEvent = self->_transitionModifierBeforeHandlingEvent;
  self->_transitionModifierBeforeHandlingEvent = transitionModifier;

  gestureModifier = [(SBGestureRootSwitcherModifier *)self gestureModifier];
  gestureModifierBeforeHandlingEvent = self->_gestureModifierBeforeHandlingEvent;
  self->_gestureModifierBeforeHandlingEvent = gestureModifier;

  v13.receiver = self;
  v13.super_class = SBGestureRootSwitcherModifier;
  v9 = [(SBChainableModifier *)&v13 handleEvent:eventCopy];

  v10 = self->_transitionModifierBeforeHandlingEvent;
  self->_transitionModifierBeforeHandlingEvent = 0;

  v11 = self->_gestureModifierBeforeHandlingEvent;
  self->_gestureModifierBeforeHandlingEvent = 0;

  return v9;
}

- (id)handleTransitionEvent:(id)event
{
  v32 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v25.receiver = self;
  v25.super_class = SBGestureRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v25 handleTransitionEvent:eventCopy];
  if ([eventCopy phase]== 1 && [eventCopy isGestureInitiated])
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
        v29 = eventCopy;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[%@]: No gesture modifier to handle gesture initiated transition event %@", buf, 0x16u);
        goto LABEL_12;
      }

      gestureModifierBeforeHandlingEvent = self->_gestureModifierBeforeHandlingEvent;
    }

    v7 = [(SBGestureRootSwitcherModifier *)self transitionChildModifierForMainTransitionEvent:eventCopy activeGestureModifier:gestureModifierBeforeHandlingEvent];
    if (v7)
    {
      [(SBChainableModifier *)self addChildModifier:v7 atLevel:0 key:@"Transition"];
      v8 = MEMORY[0x277CCACA8];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v8 stringWithFormat:@"%@ handling gesture initiated transition.", v10];
      [eventCopy handleWithReason:v11];

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
        v31 = eventCopy;
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
        v29 = eventCopy;
        v15 = "[%@]: No transition modifier to handle transition event %@";
        v16 = v12;
        v17 = 22;
        goto LABEL_11;
      }
    }

LABEL_12:

LABEL_13:
  }

  if ([eventCopy phase]== 1)
  {
    self->_currentEnvironmentMode = [eventCopy toEnvironmentMode];
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

- (id)handleGestureEvent:(id)event
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = SBGestureRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v15 handleGestureEvent:eventCopy];
  if ([eventCopy phase] == 1)
  {
    gestureType = [eventCopy gestureType];
    if (gestureType == -[SBGestureRootSwitcherModifier gestureType](self, "gestureType") && (![eventCopy isIndirectPanGestureEvent] || objc_msgSend(eventCopy, "gestureType") != 8))
    {
      selectedAppLayout = [eventCopy selectedAppLayout];
      selectedAppLayout = self->_selectedAppLayout;
      self->_selectedAppLayout = selectedAppLayout;

      v9 = [(SBGestureRootSwitcherModifier *)self gestureChildModifierForGestureEvent:eventCopy activeTransitionModifier:self->_transitionModifierBeforeHandlingEvent];
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
          v21 = eventCopy;
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

        [eventCopy handleWithReason:v13];
      }
    }
  }

  return v5;
}

- (id)handleRemovalEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBGestureRootSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v9 handleRemovalEvent:eventCopy];
  appLayout = [eventCopy appLayout];

  if ([(SBAppLayout *)self->_selectedAppLayout isEqual:appLayout])
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

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  return 0;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  objc_opt_class();
  OUTLINED_FUNCTION_6();
  return 0;
}

@end