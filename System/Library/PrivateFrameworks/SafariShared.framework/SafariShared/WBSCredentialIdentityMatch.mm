@interface WBSCredentialIdentityMatch
- (WBSCredentialIdentityMatch)initWithCredentialIdentity:(id)identity extension:(id)extension;
- (id)resolvedMatchWithCredential:(id)credential;
@end

@implementation WBSCredentialIdentityMatch

- (WBSCredentialIdentityMatch)initWithCredentialIdentity:(id)identity extension:(id)extension
{
  identityCopy = identity;
  extensionCopy = extension;
  v13.receiver = self;
  v13.super_class = WBSCredentialIdentityMatch;
  v9 = [(WBSCredentialIdentityMatch *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credentialIdentity, identity);
    objc_storeStrong(&v10->_extension, extension);
    v11 = v10;
  }

  return v10;
}

- (id)resolvedMatchWithCredential:(id)credential
{
  credentialCopy = credential;
  v5 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v5 + 1, self->_credentialIdentity);
  objc_storeStrong(v5 + 2, self->_extension);
  v6 = v5[3];
  v5[3] = credentialCopy;

  return v5;
}

@end