@interface PBFPosterConfigurationUpdateResult
- (PBFPosterConfigurationUpdateResult)initWithConfiguration:(id)configuration updates:(id)updates changes:(id)changes;
- (PBFPosterConfigurationUpdateResult)initWithIncomingPosterConfiguration:(id)configuration incomingAssocPosterConfiguration:(id)posterConfiguration postersToDelete:(id)delete;
- (void)dealloc;
@end

@implementation PBFPosterConfigurationUpdateResult

- (PBFPosterConfigurationUpdateResult)initWithIncomingPosterConfiguration:(id)configuration incomingAssocPosterConfiguration:(id)posterConfiguration postersToDelete:(id)delete
{
  configurationCopy = configuration;
  posterConfigurationCopy = posterConfiguration;
  deleteCopy = delete;
  if (!configurationCopy)
  {
    [PBFPosterConfigurationUpdateResult initWithIncomingPosterConfiguration:a2 incomingAssocPosterConfiguration:? postersToDelete:?];
  }

  v13 = deleteCopy;
  if (!deleteCopy)
  {
    [PBFPosterConfigurationUpdateResult initWithIncomingPosterConfiguration:a2 incomingAssocPosterConfiguration:? postersToDelete:?];
  }

  v27.receiver = self;
  v27.super_class = PBFPosterConfigurationUpdateResult;
  v14 = [(PBFPosterConfigurationUpdateResult *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_incomingPosterConfiguration, configuration);
    objc_storeStrong(&v15->_incomingAssocPosterConfiguration, posterConfiguration);
    objc_storeStrong(&v15->_postersToDelete, delete);
    path = [configurationCopy path];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [path extendValidityForReason:v18];
    pathValidityExtension = v15->_pathValidityExtension;
    v15->_pathValidityExtension = v19;

    path2 = [posterConfigurationCopy path];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [path2 extendValidityForReason:v23];
    assocPathValidityExtension = v15->_assocPathValidityExtension;
    v15->_assocPathValidityExtension = v24;
  }

  return v15;
}

- (PBFPosterConfigurationUpdateResult)initWithConfiguration:(id)configuration updates:(id)updates changes:(id)changes
{
  configurationCopy = configuration;
  updatesCopy = updates;
  changesCopy = changes;
  v13 = configurationCopy;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!v13)
  {
    [PBFPosterConfigurationUpdateResult initWithConfiguration:a2 updates:? changes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterConfigurationUpdateResult initWithConfiguration:a2 updates:? changes:?];
  }

  if (![updatesCopy count])
  {
    [PBFPosterConfigurationUpdateResult initWithConfiguration:a2 updates:? changes:?];
  }

  if (![changesCopy count])
  {
    [PBFPosterConfigurationUpdateResult initWithConfiguration:a2 updates:? changes:?];
  }

  v21.receiver = self;
  v21.super_class = PBFPosterConfigurationUpdateResult;
  v14 = [(PBFPosterConfigurationUpdateResult *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_configuration, configuration);
    v16 = [updatesCopy copy];
    updates = v15->_updates;
    v15->_updates = v16;

    v18 = [changesCopy copy];
    roleCoordinatorChanges = v15->_roleCoordinatorChanges;
    v15->_roleCoordinatorChanges = v18;
  }

  return v15;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_pathValidityExtension invalidate];
  [(BSInvalidatable *)self->_assocPathValidityExtension invalidate];
  v3.receiver = self;
  v3.super_class = PBFPosterConfigurationUpdateResult;
  [(PBFPosterConfigurationUpdateResult *)&v3 dealloc];
}

- (void)initWithIncomingPosterConfiguration:(char *)a1 incomingAssocPosterConfiguration:postersToDelete:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"postersToDelete != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIncomingPosterConfiguration:(char *)a1 incomingAssocPosterConfiguration:postersToDelete:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"incomingPosterConfiguration != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguration:(char *)a1 updates:changes:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguration:(char *)a1 updates:changes:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[roleCoordinatorChanges count] > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguration:(char *)a1 updates:changes:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[updates count] > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguration:(char *)a1 updates:changes:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end