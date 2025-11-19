@interface UIViewController(PosterBoardUIServices)
- (PRUISMutablePosterSnapshotRequest)pruis_snapshotRequestForDefinition:()PosterBoardUIServices interfaceOrientation:bounds:screen:posterContents:;
@end

@implementation UIViewController(PosterBoardUIServices)

- (PRUISMutablePosterSnapshotRequest)pruis_snapshotRequestForDefinition:()PosterBoardUIServices interfaceOrientation:bounds:screen:posterContents:
{
  v19 = a3;
  v20 = a5;
  v21 = a6;
  if (!v19)
  {
    [UIViewController(PosterBoardUIServices) pruis_snapshotRequestForDefinition:a2 interfaceOrientation:? bounds:? screen:? posterContents:?];
  }

  v22 = v21;
  if (!v21)
  {
    [UIViewController(PosterBoardUIServices) pruis_snapshotRequestForDefinition:a2 interfaceOrientation:? bounds:? screen:? posterContents:?];
  }

  v41.origin.x = a7;
  v41.origin.y = a8;
  v41.size.width = a9;
  v41.size.height = a10;
  if (CGRectEqualToRect(v41, *MEMORY[0x1E695F050]))
  {
    v23 = [a1 view];
    [v23 bounds];
    a7 = v24;
    a8 = v25;
    a9 = v26;
    a10 = v27;
  }

  if (!v20)
  {
    v28 = [a1 view];
    v20 = [v28 _screen];
  }

  v29 = [MEMORY[0x1E699FAC0] pui_displayConfigurationForScreen:v20];
  if (!v29)
  {
    v29 = [MEMORY[0x1E699F7A8] mainConfiguration];
  }

  v42.origin.x = a7;
  v42.origin.y = a8;
  v42.size.width = a9;
  v42.size.height = a10;
  if (CGRectEqualToRect(v42, *MEMORY[0x1E695F058]))
  {
    if (v20)
    {
      v30 = v20;
    }

    else
    {
      v30 = v29;
    }

    [v30 bounds];
    a7 = v31;
    a8 = v32;
    a9 = v33;
    a10 = v34;
  }

  v35 = [a1 traitCollection];
  v36 = [v35 userInterfaceStyle];

  v37 = [(PRUISPosterSnapshotDescriptor *)[PRUISMutablePosterSnapshotDescriptor alloc] initWithUserInterfaceStyle:v36 interfaceOrientation:a4 snapshotDefinition:v19];
  [(PRUISMutablePosterSnapshotDescriptor *)v37 setDisplayConfiguration:v29];
  [(PRUISMutablePosterSnapshotDescriptor *)v37 setCanvasBounds:a7, a8, a9, a10];
  v38 = [(PRUISPosterSnapshotRequest *)[PRUISMutablePosterSnapshotRequest alloc] initWithPoster:v22 snapshotDescriptor:v37];

  return v38;
}

- (void)pruis_snapshotRequestForDefinition:()PosterBoardUIServices interfaceOrientation:bounds:screen:posterContents:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"posterContents"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"UIViewController+PosterBoardUIServices.m";
    v9 = 1024;
    v10 = 28;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pruis_snapshotRequestForDefinition:()PosterBoardUIServices interfaceOrientation:bounds:screen:posterContents:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"snapshotDefinition"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"UIViewController+PosterBoardUIServices.m";
    v9 = 1024;
    v10 = 27;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end