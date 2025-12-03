@interface ISO18013RequestElement
- (ISO18013RequestElement)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISO18013RequestElement

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_retentionIntent forKey:@"retentionIntent"];
}

- (ISO18013RequestElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [coderCopy decodeIntegerForKey:@"retentionIntent"];
  self->_retentionIntent = v7;
  return self;
}

@end