@interface STMutableTelephonyStatusDomainSIMInfo
- (BOOL)applyDiff:(id)diff;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBootstrap:(BOOL)bootstrap;
- (void)setCallForwardingEnabled:(BOOL)enabled;
- (void)setCellularServiceState:(unint64_t)state;
- (void)setDataNetworkType:(unint64_t)type;
- (void)setLabel:(id)label;
- (void)setMaxSignalStrengthBars:(unint64_t)bars;
- (void)setPreferredForDataConnections:(BOOL)connections;
- (void)setProvidingDataConnection:(BOOL)connection;
- (void)setRegisteredWithoutCellular:(BOOL)cellular;
- (void)setSIMPresent:(BOOL)present;
- (void)setSecondaryServiceDescription:(id)description;
- (void)setServiceDescription:(id)description;
- (void)setServiceState:(unint64_t)state;
- (void)setShortLabel:(id)label;
- (void)setSignalStrengthBars:(unint64_t)bars;
@end

@implementation STMutableTelephonyStatusDomainSIMInfo

- (void)setSIMPresent:(BOOL)present
{
  if (self->super._SIMPresent != present)
  {
    self->super._SIMPresent = present;
  }
}

- (void)setBootstrap:(BOOL)bootstrap
{
  if (self->super._bootstrap != bootstrap)
  {
    self->super._bootstrap = bootstrap;
  }
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  if (![(NSString *)self->super._label isEqualToString:?])
  {
    v4 = [labelCopy copy];
    label = self->super._label;
    self->super._label = v4;
  }
}

- (void)setShortLabel:(id)label
{
  labelCopy = label;
  if (![(NSString *)self->super._shortLabel isEqualToString:?])
  {
    v4 = [labelCopy copy];
    shortLabel = self->super._shortLabel;
    self->super._shortLabel = v4;
  }
}

- (void)setSignalStrengthBars:(unint64_t)bars
{
  if (self->super._signalStrengthBars != bars)
  {
    self->super._signalStrengthBars = bars;
  }
}

- (void)setMaxSignalStrengthBars:(unint64_t)bars
{
  if (self->super._maxSignalStrengthBars != bars)
  {
    self->super._maxSignalStrengthBars = bars;
  }
}

- (void)setServiceState:(unint64_t)state
{
  if (self->super._serviceState != state)
  {
    self->super._serviceState = state;
  }
}

- (void)setCellularServiceState:(unint64_t)state
{
  if (self->super._cellularServiceState != state)
  {
    self->super._cellularServiceState = state;
  }
}

- (void)setServiceDescription:(id)description
{
  descriptionCopy = description;
  if (![(NSString *)self->super._serviceDescription isEqualToString:?])
  {
    v4 = [descriptionCopy copy];
    serviceDescription = self->super._serviceDescription;
    self->super._serviceDescription = v4;
  }
}

- (void)setSecondaryServiceDescription:(id)description
{
  descriptionCopy = description;
  if (![(NSString *)self->super._secondaryServiceDescription isEqualToString:?])
  {
    v4 = [descriptionCopy copy];
    secondaryServiceDescription = self->super._secondaryServiceDescription;
    self->super._secondaryServiceDescription = v4;
  }
}

- (void)setDataNetworkType:(unint64_t)type
{
  if (self->super._dataNetworkType != type)
  {
    self->super._dataNetworkType = type;
  }
}

- (void)setProvidingDataConnection:(BOOL)connection
{
  if (self->super._providingDataConnection != connection)
  {
    self->super._providingDataConnection = connection;
  }
}

- (void)setPreferredForDataConnections:(BOOL)connections
{
  if (self->super._preferredForDataConnections != connections)
  {
    self->super._preferredForDataConnections = connections;
  }
}

- (void)setRegisteredWithoutCellular:(BOOL)cellular
{
  if (self->super._registeredWithoutCellular != cellular)
  {
    self->super._registeredWithoutCellular = cellular;
  }
}

- (void)setCallForwardingEnabled:(BOOL)enabled
{
  if (self->super._callForwardingEnabled != enabled)
  {
    self->super._callForwardingEnabled = enabled;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STTelephonyStatusDomainSIMInfo allocWithZone:zone];

  return [(STTelephonyStatusDomainSIMInfo *)v4 initWithSIMInfo:?];
}

- (BOOL)applyDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [diffCopy applyToMutableInfo:self];
  }

  return isKindOfClass & 1;
}

@end