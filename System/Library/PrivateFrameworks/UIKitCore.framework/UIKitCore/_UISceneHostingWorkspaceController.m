@interface _UISceneHostingWorkspaceController
+ (id)sharedInstance;
- (NSString)debugDescription;
- (_UISceneHostingWorkspaceController)init;
- (id)succinctDescription;
- (void)appendDescriptionToStream:(id)a3;
- (void)workspace:(id)a3 didAddScene:(id)a4;
- (void)workspace:(id)a3 willRemoveScene:(id)a4;
@end

@implementation _UISceneHostingWorkspaceController

+ (id)sharedInstance
{
  BSDispatchQueueAssertMain();
  if (qword_1ED49C858 != -1)
  {
    dispatch_once(&qword_1ED49C858, &__block_literal_global_35);
  }

  v2 = _MergedGlobals_992;

  return v2;
}

- (_UISceneHostingWorkspaceController)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on _UISceneHostingWorkspaceController"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"_UISceneHostingWorkspaceController.m";
    v17 = 1024;
    v18 = 44;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)workspace:(id)a3 didAddScene:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneHosting", &workspace_didAddScene____s_category);
  if (*CategoryCachedImpl)
  {
    v9 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412802;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = self;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Workspace %@ didAddScene:%@ (self: %@)", &v10, 0x20u);
    }
  }
}

- (void)workspace:(id)a3 willRemoveScene:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneHosting", &workspace_willRemoveScene____s_category);
  if (*CategoryCachedImpl)
  {
    v9 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412802;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = self;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Workspace %@ willRemoveScene:%@ (self: %@)", &v10, 0x20u);
    }
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64___UISceneHostingWorkspaceController_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = v4;
  v12 = v5;
  v13 = self;
  [v5 appendProem:self block:v11];
  v6 = [v5 style];
  v7 = [v6 verbosity];

  if (v7 != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64___UISceneHostingWorkspaceController_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    v10 = self;
    [v9 appendBodySectionWithName:@"workspace" block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

@end