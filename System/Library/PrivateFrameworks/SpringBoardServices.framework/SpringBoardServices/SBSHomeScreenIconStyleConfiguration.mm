@interface SBSHomeScreenIconStyleConfiguration
+ (SBSHomeScreenIconStyleConfiguration)automaticStyleConfiguration;
+ (SBSHomeScreenIconStyleConfiguration)darkStyleConfiguration;
+ (SBSHomeScreenIconStyleConfiguration)defaultStyleConfiguration;
+ (SBSHomeScreenIconStyleConfiguration)lightStyleConfiguration;
+ (id)tintedStyleConfigurationWithTintColor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SBSHomeScreenIconStyleConfiguration)initWithBSXPCCoder:(id)a3;
- (SBSHomeScreenIconStyleConfiguration)initWithCoder:(id)a3;
- (SBSHomeScreenIconStyleConfiguration)initWithConfigurationType:(int64_t)a3 variant:(int64_t)a4 tintColor:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)configurationType;
- (int64_t)iconServicesAppearanceUsingDarkInterfaceStyle:(BOOL)a3;
- (int64_t)iconServicesAppearanceVariantUsingDarkInterfaceStyle:(BOOL)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSHomeScreenIconStyleConfiguration

- (int64_t)configurationType
{
  v3 = [(SBSHomeScreenIconStyleConfiguration *)self updatedConfigurationType];
  v4 = [(SBSHomeScreenIconStyleConfiguration *)self variant];
  if (v3 - 2 >= 4)
  {
    if (v3 > 1 || v4 >= 3)
    {
      return 0;
    }

    else
    {
      return qword_1917295C0[v4];
    }
  }

  return v3;
}

+ (SBSHomeScreenIconStyleConfiguration)defaultStyleConfiguration
{
  v2 = [[a1 alloc] initWithConfigurationType:0 variant:0 tintColor:0];

  return v2;
}

+ (SBSHomeScreenIconStyleConfiguration)automaticStyleConfiguration
{
  v2 = [[a1 alloc] initWithConfigurationType:0 variant:2 tintColor:0];

  return v2;
}

+ (SBSHomeScreenIconStyleConfiguration)lightStyleConfiguration
{
  v2 = [[a1 alloc] initWithConfigurationType:0 variant:0 tintColor:0];

  return v2;
}

+ (SBSHomeScreenIconStyleConfiguration)darkStyleConfiguration
{
  v2 = [[a1 alloc] initWithConfigurationType:0 variant:1 tintColor:0];

  return v2;
}

+ (id)tintedStyleConfigurationWithTintColor:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithConfigurationType:2 variant:1 tintColor:v4];

  return v5;
}

- (SBSHomeScreenIconStyleConfiguration)initWithConfigurationType:(int64_t)a3 variant:(int64_t)a4 tintColor:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SBSHomeScreenIconStyleConfiguration;
  v10 = [(SBSHomeScreenIconStyleConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_configurationType = a3;
    v10->_variant = a4;
    objc_storeStrong(&v10->_tintColor, a5);
  }

  return v11;
}

- (int64_t)iconServicesAppearanceVariantUsingDarkInterfaceStyle:(BOOL)a3
{
  result = [(SBSHomeScreenIconStyleConfiguration *)self updatedConfigurationType];
  v4 = 3;
  if (result != 1)
  {
    v4 = 0;
  }

  if (result != 2)
  {
    return v4;
  }

  return result;
}

- (int64_t)iconServicesAppearanceUsingDarkInterfaceStyle:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSHomeScreenIconStyleConfiguration *)self variant];
  v5 = v3;
  if (v4 != 2)
  {
    v5 = 0;
  }

  if (v4 == 1)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)hash
{
  v3 = [(SBSHomeScreenIconStyleConfiguration *)self updatedConfigurationType];
  v4 = [(SBSHomeScreenIconStyleConfiguration *)self variant]+ v3;
  v5 = [(SBSHomeScreenIconStyleConfiguration *)self tintColor];
  v6 = [v5 hash];

  return v4 + v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(SBSHomeScreenIconStyleConfiguration *)self updatedConfigurationType];
      if (v8 == [(SBSHomeScreenIconStyleConfiguration *)v7 updatedConfigurationType]&& (v9 = [(SBSHomeScreenIconStyleConfiguration *)self variant], v9 == [(SBSHomeScreenIconStyleConfiguration *)v7 variant]))
      {
        v10 = [(SBSHomeScreenIconStyleConfiguration *)self tintColor];
        v11 = [(SBSHomeScreenIconStyleConfiguration *)v7 tintColor];
        v12 = BSEqualObjects();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SBSHomeScreenIconStyleConfiguration updatedConfigurationType](self forKey:{"updatedConfigurationType"), @"configurationType"}];
  [v4 encodeInteger:-[SBSHomeScreenIconStyleConfiguration variant](self forKey:{"variant"), @"configurationVariant"}];
  v5 = [(SBSHomeScreenIconStyleConfiguration *)self tintColor];
  [v4 encodeObject:v5 forKey:@"tintColor"];
}

- (SBSHomeScreenIconStyleConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"configurationType"];
  v6 = [v4 decodeIntegerForKey:@"configurationVariant"];
  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"tintColor"];

  v9 = [(SBSHomeScreenIconStyleConfiguration *)self initWithConfigurationType:v5 variant:v6 tintColor:v8];
  return v9;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SBSHomeScreenIconStyleConfiguration updatedConfigurationType](self forKey:{"updatedConfigurationType"), @"configurationType"}];
  [v4 encodeInt64:-[SBSHomeScreenIconStyleConfiguration variant](self forKey:{"variant"), @"configurationVariant"}];
  v5 = [(SBSHomeScreenIconStyleConfiguration *)self tintColor];
  [v4 encodeObject:v5 forKey:@"tintColor"];
}

- (SBSHomeScreenIconStyleConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"configurationType"];
  v6 = [v4 decodeInt64ForKey:@"configurationVariant"];
  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"tintColor"];

  v9 = [(SBSHomeScreenIconStyleConfiguration *)self initWithConfigurationType:v5 variant:v6 tintColor:v8];
  return v9;
}

- (id)succinctDescription
{
  v2 = [(SBSHomeScreenIconStyleConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSHomeScreenIconStyleConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBSHomeScreenIconStyleConfiguration *)self succinctDescriptionBuilder];
  v5 = SBSStringForHomeScreenIconStyleConfigurationType([(SBSHomeScreenIconStyleConfiguration *)self updatedConfigurationType]);
  v6 = [v4 appendObject:v5 withName:@"configurationType"];

  v7 = [(SBSHomeScreenIconStyleConfiguration *)self variant];
  if (v7 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(&off_1E7360AE0 + v7);
  }

  v9 = [v4 appendObject:v8 withName:@"variant"];
  v10 = [(SBSHomeScreenIconStyleConfiguration *)self tintColor];
  v11 = [v4 appendObject:v10 withName:@"tintColor" skipIfNil:1];

  return v4;
}

@end