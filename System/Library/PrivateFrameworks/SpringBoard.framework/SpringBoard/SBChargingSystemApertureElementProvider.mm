@interface SBChargingSystemApertureElementProvider
- (SBChargingSystemApertureElementProvider)init;
- (id)powerElementWithBatteryCapacity:(double)capacity;
@end

@implementation SBChargingSystemApertureElementProvider

- (SBChargingSystemApertureElementProvider)init
{
  v7.receiver = self;
  v7.super_class = SBChargingSystemApertureElementProvider;
  v2 = [(SBChargingSystemApertureElementProvider *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    elementIdentifier = v2->_elementIdentifier;
    v2->_elementIdentifier = v4;
  }

  return v2;
}

- (id)powerElementWithBatteryCapacity:(double)capacity
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  v7 = [[SBPowerAlertElement alloc] initWithIdentifier:self style:0 batteryPercentage:isLowPowerModeEnabled lowPowerModeEnabled:0 action:capacity];

  return v7;
}

@end