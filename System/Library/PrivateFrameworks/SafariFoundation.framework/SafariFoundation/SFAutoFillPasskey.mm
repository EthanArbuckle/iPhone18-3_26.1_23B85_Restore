@interface SFAutoFillPasskey
- (NSData)userHandle;
- (SFAutoFillPasskey)initWithCoder:(id)coder;
- (SFAutoFillPasskey)initWithCoreAutoFillPasskey:(id)passkey;
- (SFAutoFillPasskeyIdentifier)identifier;
@end

@implementation SFAutoFillPasskey

- (SFAutoFillPasskey)initWithCoreAutoFillPasskey:(id)passkey
{
  passkeyCopy = passkey;
  v10.receiver = self;
  v10.super_class = SFAutoFillPasskey;
  v6 = [(SFAutoFillPasskey *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_corePasskey, passkey);
    v8 = v7;
  }

  return v7;
}

- (SFAutoFillPasskeyIdentifier)identifier
{
  v3 = [SFAutoFillPasskeyIdentifier alloc];
  identifier = [(WBSAutoFillPasskey *)self->_corePasskey identifier];
  v5 = [(SFAutoFillPasskeyIdentifier *)v3 initWithCoreIdentifier:identifier];

  return v5;
}

- (NSData)userHandle
{
  identifier = [(WBSAutoFillPasskey *)self->_corePasskey identifier];
  credentialID = [identifier credentialID];
  v4 = [credentialID dataUsingEncoding:4];

  return v4;
}

- (SFAutoFillPasskey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SFAutoFillPasskey;
  v5 = [(SFAutoFillPasskey *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"corePasskey"];
    corePasskey = v5->_corePasskey;
    v5->_corePasskey = v6;

    v8 = v5;
  }

  return v5;
}

@end