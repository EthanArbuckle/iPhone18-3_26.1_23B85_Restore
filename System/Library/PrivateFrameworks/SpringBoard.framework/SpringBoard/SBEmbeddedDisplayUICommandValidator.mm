@interface SBEmbeddedDisplayUICommandValidator
- (BOOL)validateCommand:(id)a3;
- (SBEmbeddedDisplayUICommandValidator)initWithLayoutStateProvider:(id)a3;
@end

@implementation SBEmbeddedDisplayUICommandValidator

- (SBEmbeddedDisplayUICommandValidator)initWithLayoutStateProvider:(id)a3
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SBEmbeddedDisplayUICommandValidator;
  v7 = [(SBEmbeddedDisplayUICommandValidator *)&v10 init];
  v8 = v7;
  if (v7)
  {
    if (!v6)
    {
      [(SBEmbeddedDisplayUICommandValidator *)a2 initWithLayoutStateProvider:v7];
    }

    objc_storeStrong(&v7->_layoutStateProvider, a3);
  }

  return v8;
}

- (BOOL)validateCommand:(id)a3
{
  v4 = a3;
  if ([v4 action] == sel__handleToggleFloatingAppVisibilityKeyShortcut_)
  {
    v6 = [(SBSceneLayoutStateProvider *)self->_layoutStateProvider layoutState];
    v7 = [v6 elementWithRole:3];
    v8 = @"SHOW_SLIDE_OVER_DISCOVERABILITY";
    if (v7 && !SBFloatingConfigurationIsStashed([v6 floatingConfiguration]))
    {
      v8 = @"HIDE_SLIDE_OVER_DISCOVERABILITY";
    }

    v9 = MEMORY[0x277CCA8D8];
    v10 = v8;
    v11 = [v9 mainBundle];
    v12 = [v11 localizedStringForKey:v10 value:&stru_283094718 table:@"SpringBoard"];

    [v4 setDiscoverabilityTitle:v12];
    goto LABEL_9;
  }

  if ([v4 action] == sel__handleMoveToOtherDisplayKeyShortcut_)
  {
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v6 localizedStringForKey:@"MOVE_TO_OTHER_DISPLAY_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
    [v4 setTitle:v11];
LABEL_9:

    v5 = 1;
    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (void)initWithLayoutStateProvider:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"layoutStateProvider != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBUICommandValidating.m";
    v16 = 1024;
    v17 = 25;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end