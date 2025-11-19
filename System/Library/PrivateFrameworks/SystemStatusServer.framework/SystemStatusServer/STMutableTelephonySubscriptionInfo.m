@interface STMutableTelephonySubscriptionInfo
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBootstrap:(BOOL)a3;
- (void)setCallForwardingIndicator:(unint64_t)a3;
- (void)setCellularRegistrationStatus:(unint64_t)a3;
- (void)setDataConnectionType:(unint64_t)a3;
- (void)setHiddenSIM:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setLastKnownNetworkCountryCode:(id)a3;
- (void)setMaxSignalStrengthBars:(unint64_t)a3;
- (void)setNetworkReselectionNeeded:(BOOL)a3;
- (void)setOperatorName:(id)a3;
- (void)setPreferredForDataConnections:(BOOL)a3;
- (void)setProvidingDataConnection:(BOOL)a3;
- (void)setRegisteredWithoutCellular:(BOOL)a3;
- (void)setRegistrationRejectionCauseCode:(int64_t)a3;
- (void)setRegistrationStatus:(unint64_t)a3;
- (void)setSIMLabel:(id)a3;
- (void)setSIMStatus:(id)a3;
- (void)setShortSIMLabel:(id)a3;
- (void)setSignalStrengthBars:(unint64_t)a3;
@end

@implementation STMutableTelephonySubscriptionInfo

- (void)setIdentifier:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._identifier] & 1) == 0)
  {
    v4 = [v6 copy];
    identifier = self->super._identifier;
    self->super._identifier = v4;
  }
}

- (void)setSIMLabel:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._SIMLabel] & 1) == 0)
  {
    v4 = [v6 copy];
    SIMLabel = self->super._SIMLabel;
    self->super._SIMLabel = v4;
  }
}

- (void)setShortSIMLabel:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._shortSIMLabel] & 1) == 0)
  {
    v4 = [v6 copy];
    shortSIMLabel = self->super._shortSIMLabel;
    self->super._shortSIMLabel = v4;
  }
}

- (void)setSIMStatus:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._SIMStatus] & 1) == 0)
  {
    v4 = [v6 copy];
    SIMStatus = self->super._SIMStatus;
    self->super._SIMStatus = v4;
  }
}

- (void)setHiddenSIM:(BOOL)a3
{
  if (self->super._hiddenSIM != a3)
  {
    self->super._hiddenSIM = a3;
  }
}

- (void)setRegistrationStatus:(unint64_t)a3
{
  if (self->super._registrationStatus != a3)
  {
    self->super._registrationStatus = a3;
  }
}

- (void)setCellularRegistrationStatus:(unint64_t)a3
{
  if (self->super._cellularRegistrationStatus != a3)
  {
    self->super._cellularRegistrationStatus = a3;
  }
}

- (void)setDataConnectionType:(unint64_t)a3
{
  if (self->super._dataConnectionType != a3)
  {
    self->super._dataConnectionType = a3;
  }
}

- (void)setPreferredForDataConnections:(BOOL)a3
{
  if (self->super._preferredForDataConnections != a3)
  {
    self->super._preferredForDataConnections = a3;
  }
}

- (void)setProvidingDataConnection:(BOOL)a3
{
  if (self->super._providingDataConnection != a3)
  {
    self->super._providingDataConnection = a3;
  }
}

- (void)setBootstrap:(BOOL)a3
{
  if (self->super._bootstrap != a3)
  {
    self->super._bootstrap = a3;
  }
}

- (void)setRegisteredWithoutCellular:(BOOL)a3
{
  if (self->super._registeredWithoutCellular != a3)
  {
    self->super._registeredWithoutCellular = a3;
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

- (void)setOperatorName:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._operatorName] & 1) == 0)
  {
    v4 = [v6 copy];
    operatorName = self->super._operatorName;
    self->super._operatorName = v4;
  }
}

- (void)setLastKnownNetworkCountryCode:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->super._lastKnownNetworkCountryCode] & 1) == 0)
  {
    v4 = [v6 copy];
    lastKnownNetworkCountryCode = self->super._lastKnownNetworkCountryCode;
    self->super._lastKnownNetworkCountryCode = v4;
  }
}

- (void)setCallForwardingIndicator:(unint64_t)a3
{
  if (self->super._callForwardingIndicator != a3)
  {
    self->super._callForwardingIndicator = a3;
  }
}

- (void)setNetworkReselectionNeeded:(BOOL)a3
{
  if (self->super._networkReselectionNeeded != a3)
  {
    self->super._networkReselectionNeeded = a3;
  }
}

- (void)setRegistrationRejectionCauseCode:(int64_t)a3
{
  if (self->super._registrationRejectionCauseCode != a3)
  {
    self->super._registrationRejectionCauseCode = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STTelephonySubscriptionInfo allocWithZone:a3];

  return [(STTelephonySubscriptionInfo *)v4 initWithSubscriptionInfo:?];
}

@end