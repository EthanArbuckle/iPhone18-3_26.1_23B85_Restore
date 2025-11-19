@interface ICUserVerificationContext
+ (id)contextWithACAccount:(id)a3 accountStore:(id)a4;
- (ICUserIdentityProperties)identityProperties;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ICUserVerificationContext

+ (id)contextWithACAccount:(id)a3 accountStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setACAccount:v7];

  [v8 setACAccountStore:v6];
  [v8 setVerificationStyle:0];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong((v5 + 32), self->_ACAccount);
    objc_storeStrong((v6 + 40), self->_ACAccountStore);
    *(v6 + 8) = self->_interactionLevel;
    v7 = [(ICUserIdentityProperties *)self->_identityProperties copyWithZone:a3];
    v8 = *(v6 + 16);
    *(v6 + 16) = v7;

    objc_storeStrong((v6 + 48), self->_identityStore);
    *(v6 + 56) = self->_verificationStyle;
    objc_storeStrong((v6 + 24), self->_debugReason);
  }

  return v6;
}

- (ICUserIdentityProperties)identityProperties
{
  identityProperties = self->_identityProperties;
  if (identityProperties)
  {
    v3 = identityProperties;
  }

  else
  {
    v3 = objc_alloc_init(ICUserIdentityProperties);
  }

  return v3;
}

@end