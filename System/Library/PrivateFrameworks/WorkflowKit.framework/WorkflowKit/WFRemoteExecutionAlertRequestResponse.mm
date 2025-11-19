@interface WFRemoteExecutionAlertRequestResponse
- (BOOL)readMessageFromData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionAlertRequestResponse)initWithSelectedButton:(id)a3 requestIdentifier:(id)a4 error:(id)a5;
- (id)writeMessageToWriter:(id)a3 error:(id *)a4;
@end

@implementation WFRemoteExecutionAlertRequestResponse

- (id)writeMessageToWriter:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [(WFRemoteExecutionAlertRequestResponse *)self requestIdentifier];
  [v6 setRequestIdentifier:v7];

  v8 = [(WFRemoteExecutionAlertRequestResponse *)self selectedButton];
  [v6 setSelectedButton:v8];

  v9 = [(WFRemoteExecutionAlertRequestResponse *)self error];

  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [(WFRemoteExecutionAlertRequestResponse *)self error];
    v12 = [v11 domain];
    [v10 setDomain:v12];

    v13 = [(WFRemoteExecutionAlertRequestResponse *)self error];
    [v10 setCode:{objc_msgSend(v13, "code")}];

    v14 = [(WFRemoteExecutionAlertRequestResponse *)self error];
    v15 = [v14 userInfo];
    v16 = [v15 objectForKey:*MEMORY[0x1E696A578]];
    [v10 setLocalizedDescription:v16];

    v17 = [(WFRemoteExecutionAlertRequestResponse *)self error];
    v18 = [v17 userInfo];
    v19 = [v18 objectForKey:*MEMORY[0x1E696A588]];
    [v10 setLocalizedFailureReason:v19];

    [v6 setError:v10];
  }

  [v6 writeTo:v5];
  v20 = [v5 immutableData];

  return v20;
}

- (BOOL)readMessageFromData:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  v7 = a3;
  v8 = [[v6 alloc] initWithData:v7];

  v9 = objc_alloc_init(WFREPBAlertRequestResponse);
  v32 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v32];
  v11 = v32;
  if (v10)
  {
    v12 = [(WFREPBAlertRequestResponse *)v9 requestIdentifier];
    requestIdentifier = self->_requestIdentifier;
    self->_requestIdentifier = v12;

    v14 = [(WFREPBAlertRequestResponse *)v9 selectedButton];
    selectedButton = self->_selectedButton;
    self->_selectedButton = v14;

    v16 = [(WFREPBAlertRequestResponse *)v9 error];
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
      v34 = "[WFRemoteExecutionAlertRequestResponse readMessageFromData:error:]";
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_FAULT, "%s Failed to read alert request response protobuf, %{public}@", buf, 0x16u);
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

- (WFRemoteExecutionAlertRequestResponse)initWithSelectedButton:(id)a3 requestIdentifier:(id)a4 error:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v11)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionAlertRequestResponse.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"requestIdentifier"}];
  }

  v18.receiver = self;
  v18.super_class = WFRemoteExecutionAlertRequestResponse;
  v13 = [(WFRemoteExecutionRequest *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_requestIdentifier, a4);
    objc_storeStrong(&v14->_selectedButton, a3);
    objc_storeStrong(&v14->_error, a5);
    v15 = v14;
  }

  return v14;
}

@end