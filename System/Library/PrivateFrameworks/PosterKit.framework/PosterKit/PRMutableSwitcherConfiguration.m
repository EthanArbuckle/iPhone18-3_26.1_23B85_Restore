@interface PRMutableSwitcherConfiguration
- (PRPosterConfiguration)desiredActiveConfiguration;
- (id)focusConfigurationForPoster:(id)a3;
- (id)homeConfigurationForPoster:(id)a3;
- (id)incomingPosterConfigurations;
- (id)incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)posterConfigurationsNeedingFocusConfigurationDeleted;
- (id)posterConfigurationsNeedingFocusConfigurationUpdates;
- (id)posterConfigurationsNeedingHomeScreenConfigurationUpdates;
- (void)ingestNewPosterConfiguration:(id)a3;
- (void)ingestNewPosterConfiguration:(id)a3 toBeAssociatedWithHomeScreenConfiguration:(id)a4;
- (void)ingestNewPosterConfiguration:(id)a3 toBeAssociatedWithUUID:(id)a4;
- (void)removeConfiguration:(id)a3;
- (void)setFocusConfiguration:(id)a3 forPosterConfiguration:(id)a4;
- (void)setHomeConfiguration:(id)a3 forPosterConfiguration:(id)a4;
@end

@implementation PRMutableSwitcherConfiguration

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PRMutableSwitcherConfiguration allocWithZone:a3];
  v5 = [(PRSwitcherConfiguration *)self configurations];
  v6 = [v5 copy];
  v7 = [(PRSwitcherConfiguration *)self selectedConfiguration];
  v8 = [(PRSwitcherConfiguration *)self activeConfiguration];
  v9 = [(PRSwitcherConfiguration *)self associatedHomeScreenConfigurationsForServerIdentity];
  v10 = [v9 copy];
  v11 = [(PRSwitcherConfiguration *)v4 _initWithConfigurations:v6 selectedConfiguration:v7 activeConfiguration:v8 associatedHomeScreenConfigurations:v10];

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
    v3 = desiredActiveConfiguration;
  }

  else
  {
    v3 = [(PRSwitcherConfiguration *)self activeConfiguration];
  }

  return v3;
}

- (id)focusConfigurationForPoster:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_overriddenFocusConfigurationForPosterConfiguration objectForKey:v4];
  if (!v5 || ([MEMORY[0x1E695DFB0] null], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v7))
  {
    v10.receiver = self;
    v10.super_class = PRMutableSwitcherConfiguration;
    v8 = [(PRSwitcherConfiguration *)&v10 focusConfigurationForPoster:v4];

    v5 = v8;
  }

  return v5;
}

- (void)setFocusConfiguration:(id)a3 forPosterConfiguration:(id)a4
{
  v11 = a3;
  v6 = a4;
  overriddenFocusConfigurationForPosterConfiguration = self->_overriddenFocusConfigurationForPosterConfiguration;
  if (!overriddenFocusConfigurationForPosterConfiguration)
  {
    v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_overriddenFocusConfigurationForPosterConfiguration;
    self->_overriddenFocusConfigurationForPosterConfiguration = v8;

    overriddenFocusConfigurationForPosterConfiguration = self->_overriddenFocusConfigurationForPosterConfiguration;
  }

  if (v11)
  {
    [(NSMapTable *)overriddenFocusConfigurationForPosterConfiguration setObject:v11 forKey:v6];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFB0] null];
    [(NSMapTable *)overriddenFocusConfigurationForPosterConfiguration setObject:v10 forKey:v6];
  }
}

- (id)homeConfigurationForPoster:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_overriddenHomescreenConfigurationForPosterConfiguration objectForKey:v4];
  if (!v5 || ([MEMORY[0x1E695DFB0] null], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v7))
  {
    v10.receiver = self;
    v10.super_class = PRMutableSwitcherConfiguration;
    v8 = [(PRSwitcherConfiguration *)&v10 homeConfigurationForPoster:v4];

    v5 = v8;
  }

  return v5;
}

- (void)setHomeConfiguration:(id)a3 forPosterConfiguration:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (!v11)
  {
    [PRMutableSwitcherConfiguration setHomeConfiguration:a2 forPosterConfiguration:?];
  }

  if (!v7)
  {
    [PRMutableSwitcherConfiguration setHomeConfiguration:a2 forPosterConfiguration:?];
  }

  overriddenHomescreenConfigurationForPosterConfiguration = self->_overriddenHomescreenConfigurationForPosterConfiguration;
  if (!overriddenHomescreenConfigurationForPosterConfiguration)
  {
    v9 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v10 = self->_overriddenHomescreenConfigurationForPosterConfiguration;
    self->_overriddenHomescreenConfigurationForPosterConfiguration = v9;

    overriddenHomescreenConfigurationForPosterConfiguration = self->_overriddenHomescreenConfigurationForPosterConfiguration;
  }

  [(NSMapTable *)overriddenHomescreenConfigurationForPosterConfiguration setObject:v11 forKey:v7];
}

- (void)removeConfiguration:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = [a3 _path];
  v5 = [v4 serverIdentity];
  v6 = [v5 posterUUID];

  v7 = [(PRSwitcherConfiguration *)self configurations];
  v33 = [v7 mutableCopy];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = self;
  v8 = [(PRSwitcherConfiguration *)self configurations];
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = [v13 _path];
        v15 = [v14 serverIdentity];
        v16 = [v15 posterUUID];
        v17 = [v16 isEqual:v6];

        if (v17)
        {
          [v33 removeObject:v13];
          v18 = [v33 copy];
          [(PRSwitcherConfiguration *)v32 setConfigurations:v18];

          v19 = [(PRSwitcherConfiguration *)v32 collection];
          v20 = [(PRSwitcherConfiguration *)v32 selectedConfiguration];
          v21 = [v20 _path];
          v22 = [v21 serverIdentity];
          v23 = [v22 posterUUID];
          v24 = [v23 isEqual:v6];

          v31 = v19;
          if (v24)
          {
            v25 = [v19 fallbackSelectedForSortedConfigurations:v33 reverse:0];
            [(PRSwitcherConfiguration *)v32 setSelectedConfiguration:v25];
          }

          else
          {
            v25 = 0;
          }

          v26 = [(PRSwitcherConfiguration *)v32 activeConfiguration];
          v27 = [v26 _path];
          v28 = [v27 serverIdentity];
          v29 = [v28 posterUUID];
          v30 = [v29 isEqual:v6];

          if (v30)
          {
            [(PRSwitcherConfiguration *)v32 setActiveConfiguration:v25];
          }

          goto LABEL_16;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (void)ingestNewPosterConfiguration:(id)a3
{
  v13 = a3;
  if (![v13 incomingPosterType])
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2];
  }

  v5 = [v13 role];
  v6 = [v5 isEqual:@"PRPosterRoleLockScreen"];

  if ((v6 & 1) == 0)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2];
  }

  v7 = [v13 path];
  v8 = [v7 role];
  v9 = [v8 isEqual:@"PRPosterRoleLockScreen"];

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

  [(NSMutableOrderedSet *)pathsToIngest addObject:v13];
}

- (id)incomingPosterConfigurations
{
  v2 = [(NSMutableOrderedSet *)self->_pathsToIngest array];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
  v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMapTable *)self->_overriddenHomescreenConfigurationForPosterConfiguration keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_overriddenHomescreenConfigurationForPosterConfiguration objectForKey:v9];
        if (v10)
        {
          [v3 setObject:v10 forKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)posterConfigurationsNeedingFocusConfigurationUpdates
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(NSMapTable *)self->_overriddenFocusConfigurationForPosterConfiguration keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v3);
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
          [v15 setObject:v13 forKey:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v15;
}

- (id)posterConfigurationsNeedingFocusConfigurationDeleted
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(NSMapTable *)self->_overriddenFocusConfigurationForPosterConfiguration keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_overriddenFocusConfigurationForPosterConfiguration objectForKey:v8];
        v10 = [MEMORY[0x1E695DFB0] null];

        if (v9 == v10)
        {
          [v13 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [v13 copy];

  return v11;
}

- (void)ingestNewPosterConfiguration:(id)a3 toBeAssociatedWithHomeScreenConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14 = v7;
  NSClassFromString(&cfstr_Princomingpost_0.isa);
  if (!v14)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithHomeScreenConfiguration:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithHomeScreenConfiguration:?];
  }

  v9 = v8;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!v9)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithHomeScreenConfiguration:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithHomeScreenConfiguration:?];
  }

  v10 = [(PRMutableSwitcherConfiguration *)self incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs];
  v11 = [v9 _path];
  v12 = [v11 serverIdentity];
  v13 = [v12 posterUUID];
  [v10 setObject:v14 forKey:v13];
}

- (void)ingestNewPosterConfiguration:(id)a3 toBeAssociatedWithUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 incomingPosterType] != 4 && objc_msgSend(v7, "incomingPosterType") != 5)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithUUID:?];
  }

  v11 = v7;
  NSClassFromString(&cfstr_Princomingpost_0.isa);
  if (!v11)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithUUID:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithUUID:?];
  }

  v9 = v8;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v9)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithUUID:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutableSwitcherConfiguration ingestNewPosterConfiguration:a2 toBeAssociatedWithUUID:?];
  }

  v10 = [(PRMutableSwitcherConfiguration *)self incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs];
  [v10 setObject:v11 forKey:v9];
}

- (id)incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs
{
  incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs = self->_incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs;
  if (!incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs)
  {
    v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v5 = self->_incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs;
    self->_incomingPosterConfigurationsToBeAssocatedWithExistingPosterConfigurationsUUIDs = v4;

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