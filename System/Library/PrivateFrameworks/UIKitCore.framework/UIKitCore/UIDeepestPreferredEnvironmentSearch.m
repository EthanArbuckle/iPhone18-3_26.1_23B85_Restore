@interface UIDeepestPreferredEnvironmentSearch
@end

@implementation UIDeepestPreferredEnvironmentSearch

void __96___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusableItemForEnvironment_withRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if ([v11 isLeafPreference])
  {
    if ([v11 isPrimaryPreference])
    {
      v5 = [v11 environment];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      *a3 = 3;
      v8 = *(*(*(a1 + 56) + 8) + 40);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 32);
    v10 = [v11 environment];
    [v9 setResolvedPreference:v8 forEnvironment:v10];
  }

  [*(a1 + 40) _reportFinishedEvaluatingAllPreferencesForEnvironmentInContext:v11 result:*a3];
}

BOOL __96___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusableItemForEnvironment_withRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 environment];
  v4 = v3 != *(*(*(a1 + 32) + 8) + 40);

  return v4;
}

void __96___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusableItemForEnvironment_withRequest___block_invoke_3(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  v6 = [v5 environment];
  if (([v5 isPreferredByItself] & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = [v5 preferredEnvironments];
    [v7 setPreferredEnvironments:v8 forEnvironment:v6];

    v37 = 0;
    v9 = [*(a1 + 32) preferredEnvironmentsForEnvironment:v6 isFinal:&v37];
    v10 = [v9 firstObject];

    if (v37 == 1)
    {
      v36 = a3;
      if ([v5 isPrimaryPreference])
      {
        v11 = [*(a1 + 32) deepestPrimaryPreferredEnvironmentForEnvironment:*(a1 + 40)];
        v12 = *(*(a1 + 64) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;
      }

      v14 = _UIFocusItemSafeCast(v10);
      v35 = [v5 debugStack];
      v34 = MEMORY[0x1E696AEC0];
      v15 = v6;
      v16 = @"(nil)";
      if (v15)
      {
        v17 = MEMORY[0x1E696AEC0];
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v16 = [v17 stringWithFormat:@"<%@: %p>", v19, v15];
      }

      v24 = v14;
      if (v24)
      {
        v25 = MEMORY[0x1E696AEC0];
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = [v25 stringWithFormat:@"<%@: %p>", v27, v24];

        v29 = [v34 stringWithFormat:@"Using cached result for %@. Preferring %@", v16, v28];
        v30 = [off_1E70ECC50 messageWithStyle:2 string:v29];
        [v35 addMessage:v30];

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v14);
        v31 = 3;
      }

      else
      {

        v32 = [v34 stringWithFormat:@"Using cached result for %@. Preferring %@", v16, @"(nil)"];
        v33 = [off_1E70ECC50 messageWithStyle:2 string:v32];
        [v35 addMessage:v33];

        v31 = 1;
      }

      *v36 = v31;

      goto LABEL_22;
    }
  }

  v20 = [*(a1 + 48) focusSystem];
  v21 = v20;
  if (!*(*(*(a1 + 80) + 8) + 40) && [v20 _isEnvironmentLocked:v6])
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), v6);
  }

  if (([v5 isPreferredByItself] & 1) == 0)
  {
    v22 = _UIFocusItemSafeCast(v6);
    v23 = v22;
    if (v21 && v22 && _UIFocusItemIsFocusedOrFocusableInFocusSystem(v22, v21))
    {
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v23);
      [*(a1 + 56) _reportFoundFocusableItem:*(*(*(a1 + 72) + 8) + 40) inContext:v5];
    }
  }

LABEL_22:
}

void __87___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusEnvironmentForEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [v6 environment];
  if (!*(*(*(a1 + 40) + 8) + 40) && [*(a1 + 32) _isEnvironmentLocked:v5])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  }

  if ([v6 isLeafPreference])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    *a3 = 3;
  }
}

void __125___UIDeepestPreferredEnvironmentSearch__overridingPreferredFocusEnvironmentForPreferredEnvironment_visitedFocusEnvironments___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    *a3 = 1;
  }

  else
  {
    v6 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v6)
    {
      v8 = [v9 _overridingPreferredFocusEnvironment];
      if (v8)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      }

      v7 = v9;
    }

    [*(a1 + 32) addObject:v7];
  }
}

void __110___UIDeepestPreferredEnvironmentSearch__reportFinishedEvaluatingAllPreferencesForEnvironmentInContext_result___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 environment];

  if (v8 != v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end