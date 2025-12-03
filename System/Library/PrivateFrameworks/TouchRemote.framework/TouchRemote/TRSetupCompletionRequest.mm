@interface TRSetupCompletionRequest
- (TRSetupCompletionRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRSetupCompletionRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TRSetupCompletionRequest;
  [(TRMessage *)&v6 encodeWithCoder:coderCopy];
  if (self->_completedSuccessfully)
  {
    [coderCopy encodeBool:1 forKey:@"cS"];
  }

  errorCode = self->_errorCode;
  if (errorCode)
  {
    [coderCopy encodeInteger:errorCode forKey:@"eC"];
  }
}

- (TRSetupCompletionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TRSetupCompletionRequest;
  v5 = [(TRMessage *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_completedSuccessfully = [coderCopy decodeBoolForKey:@"cS"];
    v5->_errorCode = [coderCopy decodeIntegerForKey:@"eC"];
  }

  return v5;
}

- (id)description
{
  if (self->_completedSuccessfully)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"completedSuccessfully:%@ errorCode:%ld", v3, self->_errorCode];
  v5 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = TRSetupCompletionRequest;
  v6 = [(TRMessage *)&v9 description];
  v7 = [v5 stringWithFormat:@"%@ %@", v6, v4];

  return v7;
}

@end