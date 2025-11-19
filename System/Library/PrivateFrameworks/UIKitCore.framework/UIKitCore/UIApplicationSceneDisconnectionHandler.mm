@interface UIApplicationSceneDisconnectionHandler
@end

@implementation UIApplicationSceneDisconnectionHandler

void _UIApplicationSceneDisconnectionHandler_block_invoke_3(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = v2;
    if (([UIApp _appAdoptsUISceneLifecycle] & 1) == 0)
    {
      v6 = [UIApp _defaultSceneIfExists];
      v7 = [v5 _FBSScene];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        if (([UIApp isFrontBoard] & 1) == 0)
        {
          v9 = [(UIWindowScene *)v5 _keyWindow];
          v10 = [v5 screen];
          v11 = [v5 screen];
          v12 = [UIWindowScene _placeholderWindowSceneForScreen:v11 create:1];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v31 = [MEMORY[0x1E696AAA8] currentHandler];
            v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIApplicationSceneDisconnectionHandler_block_invoke_3"];
            [v31 handleFailureInFunction:v32 file:@"_UISceneConnectionActions.m" lineNumber:141 description:{@"Unexpected class for placeholder scene: %@", v12}];
          }

          v13 = v12;
          v14 = [(_UIScreenBasedWindowScene *)v13 _preventAutoInvalidationForReason:?];
          objc_storeStrong(&_MergedGlobals_1024, v14);
          v15 = *(__UILogGetCategoryCachedImpl("ApplicationLifecycle", &qword_1ED49CBF8) + 8);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
            v17 = objc_opt_class();
            Name = class_getName(v17);
            v19 = objc_opt_class();
            *buf = 136447746;
            v39 = Name;
            v40 = 2050;
            v41 = v5;
            v42 = 2082;
            v43 = class_getName(v19);
            v44 = 2050;
            v45 = v13;
            v46 = 2050;
            v47 = v10;
            v48 = 1024;
            v49 = [v10 _isMainScreen];
            v50 = 1024;
            v51 = [v10 _isMainLikeScreen];
            _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "Migrating windows from disconnecting default scene: %{public}s: %{public}p; to placeholder scene: %{public}s: %{public}p; screen: %{public}p, isMain: %d, isMainLike: %d", buf, 0x40u);
          }

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v20 = [v5 _allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
          v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v34;
            do
            {
              v24 = 0;
              do
              {
                if (*v34 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                [*(*(&v33 + 1) + 8 * v24++) setWindowScene:v13];
              }

              while (v22 != v24);
              v22 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
            }

            while (v22);
          }

          if (v9)
          {
            v25 = [(UIWindowScene *)v13 _keyWindow];
            v26 = [v9 windowScene];

            if (!v25 && v26 == v13)
            {
              v27 = *(__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49CC00) + 8);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = v27;
                v29 = objc_opt_class();
                v30 = class_getName(v29);
                *buf = 136446466;
                v39 = v30;
                v40 = 2050;
                v41 = v9;
                _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_DEFAULT, "Migrating key window from disconnecting default scene to placeholder scene: %{public}s: %{public}p", buf, 0x16u);
              }

              [(UIWindow *)v9 _makeKeyWindowIgnoringOldKeyWindow:1 transferringScenes:?];
            }
          }
        }
      }
    }
  }
}

@end