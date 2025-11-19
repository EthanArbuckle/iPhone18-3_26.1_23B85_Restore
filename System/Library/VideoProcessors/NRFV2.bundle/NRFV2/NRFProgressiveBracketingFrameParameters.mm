@interface NRFProgressiveBracketingFrameParameters
- (NRFProgressiveBracketingFrameParameters)initWithIntegrationTime:(double)a3 gain:(float)a4 AGC:(int)a5;
@end

@implementation NRFProgressiveBracketingFrameParameters

- (NRFProgressiveBracketingFrameParameters)initWithIntegrationTime:(double)a3 gain:(float)a4 AGC:(int)a5
{
  v9.receiver = self;
  v9.super_class = NRFProgressiveBracketingFrameParameters;
  result = [(NRFProgressiveBracketingFrameParameters *)&v9 init];
  if (result)
  {
    result->_integrationTime = a3;
    result->_gain = a4;
    result->_AGC = a5;
  }

  return result;
}

@end