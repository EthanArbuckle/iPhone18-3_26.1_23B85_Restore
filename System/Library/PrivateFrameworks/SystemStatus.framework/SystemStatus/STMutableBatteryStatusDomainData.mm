@interface STMutableBatteryStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBatterySaverModeActive:(BOOL)active;
- (void)setChargingDescription:(id)description;
- (void)setChargingDescriptionType:(unint64_t)type;
- (void)setChargingState:(unint64_t)state;
- (void)setPercentCharge:(unint64_t)charge;
@end

@implementation STMutableBatteryStatusDomainData

- (void)setChargingState:(unint64_t)state
{
  if (self->super._chargingState != state)
  {
    self->super._chargingState = state;
  }
}

- (void)setPercentCharge:(unint64_t)charge
{
  if (self->super._percentCharge != charge)
  {
    self->super._percentCharge = charge;
  }
}

- (void)setBatterySaverModeActive:(BOOL)active
{
  if (self->super._batterySaverModeActive != active)
  {
    self->super._batterySaverModeActive = active;
  }
}

- (void)setChargingDescription:(id)description
{
  descriptionCopy = description;
  if (![(NSString *)self->super._chargingDescription isEqualToString:?])
  {
    v4 = [descriptionCopy copy];
    chargingDescription = self->super._chargingDescription;
    self->super._chargingDescription = v4;
  }
}

- (void)setChargingDescriptionType:(unint64_t)type
{
  if (self->super._chargingDescriptionType != type)
  {
    self->super._chargingDescriptionType = type;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STBatteryStatusDomainData allocWithZone:zone];

  return [(STBatteryStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [diffCopy applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

@end