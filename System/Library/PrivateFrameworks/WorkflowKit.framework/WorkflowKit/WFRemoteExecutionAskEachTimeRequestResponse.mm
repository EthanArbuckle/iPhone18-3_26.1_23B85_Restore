@interface WFRemoteExecutionAskEachTimeRequestResponse
- (BOOL)readMessageFromData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionAskEachTimeRequestResponse)initWithData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionAskEachTimeRequestResponse)initWithOriginatingRequestIdentifier:(id)a3 inputtedStates:(id)a4 error:(id)a5;
- (id)writeMessageToWriter:(id)a3 error:(id *)a4;
- (void)inflateInputtedStatesWithAction:(id)a3;
@end

@implementation WFRemoteExecutionAskEachTimeRequestResponse

- (id)writeMessageToWriter:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self originatingRequestIdentifier];
  [v6 setOriginatingRequestIdentifier:v7];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self inputtedStates];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __74__WFRemoteExecutionAskEachTimeRequestResponse_writeMessageToWriter_error___block_invoke;
  v32[3] = &unk_1E837D6E8;
  v10 = v8;
  v33 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v32];

  [v6 setInputtedStates:v10];
  v11 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];

  if (v11)
  {
    v12 = objc_opt_new();
    v13 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];
    [v12 setCode:{objc_msgSend(v13, "code")}];

    v14 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];
    v15 = [v14 domain];
    [v12 setDomain:v15];

    v16 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];
    v17 = [v16 userInfo];
    v18 = *MEMORY[0x1E696A578];
    v19 = [v17 objectForKey:*MEMORY[0x1E696A578]];

    if (v19)
    {
      v20 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];
      v21 = [v20 userInfo];
      v22 = [v21 objectForKey:v18];
      [v12 setLocalizedDescription:v22];
    }

    v23 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];
    v24 = [v23 userInfo];
    v25 = *MEMORY[0x1E696A588];
    v26 = [v24 objectForKey:*MEMORY[0x1E696A588]];

    if (v26)
    {
      v27 = [(WFRemoteExecutionAskEachTimeRequestResponse *)self error];
      v28 = [v27 userInfo];
      v29 = [v28 objectForKey:v25];
      [v12 setLocalizedFailureReason:v29];
    }

    [v6 setError:v12];
  }

  [v6 writeTo:v5];
  v30 = [v5 immutableData];

  return v30;
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

- (BOOL)readMessageFromData:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  v7 = a3;
  v8 = [[v6 alloc] initWithData:v7];

  v9 = objc_alloc_init(WFREPBAskWhenRunRequestResponse);
  v32 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v32];
  v11 = v32;
  if (v10)
  {
    v12 = [(WFREPBAskWhenRunRequestResponse *)v9 originatingRequestIdentifier];
    originatingRequestIdentifier = self->_originatingRequestIdentifier;
    self->_originatingRequestIdentifier = v12;

    v14 = [(WFREPBAskWhenRunRequestResponse *)v9 inputtedStates];
    inputtedStatesData = self->_inputtedStatesData;
    self->_inputtedStatesData = v14;

    v16 = [(WFREPBAskWhenRunRequestResponse *)v9 error];
    if (v16)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v18 = [v16 localizedDescription];
      v19 = [v18 length];

      if (v19)
      {
        v20 = [v16 localizedDescription];
        [v17 setObject:v20 forKey:*MEMORY[0x1E696A578]];
      }

      v21 = [v16 localizedFailureReason];
      v22 = [v21 length];

      if (v22)
      {
        v23 = [v16 localizedFailureReason];
        [v17 setObject:v23 forKey:*MEMORY[0x1E696A588]];
      }

      v24 = MEMORY[0x1E696ABC0];
      v25 = [v16 domain];
      v26 = [v24 errorWithDomain:v25 code:objc_msgSend(v16 userInfo:{"code"), v17}];
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

    if (a4)
    {
      v29 = v11;
      *a4 = v11;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)inflateInputtedStatesWithAction:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v12 = [v10 value];
        v13 = [v11 propertyListWithData:v12 options:0 format:0 error:0];

        v14 = [v10 key];
        v15 = [v4 parameterForKey:v14];

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

- (WFRemoteExecutionAskEachTimeRequestResponse)initWithOriginatingRequestIdentifier:(id)a3 inputtedStates:(id)a4 error:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionAskEachTimeRequestResponse.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"requestIdentifier"}];
  }

  v18.receiver = self;
  v18.super_class = WFRemoteExecutionAskEachTimeRequestResponse;
  v13 = [(WFRemoteExecutionRequest *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_originatingRequestIdentifier, a3);
    objc_storeStrong(&v14->_inputtedStates, a4);
    objc_storeStrong(&v14->_error, a5);
    v15 = v14;
  }

  return v14;
}

- (WFRemoteExecutionAskEachTimeRequestResponse)initWithData:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = WFRemoteExecutionAskEachTimeRequestResponse;
  return [(WFRemoteExecutionRequest *)&v5 initWithData:a3 error:a4];
}

@end