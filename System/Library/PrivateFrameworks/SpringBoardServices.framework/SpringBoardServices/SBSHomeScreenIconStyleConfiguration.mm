@interface SBSHomeScreenIconStyleConfiguration
+ (SBSHomeScreenIconStyleConfiguration)automaticStyleConfiguration;
+ (SBSHomeScreenIconStyleConfiguration)darkStyleConfiguration;
+ (SBSHomeScreenIconStyleConfiguration)defaultStyleConfiguration;
+ (SBSHomeScreenIconStyleConfiguration)lightStyleConfiguration;
+ (id)tintedStyleConfigurationWithTintColor:(id)color;
- (BOOL)isEqual:(id)equal;
- (SBSHomeScreenIconStyleConfiguration)initWithBSXPCCoder:(id)coder;
- (SBSHomeScreenIconStyleConfiguration)initWithCoder:(id)coder;
- (SBSHomeScreenIconStyleConfiguration)initWithConfigurationType:(int64_t)type variant:(int64_t)variant tintColor:(id)color;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (int64_t)configurationType;
- (int64_t)iconServicesAppearanceUsingDarkInterfaceStyle:(BOOL)style;
- (int64_t)iconServicesAppearanceVariantUsingDarkInterfaceStyle:(BOOL)style;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSHomeScreenIconStyleConfiguration

- (int64_t)configurationType
{
  updatedConfigurationType = [(SBSHomeScreenIconStyleConfiguration *)self updatedConfigurationType];
  variant = [(SBSHomeScreenIconStyleConfiguration *)self variant];
  if (updatedConfigurationType - 2 >= 4)
  {
    if (updatedConfigurationType > 1 || variant >= 3)
    {
      return 0;
    }

    else
    {
      return qword_1917295C0[variant];
    }
  }

  return updatedConfigurationType;
}

+ (SBSHomeScreenIconStyleConfiguration)defaultStyleConfiguration
{
  v2 = [[self alloc] initWithConfigurationType:0 variant:0 tintColor:0];

  return v2;
}

+ (SBSHomeScreenIconStyleConfiguration)automaticStyleConfiguration
{
  v2 = [[self alloc] initWithConfigurationType:0 variant:2 tintColor:0];

  return v2;
}

+ (SBSHomeScreenIconStyleConfiguration)lightStyleConfiguration
{
  v2 = [[self alloc] initWithConfigurationType:0 variant:0 tintColor:0];

  return v2;
}

+ (SBSHomeScreenIconStyleConfiguration)darkStyleConfiguration
{
  v2 = [[self alloc] initWithConfigurationType:0 variant:1 tintColor:0];

  return v2;
}

+ (id)tintedStyleConfigurationWithTintColor:(id)color
{
  colorCopy = color;
  v5 = [[self alloc] initWithConfigurationType:2 variant:1 tintColor:colorCopy];

  return v5;
}

- (SBSHomeScreenIconStyleConfiguration)initWithConfigurationType:(int64_t)type variant:(int64_t)variant tintColor:(id)color
{
  colorCopy = color;
  v13.receiver = self;
  v13.super_class = SBSHomeScreenIconStyleConfiguration;
  v10 = [(SBSHomeScreenIconStyleConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_configurationType = type;
    v10->_variant = variant;
    objc_storeStrong(&v10->_tintColor, color);
  }

  return v11;
}

- (int64_t)iconServicesAppearanceVariantUsingDarkInterfaceStyle:(BOOL)style
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

- (int64_t)iconServicesAppearanceUsingDarkInterfaceStyle:(BOOL)style
{
  styleCopy = style;
  variant = [(SBSHomeScreenIconStyleConfiguration *)self variant];
  v5 = styleCopy;
  if (variant != 2)
  {
    v5 = 0;
  }

  if (variant == 1)
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
  updatedConfigurationType = [(SBSHomeScreenIconStyleConfiguration *)self updatedConfigurationType];
  v4 = [(SBSHomeScreenIconStyleConfiguration *)self variant]+ updatedConfigurationType;
  tintColor = [(SBSHomeScreenIconStyleConfiguration *)self tintColor];
  v6 = [tintColor hash];

  return v4 + v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      updatedConfigurationType = [(SBSHomeScreenIconStyleConfiguration *)self updatedConfigurationType];
      if (updatedConfigurationType == [(SBSHomeScreenIconStyleConfiguration *)v7 updatedConfigurationType]&& (v9 = [(SBSHomeScreenIconStyleConfiguration *)self variant], v9 == [(SBSHomeScreenIconStyleConfiguration *)v7 variant]))
      {
        tintColor = [(SBSHomeScreenIconStyleConfiguration *)self tintColor];
        tintColor2 = [(SBSHomeScreenIconStyleConfiguration *)v7 tintColor];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SBSHomeScreenIconStyleConfiguration updatedConfigurationType](self forKey:{"updatedConfigurationType"), @"configurationType"}];
  [coderCopy encodeInteger:-[SBSHomeScreenIconStyleConfiguration variant](self forKey:{"variant"), @"configurationVariant"}];
  tintColor = [(SBSHomeScreenIconStyleConfiguration *)self tintColor];
  [coderCopy encodeObject:tintColor forKey:@"tintColor"];
}

- (SBSHomeScreenIconStyleConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"configurationType"];
  v6 = [coderCopy decodeIntegerForKey:@"configurationVariant"];
  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"tintColor"];

  v9 = [(SBSHomeScreenIconStyleConfiguration *)self initWithConfigurationType:v5 variant:v6 tintColor:v8];
  return v9;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SBSHomeScreenIconStyleConfiguration updatedConfigurationType](self forKey:{"updatedConfigurationType"), @"configurationType"}];
  [coderCopy encodeInt64:-[SBSHomeScreenIconStyleConfiguration variant](self forKey:{"variant"), @"configurationVariant"}];
  tintColor = [(SBSHomeScreenIconStyleConfiguration *)self tintColor];
  [coderCopy encodeObject:tintColor forKey:@"tintColor"];
}

- (SBSHomeScreenIconStyleConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"configurationType"];
  v6 = [coderCopy decodeInt64ForKey:@"configurationVariant"];
  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"tintColor"];

  v9 = [(SBSHomeScreenIconStyleConfiguration *)self initWithConfigurationType:v5 variant:v6 tintColor:v8];
  return v9;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSHomeScreenIconStyleConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSHomeScreenIconStyleConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBSHomeScreenIconStyleConfiguration *)self succinctDescriptionBuilder];
  v5 = SBSStringForHomeScreenIconStyleConfigurationType([(SBSHomeScreenIconStyleConfiguration *)self updatedConfigurationType]);
  v6 = [succinctDescriptionBuilder appendObject:v5 withName:@"configurationType"];

  variant = [(SBSHomeScreenIconStyleConfiguration *)self variant];
  if (variant > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(&off_1E7360AE0 + variant);
  }

  v9 = [succinctDescriptionBuilder appendObject:v8 withName:@"variant"];
  tintColor = [(SBSHomeScreenIconStyleConfiguration *)self tintColor];
  v11 = [succinctDescriptionBuilder appendObject:tintColor withName:@"tintColor" skipIfNil:1];

  return succinctDescriptionBuilder;
}

@end