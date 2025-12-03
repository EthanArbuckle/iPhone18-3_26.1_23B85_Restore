@interface UIViewController(PosterBoardUIServices)
- (PRUISMutablePosterSnapshotRequest)pruis_snapshotRequestForDefinition:()PosterBoardUIServices interfaceOrientation:bounds:screen:posterContents:;
@end

@implementation UIViewController(PosterBoardUIServices)

- (PRUISMutablePosterSnapshotRequest)pruis_snapshotRequestForDefinition:()PosterBoardUIServices interfaceOrientation:bounds:screen:posterContents:
{
  v19 = a3;
  _screen = a5;
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
    view = [self view];
    [view bounds];
    a7 = v24;
    a8 = v25;
    a9 = v26;
    a10 = v27;
  }

  if (!_screen)
  {
    view2 = [self view];
    _screen = [view2 _screen];
  }

  mainConfiguration = [MEMORY[0x1E699FAC0] pui_displayConfigurationForScreen:_screen];
  if (!mainConfiguration)
  {
    mainConfiguration = [MEMORY[0x1E699F7A8] mainConfiguration];
  }

  v42.origin.x = a7;
  v42.origin.y = a8;
  v42.size.width = a9;
  v42.size.height = a10;
  if (CGRectEqualToRect(v42, *MEMORY[0x1E695F058]))
  {
    if (_screen)
    {
      v30 = _screen;
    }

    else
    {
      v30 = mainConfiguration;
    }

    [v30 bounds];
    a7 = v31;
    a8 = v32;
    a9 = v33;
    a10 = v34;
  }

  traitCollection = [self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v37 = [(PRUISPosterSnapshotDescriptor *)[PRUISMutablePosterSnapshotDescriptor alloc] initWithUserInterfaceStyle:userInterfaceStyle interfaceOrientation:a4 snapshotDefinition:v19];
  [(PRUISMutablePosterSnapshotDescriptor *)v37 setDisplayConfiguration:mainConfiguration];
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