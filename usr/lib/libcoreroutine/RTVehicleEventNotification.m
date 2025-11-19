@interface RTVehicleEventNotification
- (RTVehicleEventNotification)initWithVehicleEvents:(id)a3;
@end

@implementation RTVehicleEventNotification

- (RTVehicleEventNotification)initWithVehicleEvents:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTVehicleEventNotification;
  v5 = [(RTNotification *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    vehicleEvents = v5->_vehicleEvents;
    v5->_vehicleEvents = v6;
  }

  return v5;
}

@end