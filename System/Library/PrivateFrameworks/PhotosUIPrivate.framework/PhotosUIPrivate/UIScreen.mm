@interface UIScreen
- (id)pu_hardwareIdentifier;
@end

@implementation UIScreen

- (id)pu_hardwareIdentifier
{
  selfCopy = self;
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    displayConfiguration = [self displayConfiguration];
    hardwareIdentifier = [displayConfiguration hardwareIdentifier];
    deviceName = [displayConfiguration deviceName];
    v5 = deviceName;
    if (hardwareIdentifier)
    {
      selfCopy = hardwareIdentifier;
    }

    else if (deviceName)
    {
      selfCopy = deviceName;
    }

    else
    {
      v7 = PLAirPlayGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = selfCopy;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "UIScreen had nil hardware identifier and nil name: %@", buf, 0xCu);
      }

      selfCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", selfCopy];
    }

    selfCopy = selfCopy;
  }

  return selfCopy;
}

@end