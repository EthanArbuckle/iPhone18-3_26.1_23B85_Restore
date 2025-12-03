@interface PRPosterFocusConfiguration
+ (id)decodeObjectWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFocusConfiguration:(id)configuration;
- (NSString)description;
- (PRPosterFocusConfiguration)initWithActivityIdentifier:(id)identifier activityUUID:(id)d;
- (PRPosterFocusConfiguration)initWithBSXPCCoder:(id)coder;
- (PRPosterFocusConfiguration)initWithCoder:(id)coder;
- (id)encodeJSON;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterFocusConfiguration

- (PRPosterFocusConfiguration)initWithActivityIdentifier:(id)identifier activityUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v9 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v9)
  {
    [PRPosterFocusConfiguration initWithActivityIdentifier:a2 activityUUID:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterFocusConfiguration initWithActivityIdentifier:a2 activityUUID:?];
  }

  v10 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v10)
  {
    [PRPosterFocusConfiguration initWithActivityIdentifier:a2 activityUUID:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterFocusConfiguration initWithActivityIdentifier:a2 activityUUID:?];
  }

  v17.receiver = self;
  v17.super_class = PRPosterFocusConfiguration;
  v11 = [(PRPosterFocusConfiguration *)&v17 init];
  if (v11)
  {
    v12 = [v9 copy];
    activityIdentifier = v11->_activityIdentifier;
    v11->_activityIdentifier = v12;

    v14 = [v10 copy];
    activityUUID = v11->_activityUUID;
    v11->_activityUUID = v14;
  }

  return v11;
}

- (PRPosterFocusConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"activityIdentifier"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"activityUUID"];

  v9 = [(PRPosterFocusConfiguration *)self initWithActivityIdentifier:v6 activityUUID:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activityIdentifier = [(PRPosterFocusConfiguration *)self activityIdentifier];
  [coderCopy encodeObject:activityIdentifier forKey:@"activityIdentifier"];

  activityUUID = [(PRPosterFocusConfiguration *)self activityUUID];
  [coderCopy encodeObject:activityUUID forKey:@"activityUUID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PRPosterFocusConfiguration *)self isEqualToFocusConfiguration:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToFocusConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy == self)
  {
    v10 = 1;
  }

  else if (configurationCopy)
  {
    activityIdentifier = [(PRPosterFocusConfiguration *)self activityIdentifier];
    activityIdentifier2 = [(PRPosterFocusConfiguration *)v5 activityIdentifier];
    if (BSEqualObjects())
    {
      activityUUID = [(PRPosterFocusConfiguration *)self activityUUID];
      activityUUID2 = [(PRPosterFocusConfiguration *)v5 activityUUID];
      v10 = BSEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  activityIdentifier = [(PRPosterFocusConfiguration *)self activityIdentifier];
  activityUUID = [(PRPosterFocusConfiguration *)self activityUUID];
  builder = [MEMORY[0x1E698E6B8] builder];
  v6 = [builder appendString:activityIdentifier];
  v7 = [builder appendObject:activityUUID];
  v8 = [builder hash];

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  activityUUID = [(PRPosterFocusConfiguration *)self activityUUID];
  v5 = [v3 appendObject:activityUUID withName:@"activityUUID"];

  activityIdentifier = [(PRPosterFocusConfiguration *)self activityIdentifier];
  v7 = [v3 appendObject:activityIdentifier withName:@"activityIdentifier"];

  build = [v3 build];

  return build;
}

- (PRPosterFocusConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"activityIdentifier"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"activityUUID"];

  v9 = [(PRPosterFocusConfiguration *)self initWithActivityIdentifier:v6 activityUUID:v8];
  return v9;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  activityIdentifier = [(PRPosterFocusConfiguration *)self activityIdentifier];
  [coderCopy encodeObject:activityIdentifier forKey:@"activityIdentifier"];

  activityUUID = [(PRPosterFocusConfiguration *)self activityUUID];
  [coderCopy encodeObject:activityUUID forKey:@"activityUUID"];
}

- (id)encodeJSON
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  activityIdentifier = [(PRPosterFocusConfiguration *)self activityIdentifier];
  [dictionary bs_setSafeObject:activityIdentifier forKey:@"activityIdentifier"];

  activityUUID = [(PRPosterFocusConfiguration *)self activityUUID];
  uUIDString = [activityUUID UUIDString];
  [dictionary bs_setSafeObject:uUIDString forKey:@"activityUUID"];

  attributeType = [(PRPosterFocusConfiguration *)self attributeType];
  [dictionary bs_setSafeObject:attributeType forKey:@"attributeType"];

  v12 = 0;
  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:&v12];
  v9 = v12;
  if (v9)
  {
    v10 = PRLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(PRPosterMetadata *)self encodeJSON];
    }
  }

  return v8;
}

+ (id)decodeObjectWithJSON:(id)n
{
  v12 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v12];
  v4 = v12;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AFB0]);
    v6 = [v3 objectForKeyedSubscript:@"activityUUID"];
    v7 = [v5 initWithUUIDString:v6];

    v8 = [PRPosterFocusConfiguration alloc];
    v9 = [v3 objectForKeyedSubscript:@"activityIdentifier"];
    v10 = [(PRPosterFocusConfiguration *)v8 initWithActivityIdentifier:v9 activityUUID:v7];
  }

  else
  {
    v7 = PRLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(PRPosterMetadata *)v4 decodeObjectWithJSON:v7];
    }

    v10 = 0;
  }

  return v10;
}

- (void)initWithActivityIdentifier:(char *)a1 activityUUID:.cold.1(char *a1)
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

- (void)initWithActivityIdentifier:(char *)a1 activityUUID:.cold.2(char *a1)
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

- (void)initWithActivityIdentifier:(char *)a1 activityUUID:.cold.3(char *a1)
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

- (void)initWithActivityIdentifier:(char *)a1 activityUUID:.cold.4(char *a1)
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