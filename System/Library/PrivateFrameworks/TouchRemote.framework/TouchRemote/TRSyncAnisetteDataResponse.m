@interface TRSyncAnisetteDataResponse
- (TRSyncAnisetteDataResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRSyncAnisetteDataResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = TRSyncAnisetteDataResponse;
  [(TRMessage *)&v5 encodeWithCoder:v4];
  if (self->_didSucceed)
  {
    [v4 encodeBool:1 forKey:@"TRAnisetteDataMessages_dS"];
  }
}

- (TRSyncAnisetteDataResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TRSyncAnisetteDataResponse;
  v5 = [(TRMessage *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_didSucceed = [v4 decodeBoolForKey:@"TRAnisetteDataMessages_dS"];
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

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"didSucceed:%@", v3];
  v5 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = TRSyncAnisetteDataResponse;
  v6 = [(TRMessage *)&v9 description];
  v7 = [v5 stringWithFormat:@"%@ %@", v6, v4];

  return v7;
}

@end