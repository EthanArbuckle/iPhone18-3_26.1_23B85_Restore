@interface ICUserCredentialRequest
- (ICUserCredentialRequest)initWithIdentity:(id)identity identityStore:(id)store clientInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ICUserCredentialRequest

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithIdentity:identityStore:clientInfo:", self->_identity, self->_identityStore, self->_clientInfo}];
  if (result)
  {
    *(result + 4) = self->_qualityOfService;
    *(result + 5) = *&self->_timeoutInterval;
  }

  return result;
}

- (ICUserCredentialRequest)initWithIdentity:(id)identity identityStore:(id)store clientInfo:(id)info
{
  identityCopy = identity;
  storeCopy = store;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = ICUserCredentialRequest;
  v11 = [(ICUserCredentialRequest *)&v17 init];
  if (v11)
  {
    v12 = [identityCopy copy];
    identity = v11->_identity;
    v11->_identity = v12;

    objc_storeStrong(&v11->_identityStore, store);
    v14 = [infoCopy copy];
    clientInfo = v11->_clientInfo;
    v11->_clientInfo = v14;

    v11->_qualityOfService = 25;
    v11->_timeoutInterval = 30.0;
  }

  return v11;
}

@end