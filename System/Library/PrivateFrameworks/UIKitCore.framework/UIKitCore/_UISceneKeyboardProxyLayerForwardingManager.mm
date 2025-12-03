@interface _UISceneKeyboardProxyLayerForwardingManager
+ (BOOL)isRootSystemShellProcess;
+ (id)new;
+ (id)sharedInstance;
- (_UISceneKeyboardProxyLayerForwardingManager)init;
- (id)_init;
- (id)_newStateMachineWithPresentationEnvironment:(id)environment;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_updateKeyboardLayersForPresentationEnvironment:(id)environment;
- (void)presentationEnvironmentDidInvalidate:(id)invalidate;
- (void)trackPresentationEnvironment:(id)environment;
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
  block[4] = self;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingManager.m" lineNumber:28 description:@"-[_UISceneKeyboardProxyLayerForwardingManager init] is unavailable."];

  return [(_UISceneKeyboardProxyLayerForwardingManager *)self _init];
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingManager.m" lineNumber:33 description:@"+[_UISceneKeyboardProxyLayerForwardingManager new] is unavailable."];

  v5 = [self alloc];

  return [v5 _init];
}

- (void)trackPresentationEnvironment:(id)environment
{
  environmentCopy = environment;
  if (environmentCopy)
  {
    v7 = environmentCopy;
    v5 = [(NSMapTable *)self->_mapEnvironmentToKeyboardForwardingStateMachine objectForKey:environmentCopy];

    environmentCopy = v7;
    if (!v5)
    {
      [v7 addObserver:self];
      v6 = [(_UISceneKeyboardProxyLayerForwardingManager *)self _newStateMachineWithPresentationEnvironment:v7];
      [(NSMapTable *)self->_mapEnvironmentToKeyboardForwardingStateMachine setObject:v6 forKey:v7];
      [(_UISceneKeyboardProxyLayerForwardingManager *)self _updateKeyboardLayersForPresentationEnvironment:v7];

      environmentCopy = v7;
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UISceneKeyboardProxyLayerForwardingManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UISceneKeyboardProxyLayerForwardingManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_UISceneKeyboardProxyLayerForwardingManager *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_mapEnvironmentToKeyboardForwardingStateMachine withName:@"presentationEnvironmentToStateMachineMap"];

  return succinctDescriptionBuilder;
}

- (void)presentationEnvironmentDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v4 = [(_UISceneKeyboardProxyLayerForwardingManager *)self _stateMachineForPresentationEnvironment:invalidateCopy];
  [v4 noteKeyboardLayersBeingTracked:0];

  [(NSMapTable *)self->_mapEnvironmentToKeyboardForwardingStateMachine removeObjectForKey:invalidateCopy];
  [invalidateCopy removeObserver:self];
}

- (id)_newStateMachineWithPresentationEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = [[_UISceneKeyboardProxyLayerForwardingStateMachine alloc] initWithPresentationEnvironment:environmentCopy];

  return v4;
}

- (void)_updateKeyboardLayersForPresentationEnvironment:(id)environment
{
  mapEnvironmentToKeyboardForwardingStateMachine = self->_mapEnvironmentToKeyboardForwardingStateMachine;
  environmentCopy = environment;
  v6 = [(NSMapTable *)mapEnvironmentToKeyboardForwardingStateMachine objectForKey:environmentCopy];
  keyboardLayers = [environmentCopy keyboardLayers];

  [v6 noteKeyboardLayersBeingTracked:keyboardLayers];
}

@end