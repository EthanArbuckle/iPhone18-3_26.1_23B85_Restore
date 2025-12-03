@interface WFRemoteExecutionDialogRequest
- (BOOL)readMessageFromData:(id)data error:(id *)error;
- (WFRemoteExecutionDialogRequest)initWithData:(id)data error:(id *)error;
- (WFRemoteExecutionDialogRequest)initWithDialogRequest:(id)request runRequestIdentifier:(id)identifier;
- (id)writeMessageToWriter:(id)writer error:(id *)error;
@end

@implementation WFRemoteExecutionDialogRequest

- (id)writeMessageToWriter:(id)writer error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  writerCopy = writer;
  v7 = objc_alloc_init(WFREPBDialogRequest);
  v8 = MEMORY[0x1E696ACC8];
  dialogRequest = [(WFRemoteExecutionDialogRequest *)self dialogRequest];
  v18 = 0;
  v10 = [v8 archivedDataWithRootObject:dialogRequest requiringSecureCoding:1 error:&v18];
  v11 = v18;

  if (v10)
  {
    [(WFREPBDialogRequest *)v7 setDialogRequestData:v10];
    runRequestIdentifier = [(WFRemoteExecutionDialogRequest *)self runRequestIdentifier];
    [(WFREPBDialogRequest *)v7 setRunRequestIdentifier:runRequestIdentifier];

    [(WFREPBDialogRequest *)v7 writeTo:writerCopy];
    immutableData = [writerCopy immutableData];
  }

  else
  {
    v14 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v20 = "[WFRemoteExecutionDialogRequest writeMessageToWriter:error:]";
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Unable to archive dialog request: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v15 = v11;
      immutableData = 0;
      *error = v11;
    }

    else
    {
      immutableData = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return immutableData;
}

- (BOOL)readMessageFromData:(id)data error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  dataCopy = data;
  v8 = [[v6 alloc] initWithData:dataCopy];

  v9 = objc_alloc_init(WFREPBDialogRequest);
  v37 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v37];
  v11 = v37;
  if (v10)
  {
    errorCopy = error;
    v35 = v8;
    runRequestIdentifier = [(WFREPBDialogRequest *)v9 runRequestIdentifier];
    runRequestIdentifier = self->_runRequestIdentifier;
    self->_runRequestIdentifier = runRequestIdentifier;

    dialogRequestData = [(WFREPBDialogRequest *)v9 dialogRequestData];
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v15 setWithObjects:{v16, v17, v18, v19, v20, objc_opt_class(), 0}];
    v22 = [v21 mutableCopy];

    [v22 addObject:objc_opt_class()];
    v36 = 0;
    v23 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v22 fromData:dialogRequestData error:&v36];
    v24 = v36;
    dialogRequest = self->_dialogRequest;
    self->_dialogRequest = v23;

    v26 = self->_dialogRequest;
    v27 = v26 != 0;
    if (!v26)
    {
      v28 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v39 = "[WFRemoteExecutionDialogRequest readMessageFromData:error:]";
        v40 = 2114;
        v41 = v24;
        _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_FAULT, "%s Unable to convert data into dialog request: %{public}@", buf, 0x16u);
      }

      if (errorCopy)
      {
        v29 = v24;
        *errorCopy = v24;
      }
    }

    v8 = v35;
  }

  else
  {
    v30 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v39 = "[WFRemoteExecutionDialogRequest readMessageFromData:error:]";
      v40 = 2114;
      v41 = v11;
      _os_log_impl(&dword_1CA256000, v30, OS_LOG_TYPE_FAULT, "%s Failed to read dialog request protobuf, %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v31 = v11;
      v27 = 0;
      *error = v11;
    }

    else
    {
      v27 = 0;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v27;
}

- (WFRemoteExecutionDialogRequest)initWithDialogRequest:(id)request runRequestIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (requestCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionDialogRequest.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"dialogRequest"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionDialogRequest.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"runRequestIdentifier"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFRemoteExecutionDialogRequest;
  v10 = [(WFRemoteExecutionRequest *)&v17 init];
  if (v10)
  {
    requestByCompactingRequest = [requestCopy requestByCompactingRequest];
    dialogRequest = v10->_dialogRequest;
    v10->_dialogRequest = requestByCompactingRequest;

    objc_storeStrong(&v10->_runRequestIdentifier, identifier);
    v13 = v10;
  }

  return v10;
}

- (WFRemoteExecutionDialogRequest)initWithData:(id)data error:(id *)error
{
  v5.receiver = self;
  v5.super_class = WFRemoteExecutionDialogRequest;
  return [(WFRemoteExecutionRequest *)&v5 initWithData:data error:error];
}

@end