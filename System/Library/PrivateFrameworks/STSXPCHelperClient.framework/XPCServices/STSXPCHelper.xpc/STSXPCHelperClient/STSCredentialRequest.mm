@interface STSCredentialRequest
- (STSCredentialRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSCredentialRequest

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_credentialIdentifier forKey:@"credentialIdentifier"];
}

- (STSCredentialRequest)initWithCoder:(id)a3
{
  v4 = a3;
  self->_type = [v4 decodeIntegerForKey:@"type"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];

  credentialIdentifier = self->_credentialIdentifier;
  self->_credentialIdentifier = v5;

  return self;
}

@end