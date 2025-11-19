@interface PRMutableEditingLook
- (PRMutableEditingLook)initWithIdentifier:(id)a3 displayName:(id)a4 initialTimeFontConfiguration:(id)a5 initialTitleColor:(id)a6;
- (PRTimeFontConfiguration)initialTimeFontConfiguration;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initialTitleColor;
- (void)setInitialTimeFontConfiguration:(id)a3;
- (void)setInitialTitleColor:(id)a3;
@end

@implementation PRMutableEditingLook

- (PRMutableEditingLook)initWithIdentifier:(id)a3 displayName:(id)a4 initialTimeFontConfiguration:(id)a5 initialTitleColor:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28.receiver = self;
  v28.super_class = PRMutableEditingLook;
  v15 = [(PREditingLook *)&v28 initWithIdentifier:v11 displayName:v12 initialTimeFontConfiguration:v13 initialTitleColor:v14];
  if (v15)
  {
    v16 = [v12 copy];
    displayName = v15->_displayName;
    v15->_displayName = v16;

    v18 = [v11 copy];
    identifier = v15->_identifier;
    v15->_identifier = v18;

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0 && v14 && (v21 & 1) == 0)
    {
      [PRMutableEditingLook initWithIdentifier:a2 displayName:? initialTimeFontConfiguration:? initialTitleColor:?];
    }

    if (v14)
    {
      if (v21)
      {
        v22 = v14;
      }

      else
      {
        v22 = [[PRPosterColor alloc] initWithColor:v14 preferredStyle:2];
      }

      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = [[PREditingLookProperties alloc] initWithTimeFontConfiguration:v13 titlePosterColor:v23];
    v25 = [(PREditingLookProperties *)v24 copy];
    initialProperties = v15->_initialProperties;
    v15->_initialProperties = v25;
  }

  return v15;
}

- (PRTimeFontConfiguration)initialTimeFontConfiguration
{
  v2 = [(PRMutableEditingLook *)self initialProperties];
  v3 = [v2 timeFontConfiguration];

  return v3;
}

- (id)initialTitleColor
{
  v2 = [(PRMutableEditingLook *)self initialProperties];
  v3 = [v2 titlePosterColor];

  return v3;
}

- (void)setInitialTimeFontConfiguration:(id)a3
{
  v4 = a3;
  v5 = [PREditingLookProperties alloc];
  v6 = [(PRMutableEditingLook *)self initialProperties];
  v7 = [v6 titlePosterColor];
  v8 = [(PREditingLookProperties *)v5 initWithTimeFontConfiguration:v4 titlePosterColor:v7];

  [(PRMutableEditingLook *)self setInitialProperties:v8];
}

- (void)setInitialTitleColor:(id)a3
{
  v13 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0 && v13 && (v6 & 1) == 0)
  {
    [PRMutableEditingLook setInitialTitleColor:a2];
  }

  if (v13)
  {
    if (v6)
    {
      v7 = v13;
    }

    else
    {
      v7 = [[PRPosterColor alloc] initWithColor:v13 preferredStyle:2];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [PREditingLookProperties alloc];
  v10 = [(PRMutableEditingLook *)self initialProperties];
  v11 = [v10 timeFontConfiguration];
  v12 = [(PREditingLookProperties *)v9 initWithTimeFontConfiguration:v11 titlePosterColor:v8];

  [(PRMutableEditingLook *)self setInitialProperties:v12];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRImmutableEditingLook alloc];

  return [(PREditingLook *)v4 initWithLook:self];
}

- (void)initWithIdentifier:(const char *)a1 displayName:initialTimeFontConfiguration:initialTitleColor:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"isValidColor", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setInitialTitleColor:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"isValidColor", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end