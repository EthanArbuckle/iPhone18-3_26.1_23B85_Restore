@interface STSCredentialSelect
- (STSCredentialSelect)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSCredentialSelect

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_credentialIdentifier forKey:@"credentialIdentifier"];
  [coderCopy encodeObject:self->_elementsByNamespace forKey:@"elementsByNamespace"];
  authData = self->_authData;
  if (authData)
  {
    [coderCopy encodeObject:authData forKey:@"authData"];
  }
}

- (STSCredentialSelect)initWithCoder:(id)coder
{
  if (self)
  {
    coderCopy = coder;
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = self->_credentialIdentifier;
    self->_credentialIdentifier = v5;

    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"elementsByNamespace"];
    elementsByNamespace = self->_elementsByNamespace;
    self->_elementsByNamespace = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authData"];

    authData = self->_authData;
    self->_authData = v12;
  }

  return self;
}

@end