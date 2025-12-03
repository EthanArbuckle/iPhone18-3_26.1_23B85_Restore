@interface FBSScene(PosterUIFoundation)
- (PUIPosterSnapshotCaptureController)pui_captureController;
- (id)pui_forwardKeyboardFocusToClientScene:()PosterUIFoundation;
- (uint64_t)pui_sceneIsReadyToSnapshot:()PosterUIFoundation;
@end

@implementation FBSScene(PosterUIFoundation)

- (PUIPosterSnapshotCaptureController)pui_captureController
{
  BSDispatchQueueAssertMain();
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = [[PUIPosterSnapshotCaptureController alloc] initWithFBSScene:self];
    objc_setAssociatedObject(self, a2, v4, 0x301);
  }

  return v4;
}

- (id)pui_forwardKeyboardFocusToClientScene:()PosterUIFoundation
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    clientHandle = PUILogCommon();
    if (os_log_type_enabled(clientHandle, OS_LOG_TYPE_ERROR))
    {
      [FBSScene(PosterUIFoundation) pui_forwardKeyboardFocusToClientScene:];
    }

    goto LABEL_7;
  }

  if (PFCurrentDeviceClass() == 2)
  {
    clientHandle = PUILogCommon();
    if (os_log_type_enabled(clientHandle, OS_LOG_TYPE_ERROR))
    {
      [FBSScene(PosterUIFoundation) pui_forwardKeyboardFocusToClientScene:];
    }

LABEL_7:
    v6 = 0;
    goto LABEL_18;
  }

  clientHandle = [v4 clientHandle];
  identityToken = [v4 identityToken];
  stringRepresentation = [identityToken stringRepresentation];

  identityToken2 = [self identityToken];
  stringRepresentation2 = [identityToken2 stringRepresentation];

  if (clientHandle && stringRepresentation && stringRepresentation2)
  {
    v11 = [MEMORY[0x1E698E3A0] tokenForString:stringRepresentation2];
    v12 = objc_opt_new();
    keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    [v12 setEnvironment:keyboardFocusEnvironment];

    v14 = v12;
    v29 = v11;
    [v12 setToken:v11];
    v15 = objc_opt_new();
    processHandle = [clientHandle processHandle];
    v17 = [processHandle pid];

    [v15 setPid:v17];
    v18 = [MEMORY[0x1E698E3A0] tokenForString:stringRepresentation];
    [v15 setToken:v18];

    v19 = PUILogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544386;
      v31 = v21;
      v32 = 2050;
      selfCopy = self;
      v34 = 2114;
      v35 = stringRepresentation2;
      v36 = 2114;
      v37 = stringRepresentation;
      v38 = 1026;
      v39 = v17;
      _os_log_impl(&dword_1A8C85000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@-%{public}p: host scene %{public}@ deferring keyboard events to client %{public}@ with PID: %{public}d", buf, 0x30u);
    }

    mEMORY[0x1E698E3B0] = [MEMORY[0x1E698E3B0] sharedInstance];
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v23 stringWithFormat:@"%@-%p deferring to hosted scene", v25, self];
    v6 = [mEMORY[0x1E698E3B0] deferEventsMatchingPredicate:v14 toTarget:v15 withReason:v26];

    v27 = v29;
  }

  else
  {
    v27 = PUILogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [FBSScene(PosterUIFoundation) pui_forwardKeyboardFocusToClientScene:];
    }

    v6 = 0;
  }

LABEL_18:

  return v6;
}

- (uint64_t)pui_sceneIsReadyToSnapshot:()PosterUIFoundation
{
  BSDispatchQueueAssertMain();
  clientSettings = [self clientSettings];
  layers = [clientSettings layers];

  if ([layers count] >= 2)
  {
    clientSettings2 = [self clientSettings];
    pui_inExtendedRenderSession = [clientSettings2 pui_inExtendedRenderSession];

    if (!pui_inExtendedRenderSession)
    {
      v10 = 1;
      goto LABEL_8;
    }

    v7 = @"is in extended render session";
  }

  else
  {
    v7 = @"no content";
  }

  v10 = 0;
  if (a3)
  {
    *a3 = v7;
  }

LABEL_8:

  return v10;
}

- (void)pui_forwardKeyboardFocusToClientScene:()PosterUIFoundation .cold.1()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)pui_forwardKeyboardFocusToClientScene:()PosterUIFoundation .cold.2()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Au);
}

- (void)pui_forwardKeyboardFocusToClientScene:()PosterUIFoundation .cold.3()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end