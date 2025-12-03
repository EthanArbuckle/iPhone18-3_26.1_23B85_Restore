@interface PRMutableEditingLook
- (PRMutableEditingLook)initWithIdentifier:(id)identifier displayName:(id)name initialTimeFontConfiguration:(id)configuration initialTitleColor:(id)color;
- (PRTimeFontConfiguration)initialTimeFontConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initialTitleColor;
- (void)setInitialTimeFontConfiguration:(id)configuration;
- (void)setInitialTitleColor:(id)color;
@end

@implementation PRMutableEditingLook

- (PRMutableEditingLook)initWithIdentifier:(id)identifier displayName:(id)name initialTimeFontConfiguration:(id)configuration initialTitleColor:(id)color
{
  identifierCopy = identifier;
  nameCopy = name;
  configurationCopy = configuration;
  colorCopy = color;
  v28.receiver = self;
  v28.super_class = PRMutableEditingLook;
  v15 = [(PREditingLook *)&v28 initWithIdentifier:identifierCopy displayName:nameCopy initialTimeFontConfiguration:configurationCopy initialTitleColor:colorCopy];
  if (v15)
  {
    v16 = [nameCopy copy];
    displayName = v15->_displayName;
    v15->_displayName = v16;

    v18 = [identifierCopy copy];
    identifier = v15->_identifier;
    v15->_identifier = v18;

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0 && colorCopy && (v21 & 1) == 0)
    {
      [PRMutableEditingLook initWithIdentifier:a2 displayName:? initialTimeFontConfiguration:? initialTitleColor:?];
    }

    if (colorCopy)
    {
      if (v21)
      {
        v22 = colorCopy;
      }

      else
      {
        v22 = [[PRPosterColor alloc] initWithColor:colorCopy preferredStyle:2];
      }

      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = [[PREditingLookProperties alloc] initWithTimeFontConfiguration:configurationCopy titlePosterColor:v23];
    v25 = [(PREditingLookProperties *)v24 copy];
    initialProperties = v15->_initialProperties;
    v15->_initialProperties = v25;
  }

  return v15;
}

- (PRTimeFontConfiguration)initialTimeFontConfiguration
{
  initialProperties = [(PRMutableEditingLook *)self initialProperties];
  timeFontConfiguration = [initialProperties timeFontConfiguration];

  return timeFontConfiguration;
}

- (id)initialTitleColor
{
  initialProperties = [(PRMutableEditingLook *)self initialProperties];
  titlePosterColor = [initialProperties titlePosterColor];

  return titlePosterColor;
}

- (void)setInitialTimeFontConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [PREditingLookProperties alloc];
  initialProperties = [(PRMutableEditingLook *)self initialProperties];
  titlePosterColor = [initialProperties titlePosterColor];
  v8 = [(PREditingLookProperties *)v5 initWithTimeFontConfiguration:configurationCopy titlePosterColor:titlePosterColor];

  [(PRMutableEditingLook *)self setInitialProperties:v8];
}

- (void)setInitialTitleColor:(id)color
{
  colorCopy = color;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0 && colorCopy && (v6 & 1) == 0)
  {
    [PRMutableEditingLook setInitialTitleColor:a2];
  }

  if (colorCopy)
  {
    if (v6)
    {
      v7 = colorCopy;
    }

    else
    {
      v7 = [[PRPosterColor alloc] initWithColor:colorCopy preferredStyle:2];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [PREditingLookProperties alloc];
  initialProperties = [(PRMutableEditingLook *)self initialProperties];
  timeFontConfiguration = [initialProperties timeFontConfiguration];
  v12 = [(PREditingLookProperties *)v9 initWithTimeFontConfiguration:timeFontConfiguration titlePosterColor:v8];

  [(PRMutableEditingLook *)self setInitialProperties:v12];
}

- (id)copyWithZone:(_NSZone *)zone
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