@interface PRSPosterUpdateHomeScreenAppearancePayload
- (PRSPosterUpdateHomeScreenAppearancePayload)init;
- (PRSPosterUpdateHomeScreenAppearancePayload)initWithCoder:(id)coder;
- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)type;
- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)type gradientColorAppearance:(id)appearance;
- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)type solidColorAppearance:(id)appearance;
- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)type updateHomePoster:(id)poster homeProviderIdentifier:(id)identifier;
- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)type updateSwitcherPoster:(id)poster;
- (id)copyWithZone:(_NSZone *)zone;
- (id)rawValue;
- (void)encodeWithCoder:(id)coder;
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

- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)type
{
  result = [(PRSPosterUpdateHomeScreenAppearancePayload *)self init];
  if (result)
  {
    if (type > 4)
    {
      type = [MEMORY[0x1E696AEC0] stringWithFormat:@"Undefined apperance type specified %lu", type];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2];
      }

      [type UTF8String];
      result = _bs_set_crash_log_message();
      __break(0);
    }

    else
    {
      result->_updatedAppearanceType = type;
    }
  }

  return result;
}

- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)type solidColorAppearance:(id)appearance
{
  appearanceCopy = appearance;
  NSClassFromString(&cfstr_Prsposterupdat_24.isa);
  if (!appearanceCopy)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 solidColorAppearance:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 solidColorAppearance:?];
  }

  v8 = [(PRSPosterUpdateHomeScreenAppearancePayload *)self initWithUpdatedAppearanceType:type];
  if (v8)
  {
    v9 = [appearanceCopy copy];
    solidColorAppearance = v8->_solidColorAppearance;
    v8->_solidColorAppearance = v9;
  }

  return v8;
}

- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)type gradientColorAppearance:(id)appearance
{
  appearanceCopy = appearance;
  NSClassFromString(&cfstr_Prsposterupdat_24.isa);
  if (!appearanceCopy)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 gradientColorAppearance:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 gradientColorAppearance:?];
  }

  v8 = [(PRSPosterUpdateHomeScreenAppearancePayload *)self initWithUpdatedAppearanceType:type];
  if (v8)
  {
    v9 = [appearanceCopy copy];
    gradientColorAppearance = v8->_gradientColorAppearance;
    v8->_gradientColorAppearance = v9;
  }

  return v8;
}

- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)type updateSwitcherPoster:(id)poster
{
  posterCopy = poster;
  NSClassFromString(&cfstr_Prsposterupdat_23.isa);
  if (!posterCopy)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 updateSwitcherPoster:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 updateSwitcherPoster:?];
  }

  v9 = [(PRSPosterUpdateHomeScreenAppearancePayload *)self initWithUpdatedAppearanceType:type];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_switcherProviderUpdateSessionInfo, poster);
  }

  return v10;
}

- (PRSPosterUpdateHomeScreenAppearancePayload)initWithUpdatedAppearanceType:(unint64_t)type updateHomePoster:(id)poster homeProviderIdentifier:(id)identifier
{
  posterCopy = poster;
  identifierCopy = identifier;
  v12 = posterCopy;
  NSClassFromString(&cfstr_Prsposterupdat_23.isa);
  if (!v12)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 updateHomePoster:? homeProviderIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 updateHomePoster:? homeProviderIdentifier:?];
  }

  v13 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v13)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 updateHomePoster:? homeProviderIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdateHomeScreenAppearancePayload initWithUpdatedAppearanceType:a2 updateHomePoster:? homeProviderIdentifier:?];
  }

  v14 = [(PRSPosterUpdateHomeScreenAppearancePayload *)self initWithUpdatedAppearanceType:type];
  if (v14)
  {
    v15 = [v13 copy];
    homeProviderIdentifier = v14->_homeProviderIdentifier;
    v14->_homeProviderIdentifier = v15;

    objc_storeStrong(&v14->_homeProviderUpdateSessionInfo, poster);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithUpdatedAppearanceType:", self->_updatedAppearanceType}];
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

- (PRSPosterUpdateHomeScreenAppearancePayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(PRSPosterUpdatePayload *)self _init];
  if (_init)
  {
    _init->_updatedAppearanceType = [coderCopy decodeIntegerForKey:@"_updatedAppearanceType"];
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_solidColorAppearance"];
    solidColorAppearance = _init->_solidColorAppearance;
    _init->_solidColorAppearance = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"_gradientColorAppearance"];
    gradientColorAppearance = _init->_gradientColorAppearance;
    _init->_gradientColorAppearance = v10;

    v12 = objc_opt_self();
    v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"_switcherProviderUpdateSessionInfo"];
    switcherProviderUpdateSessionInfo = _init->_switcherProviderUpdateSessionInfo;
    _init->_switcherProviderUpdateSessionInfo = v13;

    v15 = objc_opt_self();
    v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"_homeProviderIdentifier"];
    homeProviderIdentifier = _init->_homeProviderIdentifier;
    _init->_homeProviderIdentifier = v16;

    v18 = objc_opt_self();
    v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"_homeProviderUpdateSessionInfo"];
    homeProviderUpdateSessionInfo = _init->_homeProviderUpdateSessionInfo;
    _init->_homeProviderUpdateSessionInfo = v19;
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  updatedAppearanceType = self->_updatedAppearanceType;
  coderCopy = coder;
  [coderCopy encodeInteger:updatedAppearanceType forKey:@"_updatedAppearanceType"];
  [coderCopy encodeObject:self->_solidColorAppearance forKey:@"_solidColorAppearance"];
  [coderCopy encodeObject:self->_gradientColorAppearance forKey:@"_gradientColorAppearance"];
  [coderCopy encodeObject:self->_switcherProviderUpdateSessionInfo forKey:@"_switcherProviderUpdateSessionInfo"];
  [coderCopy encodeObject:self->_homeProviderIdentifier forKey:@"_homeProviderIdentifier"];
  [coderCopy encodeObject:self->_homeProviderUpdateSessionInfo forKey:@"_homeProviderUpdateSessionInfo"];
}

- (id)rawValue
{
  v3 = MEMORY[0x1E695DF90];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_updatedAppearanceType];
  v5 = [v3 dictionaryWithObject:v4 forKey:@"_updatedAppearanceType"];

  solidColorAppearance = self->_solidColorAppearance;
  if (solidColorAppearance)
  {
    color = [(PRSPosterUpdateColorPayload *)solidColorAppearance color];
    [v5 setObject:color forKeyedSubscript:@"_solidColorAppearance"];
  }

  gradientColorAppearance = self->_gradientColorAppearance;
  if (gradientColorAppearance)
  {
    color2 = [(PRSPosterUpdateColorPayload *)gradientColorAppearance color];
    [v5 setObject:color2 forKeyedSubscript:@"_gradientColorAppearance"];
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