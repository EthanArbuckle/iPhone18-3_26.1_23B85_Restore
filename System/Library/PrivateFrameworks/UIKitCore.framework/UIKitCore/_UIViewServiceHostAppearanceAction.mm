@interface _UIViewServiceHostAppearanceAction
+ (id)actionForAppearanceActionType:(int64_t)type;
- (void)executeActionForViewController:(id)controller;
@end

@implementation _UIViewServiceHostAppearanceAction

+ (id)actionForAppearanceActionType:(int64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [v5 setObject:v6 forSetting:0];

  v7 = [[self alloc] initWithInfo:v5 responder:0];

  return v7;
}

- (void)executeActionForViewController:(id)controller
{
  v23 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  info = [(_UIViewServiceHostAppearanceAction *)self info];
  v6 = [info objectForSetting:0];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue > 2)
  {
    if (unsignedIntegerValue != 3)
    {
      if (unsignedIntegerValue != 4)
      {
        if (unsignedIntegerValue != 5)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      v8 = controllerCopy;
      v9 = 0;
      goto LABEL_16;
    }

    v8 = controllerCopy;
    v9 = 0;
LABEL_13:
    v10 = 1;
LABEL_17:
    [v8 beginAppearanceTransition:v9 animated:v10];
    goto LABEL_18;
  }

  if (!unsignedIntegerValue)
  {
    v8 = controllerCopy;
    v9 = 1;
    goto LABEL_13;
  }

  if (unsignedIntegerValue == 1)
  {
    v8 = controllerCopy;
    v9 = 1;
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  if (unsignedIntegerValue == 2 && [controllerCopy _appearState] == 1)
  {
LABEL_10:
    [controllerCopy endAppearanceTransition];
  }

LABEL_18:
  if ([controllerCopy _appearState] == 1)
  {
    [controllerCopy _updateContentOverlayInsetsFromParentIfNecessary];
  }

  v11 = *(__UILogGetCategoryCachedImpl("ViewServices", &executeActionForViewController____s_category) + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    if (unsignedIntegerValue > 5)
    {
      v13 = @"<unknown>";
    }

    else
    {
      v13 = off_1E7126450[unsignedIntegerValue];
    }

    v14 = v13;
    _window = [controllerCopy _window];
    windowScene = [_window windowScene];
    _FBSScene = [windowScene _FBSScene];
    identityToken = [_FBSScene identityToken];
    v19 = 138543618;
    v20 = v14;
    v21 = 2114;
    v22 = identityToken;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Appearance transition %{public}@ for %{public}@", &v19, 0x16u);
  }
}

@end