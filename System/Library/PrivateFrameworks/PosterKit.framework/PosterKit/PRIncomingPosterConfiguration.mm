@interface PRIncomingPosterConfiguration
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PRIncomingPosterConfiguration)initWithConfigurationToDuplicate:(id)duplicate destinationPosterUUID:(id)d;
- (PRIncomingPosterConfiguration)initWithNewPath:(id)path destinationPosterUUID:(id)d parentPosterUUID:(id)iD sourceIdentity:(id)identity configuredProperties:(id)properties attributes:(id)attributes;
- (PRIncomingPosterConfiguration)initWithNewPath:(id)path destinationPosterUUID:(id)d sourceIdentity:(id)identity configuredProperties:(id)properties attributes:(id)attributes;
- (PRIncomingPosterConfiguration)initWithType:(unint64_t)type path:(id)path sourceIdentity:(id)identity configuredProperties:(id)properties attributes:(id)attributes;
- (PRIncomingPosterConfiguration)initWithUpdatedPath:(id)path updatedPosterUUID:(id)d parentPosterUUID:(id)iD sourceIdentity:(id)identity configuredProperties:(id)properties attributes:(id)attributes;
- (PRIncomingPosterConfiguration)initWithUpdatedPath:(id)path updatedPosterUUID:(id)d sourceIdentity:(id)identity configuredProperties:(id)properties attributes:(id)attributes;
- (id)objectForUserInfoKey:(id)key;
- (unint64_t)hash;
- (void)dealloc;
- (void)trackTemporaryState:(id)state;
@end

@implementation PRIncomingPosterConfiguration

- (PRIncomingPosterConfiguration)initWithUpdatedPath:(id)path updatedPosterUUID:(id)d sourceIdentity:(id)identity configuredProperties:(id)properties attributes:(id)attributes
{
  pathCopy = path;
  dCopy = d;
  identityCopy = identity;
  propertiesCopy = properties;
  attributesCopy = attributes;
  v18 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v18)
  {
    [PRIncomingPosterConfiguration initWithUpdatedPath:a2 updatedPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithUpdatedPath:a2 updatedPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  v19 = [(PRIncomingPosterConfiguration *)self initWithType:2 path:pathCopy sourceIdentity:identityCopy configuredProperties:propertiesCopy attributes:attributesCopy];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_destinationUUID, d);
    objc_storeStrong(&v20->_originalPosterUUID, d);
  }

  return v20;
}

- (PRIncomingPosterConfiguration)initWithUpdatedPath:(id)path updatedPosterUUID:(id)d parentPosterUUID:(id)iD sourceIdentity:(id)identity configuredProperties:(id)properties attributes:(id)attributes
{
  pathCopy = path;
  dCopy = d;
  iDCopy = iD;
  identityCopy = identity;
  propertiesCopy = properties;
  attributesCopy = attributes;
  v20 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v20)
  {
    [PRIncomingPosterConfiguration initWithUpdatedPath:a2 updatedPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithUpdatedPath:a2 updatedPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  v21 = iDCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v21)
  {
    [PRIncomingPosterConfiguration initWithUpdatedPath:a2 updatedPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithUpdatedPath:a2 updatedPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  v22 = [(PRIncomingPosterConfiguration *)self initWithType:5 path:pathCopy sourceIdentity:identityCopy configuredProperties:propertiesCopy attributes:attributesCopy];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_destinationUUID, d);
    objc_storeStrong(&v23->_parentPosterUUID, iD);
  }

  return v23;
}

- (PRIncomingPosterConfiguration)initWithNewPath:(id)path destinationPosterUUID:(id)d parentPosterUUID:(id)iD sourceIdentity:(id)identity configuredProperties:(id)properties attributes:(id)attributes
{
  pathCopy = path;
  dCopy = d;
  iDCopy = iD;
  identityCopy = identity;
  propertiesCopy = properties;
  attributesCopy = attributes;
  v21 = dCopy;
  if (v21)
  {
    NSClassFromString(&cfstr_Nsuuid.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRIncomingPosterConfiguration initWithNewPath:a2 destinationPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
    }
  }

  v22 = iDCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v22)
  {
    [PRIncomingPosterConfiguration initWithNewPath:a2 destinationPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithNewPath:a2 destinationPosterUUID:? parentPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  v23 = [(PRIncomingPosterConfiguration *)self initWithType:4 path:pathCopy sourceIdentity:identityCopy configuredProperties:propertiesCopy attributes:attributesCopy];
  if (v23)
  {
    if (v21)
    {
      uUID = v21;
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
    }

    destinationUUID = v23->_destinationUUID;
    v23->_destinationUUID = uUID;

    objc_storeStrong(&v23->_parentPosterUUID, iD);
  }

  return v23;
}

- (PRIncomingPosterConfiguration)initWithNewPath:(id)path destinationPosterUUID:(id)d sourceIdentity:(id)identity configuredProperties:(id)properties attributes:(id)attributes
{
  pathCopy = path;
  dCopy = d;
  identityCopy = identity;
  propertiesCopy = properties;
  attributesCopy = attributes;
  v18 = dCopy;
  if (v18)
  {
    NSClassFromString(&cfstr_Nsuuid.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRIncomingPosterConfiguration initWithNewPath:a2 destinationPosterUUID:? sourceIdentity:? configuredProperties:? attributes:?];
    }
  }

  v19 = [(PRIncomingPosterConfiguration *)self initWithType:1 path:pathCopy sourceIdentity:identityCopy configuredProperties:propertiesCopy attributes:attributesCopy];
  if (v19)
  {
    if (v18)
    {
      uUID = v18;
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
    }

    destinationUUID = v19->_destinationUUID;
    v19->_destinationUUID = uUID;
  }

  return v19;
}

- (PRIncomingPosterConfiguration)initWithConfigurationToDuplicate:(id)duplicate destinationPosterUUID:(id)d
{
  duplicateCopy = duplicate;
  dCopy = d;
  v9 = duplicateCopy;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!v9)
  {
    [PRIncomingPosterConfiguration initWithConfigurationToDuplicate:a2 destinationPosterUUID:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithConfigurationToDuplicate:a2 destinationPosterUUID:?];
  }

  v10 = dCopy;
  if (v10)
  {
    NSClassFromString(&cfstr_Nsuuid.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRIncomingPosterConfiguration initWithConfigurationToDuplicate:a2 destinationPosterUUID:?];
    }
  }

  _path = [v9 _path];
  _path2 = [v9 _path];
  serverIdentity = [_path2 serverIdentity];
  v14 = [v9 loadConfiguredPropertiesWithError:0];
  v15 = [(PRIncomingPosterConfiguration *)self initWithType:3 path:_path sourceIdentity:serverIdentity configuredProperties:v14 attributes:0];

  if (v15)
  {
    _path3 = [v9 _path];
    serverIdentity2 = [_path3 serverIdentity];
    posterUUID = [serverIdentity2 posterUUID];
    originalPosterUUID = v15->_originalPosterUUID;
    v15->_originalPosterUUID = posterUUID;

    if (v10)
    {
      uUID = v10;
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
    }

    destinationUUID = v15->_destinationUUID;
    v15->_destinationUUID = uUID;
  }

  return v15;
}

- (PRIncomingPosterConfiguration)initWithType:(unint64_t)type path:(id)path sourceIdentity:(id)identity configuredProperties:(id)properties attributes:(id)attributes
{
  pathCopy = path;
  identityCopy = identity;
  propertiesCopy = properties;
  attributesCopy = attributes;
  v17 = pathCopy;
  NSClassFromString(&cfstr_Pfposterpath.isa);
  if (!v17)
  {
    [PRIncomingPosterConfiguration initWithType:a2 path:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithType:a2 path:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  v18 = identityCopy;
  NSClassFromString(&cfstr_Pfserverposter.isa);
  if (!v18)
  {
    [PRIncomingPosterConfiguration initWithType:a2 path:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration initWithType:a2 path:? sourceIdentity:? configuredProperties:? attributes:?];
  }

  v19 = propertiesCopy;
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
    objc_storeStrong(&v20->_path, path);
    objc_storeStrong(&v21->_sourceIdentity, identity);
    objc_storeStrong(&v21->_configuredProperties, properties);
    v21->_incomingPosterType = type;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    destinationUUID = v21->_destinationUUID;
    v21->_destinationUUID = uUID;

    v24 = [attributesCopy copy];
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

- (id)objectForUserInfoKey:(id)key
{
  keyCopy = key;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!keyCopy)
  {
    [PRIncomingPosterConfiguration objectForUserInfoKey:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRIncomingPosterConfiguration objectForUserInfoKey:a2];
  }

  v6 = [(PRIncomingPosterConfiguration *)self loadUserInfoWithError:0];
  v7 = [v6 objectForKey:keyCopy];

  return v7;
}

- (unint64_t)hash
{
  contentsURL = [(PFPosterPath *)self->_path contentsURL];
  v4 = [contentsURL hash];
  v5 = [(PFServerPosterIdentity *)self->_sourceIdentity hash];
  v6 = v5 ^ [(PRPosterConfiguredProperties *)self->_configuredProperties hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && BSEqualObjects() && BSEqualObjects())
    {
      isServerPosterPath = [(PFPosterPath *)self->_path isServerPosterPath];
      path = self->_path;
      if (isServerPosterPath)
      {
        contentsURL = [(PFPosterPath *)path contentsURL];
        contentsURL2 = [(PFPosterPath *)equalCopy->_path contentsURL];
        v10 = BSEqualObjects();
      }

      else
      {
        v10 = [(PFPosterPath *)path isEqual:equalCopy->_path];
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
  provider = [(PFServerPosterIdentity *)self->_sourceIdentity provider];
  v7 = [v3 stringWithFormat:@"<%@:%p provider=%@ path=%@>", v5, self, provider, self->_path];

  return v7;
}

- (void)trackTemporaryState:(id)state
{
  stateCopy = state;
  temporaryState = self->_temporaryState;
  v8 = stateCopy;
  if (!temporaryState)
  {
    v6 = objc_opt_new();
    v7 = self->_temporaryState;
    self->_temporaryState = v6;

    stateCopy = v8;
    temporaryState = self->_temporaryState;
  }

  [(NSMutableSet *)temporaryState addObject:stateCopy];
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