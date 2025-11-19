@interface WFImageSymbolConfiguration
+ (WFImageSymbolConfiguration)configurationWithNSImageSymbolConfiguration:(id)a3;
+ (WFImageSymbolConfiguration)configurationWithPointSize:(double)a3;
+ (WFImageSymbolConfiguration)configurationWithPointSize:(double)a3 hierarchicalColors:(id)a4;
+ (WFImageSymbolConfiguration)configurationWithUIImageSymbolConfiguration:(id)a3;
- (BOOL)isEqual:(id)a3;
- (WFImageSymbolConfiguration)initWithCoder:(id)a3;
- (WFImageSymbolConfiguration)initWithPlatformSymbolConfiguration:(id)a3;
- (WFImageSymbolConfiguration)initWithPointSize:(double)a3 hierarchicalColors:(id)a4;
- (id)platformHierarchicalColors;
- (id)uiKitConfiguration;
- (int64_t)platformWeight;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFImageSymbolConfiguration

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInteger:-[WFImageSymbolConfiguration representationType](self forKey:{"representationType"), @"representationType"}];
  v4 = [(WFImageSymbolConfiguration *)self platformSymbolConfiguration];
  [v7 encodeObject:v4 forKey:@"platformSymbolConfiguration"];

  [(WFImageSymbolConfiguration *)self pointSize];
  *&v5 = v5;
  [v7 encodeFloat:@"pointSize" forKey:v5];
  v6 = [(WFImageSymbolConfiguration *)self hierarchicalColors];
  [v7 encodeObject:v6 forKey:@"hierarchicalColors"];

  [v7 encodeInteger:-[WFImageSymbolConfiguration weight](self forKey:{"weight"), @"weight"}];
}

- (WFImageSymbolConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"representationType"];
  if (!v5)
  {
    [v4 decodeFloatForKey:@"pointSize"];
    v9 = v8;
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"hierarchicalColors"];
    v7 = [(WFImageSymbolConfiguration *)self initWithPointSize:v6 hierarchicalColors:v9];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = [v4 decodeObjectOfClass:getUIImageSymbolConfigurationClass() forKey:@"platformSymbolConfiguration"];
    v7 = [(WFImageSymbolConfiguration *)self initWithPlatformSymbolConfiguration:v6];
LABEL_5:
    self = v7;
  }

  self->_weight = [v4 decodeIntegerForKey:@"weight"];

  return self;
}

- (id)platformHierarchicalColors
{
  v2 = [(WFImageSymbolConfiguration *)self hierarchicalColors];
  v3 = [v2 if_map:&__block_literal_global_4897];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(WFImageSymbolConfiguration *)self platformSymbolConfiguration];
      if (v7 && (v8 = v7, [(WFImageSymbolConfiguration *)v6 platformSymbolConfiguration], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
      {
        v10 = [(WFImageSymbolConfiguration *)self platformSymbolConfiguration];
        v11 = [(WFImageSymbolConfiguration *)v6 platformSymbolConfiguration];
        v12 = [v10 isEqualToConfiguration:v11];
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
  v3 = [(WFImageSymbolConfiguration *)self platformSymbolConfiguration];

  if (v3)
  {
    v4 = [(WFImageSymbolConfiguration *)self platformSymbolConfiguration];
  }

  else
  {
    UIImageSymbolConfigurationClass = getUIImageSymbolConfigurationClass();
    [(WFImageSymbolConfiguration *)self pointSize];
    v4 = [(objc_class *)UIImageSymbolConfigurationClass configurationWithPointSize:[(WFImageSymbolConfiguration *)self platformWeight] weight:v6];
    v7 = [(WFImageSymbolConfiguration *)self hierarchicalColors];

    if (v7)
    {
      v8 = [(WFImageSymbolConfiguration *)self platformHierarchicalColors];
      v9 = [(objc_class *)getUIImageSymbolConfigurationClass() _configurationWithHierarchicalColors:v8];
      v10 = [v4 configurationByApplyingConfiguration:v9];

      v4 = v10;
    }
  }

  return v4;
}

- (int64_t)platformWeight
{
  v2 = [(WFImageSymbolConfiguration *)self weight];
  if (v2 - 1 > 7)
  {
    return 4;
  }

  else
  {
    return qword_1B1F36860[v2 - 1];
  }
}

- (WFImageSymbolConfiguration)initWithPlatformSymbolConfiguration:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WFImageSymbolConfiguration;
  v6 = [(WFImageSymbolConfiguration *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_representationType = 1;
    objc_storeStrong(&v6->_platformSymbolConfiguration, a3);
    v7->_pointSize = 0.0;
    v8 = [MEMORY[0x1E695DEC8] array];
    hierarchicalColors = v7->_hierarchicalColors;
    v7->_hierarchicalColors = v8;

    v7->_weight = 0;
    v10 = v7;
  }

  return v7;
}

- (WFImageSymbolConfiguration)initWithPointSize:(double)a3 hierarchicalColors:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = WFImageSymbolConfiguration;
  v7 = [(WFImageSymbolConfiguration *)&v14 init];
  v8 = v7;
  if (v7)
  {
    platformSymbolConfiguration = v7->_platformSymbolConfiguration;
    v7->_representationType = 0;
    v7->_platformSymbolConfiguration = 0;

    v8->_pointSize = a3;
    v10 = [v6 copy];
    hierarchicalColors = v8->_hierarchicalColors;
    v8->_hierarchicalColors = v10;

    v8->_weight = 0;
    v12 = v8;
  }

  return v8;
}

+ (WFImageSymbolConfiguration)configurationWithNSImageSymbolConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPlatformSymbolConfiguration:v4];

  return v5;
}

+ (WFImageSymbolConfiguration)configurationWithUIImageSymbolConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPlatformSymbolConfiguration:v4];

  return v5;
}

+ (WFImageSymbolConfiguration)configurationWithPointSize:(double)a3 hierarchicalColors:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithPointSize:v6 hierarchicalColors:a3];

  return v7;
}

+ (WFImageSymbolConfiguration)configurationWithPointSize:(double)a3
{
  v3 = [[a1 alloc] initWithPointSize:0 hierarchicalColors:a3];

  return v3;
}

@end