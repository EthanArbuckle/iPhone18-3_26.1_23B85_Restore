@interface _UIFocusUpdateRequest
+ (id)requestForRemovingFocusInFocusSystem:(id)system;
- (BOOL)canMergeWithRequest:(id)request;
- (BOOL)isValidInFocusSystem:(id)system;
- (UIFocusEnvironment)destinationEnvironment;
- (UIFocusEnvironment)environment;
- (UIFocusSystem)focusSystem;
- (_UIFocusUpdateRequest)init;
- (_UIFocusUpdateRequest)initWithEnvironment:(id)environment;
- (_UIFocusUpdateRequest)initWithFocusSystem:(id)system environment:(id)environment;
- (_UIFocusUpdateRequest)initWithFocusSystem:(id)system environment:(id)environment destinationEnvironment:(id)destinationEnvironment;
- (id)copyWithZone:(_NSZone *)zone;
- (id)requestByMergingWithRequest:(id)request;
- (id)requestByRedirectingRequestToEnvironment:(id)environment;
- (id)requestByRedirectingRequestToNextContainerEnvironment;
- (void)cacheCurrentFocusSystem;
@end

@implementation _UIFocusUpdateRequest

- (void)cacheCurrentFocusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);

  if (!WeakRetained)
  {
    focusSystem = [(_UIFocusUpdateRequest *)self focusSystem];
    v7 = focusSystem;
    if (!focusSystem)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:202 description:@"Unable to find focus system for request. Environment does not appear to be in a valid focus environment chain."];

      focusSystem = 0;
    }

    objc_storeWeak(&self->_focusSystem, focusSystem);
  }
}

- (UIFocusSystem)focusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = v4;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_environment);
    if (v6 && ([UIFocusSystem focusSystemForEnvironment:v6], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = v7;
      v5 = v4;
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v11 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Unable to find focus system for request. Environment does not appear to be in a valid focus environment chain.", buf, 2u);
        }
      }

      else
      {
        v8 = *(__UILogGetCategoryCachedImpl("Assert", &focusSystem___s_category) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v12 = 0;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unable to find focus system for request. Environment does not appear to be in a valid focus environment chain.", v12, 2u);
        }
      }

      v9 = +[UIScreen mainScreen];
      v5 = [UIFocusSystem focusSystemForEnvironment:v9];

      v4 = 0;
    }
  }

  return v5;
}

- (UIFocusEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (UIFocusEnvironment)destinationEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_destinationEnvironment);

  return WeakRetained;
}

- (_UIFocusUpdateRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:28 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (_UIFocusUpdateRequest)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  if (!environmentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v10.receiver = self;
  v10.super_class = _UIFocusUpdateRequest;
  v6 = [(_UIFocusUpdateRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_focusSystem, 0);
    objc_storeWeak(&v7->_environment, environmentCopy);
    objc_storeWeak(&v7->_destinationEnvironment, environmentCopy);
    v7->_allowsDeferral = 1;
    v7->_allowsOverridingPreferedFocusEnvironments = 1;
  }

  return v7;
}

- (_UIFocusUpdateRequest)initWithFocusSystem:(id)system environment:(id)environment
{
  systemCopy = system;
  environmentCopy = environment;
  v9 = environmentCopy;
  if (systemCopy)
  {
    if (environmentCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"environment"}];

LABEL_3:
  v15.receiver = self;
  v15.super_class = _UIFocusUpdateRequest;
  v10 = [(_UIFocusUpdateRequest *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_focusSystem, systemCopy);
    objc_storeWeak(&v11->_environment, v9);
    objc_storeWeak(&v11->_destinationEnvironment, v9);
    v11->_allowsDeferral = 1;
    v11->_allowsOverridingPreferedFocusEnvironments = 1;
  }

  return v11;
}

- (_UIFocusUpdateRequest)initWithFocusSystem:(id)system environment:(id)environment destinationEnvironment:(id)destinationEnvironment
{
  v52 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  environmentCopy = environment;
  destinationEnvironmentCopy = destinationEnvironment;
  if (!destinationEnvironmentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"destinationEnvironment"}];
  }

  if ((_UIFocusEnvironmentIsAncestorOfEnvironment(environmentCopy, destinationEnvironmentCopy) & 1) == 0)
  {
    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = destinationEnvironmentCopy;
      if (destinationEnvironmentCopy)
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v18 stringWithFormat:@"<%@: %p>", v20, v17];
      }

      else
      {
        v21 = @"(nil)";
      }

      v28 = environmentCopy;
      if (v28)
      {
        v29 = MEMORY[0x1E696AEC0];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = [v29 stringWithFormat:@"<%@: %p>", v31, v28];
      }

      else
      {
        v32 = @"(nil)";
      }

      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:62 description:{@"Cannot request a focus update to destinationEnvironment %@ from non-ancestor environment %@", v21, v32}];
      goto LABEL_4;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v22 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_25;
      }

      v39 = destinationEnvironmentCopy;
      if (destinationEnvironmentCopy)
      {
        v41 = MEMORY[0x1E696AEC0];
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        v40 = [v41 stringWithFormat:@"<%@: %p>", v43, v39];
      }

      else
      {
        v40 = @"(nil)";
      }

      v33 = v40;
      v44 = environmentCopy;
      if (v44)
      {
        v45 = MEMORY[0x1E696AEC0];
        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        v38 = [v45 stringWithFormat:@"<%@: %p>", v47, v44];
      }

      else
      {
        v38 = @"(nil)";
      }

      *buf = 138412546;
      v49 = v33;
      v50 = 2112;
      v51 = v38;
      _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Cannot request a focus update to destinationEnvironment %@ from non-ancestor environment %@ This will become an assert in a future version.", buf, 0x16u);
    }

    else
    {
      v22 = *(__UILogGetCategoryCachedImpl("Assert", &initWithFocusSystem_environment_destinationEnvironment____s_category) + 8);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_25:

        goto LABEL_4;
      }

      v23 = destinationEnvironmentCopy;
      if (destinationEnvironmentCopy)
      {
        v24 = MEMORY[0x1E696AEC0];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = [v24 stringWithFormat:@"<%@: %p>", v26, v23];
      }

      else
      {
        v27 = @"(nil)";
      }

      v33 = v27;
      v34 = environmentCopy;
      if (v34)
      {
        v35 = MEMORY[0x1E696AEC0];
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = [v35 stringWithFormat:@"<%@: %p>", v37, v34];
      }

      else
      {
        v38 = @"(nil)";
      }

      *buf = 138412546;
      v49 = v33;
      v50 = 2112;
      v51 = v38;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Cannot request a focus update to destinationEnvironment %@ from non-ancestor environment %@ This will become an assert in a future version.", buf, 0x16u);
    }

    goto LABEL_25;
  }

LABEL_4:
  v12 = [(_UIFocusUpdateRequest *)self initWithFocusSystem:systemCopy environment:environmentCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_destinationEnvironment, destinationEnvironmentCopy);
  }

  return v13;
}

+ (id)requestForRemovingFocusInFocusSystem:(id)system
{
  systemCopy = system;
  v4 = [[_UIFocusUpdateRequest alloc] initWithFocusSystem:systemCopy environment:systemCopy];

  v4->_isFocusRemovalRequest = 1;
  v4->_allowsFocusingCurrentItem = 1;

  return v4;
}

- (id)requestByRedirectingRequestToEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = [(_UIFocusUpdateRequest *)self copy];
  objc_storeWeak(v5 + 4, environmentCopy);
  objc_storeWeak(v5 + 2, environmentCopy);

  objc_storeWeak(v5 + 3, 0);

  return v5;
}

- (id)requestByRedirectingRequestToNextContainerEnvironment
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__224;
  v11 = __Block_byref_object_dispose__224;
  v12 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78___UIFocusUpdateRequest_requestByRedirectingRequestToNextContainerEnvironment__block_invoke;
  v6[3] = &unk_1E70FFB40;
  v6[4] = self;
  v6[5] = &v7;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(WeakRetained, v6);

  if (v8[5])
  {
    v4 = [(_UIFocusUpdateRequest *)self requestByRedirectingRequestToEnvironment:?];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = [v4 initWithEnvironment:WeakRetained];

  v7 = objc_loadWeakRetained(&self->_focusSystem);
  objc_storeWeak((v6 + 24), v7);

  v8 = objc_loadWeakRetained(&self->_destinationEnvironment);
  objc_storeWeak((v6 + 16), v8);

  *(v6 + 10) = self->_isFocusRemovalRequest;
  *(v6 + 14) = self->_shouldPlayFocusSound;
  *(v6 + 12) = self->_allowsFocusingCurrentItem;
  *(v6 + 9) = self->_allowsDeferral;
  *(v6 + 8) = self->_scrollIfNecessary;
  *(v6 + 13) = self->_allowsOverridingPreferedFocusEnvironments;
  *(v6 + 11) = self->_resetsUpdateThrottle;
  return v6;
}

- (BOOL)canMergeWithRequest:(id)request
{
  requestCopy = request;
  focusSystem = [(_UIFocusUpdateRequest *)self focusSystem];
  focusSystem2 = [requestCopy focusSystem];
  v7 = focusSystem2;
  if (requestCopy)
  {
    v8 = focusSystem == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = v8 || focusSystem == focusSystem2;
  WeakRetained = objc_loadWeakRetained(&self->_destinationEnvironment);
  if (WeakRetained)
  {
    destinationEnvironment = [requestCopy destinationEnvironment];
    if (destinationEnvironment)
    {
      v13 = objc_loadWeakRetained(&self->_destinationEnvironment);
      destinationEnvironment2 = [requestCopy destinationEnvironment];
      v15 = v13 != destinationEnvironment2;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v10)
  {
    v16 = objc_loadWeakRetained(&self->_environment);
    environment = [requestCopy environment];
    if (v16 != environment || v15)
    {
      v18 = 0;
    }

    else
    {
      isFocusRemovalRequest = self->_isFocusRemovalRequest;
      v18 = isFocusRemovalRequest == [requestCopy isFocusRemovalRequest];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)requestByMergingWithRequest:(id)request
{
  requestCopy = request;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = [(_UIFocusUpdateRequest *)self canMergeWithRequest:requestCopy];
  if (has_internal_diagnostics)
  {
    if (!v6)
    {
      v20 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v20, OS_LOG_TYPE_FAULT, "Cannot merge focus update requests that are not allowed to be merged.", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v21 = *(__UILogGetCategoryCachedImpl("Assert", &requestByMergingWithRequest____s_category) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Cannot merge focus update requests that are not allowed to be merged.", v22, 2u);
    }
  }

  v7 = [_UIFocusUpdateRequest alloc];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v9 = [(_UIFocusUpdateRequest *)v7 initWithEnvironment:WeakRetained];

  v10 = objc_loadWeakRetained(&self->_focusSystem);
  if (v10)
  {
    objc_storeWeak((v9 + 24), v10);
  }

  else
  {
    v11 = objc_loadWeakRetained(requestCopy + 3);
    objc_storeWeak((v9 + 24), v11);
  }

  v12 = objc_loadWeakRetained(&self->_destinationEnvironment);
  if (v12)
  {
    objc_storeWeak((v9 + 16), v12);
  }

  else
  {
    v13 = objc_loadWeakRetained(requestCopy + 2);
    objc_storeWeak((v9 + 16), v13);
  }

  *(v9 + 10) = self->_isFocusRemovalRequest;
  if (self->_allowsDeferral)
  {
    allowsDeferral = [requestCopy allowsDeferral];
  }

  else
  {
    allowsDeferral = 0;
  }

  [v9 setAllowsDeferral:allowsDeferral];
  if (self->_scrollIfNecessary)
  {
    shouldScrollIfNecessary = 1;
  }

  else
  {
    shouldScrollIfNecessary = [requestCopy shouldScrollIfNecessary];
  }

  [v9 setScrollIfNecessary:shouldScrollIfNecessary];
  if (self->_shouldPlayFocusSound)
  {
    shouldPlayFocusSound = 1;
  }

  else
  {
    shouldPlayFocusSound = [requestCopy shouldPlayFocusSound];
  }

  [v9 setShouldPlayFocusSound:shouldPlayFocusSound];
  if (self->_allowsFocusingCurrentItem)
  {
    allowsFocusingCurrentItem = 1;
  }

  else
  {
    allowsFocusingCurrentItem = [requestCopy allowsFocusingCurrentItem];
  }

  [v9 setAllowsFocusingCurrentItem:allowsFocusingCurrentItem];
  if (self->_resetsUpdateThrottle)
  {
    resetsUpdateThrottle = 1;
  }

  else
  {
    resetsUpdateThrottle = [requestCopy resetsUpdateThrottle];
  }

  [v9 setResetsUpdateThrottle:resetsUpdateThrottle];

  return v9;
}

- (BOOL)isValidInFocusSystem:(id)system
{
  systemCopy = system;
  if (!systemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  if (WeakRetained && ([(_UIFocusUpdateRequest *)self focusSystem], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == systemCopy))
  {
    v9 = [UIFocusSystem focusSystemForEnvironment:WeakRetained];
    v8 = v9 == systemCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end