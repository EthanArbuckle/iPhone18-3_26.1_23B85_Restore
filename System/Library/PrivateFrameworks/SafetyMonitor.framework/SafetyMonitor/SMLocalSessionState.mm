@interface SMLocalSessionState
+ (int64_t)convertBoolToSMDeviceConfigurationLowPowerModeWarningState:(BOOL)state;
- (BOOL)isEqual:(id)equal;
- (SMLocalSessionState)initWithCoder:(id)coder;
- (SMLocalSessionState)initWithUnsupportedDeviceSeparationState:(BOOL)state userDisabledConnectivity:(BOOL)connectivity separatedLPMConnectivityWarningState:(BOOL)warningState;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMLocalSessionState

- (SMLocalSessionState)initWithUnsupportedDeviceSeparationState:(BOOL)state userDisabledConnectivity:(BOOL)connectivity separatedLPMConnectivityWarningState:(BOOL)warningState
{
  v9.receiver = self;
  v9.super_class = SMLocalSessionState;
  result = [(SMLocalSessionState *)&v9 init];
  if (result)
  {
    result->_unsupportedDeviceSeparationState = state;
    result->_userDisabledConnectivity = connectivity;
    result->_separatedLPMConnectivityWarningState = warningState;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(SMLocalSessionState *)self unsupportedDeviceSeparationState])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(SMLocalSessionState *)self userDisabledConnectivity])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(SMLocalSessionState *)self separatedLPMConnectivityWarningState])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [v3 stringWithFormat:@"{UnsupportDeviceSeparationState: %@}, {UserDisabledConnectivity: %@}, {SeparatedLPMConnectivityWarningState: %@}", v4, v5, v6];
}

- (SMLocalSessionState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"__kSMLocalSessionStateUnsupportedDeviceSeparationStateKey"];
  v6 = [coderCopy decodeBoolForKey:@"__kSMLocalSessionStateUserDisabledConnectivityKey"];
  v7 = [coderCopy decodeBoolForKey:@"__kSMLocalSessionStateSeparatedLPMConnectivityWarningStateKey"];

  return [(SMLocalSessionState *)self initWithUnsupportedDeviceSeparationState:v5 userDisabledConnectivity:v6 separatedLPMConnectivityWarningState:v7];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SMLocalSessionState unsupportedDeviceSeparationState](self forKey:{"unsupportedDeviceSeparationState"), @"__kSMLocalSessionStateUnsupportedDeviceSeparationStateKey"}];
  [coderCopy encodeBool:-[SMLocalSessionState userDisabledConnectivity](self forKey:{"userDisabledConnectivity"), @"__kSMLocalSessionStateUserDisabledConnectivityKey"}];
  [coderCopy encodeBool:-[SMLocalSessionState separatedLPMConnectivityWarningState](self forKey:{"separatedLPMConnectivityWarningState"), @"__kSMLocalSessionStateSeparatedLPMConnectivityWarningStateKey"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      unsupportedDeviceSeparationState = [(SMLocalSessionState *)self unsupportedDeviceSeparationState];
      v7 = unsupportedDeviceSeparationState ^ [(SMLocalSessionState *)v5 unsupportedDeviceSeparationState];
      userDisabledConnectivity = [(SMLocalSessionState *)self userDisabledConnectivity];
      v9 = v7 | userDisabledConnectivity ^ [(SMLocalSessionState *)v5 userDisabledConnectivity];
      separatedLPMConnectivityWarningState = [(SMLocalSessionState *)self separatedLPMConnectivityWarningState];
      LOBYTE(userDisabledConnectivity) = [(SMLocalSessionState *)v5 separatedLPMConnectivityWarningState];

      v11 = (v9 | separatedLPMConnectivityWarningState ^ userDisabledConnectivity) ^ 1;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (int64_t)convertBoolToSMDeviceConfigurationLowPowerModeWarningState:(BOOL)state
{
  if (state)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end