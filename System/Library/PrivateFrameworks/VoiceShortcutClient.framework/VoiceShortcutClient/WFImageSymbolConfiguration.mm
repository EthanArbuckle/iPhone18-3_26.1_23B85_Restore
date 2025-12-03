@interface WFImageSymbolConfiguration
+ (WFImageSymbolConfiguration)configurationWithNSImageSymbolConfiguration:(id)configuration;
+ (WFImageSymbolConfiguration)configurationWithPointSize:(double)size;
+ (WFImageSymbolConfiguration)configurationWithPointSize:(double)size hierarchicalColors:(id)colors;
+ (WFImageSymbolConfiguration)configurationWithUIImageSymbolConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (WFImageSymbolConfiguration)initWithCoder:(id)coder;
- (WFImageSymbolConfiguration)initWithPlatformSymbolConfiguration:(id)configuration;
- (WFImageSymbolConfiguration)initWithPointSize:(double)size hierarchicalColors:(id)colors;
- (id)platformHierarchicalColors;
- (id)uiKitConfiguration;
- (int64_t)platformWeight;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFImageSymbolConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WFImageSymbolConfiguration representationType](self forKey:{"representationType"), @"representationType"}];
  platformSymbolConfiguration = [(WFImageSymbolConfiguration *)self platformSymbolConfiguration];
  [coderCopy encodeObject:platformSymbolConfiguration forKey:@"platformSymbolConfiguration"];

  [(WFImageSymbolConfiguration *)self pointSize];
  *&v5 = v5;
  [coderCopy encodeFloat:@"pointSize" forKey:v5];
  hierarchicalColors = [(WFImageSymbolConfiguration *)self hierarchicalColors];
  [coderCopy encodeObject:hierarchicalColors forKey:@"hierarchicalColors"];

  [coderCopy encodeInteger:-[WFImageSymbolConfiguration weight](self forKey:{"weight"), @"weight"}];
}

- (WFImageSymbolConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"representationType"];
  if (!v5)
  {
    [coderCopy decodeFloatForKey:@"pointSize"];
    v9 = v8;
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"hierarchicalColors"];
    v7 = [(WFImageSymbolConfiguration *)self initWithPointSize:v6 hierarchicalColors:v9];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = [coderCopy decodeObjectOfClass:getUIImageSymbolConfigurationClass() forKey:@"platformSymbolConfiguration"];
    v7 = [(WFImageSymbolConfiguration *)self initWithPlatformSymbolConfiguration:v6];
LABEL_5:
    self = v7;
  }

  self->_weight = [coderCopy decodeIntegerForKey:@"weight"];

  return self;
}

- (id)platformHierarchicalColors
{
  hierarchicalColors = [(WFImageSymbolConfiguration *)self hierarchicalColors];
  v3 = [hierarchicalColors if_map:&__block_literal_global_4897];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      platformSymbolConfiguration = [(WFImageSymbolConfiguration *)self platformSymbolConfiguration];
      if (platformSymbolConfiguration && (v8 = platformSymbolConfiguration, [(WFImageSymbolConfiguration *)v6 platformSymbolConfiguration], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
      {
        platformSymbolConfiguration2 = [(WFImageSymbolConfiguration *)self platformSymbolConfiguration];
        platformSymbolConfiguration3 = [(WFImageSymbolConfiguration *)v6 platformSymbolConfiguration];
        v12 = [platformSymbolConfiguration2 isEqualToConfiguration:platformSymbolConfiguration3];
      }

      else
      {
        [(WFImageSymbolConfiguration *)v6 pointSize];
        v14 = v13;
        [(WFImageSymbolConfiguration *)self pointSize];
        v12 = v14 == v15;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)uiKitConfiguration
{
  platformSymbolConfiguration = [(WFImageSymbolConfiguration *)self platformSymbolConfiguration];

  if (platformSymbolConfiguration)
  {
    platformSymbolConfiguration2 = [(WFImageSymbolConfiguration *)self platformSymbolConfiguration];
  }

  else
  {
    UIImageSymbolConfigurationClass = getUIImageSymbolConfigurationClass();
    [(WFImageSymbolConfiguration *)self pointSize];
    platformSymbolConfiguration2 = [(objc_class *)UIImageSymbolConfigurationClass configurationWithPointSize:[(WFImageSymbolConfiguration *)self platformWeight] weight:v6];
    hierarchicalColors = [(WFImageSymbolConfiguration *)self hierarchicalColors];

    if (hierarchicalColors)
    {
      platformHierarchicalColors = [(WFImageSymbolConfiguration *)self platformHierarchicalColors];
      v9 = [(objc_class *)getUIImageSymbolConfigurationClass() _configurationWithHierarchicalColors:platformHierarchicalColors];
      v10 = [platformSymbolConfiguration2 configurationByApplyingConfiguration:v9];

      platformSymbolConfiguration2 = v10;
    }
  }

  return platformSymbolConfiguration2;
}

- (int64_t)platformWeight
{
  weight = [(WFImageSymbolConfiguration *)self weight];
  if (weight - 1 > 7)
  {
    return 4;
  }

  else
  {
    return qword_1B1F36860[weight - 1];
  }
}

- (WFImageSymbolConfiguration)initWithPlatformSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = WFImageSymbolConfiguration;
  v6 = [(WFImageSymbolConfiguration *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_representationType = 1;
    objc_storeStrong(&v6->_platformSymbolConfiguration, configuration);
    v7->_pointSize = 0.0;
    array = [MEMORY[0x1E695DEC8] array];
    hierarchicalColors = v7->_hierarchicalColors;
    v7->_hierarchicalColors = array;

    v7->_weight = 0;
    v10 = v7;
  }

  return v7;
}

- (WFImageSymbolConfiguration)initWithPointSize:(double)size hierarchicalColors:(id)colors
{
  colorsCopy = colors;
  v14.receiver = self;
  v14.super_class = WFImageSymbolConfiguration;
  v7 = [(WFImageSymbolConfiguration *)&v14 init];
  v8 = v7;
  if (v7)
  {
    platformSymbolConfiguration = v7->_platformSymbolConfiguration;
    v7->_representationType = 0;
    v7->_platformSymbolConfiguration = 0;

    v8->_pointSize = size;
    v10 = [colorsCopy copy];
    hierarchicalColors = v8->_hierarchicalColors;
    v8->_hierarchicalColors = v10;

    v8->_weight = 0;
    v12 = v8;
  }

  return v8;
}

+ (WFImageSymbolConfiguration)configurationWithNSImageSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[self alloc] initWithPlatformSymbolConfiguration:configurationCopy];

  return v5;
}

+ (WFImageSymbolConfiguration)configurationWithUIImageSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[self alloc] initWithPlatformSymbolConfiguration:configurationCopy];

  return v5;
}

+ (WFImageSymbolConfiguration)configurationWithPointSize:(double)size hierarchicalColors:(id)colors
{
  colorsCopy = colors;
  v7 = [[self alloc] initWithPointSize:colorsCopy hierarchicalColors:size];

  return v7;
}

+ (WFImageSymbolConfiguration)configurationWithPointSize:(double)size
{
  v3 = [[self alloc] initWithPointSize:0 hierarchicalColors:size];

  return v3;
}

@end