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

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"elementsByNamespace"];
    elementsByNamespace = self->_elementsByNamespace;
    self->_elementsByNamespace = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authData"];

    authData = self->_authData;
    self->_authData = v13;
  }

  return self;
}

@end