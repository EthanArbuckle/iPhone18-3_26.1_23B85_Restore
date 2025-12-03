@interface PRSwitcherConfiguration
- (NSMapTable)associatedHomeScreenConfigurationsForServerIdentity;
- (NSSet)heldAssociatedConfigurations;
- (PRPosterCollection)collection;
- (id)_childPosterConfigurationForConfiguration:(id)configuration;
- (id)_childPosterConfigurationForConfigurationUUID:(id)d;
- (id)_initWithCollection:(id)collection activeConfiguration:(id)configuration;
- (id)_initWithConfigurations:(id)configurations selectedConfiguration:(id)configuration activeConfiguration:(id)activeConfiguration associatedHomeScreenConfigurations:(id)screenConfigurations;
- (id)_posterConfigurationForUUID:(id)d;
- (id)focusConfigurationForPoster:(id)poster;
- (id)homeConfigurationForPoster:(id)poster;
- (id)homeScreenPosterConfigurationForPosterConfiguration:(id)configuration;
- (id)lastModifiedDateForPoster:(id)poster;
- (id)metadataForPoster:(id)poster;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)primaryPosterIdentityForHomeScreenPosterConfiguration:(id)configuration;
- (id)suggestionMetadataForPoster:(id)poster;
@end

@implementation PRSwitcherConfiguration

- (id)_initWithConfigurations:(id)configurations selectedConfiguration:(id)configuration activeConfiguration:(id)activeConfiguration associatedHomeScreenConfigurations:(id)screenConfigurations
{
  configurationsCopy = configurations;
  configurationCopy = configuration;
  activeConfigurationCopy = activeConfiguration;
  screenConfigurationsCopy = screenConfigurations;
  v14 = configurationsCopy;
  NSClassFromString(&cfstr_Nsarray.isa);
  if (!v14)
  {
    [PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:];
  }

  v15 = configurationCopy;
  if (v15)
  {
    NSClassFromString(&cfstr_Prposterconfig.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:];
    }
  }

  v16 = activeConfigurationCopy;
  if (v16)
  {
    NSClassFromString(&cfstr_Prposterconfig.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSwitcherConfiguration _initWithConfigurations:selectedConfiguration:activeConfiguration:associatedHomeScreenConfigurations:];
    }
  }

  v17 = screenConfigurationsCopy;
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
    objc_storeStrong(&v18->_activeConfiguration, activeConfiguration);
    objc_storeStrong(&v19->_selectedConfiguration, configuration);
    v20 = [v14 copy];
    configurations = v19->_configurations;
    v19->_configurations = v20;

    v22 = [v17 copy];
    associatedHomeScreenConfigurationsForServerIdentity = v19->_associatedHomeScreenConfigurationsForServerIdentity;
    v19->_associatedHomeScreenConfigurationsForServerIdentity = v22;
  }

  return v19;
}

- (id)_initWithCollection:(id)collection activeConfiguration:(id)configuration
{
  collectionCopy = collection;
  configurationCopy = configuration;
  selectedPoster = [collectionCopy selectedPoster];

  selfCopy = 0;
  if (configurationCopy && selectedPoster)
  {
    orderedPosters = [collectionCopy orderedPosters];
    array = [orderedPosters array];
    selectedPoster2 = [collectionCopy selectedPoster];
    associatedHomeScreenConfigurationsMap = [collectionCopy associatedHomeScreenConfigurationsMap];
    v14 = [(PRSwitcherConfiguration *)self _initWithConfigurations:array selectedConfiguration:selectedPoster2 activeConfiguration:configurationCopy associatedHomeScreenConfigurations:associatedHomeScreenConfigurationsMap];

    if (v14)
    {
      [v14 setCollection:collectionCopy];
    }

    self = v14;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PRMutableSwitcherConfiguration allocWithZone:zone];
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
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    configurations = [(PRSwitcherConfiguration *)self configurations];
    v6 = [configurations countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(configurations);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          associatedHomeScreenConfigurationsForServerIdentity = [(PRSwitcherConfiguration *)self associatedHomeScreenConfigurationsForServerIdentity];
          _path = [v10 _path];
          serverIdentity = [_path serverIdentity];
          v14 = [associatedHomeScreenConfigurationsForServerIdentity objectForKey:serverIdentity];

          if (v14)
          {
            _path2 = [v10 _path];
            isServerPosterPath = [_path2 isServerPosterPath];

            if (isServerPosterPath)
            {
              _path3 = [v10 _path];
              serverIdentity2 = [_path3 serverIdentity];
              posterUUID = [serverIdentity2 posterUUID];
              [strongToStrongObjectsMapTable setObject:v14 forKey:posterUUID];
            }
          }
        }

        v7 = [configurations countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v7);
    }

    v20 = [PRPosterCollection alloc];
    selectedConfiguration = [(PRSwitcherConfiguration *)self selectedConfiguration];
    v22 = MEMORY[0x1E695DFB8];
    configurations2 = [(PRSwitcherConfiguration *)self configurations];
    v24 = [v22 orderedSetWithArray:configurations2];
    v25 = [(PRPosterCollection *)v20 initWithSelectedPoster:selectedConfiguration posters:v24 associatedPosterMap:strongToStrongObjectsMapTable attributeProvider:0];
    v26 = self->_collection;
    self->_collection = v25;

    v3 = self->_collection;
  }

  return v3;
}

- (id)focusConfigurationForPoster:(id)poster
{
  posterCopy = poster;
  collection = [(PRSwitcherConfiguration *)self collection];
  v6 = [collection attributeForPoster:posterCopy ofType:@"PRPosterRoleAttributeTypeFocusConfiguration"];

  return v6;
}

- (id)homeConfigurationForPoster:(id)poster
{
  posterCopy = poster;
  collection = [(PRSwitcherConfiguration *)self collection];
  v6 = [collection attributeForPoster:posterCopy ofType:@"PRPosterRoleAttributeTypeHomeScreenConfiguration"];

  return v6;
}

- (id)homeScreenPosterConfigurationForPosterConfiguration:(id)configuration
{
  associatedHomeScreenConfigurationsForServerIdentity = self->_associatedHomeScreenConfigurationsForServerIdentity;
  _path = [configuration _path];
  serverIdentity = [_path serverIdentity];
  v6 = [(NSMapTable *)associatedHomeScreenConfigurationsForServerIdentity objectForKey:serverIdentity];

  return v6;
}

- (id)metadataForPoster:(id)poster
{
  posterCopy = poster;
  collection = [(PRSwitcherConfiguration *)self collection];
  v6 = [collection attributeForPoster:posterCopy ofType:@"PRPosterRoleAttributeTypeMetadata"];

  return v6;
}

- (id)suggestionMetadataForPoster:(id)poster
{
  posterCopy = poster;
  collection = [(PRSwitcherConfiguration *)self collection];
  v6 = [collection attributeForPoster:posterCopy ofType:@"PRPosterRoleAttributeTypeSuggestionMetadata"];

  return v6;
}

- (id)lastModifiedDateForPoster:(id)poster
{
  posterCopy = poster;
  collection = [(PRSwitcherConfiguration *)self collection];
  v6 = [collection attributeForPoster:posterCopy ofType:@"PRPosterRoleAttributeTypeUsageMetadata"];

  lastModifiedDate = [v6 lastModifiedDate];

  return lastModifiedDate;
}

- (id)primaryPosterIdentityForHomeScreenPosterConfiguration:(id)configuration
{
  v19 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
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
        if ([v11 isEqual:configurationCopy])
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
  objectEnumerator = [(NSMapTable *)self->_associatedHomeScreenConfigurationsForServerIdentity objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v5 = allObjects;
  if (allObjects)
  {
    v6 = allObjects;
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

- (id)_childPosterConfigurationForConfiguration:(id)configuration
{
  associatedHomeScreenConfigurationsForServerIdentity = self->_associatedHomeScreenConfigurationsForServerIdentity;
  _path = [configuration _path];
  serverIdentity = [_path serverIdentity];
  v6 = [(NSMapTable *)associatedHomeScreenConfigurationsForServerIdentity objectForKey:serverIdentity];

  return v6;
}

- (id)_childPosterConfigurationForConfigurationUUID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  keyEnumerator = [(NSMapTable *)self->_associatedHomeScreenConfigurationsForServerIdentity keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        posterUUID = [v10 posterUUID];
        v12 = [posterUUID isEqual:dCopy];

        if (v12)
        {
          v13 = [(NSMapTable *)self->_associatedHomeScreenConfigurationsForServerIdentity objectForKey:v10];
          goto LABEL_11;
        }
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)_posterConfigurationForUUID:(id)d
{
  dCopy = d;
  configurations = self->_configurations;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PRSwitcherConfiguration__posterConfigurationForUUID___block_invoke;
  v9[3] = &unk_1E7845848;
  v10 = dCopy;
  v6 = dCopy;
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