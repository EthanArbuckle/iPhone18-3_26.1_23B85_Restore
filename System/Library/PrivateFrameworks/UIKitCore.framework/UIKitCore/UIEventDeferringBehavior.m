@interface UIEventDeferringBehavior
@end

@implementation UIEventDeferringBehavior

void __65___UIEventDeferringBehavior_Default_wantsLocalCompatibilityRules__block_invoke()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_ShouldWriteCompatibilityEventDeferringRulesForAllProcesses, _UIInternalPreferencesRevisionVar == _UIInternalPreference_ShouldWriteCompatibilityEventDeferringRulesForAllProcesses))
  {
    v1 = 1;
  }

  else
  {
    do
    {
      v1 = v0 >= v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_ShouldWriteCompatibilityEventDeferringRulesForAllProcesses, @"ShouldWriteCompatibilityEventDeferringRulesForAllProcesses", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_ShouldWriteCompatibilityEventDeferringRulesForAllProcesses;
    }

    while (v0 != _UIInternalPreference_ShouldWriteCompatibilityEventDeferringRulesForAllProcesses);
  }

  if (byte_1ED48AA84)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  wantsLocalCompatibilityRules_defaultWantsCompatRules = v2;
}

void __79___UIEventDeferringBehavior_SystemShell_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79___UIEventDeferringBehavior_SystemShell_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __79___UIEventDeferringBehavior_SystemShell_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 32) & 1 withName:@"hasSystemShellBehaviorDelegate"];
  v3 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 32) >> 1) & 1 withName:@"delegateWantsLocalCompatibilityRules"];
  v4 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 32) >> 2) & 1 withName:@"delegateShouldSuppressRemoteRule"];
  v5 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 32) >> 3) & 1 withName:@"delegateCompareRemoteRules"];
  v6 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 32) >> 4) & 1 withName:@"delegateEvaluatesVisibilityOfRemoteRuleWindow"];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));

  if (WeakRetained)
  {
    v8 = *(a1 + 32);
    v14 = objc_loadWeakRetained((*(a1 + 40) + 40));
    if (v14)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v9 stringWithFormat:@"<%@: %p>", v11, v14];
    }

    else
    {
      v12 = @"(nil)";
    }

    v13 = [v8 appendObject:v12 withName:@"systemShellBehaviorDelegate"];
  }
}

@end