@interface TRSetupCompanionAuthenticationRequest
- (TRSetupCompanionAuthenticationRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRSetupCompanionAuthenticationRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = TRSetupCompanionAuthenticationRequest;
  [(TRMessage *)&v8 encodeWithCoder:coderCopy];
  account = self->_account;
  if (account)
  {
    [coderCopy encodeObject:account forKey:@"TRSetupAuthenticationMessages_ac"];
  }

  companionDevice = self->_companionDevice;
  if (companionDevice)
  {
    [coderCopy encodeObject:companionDevice forKey:@"TRSetupAuthenticationMessages_cD"];
  }

  targetedAccountServices = self->_targetedAccountServices;
  if (targetedAccountServices)
  {
    [coderCopy encodeObject:targetedAccountServices forKey:@"TRSetupAuthenticationMessages_tAS"];
  }

  [coderCopy encodeBool:self->_shouldUseAIDA forKey:@"TRSetupAuthenticationMessages_sUA"];
}

- (TRSetupCompanionAuthenticationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = TRSetupCompanionAuthenticationRequest;
  v5 = [(TRMessage *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRSetupAuthenticationMessages_ac"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRSetupAuthenticationMessages_cD"];
    companionDevice = v5->_companionDevice;
    v5->_companionDevice = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"TRSetupAuthenticationMessages_tAS"];
    targetedAccountServices = v5->_targetedAccountServices;
    v5->_targetedAccountServices = v13;

    v5->_shouldUseAIDA = [coderCopy decodeBoolForKey:@"TRSetupAuthenticationMessages_sUA"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  account = self->_account;
  companionDevice = self->_companionDevice;
  v6 = _StringFromAccountServices(self->_targetedAccountServices);
  v7 = v6;
  if (self->_shouldUseAIDA)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v3 stringWithFormat:@"account:[-%@-] companionDevice:[-%@-] targetedAccountServices:%@ shouldUseAIDA:[-%@-]", account, companionDevice, v6, v8];

  v10 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = TRSetupCompanionAuthenticationRequest;
  v11 = [(TRMessage *)&v14 description];
  v12 = [v10 stringWithFormat:@"%@ %@", v11, v9];

  return v12;
}

@end