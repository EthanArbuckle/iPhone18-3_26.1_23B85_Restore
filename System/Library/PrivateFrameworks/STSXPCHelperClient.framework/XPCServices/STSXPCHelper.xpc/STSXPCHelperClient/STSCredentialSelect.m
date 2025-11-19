@interface STSCredentialSelect
- (STSCredentialSelect)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSCredentialSelect

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_credentialIdentifier forKey:@"credentialIdentifier"];
  [v5 encodeObject:self->_elementsByNamespace forKey:@"elementsByNamespace"];
  authData = self->_authData;
  if (authData)
  {
    [v5 encodeObject:authData forKey:@"authData"];
  }
}

- (STSCredentialSelect)initWithCoder:(id)a3
{
  if (self)
  {
    v4 = a3;
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = self->_credentialIdentifier;
    self->_credentialIdentifier = v5;

    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"elementsByNamespace"];
    elementsByNamespace = self->_elementsByNamespace;
    self->_elementsByNamespace = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authData"];

    authData = self->_authData;
    self->_authData = v12;
  }

  return self;
}

@end