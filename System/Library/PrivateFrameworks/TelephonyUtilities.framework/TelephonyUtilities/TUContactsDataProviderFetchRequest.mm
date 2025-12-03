@interface TUContactsDataProviderFetchRequest
- (TUContactsDataProviderFetchRequest)init;
- (TUContactsDataProviderFetchRequest)initWithCall:(id)call;
- (TUContactsDataProviderFetchRequest)initWithHandle:(id)handle;
- (TUContactsDataProviderFetchRequest)initWithHandles:(id)handles;
- (TUContactsDataProviderFetchRequest)initWithHandles:(id)handles isConversation:(BOOL)conversation;
- (id)description;
- (void)removePsuedHandles;
@end

@implementation TUContactsDataProviderFetchRequest

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  contactIdentifier = [(TUContactsDataProviderFetchRequest *)self contactIdentifier];
  [v3 appendFormat:@" cI=%@", contactIdentifier];

  [v3 appendFormat:@" uNCC=%d", -[TUContactsDataProviderFetchRequest useNetworkCountryCode](self, "useNetworkCountryCode")];
  [v3 appendFormat:@" iEM=%d", -[TUContactsDataProviderFetchRequest isEmergency](self, "isEmergency")];
  [v3 appendFormat:@" iBL=%d", -[TUContactsDataProviderFetchRequest isBlocked](self, "isBlocked")];
  [v3 appendFormat:@" c=%d", -[TUContactsDataProviderFetchRequest isConversation](self, "isConversation")];
  [v3 appendFormat:@" v=%d", -[TUContactsDataProviderFetchRequest isVerified](self, "isVerified")];
  [v3 appendFormat:@" i=%d", -[TUContactsDataProviderFetchRequest isIncoming](self, "isIncoming")];
  isoCountryCode = [(TUContactsDataProviderFetchRequest *)self isoCountryCode];
  [v3 appendFormat:@" isoCN=%@", isoCountryCode];

  handles = [(TUContactsDataProviderFetchRequest *)self handles];
  [v3 appendFormat:@" hdls=%@", handles];

  phoneNumberPrefixHint = [(TUContactsDataProviderFetchRequest *)self phoneNumberPrefixHint];
  [v3 appendFormat:@" pnpH=%@", phoneNumberPrefixHint];

  auxiliaryKeysToFetch = [(TUContactsDataProviderFetchRequest *)self auxiliaryKeysToFetch];
  v9 = [auxiliaryKeysToFetch count];

  if (v9)
  {
    auxiliaryKeysToFetch2 = [(TUContactsDataProviderFetchRequest *)self auxiliaryKeysToFetch];
    [v3 appendFormat:@" aKTF=%@", auxiliaryKeysToFetch2];
  }

  [v3 appendString:@">"];
  v11 = [v3 copy];

  return v11;
}

- (void)removePsuedHandles
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  handles = [(TUContactsDataProviderFetchRequest *)self handles];
  v5 = [v3 initWithCapacity:{objc_msgSend(handles, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  handles2 = [(TUContactsDataProviderFetchRequest *)self handles];
  v7 = [handles2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(handles2);
      }

      v12 = *(*(&v16 + 1) + 8 * i);
      value = [v12 value];
      destinationIdIsPseudonym = [value destinationIdIsPseudonym];

      if (destinationIdIsPseudonym)
      {
        v9 = 1;
      }

      else
      {
        [v5 addObject:v12];
      }
    }

    v8 = [handles2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v8);

  if (v9)
  {
    handles2 = [v5 copy];
    [(TUContactsDataProviderFetchRequest *)self setHandles:handles2];
LABEL_13:
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (TUContactsDataProviderFetchRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUContactsDataProviderFetchRequest.m" lineNumber:19 description:{@"%s is not available. Use a designated initializer instead.", "-[TUContactsDataProviderFetchRequest init]"}];

  return 0;
}

- (TUContactsDataProviderFetchRequest)initWithCall:(id)call
{
  callCopy = call;
  v13.receiver = self;
  v13.super_class = TUContactsDataProviderFetchRequest;
  v5 = [(TUContactsDataProviderFetchRequest *)&v13 init];
  if (v5)
  {
    if (!callCopy)
    {
      [TUContactsDataProviderFetchRequest initWithCall:];
    }

    v5->_emergency = [callCopy isEmergency];
    isoCountryCode = [callCopy isoCountryCode];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = isoCountryCode;

    v5->_blocked = [callCopy isBlocked];
    v5->_conversation = [callCopy isConversation];
    v5->_verified = [callCopy verificationStatus] == 1;
    v5->_incoming = [callCopy isIncoming];
    remoteParticipantHandles = [callCopy remoteParticipantHandles];
    allObjects = [remoteParticipantHandles allObjects];
    handles = v5->_handles;
    v5->_handles = allObjects;

    auxiliaryKeysToFetch = v5->_auxiliaryKeysToFetch;
    v5->_auxiliaryKeysToFetch = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (TUContactsDataProviderFetchRequest)initWithHandles:(id)handles isConversation:(BOOL)conversation
{
  handlesCopy = handles;
  v11.receiver = self;
  v11.super_class = TUContactsDataProviderFetchRequest;
  v8 = [(TUContactsDataProviderFetchRequest *)&v11 init];
  if (v8)
  {
    if (!handlesCopy)
    {
      [TUContactsDataProviderFetchRequest initWithHandles:isConversation:];
    }

    objc_storeStrong(&v8->_handles, handles);
    auxiliaryKeysToFetch = v8->_auxiliaryKeysToFetch;
    v8->_auxiliaryKeysToFetch = MEMORY[0x1E695E0F0];

    v8->_conversation = conversation;
  }

  return v8;
}

- (TUContactsDataProviderFetchRequest)initWithHandles:(id)handles
{
  handlesCopy = handles;
  if (!handlesCopy)
  {
    [TUContactsDataProviderFetchRequest initWithHandles:];
  }

  v5 = [(TUContactsDataProviderFetchRequest *)self initWithHandles:handlesCopy isConversation:0];

  return v5;
}

- (TUContactsDataProviderFetchRequest)initWithHandle:(id)handle
{
  v9[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (!handleCopy)
  {
    [TUContactsDataProviderFetchRequest initWithHandle:];
  }

  v9[0] = handleCopy;
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