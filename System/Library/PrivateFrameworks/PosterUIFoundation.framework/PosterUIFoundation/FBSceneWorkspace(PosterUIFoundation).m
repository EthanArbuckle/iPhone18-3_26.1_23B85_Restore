@interface FBSceneWorkspace(PosterUIFoundation)
+ (id)pui_posterBoardUIServicesModalWorkspace;
+ (id)pui_posterKitComplicationsWorkspace;
+ (id)pui_posterKitExternallyHostedContentWorkspace;
+ (id)pui_posterWorkspace;
- (id)pui_createScene:()PosterUIFoundation;
@end

@implementation FBSceneWorkspace(PosterUIFoundation)

+ (id)pui_posterWorkspace
{
  if (pui_posterWorkspace_onceToken != -1)
  {
    +[FBSceneWorkspace(PosterUIFoundation) pui_posterWorkspace];
  }

  v1 = pui_posterWorkspace___PosterWorkspace;

  return v1;
}

+ (id)pui_posterKitComplicationsWorkspace
{
  if (pui_posterKitComplicationsWorkspace_onceToken != -1)
  {
    +[FBSceneWorkspace(PosterUIFoundation) pui_posterKitComplicationsWorkspace];
  }

  v1 = pui_posterKitComplicationsWorkspace___PosterWorkspace;

  return v1;
}

+ (id)pui_posterKitExternallyHostedContentWorkspace
{
  if (pui_posterKitExternallyHostedContentWorkspace_onceToken != -1)
  {
    +[FBSceneWorkspace(PosterUIFoundation) pui_posterKitExternallyHostedContentWorkspace];
  }

  v1 = pui_posterKitExternallyHostedContentWorkspace___PosterWorkspace;

  return v1;
}

+ (id)pui_posterBoardUIServicesModalWorkspace
{
  if (pui_posterBoardUIServicesModalWorkspace_onceToken != -1)
  {
    +[FBSceneWorkspace(PosterUIFoundation) pui_posterBoardUIServicesModalWorkspace];
  }

  v1 = pui_posterBoardUIServicesModalWorkspace___PosterWorkspace;

  return v1;
}

- (id)pui_createScene:()PosterUIFoundation
{
  v5 = a3;
  v6 = objc_alloc_init(PUISceneConfiguration);
  v5[2](v5, v6);
  if (![(PUISceneConfiguration *)v6 isValid])
  {
    [(FBSceneWorkspace(PosterUIFoundation) *)a2 pui_createScene:a1];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__FBSceneWorkspace_PosterUIFoundation__pui_createScene___block_invoke;
  v10[3] = &unk_1E78544D0;
  v11 = v6;
  v7 = v6;
  v8 = [a1 createScene:v10];

  return v8;
}

- (void)pui_createScene:()PosterUIFoundation .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[configuration isValid]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    v15 = @"FBSceneWorkspace+PosterUIFoundation.m";
    v16 = 1024;
    v17 = 69;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end