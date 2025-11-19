@interface _UIViewServiceClientViewControllerMaterializer
- (id)initWithSessionManager:(void *)a3 requestedViewControllerClass:(void *)a4 contextToken:(__CFString *)a5 outError:;
- (id)materializedViewControllerOfClassName:(void *)a1 withError:(void *)a2;
- (void)prepareViewControllerExtensionContext;
@end

@implementation _UIViewServiceClientViewControllerMaterializer

- (id)initWithSessionManager:(void *)a3 requestedViewControllerClass:(void *)a4 contextToken:(__CFString *)a5 outError:
{
  v102[1] = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (a1)
  {
    v88.receiver = a1;
    v88.super_class = _UIViewServiceClientViewControllerMaterializer;
    v13 = objc_msgSendSuper2(&v88, sel_init);
    a1 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      if (a1[5])
      {
        v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_serviceViewController"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v84 = NSStringFromSelector(sel_materializeClientViewControllerWithError_);
          v85 = objc_opt_class();
          v86 = NSStringFromClass(v85);
          *buf = 138544642;
          *&buf[4] = v84;
          v91 = 2114;
          v92 = v86;
          v93 = 2048;
          v94 = a1;
          v95 = 2114;
          v96 = @"_UIViewServiceClientViewControllerMaterializer.m";
          v97 = 1024;
          v98 = 57;
          v99 = 2114;
          v100 = v83;
          _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v83 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x189EF4BFCLL);
      }

      v14 = [a1[1] requiresExtensionContext];
      if (a1[3])
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        v16 = 0;
        v18 = 0;
        v17 = 0;
      }

      else
      {
        v18 = [MEMORY[0x1E696B0F8] _sharedExtensionContextVendor];
        v19 = [v18 _extensionContextForUUID:a1[3]];
        if (v19)
        {
          v17 = v19;
          v16 = 0;
        }

        else
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to find extensionContext for contextToken: %@. This is indicative of a host issue, where it may have crashed or invalidated the connection before the view service request completed.", a1[3]];
          v21 = MEMORY[0x1E696ABC0];
          v22 = *MEMORY[0x1E696A250];
          v101 = @"Unable to find NSExtensionContext";
          v102[0] = v20;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:&v101 count:1];
          v16 = [v21 errorWithDomain:v22 code:967225 userInfo:v23];

          v24 = *(__UILogGetCategoryCachedImpl("ViewServices", &_MergedGlobals_1275) + 8);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v16;
            _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Rejecting view controller creation request due to missing context for token: %{public}@", buf, 0xCu);
          }

          v25 = v16;

          v17 = 0;
        }
      }

      v26 = v16;
      v27 = a1[4];
      a1[4] = v17;

      if (v26)
      {
        goto LABEL_58;
      }

      v89 = 0;
      v28 = [a1[1] viewControllerClassName];
      v29 = [a1[1] mainStoryboardName];
      [a1[1] isExtensionService];
      [a1[1] requiresExtensionContext];
      if (a1[4] || [a1[1] isExtensionService] && (objc_msgSend(a1[1], "requiresExtensionContext") & 1) == 0)
      {
        if ((v28 == 0) == (v29 == 0))
        {
          if (v28 | v29)
          {
            v33 = @"Either NSExtensionMainStoryboard or NSExtensionPrincipalClass must be specified in the extension's Info.plist file but not both.";
          }

          else
          {
            v33 = @"Either NSExtensionMainStoryboard or NSExtensionPrincipalClass must be specified in the extension's Info.plist";
          }

          v34 = MEMORY[0x1E696ABC0];
          v35 = *MEMORY[0x1E696A250];
          v101 = @"Invalid Configuration";
          v102[0] = v33;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:&v101 count:1];
          v37 = [v34 errorWithDomain:v35 code:967223 userInfo:v36];

          v38 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED4A0898) + 8);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v37;
            _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "Rejecting view controller creation request due to invalid extension storyboard or principal class: %{public}@", buf, 0xCu);
          }

          v39 = v37;
          v89 = v37;

          v32 = 0;
        }

        else if (v29)
        {
          v30 = [MEMORY[0x1E696AAE8] mainBundle];
          v31 = [UIStoryboard storyboardWithName:v29 bundle:v30];

          v32 = [v31 instantiateInitialViewController];
        }

        else
        {
          v32 = [_UIViewServiceClientViewControllerMaterializer materializedViewControllerOfClassName:v28 withError:&v89];
        }
      }

      else
      {
        v32 = 0;
      }

      v26 = v89;
      v40 = a1[5];
      a1[5] = v32;

      if (v26)
      {
        goto LABEL_58;
      }

      v41 = a1[5];
      if (v41)
      {
        goto LABEL_32;
      }

      v48 = a1[2];
      v101 = 0;
      v49 = v48;
      if (v49)
      {
        v50 = [MEMORY[0x1E696AAE8] mainBundle];
        v51 = [v50 objectForInfoDictionaryKey:@"UIViewServicePermittedViewControllerClasses"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (([v51 containsObject:v49] & 1) == 0)
          {
            v52 = MEMORY[0x1E696AEC0];
            v53 = _UIMainBundleIdentifier();
            v54 = [v52 stringWithFormat:@"Refusing request for view controller of class %@ not included in UIViewServicePermittedViewControllerClasses array in View Service bundle %@'s Info.plist", v49, v53];

            v55 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED4A08A8) + 8);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v54;
              _os_log_impl(&dword_188A29000, v55, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            v56 = MEMORY[0x1E696ABC0];
            v57 = *MEMORY[0x1E696A250];
            v102[0] = @"Class Not Permitted";
            *buf = v54;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v102 count:1];
            v58 = v87 = v54;
            v59 = [v56 errorWithDomain:v57 code:967224 userInfo:v58];

            v60 = v59;
            v101 = v59;

LABEL_53:
            v71 = 0;
LABEL_57:

            v26 = v101;
            v75 = a1[5];
            a1[5] = v71;

            if (v26)
            {
              goto LABEL_58;
            }

            v41 = a1[5];
            if (!v41)
            {
              v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_serviceViewController"];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v80 = NSStringFromSelector(sel_materializeClientViewControllerWithError_);
                v81 = objc_opt_class();
                v82 = NSStringFromClass(v81);
                *buf = 138544642;
                *&buf[4] = v80;
                v91 = 2114;
                v92 = v82;
                v93 = 2048;
                v94 = a1;
                v95 = 2114;
                v96 = @"_UIViewServiceClientViewControllerMaterializer.m";
                v97 = 1024;
                v98 = 84;
                v99 = 2114;
                v100 = v79;
                _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
              }

              [v79 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x189EF4B04);
            }

LABEL_32:
            [a1[1] didCreateServiceViewController:v41 contextToken:a1[3]];
            v42 = a1[5];
            v102[0] = 0;
            v43 = v42;
            v44 = [a1[1] containingViewControllerClassName];
            v45 = v44;
            if (v44)
            {
              v46 = [_UIViewServiceClientViewControllerMaterializer materializedViewControllerOfClassName:v44 withError:v102];
              if (v46)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  *buf = v43;
                  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
                  [v46 setViewControllers:v47];
                }

                else
                {
                  [v43 willMoveToParentViewController:v46];
                  [v46 addChildViewController:v43];
                }

                v61 = v46;
              }
            }

            else
            {
              v46 = 0;
            }

            v26 = v102[0];
            v62 = a1[6];
            a1[6] = v46;

            if (!v26)
            {
              v63 = a1[6];
              if (!v63)
              {
                v63 = a1[5];
              }

              v64 = v63;
              v26 = 0;
              goto LABEL_61;
            }

LABEL_58:
            if (a5)
            {
              v76 = v26;
              v64 = 0;
              *a5 = v26;
            }

            else
            {
              v64 = 0;
            }

LABEL_61:

            v77 = a1[7];
            a1[7] = v64;

            goto LABEL_62;
          }
        }

        else
        {
          v72 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED4A08B0) + 8);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v73 = v72;
            v74 = _UIMainBundleIdentifier();
            *buf = 138412546;
            *&buf[4] = v74;
            v91 = 2112;
            v92 = v49;
            _os_log_impl(&dword_188A29000, v73, OS_LOG_TYPE_ERROR, "No UIViewServicePermittedViewControllerClasses array in View Service bundle %@'s Info.plist. Cannot check validity of request for class %@. This will become failure in a future build.", buf, 0x16u);
          }
        }

        v71 = [_UIViewServiceClientViewControllerMaterializer materializedViewControllerOfClassName:v49 withError:&v101];
        goto LABEL_57;
      }

      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No viewControllerClassName was provided for app bundle view service"];
      v65 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED4A08A0) + 8);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v51;
        _os_log_impl(&dword_188A29000, v65, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v66 = MEMORY[0x1E696ABC0];
      v67 = *MEMORY[0x1E696A250];
      v102[0] = @"Class Not Provided";
      *buf = v51;
      v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v102 count:1];
      v69 = [v66 errorWithDomain:v67 code:967220 userInfo:v68];

      v70 = v69;
      v101 = v69;

      goto LABEL_53;
    }
  }

LABEL_62:

  return a1;
}

- (void)prepareViewControllerExtensionContext
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!*(a1 + 40))
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can not prepare extension context for failed view controller materialization"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v3 = NSStringFromSelector(sel_prepareViewControllerExtensionContext);
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        *buf = 138544642;
        v8 = v3;
        v9 = 2114;
        v10 = v5;
        v11 = 2048;
        v12 = a1;
        v13 = 2114;
        v14 = @"_UIViewServiceClientViewControllerMaterializer.m";
        v15 = 1024;
        v16 = 104;
        v17 = 2114;
        v18 = v2;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v2 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189EF4DC8);
    }

    if (*(a1 + 32))
    {
      v6 = [MEMORY[0x1E696B0F8] _sharedExtensionContextVendor];
      [v6 _setPrincipalObject:*(a1 + 40) forUUID:*(a1 + 24)];
      [*(a1 + 56) beginRequestWithExtensionContext:*(a1 + 32)];
    }
  }
}

- (id)materializedViewControllerOfClassName:(void *)a1 withError:(void *)a2
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSClassFromString(v3);
  if (v4)
  {
    v5 = v4;
    if (([(objc_class *)v4 isSubclassOfClass:objc_opt_class()]& 1) != 0)
    {
      v6 = objc_alloc_init(v5);
      goto LABEL_12;
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A250];
    v20 = @"Class Not UIViewController subclass";
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Service Side Class %@ not UIViewControllerSubclass", v3];
    v21 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v11 = [v14 errorWithDomain:v15 code:967221 userInfo:v17];

    v12 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED4A08C0) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v11;
      v13 = "Rejecting view controller creation request as specified class is not a view controller subclass: %{public}@";
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v24 = @"Class Not Found";
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"View Controller Class %@ not found service side", v3];
    v25[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v11 = [v7 errorWithDomain:v8 code:967220 userInfo:v10];

    v12 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED4A08B8) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v11;
      v13 = "Rejecting view controller creation request as view controller class is not present: %{public}@";
LABEL_8:
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
    }
  }

  if (a2)
  {
    v18 = v11;
    *a2 = v11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

@end