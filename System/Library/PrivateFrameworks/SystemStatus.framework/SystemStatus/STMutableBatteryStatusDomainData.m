@interface STMutableBatteryStatusDomainData
- (BOOL)applyDiff:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBatterySaverModeActive:(BOOL)a3;
- (void)setChargingDescription:(id)a3;
- (void)setChargingDescriptionType:(unint64_t)a3;
- (void)setChargingState:(unint64_t)a3;
- (void)setPercentCharge:(unint64_t)a3;
@end

@implementation STMutableBatteryStatusDomainData

- (void)setChargingState:(unint64_t)a3
{
  if (self->super._chargingState != a3)
  {
    self->super._chargingState = a3;
  }
}

- (void)setPercentCharge:(unint64_t)a3
{
  if (self->super._percentCharge != a3)
  {
    self->super._percentCharge = a3;
  }
}

- (void)setBatterySaverModeActive:(BOOL)a3
{
  if (self->super._batterySaverModeActive != a3)
  {
    self->super._batterySaverModeActive = a3;
  }
}

- (void)setChargingDescription:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->super._chargingDescription isEqualToString:?])
  {
    v4 = [v6 copy];
    chargingDescription = self->super._chargingDescription;
    self->super._chargingDescription = v4;
  }
}

- (void)setChargingDescriptionType:(unint64_t)a3
{
  if (self->super._chargingDescriptionType != a3)
  {
    self->super._chargingDescriptionType = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STBatteryStatusDomainData allocWithZone:a3];

  return [(STBatteryStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v4 applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

@end