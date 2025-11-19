@interface UIApplicationSceneConnectionHandler
@end

@implementation UIApplicationSceneConnectionHandler

void _UIApplicationSceneConnectionHandler_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = v4;
    if ([UIApp isFrontBoard])
    {
      v9 = [UIApp disablesFrontBoardImplicitWindowScenes];
    }

    else
    {
      v9 = 0;
    }

    if ([UIApp _appAdoptsUISceneLifecycle])
    {
      v10 = 0;
    }

    else
    {
      v11 = [UIApp _defaultSceneIfExists];
      v12 = [v8 _FBSScene];
      v10 = [v11 isEqual:v12];
    }

    v13 = [(UIScene *)_UIPlaceholderWindowScene _scenesIncludingInternal:1];
    v14 = v13;
    if (v10 && [v13 count] && v9 & 1 | ((objc_msgSend(UIApp, "isFrontBoard") & 1) == 0))
    {
      v48 = v5;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v47 = v14;
      obj = v14;
      v51 = [obj countByEnumeratingWithState:&v62 objects:v81 count:16];
      v15 = 0;
      if (v51)
      {
        v50 = *v63;
        do
        {
          v16 = 0;
          do
          {
            if (*v63 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v62 + 1) + 8 * v16);
            v55 = [v17 screen];
            v18 = *(__UILogGetCategoryCachedImpl("ApplicationLifecycle", &qword_1ED49CBE0) + 8);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v18;
              v20 = objc_opt_class();
              Name = class_getName(v20);
              v22 = [v55 _isMainScreen];
              v23 = [v55 _isMainLikeScreen];
              v24 = objc_opt_class();
              v25 = class_getName(v24);
              *buf = 136447746;
              v68 = Name;
              v69 = 2050;
              v70 = v17;
              v71 = 2050;
              v72 = v55;
              v73 = 1024;
              v74 = v22;
              v75 = 1024;
              v76 = v23;
              v77 = 2082;
              v78 = v25;
              v79 = 2050;
              v80 = v8;
              _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "Migrating windows from placeholder scene: %{public}s: %{public}p; screen: %{public}p, isMain: %d, isMainLike: %d; to connecting default scene: %{public}s: %{public}p;", buf, 0x40u);
            }

            v26 = [(UIWindowScene *)v17 _keyWindow];
            v27 = v26;
            v53 = v16;
            if (!v15 && v26)
            {
              v15 = v26;
            }

            v52 = v27;
            v54 = v15;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v28 = [v17 _allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
            v29 = [v28 countByEnumeratingWithState:&v58 objects:v66 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v59;
              do
              {
                v32 = 0;
                do
                {
                  if (*v59 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v58 + 1) + 8 * v32);
                  v34 = [(UIWindow *)v33 _fbsScene];
                  v35 = [v33 _uiWindowSceneFromFBSScene:v34];

                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = _UIApplicationSceneConnectionHandler_block_invoke_2;
                  block[3] = &unk_1E70F35B8;
                  block[4] = v33;
                  v57 = v35;
                  v36 = qword_1ED49CBE8;
                  v37 = v35;
                  if (v36 != -1)
                  {
                    dispatch_once(&qword_1ED49CBE8, block);
                  }

                  if (v37)
                  {
                    v38 = v37;
                  }

                  else
                  {
                    v38 = v8;
                  }

                  [v33 setWindowScene:v38];

                  ++v32;
                }

                while (v30 != v32);
                v30 = [v28 countByEnumeratingWithState:&v58 objects:v66 count:16];
              }

              while (v30);
            }

            v15 = v54;
            v16 = v53 + 1;
          }

          while (v53 + 1 != v51);
          v51 = [obj countByEnumeratingWithState:&v62 objects:v81 count:16];
        }

        while (v51);
      }

      v39 = [v8 statusBarManager];
      [v39 updateStatusBarAppearance];

      v5 = v48;
      v14 = v47;
      if (v15)
      {
        v40 = [v15 windowScene];
        v41 = [(UIWindowScene *)v40 _keyWindow];

        if (!v41)
        {
          v42 = *(__UILogGetCategoryCachedImpl("KeyWindow", &unk_1ED49CBF0) + 8);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = v42;
            v44 = objc_opt_class();
            v45 = class_getName(v44);
            *buf = 136446466;
            v68 = v45;
            v69 = 2050;
            v70 = v15;
            _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_DEFAULT, "Migrating key window from placeholder scene to connecting default scene: %{public}s: %{public}p", buf, 0x16u);
          }

          [(UIWindow *)v15 _makeKeyWindowIgnoringOldKeyWindow:1 transferringScenes:?];
        }
      }
    }

    if (_MergedGlobals_1024)
    {
      [_MergedGlobals_1024 invalidate];
      v46 = _MergedGlobals_1024;
      _MergedGlobals_1024 = 0;
    }
  }
}

void _UIApplicationSceneConnectionHandler_block_invoke_2(uint64_t a1)
{
  if (dyld_program_sdk_at_least())
  {
    v2 = [*(a1 + 32) windowScene];
    if (v2 == *(a1 + 40))
    {
    }

    else
    {
      v5 = v2;
      v3 = [UIApp _hasCalledRunWithMainScene];

      if (v3)
      {
        v4 = *(__UILogGetCategoryCachedImpl("ApplicationLifecycle", &_UIApplicationSceneConnectionHandler_block_invoke_2___s_category) + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "UIWindows were created prior to initial application activation. This may result in incorrect visual appearance.", buf, 2u);
        }
      }
    }
  }
}

@end