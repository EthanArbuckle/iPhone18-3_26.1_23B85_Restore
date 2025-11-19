@interface PRSwitcherConfiguration
- (NSMapTable)associatedHomeScreenConfigurationsForServerIdentity;
- (NSSet)heldAssociatedConfigurations;
- (PRPosterCollection)collection;
- (id)_childPosterConfigurationForConfiguration:(id)a3;
- (id)_childPosterConfigurationForConfigurationUUID:(id)a3;
- (id)_initWithCollection:(id)a3 activeConfiguration:(id)a4;
- (id)_initWithConfigurations:(id)a3 selectedConfiguration:(id)a4 activeConfiguration:(id)a5 associatedHomeScreenConfigurations:(id)a6;
- (id)_posterConfigurationForUUID:(id)a3;
- (id)focusConfigurationForPoster:(id)a3;
- (id)homeConfigurationForPoster:(id)a3;
- (id)homeScreenPosterConfigurationForPosterConfiguration:(id)a3;
- (id)lastModifiedDateForPoster:(id)a3;
- (id)metadataForPoster:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)primaryPosterIdentityForHomeScreenPosterConfiguration:(id)a3;
- (id)suggestionMetadataForPoster:(id)a3;
@end

@implementation PRSwitcherConfiguration

- (id)_initWithConfigurations:(id)a3 selectedConfiguration:(id)a4 activeConfiguration:(id)a5 associatedHomeScreenConfigurations:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  NSClassFromString(&cfstr_Nsarray.isa);
  if (!v14)
  {
    [PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:];
  }

  v15 = v11;
  if (v15)
  {
    NSClassFromString(&cfstr_Prposterconfig.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:];
    }
  }

  v16 = v12;
  if (v16)
  {
    NSClassFromString(&cfstr_Prposterconfig.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:];
    }
  }

  v17 = v13;
  NSClassFromString(&cfstr_Nsmaptable.isa);
  if (!v17)
  {
    [PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:];
  }

  v25.receiver = self;
  v25.super_class = PRSwitcherConfiguration;
  v18 = [(PRSwitcherConfiguration *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_activeConfiguration, a5);
    objc_storeStrong(&v19->_selectedConfiguration, a4);
    v20 = [v14 copy];
    configurations = v19->_configurations;
    v19->_configurations = v20;

    v22 = [v17 copy];
    associatedHomeScreenConfigurationsForServerIdentity = v19->_associatedHomeScreenConfigurationsForServerIdentity;
    v19->_associatedHomeScreenConfigurationsForServerIdentity = v22;
  }

  return v19;
}

- (id)_initWithCollection:(id)a3 activeConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 selectedPoster];

  v9 = 0;
  if (v7 && v8)
  {
    v10 = [v6 orderedPosters];
    v11 = [v10 array];
    v12 = [v6 selectedPoster];
    v13 = [v6 associatedHomeScreenConfigurationsMap];
    v14 = [(PRSwitcherConfiguration *)self _initWithConfigurations:v11 selectedConfiguration:v12 activeConfiguration:v7 associatedHomeScreenConfigurations:v13];

    if (v14)
    {
      [v14 setCollection:v6];
    }

    self = v14;
    v9 = self;
  }

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PRMutableSwitcherConfiguration allocWithZone:a3];
  v5 = [(NSArray *)self->_configurations copy];
  selectedConfiguration = self->_selectedConfiguration;
  activeConfiguration = self->_activeConfiguration;
  v8 = [(NSMapTable *)self->_associatedHomeScreenConfigurationsForServerIdentity copy];
  v9 = [(PRSwitcherConfiguration *)v4 _initWithConfigurations:v5 selectedConfiguration:selectedConfiguration activeConfiguration:activeConfiguration associatedHomeScreenConfigurations:v8];

  [v9 setCollection:self->_collection];
  return v9;
}

- (PRPosterCollection)collection
{
  v34 = *MEMORY[0x1E69E9840];
  collection = self->_collection;
  if (collection)
  {
    v3 = collection;
  }

  else
  {
    v28 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = [(PRSwitcherConfiguration *)self configurations];
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          v11 = [(PRSwitcherConfiguration *)self associatedHomeScreenConfigurationsForServerIdentity];
          v12 = [v10 _path];
          v13 = [v12 serverIdentity];
          v14 = [v11 objectForKey:v13];

          if (v14)
          {
            v15 = [v10 _path];
            v16 = [v15 isServerPosterPath];

            if (v16)
            {
              v17 = [v10 _path];
              v18 = [v17 serverIdentity];
              v19 = [v18 posterUUID];
              [v28 setObject:v14 forKey:v19];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v7);
    }

    v20 = [PRPosterCollection alloc];
    v21 = [(PRSwitcherConfiguration *)self selectedConfiguration];
    v22 = MEMORY[0x1E695DFB8];
    v23 = [(PRSwitcherConfiguration *)self configurations];
    v24 = [v22 orderedSetWithArray:v23];
    v25 = [(PRPosterCollection *)v20 initWithSelectedPoster:v21 posters:v24 associatedPosterMap:v28 attributeProvider:0];
    v26 = self->_collection;
    self->_collection = v25;

    v3 = self->_collection;
  }

  return v3;
}

- (id)focusConfigurationForPoster:(id)a3
{
  v4 = a3;
  v5 = [(PRSwitcherConfiguration *)self collection];
  v6 = [v5 attributeForPoster:v4 ofType:@"PRPosterRoleAttributeTypeFocusConfiguration"];

  return v6;
}

- (id)homeConfigurationForPoster:(id)a3
{
  v4 = a3;
  v5 = [(PRSwitcherConfiguration *)self collection];
  v6 = [v5 attributeForPoster:v4 ofType:@"PRPosterRoleAttributeTypeHomeScreenConfiguration"];

  return v6;
}

- (id)homeScreenPosterConfigurationForPosterConfiguration:(id)a3
{
  associatedHomeScreenConfigurationsForServerIdentity = self->_associatedHomeScreenConfigurationsForServerIdentity;
  v4 = [a3 _path];
  v5 = [v4 serverIdentity];
  v6 = [(NSMapTable *)associatedHomeScreenConfigurationsForServerIdentity objectForKey:v5];

  return v6;
}

- (id)metadataForPoster:(id)a3
{
  v4 = a3;
  v5 = [(PRSwitcherConfiguration *)self collection];
  v6 = [v5 attributeForPoster:v4 ofType:@"PRPosterRoleAttributeTypeMetadata"];

  return v6;
}

- (id)suggestionMetadataForPoster:(id)a3
{
  v4 = a3;
  v5 = [(PRSwitcherConfiguration *)self collection];
  v6 = [v5 attributeForPoster:v4 ofType:@"PRPosterRoleAttributeTypeSuggestionMetadata"];

  return v6;
}

- (id)lastModifiedDateForPoster:(id)a3
{
  v4 = a3;
  v5 = [(PRSwitcherConfiguration *)self collection];
  v6 = [v5 attributeForPoster:v4 ofType:@"PRPosterRoleAttributeTypeUsageMetadata"];

  v7 = [v6 lastModifiedDate];

  return v7;
}

- (id)primaryPosterIdentityForHomeScreenPosterConfiguration:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_associatedHomeScreenConfigurationsForServerIdentity;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_associatedHomeScreenConfigurationsForServerIdentity objectForKey:v10, v14];
        if ([v11 isEqual:v4])
        {
          v12 = v10;

          goto LABEL_11;
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (NSSet)heldAssociatedConfigurations
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSMapTable *)self->_associatedHomeScreenConfigurationsForServerIdentity objectEnumerator];
  v4 = [v3 allObjects];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [v2 setWithArray:v6];

  return v7;
}

- (NSMapTable)associatedHomeScreenConfigurationsForServerIdentity
{
  v2 = [(NSMapTable *)self->_associatedHomeScreenConfigurationsForServerIdentity copy];

  return v2;
}

- (id)_childPosterConfigurationForConfiguration:(id)a3
{
  associatedHomeScreenConfigurationsForServerIdentity = self->_associatedHomeScreenConfigurationsForServerIdentity;
  v4 = [a3 _path];
  v5 = [v4 serverIdentity];
  v6 = [(NSMapTable *)associatedHomeScreenConfigurationsForServerIdentity objectForKey:v5];

  return v6;
}

- (id)_childPosterConfigurationForConfigurationUUID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NSMapTable *)self->_associatedHomeScreenConfigurationsForServerIdentity keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 posterUUID];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v13 = [(NSMapTable *)self->_associatedHomeScreenConfigurationsForServerIdentity objectForKey:v10];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)_posterConfigurationForUUID:(id)a3
{
  v4 = a3;
  configurations = self->_configurations;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PRSwitcherConfiguration__posterConfigurationForUUID___block_invoke;
  v9[3] = &unk_1E7845848;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)configurations bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __55__PRSwitcherConfiguration__posterConfigurationForUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _path];
  v4 = [v3 serverIdentity];
  v5 = [v4 posterUUID];
  v6 = [v5 isEqual:*(a1 + 32)];

  return v6;
}

- (void)_initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:.cold.1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:]"];
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0_11(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:.cold.2()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:]"];
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0_11(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[_bs_assert_object isKindOfClass:PRPosterConfigurationClass]", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:.cold.3()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:]"];
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0_11(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[_bs_assert_object isKindOfClass:PRPosterConfigurationClass]", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:.cold.4()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:]"];
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0_11(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[_bs_assert_object isKindOfClass:NSMapTableClass]", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:.cold.5()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:]"];
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0_11(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"_bs_assert_object != nil", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:.cold.6()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:]"];
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0_11(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"_bs_assert_object != nil", v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end