@interface TUCallServicesClientCapabilities
- (TUCallServicesClientCapabilities)initWithCoder:(id)a3;
- (TUCallServicesClientCapabilitiesActions)delegate;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)save;
@end

@implementation TUCallServicesClientCapabilities

- (void)save
{
  v3 = [(TUCallServicesClientCapabilities *)self delegate];
  [v3 setClientCapabilities:self];
}

- (TUCallServicesClientCapabilitiesActions)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TUCallServicesClientCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TUCallServicesClientCapabilities;
  v5 = [(TUCallServicesClientCapabilities *)&v7 init];
  if (v5)
  {
    v5->_wantsCallDisconnectionOnInvalidation = [v4 decodeBoolForKey:@"wantsCallDisconnectionOnInvalidation"];
    v5->_wantsCallStopStreamingOnInvalidation = [v4 decodeBoolForKey:@"wantsCallStopStreamingOnInvalidation"];
    v5->_wantsFrequencyChangeNotifications = [v4 decodeBoolForKey:@"wantsFrequencyChangeNotifications"];
    v5->_wantsCallNotificationsDisabledWhileSuspended = [v4 decodeBoolForKey:@"wantsCallNotificationsDisabledWhileSuspended"];
    v5->_wantsToScreenCalls = [v4 decodeBoolForKey:@"wantsToScreenCalls"];
    v5->_excludeFullNearbyCalls = [v4 decodeBoolForKey:@"excludeFullNearbyCalls"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  wantsCallDisconnectionOnInvalidation = self->_wantsCallDisconnectionOnInvalidation;
  v5 = a3;
  [v5 encodeBool:wantsCallDisconnectionOnInvalidation forKey:@"wantsCallDisconnectionOnInvalidation"];
  [v5 encodeBool:self->_wantsCallStopStreamingOnInvalidation forKey:@"wantsCallStopStreamingOnInvalidation"];
  [v5 encodeBool:self->_wantsFrequencyChangeNotifications forKey:@"wantsFrequencyChangeNotifications"];
  [v5 encodeBool:self->_wantsCallNotificationsDisabledWhileSuspended forKey:@"wantsCallNotificationsDisabledWhileSuspended"];
  [v5 encodeBool:self->_wantsToScreenCalls forKey:@"wantsToScreenCalls"];
  [v5 encodeBool:self->_excludeFullNearbyCalls forKey:@"excludeFullNearbyCalls"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" wantsCallDisconnectionOnInvalidation: %d", -[TUCallServicesClientCapabilities wantsCallDisconnectionOnInvalidation](self, "wantsCallDisconnectionOnInvalidation")];
  [v3 appendFormat:@" wantsFrequencyChangeNotifications: %d", -[TUCallServicesClientCapabilities wantsFrequencyChangeNotifications](self, "wantsFrequencyChangeNotifications")];
  [v3 appendFormat:@" wantsCallStopStreamingOnInvalidation: %d", -[TUCallServicesClientCapabilities wantsCallStopStreamingOnInvalidation](self, "wantsCallStopStreamingOnInvalidation")];
  [v3 appendFormat:@" wantsCallNotificationsDisabledWhileSuspended: %d", -[TUCallServicesClientCapabilities wantsCallNotificationsDisabledWhileSuspended](self, "wantsCallNotificationsDisabledWhileSuspended")];
  [v3 appendFormat:@" wantsToScreenCalls: %d", -[TUCallServicesClientCapabilities wantsToScreenCalls](self, "wantsToScreenCalls")];
  [v3 appendFormat:@" excludeFullNearbyCalls: %d", -[TUCallServicesClientCapabilities excludeFullNearbyCalls](self, "excludeFullNearbyCalls")];
  [v3 appendString:@">"];
  v4 = [v3 copy];

  return v4;
}

@end