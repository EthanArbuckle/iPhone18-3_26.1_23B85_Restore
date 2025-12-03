@interface TRSetupNetworkResponse
- (TRSetupNetworkResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRSetupNetworkResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = TRSetupNetworkResponse;
  [(TRMessage *)&v5 encodeWithCoder:coderCopy];
  if (self->_hasNetwork)
  {
    [coderCopy encodeBool:1 forKey:@"TRSetupNetworkMessages_hN"];
  }
}

- (TRSetupNetworkResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TRSetupNetworkResponse;
  v5 = [(TRMessage *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_hasNetwork = [coderCopy decodeBoolForKey:@"TRSetupNetworkMessages_hN"];
  }

  return v5;
}

- (id)description
{
  if (self->_hasNetwork)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"hasNetwork:%@", v3];
  v5 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = TRSetupNetworkResponse;
  v6 = [(TRMessage *)&v9 description];
  v7 = [v5 stringWithFormat:@"%@ %@", v6, v4];

  return v7;
}

@end