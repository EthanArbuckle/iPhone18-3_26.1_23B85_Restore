@interface TRSetupActivationResponse
- (TRSetupActivationResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRSetupActivationResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = TRSetupActivationResponse;
  [(TRMessage *)&v5 encodeWithCoder:coderCopy];
  if (self->_activated)
  {
    [coderCopy encodeBool:1 forKey:@"TRSetupNetworkMessages_hN"];
  }

  [coderCopy encodeObject:self->_error forKey:@"TRSetupActivationMessages_err"];
}

- (TRSetupActivationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRSetupActivationResponse;
  v5 = [(TRMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_activated = [coderCopy decodeBoolForKey:@"TRSetupNetworkMessages_hN"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRSetupActivationMessages_err"];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (id)description
{
  if (self->_activated)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"activated:%@ error:%@", v3, self->_error];
  v5 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = TRSetupActivationResponse;
  v6 = [(TRMessage *)&v9 description];
  v7 = [v5 stringWithFormat:@"%@ %@", v6, v4];

  return v7;
}

@end