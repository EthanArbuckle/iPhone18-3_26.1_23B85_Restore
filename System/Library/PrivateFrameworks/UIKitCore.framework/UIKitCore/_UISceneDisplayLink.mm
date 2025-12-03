@interface _UISceneDisplayLink
+ (id)sceneDisplayLinkForWindowScene:(id)scene;
- (UIScene)_scene;
- (_UISceneDisplayLink)initWithScene:(id)scene;
- (void)_displayLinkTick:(id)tick;
- (void)_updateStatus;
- (void)registerTarget:(id)target action:(SEL)action;
- (void)unregisterTarget:(id)target action:(SEL)action;
@end

@implementation _UISceneDisplayLink

+ (id)sceneDisplayLinkForWindowScene:(id)scene
{
  sceneCopy = scene;
  v5 = sceneCopy;
  if (sceneCopy)
  {
    v6 = [sceneCopy _sceneComponentForKey:@"_UISceneDisplayLinkKey"];
    if (!v6)
    {
      v6 = [[self alloc] initWithScene:v5];
      [v5 _registerSceneComponent:v6 forKey:@"_UISceneDisplayLinkKey"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_UISceneDisplayLink)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = _UISceneDisplayLink;
  v5 = [(_UISceneDisplayLink *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
  }

  return v6;
}

- (void)registerTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  targetsAndActions = self->_targetsAndActions;
  if (!targetsAndActions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v8 = self->_targetsAndActions;
    self->_targetsAndActions = array;

    targetsAndActions = self->_targetsAndActions;
  }

  v9 = [[_UISceneDisplayLinkTargetAndAction alloc] initWithTarget:targetCopy action:action];
  [(NSMutableArray *)targetsAndActions addObject:v9];

  [(_UISceneDisplayLink *)self _updateStatus];
}

- (void)unregisterTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  targetsAndActions = self->_targetsAndActions;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47___UISceneDisplayLink_unregisterTarget_action___block_invoke;
  v14[3] = &unk_1E7106CA0;
  v8 = targetCopy;
  v16 = &v18;
  actionCopy = action;
  v15 = v8;
  [(NSMutableArray *)targetsAndActions enumerateObjectsWithOptions:2 usingBlock:v14];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v10 = v19[3];
  if (has_internal_diagnostics)
  {
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *v13 = 0;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "unregisterTarget: called with unregistered target/action", v13, 2u);
      }
    }
  }

  else if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &unregisterTarget_action____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "unregisterTarget: called with unregistered target/action", v13, 2u);
    }
  }

  if (v19[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_targetsAndActions removeObjectAtIndex:?];
    [(_UISceneDisplayLink *)self _updateStatus];
  }

  _Block_object_dispose(&v18, 8);
}

- (void)_updateStatus
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  if (![WeakRetained activationState])
  {
    v6 = [(NSMutableArray *)self->_targetsAndActions count];

    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v4 = objc_loadWeakRetained(&self->_scene);
  if ([v4 activationState] != 1)
  {

    goto LABEL_10;
  }

  v5 = [(NSMutableArray *)self->_targetsAndActions count];

  if (v5)
  {
LABEL_6:
    p_displayLink = &self->_displayLink;
    if (self->_displayLink)
    {
      return;
    }

    v8 = objc_loadWeakRetained(&self->_scene);
    screen = [v8 screen];
    obj = [screen displayLinkWithTarget:self selector:sel__displayLinkTick_];

    if (obj)
    {
      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [obj addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

      objc_storeStrong(p_displayLink, obj);
    }

    else
    {
      obj = 0;
    }

    goto LABEL_16;
  }

LABEL_10:
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v12 = self->_displayLink;
    self->_displayLink = 0;
  }

  if (![(NSMutableArray *)self->_targetsAndActions count])
  {
    obj = objc_loadWeakRetained(&self->_scene);
    [obj _unregisterSceneComponentForKey:@"_UISceneDisplayLinkKey"];
LABEL_16:
  }
}

- (void)_displayLinkTick:(id)tick
{
  tickCopy = tick;
  [tickCopy timestamp];
  v6 = _UIMachTimeForMediaTime(v5);
  [tickCopy targetTimestamp];
  v8 = _UIMachTimeForMediaTime(v7);
  _UIQOSProcessingBegin("UISceneDisplayLink", 0, v6, v8);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__73;
  v23 = __Block_byref_object_dispose__73;
  v24 = 0;
  targetsAndActions = self->_targetsAndActions;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40___UISceneDisplayLink__displayLinkTick___block_invoke;
  v16[3] = &unk_1E7106CC8;
  v10 = tickCopy;
  v17 = v10;
  v18 = &v19;
  [(NSMutableArray *)targetsAndActions enumerateObjectsUsingBlock:v16];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v12 = v20[5];
  if (has_internal_diagnostics)
  {
    if (v12)
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *v15 = 0;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "A _UISceneDisplayLink target was deallocated while registered.", v15, 2u);
      }
    }
  }

  else if (v12)
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &_displayLinkTick____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "A _UISceneDisplayLink target was deallocated while registered.", v15, 2u);
    }
  }

  if (v20[5])
  {
    [(NSMutableArray *)self->_targetsAndActions removeObjectsAtIndexes:?];
    [(_UISceneDisplayLink *)self _updateStatus];
  }

  _Block_object_dispose(&v19, 8);
  _UIQOSProcessingEnd();
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end