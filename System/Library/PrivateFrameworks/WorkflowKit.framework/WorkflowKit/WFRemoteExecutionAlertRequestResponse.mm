@interface WFRemoteExecutionAlertRequestResponse
- (BOOL)readMessageFromData:(id)data error:(id *)error;
- (WFRemoteExecutionAlertRequestResponse)initWithSelectedButton:(id)button requestIdentifier:(id)identifier error:(id)error;
- (id)writeMessageToWriter:(id)writer error:(id *)error;
@end

@implementation WFRemoteExecutionAlertRequestResponse

- (id)writeMessageToWriter:(id)writer error:(id *)error
{
  writerCopy = writer;
  v6 = objc_opt_new();
  requestIdentifier = [(WFRemoteExecutionAlertRequestResponse *)self requestIdentifier];
  [v6 setRequestIdentifier:requestIdentifier];

  selectedButton = [(WFRemoteExecutionAlertRequestResponse *)self selectedButton];
  [v6 setSelectedButton:selectedButton];

  error = [(WFRemoteExecutionAlertRequestResponse *)self error];

  if (error)
  {
    v10 = objc_opt_new();
    error2 = [(WFRemoteExecutionAlertRequestResponse *)self error];
    domain = [error2 domain];
    [v10 setDomain:domain];

    error3 = [(WFRemoteExecutionAlertRequestResponse *)self error];
    [v10 setCode:{objc_msgSend(error3, "code")}];

    error4 = [(WFRemoteExecutionAlertRequestResponse *)self error];
    userInfo = [error4 userInfo];
    v16 = [userInfo objectForKey:*MEMORY[0x1E696A578]];
    [v10 setLocalizedDescription:v16];

    error5 = [(WFRemoteExecutionAlertRequestResponse *)self error];
    userInfo2 = [error5 userInfo];
    v19 = [userInfo2 objectForKey:*MEMORY[0x1E696A588]];
    [v10 setLocalizedFailureReason:v19];

    [v6 setError:v10];
  }

  [v6 writeTo:writerCopy];
  immutableData = [writerCopy immutableData];

  return immutableData;
}

- (BOOL)readMessageFromData:(id)data error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  dataCopy = data;
  v8 = [[v6 alloc] initWithData:dataCopy];

  v9 = objc_alloc_init(WFREPBAlertRequestResponse);
  v32 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v32];
  v11 = v32;
  if (v10)
  {
    requestIdentifier = [(WFREPBAlertRequestResponse *)v9 requestIdentifier];
    requestIdentifier = self->_requestIdentifier;
    self->_requestIdentifier = requestIdentifier;

    selectedButton = [(WFREPBAlertRequestResponse *)v9 selectedButton];
    selectedButton = self->_selectedButton;
    self->_selectedButton = selectedButton;

    error = [(WFREPBAlertRequestResponse *)v9 error];
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
      v34 = "[WFRemoteExecutionAlertRequestResponse readMessageFromData:error:]";
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_FAULT, "%s Failed to read alert request response protobuf, %{public}@", buf, 0x16u);
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

- (WFRemoteExecutionAlertRequestResponse)initWithSelectedButton:(id)button requestIdentifier:(id)identifier error:(id)error
{
  buttonCopy = button;
  identifierCopy = identifier;
  errorCopy = error;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionAlertRequestResponse.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"requestIdentifier"}];
  }

  v18.receiver = self;
  v18.super_class = WFRemoteExecutionAlertRequestResponse;
  v13 = [(WFRemoteExecutionRequest *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_requestIdentifier, identifier);
    objc_storeStrong(&v14->_selectedButton, button);
    objc_storeStrong(&v14->_error, error);
    v15 = v14;
  }

  return v14;
}

@end