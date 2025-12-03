@interface RBSAssertion(PosterFoundation)
+ (id)pf_assertionForTarget:()PosterFoundation assertionIdentifier:explanation:invalidationHandler:;
+ (id)pf_extendRenderSessionWithReason:()PosterFoundation;
+ (id)pf_finishTaskInterruptableWithExplanation:()PosterFoundation invalidationHandler:;
+ (id)pf_migrationRuntimeAssertionWithExplanation:()PosterFoundation;
+ (id)pf_photosPosterUpdateEntitledMemoryAssertionForTarget:()PosterFoundation explanation:;
+ (id)pf_posterDeviceMotionAssertionForTarget:()PosterFoundation explanation:;
+ (id)pf_posterEditingRuntimeAssertionForTarget:()PosterFoundation explanation:;
+ (id)pf_posterRenderingEntitledRuntimeAssertionForTarget:()PosterFoundation explanation:;
+ (id)pf_posterRenderingPhotosMemoryHogRuntimeAssertionForTarget:()PosterFoundation explanation:;
+ (id)pf_posterRenderingRuntimeAssertionForTarget:()PosterFoundation explanation:;
+ (id)pf_posterUpdateEntitledMemoryAssertionForTarget:()PosterFoundation explanation:;
+ (id)pf_posterUpdateMemoryAssertionForReason:()PosterFoundation target:auditToken:posterProviderBundleIdentifier:invalidationHandler:;
+ (id)pf_posterUpdateRuntimeAssertionForTarget:()PosterFoundation explanation:;
+ (id)pf_prewarmRuntimeAssertionForTarget:()PosterFoundation explanation:;
@end

@implementation RBSAssertion(PosterFoundation)

+ (id)pf_assertionForTarget:()PosterFoundation assertionIdentifier:explanation:invalidationHandler:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v11;
  NSClassFromString(&cfstr_Rbstarget.isa);
  if (!v15)
  {
    [RBSAssertion(PosterFoundation) pf_assertionForTarget:a2 assertionIdentifier:? explanation:? invalidationHandler:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [RBSAssertion(PosterFoundation) pf_assertionForTarget:a2 assertionIdentifier:? explanation:? invalidationHandler:?];
  }

  v16 = v12;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v16)
  {
    [RBSAssertion(PosterFoundation) pf_assertionForTarget:a2 assertionIdentifier:? explanation:? invalidationHandler:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [RBSAssertion(PosterFoundation) pf_assertionForTarget:a2 assertionIdentifier:? explanation:? invalidationHandler:?];
  }

  if ([v16 isEqualToString:@"PrewarmRuntimeAssertion"])
  {
    v17 = [MEMORY[0x1E69C7548] pf_prewarmRuntimeAssertionForTarget:v15 explanation:v13];
LABEL_21:
    v18 = v17;
    if (v14)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __108__RBSAssertion_PosterFoundation__pf_assertionForTarget_assertionIdentifier_explanation_invalidationHandler___block_invoke;
      v21[3] = &unk_1E8189A68;
      v22 = v14;
      [v18 setInvalidationHandler:v21];
    }

    return v18;
  }

  if ([v16 isEqualToString:@"PosterUpdateRuntimeAssertion"])
  {
    v17 = [MEMORY[0x1E69C7548] pf_posterUpdateRuntimeAssertionForTarget:v15 explanation:v13];
    goto LABEL_21;
  }

  if ([v16 isEqualToString:@"PosterUpdateMemoryAssertion"])
  {
    v17 = [MEMORY[0x1E69C7548] pf_posterUpdateEntitledMemoryAssertionForTarget:v15 explanation:v13];
    goto LABEL_21;
  }

  if ([v16 isEqualToString:@"PhotosPosterUpdateMemoryAssertion"])
  {
    v17 = [MEMORY[0x1E69C7548] pf_photosPosterUpdateEntitledMemoryAssertionForTarget:v15 explanation:v13];
    goto LABEL_21;
  }

  if ([v16 isEqualToString:@"Rendering-Nominal"])
  {
    v17 = [MEMORY[0x1E69C7548] pf_posterRenderingRuntimeAssertionForTarget:v15 explanation:v13];
    goto LABEL_21;
  }

  if ([v16 isEqualToString:@"Rendering-Entitled"])
  {
    v17 = [MEMORY[0x1E69C7548] pf_posterRenderingEntitledRuntimeAssertionForTarget:v15 explanation:v13];
    goto LABEL_21;
  }

  if ([v16 isEqualToString:@"Rendering-Photos"])
  {
    v17 = [MEMORY[0x1E69C7548] pf_posterRenderingPhotosMemoryHogRuntimeAssertionForTarget:v15 explanation:v13];
    goto LABEL_21;
  }

  if ([v16 isEqualToString:@"Editing"])
  {
    v17 = [MEMORY[0x1E69C7548] pf_posterEditingRuntimeAssertionForTarget:v15 explanation:v13];
    goto LABEL_21;
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown assertion identifier: %@", v16];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [RBSAssertion(PosterFoundation) pf_assertionForTarget:a2 assertionIdentifier:self explanation:v20 invalidationHandler:?];
  }

  [v20 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)pf_posterUpdateMemoryAssertionForReason:()PosterFoundation target:auditToken:posterProviderBundleIdentifier:invalidationHandler:
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [a5 valueForEntitlement:@"com.apple.posterkit.enhanced-memory-limits"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 BOOLValue])
  {
    if (PFBundleIdentifierRequiresMemoryHogAssertion(v14))
    {
      v17 = @"PhotosPosterUpdateMemoryAssertion";
    }

    else
    {
      v17 = @"PosterUpdateMemoryAssertion";
    }

    v18 = [self pf_assertionForTarget:v13 assertionIdentifier:v17 explanation:v12 invalidationHandler:v15];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)pf_prewarmRuntimeAssertionForTarget:()PosterFoundation explanation:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C7560];
  v6 = a4;
  v7 = a3;
  v8 = [v5 attributeWithDomain:@"com.apple.posterkit.provider" name:@"PosterPrewarm"];
  v9 = objc_alloc(MEMORY[0x1E69C7548]);
  v14[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v9 initWithExplanation:v6 target:v7 attributes:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)pf_migrationRuntimeAssertionWithExplanation:()PosterFoundation
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C7560];
  v4 = a3;
  v5 = [v3 attributeWithDomain:@"com.apple.posterboard" name:@"Foreground"];
  v6 = objc_alloc(MEMORY[0x1E69C7548]);
  currentProcess = [MEMORY[0x1E69C7640] currentProcess];
  v12[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v9 = [v6 initWithExplanation:v4 target:currentProcess attributes:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)pf_posterUpdateRuntimeAssertionForTarget:()PosterFoundation explanation:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C7560];
  v6 = a4;
  v7 = a3;
  v8 = [v5 attributeWithDomain:@"com.apple.posterkit.provider" name:@"PosterUpdate"];
  v9 = objc_alloc(MEMORY[0x1E69C7548]);
  v14[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v9 initWithExplanation:v6 target:v7 attributes:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)pf_posterUpdateEntitledMemoryAssertionForTarget:()PosterFoundation explanation:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C7560];
  v6 = a4;
  v7 = a3;
  v8 = [v5 attributeWithDomain:@"com.apple.posterkit.provider" name:@"Updating-Entitled"];
  v9 = objc_alloc(MEMORY[0x1E69C7548]);
  v14[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v9 initWithExplanation:v6 target:v7 attributes:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)pf_photosPosterUpdateEntitledMemoryAssertionForTarget:()PosterFoundation explanation:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C7560];
  v6 = a4;
  v7 = a3;
  v8 = [v5 attributeWithDomain:@"com.apple.posterkit.provider" name:@"Updating-Photos"];
  v9 = objc_alloc(MEMORY[0x1E69C7548]);
  v14[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v9 initWithExplanation:v6 target:v7 attributes:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)pf_posterEditingRuntimeAssertionForTarget:()PosterFoundation explanation:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C7560];
  v6 = a4;
  v7 = a3;
  v8 = [v5 attributeWithDomain:@"com.apple.posterkit.provider" name:@"Editing"];
  v9 = objc_alloc(MEMORY[0x1E69C7548]);
  v14[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v9 initWithExplanation:v6 target:v7 attributes:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)pf_posterRenderingRuntimeAssertionForTarget:()PosterFoundation explanation:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C7560];
  v6 = a4;
  v7 = a3;
  v8 = [v5 attributeWithDomain:@"com.apple.posterkit.provider" name:@"Rendering-Nominal"];
  v9 = objc_alloc(MEMORY[0x1E69C7548]);
  v14[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v9 initWithExplanation:v6 target:v7 attributes:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)pf_posterRenderingEntitledRuntimeAssertionForTarget:()PosterFoundation explanation:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C7560];
  v6 = a4;
  v7 = a3;
  v8 = [v5 attributeWithDomain:@"com.apple.posterkit.provider" name:@"Rendering-Entitled"];
  v9 = objc_alloc(MEMORY[0x1E69C7548]);
  v14[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v9 initWithExplanation:v6 target:v7 attributes:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)pf_posterRenderingPhotosMemoryHogRuntimeAssertionForTarget:()PosterFoundation explanation:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C7560];
  v6 = a4;
  v7 = a3;
  v8 = [v5 attributeWithDomain:@"com.apple.posterkit.provider" name:@"Rendering-Photos"];
  v9 = objc_alloc(MEMORY[0x1E69C7548]);
  v14[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v9 initWithExplanation:v6 target:v7 attributes:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)pf_posterDeviceMotionAssertionForTarget:()PosterFoundation explanation:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C7560];
  v6 = a4;
  v7 = a3;
  v8 = [v5 attributeWithDomain:@"com.apple.posterkit.provider" name:@"PosterDeviceMotion"];
  v9 = objc_alloc(MEMORY[0x1E69C7548]);
  v14[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v9 initWithExplanation:v6 target:v7 attributes:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)pf_finishTaskInterruptableWithExplanation:()PosterFoundation invalidationHandler:
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MEMORY[0x1E69C7640];
  v7 = a3;
  currentProcess = [v6 currentProcess];
  v9 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskInterruptable"];
  v10 = objc_alloc(MEMORY[0x1E69C7548]);
  v17[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v12 = [v10 initWithExplanation:v7 target:currentProcess attributes:v11];

  if (v5)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __96__RBSAssertion_PosterFoundation__pf_finishTaskInterruptableWithExplanation_invalidationHandler___block_invoke;
    v15[3] = &unk_1E8189A68;
    v16 = v5;
    [v12 setInvalidationHandler:v15];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)pf_extendRenderSessionWithReason:()PosterFoundation
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (pf_extendRenderSessionWithReason__onceToken != -1)
  {
    +[RBSAssertion(PosterFoundation) pf_extendRenderSessionWithReason:];
  }

  v4 = &stru_1F425B6D8;
  if (pf_extendRenderSessionWithReason__shouldUseFinishRenderEntitledAttribute == 1)
  {
    v5 = [@"Entitled-" stringByAppendingString:v3];

    if (pf_extendRenderSessionWithReason__shouldUseFinishRenderEntitledAttribute)
    {
      v4 = @"ENT";
    }

    v3 = v5;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FinishRender-%@-%@", v4, v3];
  if (pf_extendRenderSessionWithReason__shouldUseFinishRenderEntitledAttribute)
  {
    v7 = @"FinishRenderEntitled";
  }

  else
  {
    v7 = @"FinishRender";
  }

  v8 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.PosterKit" name:v7];
  v9 = objc_alloc(MEMORY[0x1E69C7548]);
  currentProcess = [MEMORY[0x1E69C7640] currentProcess];
  v15[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [v9 initWithExplanation:v6 target:currentProcess attributes:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (void)pf_assertionForTarget:()PosterFoundation assertionIdentifier:explanation:invalidationHandler:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:RBSTargetClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_assertionForTarget:()PosterFoundation assertionIdentifier:explanation:invalidationHandler:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_assertionForTarget:()PosterFoundation assertionIdentifier:explanation:invalidationHandler:.cold.3(const char *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138544642;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  v13 = 2048;
  v14 = a2;
  v15 = 2114;
  v16 = @"RBSAssertion+PosterFoundation.m";
  v17 = 1024;
  v18 = 50;
  v19 = 2114;
  v20 = a3;
  _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)pf_assertionForTarget:()PosterFoundation assertionIdentifier:explanation:invalidationHandler:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pf_assertionForTarget:()PosterFoundation assertionIdentifier:explanation:invalidationHandler:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end