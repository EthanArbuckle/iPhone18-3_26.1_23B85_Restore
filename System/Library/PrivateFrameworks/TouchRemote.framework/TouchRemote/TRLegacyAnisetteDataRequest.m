@interface TRLegacyAnisetteDataRequest
- (TRLegacyAnisetteDataRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRLegacyAnisetteDataRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TRLegacyAnisetteDataRequest;
  [(TRMessage *)&v6 encodeWithCoder:v4];
  dsid = self->_dsid;
  if (dsid)
  {
    [v4 encodeObject:dsid forKey:@"TRAnisetteDataMessages_d"];
  }
}

- (TRLegacyAnisetteDataRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRLegacyAnisetteDataRequest;
  v5 = [(TRMessage *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TRAnisetteDataMessages_d"];
    dsid = v5->_dsid;
    v5->_dsid = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"dsid:[-%@-]", self->_dsid];
  v4 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TRLegacyAnisetteDataRequest;
  v5 = [(TRMessage *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@ %@", v5, v3];

  return v6;
}

@end