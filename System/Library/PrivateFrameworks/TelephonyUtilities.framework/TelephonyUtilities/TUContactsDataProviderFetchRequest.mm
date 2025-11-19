@interface TUContactsDataProviderFetchRequest
- (TUContactsDataProviderFetchRequest)init;
- (TUContactsDataProviderFetchRequest)initWithCall:(id)a3;
- (TUContactsDataProviderFetchRequest)initWithHandle:(id)a3;
- (TUContactsDataProviderFetchRequest)initWithHandles:(id)a3;
- (TUContactsDataProviderFetchRequest)initWithHandles:(id)a3 isConversation:(BOOL)a4;
- (id)description;
- (void)removePsuedHandles;
@end

@implementation TUContactsDataProviderFetchRequest

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUContactsDataProviderFetchRequest *)self contactIdentifier];
  [v3 appendFormat:@" cI=%@", v4];

  [v3 appendFormat:@" uNCC=%d", -[TUContactsDataProviderFetchRequest useNetworkCountryCode](self, "useNetworkCountryCode")];
  [v3 appendFormat:@" iEM=%d", -[TUContactsDataProviderFetchRequest isEmergency](self, "isEmergency")];
  [v3 appendFormat:@" iBL=%d", -[TUContactsDataProviderFetchRequest isBlocked](self, "isBlocked")];
  [v3 appendFormat:@" c=%d", -[TUContactsDataProviderFetchRequest isConversation](self, "isConversation")];
  [v3 appendFormat:@" v=%d", -[TUContactsDataProviderFetchRequest isVerified](self, "isVerified")];
  [v3 appendFormat:@" i=%d", -[TUContactsDataProviderFetchRequest isIncoming](self, "isIncoming")];
  v5 = [(TUContactsDataProviderFetchRequest *)self isoCountryCode];
  [v3 appendFormat:@" isoCN=%@", v5];

  v6 = [(TUContactsDataProviderFetchRequest *)self handles];
  [v3 appendFormat:@" hdls=%@", v6];

  v7 = [(TUContactsDataProviderFetchRequest *)self phoneNumberPrefixHint];
  [v3 appendFormat:@" pnpH=%@", v7];

  v8 = [(TUContactsDataProviderFetchRequest *)self auxiliaryKeysToFetch];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(TUContactsDataProviderFetchRequest *)self auxiliaryKeysToFetch];
    [v3 appendFormat:@" aKTF=%@", v10];
  }

  [v3 appendString:@">"];
  v11 = [v3 copy];

  return v11;
}

- (void)removePsuedHandles
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [(TUContactsDataProviderFetchRequest *)self handles];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(TUContactsDataProviderFetchRequest *)self handles];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v17;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v16 + 1) + 8 * i);
      v13 = [v12 value];
      v14 = [v13 destinationIdIsPseudonym];

      if (v14)
      {
        v9 = 1;
      }

      else
      {
        [v5 addObject:v12];
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v8);

  if (v9)
  {
    v6 = [v5 copy];
    [(TUContactsDataProviderFetchRequest *)self setHandles:v6];
LABEL_13:
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (TUContactsDataProviderFetchRequest)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TUContactsDataProviderFetchRequest.m" lineNumber:19 description:{@"%s is not available. Use a designated initializer instead.", "-[TUContactsDataProviderFetchRequest init]"}];

  return 0;
}

- (TUContactsDataProviderFetchRequest)initWithCall:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TUContactsDataProviderFetchRequest;
  v5 = [(TUContactsDataProviderFetchRequest *)&v13 init];
  if (v5)
  {
    if (!v4)
    {
      [TUContactsDataProviderFetchRequest initWithCall:];
    }

    v5->_emergency = [v4 isEmergency];
    v6 = [v4 isoCountryCode];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v6;

    v5->_blocked = [v4 isBlocked];
    v5->_conversation = [v4 isConversation];
    v5->_verified = [v4 verificationStatus] == 1;
    v5->_incoming = [v4 isIncoming];
    v8 = [v4 remoteParticipantHandles];
    v9 = [v8 allObjects];
    handles = v5->_handles;
    v5->_handles = v9;

    auxiliaryKeysToFetch = v5->_auxiliaryKeysToFetch;
    v5->_auxiliaryKeysToFetch = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (TUContactsDataProviderFetchRequest)initWithHandles:(id)a3 isConversation:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TUContactsDataProviderFetchRequest;
  v8 = [(TUContactsDataProviderFetchRequest *)&v11 init];
  if (v8)
  {
    if (!v7)
    {
      [TUContactsDataProviderFetchRequest initWithHandles:isConversation:];
    }

    objc_storeStrong(&v8->_handles, a3);
    auxiliaryKeysToFetch = v8->_auxiliaryKeysToFetch;
    v8->_auxiliaryKeysToFetch = MEMORY[0x1E695E0F0];

    v8->_conversation = a4;
  }

  return v8;
}

- (TUContactsDataProviderFetchRequest)initWithHandles:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [TUContactsDataProviderFetchRequest initWithHandles:];
  }

  v5 = [(TUContactsDataProviderFetchRequest *)self initWithHandles:v4 isConversation:0];

  return v5;
}

- (TUContactsDataProviderFetchRequest)initWithHandle:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [TUContactsDataProviderFetchRequest initWithHandle:];
  }

  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(TUContactsDataProviderFetchRequest *)self initWithHandles:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)initWithCall:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"call != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithHandles:isConversation:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"handles != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithHandles:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"handles != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithHandle:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"handle != nil" object:? file:? lineNumber:? description:?];
}

@end