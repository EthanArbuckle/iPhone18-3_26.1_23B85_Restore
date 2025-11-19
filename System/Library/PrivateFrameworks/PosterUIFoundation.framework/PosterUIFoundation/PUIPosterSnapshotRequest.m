@interface PUIPosterSnapshotRequest
- (PUIPosterSnapshotRequest)initWithPath:(id)a3 sceneSettingsApplicator:(id)a4 priority:(int64_t)a5 snapshotDescriptor:(id)a6 retryCount:(unint64_t)a7 timeout:(double)a8;
@end

@implementation PUIPosterSnapshotRequest

- (PUIPosterSnapshotRequest)initWithPath:(id)a3 sceneSettingsApplicator:(id)a4 priority:(int64_t)a5 snapshotDescriptor:(id)a6 retryCount:(unint64_t)a7 timeout:(double)a8
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  if (!v16)
  {
    [PUIPosterSnapshotRequest initWithPath:a2 sceneSettingsApplicator:? priority:? snapshotDescriptor:? retryCount:? timeout:?];
  }

  if (!v17)
  {
    [PUIPosterSnapshotRequest initWithPath:a2 sceneSettingsApplicator:? priority:? snapshotDescriptor:? retryCount:? timeout:?];
  }

  v19 = v18;
  NSClassFromString(&cfstr_Puipostersnaps_11.isa);
  if (!v19)
  {
    [PUIPosterSnapshotRequest initWithPath:a2 sceneSettingsApplicator:? priority:? snapshotDescriptor:? retryCount:? timeout:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PUIPosterSnapshotRequest initWithPath:a2 sceneSettingsApplicator:? priority:? snapshotDescriptor:? retryCount:? timeout:?];
  }

  v33.receiver = self;
  v33.super_class = PUIPosterSnapshotRequest;
  v20 = [(PUIPosterSnapshotRequest *)&v33 init];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DF00] date];
    date = v20->_date;
    v20->_date = v21;

    objc_storeStrong(&v20->_path, a3);
    v23 = [v16 serverIdentity];
    v24 = [v23 provider];
    provider = v20->_provider;
    v20->_provider = v24;

    v26 = [v17 copy];
    sceneSettingsApplicator = v20->_sceneSettingsApplicator;
    v20->_sceneSettingsApplicator = v26;

    v20->_priority = a5;
    v20->_retryCount = a7;
    v28 = [v19 copy];
    snapshotDescriptor = v20->_snapshotDescriptor;
    v20->_snapshotDescriptor = v28;

    v20->_timeoutInterval = a8;
    v30 = [MEMORY[0x1E696AFB0] UUID];
    uniqueIdentifier = v20->_uniqueIdentifier;
    v20->_uniqueIdentifier = v30;
  }

  return v20;
}

- (void)initWithPath:(char *)a1 sceneSettingsApplicator:priority:snapshotDescriptor:retryCount:timeout:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PUIPosterSnapshotDescriptorClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 sceneSettingsApplicator:priority:snapshotDescriptor:retryCount:timeout:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 sceneSettingsApplicator:priority:snapshotDescriptor:retryCount:timeout:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"sceneSettingsApplicator", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 sceneSettingsApplicator:priority:snapshotDescriptor:retryCount:timeout:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"path", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end