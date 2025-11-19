@interface ICUserCredentialRequest
- (ICUserCredentialRequest)initWithIdentity:(id)a3 identityStore:(id)a4 clientInfo:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ICUserCredentialRequest

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithIdentity:identityStore:clientInfo:", self->_identity, self->_identityStore, self->_clientInfo}];
  if (result)
  {
    *(result + 4) = self->_qualityOfService;
    *(result + 5) = *&self->_timeoutInterval;
  }

  return result;
}

- (ICUserCredentialRequest)initWithIdentity:(id)a3 identityStore:(id)a4 clientInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = ICUserCredentialRequest;
  v11 = [(ICUserCredentialRequest *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    identity = v11->_identity;
    v11->_identity = v12;

    objc_storeStrong(&v11->_identityStore, a4);
    v14 = [v10 copy];
    clientInfo = v11->_clientInfo;
    v11->_clientInfo = v14;

    v11->_qualityOfService = 25;
    v11->_timeoutInterval = 30.0;
  }

  return v11;
}

@end