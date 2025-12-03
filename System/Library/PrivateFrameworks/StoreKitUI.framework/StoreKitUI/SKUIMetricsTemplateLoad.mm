@interface SKUIMetricsTemplateLoad
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dictionaryRepresentation;
@end

@implementation SKUIMetricsTemplateLoad

- (id)copyWithZone:(_NSZone *)zone
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMetricsTemplateLoad copyWithZone:];
  }

  v4 = objc_alloc_init(objc_opt_class());
  [(SKUIMetricsTemplateLoad *)self requestStartTime];
  [v4 setRequestStartTime:?];
  [(SKUIMetricsTemplateLoad *)self responseStartTime];
  [v4 setResponseStartTime:?];
  [(SKUIMetricsTemplateLoad *)self responseEndTime];
  [v4 setResponseEndTime:?];
  [v4 setResponseWasCached:{-[SKUIMetricsTemplateLoad responseWasCached](self, "responseWasCached")}];
  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[4] = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMetricsTemplateLoad dictionaryRepresentation];
  }

  v9[0] = @"requestStartTime";
  [(SKUIMetricsTemplateLoad *)self requestStartTime];
  v3 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[0] = v3;
  v9[1] = @"responseStartTime";
  [(SKUIMetricsTemplateLoad *)self responseStartTime];
  v4 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[1] = v4;
  v9[2] = @"responseEndTime";
  [(SKUIMetricsTemplateLoad *)self responseEndTime];
  v5 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[2] = v5;
  v9[3] = @"responseWasCached";
  v6 = [SKUIMetricsUtilities jsTimeFromTimeInterval:[(SKUIMetricsTemplateLoad *)self responseWasCached]];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (void)copyWithZone:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMetricsTemplateLoad copyWithZone:]";
}

- (void)dictionaryRepresentation
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMetricsTemplateLoad dictionaryRepresentation]";
}

@end