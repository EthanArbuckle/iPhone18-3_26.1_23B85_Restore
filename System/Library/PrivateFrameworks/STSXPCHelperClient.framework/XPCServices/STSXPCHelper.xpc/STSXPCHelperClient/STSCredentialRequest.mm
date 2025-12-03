@interface STSCredentialRequest
- (STSCredentialRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSCredentialRequest

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_credentialIdentifier forKey:@"credentialIdentifier"];
}

- (STSCredentialRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_type = [coderCopy decodeIntegerForKey:@"type"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];

  credentialIdentifier = self->_credentialIdentifier;
  self->_credentialIdentifier = v5;

  return self;
}

@end