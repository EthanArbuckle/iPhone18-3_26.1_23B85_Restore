@interface STMutableTelephonySubscriptionInfo
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBootstrap:(BOOL)bootstrap;
- (void)setCallForwardingIndicator:(unint64_t)indicator;
- (void)setCellularRegistrationStatus:(unint64_t)status;
- (void)setDataConnectionType:(unint64_t)type;
- (void)setHiddenSIM:(BOOL)m;
- (void)setIdentifier:(id)identifier;
- (void)setLastKnownNetworkCountryCode:(id)code;
- (void)setMaxSignalStrengthBars:(unint64_t)bars;
- (void)setNetworkReselectionNeeded:(BOOL)needed;
- (void)setOperatorName:(id)name;
- (void)setPreferredForDataConnections:(BOOL)connections;
- (void)setProvidingDataConnection:(BOOL)connection;
- (void)setRegisteredWithoutCellular:(BOOL)cellular;
- (void)setRegistrationRejectionCauseCode:(int64_t)code;
- (void)setRegistrationStatus:(unint64_t)status;
- (void)setSIMLabel:(id)label;
- (void)setSIMStatus:(id)status;
- (void)setShortSIMLabel:(id)label;
- (void)setSignalStrengthBars:(unint64_t)bars;
@end

@implementation STMutableTelephonySubscriptionInfo

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:self->super._identifier] & 1) == 0)
  {
    v4 = [identifierCopy copy];
    identifier = self->super._identifier;
    self->super._identifier = v4;
  }
}

- (void)setSIMLabel:(id)label
{
  labelCopy = label;
  if (([labelCopy isEqualToString:self->super._SIMLabel] & 1) == 0)
  {
    v4 = [labelCopy copy];
    SIMLabel = self->super._SIMLabel;
    self->super._SIMLabel = v4;
  }
}

- (void)setShortSIMLabel:(id)label
{
  labelCopy = label;
  if (([labelCopy isEqualToString:self->super._shortSIMLabel] & 1) == 0)
  {
    v4 = [labelCopy copy];
    shortSIMLabel = self->super._shortSIMLabel;
    self->super._shortSIMLabel = v4;
  }
}

- (void)setSIMStatus:(id)status
{
  statusCopy = status;
  if (([statusCopy isEqualToString:self->super._SIMStatus] & 1) == 0)
  {
    v4 = [statusCopy copy];
    SIMStatus = self->super._SIMStatus;
    self->super._SIMStatus = v4;
  }
}

- (void)setHiddenSIM:(BOOL)m
{
  if (self->super._hiddenSIM != m)
  {
    self->super._hiddenSIM = m;
  }
}

- (void)setRegistrationStatus:(unint64_t)status
{
  if (self->super._registrationStatus != status)
  {
    self->super._registrationStatus = status;
  }
}

- (void)setCellularRegistrationStatus:(unint64_t)status
{
  if (self->super._cellularRegistrationStatus != status)
  {
    self->super._cellularRegistrationStatus = status;
  }
}

- (void)setDataConnectionType:(unint64_t)type
{
  if (self->super._dataConnectionType != type)
  {
    self->super._dataConnectionType = type;
  }
}

- (void)setPreferredForDataConnections:(BOOL)connections
{
  if (self->super._preferredForDataConnections != connections)
  {
    self->super._preferredForDataConnections = connections;
  }
}

- (void)setProvidingDataConnection:(BOOL)connection
{
  if (self->super._providingDataConnection != connection)
  {
    self->super._providingDataConnection = connection;
  }
}

- (void)setBootstrap:(BOOL)bootstrap
{
  if (self->super._bootstrap != bootstrap)
  {
    self->super._bootstrap = bootstrap;
  }
}

- (void)setRegisteredWithoutCellular:(BOOL)cellular
{
  if (self->super._registeredWithoutCellular != cellular)
  {
    self->super._registeredWithoutCellular = cellular;
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

- (void)setOperatorName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->super._operatorName] & 1) == 0)
  {
    v4 = [nameCopy copy];
    operatorName = self->super._operatorName;
    self->super._operatorName = v4;
  }
}

- (void)setLastKnownNetworkCountryCode:(id)code
{
  codeCopy = code;
  if (([codeCopy isEqualToString:self->super._lastKnownNetworkCountryCode] & 1) == 0)
  {
    v4 = [codeCopy copy];
    lastKnownNetworkCountryCode = self->super._lastKnownNetworkCountryCode;
    self->super._lastKnownNetworkCountryCode = v4;
  }
}

- (void)setCallForwardingIndicator:(unint64_t)indicator
{
  if (self->super._callForwardingIndicator != indicator)
  {
    self->super._callForwardingIndicator = indicator;
  }
}

- (void)setNetworkReselectionNeeded:(BOOL)needed
{
  if (self->super._networkReselectionNeeded != needed)
  {
    self->super._networkReselectionNeeded = needed;
  }
}

- (void)setRegistrationRejectionCauseCode:(int64_t)code
{
  if (self->super._registrationRejectionCauseCode != code)
  {
    self->super._registrationRejectionCauseCode = code;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STTelephonySubscriptionInfo allocWithZone:zone];

  return [(STTelephonySubscriptionInfo *)v4 initWithSubscriptionInfo:?];
}

@end