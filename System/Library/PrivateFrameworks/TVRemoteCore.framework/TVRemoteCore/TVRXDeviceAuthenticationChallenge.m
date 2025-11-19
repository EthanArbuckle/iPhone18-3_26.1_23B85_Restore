@interface TVRXDeviceAuthenticationChallenge
+ (id)_challengeWithCodeToEnterLocally:(id)a3;
+ (id)_challengeWithCodeToEnterOnDevice:(id)a3 cancellationHandler:(id)a4;
- (id)_init;
- (void)cancel;
- (void)userEnteredCodeLocally:(id)a3;
@end

@implementation TVRXDeviceAuthenticationChallenge

+ (id)_challengeWithCodeToEnterOnDevice:(id)a3 cancellationHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TVRXDeviceAuthenticationChallenge alloc] _init];
  v7[3] = 1;
  v8 = [v5 copy];

  v9 = v7[2];
  v7[2] = v8;

  v10 = [v6 copy];
  v11 = v7[6];
  v7[6] = v10;

  v7[5] = -1;

  return v7;
}

+ (id)_challengeWithCodeToEnterLocally:(id)a3
{
  v3 = a3;
  v4 = [[TVRXDeviceAuthenticationChallenge alloc] _init];
  v4[3] = 0;
  v5 = [v3 copy];

  v6 = v4[1];
  v4[1] = v5;

  *(v4 + 2) = xmmword_26CFC89D0;

  return v4;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = TVRXDeviceAuthenticationChallenge;
  return [(TVRXDeviceAuthenticationChallenge *)&v3 init];
}

- (void)userEnteredCodeLocally:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_challengeType)
  {
    v6 = _TVRCGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Calling %{public}@ is invalid for this challenge type.", &v10, 0xCu);
    }
  }

  else
  {
    continuation = self->_continuation;
    if (continuation)
    {
      continuation[2](continuation, v5, 0);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  challengeType = self->_challengeType;
  if (challengeType == 1)
  {
    cancellationHandler = self->_cancellationHandler;
    if (cancellationHandler)
    {
      cancellationHandler[2]();
    }
  }

  else if (!challengeType)
  {
    continuation = self->_continuation;
    if (continuation)
    {
      continuation[2](continuation, 0, 1);
    }
  }
}

@end