@interface _UIChildRemoteContentRegistry
- (BOOL)parentSettingsAvailable;
- (FBSSceneSettings)parentSettings;
- (_UIChildRemoteContentRegistry)initWithParentScene:(id)scene;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)addChildScene:(id)scene;
- (void)addChildViewService:(id)service;
- (void)executeWhenParentSettingsAreAvailable:(id)available forChildScene:(id)scene;
- (void)removeChildScene:(id)scene;
- (void)removeChildViewService:(id)service;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation _UIChildRemoteContentRegistry

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIChildRemoteContentRegistry *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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
  parentSettings = [(_UIChildRemoteContentRegistry *)self parentSettings];
  displayConfiguration = [parentSettings displayConfiguration];
  v4 = displayConfiguration != 0;

  return v4;
}

- (FBSSceneSettings)parentSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_parentScene);
  settings = [WeakRetained settings];

  return settings;
}

- (_UIChildRemoteContentRegistry)initWithParentScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIChildRemoteContentRegistry.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"parentScene"}];
  }

  v11.receiver = self;
  v11.super_class = _UIChildRemoteContentRegistry;
  v6 = [(_UIChildRemoteContentRegistry *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v8 = objc_storeWeak(&v6->_parentScene, sceneCopy);
    [sceneCopy addObserver:v7];
  }

  return v7;
}

- (void)addChildScene:(id)scene
{
  v22 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  childScenes = self->_childScenes;
  if (!childScenes)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_childScenes;
    self->_childScenes = weakObjectsHashTable;

    childScenes = self->_childScenes;
  }

  [(NSHashTable *)childScenes addObject:sceneCopy];
  WeakRetained = objc_loadWeakRetained(&self->_parentScene);
  [sceneCopy setParentScene:WeakRetained];

  v9 = *(__UILogGetCategoryCachedImpl("_UIChildRemoteContentRegistry", &addChildScene____s_category) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(_UIChildRemoteContentRegistry *)self succinctDescription];
    v11 = sceneCopy;
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
    v19 = succinctDescription;
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

- (void)removeChildScene:(id)scene
{
  v22 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  parentScene = [sceneCopy parentScene];
  WeakRetained = objc_loadWeakRetained(&self->_parentScene);
  v7 = [parentScene isEqual:WeakRetained];

  if (v7)
  {
    [sceneCopy setParentScene:0];
  }

  [(NSHashTable *)self->_childScenes removeObject:sceneCopy];
  v8 = *(__UILogGetCategoryCachedImpl("_UIChildRemoteContentRegistry", &removeChildScene____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(_UIChildRemoteContentRegistry *)self succinctDescription];
    v10 = sceneCopy;
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
    v19 = succinctDescription;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%@ Registry is no longer tracking child scene %@", buf, 0x16u);
  }

  enqueuedSettingsAvailabilityBlocks = self->_enqueuedSettingsAvailabilityBlocks;
  identityToken = [sceneCopy identityToken];
  stringRepresentation = [identityToken stringRepresentation];
  [(NSMutableDictionary *)enqueuedSettingsAvailabilityBlocks removeObjectForKey:stringRepresentation];
}

- (void)addChildViewService:(id)service
{
  v21 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  childViewServices = self->_childViewServices;
  if (!childViewServices)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_childViewServices;
    self->_childViewServices = weakObjectsHashTable;

    childViewServices = self->_childViewServices;
  }

  [(NSHashTable *)childViewServices addObject:serviceCopy];
  v8 = *(__UILogGetCategoryCachedImpl("_UIChildRemoteContentRegistry", &addChildViewService____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(_UIChildRemoteContentRegistry *)self succinctDescription];
    v10 = serviceCopy;
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
    v18 = succinctDescription;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%@ Registry is now tracking child view service %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentScene);
  settings = [WeakRetained settings];
  [serviceCopy _movedToParentSceneWithSettings:settings];
}

- (void)removeChildViewService:(id)service
{
  v16 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  [(NSHashTable *)self->_childViewServices removeObject:serviceCopy];
  v5 = *(__UILogGetCategoryCachedImpl("_UIChildRemoteContentRegistry", &removeChildViewService____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(_UIChildRemoteContentRegistry *)self succinctDescription];
    v7 = serviceCopy;
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
    v13 = succinctDescription;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%@ Registry is no longer tracking child view service %@", buf, 0x16u);
  }
}

- (void)executeWhenParentSettingsAreAvailable:(id)available forChildScene:(id)scene
{
  aBlock = available;
  sceneCopy = scene;
  if ([(_UIChildRemoteContentRegistry *)self parentSettingsAvailable])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIChildRemoteContentRegistry.m" lineNumber:115 description:@"Unable to enqueue a parent scene setting availability block when parent scene settings are currently available"];
  }

  if (![(NSHashTable *)self->_childScenes containsObject:sceneCopy])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIChildRemoteContentRegistry.m" lineNumber:116 description:@"Unable to enqueue a parent scene availability block for a child that is not being tracked by this registry"];
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
  identityToken = [sceneCopy identityToken];
  stringRepresentation = [identityToken stringRepresentation];
  [(NSMutableDictionary *)enqueuedSettingsAvailabilityBlocks setValue:v11 forKey:stringRepresentation];
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  v21 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allObjects = [(NSHashTable *)self->_childViewServices allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        settingsDiff = [settingsCopy settingsDiff];
        [v11 _parentSceneDidUpdateWithDiff:settingsDiff];

        ++v10;
      }

      while (v8 != v10);
      v8 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  enqueuedSettingsAvailabilityBlocks = self->_enqueuedSettingsAvailabilityBlocks;
  if (enqueuedSettingsAvailabilityBlocks)
  {
    allValues = [(NSMutableDictionary *)enqueuedSettingsAvailabilityBlocks allValues];
    [allValues enumerateObjectsUsingBlock:&__block_literal_global_700];

    v15 = self->_enqueuedSettingsAvailabilityBlocks;
    self->_enqueuedSettingsAvailabilityBlocks = 0;
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIChildRemoteContentRegistry *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIChildRemoteContentRegistry *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefixCopy];

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
    selfCopy = self;
    v13 = [v17 modifyBody:v16];
  }

  else
  {
    v15 = [v6 appendObject:@"none" withName:@"children"];
  }

  return v6;
}

@end