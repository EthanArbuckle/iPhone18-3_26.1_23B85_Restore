@interface _UIWorkspaceSceneRequestOptionsFactory
+ (id)_createDefaultBuilders;
+ (id)_defaultBuilderProviders;
+ (id)sharedFactory;
- (id)_effectiveBuilderForRole:(id)role;
- (id)_init;
- (id)customEndpointForRequest:(id)request;
- (void)_registerBuilder:(id)builder forRole:(id)role;
- (void)buildWorkspaceRequestOptionsForRequest:(id)request withContinuation:(id)continuation;
@end

@implementation _UIWorkspaceSceneRequestOptionsFactory

+ (id)sharedFactory
{
  if (_MergedGlobals_1246 != -1)
  {
    dispatch_once(&_MergedGlobals_1246, &__block_literal_global_471);
  }

  v3 = qword_1ED49FE80;

  return v3;
}

+ (id)_defaultBuilderProviders
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)_createDefaultBuilders
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v20 = @"UIWindowSceneSessionRoleApplication";
  v4 = objc_alloc_init(_UIApplicationSceneRequestBuilder);
  v21[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v6 = [v3 initWithDictionary:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _defaultBuilderProviders = [self _defaultBuilderProviders];
  v8 = [_defaultBuilderProviders countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(_defaultBuilderProviders);
        }

        createDefaultBuilders = [*(*(&v15 + 1) + 8 * i) createDefaultBuilders];
        [v6 addEntriesFromDictionary:createDefaultBuilders];
      }

      v9 = [_defaultBuilderProviders countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];

  return v13;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = _UIWorkspaceSceneRequestOptionsFactory;
  v2 = [(_UIWorkspaceSceneRequestOptionsFactory *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    buildersByRole = v2->_buildersByRole;
    v2->_buildersByRole = v3;

    v5 = +[_UIWorkspaceSceneRequestOptionsFactory _createDefaultBuilders];
    defaultBuildersByRole = v2->_defaultBuildersByRole;
    v2->_defaultBuildersByRole = v5;
  }

  return v2;
}

- (void)_registerBuilder:(id)builder forRole:(id)role
{
  v20 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  roleCopy = role;
  buildersByRole = [(_UIWorkspaceSceneRequestOptionsFactory *)self buildersByRole];
  v9 = [buildersByRole objectForKeyedSubscript:roleCopy];

  if (v9)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("SceneRequestFactory", &qword_1ED49FE88);
    if (*CategoryCachedImpl)
    {
      v11 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v18 = 138412802;
        *&v18[4] = roleCopy;
        *&v18[12] = 2112;
        *&v18[14] = v9;
        *&v18[22] = 2112;
        v19 = builderCopy;
        v12 = "Replacing existing builder for role %@. existing=%@, new=%@";
        v13 = v11;
        v14 = 32;
LABEL_9:
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, v12, v18, v14);
      }
    }
  }

  else
  {
    v15 = __UILogGetCategoryCachedImpl("SceneRequestFactory", &qword_1ED49FE90);
    if (*v15)
    {
      v17 = *(v15 + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v18 = 138412546;
        *&v18[4] = roleCopy;
        *&v18[12] = 2112;
        *&v18[14] = builderCopy;
        v12 = "Registering builder for role %@: %@";
        v13 = v17;
        v14 = 22;
        goto LABEL_9;
      }
    }
  }

  v16 = [(_UIWorkspaceSceneRequestOptionsFactory *)self buildersByRole:*v18];
  [v16 setObject:builderCopy forKeyedSubscript:roleCopy];
}

- (id)_effectiveBuilderForRole:(id)role
{
  roleCopy = role;
  buildersByRole = [(_UIWorkspaceSceneRequestOptionsFactory *)self buildersByRole];
  v6 = [buildersByRole objectForKeyedSubscript:roleCopy];

  if (!v6)
  {
    defaultBuildersByRole = [(_UIWorkspaceSceneRequestOptionsFactory *)self defaultBuildersByRole];
    v6 = [defaultBuildersByRole objectForKeyedSubscript:roleCopy];
  }

  return v6;
}

- (id)customEndpointForRequest:(id)request
{
  requestCopy = request;
  role = [requestCopy role];
  v6 = [(_UIWorkspaceSceneRequestOptionsFactory *)self _effectiveBuilderForRole:role];

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v6 customEndpointForRequest:requestCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)buildWorkspaceRequestOptionsForRequest:(id)request withContinuation:(id)continuation
{
  v39 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  continuationCopy = continuation;
  role = [requestCopy role];
  if (role)
  {
    v9 = [(_UIWorkspaceSceneRequestOptionsFactory *)self _effectiveBuilderForRole:role];
    if (v9)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("SceneRequestFactory", &qword_1ED49FEA8);
      if (*CategoryCachedImpl)
      {
        v28 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v36 = v9;
          v37 = 2112;
          v38 = requestCopy;
          _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Building workspace request options using builder: %@; clientRequest=%@", buf, 0x16u);
        }
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __98___UIWorkspaceSceneRequestOptionsFactory_buildWorkspaceRequestOptionsForRequest_withContinuation___block_invoke;
      v31[3] = &unk_1E711BEC0;
      v32 = v9;
      v34 = continuationCopy;
      v33 = role;
      [v32 buildWorkspaceRequestOptionsForRequest:requestCopy withContinuation:v31];

      v11 = v32;
    }

    else
    {
      v20 = __UILogGetCategoryCachedImpl("SceneRequestFactory", &qword_1ED49FEA0);
      if (*v20)
      {
        v30 = *(v20 + 8);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = role;
          _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "Building workspace request options failed because no builder is registered for scene session role %@.", buf, 0xCu);
        }
      }

      v11 = _UISceneErrorForActivationRequestOfInvalidRole(role, v21, v22, v23, v24, v25, v26, v27);
      (*(continuationCopy + 2))(continuationCopy, 0, v11);
    }
  }

  else
  {
    v12 = __UILogGetCategoryCachedImpl("SceneRequestFactory", &qword_1ED49FE98);
    if (*v12)
    {
      v29 = *(v12 + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Building workspace request options failed because role was nil in client request.", buf, 2u);
      }
    }

    v9 = _UISceneErrorForActivationRequestOfInvalidRole(@"<nil>", v13, v14, v15, v16, v17, v18, v19);
    (*(continuationCopy + 2))(continuationCopy, 0, v9);
  }
}

@end