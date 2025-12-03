@interface SCDAMetricsAdditionalContext
- (SCDAMetricsAdditionalContext)initWithRawGoodnessScore:(unsigned __int8)score goodnessScore:(unsigned __int8)goodnessScore deviceClass:(unsigned __int8)class deviceProductType:(unsigned __int8)type;
@end

@implementation SCDAMetricsAdditionalContext

- (SCDAMetricsAdditionalContext)initWithRawGoodnessScore:(unsigned __int8)score goodnessScore:(unsigned __int8)goodnessScore deviceClass:(unsigned __int8)class deviceProductType:(unsigned __int8)type
{
  v11.receiver = self;
  v11.super_class = SCDAMetricsAdditionalContext;
  result = [(SCDAMetricsAdditionalContext *)&v11 init];
  if (result)
  {
    result->_rawGoodnessScore = score;
    result->_goodnessScore = goodnessScore;
    result->_deviceClass = class;
    result->_deviceProductType = type;
  }

  return result;
}

@end