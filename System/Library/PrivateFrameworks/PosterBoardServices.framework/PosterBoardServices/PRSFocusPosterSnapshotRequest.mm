@interface PRSFocusPosterSnapshotRequest
- (PRSFocusPosterSnapshotRequest)init;
- (PRSFocusPosterSnapshotRequest)initWithFocusModeUUID:(id)d configurationType:(int64_t)type variant:(int64_t)variant options:(unint64_t)options imageScaleRelativeToScreen:(double)screen orientation:(int64_t)orientation maxCount:(unint64_t)count;
- (PRSFocusPosterSnapshotRequest)initWithPosterRequest:(id)request;
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
    selfCopy = self;
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

- (PRSFocusPosterSnapshotRequest)initWithFocusModeUUID:(id)d configurationType:(int64_t)type variant:(int64_t)variant options:(unint64_t)options imageScaleRelativeToScreen:(double)screen orientation:(int64_t)orientation maxCount:(unint64_t)count
{
  dCopy = d;
  if (dCopy)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSFocusPosterSnapshotRequest initWithFocusModeUUID:a2 configurationType:? variant:? options:? imageScaleRelativeToScreen:? orientation:? maxCount:?];
    }
  }

  if ((type - 2) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    [PRSFocusPosterSnapshotRequest initWithFocusModeUUID:a2 configurationType:? variant:? options:? imageScaleRelativeToScreen:? orientation:? maxCount:?];
  }

  if ((variant - 2) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    [PRSFocusPosterSnapshotRequest initWithFocusModeUUID:a2 configurationType:? variant:? options:? imageScaleRelativeToScreen:? orientation:? maxCount:?];
  }

  if (!count)
  {
    [PRSFocusPosterSnapshotRequest initWithFocusModeUUID:a2 configurationType:? variant:? options:? imageScaleRelativeToScreen:? orientation:? maxCount:?];
  }

  v23.receiver = self;
  v23.super_class = PRSFocusPosterSnapshotRequest;
  v18 = [(PRSFocusPosterSnapshotRequest *)&v23 init];
  if (v18)
  {
    v19 = [dCopy copy];
    focusModeUUID = v18->_focusModeUUID;
    v18->_focusModeUUID = v19;

    v18->_configurationType = type;
    v18->_variant = variant;
    screenCopy = 0.333333343;
    if (screen > 0.0)
    {
      screenCopy = screen;
    }

    v18->_imageScaleRelativeToScreen = screenCopy;
    v18->_orientation = orientation;
    v18->_options = options;
    v18->_maxCount = count;
  }

  return v18;
}

- (PRSFocusPosterSnapshotRequest)initWithPosterRequest:(id)request
{
  requestCopy = request;
  requestOptions = [requestCopy requestOptions];
  v6 = [requestOptions objectForKey:@"PRSPosterSnapshotRequestOptionFocusUUID"];
  uUIDString = [v6 UUIDString];

  requestOptions2 = [requestCopy requestOptions];
  v9 = [requestOptions2 objectForKey:@"PRSPosterSnapshotRequestOptionLegacyConfigurationType"];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  requestOptions3 = [requestCopy requestOptions];
  v12 = [requestOptions3 objectForKey:@"PRSPosterSnapshotRequestOptionLegacyVariant"];
  unsignedIntegerValue2 = [v12 unsignedIntegerValue];

  requestOptions4 = [requestCopy requestOptions];
  v15 = [requestOptions4 objectForKey:@"PRSPosterSnapshotRequestOptionOptionsEnum"];
  unsignedIntegerValue3 = [v15 unsignedIntegerValue];

  requestOptions5 = [requestCopy requestOptions];
  v18 = [requestOptions5 objectForKey:@"PRSPosterSnapshotRequestOptionLegacyImageScaleRelativeToScreen"];
  [v18 doubleValue];
  v20 = v19;

  requestOptions6 = [requestCopy requestOptions];
  v22 = [requestOptions6 objectForKey:@"PRSPosterSnapshotRequestOptionLegacyMaxCount"];
  unsignedIntegerValue4 = [v22 unsignedIntegerValue];

  orientation = [requestCopy orientation];
  v25 = [(PRSFocusPosterSnapshotRequest *)self initWithFocusModeUUID:uUIDString configurationType:unsignedIntegerValue variant:unsignedIntegerValue2 options:unsignedIntegerValue3 imageScaleRelativeToScreen:orientation orientation:unsignedIntegerValue4 maxCount:v20];

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