@interface PRPosterConfigurableOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfigurableOptions:(id)options;
- (NSString)description;
- (PRPosterConfigurableOptions)initWithBSXPCCoder:(id)coder;
- (PRPosterConfigurableOptions)initWithCoder:(id)coder;
- (PRPosterConfigurableOptions)initWithDisplayNameLocalizationKey:(id)key ambientSupportedDataLayout:(int64_t)layout preferredTimeFontConfigurations:(id)configurations preferredTitleColors:(id)colors luminance:(double)luminance preferredHomeScreenConfiguration:(id)configuration preferredRenderingConfiguration:(id)renderingConfiguration;
- (id)_initWithDisplayNameLocalizationKey:(id)key role:(id)role ambientSupportedDataLayout:(int64_t)layout preferredTimeFontConfigurations:(id)configurations preferredTitleColors:(id)colors luminance:(double)luminance preferredHomeScreenConfiguration:(id)configuration preferredRenderingConfiguration:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterConfigurableOptions

- (id)_initWithDisplayNameLocalizationKey:(id)key role:(id)role ambientSupportedDataLayout:(int64_t)layout preferredTimeFontConfigurations:(id)configurations preferredTitleColors:(id)colors luminance:(double)luminance preferredHomeScreenConfiguration:(id)configuration preferredRenderingConfiguration:(id)self0
{
  roleCopy = role;
  v18 = [(PRPosterConfigurableOptions *)self initWithDisplayNameLocalizationKey:key ambientSupportedDataLayout:layout preferredTimeFontConfigurations:configurations preferredTitleColors:colors luminance:configuration preferredHomeScreenConfiguration:renderingConfiguration preferredRenderingConfiguration:luminance];
  v19 = v18;
  if (v18)
  {
    if (roleCopy)
    {
      v20 = roleCopy;
    }

    else
    {
      v20 = @"PRPosterRoleLockScreen";
    }

    objc_storeStrong(&v18->_role, v20);
  }

  return v19;
}

- (PRPosterConfigurableOptions)initWithDisplayNameLocalizationKey:(id)key ambientSupportedDataLayout:(int64_t)layout preferredTimeFontConfigurations:(id)configurations preferredTitleColors:(id)colors luminance:(double)luminance preferredHomeScreenConfiguration:(id)configuration preferredRenderingConfiguration:(id)renderingConfiguration
{
  keyCopy = key;
  configurationsCopy = configurations;
  colorsCopy = colors;
  configurationCopy = configuration;
  renderingConfigurationCopy = renderingConfiguration;
  v31.receiver = self;
  v31.super_class = PRPosterConfigurableOptions;
  v22 = [(PRPosterConfigurableOptions *)&v31 init];
  if (v22)
  {
    v23 = keyCopy;
    if (v23)
    {
      NSClassFromString(&cfstr_Nsstring.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PRPosterConfigurableOptions initWithDisplayNameLocalizationKey:a2 ambientSupportedDataLayout:? preferredTimeFontConfigurations:? preferredTitleColors:? luminance:? preferredHomeScreenConfiguration:? preferredRenderingConfiguration:?];
      }
    }

    v29 = a2;

    v24 = configurationsCopy;
    if (v24)
    {
      NSClassFromString(&cfstr_Nsarray.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PRPosterConfigurableOptions initWithDisplayNameLocalizationKey:v29 ambientSupportedDataLayout:? preferredTimeFontConfigurations:? preferredTitleColors:? luminance:? preferredHomeScreenConfiguration:? preferredRenderingConfiguration:?];
      }
    }

    v30 = keyCopy;
    layoutCopy = layout;

    v26 = colorsCopy;
    if (v26)
    {
      NSClassFromString(&cfstr_Nsarray.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PRPosterConfigurableOptions initWithDisplayNameLocalizationKey:v29 ambientSupportedDataLayout:? preferredTimeFontConfigurations:? preferredTitleColors:? luminance:? preferredHomeScreenConfiguration:? preferredRenderingConfiguration:?];
      }
    }

    v27 = configurationCopy;
    if (v27)
    {
      NSClassFromString(&cfstr_Prposterdescri_1.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PRPosterConfigurableOptions initWithDisplayNameLocalizationKey:v29 ambientSupportedDataLayout:? preferredTimeFontConfigurations:? preferredTitleColors:? luminance:? preferredHomeScreenConfiguration:? preferredRenderingConfiguration:?];
      }
    }

    [(PRPosterConfigurableOptions *)v22 setDisplayNameLocalizationKey:v23, v29];
    [(PRPosterConfigurableOptions *)v22 setAmbientSupportedDataLayout:layoutCopy];
    [(PRPosterConfigurableOptions *)v22 setPreferredTimeFontConfigurations:v24];
    [(PRPosterConfigurableOptions *)v22 setPreferredTitleColors:v26];
    [(PRPosterConfigurableOptions *)v22 setLuminance:luminance];
    [(PRPosterConfigurableOptions *)v22 setPreferredHomeScreenConfiguration:v27];
    [(PRPosterConfigurableOptions *)v22 setPreferredRenderingConfiguration:renderingConfigurationCopy];
    keyCopy = v30;
  }

  return v22;
}

- (PRPosterConfigurableOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayNameLocalizationKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"role"];
  v7 = [coderCopy decodeInt64ForKey:@"ambientSupportedDataLayout"];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v9 = [coderCopy decodeArrayOfObjectsOfClasses:v8 forKey:@"preferredTitleColors"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeArrayOfObjectsOfClasses:v13 forKey:@"preferredTimeFontConfigurations"];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"luminance"];
  v16 = v15;
  if (v15)
  {
    [v15 doubleValue];
    v18 = v17;
  }

  else
  {
    v18 = 0.5;
  }

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredHomeScreenConfiguration"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredRenderingConfiguration"];
  v21 = [(PRPosterConfigurableOptions *)self _initWithDisplayNameLocalizationKey:v5 role:v6 ambientSupportedDataLayout:v7 preferredTimeFontConfigurations:v14 preferredTitleColors:v9 luminance:v19 preferredHomeScreenConfiguration:v18 preferredRenderingConfiguration:v20];

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayNameLocalizationKey = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
  [coderCopy encodeObject:displayNameLocalizationKey forKey:@"displayNameLocalizationKey"];

  role = [(PRPosterConfigurableOptions *)self role];

  if (role)
  {
    role2 = [(PRPosterConfigurableOptions *)self role];
    [coderCopy encodeObject:role2 forKey:@"role"];
  }

  [coderCopy encodeInt64:-[PRPosterConfigurableOptions ambientSupportedDataLayout](self forKey:{"ambientSupportedDataLayout"), @"ambientSupportedDataLayout"}];
  preferredTimeFontConfigurations = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
  [coderCopy encodeObject:preferredTimeFontConfigurations forKey:@"preferredTimeFontConfigurations"];

  preferredTitleColors = [(PRPosterConfigurableOptions *)self preferredTitleColors];
  [coderCopy encodeObject:preferredTitleColors forKey:@"preferredTitleColors"];

  v9 = MEMORY[0x1E696AD98];
  [(PRPosterConfigurableOptions *)self luminance];
  v10 = [v9 numberWithDouble:?];
  [coderCopy encodeObject:v10 forKey:@"luminance"];

  preferredHomeScreenConfiguration = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
  [coderCopy encodeObject:preferredHomeScreenConfiguration forKey:@"preferredHomeScreenConfiguration"];

  preferredRenderingConfiguration = [(PRPosterConfigurableOptions *)self preferredRenderingConfiguration];
  [coderCopy encodeObject:preferredRenderingConfiguration forKey:@"preferredRenderingConfiguration"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRPosterConfigurableOptions alloc];
  displayNameLocalizationKey = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
  role = [(PRPosterConfigurableOptions *)self role];
  ambientSupportedDataLayout = [(PRPosterConfigurableOptions *)self ambientSupportedDataLayout];
  preferredTimeFontConfigurations = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
  preferredTitleColors = [(PRPosterConfigurableOptions *)self preferredTitleColors];
  [(PRPosterConfigurableOptions *)self luminance];
  v11 = v10;
  preferredHomeScreenConfiguration = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
  preferredRenderingConfiguration = [(PRPosterConfigurableOptions *)self preferredRenderingConfiguration];
  v14 = [(PRPosterConfigurableOptions *)v4 _initWithDisplayNameLocalizationKey:displayNameLocalizationKey role:role ambientSupportedDataLayout:ambientSupportedDataLayout preferredTimeFontConfigurations:preferredTimeFontConfigurations preferredTitleColors:preferredTitleColors luminance:preferredHomeScreenConfiguration preferredHomeScreenConfiguration:v11 preferredRenderingConfiguration:preferredRenderingConfiguration];

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PRPosterMutableConfigurableOptions alloc];
  displayNameLocalizationKey = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
  role = [(PRPosterConfigurableOptions *)self role];
  ambientSupportedDataLayout = [(PRPosterConfigurableOptions *)self ambientSupportedDataLayout];
  preferredTimeFontConfigurations = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
  preferredTitleColors = [(PRPosterConfigurableOptions *)self preferredTitleColors];
  [(PRPosterConfigurableOptions *)self luminance];
  v11 = v10;
  preferredHomeScreenConfiguration = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
  preferredRenderingConfiguration = [(PRPosterConfigurableOptions *)self preferredRenderingConfiguration];
  v14 = [(PRPosterConfigurableOptions *)v4 _initWithDisplayNameLocalizationKey:displayNameLocalizationKey role:role ambientSupportedDataLayout:ambientSupportedDataLayout preferredTimeFontConfigurations:preferredTimeFontConfigurations preferredTitleColors:preferredTitleColors luminance:preferredHomeScreenConfiguration preferredHomeScreenConfiguration:v11 preferredRenderingConfiguration:preferredRenderingConfiguration];

  return v14;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PRPosterConfigurableOptions *)self isEqualToConfigurableOptions:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToConfigurableOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (optionsCopy == self)
  {
    v14 = 1;
  }

  else if (optionsCopy)
  {
    displayNameLocalizationKey = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
    displayNameLocalizationKey2 = [(PRPosterConfigurableOptions *)v5 displayNameLocalizationKey];
    if (BSEqualObjects())
    {
      role = [(PRPosterConfigurableOptions *)self role];
      role2 = [(PRPosterConfigurableOptions *)v5 role];
      if (BSEqualObjects() && ([(PRPosterConfigurableOptions *)self ambientSupportedDataLayout], [(PRPosterConfigurableOptions *)v5 ambientSupportedDataLayout], BSEqualDoubles()))
      {
        preferredTimeFontConfigurations = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
        preferredTimeFontConfigurations2 = [(PRPosterConfigurableOptions *)v5 preferredTimeFontConfigurations];
        if (BSEqualObjects())
        {
          preferredTitleColors = [(PRPosterConfigurableOptions *)self preferredTitleColors];
          preferredTitleColors2 = [(PRPosterConfigurableOptions *)v5 preferredTitleColors];
          if (BSEqualObjects() && ([(PRPosterConfigurableOptions *)self luminance], [(PRPosterConfigurableOptions *)v5 luminance], BSFloatEqualToFloat()))
          {
            preferredHomeScreenConfiguration = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
            preferredHomeScreenConfiguration2 = [(PRPosterConfigurableOptions *)v5 preferredHomeScreenConfiguration];
            v14 = BSEqualObjects();
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  preferredTimeFontConfigurations = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
  preferredTitleColors = [(PRPosterConfigurableOptions *)self preferredTitleColors];
  builder = [MEMORY[0x1E698E6B8] builder];
  displayNameLocalizationKey = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
  v7 = [builder appendString:displayNameLocalizationKey];

  role = [(PRPosterConfigurableOptions *)self role];

  if (role)
  {
    role2 = [(PRPosterConfigurableOptions *)self role];
    v10 = [builder appendString:role2];
  }

  v11 = [builder appendInt64:{-[PRPosterConfigurableOptions ambientSupportedDataLayout](self, "ambientSupportedDataLayout")}];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __35__PRPosterConfigurableOptions_hash__block_invoke;
  v26[3] = &unk_1E7843638;
  v12 = builder;
  v27 = v12;
  [preferredTimeFontConfigurations enumerateObjectsUsingBlock:v26];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __35__PRPosterConfigurableOptions_hash__block_invoke_2;
  v24 = &unk_1E7843660;
  v25 = v12;
  v13 = v12;
  [preferredTitleColors enumerateObjectsUsingBlock:&v21];
  [(PRPosterConfigurableOptions *)self luminance:v21];
  v14 = [v13 appendCGFloat:?];
  preferredHomeScreenConfiguration = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
  v16 = [v13 appendObject:preferredHomeScreenConfiguration];

  preferredRenderingConfiguration = [(PRPosterConfigurableOptions *)self preferredRenderingConfiguration];
  v18 = [v13 appendObject:preferredRenderingConfiguration];

  v19 = [v13 hash];
  return v19;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __42__PRPosterConfigurableOptions_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (PRPosterConfigurableOptions)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"displayNameLocalizationKey"];
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [coderCopy decodeCollectionOfClass:v6 containingClass:v7 forKey:@"preferredTimeFontConfigurations"];

  v9 = [coderCopy decodeStringForKey:@"role"];
  v10 = [coderCopy decodeInt64ForKey:@"ambientSupportedDataLayout"];
  v11 = objc_opt_class();
  v12 = [coderCopy decodeCollectionOfClass:v11 containingClass:objc_opt_class() forKey:@"preferredTitleColors"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"luminance"];
  v14 = v13;
  if (v13)
  {
    [v13 doubleValue];
    v16 = v15;
  }

  else
  {
    v16 = 0.5;
  }

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredHomeScreenConfiguration"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredRenderingConfiguration"];
  v19 = [(PRPosterConfigurableOptions *)self _initWithDisplayNameLocalizationKey:v5 role:v9 ambientSupportedDataLayout:v10 preferredTimeFontConfigurations:v8 preferredTitleColors:v12 luminance:v17 preferredHomeScreenConfiguration:v16 preferredRenderingConfiguration:v18];

  return v19;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  displayNameLocalizationKey = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
  [coderCopy encodeObject:displayNameLocalizationKey forKey:@"displayNameLocalizationKey"];

  role = [(PRPosterConfigurableOptions *)self role];

  if (role)
  {
    role2 = [(PRPosterConfigurableOptions *)self role];
    [coderCopy encodeObject:role2 forKey:@"role"];
  }

  [coderCopy encodeInt64:-[PRPosterConfigurableOptions ambientSupportedDataLayout](self forKey:{"ambientSupportedDataLayout"), @"ambientSupportedDataLayout"}];
  preferredTimeFontConfigurations = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
  [coderCopy encodeObject:preferredTimeFontConfigurations forKey:@"preferredTimeFontConfigurations"];

  preferredTitleColors = [(PRPosterConfigurableOptions *)self preferredTitleColors];
  [coderCopy encodeObject:preferredTitleColors forKey:@"preferredTitleColors"];

  v9 = MEMORY[0x1E696AD98];
  [(PRPosterConfigurableOptions *)self luminance];
  v10 = [v9 numberWithDouble:?];
  [coderCopy encodeObject:v10 forKey:@"luminance"];

  preferredHomeScreenConfiguration = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
  [coderCopy encodeObject:preferredHomeScreenConfiguration forKey:@"preferredHomeScreenConfiguration"];

  preferredRenderingConfiguration = [(PRPosterConfigurableOptions *)self preferredRenderingConfiguration];
  [coderCopy encodeObject:preferredRenderingConfiguration forKey:@"preferredRenderingConfiguration"];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  displayNameLocalizationKey = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
  [formatterCopy appendString:displayNameLocalizationKey withName:@"displayNameLocalizationKey" skipIfEmpty:1];

  role = [(PRPosterConfigurableOptions *)self role];
  [formatterCopy appendString:role withName:@"role" skipIfEmpty:1];

  v6 = [formatterCopy appendInt64:-[PRPosterConfigurableOptions ambientSupportedDataLayout](self withName:{"ambientSupportedDataLayout"), @"ambientSupportedDataLayout"}];
  preferredTitleColors = [(PRPosterConfigurableOptions *)self preferredTitleColors];
  v8 = [formatterCopy appendObject:preferredTitleColors withName:@"preferredTitleColors"];

  preferredTimeFontConfigurations = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
  v10 = [formatterCopy appendObject:preferredTimeFontConfigurations withName:@"preferredTimeFontConfigurations"];

  [(PRPosterConfigurableOptions *)self luminance];
  v11 = [formatterCopy appendDouble:@"luminance" withName:4 decimalPrecision:?];
  preferredHomeScreenConfiguration = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
  v13 = [formatterCopy appendObject:preferredHomeScreenConfiguration withName:@"preferredHomeScreenConfiguration"];

  preferredRenderingConfiguration = [(PRPosterConfigurableOptions *)self preferredRenderingConfiguration];
  v15 = [formatterCopy appendObject:preferredRenderingConfiguration withName:@"preferredRenderingConfiguration"];
}

- (void)initWithDisplayNameLocalizationKey:(char *)a1 ambientSupportedDataLayout:preferredTimeFontConfigurations:preferredTitleColors:luminance:preferredHomeScreenConfiguration:preferredRenderingConfiguration:.cold.1(char *a1)
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

- (void)initWithDisplayNameLocalizationKey:(char *)a1 ambientSupportedDataLayout:preferredTimeFontConfigurations:preferredTitleColors:luminance:preferredHomeScreenConfiguration:preferredRenderingConfiguration:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDisplayNameLocalizationKey:(char *)a1 ambientSupportedDataLayout:preferredTimeFontConfigurations:preferredTitleColors:luminance:preferredHomeScreenConfiguration:preferredRenderingConfiguration:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDisplayNameLocalizationKey:(char *)a1 ambientSupportedDataLayout:preferredTimeFontConfigurations:preferredTitleColors:luminance:preferredHomeScreenConfiguration:preferredRenderingConfiguration:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterDescriptorHomeScreenConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end