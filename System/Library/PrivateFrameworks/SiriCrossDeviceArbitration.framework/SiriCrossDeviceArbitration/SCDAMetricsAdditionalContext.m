@interface SCDAMetricsAdditionalContext
- (SCDAMetricsAdditionalContext)initWithRawGoodnessScore:(unsigned __int8)a3 goodnessScore:(unsigned __int8)a4 deviceClass:(unsigned __int8)a5 deviceProductType:(unsigned __int8)a6;
@end

@implementation SCDAMetricsAdditionalContext

- (SCDAMetricsAdditionalContext)initWithRawGoodnessScore:(unsigned __int8)a3 goodnessScore:(unsigned __int8)a4 deviceClass:(unsigned __int8)a5 deviceProductType:(unsigned __int8)a6
{
  v11.receiver = self;
  v11.super_class = SCDAMetricsAdditionalContext;
  result = [(SCDAMetricsAdditionalContext *)&v11 init];
  if (result)
  {
    result->_rawGoodnessScore = a3;
    result->_goodnessScore = a4;
    result->_deviceClass = a5;
    result->_deviceProductType = a6;
  }

  return result;
}

@end