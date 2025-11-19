@interface _UIApplicationDisplayConfigurationResolver
+ (id)sharedResolver;
- (_UIApplicationDisplayConfigurationResolver)init;
- (id)_init;
- (id)displayConfigurationForContextID:(unsigned int)a3;
- (void)dealloc;
- (void)displayConfigurationChanged:(id)a3;
- (void)requestDisplayConfiguration:(id)a3 forContextID:(unsigned int)a4;
@end

@implementation _UIApplicationDisplayConfigurationResolver

+ (id)sharedResolver
{
  objc_opt_self();
  if (qword_1ED49FC60 != -1)
  {
    dispatch_once(&qword_1ED49FC60, &__block_literal_global_451);
  }

  v0 = _MergedGlobals_1237;

  return v0;
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = _UIApplicationDisplayConfigurationResolver;
  v2 = [(_UIApplicationDisplayConfigurationResolver *)&v5 init];
  if (v2)
  {
    UISSetDisplayConfigurationDataSource();
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_displayConfigurationChanged_ name:@"_UIScreenDisplayConfigurationUpdatedNotification" object:0];
  }

  return v2;
}

- (_UIApplicationDisplayConfigurationResolver)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init not allowed on %@", objc_opt_class()];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"_UIApplicationDisplayConfigurationResolver.m";
    v17 = 1024;
    v18 = 31;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_UIScreenDisplayConfigurationUpdatedNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIApplicationDisplayConfigurationResolver;
  [(_UIApplicationDisplayConfigurationResolver *)&v4 dealloc];
}

- (void)displayConfigurationChanged:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 object];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74___UIApplicationDisplayConfigurationResolver_displayConfigurationChanged___block_invoke;
    v13[3] = &unk_1E711AE08;
    v14 = v7;
    v9 = v8;
    v15 = v9;
    [UIScene _enumerateAllWindowsIncludingInternalWindows:1 onlyVisibleWindows:0 asCopy:0 withBlock:v13];
    if ([v9 count])
    {
      v16 = *MEMORY[0x1E69DECF8];
      v10 = [v9 copy];
      v17[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 postNotificationName:*MEMORY[0x1E69DECD0] object:0 userInfo:v11];
    }
  }
}

- (id)displayConfigurationForContextID:(unsigned int)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [UIWindow _windowWithContextId:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _windowHostingScene];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 _screen];
      v9 = [v8 displayConfiguration];
    }

    else
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIApplicationDisplayConfigurationResolver", &qword_1ED49FC70);
      if (*CategoryCachedImpl)
      {
        v14 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = 67109120;
          v16 = a3;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Display configuration requested for context whose window is not in a scene. contextID: %i", &v15, 8u);
        }
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = __UILogGetCategoryCachedImpl("UIApplicationDisplayConfigurationResolver", &qword_1ED49FC68);
    if (*v10)
    {
      v13 = *(v10 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 67109120;
        v16 = a3;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Display configuration requested for unknown context id: %i", &v15, 8u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (void)requestDisplayConfiguration:(id)a3 forContextID:(unsigned int)a4
{
  v4 = *&a4;
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [UIWindow _windowWithContextId:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 _windowHostingScene];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 _FBSScene];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __87___UIApplicationDisplayConfigurationResolver_requestDisplayConfiguration_forContextID___block_invoke;
      v15[3] = &unk_1E70F44D8;
      v16 = v5;
      [v10 updateUIClientSettingsWithBlock:v15];
    }

    else
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIApplicationDisplayConfigurationResolver", &qword_1ED49FC80);
      if (*CategoryCachedImpl)
      {
        v14 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v18 = v5;
          v19 = 1024;
          v20 = v4;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Display configuration %@ requested for context whose window is not in a scene. contextID: %i", buf, 0x12u);
        }
      }
    }
  }

  else
  {
    v11 = __UILogGetCategoryCachedImpl("UIApplicationDisplayConfigurationResolver", &qword_1ED49FC78);
    if (*v11)
    {
      v12 = *(v11 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = v5;
        v19 = 1024;
        v20 = v4;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Display configuration %@ requested for unknown context id: %i", buf, 0x12u);
      }
    }
  }
}

@end