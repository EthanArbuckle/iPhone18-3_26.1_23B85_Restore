@interface _UIApplicationDisplayConfigurationResolver
+ (id)sharedResolver;
- (_UIApplicationDisplayConfigurationResolver)init;
- (id)_init;
- (id)displayConfigurationForContextID:(unsigned int)d;
- (void)dealloc;
- (void)displayConfigurationChanged:(id)changed;
- (void)requestDisplayConfiguration:(id)configuration forContextID:(unsigned int)d;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_displayConfigurationChanged_ name:@"_UIScreenDisplayConfigurationUpdatedNotification" object:0];
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
    selfCopy = self;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIScreenDisplayConfigurationUpdatedNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIApplicationDisplayConfigurationResolver;
  [(_UIApplicationDisplayConfigurationResolver *)&v4 dealloc];
}

- (void)displayConfigurationChanged:(id)changed
{
  v17[1] = *MEMORY[0x1E69E9840];
  object = [changed object];
  v4 = objc_opt_class();
  v5 = object;
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

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:*MEMORY[0x1E69DECD0] object:0 userInfo:v11];
    }
  }
}

- (id)displayConfigurationForContextID:(unsigned int)d
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [UIWindow _windowWithContextId:?];
  v5 = v4;
  if (v4)
  {
    _windowHostingScene = [v4 _windowHostingScene];
    v7 = _windowHostingScene;
    if (_windowHostingScene)
    {
      _screen = [_windowHostingScene _screen];
      displayConfiguration = [_screen displayConfiguration];
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
          dCopy2 = d;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Display configuration requested for context whose window is not in a scene. contextID: %i", &v15, 8u);
        }
      }

      displayConfiguration = 0;
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
        dCopy2 = d;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Display configuration requested for unknown context id: %i", &v15, 8u);
      }
    }

    displayConfiguration = 0;
  }

  return displayConfiguration;
}

- (void)requestDisplayConfiguration:(id)configuration forContextID:(unsigned int)d
{
  v4 = *&d;
  v21 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v6 = [UIWindow _windowWithContextId:v4];
  v7 = v6;
  if (v6)
  {
    _windowHostingScene = [v6 _windowHostingScene];
    v9 = _windowHostingScene;
    if (_windowHostingScene)
    {
      _FBSScene = [_windowHostingScene _FBSScene];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __87___UIApplicationDisplayConfigurationResolver_requestDisplayConfiguration_forContextID___block_invoke;
      v15[3] = &unk_1E70F44D8;
      v16 = configurationCopy;
      [_FBSScene updateUIClientSettingsWithBlock:v15];
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
          v18 = configurationCopy;
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
        v18 = configurationCopy;
        v19 = 1024;
        v20 = v4;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Display configuration %@ requested for unknown context id: %i", buf, 0x12u);
      }
    }
  }
}

@end