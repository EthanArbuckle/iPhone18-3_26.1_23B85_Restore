@interface PRPosterConfigurableOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfigurableOptions:(id)a3;
- (NSString)description;
- (PRPosterConfigurableOptions)initWithBSXPCCoder:(id)a3;
- (PRPosterConfigurableOptions)initWithCoder:(id)a3;
- (PRPosterConfigurableOptions)initWithDisplayNameLocalizationKey:(id)a3 ambientSupportedDataLayout:(int64_t)a4 preferredTimeFontConfigurations:(id)a5 preferredTitleColors:(id)a6 luminance:(double)a7 preferredHomeScreenConfiguration:(id)a8 preferredRenderingConfiguration:(id)a9;
- (id)_initWithDisplayNameLocalizationKey:(id)a3 role:(id)a4 ambientSupportedDataLayout:(int64_t)a5 preferredTimeFontConfigurations:(id)a6 preferredTitleColors:(id)a7 luminance:(double)a8 preferredHomeScreenConfiguration:(id)a9 preferredRenderingConfiguration:(id)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterConfigurableOptions

- (id)_initWithDisplayNameLocalizationKey:(id)a3 role:(id)a4 ambientSupportedDataLayout:(int64_t)a5 preferredTimeFontConfigurations:(id)a6 preferredTitleColors:(id)a7 luminance:(double)a8 preferredHomeScreenConfiguration:(id)a9 preferredRenderingConfiguration:(id)a10
{
  v17 = a4;
  v18 = [(PRPosterConfigurableOptions *)self initWithDisplayNameLocalizationKey:a3 ambientSupportedDataLayout:a5 preferredTimeFontConfigurations:a6 preferredTitleColors:a7 luminance:a9 preferredHomeScreenConfiguration:a10 preferredRenderingConfiguration:a8];
  v19 = v18;
  if (v18)
  {
    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = @"PRPosterRoleLockScreen";
    }

    objc_storeStrong(&v18->_role, v20);
  }

  return v19;
}

- (PRPosterConfigurableOptions)initWithDisplayNameLocalizationKey:(id)a3 ambientSupportedDataLayout:(int64_t)a4 preferredTimeFontConfigurations:(id)a5 preferredTitleColors:(id)a6 luminance:(double)a7 preferredHomeScreenConfiguration:(id)a8 preferredRenderingConfiguration:(id)a9
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v31.receiver = self;
  v31.super_class = PRPosterConfigurableOptions;
  v22 = [(PRPosterConfigurableOptions *)&v31 init];
  if (v22)
  {
    v23 = v17;
    if (v23)
    {
      NSClassFromString(&cfstr_Nsstring.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PRPosterConfigurableOptions initWithDisplayNameLocalizationKey:a2 ambientSupportedDataLayout:? preferredTimeFontConfigurations:? preferredTitleColors:? luminance:? preferredHomeScreenConfiguration:? preferredRenderingConfiguration:?];
      }
    }

    v29 = a2;

    v24 = v18;
    if (v24)
    {
      NSClassFromString(&cfstr_Nsarray.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PRPosterConfigurableOptions initWithDisplayNameLocalizationKey:v29 ambientSupportedDataLayout:? preferredTimeFontConfigurations:? preferredTitleColors:? luminance:? preferredHomeScreenConfiguration:? preferredRenderingConfiguration:?];
      }
    }

    v30 = v17;
    v25 = a4;

    v26 = v19;
    if (v26)
    {
      NSClassFromString(&cfstr_Nsarray.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PRPosterConfigurableOptions initWithDisplayNameLocalizationKey:v29 ambientSupportedDataLayout:? preferredTimeFontConfigurations:? preferredTitleColors:? luminance:? preferredHomeScreenConfiguration:? preferredRenderingConfiguration:?];
      }
    }

    v27 = v20;
    if (v27)
    {
      NSClassFromString(&cfstr_Prposterdescri_1.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PRPosterConfigurableOptions initWithDisplayNameLocalizationKey:v29 ambientSupportedDataLayout:? preferredTimeFontConfigurations:? preferredTitleColors:? luminance:? preferredHomeScreenConfiguration:? preferredRenderingConfiguration:?];
      }
    }

    [(PRPosterConfigurableOptions *)v22 setDisplayNameLocalizationKey:v23, v29];
    [(PRPosterConfigurableOptions *)v22 setAmbientSupportedDataLayout:v25];
    [(PRPosterConfigurableOptions *)v22 setPreferredTimeFontConfigurations:v24];
    [(PRPosterConfigurableOptions *)v22 setPreferredTitleColors:v26];
    [(PRPosterConfigurableOptions *)v22 setLuminance:a7];
    [(PRPosterConfigurableOptions *)v22 setPreferredHomeScreenConfiguration:v27];
    [(PRPosterConfigurableOptions *)v22 setPreferredRenderingConfiguration:v21];
    v17 = v30;
  }

  return v22;
}

- (PRPosterConfigurableOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayNameLocalizationKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"role"];
  v7 = [v4 decodeInt64ForKey:@"ambientSupportedDataLayout"];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v9 = [v4 decodeArrayOfObjectsOfClasses:v8 forKey:@"preferredTitleColors"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [v4 decodeArrayOfObjectsOfClasses:v13 forKey:@"preferredTimeFontConfigurations"];

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"luminance"];
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

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredHomeScreenConfiguration"];
  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredRenderingConfiguration"];
  v21 = [(PRPosterConfigurableOptions *)self _initWithDisplayNameLocalizationKey:v5 role:v6 ambientSupportedDataLayout:v7 preferredTimeFontConfigurations:v14 preferredTitleColors:v9 luminance:v19 preferredHomeScreenConfiguration:v18 preferredRenderingConfiguration:v20];

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
  [v13 encodeObject:v4 forKey:@"displayNameLocalizationKey"];

  v5 = [(PRPosterConfigurableOptions *)self role];

  if (v5)
  {
    v6 = [(PRPosterConfigurableOptions *)self role];
    [v13 encodeObject:v6 forKey:@"role"];
  }

  [v13 encodeInt64:-[PRPosterConfigurableOptions ambientSupportedDataLayout](self forKey:{"ambientSupportedDataLayout"), @"ambientSupportedDataLayout"}];
  v7 = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
  [v13 encodeObject:v7 forKey:@"preferredTimeFontConfigurations"];

  v8 = [(PRPosterConfigurableOptions *)self preferredTitleColors];
  [v13 encodeObject:v8 forKey:@"preferredTitleColors"];

  v9 = MEMORY[0x1E696AD98];
  [(PRPosterConfigurableOptions *)self luminance];
  v10 = [v9 numberWithDouble:?];
  [v13 encodeObject:v10 forKey:@"luminance"];

  v11 = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
  [v13 encodeObject:v11 forKey:@"preferredHomeScreenConfiguration"];

  v12 = [(PRPosterConfigurableOptions *)self preferredRenderingConfiguration];
  [v13 encodeObject:v12 forKey:@"preferredRenderingConfiguration"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRPosterConfigurableOptions alloc];
  v5 = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
  v6 = [(PRPosterConfigurableOptions *)self role];
  v7 = [(PRPosterConfigurableOptions *)self ambientSupportedDataLayout];
  v8 = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
  v9 = [(PRPosterConfigurableOptions *)self preferredTitleColors];
  [(PRPosterConfigurableOptions *)self luminance];
  v11 = v10;
  v12 = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
  v13 = [(PRPosterConfigurableOptions *)self preferredRenderingConfiguration];
  v14 = [(PRPosterConfigurableOptions *)v4 _initWithDisplayNameLocalizationKey:v5 role:v6 ambientSupportedDataLayout:v7 preferredTimeFontConfigurations:v8 preferredTitleColors:v9 luminance:v12 preferredHomeScreenConfiguration:v11 preferredRenderingConfiguration:v13];

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PRPosterMutableConfigurableOptions alloc];
  v5 = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
  v6 = [(PRPosterConfigurableOptions *)self role];
  v7 = [(PRPosterConfigurableOptions *)self ambientSupportedDataLayout];
  v8 = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
  v9 = [(PRPosterConfigurableOptions *)self preferredTitleColors];
  [(PRPosterConfigurableOptions *)self luminance];
  v11 = v10;
  v12 = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
  v13 = [(PRPosterConfigurableOptions *)self preferredRenderingConfiguration];
  v14 = [(PRPosterConfigurableOptions *)v4 _initWithDisplayNameLocalizationKey:v5 role:v6 ambientSupportedDataLayout:v7 preferredTimeFontConfigurations:v8 preferredTitleColors:v9 luminance:v12 preferredHomeScreenConfiguration:v11 preferredRenderingConfiguration:v13];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PRPosterConfigurableOptions *)self isEqualToConfigurableOptions:v4];
  }

  return v5;
}

- (BOOL)isEqualToConfigurableOptions:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v14 = 1;
  }

  else if (v4)
  {
    v6 = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
    v7 = [(PRPosterConfigurableOptions *)v5 displayNameLocalizationKey];
    if (BSEqualObjects())
    {
      v8 = [(PRPosterConfigurableOptions *)self role];
      v9 = [(PRPosterConfigurableOptions *)v5 role];
      if (BSEqualObjects() && ([(PRPosterConfigurableOptions *)self ambientSupportedDataLayout], [(PRPosterConfigurableOptions *)v5 ambientSupportedDataLayout], BSEqualDoubles()))
      {
        v10 = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
        v11 = [(PRPosterConfigurableOptions *)v5 preferredTimeFontConfigurations];
        if (BSEqualObjects())
        {
          v12 = [(PRPosterConfigurableOptions *)self preferredTitleColors];
          v13 = [(PRPosterConfigurableOptions *)v5 preferredTitleColors];
          if (BSEqualObjects() && ([(PRPosterConfigurableOptions *)self luminance], [(PRPosterConfigurableOptions *)v5 luminance], BSFloatEqualToFloat()))
          {
            v17 = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
            v16 = [(PRPosterConfigurableOptions *)v5 preferredHomeScreenConfiguration];
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
  v3 = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
  v4 = [(PRPosterConfigurableOptions *)self preferredTitleColors];
  v5 = [MEMORY[0x1E698E6B8] builder];
  v6 = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
  v7 = [v5 appendString:v6];

  v8 = [(PRPosterConfigurableOptions *)self role];

  if (v8)
  {
    v9 = [(PRPosterConfigurableOptions *)self role];
    v10 = [v5 appendString:v9];
  }

  v11 = [v5 appendInt64:{-[PRPosterConfigurableOptions ambientSupportedDataLayout](self, "ambientSupportedDataLayout")}];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __35__PRPosterConfigurableOptions_hash__block_invoke;
  v26[3] = &unk_1E7843638;
  v12 = v5;
  v27 = v12;
  [v3 enumerateObjectsUsingBlock:v26];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __35__PRPosterConfigurableOptions_hash__block_invoke_2;
  v24 = &unk_1E7843660;
  v25 = v12;
  v13 = v12;
  [v4 enumerateObjectsUsingBlock:&v21];
  [(PRPosterConfigurableOptions *)self luminance:v21];
  v14 = [v13 appendCGFloat:?];
  v15 = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
  v16 = [v13 appendObject:v15];

  v17 = [(PRPosterConfigurableOptions *)self preferredRenderingConfiguration];
  v18 = [v13 appendObject:v17];

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
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (PRPosterConfigurableOptions)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"displayNameLocalizationKey"];
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v4 decodeCollectionOfClass:v6 containingClass:v7 forKey:@"preferredTimeFontConfigurations"];

  v9 = [v4 decodeStringForKey:@"role"];
  v10 = [v4 decodeInt64ForKey:@"ambientSupportedDataLayout"];
  v11 = objc_opt_class();
  v12 = [v4 decodeCollectionOfClass:v11 containingClass:objc_opt_class() forKey:@"preferredTitleColors"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"luminance"];
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

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredHomeScreenConfiguration"];
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredRenderingConfiguration"];
  v19 = [(PRPosterConfigurableOptions *)self _initWithDisplayNameLocalizationKey:v5 role:v9 ambientSupportedDataLayout:v10 preferredTimeFontConfigurations:v8 preferredTitleColors:v12 luminance:v17 preferredHomeScreenConfiguration:v16 preferredRenderingConfiguration:v18];

  return v19;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v13 = a3;
  v4 = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
  [v13 encodeObject:v4 forKey:@"displayNameLocalizationKey"];

  v5 = [(PRPosterConfigurableOptions *)self role];

  if (v5)
  {
    v6 = [(PRPosterConfigurableOptions *)self role];
    [v13 encodeObject:v6 forKey:@"role"];
  }

  [v13 encodeInt64:-[PRPosterConfigurableOptions ambientSupportedDataLayout](self forKey:{"ambientSupportedDataLayout"), @"ambientSupportedDataLayout"}];
  v7 = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
  [v13 encodeObject:v7 forKey:@"preferredTimeFontConfigurations"];

  v8 = [(PRPosterConfigurableOptions *)self preferredTitleColors];
  [v13 encodeObject:v8 forKey:@"preferredTitleColors"];

  v9 = MEMORY[0x1E696AD98];
  [(PRPosterConfigurableOptions *)self luminance];
  v10 = [v9 numberWithDouble:?];
  [v13 encodeObject:v10 forKey:@"luminance"];

  v11 = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
  [v13 encodeObject:v11 forKey:@"preferredHomeScreenConfiguration"];

  v12 = [(PRPosterConfigurableOptions *)self preferredRenderingConfiguration];
  [v13 encodeObject:v12 forKey:@"preferredRenderingConfiguration"];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v16 = a3;
  v4 = [(PRPosterConfigurableOptions *)self displayNameLocalizationKey];
  [v16 appendString:v4 withName:@"displayNameLocalizationKey" skipIfEmpty:1];

  v5 = [(PRPosterConfigurableOptions *)self role];
  [v16 appendString:v5 withName:@"role" skipIfEmpty:1];

  v6 = [v16 appendInt64:-[PRPosterConfigurableOptions ambientSupportedDataLayout](self withName:{"ambientSupportedDataLayout"), @"ambientSupportedDataLayout"}];
  v7 = [(PRPosterConfigurableOptions *)self preferredTitleColors];
  v8 = [v16 appendObject:v7 withName:@"preferredTitleColors"];

  v9 = [(PRPosterConfigurableOptions *)self preferredTimeFontConfigurations];
  v10 = [v16 appendObject:v9 withName:@"preferredTimeFontConfigurations"];

  [(PRPosterConfigurableOptions *)self luminance];
  v11 = [v16 appendDouble:@"luminance" withName:4 decimalPrecision:?];
  v12 = [(PRPosterConfigurableOptions *)self preferredHomeScreenConfiguration];
  v13 = [v16 appendObject:v12 withName:@"preferredHomeScreenConfiguration"];

  v14 = [(PRPosterConfigurableOptions *)self preferredRenderingConfiguration];
  v15 = [v16 appendObject:v14 withName:@"preferredRenderingConfiguration"];
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