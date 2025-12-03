@interface PMDeviceSharingAvailability
- (PMDeviceSharingAvailability)init;
- (PMDeviceSharingAvailability)initWithDevicesWithSharingAvailable:(id)available devicesWithSharingUnavailable:(id)unavailable;
@end

@implementation PMDeviceSharingAvailability

- (PMDeviceSharingAvailability)initWithDevicesWithSharingAvailable:(id)available devicesWithSharingUnavailable:(id)unavailable
{
  type metadata accessor for PMDevice(self);
  v5 = sub_21CB85824();
  v6 = sub_21CB85824();
  *(self + OBJC_IVAR___PMDeviceSharingAvailability_devicesWithSharingAvailable) = v5;
  *(self + OBJC_IVAR___PMDeviceSharingAvailability_devicesWithSharingUnavailable) = v6;
  v8.receiver = self;
  v8.super_class = PMDeviceSharingAvailability;
  return [(PMDeviceSharingAvailability *)&v8 init];
}

- (PMDeviceSharingAvailability)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end