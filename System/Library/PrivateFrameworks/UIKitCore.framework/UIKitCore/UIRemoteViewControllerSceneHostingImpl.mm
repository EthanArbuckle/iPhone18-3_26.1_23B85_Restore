@interface UIRemoteViewControllerSceneHostingImpl
@end

@implementation UIRemoteViewControllerSceneHostingImpl

void __189___UIRemoteViewControllerSceneHostingImpl__requestViewController_traitCollection_fromServiceWithBundleIdentifier_service_connectionHandler_newRemoteViewController_remoteViewControllerImpl___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 6);
    *(WeakRetained + 6) = 0;
    v9 = WeakRetained;

    v4 = v9[5];
    v9[5] = 0;

    v5 = *(__UILogGetCategoryCachedImpl("ViewServices", &cancelRequest___s_category) + 8);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    v2 = v9;
    if (v6)
    {
      v7 = v5;
      v8 = [v9 succinctDescription];
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Invoking cancellation for %{public}@", buf, 0xCu);

      v2 = v9;
    }
  }
}

void __75___UIRemoteViewControllerSceneHostingImpl_callConnectionHandlerWithSuccess__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

void __82___UIRemoteViewControllerSceneHostingImpl_configureAuxiliaryConnectionIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  if (v2)
  {
    v4 = *(v2 + 40);
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  v5 = [v6 identityToken];
  [v3 encodeObject:v5 forKey:0x1EFB82510];
}

void __76___UIRemoteViewControllerSceneHostingImpl_configureAppProtectionIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3)
  {
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 setAPExtension:v6];

  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[4];
  }

  v8 = v7;
  [v4 setLocalizedName:v8];

  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = v9[3];
  }

  v10 = v9;
  [v4 setAppIconBundleIdentifier:v10];

  v12 = [*(a1 + 40) _owningRemoteViewController];
  v11 = [v12 view];
  [v4 setShieldParentView:v11];
}

void __82___UIRemoteViewControllerSceneHostingImpl_supportedInterfaceOrientationsDidUpdate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _owningRemoteViewController];
  [v1 setNeedsUpdateOfSupportedInterfaceOrientations];
}

void __53___UIRemoteViewControllerSceneHostingImpl_disconnect__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(__UILogGetCategoryCachedImpl("ViewServices", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_15) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 succinctDescription];
    *buf = 138543362;
    v10 = v7;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Disconnect invoked for %{public}@", buf, 0xCu);
  }

  objc_copyWeak(&v8, (a1 + 40));
  BSDispatchMain();
  objc_destroyWeak(&v8);
}

void __53___UIRemoteViewControllerSceneHostingImpl_disconnect__block_invoke_42(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] invalidate];
    WeakRetained = v2;
  }
}

void __85___UIRemoteViewControllerSceneHostingImpl__viewServiceHostSessionDidConnectToClient___block_invoke(uint64_t a1)
{
  v89 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_24;
  }

  obj = WeakRetained;
  v2 = [(_UIViewServiceHostSession *)WeakRetained[3] sceneSynchronizer];
  v3 = [v2 processHandle];

  if (!v3)
  {
    v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"processHandle"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v64 = NSStringFromSelector(sel_setupSceneHostingController);
      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      *buf = 138544642;
      *&buf[4] = v64;
      *&buf[12] = 2114;
      *&buf[14] = v66;
      *&buf[22] = 2048;
      v83 = obj;
      *v84 = 2114;
      *&v84[2] = @"_UIRemoteViewControllerSceneHostingImpl.m";
      v85 = 1024;
      v86 = 109;
      v87 = 2114;
      v88 = v63;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v63 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189D8197CLL);
  }

  if (obj[1])
  {
    v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_sceneHostingController"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v68 = NSStringFromSelector(sel_setupSceneHostingController);
      v69 = objc_opt_class();
      v70 = NSStringFromClass(v69);
      *buf = 138544642;
      *&buf[4] = v68;
      *&buf[12] = 2114;
      *&buf[14] = v70;
      *&buf[22] = 2048;
      v83 = obj;
      *v84 = 2114;
      *&v84[2] = @"_UIRemoteViewControllerSceneHostingImpl.m";
      v85 = 1024;
      v86 = 110;
      v87 = 2114;
      v88 = v67;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v67 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189D81A78);
  }

  v4 = [_UISceneHostingControllerAdvancedConfiguration alloc];
  v5 = MEMORY[0x1E699FBD8];
  v6 = [v3 identity];
  v7 = [v5 identityForManagedEndpointOfProcessIdentity:v6];
  v8 = [(_UISceneHostingControllerAdvancedConfiguration *)v4 initWithClientIdentity:v7];

  v9 = +[(FBSSceneSpecification *)_UIViewServiceSceneSpecification];
  [(_UISceneHostingControllerAdvancedConfiguration *)v8 setSceneSpecification:v9];

  v10 = [[_UISceneHostingController alloc] initWithAdvancedConfiguration:v8];
  v11 = obj[1];
  obj[1] = v10;

  v12 = *(__UILogGetCategoryCachedImpl("ViewServices", &_MergedGlobals_1234) + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = obj;
    v15 = v12;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v13 stringWithFormat:@"<%@: %p>", v17, v14];

    v19 = obj[1];
    v20 = v18;
    if (v19)
    {
      v21 = *(v19 + 40);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = [v22 identityToken];
    *buf = 138543618;
    *&buf[4] = v18;
    *&buf[12] = 2114;
    *&buf[14] = v23;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Created scene %{public}@", buf, 0x16u);
  }

  [obj[1] setDelegate:?];
  if (obj[7])
  {
    v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_auxiliaryConnection"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v72 = NSStringFromSelector(sel_configureAuxiliaryConnectionIfNecessary);
      v73 = objc_opt_class();
      v74 = NSStringFromClass(v73);
      *buf = 138544642;
      *&buf[4] = v72;
      *&buf[12] = 2114;
      *&buf[14] = v74;
      *&buf[22] = 2048;
      v83 = obj;
      *v84 = 2114;
      *&v84[2] = @"_UIRemoteViewControllerSceneHostingImpl.m";
      v85 = 1024;
      v86 = 178;
      v87 = 2114;
      v88 = v71;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v71 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189D81B78);
  }

  v24 = [obj _owningRemoteViewController];
  v25 = objc_opt_class();

  v26 = [v25 serviceViewControllerInterface];
  if (v26)
  {
  }

  else
  {
    v27 = [v25 exportedInterface];

    if (!v27)
    {
      v60 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED49FC30) + 8);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v60;
        v62 = [obj succinctDescription];
        *buf = 138543362;
        *&buf[4] = v62;
        _os_log_impl(&dword_188A29000, v61, OS_LOG_TYPE_DEFAULT, "No auxiliary connection required for %{public}@", buf, 0xCu);
      }

      goto LABEL_15;
    }
  }

  v28 = obj[3];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __82___UIRemoteViewControllerSceneHostingImpl_configureAuxiliaryConnectionIfNecessary__block_invoke;
  v83 = &unk_1E711AAE8;
  *v84 = obj;
  v29 = [(_UIViewServiceHostSession *)v28 connectionWithClientContextBuilder:buf replyHandler:0];
  v30 = obj[7];
  obj[7] = v29;

  v31 = [_UIRemoteViewControllerWeakWrapperProxy alloc];
  v32 = [obj _owningRemoteViewController];
  v33 = [(_UIRemoteViewControllerWeakWrapperProxy *)v31 initWithTarget:v32];

  [obj[7] setExportedObject:v33];
  v34 = obj[7];
  v35 = [v25 exportedInterface];
  [v34 setExportedInterface:v35];

  v36 = obj[7];
  v37 = [v25 serviceViewControllerInterface];
  [v36 setRemoteObjectInterface:v37];

  [obj[7] activate];
  v38 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED49FC28) + 8);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v38;
    v40 = [obj succinctDescription];
    v41 = [v25 exportedInterface];
    v42 = [v25 serviceViewControllerInterface];
    *v76 = 138543874;
    v77 = v40;
    v78 = 2114;
    v79 = v41;
    v80 = 2114;
    v81 = v42;
    _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_DEFAULT, "Configured auxiliary connection for %{public}@ with exported interface %{public}@, remote object interface %{public}@", v76, 0x20u);
  }

LABEL_15:
  v43 = objc_loadWeakRetained(obj + 9);
  v44 = [obj[1] sceneViewController];
  [v43 addChildViewController:v44];

  v45 = [obj[1] _viewServiceComponent];
  objc_storeWeak(obj + 2, v45);

  v46 = objc_loadWeakRetained(obj + 2);
  [(_UIViewServiceHostSceneComponent *)v46 setServiceViewControllerClassName:?];

  v47 = objc_loadWeakRetained(obj + 2);
  v48 = [obj[10] contextToken];
  [(_UIViewServiceHostSceneComponent *)v47 setContextToken:v48];

  v49 = objc_loadWeakRetained(obj + 2);
  v50 = v49;
  if (v49)
  {
    objc_storeWeak(v49 + 5, obj);
  }

  v51 = objc_loadWeakRetained(obj + 9);
  v52 = [v51 serviceBundleIdentifier];
  v53 = [v52 isEqualToString:@"com.apple.sidecar.extension.display"];

  if (v53)
  {
    v54 = obj[1];
    if (v54)
    {
      v54 = v54[5];
    }

    v55 = v54;
    [(FBScene *)v55 setUi_clientInheritsCoreMediaApplicationStateFromHostPID:?];
  }

  v56 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED49FC20) + 8);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v57 = v56;
    v58 = [obj succinctDescription];
    *buf = 138543362;
    *&buf[4] = v58;
    _os_log_impl(&dword_188A29000, v57, OS_LOG_TYPE_DEFAULT, "Activating scene for %{public}@", buf, 0xCu);
  }

  v59 = objc_loadWeakRetained(obj + 2);
  [(_UIViewServiceHostSceneComponent *)v59 activateOnMainDisplayWithClientProcessHandle:v3];

  WeakRetained = obj;
LABEL_24:
}

void __90___UIRemoteViewControllerSceneHostingImpl__viewServiceHostSessionDidInvalidate_withError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(_UIRemoteViewControllerSceneHostingImpl *)WeakRetained callConnectionHandlerWithError:?];
}

void __69___UIRemoteViewControllerSceneHostingImpl_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 8);
  if (v2)
  {
    v2 = v2[5];
  }

  v6 = v2;
  v3 = [v6 identityToken];
  v4 = [v3 stringRepresentation];
  v5 = [v1 appendObject:v4 withName:@"identityToken"];
}

@end