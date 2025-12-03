@interface _UIViewServiceRootViewController
- (id)valueForKey:(id)key;
- (unint64_t)supportedInterfaceOrientations;
- (void)installMaterializedViewControllerInHierarchy;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)setMaterializedViewController:(id *)controller;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation _UIViewServiceRootViewController

- (void)setMaterializedViewController:(id *)controller
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (controller)
  {
    if (controller[124])
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
        controllerCopy2 = controller;
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

    childViewControllers = [controller childViewControllers];
    v6 = [childViewControllers count];

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
        controllerCopy2 = controller;
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

    objc_storeStrong(controller + 124, a2);
    v7 = *(__UILogGetCategoryCachedImpl("ViewServices", &setMaterializedViewController____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x1E696AEC0];
      controllerCopy3 = controller;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      controllerCopy3 = [v8 stringWithFormat:@"<%@: %p>", v11, controllerCopy3];

      v13 = controllerCopy3;
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
  if (self)
  {
    _window = [self _window];

    if (!_window)
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
        selfCopy3 = self;
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

    if (!self[124])
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
        selfCopy3 = self;
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

    childViewControllers = [self childViewControllers];
    v4 = [childViewControllers count];

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
        selfCopy3 = self;
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

    _window2 = [self _window];
    _rootPresentationController = [_window2 _rootPresentationController];
    [_rootPresentationController setDelegate:self];

    [self[124] willMoveToParentViewController:self];
    [self addChildViewController:self[124]];
    view = [self view];
    view2 = [self[124] view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [view addSubview:view2];
    v43 = MEMORY[0x1E69977A0];
    topAnchor = [view2 topAnchor];
    topAnchor2 = [view topAnchor];
    v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v50[0] = v45;
    leadingAnchor = [view2 leadingAnchor];
    leadingAnchor2 = [view leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v50[1] = v10;
    trailingAnchor = [view2 trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v50[2] = v13;
    v48 = view2;
    bottomAnchor = [view2 bottomAnchor];
    v49 = view;
    bottomAnchor2 = [view bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v50[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
    [v43 activateConstraints:v17];

    [self[124] didMoveToParentViewController:self];
    [self setNeedsUpdateOfSupportedInterfaceOrientations];
    v18 = *(__UILogGetCategoryCachedImpl("ViewServices", &installMaterializedViewControllerInHierarchy___s_category) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = MEMORY[0x1E696AEC0];
      selfCopy4 = self;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      selfCopy4 = [v19 stringWithFormat:@"<%@: %p>", v22, selfCopy4];

      v24 = selfCopy4;
      v25 = selfCopy4[124];
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  [container preferredContentSize];
  v5 = v4;
  v7 = v6;
  _hostedWindowScene = [(UIViewController *)self _hostedWindowScene];
  [_hostedWindowScene _setPreferredContentSize:{v5, v7}];

  [(UIViewController *)self setPreferredContentSize:v5, v7];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = _UIViewServiceRootViewController;
  [(UIViewController *)&v8 viewDidAppear:appear];
  _window = [(UIViewController *)self _window];
  windowScene = [_window windowScene];
  _FBSScene = [windowScene _FBSScene];
  _viewServiceComponent = [_FBSScene _viewServiceComponent];
  [(_UIViewServiceClientSceneComponent *)_viewServiceComponent setClientViewControllerIsReady:?];
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"_hostBundleID"] && (dyld_program_sdk_at_least() & 1) == 0 && (_UIMainBundleIdentifier(), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"com.tencent.xin.sharetimeline"), v5, (v6 & 1) != 0))
  {
    v7 = @"abusing.internal.api.is.a.bad.idea";
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIViewServiceRootViewController;
    v7 = [(_UIViewServiceRootViewController *)&v9 valueForKey:keyCopy];
  }

  return v7;
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
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