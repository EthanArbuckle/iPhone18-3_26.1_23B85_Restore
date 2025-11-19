@interface SFAutoFillPasskey
- (NSData)userHandle;
- (SFAutoFillPasskey)initWithCoder:(id)a3;
- (SFAutoFillPasskey)initWithCoreAutoFillPasskey:(id)a3;
- (SFAutoFillPasskeyIdentifier)identifier;
@end

@implementation SFAutoFillPasskey

- (SFAutoFillPasskey)initWithCoreAutoFillPasskey:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFAutoFillPasskey;
  v6 = [(SFAutoFillPasskey *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_corePasskey, a3);
    v8 = v7;
  }

  return v7;
}

- (SFAutoFillPasskeyIdentifier)identifier
{
  v3 = [SFAutoFillPasskeyIdentifier alloc];
  v4 = [(WBSAutoFillPasskey *)self->_corePasskey identifier];
  v5 = [(SFAutoFillPasskeyIdentifier *)v3 initWithCoreIdentifier:v4];

  return v5;
}

- (NSData)userHandle
{
  v2 = [(WBSAutoFillPasskey *)self->_corePasskey identifier];
  v3 = [v2 credentialID];
  v4 = [v3 dataUsingEncoding:4];

  return v4;
}

- (SFAutoFillPasskey)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFAutoFillPasskey;
  v5 = [(SFAutoFillPasskey *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"corePasskey"];
    corePasskey = v5->_corePasskey;
    v5->_corePasskey = v6;

    v8 = v5;
  }

  return v5;
}

@end