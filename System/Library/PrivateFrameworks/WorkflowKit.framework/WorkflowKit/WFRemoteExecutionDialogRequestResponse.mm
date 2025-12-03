@interface WFRemoteExecutionDialogRequestResponse
- (BOOL)readMessageFromData:(id)data error:(id *)error;
- (WFRemoteExecutionDialogRequestResponse)initWithData:(id)data error:(id *)error;
- (WFRemoteExecutionDialogRequestResponse)initWithOriginatingRequestIdentifier:(id)identifier dialogResponse:(id)response error:(id)error;
- (id)writeMessageToWriter:(id)writer error:(id *)error;
@end

@implementation WFRemoteExecutionDialogRequestResponse

- (id)writeMessageToWriter:(id)writer error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  writerCopy = writer;
  v7 = objc_alloc_init(WFREPBDialogRequestResponse);
  originatingRequestIdentifier = [(WFRemoteExecutionDialogRequestResponse *)self originatingRequestIdentifier];
  [(WFREPBDialogRequestResponse *)v7 setOriginatingRequestIdentifier:originatingRequestIdentifier];

  v9 = MEMORY[0x1E696ACC8];
  dialogResponse = [(WFRemoteExecutionDialogRequestResponse *)self dialogResponse];
  v29 = 0;
  v11 = [v9 archivedDataWithRootObject:dialogResponse requiringSecureCoding:1 error:&v29];
  v12 = v29;

  if ([v11 length])
  {
    [(WFREPBDialogRequestResponse *)v7 setDialogRequestResponseData:v11];
    error = [(WFRemoteExecutionDialogRequestResponse *)self error];

    if (error)
    {
      v14 = objc_alloc_init(WFREPBError);
      error2 = [(WFRemoteExecutionDialogRequestResponse *)self error];
      domain = [error2 domain];
      [(WFREPBError *)v14 setDomain:domain];

      error3 = [(WFRemoteExecutionDialogRequestResponse *)self error];
      -[WFREPBError setCode:](v14, "setCode:", [error3 code]);

      error4 = [(WFRemoteExecutionDialogRequestResponse *)self error];
      userInfo = [error4 userInfo];
      v20 = [userInfo objectForKey:*MEMORY[0x1E696A578]];
      [(WFREPBError *)v14 setLocalizedDescription:v20];

      error5 = [(WFRemoteExecutionDialogRequestResponse *)self error];
      userInfo2 = [error5 userInfo];
      v23 = [userInfo2 objectForKey:*MEMORY[0x1E696A588]];
      [(WFREPBError *)v14 setLocalizedFailureReason:v23];

      [(WFREPBDialogRequestResponse *)v7 setError:v14];
    }

    [(WFREPBDialogRequestResponse *)v7 writeTo:writerCopy];
    immutableData = [writerCopy immutableData];
  }

  else
  {
    v25 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v31 = "[WFRemoteExecutionDialogRequestResponse writeMessageToWriter:error:]";
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s Unable to write dialog request response as data: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v26 = v12;
      immutableData = 0;
      *error = v12;
    }

    else
    {
      immutableData = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];

  return immutableData;
}

- (BOOL)readMessageFromData:(id)data error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  dataCopy = data;
  v8 = [[v6 alloc] initWithData:dataCopy];

  v9 = objc_alloc_init(WFREPBDialogRequestResponse);
  v60 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v60];
  v11 = v60;
  v12 = v11;
  if (v10)
  {
    v57 = v11;
    v58 = v8;
    originatingRequestIdentifier = [(WFREPBDialogRequestResponse *)v9 originatingRequestIdentifier];
    originatingRequestIdentifier = self->_originatingRequestIdentifier;
    self->_originatingRequestIdentifier = originatingRequestIdentifier;

    dialogRequestResponseData = [(WFREPBDialogRequestResponse *)v9 dialogRequestResponseData];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v54 = v20;
    v22 = dialogRequestResponseData;
    v23 = [v16 setWithObjects:{v17, v18, v19, v54, v21, objc_opt_class(), 0}];
    v24 = [v23 mutableCopy];

    [v24 addObject:objc_opt_class()];
    v59 = 0;
    v25 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v24 fromData:dialogRequestResponseData error:&v59];
    v26 = v59;
    v27 = v25 != 0;
    if (!v25)
    {
      v33 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v62 = "[WFRemoteExecutionDialogRequestResponse readMessageFromData:error:]";
        v63 = 2114;
        v64 = v26;
        _os_log_impl(&dword_1CA256000, v33, OS_LOG_TYPE_FAULT, "%s Unable to unarchive dialog response from protobuf: %{public}@", buf, 0x16u);
      }

      if (error)
      {
        v34 = v26;
        *error = v26;
      }

      goto LABEL_22;
    }

    objc_storeStrong(&self->_dialogResponse, v25);
    error = [(WFREPBDialogRequestResponse *)v9 error];

    if (!error)
    {
LABEL_22:

      v12 = v57;
      v8 = v58;
      goto LABEL_23;
    }

    v55 = v22;
    v56 = v26;
    error2 = [(WFREPBDialogRequestResponse *)v9 error];
    localizedFailureReason = [error2 localizedFailureReason];
    if (localizedFailureReason)
    {
    }

    else
    {
      error3 = [(WFREPBDialogRequestResponse *)v9 error];
      localizedDescription = [error3 localizedDescription];

      if (!localizedDescription)
      {
        v37 = 0;
LABEL_21:
        v46 = MEMORY[0x1E696ABC0];
        error4 = [(WFREPBDialogRequestResponse *)v9 error];
        domain = [error4 domain];
        error5 = [(WFREPBDialogRequestResponse *)v9 error];
        v50 = [v46 errorWithDomain:domain code:objc_msgSend(error5 userInfo:{"code"), v37}];
        error = self->_error;
        self->_error = v50;

        v22 = v55;
        v26 = v56;
        goto LABEL_22;
      }
    }

    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    error6 = [(WFREPBDialogRequestResponse *)v9 error];
    localizedFailureReason2 = [error6 localizedFailureReason];

    if (localizedFailureReason2)
    {
      error7 = [(WFREPBDialogRequestResponse *)v9 error];
      localizedFailureReason3 = [error7 localizedFailureReason];
      [v37 setObject:localizedFailureReason3 forKey:*MEMORY[0x1E696A588]];
    }

    error8 = [(WFREPBDialogRequestResponse *)v9 error];
    localizedDescription2 = [error8 localizedDescription];

    if (localizedDescription2)
    {
      error9 = [(WFREPBDialogRequestResponse *)v9 error];
      localizedDescription3 = [error9 localizedDescription];
      [v37 setObject:localizedDescription3 forKey:*MEMORY[0x1E696A578]];
    }

    goto LABEL_21;
  }

  v31 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v62 = "[WFRemoteExecutionDialogRequestResponse readMessageFromData:error:]";
    v63 = 2114;
    v64 = v12;
    _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_FAULT, "%s Failed to read dialog response protobuf, %{public}@", buf, 0x16u);
  }

  if (error)
  {
    v32 = v12;
    v27 = 0;
    *error = v12;
  }

  else
  {
    v27 = 0;
  }

LABEL_23:

  v52 = *MEMORY[0x1E69E9840];
  return v27;
}

- (WFRemoteExecutionDialogRequestResponse)initWithOriginatingRequestIdentifier:(id)identifier dialogResponse:(id)response error:(id)error
{
  identifierCopy = identifier;
  responseCopy = response;
  errorCopy = error;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionDialogRequestResponse.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"originatingRequestIdentifier"}];
  }

  v18.receiver = self;
  v18.super_class = WFRemoteExecutionDialogRequestResponse;
  v13 = [(WFRemoteExecutionRequest *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_originatingRequestIdentifier, identifier);
    objc_storeStrong(&v14->_dialogResponse, response);
    objc_storeStrong(&v14->_error, error);
    v15 = v14;
  }

  return v14;
}

- (WFRemoteExecutionDialogRequestResponse)initWithData:(id)data error:(id *)error
{
  v5.receiver = self;
  v5.super_class = WFRemoteExecutionDialogRequestResponse;
  return [(WFRemoteExecutionRequest *)&v5 initWithData:data error:error];
}

@end