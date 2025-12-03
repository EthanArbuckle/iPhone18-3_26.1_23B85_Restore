@interface TRSetupAuthenticationResponse
- (TRSetupAuthenticationResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRSetupAuthenticationResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TRSetupAuthenticationResponse;
  [(TRMessage *)&v6 encodeWithCoder:coderCopy];
  unauthenticatedAccountServices = self->_unauthenticatedAccountServices;
  if (unauthenticatedAccountServices)
  {
    [coderCopy encodeObject:unauthenticatedAccountServices forKey:@"TRSetupAuthenticationMessages_uAS"];
    [coderCopy encodeObject:self->_error forKey:@"TRSetupAuthenticationMessages_err"];
    [coderCopy encodeObject:self->_authenticationResults forKey:@"TRSetupAuthenticationMessages_ar"];
  }
}

- (TRSetupAuthenticationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = TRSetupAuthenticationResponse;
  v5 = [(TRMessage *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"TRSetupAuthenticationMessages_uAS"];
    unauthenticatedAccountServices = v5->_unauthenticatedAccountServices;
    v5->_unauthenticatedAccountServices = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRSetupAuthenticationMessages_err"];
    error = v5->_error;
    v5->_error = v11;

    v13 = [coderCopy decodeObjectForKey:@"TRSetupAuthenticationMessages_ar"];
    authenticationResults = v5->_authenticationResults;
    v5->_authenticationResults = v13;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = _StringFromAccountServices(self->_unauthenticatedAccountServices);
  error = self->_error;
  v6 = [v3 stringWithFormat:@"unauthenticatedAccountServices:%@ error:%@ authResults:%@", v4, error, self->_authenticationResults];

  v7 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TRSetupAuthenticationResponse;
  v8 = [(TRMessage *)&v11 description];
  v9 = [v7 stringWithFormat:@"%@ %@", v8, v6];

  return v9;
}

@end