@interface W5PowerStatus
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPowerStatus:(id)status;
- (W5PowerStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation W5PowerStatus

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"Power Source Type: %@\n", W5DescriptionForPowerSourceType(self->_powerSourceType)];
  [v3 appendFormat:@"Internal Battery Level: %.0f\n", *&self->_internalBatteryLevel];
  [v3 appendFormat:@"Battery Warning Level: %@\n", W5DescriptionForBatteryWarningLevel(self->_batteryWarningLevel)];
  powerStateCaps = self->_powerStateCaps;
  [v3 appendFormat:@"Power State: %@\n", W5DescriptionForPowerStateCaps()];
  v5 = [v3 copy];

  return v5;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v5.receiver = self;
  v5.super_class = W5PowerStatus;
  if (-[W5PowerStatus conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([protocol isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [protocol isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToPowerStatus:(id)status
{
  powerSourceType = self->_powerSourceType;
  if (powerSourceType != [status powerSourceType])
  {
    return 0;
  }

  batteryWarningLevel = self->_batteryWarningLevel;
  if (batteryWarningLevel != [status batteryWarningLevel])
  {
    return 0;
  }

  powerStateCaps = self->_powerStateCaps;
  if (powerStateCaps != [status powerStateCaps])
  {
    return 0;
  }

  internalBatteryLevel = self->_internalBatteryLevel;
  [status internalBatteryLevel];
  return internalBatteryLevel == v9;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5PowerStatus *)self isEqualToPowerStatus:equal];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5PowerStatus allocWithZone:?]];
  [(W5PowerStatus *)v4 setPowerSourceType:self->_powerSourceType];
  [(W5PowerStatus *)v4 setBatteryWarningLevel:self->_batteryWarningLevel];
  [(W5PowerStatus *)v4 setPowerStateCaps:self->_powerStateCaps];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_powerSourceType forKey:@"_powerSourceType"];
  [coder encodeInt:self->_batteryWarningLevel forKey:@"_batteryWarningLevel"];
  [coder encodeDouble:@"_internalBatteryLevel" forKey:self->_internalBatteryLevel];
  powerStateCaps = self->_powerStateCaps;

  [coder encodeInt:powerStateCaps forKey:@"_powerStateCaps"];
}

- (W5PowerStatus)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = W5PowerStatus;
  v4 = [(W5PowerStatus *)&v7 init];
  if (v4)
  {
    v4->_powerSourceType = [coder decodeIntegerForKey:@"_powerSourceType"];
    v4->_batteryWarningLevel = [coder decodeIntForKey:@"_batteryWarningLevel"];
    [coder decodeFloatForKey:@"_internalBatteryLevel"];
    v4->_internalBatteryLevel = v5;
    v4->_powerStateCaps = [coder decodeIntForKey:@"_powerStateCaps"];
  }

  return v4;
}

@end