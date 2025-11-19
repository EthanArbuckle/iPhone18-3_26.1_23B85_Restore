@interface PRIncomingPosterConfiguration
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PRIncomingPosterConfiguration)initWithConfigurationToDuplicate:(id)a3 destinationPosterUUID:(id)a4;
- (PRIncomingPosterConfiguration)initWithNewPath:(id)a3 destinationPosterUUID:(id)a4 parentPosterUUID:(id)a5 sourceIdentity:(id)a6 configuredProperties:(id)a7 attributes:(id)a8;
- (PRIncomingPosterConfiguration)initWithNewPath:(id)a3 destinationPosterUUID:(id)a4 sourceIdentity:(id)a5 configuredProperties:(id)a6 attributes:(id)a7;
- (PRIncomingPosterConfiguration)initWithType:(unint64_t)a3 path:(id)a4 sourceIdentity:(id)a5 configuredProperties:(id)a6 attributes:(id)a7;
- (PRIncomingPosterConfiguration)initWithUpdatedPath:(id)a3 updatedPosterUUID:(id)a4 parentPosterUUID:(id)a5 sourceIdentity:(id)a6 configuredProperties:(id)a7 attributes:(id)a8;
- (PRIncomingPosterConfiguration)initWithUpdatedPath:(id)a3 updatedPosterUUID:(id)a4 sourceIdentity:(id)a5 configuredProperties:(id)a6 attributes:(id)a7;
- (id)objectForUserInfoKey:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)trackTemporaryState:(id)a3;
@end

@implementation PRIncomingPosterConfiguration

- (PRIncomingPosterConfiguration)initWithUpdatedPath:(id)a3 updatedPosterUUID:(id)a4 sourceIdentity:(id)a5 configuredProperties:(id)a6 attributes:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v14;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v18)
  {
    [PRIncomingPosterConfiguration initWithUpdatedPath:a2 updatedPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithUpdatedPath:a2 updatedPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  v19 = [(PRIncomingPosterConfiguration *)self initWithType:2 path:v13 sourceIdentity:v15 configuredProperties:v16 attributes:v17];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_destinationUUID, a4);
    objc_storeStrong(&v20->_originalPosterUUID, a4);
  }

  return v20;
}

- (PRIncomingPosterConfiguration)initWithUpdatedPath:(id)a3 updatedPosterUUID:(id)a4 parentPosterUUID:(id)a5 sourceIdentity:(id)a6 configuredProperties:(id)a7 attributes:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v15;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v20)
  {
    [PRIncomingPosterConfiguration initWithUpdatedPath:a2 updatedPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithUpdatedPath:a2 updatedPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  v21 = v16;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v21)
  {
    [PRIncomingPosterConfiguration initWithUpdatedPath:a2 updatedPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithUpdatedPath:a2 updatedPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  v22 = [(PRIncomingPosterConfiguration *)self initWithType:5 path:v14 sourceIdentity:v17 configuredProperties:v18 attributes:v19];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_destinationUUID, a4);
    objc_storeStrong(&v23->_parentPosterUUID, a5);
  }

  return v23;
}

- (PRIncomingPosterConfiguration)initWithNewPath:(id)a3 destinationPosterUUID:(id)a4 parentPosterUUID:(id)a5 sourceIdentity:(id)a6 configuredProperties:(id)a7 attributes:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = v16;
  if (v21)
  {
    NSClassFromString(&cfstr_Nsuuid.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRIncomingPosterConfiguration initWithNewPath:a2 destinationPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
    }
  }

  v22 = v17;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v22)
  {
    [PRIncomingPosterConfiguration initWithNewPath:a2 destinationPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithNewPath:a2 destinationPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  v23 = [(PRIncomingPosterConfiguration *)self initWithType:4 path:v15 sourceIdentity:v18 configuredProperties:v19 attributes:v20];
  if (v23)
  {
    if (v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = [MEMORY[0x1E696AFB0] UUID];
    }

    destinationUUID = v23->_destinationUUID;
    v23->_destinationUUID = v24;

    objc_storeStrong(&v23->_parentPosterUUID, a5);
  }

  return v23;
}

- (PRIncomingPosterConfiguration)initWithNewPath:(id)a3 destinationPosterUUID:(id)a4 sourceIdentity:(id)a5 configuredProperties:(id)a6 attributes:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v14;
  if (v18)
  {
    NSClassFromString(&cfstr_Nsuuid.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRIncomingPosterConfiguration initWithNewPath:a2 destinationPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
    }
  }

  v19 = [(PRIncomingPosterConfiguration *)self initWithType:1 path:v13 sourceIdentity:v15 configuredProperties:v16 attributes:v17];
  if (v19)
  {
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [MEMORY[0x1E696AFB0] UUID];
    }

    destinationUUID = v19->_destinationUUID;
    v19->_destinationUUID = v20;
  }

  return v19;
}

- (PRIncomingPosterConfiguration)initWithConfigurationToDuplicate:(id)a3 destinationPosterUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!v9)
  {
    [PRIncomingPosterConfiguration initWithConfigurationToDuplicate:a2 destinationPosterUUID:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithConfigurationToDuplicate:a2 destinationPosterUUID:?];
  }

  v10 = v8;
  if (v10)
  {
    NSClassFromString(&cfstr_Nsuuid.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRIncomingPosterConfiguration initWithConfigurationToDuplicate:a2 destinationPosterUUID:?];
    }
  }

  v11 = [v9 _path];
  v12 = [v9 _path];
  v13 = [v12 serverIdentity];
  v14 = [v9 loadConfiguredPropertiesWithError:0];
  v15 = [(PRIncomingPosterConfiguration *)self initWithType:3 path:v11 sourceIdentity:v13 configuredProperties:v14 attributes:0];

  if (v15)
  {
    v16 = [v9 _path];
    v17 = [v16 serverIdentity];
    v18 = [v17 posterUUID];
    originalPosterUUID = v15->_originalPosterUUID;
    v15->_originalPosterUUID = v18;

    if (v10)
    {
      v20 = v10;
    }

    else
    {
      v20 = [MEMORY[0x1E696AFB0] UUID];
    }

    destinationUUID = v15->_destinationUUID;
    v15->_destinationUUID = v20;
  }

  return v15;
}

- (PRIncomingPosterConfiguration)initWithType:(unint64_t)a3 path:(id)a4 sourceIdentity:(id)a5 configuredProperties:(id)a6 attributes:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v13;
  NSClassFromString(&cfstr_Pfposterpath.isa);
  if (!v17)
  {
    [PRIncomingPosterConfiguration initWithType:a2 path:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithType:a2 path:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  v18 = v14;
  NSClassFromString(&cfstr_Pfserverposter.isa);
  if (!v18)
  {
    [PRIncomingPosterConfiguration initWithType:a2 path:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithType:a2 path:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  v19 = v15;
  NSClassFromString(&cfstr_Prposterconfig_0.isa);
  if (!v19)
  {
    [PRIncomingPosterConfiguration initWithType:a2 path:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithType:a2 path:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  v28.receiver = self;
  v28.super_class = PRIncomingPosterConfiguration;
  v20 = [(PRIncomingPosterConfiguration *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_path, a4);
    objc_storeStrong(&v21->_sourceIdentity, a5);
    objc_storeStrong(&v21->_configuredProperties, a6);
    v21->_incomingPosterType = a3;
    v22 = [MEMORY[0x1E696AFB0] UUID];
    destinationUUID = v21->_destinationUUID;
    v21->_destinationUUID = v22;

    v24 = [v16 copy];
    attributes = v21->_attributes;
    v21->_attributes = v24;
  }

  return v21;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_temporaryState;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 invalidate];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  temporaryState = self->_temporaryState;
  self->_temporaryState = 0;

  v10.receiver = self;
  v10.super_class = PRIncomingPosterConfiguration;
  [(PRIncomingPosterConfiguration *)&v10 dealloc];
}

- (id)objectForUserInfoKey:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v5)
  {
    [PRIncomingPosterConfiguration objectForUserInfoKey:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration objectForUserInfoKey:a2];
  }

  v6 = [(PRIncomingPosterConfiguration *)self loadUserInfoWithError:0];
  v7 = [v6 objectForKey:v5];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(PFPosterPath *)self->_path contentsURL];
  v4 = [v3 hash];
  v5 = [(PFServerPosterIdentity *)self->_sourceIdentity hash];
  v6 = v5 ^ [(PRPosterConfiguredProperties *)self->_configuredProperties hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && BSEqualObjects() && BSEqualObjects())
    {
      v6 = [(PFPosterPath *)self->_path isServerPosterPath];
      path = self->_path;
      if (v6)
      {
        v8 = [(PFPosterPath *)path contentsURL];
        v9 = [(PFPosterPath *)v4->_path contentsURL];
        v10 = BSEqualObjects();
      }

      else
      {
        v10 = [(PFPosterPath *)path isEqual:v4->_path];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PFServerPosterIdentity *)self->_sourceIdentity provider];
  v7 = [v3 stringWithFormat:@"<%@:%p provider=%@ path=%@>", v5, self, v6, self->_path];

  return v7;
}

- (void)trackTemporaryState:(id)a3
{
  v4 = a3;
  temporaryState = self->_temporaryState;
  v8 = v4;
  if (!temporaryState)
  {
    v6 = objc_opt_new();
    v7 = self->_temporaryState;
    self->_temporaryState = v6;

    v4 = v8;
    temporaryState = self->_temporaryState;
  }

  [(NSMutableSet *)temporaryState addObject:v4];
}

- (void)initWithUpdatedPath:(char *)a1 updatedPosterUUID:sourceIdentity:configuredProperties:attributes:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedPath:(char *)a1 updatedPosterUUID:sourceIdentity:configuredProperties:attributes:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedPath:(char *)a1 updatedPosterUUID:parentPosterUUID:sourceIdentity:configuredProperties:attributes:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedPath:(char *)a1 updatedPosterUUID:parentPosterUUID:sourceIdentity:configuredProperties:attributes:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedPath:(char *)a1 updatedPosterUUID:parentPosterUUID:sourceIdentity:configuredProperties:attributes:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedPath:(char *)a1 updatedPosterUUID:parentPosterUUID:sourceIdentity:configuredProperties:attributes:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithNewPath:(char *)a1 destinationPosterUUID:parentPosterUUID:sourceIdentity:configuredProperties:attributes:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithNewPath:(char *)a1 destinationPosterUUID:parentPosterUUID:sourceIdentity:configuredProperties:attributes:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithNewPath:(char *)a1 destinationPosterUUID:parentPosterUUID:sourceIdentity:configuredProperties:attributes:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithNewPath:(char *)a1 destinationPosterUUID:sourceIdentity:configuredProperties:attributes:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfigurationToDuplicate:(char *)a1 destinationPosterUUID:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfigurationToDuplicate:(char *)a1 destinationPosterUUID:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfigurationToDuplicate:(char *)a1 destinationPosterUUID:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithType:(char *)a1 path:sourceIdentity:configuredProperties:attributes:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithType:(char *)a1 path:sourceIdentity:configuredProperties:attributes:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithType:(char *)a1 path:sourceIdentity:configuredProperties:attributes:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfiguredPropertiesClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithType:(char *)a1 path:sourceIdentity:configuredProperties:attributes:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithType:(char *)a1 path:sourceIdentity:configuredProperties:attributes:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithType:(char *)a1 path:sourceIdentity:configuredProperties:attributes:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)objectForUserInfoKey:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)objectForUserInfoKey:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end