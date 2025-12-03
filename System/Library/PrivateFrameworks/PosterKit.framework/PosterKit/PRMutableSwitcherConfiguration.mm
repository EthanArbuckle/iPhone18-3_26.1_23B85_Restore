@interface PRMutableSwitcherConfiguration
- (PRPosterConfiguration)desiredActiveConfiguration;
- (id)focusConfigurationForPoster:(id)poster;
- (id)homeConfigurationForPoster:(id)poster;
- (id)incomingPosterConfigurations;
- (id)incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)posterConfigurationsNeedingFocusConfigurationDeleted;
- (id)posterConfigurationsNeedingFocusConfigurationUpdates;
- (id)posterConfigurationsNeedingHomeScreenConfigurationUpdates;
- (void)ingestNewPosterConfiguration:(id)configuration;
- (void)ingestNewPosterConfiguration:(id)configuration toBeAssociatedWithHomeScreenConfiguration:(id)screenConfiguration;
- (void)ingestNewPosterConfiguration:(id)configuration toBeAssociatedWithUUID:(id)d;
- (void)removeConfiguration:(id)configuration;
- (void)setFocusConfiguration:(id)configuration forPosterConfiguration:(id)posterConfiguration;
- (void)setHomeConfiguration:(id)configuration forPosterConfiguration:(id)posterConfiguration;
@end

@implementation PRMutableSwitcherConfiguration

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PRMutableSwitcherConfiguration allocWithZone:zone];
  configurations = [(PRSwitcherConfiguration *)self configurations];
  v6 = [configurations copy];
  selectedConfiguration = [(PRSwitcherConfiguration *)self selectedConfiguration];
  activeConfiguration = [(PRSwitcherConfiguration *)self activeConfiguration];
  associatedHomeScreenConfigurationsForServerIdentity = [(PRSwitcherConfiguration *)self associatedHomeScreenConfigurationsForServerIdentity];
  v10 = [associatedHomeScreenConfigurationsForServerIdentity copy];
  v11 = [(PRSwitcherConfiguration *)v4 _initWithConfigurations:v6 selectedConfiguration:selectedConfiguration activeConfiguration:activeConfiguration associatedHomeScreenConfigurations:v10];

  v12 = [(NSMapTable *)self->_overriddenFocusConfigurationForPosterConfiguration copy];
  v13 = *(v11 + 56);
  *(v11 + 56) = v12;

  v14 = [(NSMapTable *)self->_overriddenHomescreenConfigurationForPosterConfiguration copy];
  v15 = *(v11 + 64);
  *(v11 + 64) = v14;

  v16 = [(NSMutableOrderedSet *)self->_pathsToIngest mutableCopy];
  v17 = *(v11 + 80);
  *(v11 + 80) = v16;

  objc_storeStrong((v11 + 88), self->_desiredActiveConfiguration);
  v18 = [(NSMapTable *)self->_incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs copy];
  v19 = *(v11 + 72);
  *(v11 + 72) = v18;

  return v11;
}

- (PRPosterConfiguration)desiredActiveConfiguration
{
  desiredActiveConfiguration = self->_desiredActiveConfiguration;
  if (desiredActiveConfiguration)
  {
    activeConfiguration = desiredActiveConfiguration;
  }

  else
  {
    activeConfiguration = [(PRSwitcherConfiguration *)self activeConfiguration];
  }

  return activeConfiguration;
}

- (id)focusConfigurationForPoster:(id)poster
{
  posterCopy = poster;
  v5 = [(NSMapTable *)self->_overriddenFocusConfigurationForPosterConfiguration objectForKey:posterCopy];
  if (!v5 || ([MEMORY[0x1E695DFB0] null], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v7))
  {
    v10.receiver = self;
    v10.super_class = PRMutableSwitcherConfiguration;
    v8 = [(PRSwitcherConfiguration *)&v10 focusConfigurationForPoster:posterCopy];

    v5 = v8;
  }

  return v5;
}

- (void)setFocusConfiguration:(id)configuration forPosterConfiguration:(id)posterConfiguration
{
  configurationCopy = configuration;
  posterConfigurationCopy = posterConfiguration;
  overriddenFocusConfigurationForPosterConfiguration = self->_overriddenFocusConfigurationForPosterConfiguration;
  if (!overriddenFocusConfigurationForPosterConfiguration)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_overriddenFocusConfigurationForPosterConfiguration;
    self->_overriddenFocusConfigurationForPosterConfiguration = weakToStrongObjectsMapTable;

    overriddenFocusConfigurationForPosterConfiguration = self->_overriddenFocusConfigurationForPosterConfiguration;
  }

  if (configurationCopy)
  {
    [(NSMapTable *)overriddenFocusConfigurationForPosterConfiguration setObject:configurationCopy forKey:posterConfigurationCopy];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(NSMapTable *)overriddenFocusConfigurationForPosterConfiguration setObject:null forKey:posterConfigurationCopy];
  }
}

- (id)homeConfigurationForPoster:(id)poster
{
  posterCopy = poster;
  v5 = [(NSMapTable *)self->_overriddenHomescreenConfigurationForPosterConfiguration objectForKey:posterCopy];
  if (!v5 || ([MEMORY[0x1E695DFB0] null], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v7))
  {
    v10.receiver = self;
    v10.super_class = PRMutableSwitcherConfiguration;
    v8 = [(PRSwitcherConfiguration *)&v10 homeConfigurationForPoster:posterCopy];

    v5 = v8;
  }

  return v5;
}

- (void)setHomeConfiguration:(id)configuration forPosterConfiguration:(id)posterConfiguration
{
  configurationCopy = configuration;
  posterConfigurationCopy = posterConfiguration;
  if (!configurationCopy)
  {
    [PRMutableSwitcherConfiguration setHomeConfiguration:a2 forPosterConfiguration:?];
  }

  if (!posterConfigurationCopy)
  {
    [PRMutableSwitcherConfiguration setHomeConfiguration:a2 forPosterConfiguration:?];
  }

  overriddenHomescreenConfigurationForPosterConfiguration = self->_overriddenHomescreenConfigurationForPosterConfiguration;
  if (!overriddenHomescreenConfigurationForPosterConfiguration)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v10 = self->_overriddenHomescreenConfigurationForPosterConfiguration;
    self->_overriddenHomescreenConfigurationForPosterConfiguration = weakToStrongObjectsMapTable;

    overriddenHomescreenConfigurationForPosterConfiguration = self->_overriddenHomescreenConfigurationForPosterConfiguration;
  }

  [(NSMapTable *)overriddenHomescreenConfigurationForPosterConfiguration setObject:configurationCopy forKey:posterConfigurationCopy];
}

- (void)removeConfiguration:(id)configuration
{
  v39 = *MEMORY[0x1E69E9840];
  _path = [configuration _path];
  serverIdentity = [_path serverIdentity];
  posterUUID = [serverIdentity posterUUID];

  configurations = [(PRSwitcherConfiguration *)self configurations];
  v33 = [configurations mutableCopy];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  configurations2 = [(PRSwitcherConfiguration *)self configurations];
  v9 = [configurations2 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(configurations2);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        _path2 = [v13 _path];
        serverIdentity2 = [_path2 serverIdentity];
        posterUUID2 = [serverIdentity2 posterUUID];
        v17 = [posterUUID2 isEqual:posterUUID];

        if (v17)
        {
          [v33 removeObject:v13];
          v18 = [v33 copy];
          [(PRSwitcherConfiguration *)selfCopy setConfigurations:v18];

          collection = [(PRSwitcherConfiguration *)selfCopy collection];
          selectedConfiguration = [(PRSwitcherConfiguration *)selfCopy selectedConfiguration];
          _path3 = [selectedConfiguration _path];
          serverIdentity3 = [_path3 serverIdentity];
          posterUUID3 = [serverIdentity3 posterUUID];
          v24 = [posterUUID3 isEqual:posterUUID];

          v31 = collection;
          if (v24)
          {
            v25 = [collection fallbackSelectedForSortedConfigurations:v33 reverse:0];
            [(PRSwitcherConfiguration *)selfCopy setSelectedConfiguration:v25];
          }

          else
          {
            v25 = 0;
          }

          activeConfiguration = [(PRSwitcherConfiguration *)selfCopy activeConfiguration];
          _path4 = [activeConfiguration _path];
          serverIdentity4 = [_path4 serverIdentity];
          posterUUID4 = [serverIdentity4 posterUUID];
          v30 = [posterUUID4 isEqual:posterUUID];

          if (v30)
          {
            [(PRSwitcherConfiguration *)selfCopy setActiveConfiguration:v25];
          }

          goto LABEL_16;
        }
      }

      v10 = [configurations2 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (void)ingestNewPosterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (![configurationCopy incomingPosterType])
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2];
  }

  role = [configurationCopy role];
  v6 = [role isEqual:@"PRPosterRoleLockScreen"];

  if ((v6 & 1) == 0)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2];
  }

  path = [configurationCopy path];
  role2 = [path role];
  v9 = [role2 isEqual:@"PRPosterRoleLockScreen"];

  if ((v9 & 1) == 0)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2];
  }

  pathsToIngest = self->_pathsToIngest;
  if (!pathsToIngest)
  {
    v11 = objc_opt_new();
    v12 = self->_pathsToIngest;
    self->_pathsToIngest = v11;

    pathsToIngest = self->_pathsToIngest;
  }

  [(NSMutableOrderedSet *)pathsToIngest addObject:configurationCopy];
}

- (id)incomingPosterConfigurations
{
  array = [(NSMutableOrderedSet *)self->_pathsToIngest array];
  v3 = array;
  if (array)
  {
    v4 = array;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (id)posterConfigurationsNeedingHomeScreenConfigurationUpdates
{
  v17 = *MEMORY[0x1E69E9840];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyEnumerator = [(NSMapTable *)self->_overriddenHomescreenConfigurationForPosterConfiguration keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_overriddenHomescreenConfigurationForPosterConfiguration objectForKey:v9];
        if (v10)
        {
          [strongToStrongObjectsMapTable setObject:v10 forKey:v9];
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return strongToStrongObjectsMapTable;
}

- (id)posterConfigurationsNeedingFocusConfigurationUpdates
{
  v21 = *MEMORY[0x1E69E9840];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  keyEnumerator = [(NSMapTable *)self->_overriddenFocusConfigurationForPosterConfiguration keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_overriddenFocusConfigurationForPosterConfiguration objectForKey:v8];
        v10 = objc_opt_class();
        v11 = v9;
        if (v10)
        {
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if (v13)
        {
          [strongToStrongObjectsMapTable setObject:v13 forKey:v8];
        }
      }

      v5 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return strongToStrongObjectsMapTable;
}

- (id)posterConfigurationsNeedingFocusConfigurationDeleted
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  keyEnumerator = [(NSMapTable *)self->_overriddenFocusConfigurationForPosterConfiguration keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_overriddenFocusConfigurationForPosterConfiguration objectForKey:v8];
        null = [MEMORY[0x1E695DFB0] null];

        if (v9 == null)
        {
          [v13 addObject:v8];
        }
      }

      v5 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [v13 copy];

  return v11;
}

- (void)ingestNewPosterConfiguration:(id)configuration toBeAssociatedWithHomeScreenConfiguration:(id)screenConfiguration
{
  configurationCopy = configuration;
  screenConfigurationCopy = screenConfiguration;
  v14 = configurationCopy;
  NSClassFromString(&cfstr_Princomingpost_0.isa);
  if (!v14)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithHomeScreenConfiguration:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithHomeScreenConfiguration:?];
  }

  v9 = screenConfigurationCopy;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!v9)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithHomeScreenConfiguration:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithHomeScreenConfiguration:?];
  }

  incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs = [(PRMutableSwitcherConfiguration *)self incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs];
  _path = [v9 _path];
  serverIdentity = [_path serverIdentity];
  posterUUID = [serverIdentity posterUUID];
  [incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs setObject:v14 forKey:posterUUID];
}

- (void)ingestNewPosterConfiguration:(id)configuration toBeAssociatedWithUUID:(id)d
{
  configurationCopy = configuration;
  dCopy = d;
  if ([configurationCopy incomingPosterType] != 4 && objc_msgSend(configurationCopy, "incomingPosterType") != 5)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithUUID:?];
  }

  v11 = configurationCopy;
  NSClassFromString(&cfstr_Princomingpost_0.isa);
  if (!v11)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithUUID:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithUUID:?];
  }

  v9 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v9)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithUUID:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithUUID:?];
  }

  incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs = [(PRMutableSwitcherConfiguration *)self incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs];
  [incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs setObject:v11 forKey:v9];
}

- (id)incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs
{
  incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs = self->_incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs;
  if (!incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v5 = self->_incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs;
    self->_incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs = strongToStrongObjectsMapTable;

    incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs = self->_incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs;
  }

  v6 = incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs;

  return v6;
}

- (void)setHomeConfiguration:(char *)a1 forPosterConfiguration:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"posterConfiguration", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setHomeConfiguration:(char *)a1 forPosterConfiguration:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"homeConfiguration", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)ingestNewPosterConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[path role] isEqual:PRPosterRoleLockScreen]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)ingestNewPosterConfiguration:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[[path path] role] isEqual:PRPosterRoleLockScreen]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)ingestNewPosterConfiguration:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[path incomingPosterType] != PRIncomingPosterTypeUnknown", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)ingestNewPosterConfiguration:(char *)a1 toBeAssociatedWithHomeScreenConfiguration:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRIncomingPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)ingestNewPosterConfiguration:(char *)a1 toBeAssociatedWithHomeScreenConfiguration:.cold.2(char *a1)
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

- (void)ingestNewPosterConfiguration:(char *)a1 toBeAssociatedWithHomeScreenConfiguration:.cold.3(char *a1)
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

- (void)ingestNewPosterConfiguration:(char *)a1 toBeAssociatedWithHomeScreenConfiguration:.cold.4(char *a1)
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

- (void)ingestNewPosterConfiguration:(char *)a1 toBeAssociatedWithUUID:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[incomingPosterConfiguration incomingPosterType] == PRIncomingPosterTypeAssociatedNew || [incomingPosterConfiguration incomingPosterType] == PRIncomingPosterTypeAssociatedUpdate", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)ingestNewPosterConfiguration:(char *)a1 toBeAssociatedWithUUID:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRIncomingPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)ingestNewPosterConfiguration:(char *)a1 toBeAssociatedWithUUID:.cold.3(char *a1)
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

- (void)ingestNewPosterConfiguration:(char *)a1 toBeAssociatedWithUUID:.cold.4(char *a1)
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

- (void)ingestNewPosterConfiguration:(char *)a1 toBeAssociatedWithUUID:.cold.5(char *a1)
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