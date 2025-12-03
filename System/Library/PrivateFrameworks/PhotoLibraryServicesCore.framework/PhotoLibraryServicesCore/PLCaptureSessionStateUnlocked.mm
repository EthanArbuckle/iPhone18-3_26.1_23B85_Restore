@interface PLCaptureSessionStateUnlocked
- (PLCaptureSessionStateUnlocked)initWithSessionIdentifier:(id)identifier;
@end

@implementation PLCaptureSessionStateUnlocked

- (PLCaptureSessionStateUnlocked)initWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCaptureSessionState.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"sessionIdentifier != nil"}];
  }

  v12.receiver = self;
  v12.super_class = PLCaptureSessionStateUnlocked;
  v6 = [(PLCaptureSessionState *)&v12 initWithType:3];
  if (v6)
  {
    v7 = [identifierCopy copy];
    sessionIdentifier = v6->_sessionIdentifier;
    v6->_sessionIdentifier = v7;

    v9 = v6;
  }

  return v6;
}

@end