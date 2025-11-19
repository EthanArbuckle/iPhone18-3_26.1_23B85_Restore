@interface W5PowerStatus
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPowerStatus:(id)a3;
- (W5PowerStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)conformsToProtocol:(id)a3
{
  v5.receiver = self;
  v5.super_class = W5PowerStatus;
  if (-[W5PowerStatus conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([a3 isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToPowerStatus:(id)a3
{
  powerSourceType = self->_powerSourceType;
  if (powerSourceType != [a3 powerSourceType])
  {
    return 0;
  }

  batteryWarningLevel = self->_batteryWarningLevel;
  if (batteryWarningLevel != [a3 batteryWarningLevel])
  {
    return 0;
  }

  powerStateCaps = self->_powerStateCaps;
  if (powerStateCaps != [a3 powerStateCaps])
  {
    return 0;
  }

  internalBatteryLevel = self->_internalBatteryLevel;
  [a3 internalBatteryLevel];
  return internalBatteryLevel == v9;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5PowerStatus *)self isEqualToPowerStatus:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5PowerStatus allocWithZone:?]];
  [(W5PowerStatus *)v4 setPowerSourceType:self->_powerSourceType];
  [(W5PowerStatus *)v4 setBatteryWarningLevel:self->_batteryWarningLevel];
  [(W5PowerStatus *)v4 setPowerStateCaps:self->_powerStateCaps];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_powerSourceType forKey:@"_powerSourceType"];
  [a3 encodeInt:self->_batteryWarningLevel forKey:@"_batteryWarningLevel"];
  [a3 encodeDouble:@"_internalBatteryLevel" forKey:self->_internalBatteryLevel];
  powerStateCaps = self->_powerStateCaps;

  [a3 encodeInt:powerStateCaps forKey:@"_powerStateCaps"];
}

- (W5PowerStatus)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = W5PowerStatus;
  v4 = [(W5PowerStatus *)&v7 init];
  if (v4)
  {
    v4->_powerSourceType = [a3 decodeIntegerForKey:@"_powerSourceType"];
    v4->_batteryWarningLevel = [a3 decodeIntForKey:@"_batteryWarningLevel"];
    [a3 decodeFloatForKey:@"_internalBatteryLevel"];
    v4->_internalBatteryLevel = v5;
    v4->_powerStateCaps = [a3 decodeIntForKey:@"_powerStateCaps"];
  }

  return v4;
}

@end