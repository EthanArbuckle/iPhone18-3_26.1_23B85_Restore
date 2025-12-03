@interface _UIContextMenuAvoidanceSceneComponent
+ (id)sceneComponentForView:(id)view;
- (UIEdgeInsets)_overlapInsetsInCoordinateSpace:(id)space;
- (UIScene)_scene;
- (_UIContextMenuAvoidanceSceneComponent)initWithScene:(id)scene;
- (id)addAvoidanceRect:(id)rect forKey:(id)key;
- (unint64_t)_nextAssertionID;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)removeAvoidanceRectForKey:(id)key;
@end

@implementation _UIContextMenuAvoidanceSceneComponent

- (_UIContextMenuAvoidanceSceneComponent)initWithScene:(id)scene
{
  v33 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"Only UIWindowScene is supported by %@.", v15];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v22 = v17;
      v23 = 2114;
      v24 = v19;
      v25 = 2048;
      selfCopy = self;
      v27 = 2114;
      v28 = @"_UIContextMenuAvoidanceSceneComponent.m";
      v29 = 1024;
      v30 = 66;
      v31 = 2114;
      v32 = v16;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A29D6F8);
  }

  v20.receiver = self;
  v20.super_class = _UIContextMenuAvoidanceSceneComponent;
  v6 = [(_UIContextMenuAvoidanceSceneComponent *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_scene, sceneCopy);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    avoidanceRects = v7->_avoidanceRects;
    v7->_avoidanceRects = dictionary;

    v10 = [[_UIAssertionController alloc] initWithAssertionSubject:v7];
    assertionController = v7->_assertionController;
    v7->_assertionController = v10;
  }

  return v7;
}

+ (id)sceneComponentForView:(id)view
{
  _window = [view _window];
  windowScene = [_window windowScene];
  _contextMenuAvoidanceSceneComponent = [windowScene _contextMenuAvoidanceSceneComponent];

  return _contextMenuAvoidanceSceneComponent;
}

- (id)addAvoidanceRect:(id)rect forKey:(id)key
{
  v32 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  keyCopy = key;
  if (![keyCopy length])
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Avoidance rect key cannot be empty."];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = 138544642;
      v21 = v17;
      v22 = 2114;
      v23 = v19;
      v24 = 2048;
      selfCopy = self;
      v26 = 2114;
      v27 = @"_UIContextMenuAvoidanceSceneComponent.m";
      v28 = 1024;
      v29 = 82;
      v30 = 2114;
      v31 = v16;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v20, 0x3Au);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A29D9D0);
  }

  v9 = *(__UILogGetCategoryCachedImpl("ContextMenu", &addAvoidanceRect_forKey____s_category) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = _NSStringFromUIRectEdge([rectCopy edge]);
    v20 = 138412546;
    v21 = keyCopy;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Adding menu avoidance rect for key: %@ (edge = %@)", &v20, 0x16u);
  }

  [(NSMutableDictionary *)self->_avoidanceRects setObject:rectCopy forKey:keyCopy];
  _nextAssertionID = [(_UIContextMenuAvoidanceSceneComponent *)self _nextAssertionID];
  assertionController = [(_UIContextMenuAvoidanceSceneComponent *)self assertionController];
  v14 = [assertionController vendAssertionOfType:_nextAssertionID initialState:0 reason:keyCopy requiresExplicitInvalidation:0];

  [rectCopy setAssertionID:_nextAssertionID];

  return v14;
}

- (void)removeAvoidanceRectForKey:(id)key
{
  v26 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (![keyCopy length])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Avoidance rect key cannot be empty."];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = 138544642;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      v18 = 2048;
      selfCopy = self;
      v20 = 2114;
      v21 = @"_UIContextMenuAvoidanceSceneComponent.m";
      v22 = 1024;
      v23 = 94;
      v24 = 2114;
      v25 = v10;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v14, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A29DBF8);
  }

  v6 = [(NSMutableDictionary *)self->_avoidanceRects objectForKey:keyCopy];
  if (v6)
  {
    v7 = *(__UILogGetCategoryCachedImpl("ContextMenu", &removeAvoidanceRectForKey____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = _NSStringFromUIRectEdge([v6 edge]);
      v14 = 138412546;
      v15 = keyCopy;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Removing menu avoidance rect for key: %@ (edge = %@)", &v14, 0x16u);
    }

    [v6 setAssertionID:0];
  }

  [(NSMutableDictionary *)self->_avoidanceRects removeObjectForKey:keyCopy];
}

- (UIEdgeInsets)_overlapInsetsInCoordinateSpace:(id)space
{
  spaceCopy = space;
  v18 = 0;
  v19 = &v18;
  v20 = 0x4010000000;
  v21 = "";
  v22 = 0u;
  v23 = 0u;
  avoidanceRects = self->_avoidanceRects;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73___UIContextMenuAvoidanceSceneComponent__overlapInsetsInCoordinateSpace___block_invoke;
  v15[3] = &unk_1E7128978;
  v6 = spaceCopy;
  v16 = v6;
  v17 = &v18;
  [(NSMutableDictionary *)avoidanceRects enumerateKeysAndObjectsUsingBlock:v15];
  v7 = v19[4];
  v8 = v19[5];
  v9 = v19[6];
  v10 = v19[7];

  _Block_object_dispose(&v18, 8);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__230;
  v11 = __Block_byref_object_dispose__230;
  v12 = 0;
  avoidanceRects = self->_avoidanceRects;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88___UIContextMenuAvoidanceSceneComponent_assertionActivationStateChangedToState_forType___block_invoke;
  v6[3] = &unk_1E71289A0;
  v6[4] = &v7;
  v6[5] = type;
  [(NSMutableDictionary *)avoidanceRects enumerateKeysAndObjectsUsingBlock:v6];
  if (v8[5])
  {
    [(_UIContextMenuAvoidanceSceneComponent *)self removeAvoidanceRectForKey:?];
  }

  _Block_object_dispose(&v7, 8);
}

- (unint64_t)_nextAssertionID
{
  v2 = self->_assertionID + 1;
  self->_assertionID = v2;
  return v2;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end