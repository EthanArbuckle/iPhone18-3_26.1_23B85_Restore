@interface CSProminentLayoutController(PRUtilities)
+ (double)pr_calculateAdaptiveTimeHeightForInterfaceOrientation:()PRUtilities titleStyleConfiguration:salientContentRect:;
+ (double)pr_defaultSalientContentRectForBounds:()PRUtilities interfaceOrientation:;
+ (id)sharedLayoutController;
@end

@implementation CSProminentLayoutController(PRUtilities)

+ (double)pr_defaultSalientContentRectForBounds:()PRUtilities interfaceOrientation:
{
  if (!BSInterfaceOrientationIsLandscape() || a4 >= a5)
  {
    BSInterfaceOrientationIsPortrait();
  }

  [self pr_defaultDateTimeRectForInterfaceOrientation:a7];
  CGRectGetMinY(v12);
  return 0.0;
}

+ (id)sharedLayoutController
{
  if (sharedLayoutController_onceToken != -1)
  {
    +[CSProminentLayoutController(PRUtilities) sharedLayoutController];
  }

  v1 = sharedLayoutController_sharedLayoutController;

  return v1;
}

+ (double)pr_calculateAdaptiveTimeHeightForInterfaceOrientation:()PRUtilities titleStyleConfiguration:salientContentRect:
{
  v15 = a4;
  if (!v15)
  {
    [CSProminentLayoutController(PRUtilities) pr_calculateAdaptiveTimeHeightForInterfaceOrientation:a2 titleStyleConfiguration:? salientContentRect:?];
  }

  if (!a3)
  {
    [CSProminentLayoutController(PRUtilities) pr_calculateAdaptiveTimeHeightForInterfaceOrientation:a2 titleStyleConfiguration:? salientContentRect:?];
  }

  v16 = v15;
  v37 = a8;
  sharedLayoutController = [self sharedLayoutController];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  if ((a3 > 2 || v26 >= v24) && (a3 - 3 > 1 || v26 <= v24))
  {
    v27 = v26;
    v26 = v24;
  }

  else
  {
    v27 = v24;
  }

  [sharedLayoutController frameForElements:1 variant:0 withBoundingRect:{v20, v22, v26, v27}];
  MinY = CGRectGetMinY(v38);
  [sharedLayoutController frameForElements:1 variant:1 withBoundingRect:{v20, v22, v26, v27}];
  MaxY = CGRectGetMaxY(v39);
  [v16 preferredTimeMaxYForOrientation:a3];
  v31 = v30;
  if (PUICGRectIsValidSalientContentRectangle())
  {
    v40.origin.x = a5;
    v40.origin.y = a6;
    v40.size.width = a7;
    v40.size.height = v37;
    v32 = CGRectGetMinY(v40);
  }

  else
  {
    v32 = v27 * v31;
  }

  v33 = vabdd_f64(MaxY, MinY);
  v34 = v32 - MinY;
  if (v33 >= v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = v34;
  }

  return v35;
}

+ (void)pr_calculateAdaptiveTimeHeightForInterfaceOrientation:()PRUtilities titleStyleConfiguration:salientContentRect:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"interfaceOrientation != UIInterfaceOrientationUnknown"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"PRUtilities.m";
    v9 = 1024;
    v10 = 265;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pr_calculateAdaptiveTimeHeightForInterfaceOrientation:()PRUtilities titleStyleConfiguration:salientContentRect:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"titleStyleConfiguration"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"PRUtilities.m";
    v9 = 1024;
    v10 = 264;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end