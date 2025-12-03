@interface PLCaptureSessionStateLocked
- (PLCaptureSessionStateLocked)initWithSessionIdentifier:(id)identifier;
@end

@implementation PLCaptureSessionStateLocked

- (PLCaptureSessionStateLocked)initWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCaptureSessionState.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"sessionIdentifier != nil"}];
  }

  v12.receiver = self;
  v12.super_class = PLCaptureSessionStateLocked;
  v6 = [(PLCaptureSessionState *)&v12 initWithType:2];
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