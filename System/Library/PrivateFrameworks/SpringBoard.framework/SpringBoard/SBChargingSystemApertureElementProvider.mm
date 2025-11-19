@interface SBChargingSystemApertureElementProvider
- (SBChargingSystemApertureElementProvider)init;
- (id)powerElementWithBatteryCapacity:(double)a3;
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

- (id)powerElementWithBatteryCapacity:(double)a3
{
  v5 = [MEMORY[0x277CCAC38] processInfo];
  v6 = [v5 isLowPowerModeEnabled];

  v7 = [[SBPowerAlertElement alloc] initWithIdentifier:self style:0 batteryPercentage:v6 lowPowerModeEnabled:0 action:a3];

  return v7;
}

@end