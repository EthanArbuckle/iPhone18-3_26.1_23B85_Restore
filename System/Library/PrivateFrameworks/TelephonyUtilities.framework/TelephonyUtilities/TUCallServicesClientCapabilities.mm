@interface TUCallServicesClientCapabilities
- (TUCallServicesClientCapabilities)initWithCoder:(id)coder;
- (TUCallServicesClientCapabilitiesActions)delegate;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)save;
@end

@implementation TUCallServicesClientCapabilities

- (void)save
{
  delegate = [(TUCallServicesClientCapabilities *)self delegate];
  [delegate setClientCapabilities:self];
}

- (TUCallServicesClientCapabilitiesActions)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TUCallServicesClientCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TUCallServicesClientCapabilities;
  v5 = [(TUCallServicesClientCapabilities *)&v7 init];
  if (v5)
  {
    v5->_wantsCallDisconnectionOnInvalidation = [coderCopy decodeBoolForKey:@"wantsCallDisconnectionOnInvalidation"];
    v5->_wantsCallStopStreamingOnInvalidation = [coderCopy decodeBoolForKey:@"wantsCallStopStreamingOnInvalidation"];
    v5->_wantsFrequencyChangeNotifications = [coderCopy decodeBoolForKey:@"wantsFrequencyChangeNotifications"];
    v5->_wantsCallNotificationsDisabledWhileSuspended = [coderCopy decodeBoolForKey:@"wantsCallNotificationsDisabledWhileSuspended"];
    v5->_wantsToScreenCalls = [coderCopy decodeBoolForKey:@"wantsToScreenCalls"];
    v5->_excludeFullNearbyCalls = [coderCopy decodeBoolForKey:@"excludeFullNearbyCalls"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  wantsCallDisconnectionOnInvalidation = self->_wantsCallDisconnectionOnInvalidation;
  coderCopy = coder;
  [coderCopy encodeBool:wantsCallDisconnectionOnInvalidation forKey:@"wantsCallDisconnectionOnInvalidation"];
  [coderCopy encodeBool:self->_wantsCallStopStreamingOnInvalidation forKey:@"wantsCallStopStreamingOnInvalidation"];
  [coderCopy encodeBool:self->_wantsFrequencyChangeNotifications forKey:@"wantsFrequencyChangeNotifications"];
  [coderCopy encodeBool:self->_wantsCallNotificationsDisabledWhileSuspended forKey:@"wantsCallNotificationsDisabledWhileSuspended"];
  [coderCopy encodeBool:self->_wantsToScreenCalls forKey:@"wantsToScreenCalls"];
  [coderCopy encodeBool:self->_excludeFullNearbyCalls forKey:@"excludeFullNearbyCalls"];
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