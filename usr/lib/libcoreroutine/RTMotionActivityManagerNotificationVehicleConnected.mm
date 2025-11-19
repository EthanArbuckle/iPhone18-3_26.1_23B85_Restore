@interface RTMotionActivityManagerNotificationVehicleConnected
- (RTMotionActivityManagerNotificationVehicleConnected)initWithVehicleConnectedState:(unint64_t)a3 deviceId:(id)a4;
@end

@implementation RTMotionActivityManagerNotificationVehicleConnected

- (RTMotionActivityManagerNotificationVehicleConnected)initWithVehicleConnectedState:(unint64_t)a3 deviceId:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = RTMotionActivityManagerNotificationVehicleConnected;
  v7 = [(RTNotification *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_vehicleConnectedState = a3;
    v9 = [v6 copy];
    deviceId = v8->_deviceId;
    v8->_deviceId = v9;
  }

  return v8;
}

@end