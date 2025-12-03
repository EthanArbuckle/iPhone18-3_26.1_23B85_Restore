@interface NRFProgressiveBracketingFrameParameters
- (NRFProgressiveBracketingFrameParameters)initWithIntegrationTime:(double)time gain:(float)gain AGC:(int)c;
@end

@implementation NRFProgressiveBracketingFrameParameters

- (NRFProgressiveBracketingFrameParameters)initWithIntegrationTime:(double)time gain:(float)gain AGC:(int)c
{
  v9.receiver = self;
  v9.super_class = NRFProgressiveBracketingFrameParameters;
  result = [(NRFProgressiveBracketingFrameParameters *)&v9 init];
  if (result)
  {
    result->_integrationTime = time;
    result->_gain = gain;
    result->_AGC = c;
  }

  return result;
}

@end