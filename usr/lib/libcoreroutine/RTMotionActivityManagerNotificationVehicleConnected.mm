@interface RTMotionActivityManagerNotificationVehicleConnected
- (RTMotionActivityManagerNotificationVehicleConnected)initWithVehicleConnectedState:(unint64_t)state deviceId:(id)id;
@end

@implementation RTMotionActivityManagerNotificationVehicleConnected

- (RTMotionActivityManagerNotificationVehicleConnected)initWithVehicleConnectedState:(unint64_t)state deviceId:(id)id
{
  idCopy = id;
  v12.receiver = self;
  v12.super_class = RTMotionActivityManagerNotificationVehicleConnected;
  v7 = [(RTNotification *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_vehicleConnectedState = state;
    v9 = [idCopy copy];
    deviceId = v8->_deviceId;
    v8->_deviceId = v9;
  }

  return v8;
}

@end