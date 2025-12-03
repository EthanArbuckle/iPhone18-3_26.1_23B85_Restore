@interface SFAutoFillPasskeyIdentifier
- (BOOL)isEqual:(id)equal;
- (SFAutoFillPasskeyIdentifier)initWithCoder:(id)coder;
- (SFAutoFillPasskeyIdentifier)initWithCoreIdentifier:(id)identifier;
@end

@implementation SFAutoFillPasskeyIdentifier

- (SFAutoFillPasskeyIdentifier)initWithCoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = SFAutoFillPasskeyIdentifier;
  v6 = [(SFAutoFillPasskeyIdentifier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreIdentifier, identifier);
    v8 = v7;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      coreIdentifier = self->_coreIdentifier;
      coreIdentifier = [(SFAutoFillPasskeyIdentifier *)equalCopy coreIdentifier];
      v7 = [(WBSPublicKeyCredentialIdentifier *)coreIdentifier isEqual:coreIdentifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (SFAutoFillPasskeyIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coreIdentifier"];

  v6 = [(SFAutoFillPasskeyIdentifier *)self initWithCoreIdentifier:v5];
  return v6;
}

@end