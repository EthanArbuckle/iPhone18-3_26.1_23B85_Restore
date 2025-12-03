@interface WFRemoteExecutionAskEachTimeRequestResponse
- (BOOL)readMessageFromData:(id)data error:(id *)error;
- (WFRemoteExecutionAskEachTimeRequestResponse)initWithData:(id)data error:(id *)error;
- (WFRemoteExecutionAskEachTimeRequestResponse)initWithOriginatingRequestIdentifier:(id)identifier inputtedStates:(id)states error:(id)error;
- (id)writeMessageToWriter:(id)writer error:(id *)error;
- (void)inflateInputtedStatesWithAction:(id)action;
@end

@implementation WFRemoteExecutionAskEachTimeRequestResponse

- (id)writeMessageToWriter:(id)writer error:(id *)error
{
  writerCopy = writer;
  v6 = objc_opt_new();
  originatingRequestIdentifier = [(WFRemoteExecutionAskEachTimeRequestResponse *)self originatingRequestIdentifier];
  [v6 setOriginatingRequestIdentifier:originatingRequestIdentifier];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  inputtedStates = [(WFRemoteExecutionAskEachTimeRequestResponse *)self inputtedStates];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __74__WFRemoteExecutionAskEachTimeRequestResponse_writeMessageToWriter_error___block_invoke;
  v32[3] = &unk_1E837D6E8;
  v10 = v8;
  v33 = v10;
  [inputtedStates enumerateKeysAndObjectsUsingBlock:v32];

  [v6 setInputtedStates:v10];
  error = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];

  if (error)
  {
    v12 = objc_opt_new();
    error2 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];
    [v12 setCode:{objc_msgSend(error2, "code")}];

    error3 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];
    domain = [error3 domain];
    [v12 setDomain:domain];

    error4 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];
    userInfo = [error4 userInfo];
    v18 = *MEMORY[0x1E696A578];
    v19 = [userInfo objectForKey:*MEMORY[0x1E696A578]];

    if (v19)
    {
      error5 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];
      userInfo2 = [error5 userInfo];
      v22 = [userInfo2 objectForKey:v18];
      [v12 setLocalizedDescription:v22];
    }

    error6 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];
    userInfo3 = [error6 userInfo];
    v25 = *MEMORY[0x1E696A588];
    v26 = [userInfo3 objectForKey:*MEMORY[0x1E696A588]];

    if (v26)
    {
      error7 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];
      userInfo4 = [error7 userInfo];
      v29 = [userInfo4 objectForKey:v25];
      [v12 setLocalizedFailureReason:v29];
    }

    [v6 setError:v12];
  }

  [v6 writeTo:writerCopy];
  immutableData = [writerCopy immutableData];

  return immutableData;
}

void __74__WFRemoteExecutionAskEachTimeRequestResponse_writeMessageToWriter_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10 = objc_alloc_init(WFREPBKeyValuePair);
  [(WFREPBKeyValuePair *)v10 setKey:v6];

  v7 = MEMORY[0x1E696AE40];
  v8 = [v5 serializedRepresentation];

  v9 = [v7 dataWithPropertyList:v8 format:200 options:0 error:0];
  [(WFREPBKeyValuePair *)v10 setValue:v9];

  [*(a1 + 32) addObject:v10];
}

- (BOOL)readMessageFromData:(id)data error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  dataCopy = data;
  v8 = [[v6 alloc] initWithData:dataCopy];

  v9 = objc_alloc_init(WFREPBAskWhenRunRequestResponse);
  v32 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v32];
  v11 = v32;
  if (v10)
  {
    originatingRequestIdentifier = [(WFREPBAskWhenRunRequestResponse *)v9 originatingRequestIdentifier];
    originatingRequestIdentifier = self->_originatingRequestIdentifier;
    self->_originatingRequestIdentifier = originatingRequestIdentifier;

    inputtedStates = [(WFREPBAskWhenRunRequestResponse *)v9 inputtedStates];
    inputtedStatesData = self->_inputtedStatesData;
    self->_inputtedStatesData = inputtedStates;

    error = [(WFREPBAskWhenRunRequestResponse *)v9 error];
    if (error)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      localizedDescription = [error localizedDescription];
      v19 = [localizedDescription length];

      if (v19)
      {
        localizedDescription2 = [error localizedDescription];
        [v17 setObject:localizedDescription2 forKey:*MEMORY[0x1E696A578]];
      }

      localizedFailureReason = [error localizedFailureReason];
      v22 = [localizedFailureReason length];

      if (v22)
      {
        localizedFailureReason2 = [error localizedFailureReason];
        [v17 setObject:localizedFailureReason2 forKey:*MEMORY[0x1E696A588]];
      }

      v24 = MEMORY[0x1E696ABC0];
      domain = [error domain];
      v26 = [v24 errorWithDomain:domain code:objc_msgSend(error userInfo:{"code"), v17}];
      error = self->_error;
      self->_error = v26;
    }
  }

  else
  {
    v28 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v34 = "[WFRemoteExecutionAskEachTimeRequestResponse readMessageFromData:error:]";
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_FAULT, "%s Failed to read ask each time request response protobuf, %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v29 = v11;
      *error = v11;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)inflateInputtedStatesWithAction:(id)action
{
  v26 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(WFRemoteExecutionAskEachTimeRequestResponse *)self inputtedStatesData];
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = MEMORY[0x1E696AE40];
        value = [v10 value];
        v13 = [v11 propertyListWithData:value options:0 format:0 error:0];

        v14 = [v10 key];
        v15 = [actionCopy parameterForKey:v14];

        v16 = [objc_alloc(objc_msgSend(v15 "stateClass"))];
        if (v16)
        {
          v17 = [v10 key];
          [(NSDictionary *)v5 setObject:v16 forKey:v17];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  inputtedStates = self->_inputtedStates;
  self->_inputtedStates = v5;

  [(WFRemoteExecutionAskEachTimeRequestResponse *)self setInputtedStatesData:0];
  v19 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExecutionAskEachTimeRequestResponse)initWithOriginatingRequestIdentifier:(id)identifier inputtedStates:(id)states error:(id)error
{
  identifierCopy = identifier;
  statesCopy = states;
  errorCopy = error;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionAskEachTimeRequestResponse.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"requestIdentifier"}];
  }

  v18.receiver = self;
  v18.super_class = WFRemoteExecutionAskEachTimeRequestResponse;
  v13 = [(WFRemoteExecutionRequest *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_originatingRequestIdentifier, identifier);
    objc_storeStrong(&v14->_inputtedStates, states);
    objc_storeStrong(&v14->_error, error);
    v15 = v14;
  }

  return v14;
}

- (WFRemoteExecutionAskEachTimeRequestResponse)initWithData:(id)data error:(id *)error
{
  v5.receiver = self;
  v5.super_class = WFRemoteExecutionAskEachTimeRequestResponse;
  return [(WFRemoteExecutionRequest *)&v5 initWithData:data error:error];
}

@end