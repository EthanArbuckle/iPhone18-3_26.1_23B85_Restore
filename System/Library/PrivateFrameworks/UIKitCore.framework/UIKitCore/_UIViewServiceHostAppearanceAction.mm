@interface _UIViewServiceHostAppearanceAction
+ (id)actionForAppearanceActionType:(int64_t)a3;
- (void)executeActionForViewController:(id)a3;
@end

@implementation _UIViewServiceHostAppearanceAction

+ (id)actionForAppearanceActionType:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v6 forSetting:0];

  v7 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v7;
}

- (void)executeActionForViewController:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIViewServiceHostAppearanceAction *)self info];
  v6 = [v5 objectForSetting:0];
  v7 = [v6 unsignedIntegerValue];

  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        if (v7 != 5)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      v8 = v4;
      v9 = 0;
      goto LABEL_16;
    }

    v8 = v4;
    v9 = 0;
LABEL_13:
    v10 = 1;
LABEL_17:
    [v8 beginAppearanceTransition:v9 animated:v10];
    goto LABEL_18;
  }

  if (!v7)
  {
    v8 = v4;
    v9 = 1;
    goto LABEL_13;
  }

  if (v7 == 1)
  {
    v8 = v4;
    v9 = 1;
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  if (v7 == 2 && [v4 _appearState] == 1)
  {
LABEL_10:
    [v4 endAppearanceTransition];
  }

LABEL_18:
  if ([v4 _appearState] == 1)
  {
    [v4 _updateContentOverlayInsetsFromParentIfNecessary];
  }

  v11 = *(__UILogGetCategoryCachedImpl("ViewServices", &executeActionForViewController____s_category) + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    if (v7 > 5)
    {
      v13 = @"<unknown>";
    }

    else
    {
      v13 = off_1E7126450[v7];
    }

    v14 = v13;
    v15 = [v4 _window];
    v16 = [v15 windowScene];
    v17 = [v16 _FBSScene];
    v18 = [v17 identityToken];
    v19 = 138543618;
    v20 = v14;
    v21 = 2114;
    v22 = v18;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Appearance transition %{public}@ for %{public}@", &v19, 0x16u);
  }
}

@end