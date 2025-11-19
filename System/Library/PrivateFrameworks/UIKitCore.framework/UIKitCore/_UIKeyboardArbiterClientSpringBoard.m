@interface _UIKeyboardArbiterClientSpringBoard
- (_UIKeyboardArbiterClientSpringBoard)init;
- (void)forceKeyboardAway;
- (void)preserveKeyboardWithId:(id)a3;
- (void)queue_keyboardIAVChanged:(double)a3 onComplete:(id)a4;
- (void)restoreKeyboardWithId:(id)a3;
- (void)userSelectedApp:(id)a3 onCompletion:(id)a4;
- (void)userSelectedProcessIdentifier:(int)a3 withSceneIdentity:(id)a4 onCompletion:(id)a5;
@end

@implementation _UIKeyboardArbiterClientSpringBoard

- (_UIKeyboardArbiterClientSpringBoard)init
{
  v5.receiver = self;
  v5.super_class = _UIKeyboardArbiterClientSpringBoard;
  v2 = [(_UIKeyboardArbiterClientInputDestination *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_willLock_ name:@"_UISystemApplicationWillLockNotification" object:0];
  }

  return v2;
}

- (void)forceKeyboardAway
{
  v3 = _UIArbiterClientLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "TX signalKeyboardClientChanged (forceKeyboardAway)", buf, 2u);
  }

  v4 = +[_UIKeyboardChangedInformationWithFencing informationForKeyboardDown];
  v5 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  v6 = [v4 copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56___UIKeyboardArbiterClientSpringBoard_forceKeyboardAway__block_invoke;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 signalKeyboardClientChanged:v6 onCompletion:v8];
}

- (void)preserveKeyboardWithId:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIArbiterClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "TX signalKeyboardClientChanged (preserveKeyboardWithId:%{public}@)", buf, 0xCu);
  }

  v6 = [_UIKeyboardChangedInformationWithFencing informationForKeyboardPreserve:v4];
  v7 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  v8 = [v6 copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62___UIKeyboardArbiterClientSpringBoard_preserveKeyboardWithId___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 signalKeyboardClientChanged:v8 onCompletion:v10];
}

- (void)restoreKeyboardWithId:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIArbiterClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "TX signalKeyboardClientChanged (restoreKeyboardWithId:%{public}@)", buf, 0xCu);
  }

  v6 = [_UIKeyboardChangedInformationWithFencing informationForKeyboardRestore:v4];
  v7 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  v8 = [v6 copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61___UIKeyboardArbiterClientSpringBoard_restoreKeyboardWithId___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 signalKeyboardClientChanged:v8 onCompletion:v10];
}

- (void)userSelectedApp:(id)a3 onCompletion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && ![(__CFString *)v6 isEqualToString:&stru_1EFB14550])
  {
    v11 = 0;
  }

  else
  {
    v8 = [(_UIKeyboardArbiterClient *)self requiredScene];
    v9 = [v8 identityToken];
    v10 = [v9 stringRepresentation];
    [(_UIKeyboardArbiterClientInputDestination *)self setFocusedSceneIdentityStringOrIdentifier:v10];

    v11 = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];
  }

  v12 = _UIArbiterClientLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"(self)";
    if (v6)
    {
      v13 = v6;
    }

    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "TX applicationShouldFocusWithBundle (userSelectedApp:%{public}@)", &v16, 0xCu);
  }

  v14 = KeyboardArbiterClientLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v11;
    _os_log_debug_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientSpringBoard userSelectedApp:onCompletion:]  Focus bundle: %@, focusedSceneIdentity: %@", &v16, 0x16u);
  }

  if (!v7)
  {
    v7 = &__block_literal_global_84;
  }

  v15 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [v15 applicationShouldFocusWithBundle:v6 onCompletion:v7];
}

- (void)userSelectedProcessIdentifier:(int)a3 withSceneIdentity:(id)a4 onCompletion:(id)a5
{
  v6 = *&a3;
  v24 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = [v9 stringRepresentation];
  if (!v9)
  {
    v11 = [(_UIKeyboardArbiterClient *)self requiredScene];
    v12 = [v11 identityToken];
    v13 = [v12 stringRepresentation];
    [(_UIKeyboardArbiterClientInputDestination *)self setFocusedSceneIdentityStringOrIdentifier:v13];

    v14 = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];

    v10 = v14;
  }

  v15 = _UIArbiterClientLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = _UISceneIdentityToLogString(v10);
    v20 = 67109378;
    v21 = v6;
    v22 = 2114;
    v23 = v16;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "TX focusApplicationWithPID (userSelectedPID:%d scene:%{public}@)", &v20, 0x12u);
  }

  v17 = KeyboardArbiterClientLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v20 = 67109378;
    v21 = v6;
    v22 = 2112;
    v23 = v10;
    _os_log_debug_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientSpringBoard userSelectedProcessIdentifier:withSceneIdentity:onCompletion:]  Focus PID: %d, focusedSceneIdentity: %@", &v20, 0x12u);
  }

  if (!v8)
  {
    v8 = &__block_literal_global_10_0;
  }

  v18 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  v19 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:v9 window:0];

  [v18 focusApplicationWithProcessIdentifier:v6 context:v19 onCompletion:v8];
}

- (void)queue_keyboardIAVChanged:(double)a3 onComplete:(id)a4
{
  v6 = a4;
  v7 = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75___UIKeyboardArbiterClientSpringBoard_queue_keyboardIAVChanged_onComplete___block_invoke;
  v9[3] = &unk_1E70F5FA8;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performAsync:v9];
}

@end