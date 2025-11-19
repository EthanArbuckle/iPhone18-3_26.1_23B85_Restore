@interface _UIViewServiceRootViewController
- (id)valueForKey:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)installMaterializedViewControllerInHierarchy;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)setMaterializedViewController:(id *)a1;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation _UIViewServiceRootViewController

- (void)setMaterializedViewController:(id *)a1
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    if (a1[124])
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_materializedViewController"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(sel_setMaterializedViewController_);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138544642;
        v28 = v20;
        v29 = 2114;
        v30 = v22;
        v31 = 2048;
        v32 = a1;
        v33 = 2114;
        v34 = @"_UIViewServiceRootViewController.m";
        v35 = 1024;
        v36 = 26;
        v37 = 2114;
        v38 = v19;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v19 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18A2624E8);
    }

    v5 = [a1 childViewControllers];
    v6 = [v5 count];

    if (v6)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"self.childViewControllers.count == 0"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(sel_setMaterializedViewController_);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v28 = v24;
        v29 = 2114;
        v30 = v26;
        v31 = 2048;
        v32 = a1;
        v33 = 2114;
        v34 = @"_UIViewServiceRootViewController.m";
        v35 = 1024;
        v36 = 27;
        v37 = 2114;
        v38 = v23;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v23 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18A2625E0);
    }

    objc_storeStrong(a1 + 124, a2);
    v7 = *(__UILogGetCategoryCachedImpl("ViewServices", &setMaterializedViewController____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = a1;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v8 stringWithFormat:@"<%@: %p>", v11, v9];

      v13 = v12;
      v14 = v4;
      if (v14)
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = [v15 stringWithFormat:@"<%@: %p>", v17, v14];
      }

      else
      {
        v18 = @"(nil)";
      }

      *buf = 138543618;
      v28 = v13;
      v29 = 2114;
      v30 = v18;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Set materialized view controller: %{public}@", buf, 0x16u);
    }
  }
}

- (void)installMaterializedViewControllerInHierarchy
{
  v63 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 _window];

    if (!v2)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"self._window"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromSelector(sel_installMaterializedViewControllerInHierarchy);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138544642;
        v52 = v32;
        v53 = 2114;
        v54 = v34;
        v55 = 2048;
        v56 = a1;
        v57 = 2114;
        v58 = @"_UIViewServiceRootViewController.m";
        v59 = 1024;
        v60 = 33;
        v61 = 2114;
        v62 = v31;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v31 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18A262AD4);
    }

    if (!a1[124])
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_materializedViewController"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v36 = NSStringFromSelector(sel_installMaterializedViewControllerInHierarchy);
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138544642;
        v52 = v36;
        v53 = 2114;
        v54 = v38;
        v55 = 2048;
        v56 = a1;
        v57 = 2114;
        v58 = @"_UIViewServiceRootViewController.m";
        v59 = 1024;
        v60 = 34;
        v61 = 2114;
        v62 = v35;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v35 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18A262BCCLL);
    }

    v3 = [a1 childViewControllers];
    v4 = [v3 count];

    if (v4)
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"self.childViewControllers.count == 0"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v40 = NSStringFromSelector(sel_installMaterializedViewControllerInHierarchy);
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        *buf = 138544642;
        v52 = v40;
        v53 = 2114;
        v54 = v42;
        v55 = 2048;
        v56 = a1;
        v57 = 2114;
        v58 = @"_UIViewServiceRootViewController.m";
        v59 = 1024;
        v60 = 35;
        v61 = 2114;
        v62 = v39;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v39 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18A262CC4);
    }

    v5 = [a1 _window];
    v6 = [v5 _rootPresentationController];
    [v6 setDelegate:a1];

    [a1[124] willMoveToParentViewController:a1];
    [a1 addChildViewController:a1[124]];
    v7 = [a1 view];
    v8 = [a1[124] view];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addSubview:v8];
    v43 = MEMORY[0x1E69977A0];
    v47 = [v8 topAnchor];
    v46 = [v7 topAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v50[0] = v45;
    v44 = [v8 leadingAnchor];
    v9 = [v7 leadingAnchor];
    v10 = [v44 constraintEqualToAnchor:v9];
    v50[1] = v10;
    v11 = [v8 trailingAnchor];
    v12 = [v7 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v50[2] = v13;
    v48 = v8;
    v14 = [v8 bottomAnchor];
    v49 = v7;
    v15 = [v7 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v50[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
    [v43 activateConstraints:v17];

    [a1[124] didMoveToParentViewController:a1];
    [a1 setNeedsUpdateOfSupportedInterfaceOrientations];
    v18 = *(__UILogGetCategoryCachedImpl("ViewServices", &installMaterializedViewControllerInHierarchy___s_category) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = a1;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [v19 stringWithFormat:@"<%@: %p>", v22, v20];

      v24 = v23;
      v25 = v20[124];
      if (v25)
      {
        v26 = MEMORY[0x1E696AEC0];
        v27 = v25;
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = [v26 stringWithFormat:@"<%@: %p>", v29, v27];
      }

      else
      {
        v30 = @"(nil)";
      }

      *buf = 138543618;
      v52 = v24;
      v53 = 2114;
      v54 = v30;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Installed materialized view controller in hierarchy: %{public}@", buf, 0x16u);
    }
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  [a3 preferredContentSize];
  v5 = v4;
  v7 = v6;
  v8 = [(UIViewController *)self _hostedWindowScene];
  [v8 _setPreferredContentSize:{v5, v7}];

  [(UIViewController *)self setPreferredContentSize:v5, v7];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = _UIViewServiceRootViewController;
  [(UIViewController *)&v8 viewDidAppear:a3];
  v4 = [(UIViewController *)self _window];
  v5 = [v4 windowScene];
  v6 = [v5 _FBSScene];
  v7 = [v6 _viewServiceComponent];
  [(_UIViewServiceClientSceneComponent *)v7 setClientViewControllerIsReady:?];
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"_hostBundleID"] && (dyld_program_sdk_at_least() & 1) == 0 && (_UIMainBundleIdentifier(), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"com.tencent.xin.sharetimeline"), v5, (v6 & 1) != 0))
  {
    v7 = @"abusing.internal.api.is.a.bad.idea";
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIViewServiceRootViewController;
    v7 = [(_UIViewServiceRootViewController *)&v9 valueForKey:v4];
  }

  return v7;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78___UIViewServiceRootViewController_presentationControllerDidAttemptToDismiss___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    if (qword_1ED4A2610 != -1)
    {
      dispatch_once(&qword_1ED4A2610, block);
    }

    [(UIViewController *)self->_materializedViewController presentationControllerDidAttemptToDismiss:_MergedGlobals_1353];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  result = [(UIViewController *)self->_materializedViewController supportedInterfaceOrientations];
  if (!result)
  {
    return 30;
  }

  return result;
}

@end