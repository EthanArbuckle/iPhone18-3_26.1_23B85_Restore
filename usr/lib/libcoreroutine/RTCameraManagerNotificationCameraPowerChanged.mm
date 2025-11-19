@interface RTCameraManagerNotificationCameraPowerChanged
- (RTCameraManagerNotificationCameraPowerChanged)initWithCameraType:(int64_t)a3 powerState:(int64_t)a4;
@end

@implementation RTCameraManagerNotificationCameraPowerChanged

- (RTCameraManagerNotificationCameraPowerChanged)initWithCameraType:(int64_t)a3 powerState:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = RTCameraManagerNotificationCameraPowerChanged;
  result = [(RTNotification *)&v7 init];
  if (result)
  {
    result->_cameraType = a3;
    result->_powerState = a4;
  }

  return result;
}

@end