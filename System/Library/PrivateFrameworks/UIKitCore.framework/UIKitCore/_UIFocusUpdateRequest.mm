@interface _UIFocusUpdateRequest
+ (id)requestForRemovingFocusInFocusSystem:(id)a3;
- (BOOL)canMergeWithRequest:(id)a3;
- (BOOL)isValidInFocusSystem:(id)a3;
- (UIFocusEnvironment)destinationEnvironment;
- (UIFocusEnvironment)environment;
- (UIFocusSystem)focusSystem;
- (_UIFocusUpdateRequest)init;
- (_UIFocusUpdateRequest)initWithEnvironment:(id)a3;
- (_UIFocusUpdateRequest)initWithFocusSystem:(id)a3 environment:(id)a4;
- (_UIFocusUpdateRequest)initWithFocusSystem:(id)a3 environment:(id)a4 destinationEnvironment:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)requestByMergingWithRequest:(id)a3;
- (id)requestByRedirectingRequestToEnvironment:(id)a3;
- (id)requestByRedirectingRequestToNextContainerEnvironment;
- (void)cacheCurrentFocusSystem;
@end

@implementation _UIFocusUpdateRequest

- (void)cacheCurrentFocusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);

  if (!WeakRetained)
  {
    v5 = [(_UIFocusUpdateRequest *)self focusSystem];
    v7 = v5;
    if (!v5)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:202 description:@"Unable to find focus system for request. Environment does not appear to be in a valid focus environment chain."];

      v5 = 0;
    }

    objc_storeWeak(&self->_focusSystem, v5);
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:28 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (_UIFocusUpdateRequest)initWithEnvironment:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v10.receiver = self;
  v10.super_class = _UIFocusUpdateRequest;
  v6 = [(_UIFocusUpdateRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_focusSystem, 0);
    objc_storeWeak(&v7->_environment, v5);
    objc_storeWeak(&v7->_destinationEnvironment, v5);
    v7->_allowsDeferral = 1;
    v7->_allowsOverridingPreferedFocusEnvironments = 1;
  }

  return v7;
}

- (_UIFocusUpdateRequest)initWithFocusSystem:(id)a3 environment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"environment"}];

LABEL_3:
  v15.receiver = self;
  v15.super_class = _UIFocusUpdateRequest;
  v10 = [(_UIFocusUpdateRequest *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_focusSystem, v7);
    objc_storeWeak(&v11->_environment, v9);
    objc_storeWeak(&v11->_destinationEnvironment, v9);
    v11->_allowsDeferral = 1;
    v11->_allowsOverridingPreferedFocusEnvironments = 1;
  }

  return v11;
}

- (_UIFocusUpdateRequest)initWithFocusSystem:(id)a3 environment:(id)a4 destinationEnvironment:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"destinationEnvironment"}];
  }

  if ((_UIFocusEnvironmentIsAncestorOfEnvironment(v10, v11) & 1) == 0)
  {
    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = v11;
      if (v11)
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

      v28 = v10;
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

      [v16 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:62 description:{@"Cannot request a focus update to destinationEnvironment %@ from non-ancestor environment %@", v21, v32}];
      goto LABEL_4;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v22 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_25;
      }

      v39 = v11;
      if (v11)
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
      v44 = v10;
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

      v23 = v11;
      if (v11)
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
      v34 = v10;
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
  v12 = [(_UIFocusUpdateRequest *)self initWithFocusSystem:v9 environment:v10];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_destinationEnvironment, v11);
  }

  return v13;
}

+ (id)requestForRemovingFocusInFocusSystem:(id)a3
{
  v3 = a3;
  v4 = [[_UIFocusUpdateRequest alloc] initWithFocusSystem:v3 environment:v3];

  v4->_isFocusRemovalRequest = 1;
  v4->_allowsFocusingCurrentItem = 1;

  return v4;
}

- (id)requestByRedirectingRequestToEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusUpdateRequest *)self copy];
  objc_storeWeak(v5 + 4, v4);
  objc_storeWeak(v5 + 2, v4);

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

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)canMergeWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusUpdateRequest *)self focusSystem];
  v6 = [v4 focusSystem];
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = v8 || v5 == v6;
  WeakRetained = objc_loadWeakRetained(&self->_destinationEnvironment);
  if (WeakRetained)
  {
    v12 = [v4 destinationEnvironment];
    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_destinationEnvironment);
      v14 = [v4 destinationEnvironment];
      v15 = v13 != v14;
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
    v17 = [v4 environment];
    if (v16 != v17 || v15)
    {
      v18 = 0;
    }

    else
    {
      isFocusRemovalRequest = self->_isFocusRemovalRequest;
      v18 = isFocusRemovalRequest == [v4 isFocusRemovalRequest];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)requestByMergingWithRequest:(id)a3
{
  v4 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = [(_UIFocusUpdateRequest *)self canMergeWithRequest:v4];
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
    v11 = objc_loadWeakRetained(v4 + 3);
    objc_storeWeak((v9 + 24), v11);
  }

  v12 = objc_loadWeakRetained(&self->_destinationEnvironment);
  if (v12)
  {
    objc_storeWeak((v9 + 16), v12);
  }

  else
  {
    v13 = objc_loadWeakRetained(v4 + 2);
    objc_storeWeak((v9 + 16), v13);
  }

  *(v9 + 10) = self->_isFocusRemovalRequest;
  if (self->_allowsDeferral)
  {
    v14 = [v4 allowsDeferral];
  }

  else
  {
    v14 = 0;
  }

  [v9 setAllowsDeferral:v14];
  if (self->_scrollIfNecessary)
  {
    v15 = 1;
  }

  else
  {
    v15 = [v4 shouldScrollIfNecessary];
  }

  [v9 setScrollIfNecessary:v15];
  if (self->_shouldPlayFocusSound)
  {
    v16 = 1;
  }

  else
  {
    v16 = [v4 shouldPlayFocusSound];
  }

  [v9 setShouldPlayFocusSound:v16];
  if (self->_allowsFocusingCurrentItem)
  {
    v17 = 1;
  }

  else
  {
    v17 = [v4 allowsFocusingCurrentItem];
  }

  [v9 setAllowsFocusingCurrentItem:v17];
  if (self->_resetsUpdateThrottle)
  {
    v18 = 1;
  }

  else
  {
    v18 = [v4 resetsUpdateThrottle];
  }

  [v9 setResetsUpdateThrottle:v18];

  return v9;
}

- (BOOL)isValidInFocusSystem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateRequest.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  if (WeakRetained && ([(_UIFocusUpdateRequest *)self focusSystem], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v5))
  {
    v9 = [UIFocusSystem focusSystemForEnvironment:WeakRetained];
    v8 = v9 == v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end