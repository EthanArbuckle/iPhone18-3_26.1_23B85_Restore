@interface STMutableTelephonyStatusDomainSIMInfo
- (BOOL)applyDiff:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBootstrap:(BOOL)a3;
- (void)setCallForwardingEnabled:(BOOL)a3;
- (void)setCellularServiceState:(unint64_t)a3;
- (void)setDataNetworkType:(unint64_t)a3;
- (void)setLabel:(id)a3;
- (void)setMaxSignalStrengthBars:(unint64_t)a3;
- (void)setPreferredForDataConnections:(BOOL)a3;
- (void)setProvidingDataConnection:(BOOL)a3;
- (void)setRegisteredWithoutCellular:(BOOL)a3;
- (void)setSIMPresent:(BOOL)a3;
- (void)setSecondaryServiceDescription:(id)a3;
- (void)setServiceDescription:(id)a3;
- (void)setServiceState:(unint64_t)a3;
- (void)setShortLabel:(id)a3;
- (void)setSignalStrengthBars:(unint64_t)a3;
@end

@implementation STMutableTelephonyStatusDomainSIMInfo

- (void)setSIMPresent:(BOOL)a3
{
  if (self->super._SIMPresent != a3)
  {
    self->super._SIMPresent = a3;
  }
}

- (void)setBootstrap:(BOOL)a3
{
  if (self->super._bootstrap != a3)
  {
    self->super._bootstrap = a3;
  }
}

- (void)setLabel:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->super._label isEqualToString:?])
  {
    v4 = [v6 copy];
    label = self->super._label;
    self->super._label = v4;
  }
}

- (void)setShortLabel:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->super._shortLabel isEqualToString:?])
  {
    v4 = [v6 copy];
    shortLabel = self->super._shortLabel;
    self->super._shortLabel = v4;
  }
}

- (void)setSignalStrengthBars:(unint64_t)a3
{
  if (self->super._signalStrengthBars != a3)
  {
    self->super._signalStrengthBars = a3;
  }
}

- (void)setMaxSignalStrengthBars:(unint64_t)a3
{
  if (self->super._maxSignalStrengthBars != a3)
  {
    self->super._maxSignalStrengthBars = a3;
  }
}

- (void)setServiceState:(unint64_t)a3
{
  if (self->super._serviceState != a3)
  {
    self->super._serviceState = a3;
  }
}

- (void)setCellularServiceState:(unint64_t)a3
{
  if (self->super._cellularServiceState != a3)
  {
    self->super._cellularServiceState = a3;
  }
}

- (void)setServiceDescription:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->super._serviceDescription isEqualToString:?])
  {
    v4 = [v6 copy];
    serviceDescription = self->super._serviceDescription;
    self->super._serviceDescription = v4;
  }
}

- (void)setSecondaryServiceDescription:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->super._secondaryServiceDescription isEqualToString:?])
  {
    v4 = [v6 copy];
    secondaryServiceDescription = self->super._secondaryServiceDescription;
    self->super._secondaryServiceDescription = v4;
  }
}

- (void)setDataNetworkType:(unint64_t)a3
{
  if (self->super._dataNetworkType != a3)
  {
    self->super._dataNetworkType = a3;
  }
}

- (void)setProvidingDataConnection:(BOOL)a3
{
  if (self->super._providingDataConnection != a3)
  {
    self->super._providingDataConnection = a3;
  }
}

- (void)setPreferredForDataConnections:(BOOL)a3
{
  if (self->super._preferredForDataConnections != a3)
  {
    self->super._preferredForDataConnections = a3;
  }
}

- (void)setRegisteredWithoutCellular:(BOOL)a3
{
  if (self->super._registeredWithoutCellular != a3)
  {
    self->super._registeredWithoutCellular = a3;
  }
}

- (void)setCallForwardingEnabled:(BOOL)a3
{
  if (self->super._callForwardingEnabled != a3)
  {
    self->super._callForwardingEnabled = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STTelephonyStatusDomainSIMInfo allocWithZone:a3];

  return [(STTelephonyStatusDomainSIMInfo *)v4 initWithSIMInfo:?];
}

- (BOOL)applyDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v4 applyToMutableInfo:self];
  }

  return isKindOfClass & 1;
}

@end