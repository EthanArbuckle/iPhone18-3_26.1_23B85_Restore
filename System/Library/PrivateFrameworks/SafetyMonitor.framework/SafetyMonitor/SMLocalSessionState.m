@interface SMLocalSessionState
+ (int64_t)convertBoolToSMDeviceConfigurationLowPowerModeWarningState:(BOOL)a3;
- (BOOL)isEqual:(id)a3;
- (SMLocalSessionState)initWithCoder:(id)a3;
- (SMLocalSessionState)initWithUnsupportedDeviceSeparationState:(BOOL)a3 userDisabledConnectivity:(BOOL)a4 separatedLPMConnectivityWarningState:(BOOL)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMLocalSessionState

- (SMLocalSessionState)initWithUnsupportedDeviceSeparationState:(BOOL)a3 userDisabledConnectivity:(BOOL)a4 separatedLPMConnectivityWarningState:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = SMLocalSessionState;
  result = [(SMLocalSessionState *)&v9 init];
  if (result)
  {
    result->_unsupportedDeviceSeparationState = a3;
    result->_userDisabledConnectivity = a4;
    result->_separatedLPMConnectivityWarningState = a5;
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

- (SMLocalSessionState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"__kSMLocalSessionStateUnsupportedDeviceSeparationStateKey"];
  v6 = [v4 decodeBoolForKey:@"__kSMLocalSessionStateUserDisabledConnectivityKey"];
  v7 = [v4 decodeBoolForKey:@"__kSMLocalSessionStateSeparatedLPMConnectivityWarningStateKey"];

  return [(SMLocalSessionState *)self initWithUnsupportedDeviceSeparationState:v5 userDisabledConnectivity:v6 separatedLPMConnectivityWarningState:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[SMLocalSessionState unsupportedDeviceSeparationState](self forKey:{"unsupportedDeviceSeparationState"), @"__kSMLocalSessionStateUnsupportedDeviceSeparationStateKey"}];
  [v4 encodeBool:-[SMLocalSessionState userDisabledConnectivity](self forKey:{"userDisabledConnectivity"), @"__kSMLocalSessionStateUserDisabledConnectivityKey"}];
  [v4 encodeBool:-[SMLocalSessionState separatedLPMConnectivityWarningState](self forKey:{"separatedLPMConnectivityWarningState"), @"__kSMLocalSessionStateSeparatedLPMConnectivityWarningStateKey"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SMLocalSessionState *)self unsupportedDeviceSeparationState];
      v7 = v6 ^ [(SMLocalSessionState *)v5 unsupportedDeviceSeparationState];
      v8 = [(SMLocalSessionState *)self userDisabledConnectivity];
      v9 = v7 | v8 ^ [(SMLocalSessionState *)v5 userDisabledConnectivity];
      v10 = [(SMLocalSessionState *)self separatedLPMConnectivityWarningState];
      LOBYTE(v8) = [(SMLocalSessionState *)v5 separatedLPMConnectivityWarningState];

      v11 = (v9 | v10 ^ v8) ^ 1;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (int64_t)convertBoolToSMDeviceConfigurationLowPowerModeWarningState:(BOOL)a3
{
  if (a3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end