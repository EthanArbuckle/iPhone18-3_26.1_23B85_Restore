@interface SPDataIntegrityCheck
- (SPDataIntegrityCheck)initWithCoder:(id)a3;
- (SPDataIntegrityCheck)initWithValue:(id)a3 severity:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPDataIntegrityCheck

- (SPDataIntegrityCheck)initWithValue:(id)a3 severity:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SPDataIntegrityCheck;
  v8 = [(SPDataIntegrityCheck *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, a3);
    v9->_severity = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPDataIntegrityCheck alloc];
  v5 = [(SPDataIntegrityCheck *)self value];
  v6 = [(SPDataIntegrityCheck *)v4 initWithValue:v5 severity:[(SPDataIntegrityCheck *)self severity]];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  value = self->_value;
  v5 = a3;
  [v5 encodeObject:value forKey:@"value"];
  [v5 encodeInteger:self->_severity forKey:@"severity"];
}

- (SPDataIntegrityCheck)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  value = self->_value;
  self->_value = v5;

  v7 = [v4 decodeIntegerForKey:@"severity"];
  self->_severity = v7;
  return self;
}

@end