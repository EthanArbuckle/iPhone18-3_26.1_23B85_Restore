@interface SKUIMetricsRequestInfo
- (NSDictionary)dictionaryRepresentation;
- (SKUIMetricsRequestInfo)initWithReportRequestTimesMessagePayload:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SKUIMetricsRequestInfo

- (SKUIMetricsRequestInfo)initWithReportRequestTimesMessagePayload:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMetricsRequestInfo initWithReportRequestTimesMessagePayload:];
  }

  v5 = [v4 objectForKeyedSubscript:@"requestStartTime"];
  v6 = [v4 objectForKeyedSubscript:@"responseStartTime"];
  v7 = [v4 objectForKeyedSubscript:@"responseEndTime"];
  v8 = v7;
  v9 = 0;
  if (v5 && v6 && v7)
  {
    v10 = [(SKUIMetricsRequestInfo *)self init];
    if (v10)
    {
      [SKUIMetricsUtilities timeIntervalFromJSTime:v5];
      [(SKUIMetricsRequestInfo *)v10 setRequestStartTime:?];
      [SKUIMetricsUtilities timeIntervalFromJSTime:v6];
      [(SKUIMetricsRequestInfo *)v10 setResponseStartTime:?];
      [SKUIMetricsUtilities timeIntervalFromJSTime:v8];
      [(SKUIMetricsRequestInfo *)v10 setResponseEndTime:?];
      v11 = [v4 objectForKeyedSubscript:@"responseWasCached"];

      if (v11)
      {
        v12 = [v4 objectForKeyedSubscript:@"responseWasCached"];
        -[SKUIMetricsRequestInfo setResponseWasCached:](v10, "setResponseWasCached:", [v12 BOOLValue]);
      }
    }

    self = v10;
    v9 = self;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SKUIMetricsRequestInfo *)self requestStartTime];
  [v4 setRequestStartTime:?];
  [(SKUIMetricsRequestInfo *)self responseStartTime];
  [v4 setResponseStartTime:?];
  [(SKUIMetricsRequestInfo *)self responseEndTime];
  [v4 setResponseEndTime:?];
  if ([(SKUIMetricsRequestInfo *)self hasResponseWasCachedValue])
  {
    [v4 setResponseWasCached:{-[SKUIMetricsRequestInfo responseWasCached](self, "responseWasCached")}];
    [v4 setHasResponseWasCachedValue:1];
  }

  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  v12[4] = *MEMORY[0x277D85DE8];
  if ([(SKUIMetricsRequestInfo *)self hasResponseWasCachedValue])
  {
    v11[0] = @"requestStartTime";
    [(SKUIMetricsRequestInfo *)self requestStartTime];
    v3 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
    v12[0] = v3;
    v11[1] = @"responseStartTime";
    [(SKUIMetricsRequestInfo *)self responseStartTime];
    v4 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
    v12[1] = v4;
    v11[2] = @"responseEndTime";
    [(SKUIMetricsRequestInfo *)self responseEndTime];
    v5 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
    v12[2] = v5;
    v11[3] = @"responseWasCached";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKUIMetricsRequestInfo responseWasCached](self, "responseWasCached")}];
    v12[3] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  }

  else
  {
    v9[0] = @"requestStartTime";
    [(SKUIMetricsRequestInfo *)self requestStartTime];
    v3 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
    v10[0] = v3;
    v9[1] = @"responseStartTime";
    [(SKUIMetricsRequestInfo *)self responseStartTime];
    v4 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
    v10[1] = v4;
    v9[2] = @"responseEndTime";
    [(SKUIMetricsRequestInfo *)self responseEndTime];
    v5 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
    v10[2] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  }

  return v7;
}

- (void)initWithReportRequestTimesMessagePayload:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMetricsRequestInfo initWithReportRequestTimesMessagePayload:]";
}

@end