@interface SKUIMediaQueryNetworkTypeFeature
+ (BOOL)supportsFeatureName:(id)name;
- (BOOL)evaluateWithValues:(id)values;
- (SKUIMediaQueryNetworkTypeFeature)initWithFeatureName:(id)name value:(id)value;
- (id)description;
- (id)notificationNames;
- (id)requiredKeys;
@end

@implementation SKUIMediaQueryNetworkTypeFeature

- (SKUIMediaQueryNetworkTypeFeature)initWithFeatureName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMediaQueryNetworkTypeFeature initWithFeatureName:value:];
  }

  v12.receiver = self;
  v12.super_class = SKUIMediaQueryNetworkTypeFeature;
  v8 = [(SKUIMediaQueryFeature *)&v12 initWithFeatureName:nameCopy value:valueCopy];
  if (v8)
  {
    v9 = [valueCopy copy];
    value = v8->_value;
    v8->_value = v9;
  }

  return v8;
}

+ (BOOL)supportsFeatureName:(id)name
{
  nameCopy = name;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIMediaQueryNetworkTypeFeature supportsFeatureName:];
  }

  v4 = [nameCopy isEqualToString:@"network"];

  return v4;
}

- (BOOL)evaluateWithValues:(id)values
{
  v4 = [values objectForKey:0x2827FFD28];
  LOBYTE(self) = [v4 isEqualToString:self->_value];

  return self;
}

- (id)notificationNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277D7FCC0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)requiredKeys
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0x2827FFD28;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SKUIMediaQueryNetworkTypeFeature;
  v4 = [(SKUIMediaQueryNetworkTypeFeature *)&v8 description];
  featureName = [(SKUIMediaQueryFeature *)self featureName];
  v6 = [v3 stringWithFormat:@"%@: [%@, %@]", v4, featureName, self->_value];

  return v6;
}

- (void)initWithFeatureName:value:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMediaQueryNetworkTypeFeature initWithFeatureName:value:]";
}

+ (void)supportsFeatureName:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIMediaQueryNetworkTypeFeature supportsFeatureName:]";
}

@end