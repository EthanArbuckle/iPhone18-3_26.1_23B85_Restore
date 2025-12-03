@interface WFSystemSurfaceWorkflowStatusRegistry
- (BOOL)setStatus:(unint64_t)status forSystemSurface:(unint64_t)surface;
- (BOOL)setStatusForShareSheetWorkflows:(unint64_t)workflows;
- (WFSystemSurfaceWorkflowStatusRegistry)init;
- (unint64_t)statusForShareSheetWorkflows;
- (unint64_t)statusForSystemSurface:(unint64_t)surface;
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

- (BOOL)setStatusForShareSheetWorkflows:(unint64_t)workflows
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v5 = WFCanAccessUserDefaultsDomain(&v11);
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    shortcutsUserDefaults = [(WFSystemSurfaceWorkflowStatusRegistry *)self shortcutsUserDefaults];
    [shortcutsUserDefaults setBool:workflows == 2 forKey:@"ShareSheetShortcutsPresent"];
LABEL_6:

    goto LABEL_7;
  }

  if (v6)
  {
    shortcutsUserDefaults = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(shortcutsUserDefaults, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "[WFSystemSurfaceWorkflowStatusRegistry setStatusForShareSheetWorkflows:]";
      v14 = 2114;
      v15 = @"com.apple.siri.shortcuts";
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B1DE3000, shortcutsUserDefaults, OS_LOG_TYPE_ERROR, "%s Failed to check whether or not we have access to %{public}@: %{public}@", buf, 0x20u);
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
    shortcutsUserDefaults = [(WFSystemSurfaceWorkflowStatusRegistry *)self shortcutsUserDefaults];
    v7 = [shortcutsUserDefaults BOOLForKey:@"ShareSheetShortcutsPresent"];

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

- (BOOL)setStatus:(unint64_t)status forSystemSurface:(unint64_t)surface
{
  if (status - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSystemSurfaceWorkflowStatusRegistry.m" lineNumber:75 description:@"Provide a concrete status"];

    if (surface)
    {
      return 0;
    }
  }

  else if (surface)
  {
    return 0;
  }

  return [(WFSystemSurfaceWorkflowStatusRegistry *)self setStatusForShareSheetWorkflows:status];
}

- (unint64_t)statusForSystemSurface:(unint64_t)surface
{
  if (surface)
  {
    return 0;
  }

  else
  {
    return [(WFSystemSurfaceWorkflowStatusRegistry *)self statusForShareSheetWorkflows];
  }
}

@end