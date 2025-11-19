@interface TSWPDropCapCharacterMetricData
- (TSWPDropCapCharacterMetricData)init;
@end

@implementation TSWPDropCapCharacterMetricData

- (TSWPDropCapCharacterMetricData)init
{
  v3.receiver = self;
  v3.super_class = TSWPDropCapCharacterMetricData;
  result = [(TSWPDropCapCharacterMetricData *)&v3 init];
  if (result)
  {
    *&result->_leadingOffset = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  return result;
}

@end