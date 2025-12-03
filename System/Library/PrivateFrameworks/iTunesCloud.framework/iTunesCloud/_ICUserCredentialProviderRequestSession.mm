@interface _ICUserCredentialProviderRequestSession
- (ICUserIdentityStore)identityStore;
- (_ICUserCredentialProviderRequestSession)initWithCredentialRequests:(id)requests responseHandler:(id)handler;
@end

@implementation _ICUserCredentialProviderRequestSession

- (ICUserIdentityStore)identityStore
{
  firstObject = [(NSArray *)self->_credentialRequests firstObject];
  identityStore = [firstObject identityStore];

  return identityStore;
}

- (_ICUserCredentialProviderRequestSession)initWithCredentialRequests:(id)requests responseHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = _ICUserCredentialProviderRequestSession;
  v8 = [(_ICUserCredentialProviderRequestSession *)&v27 init];
  if (v8)
  {
    v9 = [requestsCopy copy];
    credentialRequests = v8->_credentialRequests;
    v8->_credentialRequests = v9;

    v11 = [(NSArray *)v8->_credentialRequests mutableCopy];
    pendingResponseCredentialRequests = v8->_pendingResponseCredentialRequests;
    v8->_pendingResponseCredentialRequests = v11;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = requestsCopy;
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

          qualityOfService = [*(*(&v23 + 1) + 8 * i) qualityOfService];
          if (v17 <= qualityOfService)
          {
            v17 = qualityOfService;
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
    v20 = MEMORY[0x1B8C781E0](handlerCopy);
    responseHandler = v8->_responseHandler;
    v8->_responseHandler = v20;
  }

  return v8;
}

@end