@interface TRSetupNetworkResponse
- (TRSetupNetworkResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRSetupNetworkResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = TRSetupNetworkResponse;
  [(TRMessage *)&v5 encodeWithCoder:v4];
  if (self->_hasNetwork)
  {
    [v4 encodeBool:1 forKey:@"TRSetupNetworkMessages_hN"];
  }
}

- (TRSetupNetworkResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TRSetupNetworkResponse;
  v5 = [(TRMessage *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_hasNetwork = [v4 decodeBoolForKey:@"TRSetupNetworkMessages_hN"];
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