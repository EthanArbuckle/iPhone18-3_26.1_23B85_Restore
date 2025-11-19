@interface PRSPosterUpdateHomeScreenAppearancePayload
- (PRSPosterUpdateHomeScreenAppearancePayload)init;
- (PRSPosterUpdateHomeScreenAppearancePayload)initWithCoder:(id)a3;
- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)a3;
- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)a3 gradientColorAppearance:(id)a4;
- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)a3 solidColorAppearance:(id)a4;
- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)a3 updateHomePoster:(id)a4 homeProviderIdentifier:(id)a5;
- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)a3 updateSwitcherPoster:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)rawValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSPosterUpdateHomeScreenAppearancePayload

- (PRSPosterUpdateHomeScreenAppearancePayload)init
{
  v3.receiver = self;
  v3.super_class = PRSPosterUpdateHomeScreenAppearancePayload;
  result = [(PRSPosterUpdatePayload *)&v3 _init];
  if (result)
  {
    result->_updatedAppearanceType = 0;
  }

  return result;
}

- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)a3
{
  result = [(PRSPosterUpdateHomeScreenAppearancePayload *)self init];
  if (result)
  {
    if (a3 > 4)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Undefined apperance type specified %lu", a3];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2];
      }

      [v6 UTF8String];
      result = _bs_set_crash_log_message();
      __break(0);
    }

    else
    {
      result->_updatedAppearanceType = a3;
    }
  }

  return result;
}

- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)a3 solidColorAppearance:(id)a4
{
  v7 = a4;
  NSClassFromString(&cfstr_Prsposterupdat_24.isa);
  if (!v7)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 solidColorAppearance:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 solidColorAppearance:?];
  }

  v8 = [(PRSPosterUpdateHomeScreenAppearancePayload *)self initWithUpdatedAppearanceType:a3];
  if (v8)
  {
    v9 = [v7 copy];
    solidColorAppearance = v8->_solidColorAppearance;
    v8->_solidColorAppearance = v9;
  }

  return v8;
}

- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)a3 gradientColorAppearance:(id)a4
{
  v7 = a4;
  NSClassFromString(&cfstr_Prsposterupdat_24.isa);
  if (!v7)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 gradientColorAppearance:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 gradientColorAppearance:?];
  }

  v8 = [(PRSPosterUpdateHomeScreenAppearancePayload *)self initWithUpdatedAppearanceType:a3];
  if (v8)
  {
    v9 = [v7 copy];
    gradientColorAppearance = v8->_gradientColorAppearance;
    v8->_gradientColorAppearance = v9;
  }

  return v8;
}

- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)a3 updateSwitcherPoster:(id)a4
{
  v8 = a4;
  NSClassFromString(&cfstr_Prsposterupdat_23.isa);
  if (!v8)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 updateSwitcherPoster:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 updateSwitcherPoster:?];
  }

  v9 = [(PRSPosterUpdateHomeScreenAppearancePayload *)self initWithUpdatedAppearanceType:a3];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_switcherProviderUpdateSessionInfo, a4);
  }

  return v10;
}

- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)a3 updateHomePoster:(id)a4 homeProviderIdentifier:(id)a5
{
  v10 = a4;
  v11 = a5;
  v12 = v10;
  NSClassFromString(&cfstr_Prsposterupdat_23.isa);
  if (!v12)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 updateHomePoster:? homeProviderIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 updateHomePoster:? homeProviderIdentifier:?];
  }

  v13 = v11;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v13)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 updateHomePoster:? homeProviderIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 updateHomePoster:? homeProviderIdentifier:?];
  }

  v14 = [(PRSPosterUpdateHomeScreenAppearancePayload *)self initWithUpdatedAppearanceType:a3];
  if (v14)
  {
    v15 = [v13 copy];
    homeProviderIdentifier = v14->_homeProviderIdentifier;
    v14->_homeProviderIdentifier = v15;

    objc_storeStrong(&v14->_homeProviderUpdateSessionInfo, a4);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithUpdatedAppearanceType:", self->_updatedAppearanceType}];
  v5 = [(PRSPosterUpdateColorPayload *)self->_solidColorAppearance copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = [(PRSPosterUpdateColorPayload *)self->_gradientColorAppearance copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  objc_storeStrong((v4 + 32), self->_switcherProviderUpdateSessionInfo);
  objc_storeStrong((v4 + 48), self->_homeProviderUpdateSessionInfo);
  v9 = [(NSString *)self->_homeProviderIdentifier copy];
  v10 = *(v4 + 40);
  *(v4 + 40) = v9;

  return v4;
}

- (PRSPosterUpdateHomeScreenAppearancePayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRSPosterUpdatePayload *)self _init];
  if (v5)
  {
    v5->_updatedAppearanceType = [v4 decodeIntegerForKey:@"_updatedAppearanceType"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_solidColorAppearance"];
    solidColorAppearance = v5->_solidColorAppearance;
    v5->_solidColorAppearance = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"_gradientColorAppearance"];
    gradientColorAppearance = v5->_gradientColorAppearance;
    v5->_gradientColorAppearance = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"_switcherProviderUpdateSessionInfo"];
    switcherProviderUpdateSessionInfo = v5->_switcherProviderUpdateSessionInfo;
    v5->_switcherProviderUpdateSessionInfo = v13;

    v15 = objc_opt_self();
    v16 = [v4 decodeObjectOfClass:v15 forKey:@"_homeProviderIdentifier"];
    homeProviderIdentifier = v5->_homeProviderIdentifier;
    v5->_homeProviderIdentifier = v16;

    v18 = objc_opt_self();
    v19 = [v4 decodeObjectOfClass:v18 forKey:@"_homeProviderUpdateSessionInfo"];
    homeProviderUpdateSessionInfo = v5->_homeProviderUpdateSessionInfo;
    v5->_homeProviderUpdateSessionInfo = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  updatedAppearanceType = self->_updatedAppearanceType;
  v5 = a3;
  [v5 encodeInteger:updatedAppearanceType forKey:@"_updatedAppearanceType"];
  [v5 encodeObject:self->_solidColorAppearance forKey:@"_solidColorAppearance"];
  [v5 encodeObject:self->_gradientColorAppearance forKey:@"_gradientColorAppearance"];
  [v5 encodeObject:self->_switcherProviderUpdateSessionInfo forKey:@"_switcherProviderUpdateSessionInfo"];
  [v5 encodeObject:self->_homeProviderIdentifier forKey:@"_homeProviderIdentifier"];
  [v5 encodeObject:self->_homeProviderUpdateSessionInfo forKey:@"_homeProviderUpdateSessionInfo"];
}

- (id)rawValue
{
  v3 = MEMORY[0x1E695DF90];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_updatedAppearanceType];
  v5 = [v3 dictionaryWithObject:v4 forKey:@"_updatedAppearanceType"];

  solidColorAppearance = self->_solidColorAppearance;
  if (solidColorAppearance)
  {
    v7 = [(PRSPosterUpdateColorPayload *)solidColorAppearance color];
    [v5 setObject:v7 forKeyedSubscript:@"_solidColorAppearance"];
  }

  gradientColorAppearance = self->_gradientColorAppearance;
  if (gradientColorAppearance)
  {
    v9 = [(PRSPosterUpdateColorPayload *)gradientColorAppearance color];
    [v5 setObject:v9 forKeyedSubscript:@"_gradientColorAppearance"];
  }

  homeProviderIdentifier = self->_homeProviderIdentifier;
  if (homeProviderIdentifier)
  {
    v11 = [(NSString *)homeProviderIdentifier copy];
    [v5 setObject:v11 forKeyedSubscript:@"_homeProviderIdentifier"];
  }

  switcherProviderUpdateSessionInfo = self->_switcherProviderUpdateSessionInfo;
  if (switcherProviderUpdateSessionInfo)
  {
    [v5 setObject:switcherProviderUpdateSessionInfo forKeyedSubscript:@"_switcherProviderUpdateSessionInfo"];
  }

  if (self->_homeProviderUpdateSessionInfo)
  {
    [v5 setObject:self->_switcherProviderUpdateSessionInfo forKeyedSubscript:@"_homeProviderUpdateSessionInfo"];
  }

  return v5;
}

- (void)initWithUpdatedAppearanceType:(const char *)a1 .cold.1(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithUpdatedAppearanceType:(char *)a1 solidColorAppearance:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterUpdateColorPayloadClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedAppearanceType:(char *)a1 solidColorAppearance:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedAppearanceType:(char *)a1 gradientColorAppearance:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterUpdateColorPayloadClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedAppearanceType:(char *)a1 gradientColorAppearance:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedAppearanceType:(char *)a1 updateSwitcherPoster:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterUpdateSessionInfoClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedAppearanceType:(char *)a1 updateSwitcherPoster:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedAppearanceType:(char *)a1 updateHomePoster:homeProviderIdentifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterUpdateSessionInfoClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedAppearanceType:(char *)a1 updateHomePoster:homeProviderIdentifier:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedAppearanceType:(char *)a1 updateHomePoster:homeProviderIdentifier:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatedAppearanceType:(char *)a1 updateHomePoster:homeProviderIdentifier:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end