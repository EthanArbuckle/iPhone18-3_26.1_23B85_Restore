@interface _UIEventDeferringBehavior_Default
- (BOOL)wantsLocalCompatibilityRules;
- (BOOL)wantsLocalIdealRules;
- (_UIEventDeferringBehavior_Default)init;
- (_UIEventDeferringBehavior_Default)initWithEventDeferringManager:(id)a3;
- (_UIEventDeferringManager)eventDeferringManager;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setSystemShellBehaviorDelegate:(id)a3;
- (void)setSystemShellManagesKeyboardFocus:(BOOL)a3;
@end

@implementation _UIEventDeferringBehavior_Default

- (BOOL)wantsLocalIdealRules
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDeferringManager);
  v3 = [WeakRetained windowHostingScene];
  v4 = [v3 _FBSScene];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)wantsLocalCompatibilityRules
{
  if (![(_UIEventDeferringBehavior_Default *)self wantsLocalIdealRules])
  {
    return 1;
  }

  if (wantsLocalCompatibilityRules_onceToken != -1)
  {
    dispatch_once(&wantsLocalCompatibilityRules_onceToken, &__block_literal_global_746);
  }

  if (wantsLocalCompatibilityRules_defaultWantsCompatRules == 1)
  {
    return ![(_UIEventDeferringBehavior_Default *)self systemShellManagesKeyboardFocus];
  }

  else
  {
    return 0;
  }
}

- (_UIEventDeferringManager)eventDeferringManager
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDeferringManager);

  return WeakRetained;
}

- (_UIEventDeferringBehavior_Default)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIEventDeferringBehavior_Default.m" lineNumber:32 description:{@"init is not allowed on %@", objc_opt_class()}];

  return 0;
}

- (_UIEventDeferringBehavior_Default)initWithEventDeferringManager:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UIEventDeferringBehavior_Default;
  v4 = [(_UIEventDeferringBehavior_Default *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = objc_storeWeak(&v4->_eventDeferringManager, a3);
    v7 = [a3 windowHostingScene];
    *&v5->_behaviorFlags = *&v5->_behaviorFlags & 0xFE | _UISceneSystemShellManagesKeyboardFocusForScene(v7);
  }

  return v5;
}

- (void)setSystemShellBehaviorDelegate:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIEventDeferringBehavior_Default.m" lineNumber:52 description:{@"%s: Invalid to set a system shell behavior delegate for this class: %@", "-[_UIEventDeferringBehavior_Default setSystemShellBehaviorDelegate:]", self}];
}

- (void)setSystemShellManagesKeyboardFocus:(BOOL)a3
{
  behaviorFlags = self->_behaviorFlags;
  if ((behaviorFlags & 1) != 0 || !a3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIEventDeferringBehavior_Default.m" lineNumber:61 description:{@"%s: This method should never be called again after it is set", "-[_UIEventDeferringBehavior_Default setSystemShellManagesKeyboardFocus:]"}];

    behaviorFlags = self->_behaviorFlags;
  }

  *&self->_behaviorFlags = behaviorFlags & 0xFE | a3;
}

- (id)succinctDescription
{
  v2 = [(_UIEventDeferringBehavior_Default *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:*&self->_behaviorFlags & 1 withName:@"systemShellManagesKeyboardFocus"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIEventDeferringBehavior_Default *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIEventDeferringBehavior_Default *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end