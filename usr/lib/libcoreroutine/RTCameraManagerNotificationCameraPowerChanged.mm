@interface RTCameraManagerNotificationCameraPowerChanged
- (RTCameraManagerNotificationCameraPowerChanged)initWithCameraType:(int64_t)type powerState:(int64_t)state;
@end

@implementation RTCameraManagerNotificationCameraPowerChanged

- (RTCameraManagerNotificationCameraPowerChanged)initWithCameraType:(int64_t)type powerState:(int64_t)state
{
  v7.receiver = self;
  v7.super_class = RTCameraManagerNotificationCameraPowerChanged;
  result = [(RTNotification *)&v7 init];
  if (result)
  {
    result->_cameraType = type;
    result->_powerState = state;
  }

  return result;
}

@end