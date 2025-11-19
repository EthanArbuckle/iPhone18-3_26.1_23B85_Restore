@interface PRSFocusPosterSnapshotRequest
- (PRSFocusPosterSnapshotRequest)init;
- (PRSFocusPosterSnapshotRequest)initWithFocusModeUUID:(id)a3 configurationType:(int64_t)a4 variant:(int64_t)a5 options:(unint64_t)a6 imageScaleRelativeToScreen:(double)a7 orientation:(int64_t)a8 maxCount:(unint64_t)a9;
- (PRSFocusPosterSnapshotRequest)initWithPosterRequest:(id)a3;
@end

@implementation PRSFocusPosterSnapshotRequest

- (PRSFocusPosterSnapshotRequest)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Please use the designated initializer"];
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
    v16 = @"PRSPosterSnapshotRequest.m";
    v17 = 1024;
    v18 = 434;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1C26FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (PRSFocusPosterSnapshotRequest)initWithFocusModeUUID:(id)a3 configurationType:(int64_t)a4 variant:(int64_t)a5 options:(unint64_t)a6 imageScaleRelativeToScreen:(double)a7 orientation:(int64_t)a8 maxCount:(unint64_t)a9
{
  v17 = a3;
  if (v17)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSFocusPosterSnapshotRequest initWithFocusModeUUID:a2 configurationType:? variant:? options:? imageScaleRelativeToScreen:? orientation:? maxCount:?];
    }
  }

  if ((a4 - 2) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    [PRSFocusPosterSnapshotRequest initWithFocusModeUUID:a2 configurationType:? variant:? options:? imageScaleRelativeToScreen:? orientation:? maxCount:?];
  }

  if ((a5 - 2) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    [PRSFocusPosterSnapshotRequest initWithFocusModeUUID:a2 configurationType:? variant:? options:? imageScaleRelativeToScreen:? orientation:? maxCount:?];
  }

  if (!a9)
  {
    [PRSFocusPosterSnapshotRequest initWithFocusModeUUID:a2 configurationType:? variant:? options:? imageScaleRelativeToScreen:? orientation:? maxCount:?];
  }

  v23.receiver = self;
  v23.super_class = PRSFocusPosterSnapshotRequest;
  v18 = [(PRSFocusPosterSnapshotRequest *)&v23 init];
  if (v18)
  {
    v19 = [v17 copy];
    focusModeUUID = v18->_focusModeUUID;
    v18->_focusModeUUID = v19;

    v18->_configurationType = a4;
    v18->_variant = a5;
    v21 = 0.333333343;
    if (a7 > 0.0)
    {
      v21 = a7;
    }

    v18->_imageScaleRelativeToScreen = v21;
    v18->_orientation = a8;
    v18->_options = a6;
    v18->_maxCount = a9;
  }

  return v18;
}

- (PRSFocusPosterSnapshotRequest)initWithPosterRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 requestOptions];
  v6 = [v5 objectForKey:@"PRSPosterSnapshotRequestOptionFocusUUID"];
  v7 = [v6 UUIDString];

  v8 = [v4 requestOptions];
  v9 = [v8 objectForKey:@"PRSPosterSnapshotRequestOptionLegacyConfigurationType"];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v4 requestOptions];
  v12 = [v11 objectForKey:@"PRSPosterSnapshotRequestOptionLegacyVariant"];
  v13 = [v12 unsignedIntegerValue];

  v14 = [v4 requestOptions];
  v15 = [v14 objectForKey:@"PRSPosterSnapshotRequestOptionOptionsEnum"];
  v16 = [v15 unsignedIntegerValue];

  v17 = [v4 requestOptions];
  v18 = [v17 objectForKey:@"PRSPosterSnapshotRequestOptionLegacyImageScaleRelativeToScreen"];
  [v18 doubleValue];
  v20 = v19;

  v21 = [v4 requestOptions];
  v22 = [v21 objectForKey:@"PRSPosterSnapshotRequestOptionLegacyMaxCount"];
  v23 = [v22 unsignedIntegerValue];

  v24 = [v4 orientation];
  v25 = [(PRSFocusPosterSnapshotRequest *)self initWithFocusModeUUID:v7 configurationType:v10 variant:v13 options:v16 imageScaleRelativeToScreen:v24 orientation:v23 maxCount:v20];

  return v25;
}

- (void)initWithFocusModeUUID:(char *)a1 configurationType:variant:options:imageScaleRelativeToScreen:orientation:maxCount:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithFocusModeUUID:(char *)a1 configurationType:variant:options:imageScaleRelativeToScreen:orientation:maxCount:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"maxCount > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithFocusModeUUID:(char *)a1 configurationType:variant:options:imageScaleRelativeToScreen:orientation:maxCount:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"variant >= PRSPosterSnapshotRequestVariantNone && variant <= PRSPosterSnapshotRequestVariantHomeScreen", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithFocusModeUUID:(char *)a1 configurationType:variant:options:imageScaleRelativeToScreen:orientation:maxCount:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"configurationType >= PRSPosterSnapshotRequestConfigurationTypeNone && configurationType <= PRSPosterSnapshotRequestConfigurationTypeActive", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end