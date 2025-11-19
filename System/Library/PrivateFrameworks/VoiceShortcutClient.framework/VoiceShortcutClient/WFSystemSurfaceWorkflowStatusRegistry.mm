@interface WFSystemSurfaceWorkflowStatusRegistry
- (BOOL)setStatus:(unint64_t)a3 forSystemSurface:(unint64_t)a4;
- (BOOL)setStatusForShareSheetWorkflows:(unint64_t)a3;
- (WFSystemSurfaceWorkflowStatusRegistry)init;
- (unint64_t)statusForShareSheetWorkflows;
- (unint64_t)statusForSystemSurface:(unint64_t)a3;
@end

@implementation WFSystemSurfaceWorkflowStatusRegistry

- (WFSystemSurfaceWorkflowStatusRegistry)init
{
  v7.receiver = self;
  v7.super_class = WFSystemSurfaceWorkflowStatusRegistry;
  v2 = [(WFSystemSurfaceWorkflowStatusRegistry *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.shortcuts"];
    shortcutsUserDefaults = v2->_shortcutsUserDefaults;
    v2->_shortcutsUserDefaults = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)setStatusForShareSheetWorkflows:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v5 = WFCanAccessUserDefaultsDomain(&v11);
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = [(WFSystemSurfaceWorkflowStatusRegistry *)self shortcutsUserDefaults];
    [v8 setBool:a3 == 2 forKey:@"ShareSheetShortcutsPresent"];
LABEL_6:

    goto LABEL_7;
  }

  if (v6)
  {
    v8 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "[WFSystemSurfaceWorkflowStatusRegistry setStatusForShareSheetWorkflows:]";
      v14 = 2114;
      v15 = @"com.apple.siri.shortcuts";
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B1DE3000, v8, OS_LOG_TYPE_ERROR, "%s Failed to check whether or not we have access to %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_6;
  }

LABEL_7:

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)statusForShareSheetWorkflows
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v3 = WFCanAccessUserDefaultsDomain(&v12);
  v4 = v12;
  v5 = v4;
  if (v3)
  {
    v6 = [(WFSystemSurfaceWorkflowStatusRegistry *)self shortcutsUserDefaults];
    v7 = [v6 BOOLForKey:@"ShareSheetShortcutsPresent"];

    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    if (v4)
    {
      v9 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v14 = "[WFSystemSurfaceWorkflowStatusRegistry statusForShareSheetWorkflows]";
        v15 = 2114;
        v16 = @"com.apple.siri.shortcuts";
        v17 = 2114;
        v18 = v5;
        _os_log_impl(&dword_1B1DE3000, v9, OS_LOG_TYPE_ERROR, "%s Failed to check whether or not we have access to %{public}@: %{public}@", buf, 0x20u);
      }
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)setStatus:(unint64_t)a3 forSystemSurface:(unint64_t)a4
{
  if (a3 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFSystemSurfaceWorkflowStatusRegistry.m" lineNumber:75 description:@"Provide a concrete status"];

    if (a4)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  return [(WFSystemSurfaceWorkflowStatusRegistry *)self setStatusForShareSheetWorkflows:a3];
}

- (unint64_t)statusForSystemSurface:(unint64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return [(WFSystemSurfaceWorkflowStatusRegistry *)self statusForShareSheetWorkflows];
  }
}

@end