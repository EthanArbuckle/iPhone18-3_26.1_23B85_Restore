@interface SPDataIntegrityCheck
- (SPDataIntegrityCheck)initWithCoder:(id)coder;
- (SPDataIntegrityCheck)initWithValue:(id)value severity:(int64_t)severity;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPDataIntegrityCheck

- (SPDataIntegrityCheck)initWithValue:(id)value severity:(int64_t)severity
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = SPDataIntegrityCheck;
  v8 = [(SPDataIntegrityCheck *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, value);
    v9->_severity = severity;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPDataIntegrityCheck alloc];
  value = [(SPDataIntegrityCheck *)self value];
  v6 = [(SPDataIntegrityCheck *)v4 initWithValue:value severity:[(SPDataIntegrityCheck *)self severity]];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeObject:value forKey:@"value"];
  [coderCopy encodeInteger:self->_severity forKey:@"severity"];
}

- (SPDataIntegrityCheck)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  value = self->_value;
  self->_value = v5;

  v7 = [coderCopy decodeIntegerForKey:@"severity"];
  self->_severity = v7;
  return self;
}

@end