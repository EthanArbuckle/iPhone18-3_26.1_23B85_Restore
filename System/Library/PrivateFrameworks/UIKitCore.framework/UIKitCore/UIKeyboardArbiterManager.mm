@interface UIKeyboardArbiterManager
+ (id)arbiterClient;
+ (id)sharedArbiterManager;
- (BOOL)remoteKeyboardUndocked;
- (id)keyboardWindow;
- (void)forceKeyboardAway;
- (void)preserveKeyboardWithId:(id)id;
- (void)restoreKeyboardWithId:(id)id;
- (void)userSelectedApp:(id)app onCompletion:(id)completion;
- (void)userSelectedProcessIdentifier:(int)identifier withSceneIdentity:(id)identity onCompletion:(id)completion;
@end

@implementation UIKeyboardArbiterManager

+ (id)sharedArbiterManager
{
  if (qword_1ED49E3E8 != -1)
  {
    dispatch_once(&qword_1ED49E3E8, &__block_literal_global_276);
  }

  v3 = _MergedGlobals_1125;

  return v3;
}

- (BOOL)remoteKeyboardUndocked
{
  v2 = +[UIKeyboardArbiterManager arbiterClient];
  remoteKeyboardUndocked = [v2 remoteKeyboardUndocked];

  return remoteKeyboardUndocked;
}

+ (id)arbiterClient
{
  if (+[UIKeyboard inputUIOOP])
  {
    v4 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardArbiterManager.m" lineNumber:42 description:@"arbiterClient should be _UIKeyboardArbiterClientSpringBoard"];
    }
  }

  else
  {
    v4 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  }

  return v4;
}

void __48__UIKeyboardArbiterManager_sharedArbiterManager__block_invoke()
{
  v0 = objc_alloc_init(UIKeyboardArbiterManager);
  v1 = _MergedGlobals_1125;
  _MergedGlobals_1125 = v0;
}

- (id)keyboardWindow
{
  if (+[UIKeyboard inputUIOOP])
  {
    keyboardWindow = 0;
  }

  else
  {
    v3 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    keyboardWindow = [v3 keyboardWindow];
  }

  return keyboardWindow;
}

- (void)forceKeyboardAway
{
  v2 = +[UIKeyboardArbiterManager arbiterClient];
  [v2 forceKeyboardAway];
}

- (void)preserveKeyboardWithId:(id)id
{
  idCopy = id;
  v4 = +[UIKeyboardArbiterManager arbiterClient];
  [v4 preserveKeyboardWithId:idCopy];
}

- (void)restoreKeyboardWithId:(id)id
{
  idCopy = id;
  v4 = +[UIKeyboardArbiterManager arbiterClient];
  [v4 restoreKeyboardWithId:idCopy];
}

- (void)userSelectedApp:(id)app onCompletion:(id)completion
{
  completionCopy = completion;
  appCopy = app;
  v7 = +[UIKeyboardArbiterManager arbiterClient];
  [v7 userSelectedApp:appCopy onCompletion:completionCopy];
}

- (void)userSelectedProcessIdentifier:(int)identifier withSceneIdentity:(id)identity onCompletion:(id)completion
{
  v6 = *&identifier;
  completionCopy = completion;
  identityCopy = identity;
  v9 = +[UIKeyboardArbiterManager arbiterClient];
  [v9 userSelectedProcessIdentifier:v6 withSceneIdentity:identityCopy onCompletion:completionCopy];
}

@end