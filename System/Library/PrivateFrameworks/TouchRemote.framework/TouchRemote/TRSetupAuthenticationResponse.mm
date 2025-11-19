@interface TRSetupAuthenticationResponse
- (TRSetupAuthenticationResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRSetupAuthenticationResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TRSetupAuthenticationResponse;
  [(TRMessage *)&v6 encodeWithCoder:v4];
  unauthenticatedAccountServices = self->_unauthenticatedAccountServices;
  if (unauthenticatedAccountServices)
  {
    [v4 encodeObject:unauthenticatedAccountServices forKey:@"TRSetupAuthenticationMessages_uAS"];
    [v4 encodeObject:self->_error forKey:@"TRSetupAuthenticationMessages_err"];
    [v4 encodeObject:self->_authenticationResults forKey:@"TRSetupAuthenticationMessages_ar"];
  }
}

- (TRSetupAuthenticationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TRSetupAuthenticationResponse;
  v5 = [(TRMessage *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"TRSetupAuthenticationMessages_uAS"];
    unauthenticatedAccountServices = v5->_unauthenticatedAccountServices;
    v5->_unauthenticatedAccountServices = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TRSetupAuthenticationMessages_err"];
    error = v5->_error;
    v5->_error = v11;

    v13 = [v4 decodeObjectForKey:@"TRSetupAuthenticationMessages_ar"];
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