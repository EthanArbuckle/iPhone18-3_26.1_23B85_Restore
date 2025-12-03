@interface SKUIMediaQueryFeature
- (SKUIMediaQueryFeature)initWithFeatureName:(id)name value:(id)value;
@end

@implementation SKUIMediaQueryFeature

- (SKUIMediaQueryFeature)initWithFeatureName:(id)name value:(id)value
{
  nameCopy = name;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMediaQueryFeature initWithFeatureName:value:];
  }

  v10.receiver = self;
  v10.super_class = SKUIMediaQueryFeature;
  v6 = [(SKUIMediaQueryFeature *)&v10 init];
  if (v6)
  {
    v7 = [nameCopy copy];
    featureName = v6->_featureName;
    v6->_featureName = v7;
  }

  return v6;
}

- (void)initWithFeatureName:value:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMediaQueryFeature initWithFeatureName:value:]";
}

@end