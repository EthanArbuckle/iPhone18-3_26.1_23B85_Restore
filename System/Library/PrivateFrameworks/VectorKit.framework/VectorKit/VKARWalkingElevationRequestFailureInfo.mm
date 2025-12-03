@interface VKARWalkingElevationRequestFailureInfo
- (VKARWalkingElevationRequestFailureInfo)initWithReason:(int64_t)reason;
@end

@implementation VKARWalkingElevationRequestFailureInfo

- (VKARWalkingElevationRequestFailureInfo)initWithReason:(int64_t)reason
{
  v8.receiver = self;
  v8.super_class = VKARWalkingElevationRequestFailureInfo;
  v4 = [(VKARWalkingElevationRequestFailureInfo *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_reason = reason;
    v6 = v4;
  }

  return v5;
}

@end