@interface _UIKeyboardShortcutInvocation
- (BOOL)canInvokeKeyboardShortcut;
- (UIResponder)originatingResponder;
- (_UIKeyboardShortcutInvocation)initWithKeyboardShortcutLeaf:(id)leaf validatedKeyboardShortcutLeaf:(id)shortcutLeaf triggeringEvent:(id)event originatingResponder:(id)responder target:(id)target;
- (_UIMenuLeaf)keyboardShortcutLeafToInvoke;
- (id)target;
- (void)performKeyDownAction;
- (void)performKeyUpAction;
@end

@implementation _UIKeyboardShortcutInvocation

- (_UIKeyboardShortcutInvocation)initWithKeyboardShortcutLeaf:(id)leaf validatedKeyboardShortcutLeaf:(id)shortcutLeaf triggeringEvent:(id)event originatingResponder:(id)responder target:(id)target
{
  leafCopy = leaf;
  shortcutLeafCopy = shortcutLeaf;
  eventCopy = event;
  responderCopy = responder;
  targetCopy = target;
  v21.receiver = self;
  v21.super_class = _UIKeyboardShortcutInvocation;
  v18 = [(_UIKeyboardShortcutInvocation *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_keyboardShortcutLeaf, leaf);
    objc_storeStrong(&v19->_validatedKeyboardShortcutLeaf, shortcutLeaf);
    objc_storeStrong(&v19->_triggeringEvent, event);
    objc_storeWeak(&v19->_originatingResponder, responderCopy);
    objc_storeWeak(&v19->_target, targetCopy);
  }

  return v19;
}

- (_UIMenuLeaf)keyboardShortcutLeafToInvoke
{
  v3 = dyld_program_sdk_at_least();
  v4 = 8;
  if (v3)
  {
    v4 = 16;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (BOOL)canInvokeKeyboardShortcut
{
  keyboardShortcutLeafToInvoke = [(_UIKeyboardShortcutInvocation *)self keyboardShortcutLeafToInvoke];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = keyboardShortcutLeafToInvoke;
    WeakRetained = objc_loadWeakRetained(&self->_target);
    CanPerformAction = _UIResponderCanPerformAction(WeakRetained, [v6 action], v6);
  }

  else
  {
    CanPerformAction = 1;
  }

  return CanPerformAction;
}

- (void)performKeyDownAction
{
  if (_UIApplicationProcessIsSpringBoard())
  {
    triggeringEvent = self->_triggeringEvent;
  }

  else
  {
    triggeringEvent = 0;
  }

  v4 = triggeringEvent;
  keyboardShortcutLeafToInvoke = [(_UIKeyboardShortcutInvocation *)self keyboardShortcutLeafToInvoke];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = keyboardShortcutLeafToInvoke;
    WeakRetained = objc_loadWeakRetained(&self->_target);
    [v7 _performDownActionWithSender:v4 target:WeakRetained];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_target);
    [keyboardShortcutLeafToInvoke performWithSender:v4 target:WeakRetained];
  }
}

- (void)performKeyUpAction
{
  keyboardShortcutLeafToInvoke = [(_UIKeyboardShortcutInvocation *)self keyboardShortcutLeafToInvoke];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKeyboardShortcutInvocation.m" lineNumber:93 description:@"Key up actions are only supported on UIKeyCommand."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_target);
  [keyboardShortcutLeafToInvoke _performUpActionWithSender:0 target:WeakRetained];
}

- (UIResponder)originatingResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_originatingResponder);

  return WeakRetained;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end