@interface TVRXDeviceAuthenticationChallenge
+ (id)_challengeWithCodeToEnterLocally:(id)locally;
+ (id)_challengeWithCodeToEnterOnDevice:(id)device cancellationHandler:(id)handler;
- (id)_init;
- (void)cancel;
- (void)userEnteredCodeLocally:(id)locally;
@end

@implementation TVRXDeviceAuthenticationChallenge

+ (id)_challengeWithCodeToEnterOnDevice:(id)device cancellationHandler:(id)handler
{
  handlerCopy = handler;
  deviceCopy = device;
  _init = [[TVRXDeviceAuthenticationChallenge alloc] _init];
  _init[3] = 1;
  v8 = [handlerCopy copy];

  v9 = _init[2];
  _init[2] = v8;

  v10 = [deviceCopy copy];
  v11 = _init[6];
  _init[6] = v10;

  _init[5] = -1;

  return _init;
}

+ (id)_challengeWithCodeToEnterLocally:(id)locally
{
  locallyCopy = locally;
  _init = [[TVRXDeviceAuthenticationChallenge alloc] _init];
  _init[3] = 0;
  v5 = [locallyCopy copy];

  v6 = _init[1];
  _init[1] = v5;

  *(_init + 2) = xmmword_26CFC89D0;

  return _init;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = TVRXDeviceAuthenticationChallenge;
  return [(TVRXDeviceAuthenticationChallenge *)&v3 init];
}

- (void)userEnteredCodeLocally:(id)locally
{
  v12 = *MEMORY[0x277D85DE8];
  locallyCopy = locally;
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
      continuation[2](continuation, locallyCopy, 0);
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