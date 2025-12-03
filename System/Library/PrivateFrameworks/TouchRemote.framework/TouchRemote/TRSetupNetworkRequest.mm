@interface TRSetupNetworkRequest
- (TRSetupNetworkRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRSetupNetworkRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TRSetupNetworkRequest;
  [(TRMessage *)&v7 encodeWithCoder:coderCopy];
  networkSSID = self->_networkSSID;
  if (networkSSID)
  {
    [coderCopy encodeObject:networkSSID forKey:@"TRSetupNetworkMessages_nS"];
  }

  networkPassword = self->_networkPassword;
  if (networkPassword)
  {
    [coderCopy encodeObject:networkPassword forKey:@"TRSetupNetworkMessages_nP"];
  }
}

- (TRSetupNetworkRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TRSetupNetworkRequest;
  v5 = [(TRMessage *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRSetupNetworkMessages_nS"];
    networkSSID = v5->_networkSSID;
    v5->_networkSSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRSetupNetworkMessages_nP"];
    networkPassword = v5->_networkPassword;
    v5->_networkPassword = v8;
  }

  return v5;
}

- (id)description
{
  networkSSID = self->_networkSSID;
  if (self->_networkPassword)
  {
    v4 = @"*********";
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"networkSSID:[-%@-] networkPassword:[-%@-]", self->_networkSSID, v4];
  v6 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = TRSetupNetworkRequest;
  v7 = [(TRMessage *)&v10 description];
  v8 = [v6 stringWithFormat:@"%@ %@", v7, v5];

  return v8;
}

@end