@interface RTVehicleEventNotification
- (RTVehicleEventNotification)initWithVehicleEvents:(id)events;
@end

@implementation RTVehicleEventNotification

- (RTVehicleEventNotification)initWithVehicleEvents:(id)events
{
  eventsCopy = events;
  v9.receiver = self;
  v9.super_class = RTVehicleEventNotification;
  v5 = [(RTNotification *)&v9 init];
  if (v5)
  {
    v6 = [eventsCopy copy];
    vehicleEvents = v5->_vehicleEvents;
    v5->_vehicleEvents = v6;
  }

  return v5;
}

@end