@interface _UIEventDeferringBehavior_Default
- (BOOL)wantsLocalCompatibilityRules;
- (BOOL)wantsLocalIdealRules;
- (_UIEventDeferringBehavior_Default)init;
- (_UIEventDeferringBehavior_Default)initWithEventDeferringManager:(id)manager;
- (_UIEventDeferringManager)eventDeferringManager;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setSystemShellBehaviorDelegate:(id)delegate;
- (void)setSystemShellManagesKeyboardFocus:(BOOL)focus;
@end

@implementation _UIEventDeferringBehavior_Default

- (BOOL)wantsLocalIdealRules
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDeferringManager);
  windowHostingScene = [WeakRetained windowHostingScene];
  _FBSScene = [windowHostingScene _FBSScene];
  v5 = _FBSScene != 0;

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEventDeferringBehavior_Default.m" lineNumber:32 description:{@"init is not allowed on %@", objc_opt_class()}];

  return 0;
}

- (_UIEventDeferringBehavior_Default)initWithEventDeferringManager:(id)manager
{
  v9.receiver = self;
  v9.super_class = _UIEventDeferringBehavior_Default;
  v4 = [(_UIEventDeferringBehavior_Default *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = objc_storeWeak(&v4->_eventDeferringManager, manager);
    windowHostingScene = [manager windowHostingScene];
    *&v5->_behaviorFlags = *&v5->_behaviorFlags & 0xFE | _UISceneSystemShellManagesKeyboardFocusForScene(windowHostingScene);
  }

  return v5;
}

- (void)setSystemShellBehaviorDelegate:(id)delegate
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEventDeferringBehavior_Default.m" lineNumber:52 description:{@"%s: Invalid to set a system shell behavior delegate for this class: %@", "-[_UIEventDeferringBehavior_Default setSystemShellBehaviorDelegate:]", self}];
}

- (void)setSystemShellManagesKeyboardFocus:(BOOL)focus
{
  behaviorFlags = self->_behaviorFlags;
  if ((behaviorFlags & 1) != 0 || !focus)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEventDeferringBehavior_Default.m" lineNumber:61 description:{@"%s: This method should never be called again after it is set", "-[_UIEventDeferringBehavior_Default setSystemShellManagesKeyboardFocus:]"}];

    behaviorFlags = self->_behaviorFlags;
  }

  *&self->_behaviorFlags = behaviorFlags & 0xFE | focus;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIEventDeferringBehavior_Default *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:*&self->_behaviorFlags & 1 withName:@"systemShellManagesKeyboardFocus"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIEventDeferringBehavior_Default *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIEventDeferringBehavior_Default *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end