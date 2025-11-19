@interface WBSCredentialIdentityMatch
- (WBSCredentialIdentityMatch)initWithCredentialIdentity:(id)a3 extension:(id)a4;
- (id)resolvedMatchWithCredential:(id)a3;
@end

@implementation WBSCredentialIdentityMatch

- (WBSCredentialIdentityMatch)initWithCredentialIdentity:(id)a3 extension:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WBSCredentialIdentityMatch;
  v9 = [(WBSCredentialIdentityMatch *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credentialIdentity, a3);
    objc_storeStrong(&v10->_extension, a4);
    v11 = v10;
  }

  return v10;
}

- (id)resolvedMatchWithCredential:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v5 + 1, self->_credentialIdentity);
  objc_storeStrong(v5 + 2, self->_extension);
  v6 = v5[3];
  v5[3] = v4;

  return v5;
}

@end