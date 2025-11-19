@interface SPTrackingAvoidanceResult
- (BOOL)isEqual:(id)a3;
- (SPTrackingAvoidanceResult)initWithCoder:(id)a3;
- (SPTrackingAvoidanceResult)initWithIdentifier:(id)a3 type:(int64_t)a4 policies:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPTrackingAvoidanceResult

- (SPTrackingAvoidanceResult)initWithIdentifier:(id)a3 type:(int64_t)a4 policies:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SPTrackingAvoidanceResult;
  v10 = [(SPTrackingAvoidanceResult *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SPTrackingAvoidanceResult *)v10 setIdentifier:v8];
    [(SPTrackingAvoidanceResult *)v11 setType:a4];
    [(SPTrackingAvoidanceResult *)v11 setPolicies:v9];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPTrackingAvoidanceResult alloc];
  v5 = [(SPTrackingAvoidanceResult *)self identifier];
  v6 = [(SPTrackingAvoidanceResult *)self type];
  v7 = [(SPTrackingAvoidanceResult *)self policies];
  v8 = [(SPTrackingAvoidanceResult *)v4 initWithIdentifier:v5 type:v6 policies:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = [(SPTrackingAvoidanceResult *)v4 identifier];
      v7 = [(NSUUID *)identifier isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_policies forKey:@"policies"];
}

- (SPTrackingAvoidanceResult)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  self->_type = [v4 decodeIntegerForKey:@"type"];
  v7 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"policies"];

  policies = self->_policies;
  self->_policies = v10;

  v12 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)description
{
  type = self->_type;
  if (type > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279B58DF0[type];
  }

  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Result: %@ %@", self->_identifier, v3];

  return v4;
}

@end