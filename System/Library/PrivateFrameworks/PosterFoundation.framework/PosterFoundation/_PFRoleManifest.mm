@interface _PFRoleManifest
- (NSSet)knownSupportedRoles;
- (NSSet)pf_supportedRoles;
- (NSSet)rawSupportedRoles;
- (NSString)derivedDefaultRole;
- (NSString)pf_defaultRole;
- (NSString)rawSpecifiedDefaultRole;
- (_PFRoleManifest)initWithInfoDictionary:(id)a3;
- (_PFRoleManifest)initWithPropertyList:(id)a3;
- (id)objectForKey:(id)a3 ofClass:(Class)a4;
- (void)_hydrate;
@end

@implementation _PFRoleManifest

- (_PFRoleManifest)initWithPropertyList:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Lspropertylist.isa);
  if (!v5)
  {
    [_PFRoleManifest initWithPropertyList:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [_PFRoleManifest initWithPropertyList:a2];
  }

  v14.receiver = self;
  v14.super_class = _PFRoleManifest;
  v6 = [(_PFRoleManifest *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_propertyList, v5);
    v8 = *MEMORY[0x1E695E4F0];
    v9 = objc_opt_self();
    v10 = [(_PFRoleManifest *)v7 objectForKey:v8 ofClass:v9];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v10;

    if (!v7->_bundleIdentifier)
    {
      v12 = 0;
      goto LABEL_8;
    }

    [(_PFRoleManifest *)v7 _hydrate];
    objc_storeWeak(&v7->_propertyList, 0);
  }

  v12 = v7;
LABEL_8:

  return v12;
}

- (_PFRoleManifest)initWithInfoDictionary:(id)a3
{
  v6 = a3;
  NSClassFromString(&cfstr_Nsdictionary.isa);
  if (!v6)
  {
    [_PFRoleManifest initWithInfoDictionary:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [_PFRoleManifest initWithInfoDictionary:a2];
  }

  v15.receiver = self;
  v15.super_class = _PFRoleManifest;
  v7 = [(_PFRoleManifest *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_infoDictionary, a3);
    v9 = *MEMORY[0x1E695E4F0];
    v10 = objc_opt_self();
    v11 = [(_PFRoleManifest *)v8 objectForKey:v9 ofClass:v10];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v11;

    [(_PFRoleManifest *)v8 _hydrate];
    infoDictionary = v8->_infoDictionary;
    v8->_infoDictionary = 0;
  }

  return v8;
}

- (NSSet)pf_supportedRoles
{
  v3 = [(_PFRoleManifest *)self rawSpecifiedDefaultRole];
  v4 = [(_PFRoleManifest *)self rawSupportedRoles];
  if ([v4 count])
  {
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = [(_PFRoleManifest *)self knownSupportedRoles];
    if ([v5 count])
    {
      v6 = v5;

      v4 = v6;
    }

    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if ([v4 containsObject:v3])
  {
LABEL_8:
    v7 = v4;
    goto LABEL_13;
  }

  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v7 = [v8 setByAddingObject:v3];

  if (!v4)
  {
  }

LABEL_13:

  return v7;
}

- (NSString)pf_defaultRole
{
  v3 = [(_PFRoleManifest *)self rawSpecifiedDefaultRole];
  if (!v3)
  {
    v4 = [(_PFRoleManifest *)self rawSupportedRoles];
    v5 = [v4 count];

    if (v5 == 1)
    {
      v6 = [(_PFRoleManifest *)self rawSupportedRoles];
      v7 = [v6 anyObject];

      if (v7)
      {
        goto LABEL_7;
      }
    }

    v7 = [(_PFRoleManifest *)self derivedDefaultRole];

    if (!v7)
    {
      goto LABEL_7;
    }

    v3 = [(_PFRoleManifest *)self derivedDefaultRole];
  }

  v7 = v3;
LABEL_7:
  v8 = v7;

  return v8;
}

- (void)_hydrate
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bundleIdentifier != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (NSSet)rawSupportedRoles
{
  rawSupportedRoles = self->_rawSupportedRoles;
  if (!rawSupportedRoles)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_self();
    v6 = [(_PFRoleManifest *)self objectForKey:@"PRSupportedRoles" ofClass:v5];
    v7 = [v6 bs_mapNoNulls:&__block_literal_global_150];
    v8 = [v4 setWithArray:v7];
    v9 = self->_rawSupportedRoles;
    self->_rawSupportedRoles = v8;

    rawSupportedRoles = self->_rawSupportedRoles;
  }

  v10 = rawSupportedRoles;

  return v10;
}

- (NSSet)knownSupportedRoles
{
  knownSupportedRoles = self->_knownSupportedRoles;
  if (knownSupportedRoles)
  {
    v3 = knownSupportedRoles;
  }

  else
  {
    v5 = *MEMORY[0x1E695E4F0];
    v6 = objc_opt_self();
    v7 = [(_PFRoleManifest *)self objectForKey:v5 ofClass:v6];

    if ([v7 isEqualToString:@"com.apple.PosterBoard"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"com.apple.PosterTester"))
    {
      v3 = 0;
    }

    else
    {
      v8 = objc_opt_new();
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __38___PFRoleManifest_knownSupportedRoles__block_invoke;
      v16 = &unk_1E8189168;
      v17 = v7;
      v18 = v8;
      v9 = v8;
      PFPosterRoleEnumerateAllRoles(&v13);
      v10 = [v9 copy];
      v11 = self->_knownSupportedRoles;
      self->_knownSupportedRoles = v10;

      v3 = self->_knownSupportedRoles;
    }
  }

  return v3;
}

- (NSString)rawSpecifiedDefaultRole
{
  p_rawSpecifiedDefaultRole = &self->_rawSpecifiedDefaultRole;
  rawSpecifiedDefaultRole = self->_rawSpecifiedDefaultRole;
  if (rawSpecifiedDefaultRole)
  {
    v4 = rawSpecifiedDefaultRole;
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [(_PFRoleManifest *)self objectForKey:@"PRDefaultRole" ofClass:v6];

    if (PFPosterRoleIsValid(v7))
    {
      objc_storeStrong(p_rawSpecifiedDefaultRole, v7);
      v4 = *p_rawSpecifiedDefaultRole;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSString)derivedDefaultRole
{
  v3 = [(_PFRoleManifest *)self knownSupportedRoles];
  if ([v3 count] == 1)
  {
    v4 = [(_PFRoleManifest *)self knownSupportedRoles];
    v5 = [v4 anyObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)objectForKey:(id)a3 ofClass:(Class)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_propertyList);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_propertyList);
    v9 = [v8 objectForKey:v6 ofClass:a4];
  }

  else
  {
    v9 = [(NSDictionary *)self->_infoDictionary bs_safeObjectForKey:v6 ofType:a4];
  }

  return v9;
}

- (void)initWithPropertyList:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:LSPropertyListClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPropertyList:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithInfoDictionary:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDictionaryClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithInfoDictionary:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end