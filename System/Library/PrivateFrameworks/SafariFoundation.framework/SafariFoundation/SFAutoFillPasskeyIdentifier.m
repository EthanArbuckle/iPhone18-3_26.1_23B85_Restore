@interface SFAutoFillPasskeyIdentifier
- (BOOL)isEqual:(id)a3;
- (SFAutoFillPasskeyIdentifier)initWithCoder:(id)a3;
- (SFAutoFillPasskeyIdentifier)initWithCoreIdentifier:(id)a3;
@end

@implementation SFAutoFillPasskeyIdentifier

- (SFAutoFillPasskeyIdentifier)initWithCoreIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFAutoFillPasskeyIdentifier;
  v6 = [(SFAutoFillPasskeyIdentifier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreIdentifier, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      coreIdentifier = self->_coreIdentifier;
      v6 = [(SFAutoFillPasskeyIdentifier *)v4 coreIdentifier];
      v7 = [(WBSPublicKeyCredentialIdentifier *)coreIdentifier isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (SFAutoFillPasskeyIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coreIdentifier"];

  v6 = [(SFAutoFillPasskeyIdentifier *)self initWithCoreIdentifier:v5];
  return v6;
}

@end