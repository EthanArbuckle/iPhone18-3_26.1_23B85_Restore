@interface SPTrackingAvoidanceResult
- (BOOL)isEqual:(id)equal;
- (SPTrackingAvoidanceResult)initWithCoder:(id)coder;
- (SPTrackingAvoidanceResult)initWithIdentifier:(id)identifier type:(int64_t)type policies:(id)policies;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPTrackingAvoidanceResult

- (SPTrackingAvoidanceResult)initWithIdentifier:(id)identifier type:(int64_t)type policies:(id)policies
{
  identifierCopy = identifier;
  policiesCopy = policies;
  v13.receiver = self;
  v13.super_class = SPTrackingAvoidanceResult;
  v10 = [(SPTrackingAvoidanceResult *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SPTrackingAvoidanceResult *)v10 setIdentifier:identifierCopy];
    [(SPTrackingAvoidanceResult *)v11 setType:type];
    [(SPTrackingAvoidanceResult *)v11 setPolicies:policiesCopy];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPTrackingAvoidanceResult alloc];
  identifier = [(SPTrackingAvoidanceResult *)self identifier];
  type = [(SPTrackingAvoidanceResult *)self type];
  policies = [(SPTrackingAvoidanceResult *)self policies];
  v8 = [(SPTrackingAvoidanceResult *)v4 initWithIdentifier:identifier type:type policies:policies];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      identifier = [(SPTrackingAvoidanceResult *)equalCopy identifier];
      v7 = [(NSUUID *)identifier isEqual:identifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_policies forKey:@"policies"];
}

- (SPTrackingAvoidanceResult)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  self->_type = [coderCopy decodeIntegerForKey:@"type"];
  v7 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"policies"];

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