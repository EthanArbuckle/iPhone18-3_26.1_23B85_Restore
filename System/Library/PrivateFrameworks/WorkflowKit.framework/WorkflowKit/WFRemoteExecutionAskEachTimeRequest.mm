@interface WFRemoteExecutionAskEachTimeRequest
- (BOOL)readMessageFromData:(id)data error:(id *)error;
- (WFRemoteExecutionAskEachTimeRequest)initWithAction:(id)action parameters:(id)parameters associatedRunRequestIdentifier:(id)identifier possibleStatesByParameterKey:(id)key;
- (WFRemoteExecutionAskEachTimeRequest)initWithData:(id)data error:(id *)error;
- (id)writeMessageToWriter:(id)writer error:(id *)error;
- (void)inflateParameterStatesWithAction:(id)action;
@end

@implementation WFRemoteExecutionAskEachTimeRequest

- (id)writeMessageToWriter:(id)writer error:(id *)error
{
  writerCopy = writer;
  v7 = objc_opt_new();
  associatedRunRequestIdentifier = [(WFRemoteExecutionAskEachTimeRequest *)self associatedRunRequestIdentifier];
  [v7 setAssociatedRunRequestIdentifier:associatedRunRequestIdentifier];

  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  parameterKeys = [(WFRemoteExecutionAskEachTimeRequest *)self parameterKeys];
  v11 = [v9 initWithArray:parameterKeys];
  [v7 setParameterKeys:v11];

  actionIdentifier = [(WFRemoteExecutionAskEachTimeRequest *)self actionIdentifier];
  [v7 setActionIdentifier:actionIdentifier];

  v13 = MEMORY[0x1E696AE40];
  actionSerializedParameters = [(WFRemoteExecutionAskEachTimeRequest *)self actionSerializedParameters];
  v29 = 0;
  v15 = [v13 dataWithPropertyList:actionSerializedParameters format:200 options:0 error:&v29];
  v16 = v29;
  [v7 setActionSerializedParameters:v15];

  actionSerializedParameters2 = [v7 actionSerializedParameters];

  if (actionSerializedParameters2)
  {
    parameterKeysAndStates = [(WFRemoteExecutionAskEachTimeRequest *)self parameterKeysAndStates];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __66__WFRemoteExecutionAskEachTimeRequest_writeMessageToWriter_error___block_invoke;
    v27[3] = &unk_1E837D6E8;
    v19 = v7;
    v28 = v19;
    [parameterKeysAndStates enumerateKeysAndObjectsUsingBlock:v27];

    possibleStatesByParameterKey = [(WFRemoteExecutionAskEachTimeRequest *)self possibleStatesByParameterKey];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __66__WFRemoteExecutionAskEachTimeRequest_writeMessageToWriter_error___block_invoke_2;
    v25[3] = &unk_1E8373838;
    v21 = v19;
    v26 = v21;
    [possibleStatesByParameterKey enumerateKeysAndObjectsUsingBlock:v25];

    [v21 writeTo:writerCopy];
    immutableData = [writerCopy immutableData];
  }

  else if (error)
  {
    v23 = v16;
    immutableData = 0;
    *error = v16;
  }

  else
  {
    immutableData = 0;
  }

  return immutableData;
}

void __66__WFRemoteExecutionAskEachTimeRequest_writeMessageToWriter_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10 = objc_alloc_init(WFREPBKeyValuePair);
  [(WFREPBKeyValuePair *)v10 setKey:v6];

  v7 = MEMORY[0x1E696ACC8];
  v8 = [v5 serializedRepresentation];

  v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
  [(WFREPBKeyValuePair *)v10 setValue:v9];

  [*(a1 + 32) addParameterKeysAndStates:v10];
}

void __66__WFRemoteExecutionAskEachTimeRequest_writeMessageToWriter_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = objc_alloc_init(WFREPBRepeatedKeyValuePair);
  [(WFREPBRepeatedKeyValuePair *)v9 setKey:v6];

  v7 = [v5 if_map:&__block_literal_global_2285];

  v8 = [MEMORY[0x1E695DF70] arrayWithArray:v7];
  [(WFREPBRepeatedKeyValuePair *)v9 setValues:v8];

  [*(a1 + 32) addPossibleStates:v9];
}

id __66__WFRemoteExecutionAskEachTimeRequest_writeMessageToWriter_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE40];
  v3 = [a2 serializedRepresentation];
  v4 = [v2 dataWithPropertyList:v3 format:200 options:0 error:0];

  return v4;
}

- (BOOL)readMessageFromData:(id)data error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  dataCopy = data;
  v8 = [[v6 alloc] initWithData:dataCopy];

  v9 = objc_alloc_init(WFREPBAskWhenRunRequest);
  v35 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v35];
  v11 = v35;
  if (v10)
  {
    associatedRunRequestIdentifier = [(WFREPBAskWhenRunRequest *)v9 associatedRunRequestIdentifier];
    associatedRunRequestIdentifier = self->_associatedRunRequestIdentifier;
    self->_associatedRunRequestIdentifier = associatedRunRequestIdentifier;

    parameterKeys = [(WFREPBAskWhenRunRequest *)v9 parameterKeys];
    parameterKeys = self->_parameterKeys;
    self->_parameterKeys = parameterKeys;

    parameterKeysAndStates = [(WFREPBAskWhenRunRequest *)v9 parameterKeysAndStates];
    parameterKeysAndStatesData = self->_parameterKeysAndStatesData;
    self->_parameterKeysAndStatesData = parameterKeysAndStates;

    actionIdentifier = [(WFREPBAskWhenRunRequest *)v9 actionIdentifier];
    actionIdentifier = self->_actionIdentifier;
    self->_actionIdentifier = actionIdentifier;

    possibleStates = [(WFREPBAskWhenRunRequest *)v9 possibleStates];
    possibleStatesByParameterKeyData = self->_possibleStatesByParameterKeyData;
    self->_possibleStatesByParameterKeyData = possibleStates;

    v22 = MEMORY[0x1E696AE40];
    actionSerializedParameters = [(WFREPBAskWhenRunRequest *)v9 actionSerializedParameters];
    v34 = 0;
    v24 = [v22 propertyListWithData:actionSerializedParameters options:0 format:0 error:&v34];
    v25 = v34;
    actionSerializedParameters = self->_actionSerializedParameters;
    self->_actionSerializedParameters = v24;

    if (!self->_actionSerializedParameters)
    {
      v27 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        actionSerializedParameters2 = [(WFREPBAskWhenRunRequest *)v9 actionSerializedParameters];
        *buf = 136315650;
        v37 = "[WFRemoteExecutionAskEachTimeRequest readMessageFromData:error:]";
        v38 = 2114;
        v39 = actionSerializedParameters2;
        v40 = 2114;
        v41 = v25;
        _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_ERROR, "%s An error occurred when decoding object (%{public}@), error: %{public}@", buf, 0x20u);
      }

      if (error)
      {
        v29 = v25;
        *error = v25;
      }
    }
  }

  else
  {
    v30 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v37 = "[WFRemoteExecutionAskEachTimeRequest readMessageFromData:error:]";
      v38 = 2114;
      v39 = v11;
      _os_log_impl(&dword_1CA256000, v30, OS_LOG_TYPE_FAULT, "%s Failed to read ask each time request protobuf, %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v31 = v11;
      *error = v11;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)inflateParameterStatesWithAction:(id)action
{
  v67 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (actionCopy)
  {
    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    selfCopy = self;
    obj = [(WFRemoteExecutionAskEachTimeRequest *)self parameterKeysAndStatesData];
    v41 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v41)
    {
      v40 = *v56;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v56 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v55 + 1) + 8 * i);
          v6 = [v5 key];
          v7 = [actionCopy parameterForKey:v6];
          stateClass = [v7 stateClass];
          if (stateClass)
          {
            v9 = stateClass;
            v42 = v7;
            v44 = v6;
            v10 = MEMORY[0x1E696ACD0];
            v11 = MEMORY[0x1E695DFD8];
            v12 = objc_opt_class();
            v13 = objc_opt_class();
            v14 = objc_opt_class();
            v15 = objc_opt_class();
            v16 = objc_opt_class();
            v17 = [v11 setWithObjects:{v12, v13, v14, v15, v16, objc_opt_class(), 0}];
            value = [v5 value];
            v54 = 0;
            v19 = [v10 unarchivedObjectOfClasses:v17 fromData:value error:&v54];
            v20 = v54;

            if (v19)
            {
              v7 = v42;
              v21 = [[v9 alloc] initWithSerializedRepresentation:v19 variableProvider:0 parameter:v42];
              v6 = v44;
              if (v21)
              {
                v22 = v21;
                [v38 setObject:v21 forKey:v44];
              }

              else
              {
                v23 = getWFRemoteExecutionLogObject();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v61 = "[WFRemoteExecutionAskEachTimeRequest inflateParameterStatesWithAction:]";
                  v62 = 2114;
                  v63 = v44;
                  v64 = 2114;
                  v65 = v20;
                  _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s An error occurred when inflating parameter (%{public}@) state data, error: %{public}@", buf, 0x20u);
                }

                v22 = 0;
              }
            }

            else
            {
              v22 = getWFRemoteExecutionLogObject();
              v7 = v42;
              v6 = v44;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v61 = "[WFRemoteExecutionAskEachTimeRequest inflateParameterStatesWithAction:]";
                v62 = 2114;
                v63 = v44;
                v64 = 2114;
                v65 = v20;
                _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_ERROR, "%s An error occurred when inflating serialized data for key %{public}@, error: %{public}@", buf, 0x20u);
              }
            }
          }
        }

        v41 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v41);
    }

    objc_storeStrong(&selfCopy->_parameterKeysAndStates, v38);
    [(WFRemoteExecutionAskEachTimeRequest *)selfCopy setParameterKeysAndStatesData:0];
    v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    possibleStatesByParameterKeyData = [(WFRemoteExecutionAskEachTimeRequest *)selfCopy possibleStatesByParameterKeyData];
    v24 = [possibleStatesByParameterKeyData countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v51;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v51 != v26)
          {
            objc_enumerationMutation(possibleStatesByParameterKeyData);
          }

          v28 = *(*(&v50 + 1) + 8 * j);
          v29 = [v28 key];
          v30 = [actionCopy parameterForKey:v29];
          singleStateClass = [v30 singleStateClass];
          if (singleStateClass)
          {
            v32 = singleStateClass;
            values = [v28 values];
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = __72__WFRemoteExecutionAskEachTimeRequest_inflateParameterStatesWithAction___block_invoke;
            v47[3] = &unk_1E83737F0;
            v49 = v32;
            v48 = v30;
            v34 = [values if_map:v47];

            [(NSDictionary *)v45 setObject:v34 forKey:v29];
          }
        }

        v25 = [possibleStatesByParameterKeyData countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v25);
    }

    possibleStatesByParameterKey = selfCopy->_possibleStatesByParameterKey;
    selfCopy->_possibleStatesByParameterKey = v45;

    [(WFRemoteExecutionAskEachTimeRequest *)selfCopy setPossibleStatesByParameterKeyData:0];
  }

  v36 = *MEMORY[0x1E69E9840];
}

id __72__WFRemoteExecutionAskEachTimeRequest_inflateParameterStatesWithAction___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AE40] propertyListWithData:a2 options:0 format:0 error:0];
  v4 = [objc_alloc(*(a1 + 40)) initWithSerializedRepresentation:v3 variableProvider:0 parameter:*(a1 + 32)];

  return v4;
}

- (WFRemoteExecutionAskEachTimeRequest)initWithAction:(id)action parameters:(id)parameters associatedRunRequestIdentifier:(id)identifier possibleStatesByParameterKey:(id)key
{
  v50 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  parametersCopy = parameters;
  identifierCopy = identifier;
  keyCopy = key;
  if (actionCopy)
  {
    if (parametersCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionAskEachTimeRequest.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];

    if (identifierCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionAskEachTimeRequest.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"action"}];

  if (!parametersCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (identifierCopy)
  {
    goto LABEL_4;
  }

LABEL_18:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionAskEachTimeRequest.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"associatedRunRequestIdentifier"}];

LABEL_4:
  v48.receiver = self;
  v48.super_class = WFRemoteExecutionAskEachTimeRequest;
  v15 = [(WFRemoteExecutionRequest *)&v48 init];
  v16 = v15;
  if (v15)
  {
    v40 = keyCopy;
    v41 = identifierCopy;
    obj = key;
    objc_storeStrong(&v15->_associatedRunRequestIdentifier, identifier);
    identifier = [actionCopy identifier];
    actionIdentifier = v16->_actionIdentifier;
    v16->_actionIdentifier = identifier;

    serializedParameters = [actionCopy serializedParameters];
    actionSerializedParameters = v16->_actionSerializedParameters;
    v16->_actionSerializedParameters = serializedParameters;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v43 = parametersCopy;
    v23 = parametersCopy;
    v24 = [v23 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v45;
      do
      {
        v27 = 0;
        do
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v44 + 1) + 8 * v27) key];
          [(NSArray *)v22 addObject:v28];
          v29 = [actionCopy parameterStateForKey:v28];
          if (v29)
          {
            [(NSDictionary *)v21 setObject:v29 forKey:v28];
          }

          ++v27;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v25);
    }

    parameterKeys = v16->_parameterKeys;
    v16->_parameterKeys = v22;
    v31 = v22;

    parameterKeysAndStates = v16->_parameterKeysAndStates;
    v16->_parameterKeysAndStates = v21;
    v33 = v21;

    objc_storeStrong(&v16->_possibleStatesByParameterKey, obj);
    v34 = v16;
    parametersCopy = v43;
    keyCopy = v40;
    identifierCopy = v41;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v16;
}

- (WFRemoteExecutionAskEachTimeRequest)initWithData:(id)data error:(id *)error
{
  v5.receiver = self;
  v5.super_class = WFRemoteExecutionAskEachTimeRequest;
  return [(WFRemoteExecutionRequest *)&v5 initWithData:data error:error];
}

@end