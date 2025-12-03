@interface SKUIMetricsDOMChange
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (SKUIMetricsDOMChange)initWithReportDomBuildTimesMessagePayload:(id)payload;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKUIMetricsDOMChange

- (SKUIMetricsDOMChange)initWithReportDomBuildTimesMessagePayload:(id)payload
{
  payloadCopy = payload;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIMetricsDOMChange initWithReportDomBuildTimesMessagePayload:];
  }

  v5 = [payloadCopy objectForKeyedSubscript:@"buildStartTime"];
  v6 = [payloadCopy objectForKeyedSubscript:@"buildEndTime"];
  v7 = v6;
  selfCopy = 0;
  if (v5 && v6)
  {
    v9 = [(SKUIMetricsDOMChange *)self init];
    if (v9)
    {
      [SKUIMetricsUtilities timeIntervalFromJSTime:v5];
      [(SKUIMetricsDOMChange *)v9 setBuildStartTime:?];
      [SKUIMetricsUtilities timeIntervalFromJSTime:v7];
      [(SKUIMetricsDOMChange *)v9 setBuildEndTime:?];
      v10 = [payloadCopy objectForKeyedSubscript:@"messageWasDeferred"];
      -[SKUIMetricsDOMChange setFromDeferredMessage:](v9, "setFromDeferredMessage:", [v10 BOOLValue]);
    }

    self = v9;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(SKUIMetricsDOMChange *)self buildStartTime];
  [v4 setBuildStartTime:?];
  [(SKUIMetricsDOMChange *)self buildEndTime];
  [v4 setBuildEndTime:?];
  [(SKUIMetricsDOMChange *)self renderStartTime];
  [v4 setRenderStartTime:?];
  [(SKUIMetricsDOMChange *)self renderEndTime];
  [v4 setRenderEndTime:?];
  [v4 setFromDeferredMessage:{-[SKUIMetricsDOMChange isFromDeferredMessage](self, "isFromDeferredMessage")}];
  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"buildStartTime";
  [(SKUIMetricsDOMChange *)self buildStartTime];
  v3 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[0] = v3;
  v9[1] = @"buildEndTime";
  [(SKUIMetricsDOMChange *)self buildEndTime];
  v4 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[1] = v4;
  v9[2] = @"renderStartTime";
  [(SKUIMetricsDOMChange *)self renderStartTime];
  v5 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[2] = v5;
  v9[3] = @"renderEndTime";
  [(SKUIMetricsDOMChange *)self renderEndTime];
  v6 = [SKUIMetricsUtilities jsTimeFromTimeInterval:?];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (unint64_t)hash
{
  [(SKUIMetricsDOMChange *)self buildStartTime];
  v4 = v3;
  [(SKUIMetricsDOMChange *)self buildEndTime];
  v6 = v4 + 10 * v5;
  [(SKUIMetricsDOMChange *)self renderStartTime];
  v8 = v6 + 100 * v7;
  [(SKUIMetricsDOMChange *)self renderEndTime];
  v10 = v8 + 1000 * v9;
  isFromDeferredMessage = [(SKUIMetricsDOMChange *)self isFromDeferredMessage];
  v12 = 10000;
  if (!isFromDeferredMessage)
  {
    v12 = 0;
  }

  return v10 + v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(SKUIMetricsDOMChange *)self buildStartTime];
      v7 = v6;
      [(SKUIMetricsDOMChange *)v5 buildStartTime];
      if (v7 == v8 && ([(SKUIMetricsDOMChange *)self buildEndTime], v10 = v9, [(SKUIMetricsDOMChange *)v5 buildEndTime], v10 == v11) && ([(SKUIMetricsDOMChange *)self renderStartTime], v13 = v12, [(SKUIMetricsDOMChange *)v5 renderStartTime], v13 == v14) && ([(SKUIMetricsDOMChange *)self renderEndTime], v16 = v15, [(SKUIMetricsDOMChange *)v5 renderEndTime], v16 == v17))
      {
        isFromDeferredMessage = [(SKUIMetricsDOMChange *)self isFromDeferredMessage];
        v19 = isFromDeferredMessage ^ [(SKUIMetricsDOMChange *)v5 isFromDeferredMessage]^ 1;
      }

      else
      {
        LOBYTE(v19) = 0;
      }
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(SKUIMetricsDOMChange *)self buildStartTime];
  v7 = v6;
  [(SKUIMetricsDOMChange *)self buildEndTime];
  v9 = v8;
  [(SKUIMetricsDOMChange *)self renderStartTime];
  v11 = v10;
  [(SKUIMetricsDOMChange *)self renderEndTime];
  v13 = [v3 stringWithFormat:@"<%@:%p buildStartTime = %f; buildEndTime = %f; renderStartTime = %f; renderEndTime = %f>", v5, self, v7, v9, v11, v12];;

  return v13;
}

- (void)initWithReportDomBuildTimesMessagePayload:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMetricsDOMChange initWithReportDomBuildTimesMessagePayload:]";
}

@end