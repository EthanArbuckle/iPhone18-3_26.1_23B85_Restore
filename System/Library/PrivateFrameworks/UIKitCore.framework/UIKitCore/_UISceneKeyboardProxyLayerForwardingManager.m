@interface _UISceneKeyboardProxyLayerForwardingManager
+ (BOOL)isRootSystemShellProcess;
+ (id)new;
+ (id)sharedInstance;
- (_UISceneKeyboardProxyLayerForwardingManager)init;
- (id)_init;
- (id)_newStateMachineWithPresentationEnvironment:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_updateKeyboardLayersForPresentationEnvironment:(id)a3;
- (void)presentationEnvironmentDidInvalidate:(id)a3;
- (void)trackPresentationEnvironment:(id)a3;
@end

@implementation _UISceneKeyboardProxyLayerForwardingManager

+ (BOOL)isRootSystemShellProcess
{
  if (qword_1ED49CB90 != -1)
  {
    dispatch_once(&qword_1ED49CB90, &__block_literal_global_80);
  }

  return _MergedGlobals_1020;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___UISceneKeyboardProxyLayerForwardingManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED49CB88 != -1)
  {
    dispatch_once(&qword_1ED49CB88, block);
  }

  v2 = qword_1ED49CB80;

  return v2;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = _UISceneKeyboardProxyLayerForwardingManager;
  v2 = [(_UISceneKeyboardProxyLayerForwardingManager *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:10];
    mapEnvironmentToKeyboardForwardingStateMachine = v2->_mapEnvironmentToKeyboardForwardingStateMachine;
    v2->_mapEnvironmentToKeyboardForwardingStateMachine = v3;
  }

  return v2;
}

- (_UISceneKeyboardProxyLayerForwardingManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingManager.m" lineNumber:28 description:@"-[_UISceneKeyboardProxyLayerForwardingManager init] is unavailable."];

  return [(_UISceneKeyboardProxyLayerForwardingManager *)self _init];
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"_UISceneKeyboardProxyLayerForwardingManager.m" lineNumber:33 description:@"+[_UISceneKeyboardProxyLayerForwardingManager new] is unavailable."];

  v5 = [a1 alloc];

  return [v5 _init];
}

- (void)trackPresentationEnvironment:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(NSMapTable *)self->_mapEnvironmentToKeyboardForwardingStateMachine objectForKey:v4];

    v4 = v7;
    if (!v5)
    {
      [v7 addObserver:self];
      v6 = [(_UISceneKeyboardProxyLayerForwardingManager *)self _newStateMachineWithPresentationEnvironment:v7];
      [(NSMapTable *)self->_mapEnvironmentToKeyboardForwardingStateMachine setObject:v6 forKey:v7];
      [(_UISceneKeyboardProxyLayerForwardingManager *)self _updateKeyboardLayersForPresentationEnvironment:v7];

      v4 = v7;
    }
  }
}

- (id)succinctDescription
{
  v2 = [(_UISceneKeyboardProxyLayerForwardingManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UISceneKeyboardProxyLayerForwardingManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_UISceneKeyboardProxyLayerForwardingManager *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_mapEnvironmentToKeyboardForwardingStateMachine withName:@"presentationEnvironmentToStateMachineMap"];

  return v4;
}

- (void)presentationEnvironmentDidInvalidate:(id)a3
{
  v5 = a3;
  v4 = [(_UISceneKeyboardProxyLayerForwardingManager *)self _stateMachineForPresentationEnvironment:v5];
  [v4 noteKeyboardLayersBeingTracked:0];

  [(NSMapTable *)self->_mapEnvironmentToKeyboardForwardingStateMachine removeObjectForKey:v5];
  [v5 removeObserver:self];
}

- (id)_newStateMachineWithPresentationEnvironment:(id)a3
{
  v3 = a3;
  v4 = [[_UISceneKeyboardProxyLayerForwardingStateMachine alloc] initWithPresentationEnvironment:v3];

  return v4;
}

- (void)_updateKeyboardLayersForPresentationEnvironment:(id)a3
{
  mapEnvironmentToKeyboardForwardingStateMachine = self->_mapEnvironmentToKeyboardForwardingStateMachine;
  v4 = a3;
  v6 = [(NSMapTable *)mapEnvironmentToKeyboardForwardingStateMachine objectForKey:v4];
  v5 = [v4 keyboardLayers];

  [v6 noteKeyboardLayersBeingTracked:v5];
}

@end