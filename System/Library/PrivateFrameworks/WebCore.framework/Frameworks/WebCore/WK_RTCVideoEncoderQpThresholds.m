@interface WK_RTCVideoEncoderQpThresholds
- (WK_RTCVideoEncoderQpThresholds)initWithThresholdsLow:(int64_t)a3 high:(int64_t)a4;
@end

@implementation WK_RTCVideoEncoderQpThresholds

- (WK_RTCVideoEncoderQpThresholds)initWithThresholdsLow:(int64_t)a3 high:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = WK_RTCVideoEncoderQpThresholds;
  result = [(WK_RTCVideoEncoderQpThresholds *)&v7 init];
  if (result)
  {
    result->_low = a3;
    result->_high = a4;
  }

  return result;
}

@end