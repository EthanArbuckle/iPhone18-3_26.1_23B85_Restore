@interface TVRCDeviceAuthenticationChallenge
- (id)_initWithDeviceIdentifier:(id)a3 challengeType:(int64_t)a4 codeToEnterOnDevice:(id)a5;
- (void)cancel;
- (void)userEnteredCodeLocally:(id)a3;
@end

@implementation TVRCDeviceAuthenticationChallenge

- (id)_initWithDeviceIdentifier:(id)a3 challengeType:(int64_t)a4 codeToEnterOnDevice:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = TVRCDeviceAuthenticationChallenge;
  v10 = [(TVRCDeviceAuthenticationChallenge *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    deviceIdentifier = v10->_deviceIdentifier;
    v10->_deviceIdentifier = v11;

    v10->_challengeType = a4;
    v13 = [v9 copy];
    codeToEnterOnDevice = v10->_codeToEnterOnDevice;
    v10->_codeToEnterOnDevice = v13;
  }

  return v10;
}

- (void)userEnteredCodeLocally:(id)a3
{
  if (!self->_challengeType)
  {
    v5 = a3;
    v6 = +[TVRCXPCClient sharedInstance];
    [v6 fulfillAuthChallengeForDeviceWithIdentifier:self->_deviceIdentifier withLocallyEnteredCode:v5];
  }
}

- (void)cancel
{
  v3 = +[TVRCXPCClient sharedInstance];
  [v3 cancelAuthChallengeForDeviceWithIdentifier:self->_deviceIdentifier];
}

@end