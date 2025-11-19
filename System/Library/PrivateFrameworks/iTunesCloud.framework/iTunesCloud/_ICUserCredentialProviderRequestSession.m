@interface _ICUserCredentialProviderRequestSession
- (ICUserIdentityStore)identityStore;
- (_ICUserCredentialProviderRequestSession)initWithCredentialRequests:(id)a3 responseHandler:(id)a4;
@end

@implementation _ICUserCredentialProviderRequestSession

- (ICUserIdentityStore)identityStore
{
  v2 = [(NSArray *)self->_credentialRequests firstObject];
  v3 = [v2 identityStore];

  return v3;
}

- (_ICUserCredentialProviderRequestSession)initWithCredentialRequests:(id)a3 responseHandler:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = _ICUserCredentialProviderRequestSession;
  v8 = [(_ICUserCredentialProviderRequestSession *)&v27 init];
  if (v8)
  {
    v9 = [v6 copy];
    credentialRequests = v8->_credentialRequests;
    v8->_credentialRequests = v9;

    v11 = [(NSArray *)v8->_credentialRequests mutableCopy];
    pendingResponseCredentialRequests = v8->_pendingResponseCredentialRequests;
    v8->_pendingResponseCredentialRequests = v11;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      v17 = -1;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = [*(*(&v23 + 1) + 8 * i) qualityOfService];
          if (v17 <= v19)
          {
            v17 = v19;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }

    else
    {
      v17 = -1;
    }

    v8->_maximumQualityOfService = v17;
    v20 = MEMORY[0x1B8C781E0](v7);
    responseHandler = v8->_responseHandler;
    v8->_responseHandler = v20;
  }

  return v8;
}

@end