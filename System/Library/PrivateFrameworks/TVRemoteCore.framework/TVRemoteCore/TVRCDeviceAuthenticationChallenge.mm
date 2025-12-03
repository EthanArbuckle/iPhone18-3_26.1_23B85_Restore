@interface TVRCDeviceAuthenticationChallenge
- (id)_initWithDeviceIdentifier:(id)identifier challengeType:(int64_t)type codeToEnterOnDevice:(id)device;
- (void)cancel;
- (void)userEnteredCodeLocally:(id)locally;
@end

@implementation TVRCDeviceAuthenticationChallenge

- (id)_initWithDeviceIdentifier:(id)identifier challengeType:(int64_t)type codeToEnterOnDevice:(id)device
{
  identifierCopy = identifier;
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = TVRCDeviceAuthenticationChallenge;
  v10 = [(TVRCDeviceAuthenticationChallenge *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    deviceIdentifier = v10->_deviceIdentifier;
    v10->_deviceIdentifier = v11;

    v10->_challengeType = type;
    v13 = [deviceCopy copy];
    codeToEnterOnDevice = v10->_codeToEnterOnDevice;
    v10->_codeToEnterOnDevice = v13;
  }

  return v10;
}

- (void)userEnteredCodeLocally:(id)locally
{
  if (!self->_challengeType)
  {
    locallyCopy = locally;
    v6 = +[TVRCXPCClient sharedInstance];
    [v6 fulfillAuthChallengeForDeviceWithIdentifier:self->_deviceIdentifier withLocallyEnteredCode:locallyCopy];
  }
}

- (void)cancel
{
  v3 = +[TVRCXPCClient sharedInstance];
  [v3 cancelAuthChallengeForDeviceWithIdentifier:self->_deviceIdentifier];
}

@end