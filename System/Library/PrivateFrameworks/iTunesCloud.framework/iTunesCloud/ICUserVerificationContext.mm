@interface ICUserVerificationContext
+ (id)contextWithACAccount:(id)account accountStore:(id)store;
- (ICUserIdentityProperties)identityProperties;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ICUserVerificationContext

+ (id)contextWithACAccount:(id)account accountStore:(id)store
{
  storeCopy = store;
  accountCopy = account;
  v8 = objc_alloc_init(self);
  [v8 setACAccount:accountCopy];

  [v8 setACAccountStore:storeCopy];
  [v8 setVerificationStyle:0];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong((v5 + 32), self->_ACAccount);
    objc_storeStrong((v6 + 40), self->_ACAccountStore);
    *(v6 + 8) = self->_interactionLevel;
    v7 = [(ICUserIdentityProperties *)self->_identityProperties copyWithZone:zone];
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