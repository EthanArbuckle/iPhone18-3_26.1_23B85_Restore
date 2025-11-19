@interface _UIEventDeferringBehavior_SystemShell
- (BOOL)shouldSuppressRemoteRuleForOwningElement:(id)a3 inEnvironment:(id)a4;
- (BOOL)wantsLocalCompatibilityRules;
- (_UIEventDeferringBehavior_SystemShell)initWithEventDeferringManager:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)systemShellBehaviorDelegate;
- (int64_t)compareRemoteRuleOwningElement:(id)a3 toElement:(id)a4 inEnvironment:(id)a5;
- (int64_t)isRemoteRuleOwningElement:(id)a3 andContainingWindow:(id)a4 visibleComparedToLocalTargetWindow:(id)a5;
- (void)setSystemShellBehaviorDelegate:(id)a3;
@end

@implementation _UIEventDeferringBehavior_SystemShell

- (BOOL)wantsLocalCompatibilityRules
{
  if (![(_UIEventDeferringBehavior_Default *)self wantsLocalIdealRules])
  {
    return 1;
  }

  v3 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_ShouldWriteCompatibilityEventDeferringRulesForSystemShell, @"ShouldWriteCompatibilityEventDeferringRulesForSystemShell");
  if (byte_1EA95E18C)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if ((~*&self->_behaviorDelegateFlags & 3) != 0)
  {
    v10.receiver = self;
    v10.super_class = _UIEventDeferringBehavior_SystemShell;
    return v4 & [(_UIEventDeferringBehavior_Default *)&v10 wantsLocalCompatibilityRules];
  }

  else
  {
    v5 = [(_UIEventDeferringBehavior_SystemShell *)self systemShellBehaviorDelegate];
    v6 = [v5 eventDeferringManagerSystemShellBehaviorWantsLocalCompatibilityRules];

    v7 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_ShouldWriteCompatibilityEventDeferringRulesForAllProcesses, @"ShouldWriteCompatibilityEventDeferringRulesForAllProcesses");
    if (byte_1ED48AA84)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    return v8 & v4 & v6;
  }
}

- (id)systemShellBehaviorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemShellBehaviorDelegate);

  return WeakRetained;
}

- (_UIEventDeferringBehavior_SystemShell)initWithEventDeferringManager:(id)a3
{
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIEventDeferringBehavior_SystemShell.m" lineNumber:40 description:{@"%s: This is an abstract class that can not be initialized directly.", "-[_UIEventDeferringBehavior_SystemShell initWithEventDeferringManager:]"}];
  }

  v11.receiver = self;
  v11.super_class = _UIEventDeferringBehavior_SystemShell;
  v7 = [(_UIEventDeferringBehavior_Default *)&v11 initWithEventDeferringManager:a3];
  if (v7)
  {
    v8 = +[_UIEventDeferringManager systemShellBehaviorDelegate];
    [(_UIEventDeferringBehavior_SystemShell *)v7 setSystemShellBehaviorDelegate:v8];
  }

  return v7;
}

- (void)setSystemShellBehaviorDelegate:(id)a3
{
  *&self->_behaviorDelegateFlags &= 0xE1u;
  v5 = objc_storeWeak(&self->_systemShellBehaviorDelegate, a3);
  v6 = *&self->_behaviorDelegateFlags & 0xFE;
  if (a3)
  {
    ++v6;
  }

  *&self->_behaviorDelegateFlags = v6;

  WeakRetained = objc_loadWeakRetained(&self->_systemShellBehaviorDelegate);
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_systemShellBehaviorDelegate);
    if (objc_opt_respondsToSelector())
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *&self->_behaviorDelegateFlags = *&self->_behaviorDelegateFlags & 0xFD | v9;

    v10 = objc_loadWeakRetained(&self->_systemShellBehaviorDelegate);
    if (objc_opt_respondsToSelector())
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    *&self->_behaviorDelegateFlags = *&self->_behaviorDelegateFlags & 0xFB | v11;

    v12 = objc_loadWeakRetained(&self->_systemShellBehaviorDelegate);
    if (objc_opt_respondsToSelector())
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    *&self->_behaviorDelegateFlags = *&self->_behaviorDelegateFlags & 0xF7 | v13;

    v15 = objc_loadWeakRetained(&self->_systemShellBehaviorDelegate);
    if (objc_opt_respondsToSelector())
    {
      v14 = 16;
    }

    else
    {
      v14 = 0;
    }

    *&self->_behaviorDelegateFlags = *&self->_behaviorDelegateFlags & 0xEF | v14;
  }
}

- (BOOL)shouldSuppressRemoteRuleForOwningElement:(id)a3 inEnvironment:(id)a4
{
  if ((~*&self->_behaviorDelegateFlags & 5) != 0)
  {
    v10.receiver = self;
    v10.super_class = _UIEventDeferringBehavior_SystemShell;
    return [(_UIEventDeferringBehavior_Default *)&v10 shouldSuppressRemoteRuleForOwningElement:a3 inEnvironment:a4];
  }

  else
  {
    v7 = [(_UIEventDeferringBehavior_SystemShell *)self systemShellBehaviorDelegate];
    v8 = [v7 eventDeferringManagerSystemShellBehavior:self shouldSuppressRemoteRuleForOwningElement:a3 inEnvironment:a4];

    return v8;
  }
}

- (int64_t)compareRemoteRuleOwningElement:(id)a3 toElement:(id)a4 inEnvironment:(id)a5
{
  if ((~*&self->_behaviorDelegateFlags & 9) != 0)
  {
    v14.receiver = self;
    v11 = &v14;
    goto LABEL_5;
  }

  v9 = [(_UIEventDeferringBehavior_SystemShell *)self systemShellBehaviorDelegate];
  v10 = [v9 eventDeferringManagerSystemShellBehavior:self compareRemoteRuleOwningElement:a3 toElement:a4 inEnvironment:a5];

  if (!v10)
  {
    v13 = self;
    v11 = &v13;
LABEL_5:
    v11->super_class = _UIEventDeferringBehavior_SystemShell;
    return [(objc_super *)v11 compareRemoteRuleOwningElement:a3 toElement:a4 inEnvironment:a5, v13];
  }

  return v10;
}

- (int64_t)isRemoteRuleOwningElement:(id)a3 andContainingWindow:(id)a4 visibleComparedToLocalTargetWindow:(id)a5
{
  if ((~*&self->_behaviorDelegateFlags & 0x11) != 0)
  {
    v14.receiver = self;
    v11 = &v14;
    goto LABEL_5;
  }

  v9 = [(_UIEventDeferringBehavior_SystemShell *)self systemShellBehaviorDelegate];
  v10 = [v9 eventDeferringManagerSystemShellBehavior:self isRemoteRuleOwningElement:a3 andContainingWindow:a4 visibleComparedToLocalTargetWindow:a5];

  if (!v10)
  {
    v13 = self;
    v11 = &v13;
LABEL_5:
    v11->super_class = _UIEventDeferringBehavior_SystemShell;
    return [(objc_super *)v11 isRemoteRuleOwningElement:a3 andContainingWindow:a4 visibleComparedToLocalTargetWindow:a5, v13];
  }

  return v10;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v13.receiver = self;
  v13.super_class = _UIEventDeferringBehavior_SystemShell;
  v5 = [(_UIEventDeferringBehavior_Default *)&v13 descriptionBuilderWithMultilinePrefix:?];
  [v5 setActiveMultilinePrefix:a3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79___UIEventDeferringBehavior_SystemShell_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  v12 = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

@end