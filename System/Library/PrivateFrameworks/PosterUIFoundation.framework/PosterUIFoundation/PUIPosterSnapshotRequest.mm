@interface PUIPosterSnapshotRequest
- (PUIPosterSnapshotRequest)initWithPath:(id)path sceneSettingsApplicator:(id)applicator priority:(int64_t)priority snapshotDescriptor:(id)descriptor retryCount:(unint64_t)count timeout:(double)timeout;
@end

@implementation PUIPosterSnapshotRequest

- (PUIPosterSnapshotRequest)initWithPath:(id)path sceneSettingsApplicator:(id)applicator priority:(int64_t)priority snapshotDescriptor:(id)descriptor retryCount:(unint64_t)count timeout:(double)timeout
{
  pathCopy = path;
  applicatorCopy = applicator;
  descriptorCopy = descriptor;
  if (!pathCopy)
  {
    [PUIPosterSnapshotRequest initWithPath:a2 sceneSettingsApplicator:? priority:? snapshotDescriptor:? retryCount:? timeout:?];
  }

  if (!applicatorCopy)
  {
    [PUIPosterSnapshotRequest initWithPath:a2 sceneSettingsApplicator:? priority:? snapshotDescriptor:? retryCount:? timeout:?];
  }

  v19 = descriptorCopy;
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
    date = [MEMORY[0x1E695DF00] date];
    date = v20->_date;
    v20->_date = date;

    objc_storeStrong(&v20->_path, path);
    serverIdentity = [pathCopy serverIdentity];
    provider = [serverIdentity provider];
    provider = v20->_provider;
    v20->_provider = provider;

    v26 = [applicatorCopy copy];
    sceneSettingsApplicator = v20->_sceneSettingsApplicator;
    v20->_sceneSettingsApplicator = v26;

    v20->_priority = priority;
    v20->_retryCount = count;
    v28 = [v19 copy];
    snapshotDescriptor = v20->_snapshotDescriptor;
    v20->_snapshotDescriptor = v28;

    v20->_timeoutInterval = timeout;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uniqueIdentifier = v20->_uniqueIdentifier;
    v20->_uniqueIdentifier = uUID;
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