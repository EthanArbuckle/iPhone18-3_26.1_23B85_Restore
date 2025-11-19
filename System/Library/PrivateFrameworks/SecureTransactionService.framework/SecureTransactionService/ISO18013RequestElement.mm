@interface ISO18013RequestElement
- (ISO18013RequestElement)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISO18013RequestElement

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_retentionIntent forKey:@"retentionIntent"];
}

- (ISO18013RequestElement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [v4 decodeIntegerForKey:@"retentionIntent"];
  self->_retentionIntent = v7;
  return self;
}

@end