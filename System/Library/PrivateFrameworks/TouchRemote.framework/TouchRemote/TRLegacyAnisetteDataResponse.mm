@interface TRLegacyAnisetteDataResponse
- (TRLegacyAnisetteDataResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRLegacyAnisetteDataResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TRLegacyAnisetteDataResponse;
  [(TRMessage *)&v6 encodeWithCoder:v4];
  anisetteData = self->_anisetteData;
  if (anisetteData)
  {
    [v4 encodeObject:anisetteData forKey:@"TRAnisetteDataMessages_aD"];
  }
}

- (TRLegacyAnisetteDataResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRLegacyAnisetteDataResponse;
  v5 = [(TRMessage *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TRAnisetteDataMessages_aD"];
    anisetteData = v5->_anisetteData;
    v5->_anisetteData = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"anisetteData:[-%@-]", self->_anisetteData];
  v4 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TRLegacyAnisetteDataResponse;
  v5 = [(TRMessage *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@ %@", v5, v3];

  return v6;
}

@end