@interface _UIKeyboardArbiterClientSpringBoard
- (_UIKeyboardArbiterClientSpringBoard)init;
- (void)forceKeyboardAway;
- (void)preserveKeyboardWithId:(id)id;
- (void)queue_keyboardIAVChanged:(double)changed onComplete:(id)complete;
- (void)restoreKeyboardWithId:(id)id;
- (void)userSelectedApp:(id)app onCompletion:(id)completion;
- (void)userSelectedProcessIdentifier:(int)identifier withSceneIdentity:(id)identity onCompletion:(id)completion;
@end

@implementation _UIKeyboardArbiterClientSpringBoard

- (_UIKeyboardArbiterClientSpringBoard)init
{
  v5.receiver = self;
  v5.super_class = _UIKeyboardArbiterClientSpringBoard;
  v2 = [(_UIKeyboardArbiterClientInputDestination *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_willLock_ name:@"_UISystemApplicationWillLockNotification" object:0];
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
  arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  v6 = [v4 copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56___UIKeyboardArbiterClientSpringBoard_forceKeyboardAway__block_invoke;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [arbiterProxy signalKeyboardClientChanged:v6 onCompletion:v8];
}

- (void)preserveKeyboardWithId:(id)id
{
  v14 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = _UIArbiterClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = idCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "TX signalKeyboardClientChanged (preserveKeyboardWithId:%{public}@)", buf, 0xCu);
  }

  v6 = [_UIKeyboardChangedInformationWithFencing informationForKeyboardPreserve:idCopy];
  arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  v8 = [v6 copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62___UIKeyboardArbiterClientSpringBoard_preserveKeyboardWithId___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [arbiterProxy signalKeyboardClientChanged:v8 onCompletion:v10];
}

- (void)restoreKeyboardWithId:(id)id
{
  v14 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = _UIArbiterClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = idCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "TX signalKeyboardClientChanged (restoreKeyboardWithId:%{public}@)", buf, 0xCu);
  }

  v6 = [_UIKeyboardChangedInformationWithFencing informationForKeyboardRestore:idCopy];
  arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  v8 = [v6 copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61___UIKeyboardArbiterClientSpringBoard_restoreKeyboardWithId___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [arbiterProxy signalKeyboardClientChanged:v8 onCompletion:v10];
}

- (void)userSelectedApp:(id)app onCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  appCopy = app;
  completionCopy = completion;
  if (appCopy && ![(__CFString *)appCopy isEqualToString:&stru_1EFB14550])
  {
    focusedSceneIdentityStringOrIdentifier = 0;
  }

  else
  {
    requiredScene = [(_UIKeyboardArbiterClient *)self requiredScene];
    identityToken = [requiredScene identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    [(_UIKeyboardArbiterClientInputDestination *)self setFocusedSceneIdentityStringOrIdentifier:stringRepresentation];

    focusedSceneIdentityStringOrIdentifier = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];
  }

  v12 = _UIArbiterClientLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"(self)";
    if (appCopy)
    {
      v13 = appCopy;
    }

    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "TX applicationShouldFocusWithBundle (userSelectedApp:%{public}@)", &v16, 0xCu);
  }

  v14 = KeyboardArbiterClientLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412546;
    v17 = appCopy;
    v18 = 2112;
    v19 = focusedSceneIdentityStringOrIdentifier;
    _os_log_debug_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientSpringBoard userSelectedApp:onCompletion:]  Focus bundle: %@, focusedSceneIdentity: %@", &v16, 0x16u);
  }

  if (!completionCopy)
  {
    completionCopy = &__block_literal_global_84;
  }

  arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [arbiterProxy applicationShouldFocusWithBundle:appCopy onCompletion:completionCopy];
}

- (void)userSelectedProcessIdentifier:(int)identifier withSceneIdentity:(id)identity onCompletion:(id)completion
{
  v6 = *&identifier;
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  identityCopy = identity;
  stringRepresentation = [identityCopy stringRepresentation];
  if (!identityCopy)
  {
    requiredScene = [(_UIKeyboardArbiterClient *)self requiredScene];
    identityToken = [requiredScene identityToken];
    stringRepresentation2 = [identityToken stringRepresentation];
    [(_UIKeyboardArbiterClientInputDestination *)self setFocusedSceneIdentityStringOrIdentifier:stringRepresentation2];

    focusedSceneIdentityStringOrIdentifier = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];

    stringRepresentation = focusedSceneIdentityStringOrIdentifier;
  }

  v15 = _UIArbiterClientLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = _UISceneIdentityToLogString(stringRepresentation);
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
    v23 = stringRepresentation;
    _os_log_debug_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientSpringBoard userSelectedProcessIdentifier:withSceneIdentity:onCompletion:]  Focus PID: %d, focusedSceneIdentity: %@", &v20, 0x12u);
  }

  if (!completionCopy)
  {
    completionCopy = &__block_literal_global_10_0;
  }

  arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  v19 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:identityCopy window:0];

  [arbiterProxy focusApplicationWithProcessIdentifier:v6 context:v19 onCompletion:completionCopy];
}

- (void)queue_keyboardIAVChanged:(double)changed onComplete:(id)complete
{
  completeCopy = complete;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75___UIKeyboardArbiterClientSpringBoard_queue_keyboardIAVChanged_onComplete___block_invoke;
  v9[3] = &unk_1E70F5FA8;
  changedCopy = changed;
  v9[4] = self;
  v10 = completeCopy;
  v8 = completeCopy;
  [_systemAnimationFenceExemptQueue performAsync:v9];
}

@end