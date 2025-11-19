@interface _UIChildRemoteContentRegistry
- (BOOL)parentSettingsAvailable;
- (FBSSceneSettings)parentSettings;
- (_UIChildRemoteContentRegistry)initWithParentScene:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)addChildScene:(id)a3;
- (void)addChildViewService:(id)a3;
- (void)executeWhenParentSettingsAreAvailable:(id)a3 forChildScene:(id)a4;
- (void)removeChildScene:(id)a3;
- (void)removeChildViewService:(id)a3;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _UIChildRemoteContentRegistry

- (id)succinctDescription
{
  v2 = [(_UIChildRemoteContentRegistry *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = objc_loadWeakRetained(&self->_parentScene);
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"<%@: %p>", v7, v4];
  }

  else
  {
    v8 = @"(nil)";
  }

  v9 = [v3 appendObject:v8 withName:@"parentScene"];
  v10 = [v3 appendInt:-[NSHashTable count](self->_childScenes withName:{"count"), @"childScenes"}];
  v11 = [v3 appendInt:-[NSHashTable count](self->_childViewServices withName:{"count"), @"childViewServices"}];

  return v3;
}

- (BOOL)parentSettingsAvailable
{
  v2 = [(_UIChildRemoteContentRegistry *)self parentSettings];
  v3 = [v2 displayConfiguration];
  v4 = v3 != 0;

  return v4;
}

- (FBSSceneSettings)parentSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_parentScene);
  v3 = [WeakRetained settings];

  return v3;
}

- (_UIChildRemoteContentRegistry)initWithParentScene:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIChildRemoteContentRegistry.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"parentScene"}];
  }

  v11.receiver = self;
  v11.super_class = _UIChildRemoteContentRegistry;
  v6 = [(_UIChildRemoteContentRegistry *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v8 = objc_storeWeak(&v6->_parentScene, v5);
    [v5 addObserver:v7];
  }

  return v7;
}

- (void)addChildScene:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  childScenes = self->_childScenes;
  if (!childScenes)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_childScenes;
    self->_childScenes = v6;

    childScenes = self->_childScenes;
  }

  [(NSHashTable *)childScenes addObject:v4];
  WeakRetained = objc_loadWeakRetained(&self->_parentScene);
  [v4 setParentScene:WeakRetained];

  v9 = *(__UILogGetCategoryCachedImpl("_UIChildRemoteContentRegistry", &addChildScene____s_category) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(_UIChildRemoteContentRegistry *)self succinctDescription];
    v11 = v4;
    if (v11)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v12 stringWithFormat:@"<%@: %p>", v14, v11];
    }

    else
    {
      v15 = @"(nil)";
    }

    *buf = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "%@ Registry is now tracking child scene %@", buf, 0x16u);
  }

  if (![(_UIChildRemoteContentRegistry *)self parentSettingsAvailable])
  {
    v16 = objc_loadWeakRetained(&self->_parentScene);
    [v16 removeObserver:self];

    v17 = objc_loadWeakRetained(&self->_parentScene);
    [v17 addObserver:self];
  }
}

- (void)removeChildScene:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 parentScene];
  WeakRetained = objc_loadWeakRetained(&self->_parentScene);
  v7 = [v5 isEqual:WeakRetained];

  if (v7)
  {
    [v4 setParentScene:0];
  }

  [(NSHashTable *)self->_childScenes removeObject:v4];
  v8 = *(__UILogGetCategoryCachedImpl("_UIChildRemoteContentRegistry", &removeChildScene____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(_UIChildRemoteContentRegistry *)self succinctDescription];
    v10 = v4;
    if (v10)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v11 stringWithFormat:@"<%@: %p>", v13, v10];
    }

    else
    {
      v14 = @"(nil)";
    }

    *buf = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%@ Registry is no longer tracking child scene %@", buf, 0x16u);
  }

  enqueuedSettingsAvailabilityBlocks = self->_enqueuedSettingsAvailabilityBlocks;
  v16 = [v4 identityToken];
  v17 = [v16 stringRepresentation];
  [(NSMutableDictionary *)enqueuedSettingsAvailabilityBlocks removeObjectForKey:v17];
}

- (void)addChildViewService:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  childViewServices = self->_childViewServices;
  if (!childViewServices)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_childViewServices;
    self->_childViewServices = v6;

    childViewServices = self->_childViewServices;
  }

  [(NSHashTable *)childViewServices addObject:v4];
  v8 = *(__UILogGetCategoryCachedImpl("_UIChildRemoteContentRegistry", &addChildViewService____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(_UIChildRemoteContentRegistry *)self succinctDescription];
    v10 = v4;
    if (v10)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v11 stringWithFormat:@"<%@: %p>", v13, v10];
    }

    else
    {
      v14 = @"(nil)";
    }

    *buf = 138412546;
    v18 = v9;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%@ Registry is now tracking child view service %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentScene);
  v16 = [WeakRetained settings];
  [v4 _movedToParentSceneWithSettings:v16];
}

- (void)removeChildViewService:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSHashTable *)self->_childViewServices removeObject:v4];
  v5 = *(__UILogGetCategoryCachedImpl("_UIChildRemoteContentRegistry", &removeChildViewService____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(_UIChildRemoteContentRegistry *)self succinctDescription];
    v7 = v4;
    if (v7)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v8 stringWithFormat:@"<%@: %p>", v10, v7];
    }

    else
    {
      v11 = @"(nil)";
    }

    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%@ Registry is no longer tracking child view service %@", buf, 0x16u);
  }
}

- (void)executeWhenParentSettingsAreAvailable:(id)a3 forChildScene:(id)a4
{
  aBlock = a3;
  v7 = a4;
  if ([(_UIChildRemoteContentRegistry *)self parentSettingsAvailable])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIChildRemoteContentRegistry.m" lineNumber:115 description:@"Unable to enqueue a parent scene setting availability block when parent scene settings are currently available"];
  }

  if (![(NSHashTable *)self->_childScenes containsObject:v7])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIChildRemoteContentRegistry.m" lineNumber:116 description:@"Unable to enqueue a parent scene availability block for a child that is not being tracked by this registry"];
  }

  enqueuedSettingsAvailabilityBlocks = self->_enqueuedSettingsAvailabilityBlocks;
  if (!enqueuedSettingsAvailabilityBlocks)
  {
    v9 = objc_opt_new();
    v10 = self->_enqueuedSettingsAvailabilityBlocks;
    self->_enqueuedSettingsAvailabilityBlocks = v9;

    enqueuedSettingsAvailabilityBlocks = self->_enqueuedSettingsAvailabilityBlocks;
  }

  v11 = _Block_copy(aBlock);
  v12 = [v7 identityToken];
  v13 = [v12 stringRepresentation];
  [(NSMutableDictionary *)enqueuedSettingsAvailabilityBlocks setValue:v11 forKey:v13];
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(NSHashTable *)self->_childViewServices allObjects];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [v5 settingsDiff];
        [v11 _parentSceneDidUpdateWithDiff:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  enqueuedSettingsAvailabilityBlocks = self->_enqueuedSettingsAvailabilityBlocks;
  if (enqueuedSettingsAvailabilityBlocks)
  {
    v14 = [(NSMutableDictionary *)enqueuedSettingsAvailabilityBlocks allValues];
    [v14 enumerateObjectsUsingBlock:&__block_literal_global_700];

    v15 = self->_enqueuedSettingsAvailabilityBlocks;
    self->_enqueuedSettingsAvailabilityBlocks = 0;
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIChildRemoteContentRegistry *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIChildRemoteContentRegistry *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x1E698E680];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:v5];

  v7 = objc_loadWeakRetained(&self->_parentScene);
  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"<%@: %p>", v10, v7];
  }

  else
  {
    v11 = @"(nil)";
  }

  v12 = [v6 appendObject:v11 withName:@"parentScene"];
  if ([(NSHashTable *)self->_childScenes count]|| [(NSHashTable *)self->_childViewServices count])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71___UIChildRemoteContentRegistry_descriptionBuilderWithMultilinePrefix___block_invoke;
    v16[3] = &unk_1E70F35B8;
    v17 = v6;
    v18 = self;
    v13 = [v17 modifyBody:v16];
  }

  else
  {
    v15 = [v6 appendObject:@"none" withName:@"children"];
  }

  return v6;
}

@end