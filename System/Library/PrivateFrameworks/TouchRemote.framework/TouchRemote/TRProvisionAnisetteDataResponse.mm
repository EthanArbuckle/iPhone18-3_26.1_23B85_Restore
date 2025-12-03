@interface TRProvisionAnisetteDataResponse
- (TRProvisionAnisetteDataResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRProvisionAnisetteDataResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = TRProvisionAnisetteDataResponse;
  [(TRMessage *)&v5 encodeWithCoder:coderCopy];
  if (self->_didSucceed)
  {
    [coderCopy encodeBool:1 forKey:@"TRAnisetteDataMessages_dS"];
  }
}

- (TRProvisionAnisetteDataResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TRProvisionAnisetteDataResponse;
  v5 = [(TRMessage *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_didSucceed = [coderCopy decodeBoolForKey:@"TRAnisetteDataMessages_dS"];
  }

  return v5;
}

- (id)description
{
  if (self->_didSucceed)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"didSucceed: %@", v3];
  v5 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = TRProvisionAnisetteDataResponse;
  v6 = [(TRMessage *)&v9 description];
  v7 = [v5 stringWithFormat:@"%@ %@", v6, v4];

  return v7;
}

@end