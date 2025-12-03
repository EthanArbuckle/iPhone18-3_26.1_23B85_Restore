@interface WK_RTCVideoEncoderQpThresholds
- (WK_RTCVideoEncoderQpThresholds)initWithThresholdsLow:(int64_t)low high:(int64_t)high;
@end

@implementation WK_RTCVideoEncoderQpThresholds

- (WK_RTCVideoEncoderQpThresholds)initWithThresholdsLow:(int64_t)low high:(int64_t)high
{
  v7.receiver = self;
  v7.super_class = WK_RTCVideoEncoderQpThresholds;
  result = [(WK_RTCVideoEncoderQpThresholds *)&v7 init];
  if (result)
  {
    result->_low = low;
    result->_high = high;
  }

  return result;
}

@end