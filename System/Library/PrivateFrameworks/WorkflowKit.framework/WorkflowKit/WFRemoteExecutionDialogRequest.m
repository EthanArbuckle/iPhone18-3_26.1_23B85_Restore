@interface WFRemoteExecutionDialogRequest
- (BOOL)readMessageFromData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionDialogRequest)initWithData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionDialogRequest)initWithDialogRequest:(id)a3 runRequestIdentifier:(id)a4;
- (id)writeMessageToWriter:(id)a3 error:(id *)a4;
@end

@implementation WFRemoteExecutionDialogRequest

- (id)writeMessageToWriter:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(WFREPBDialogRequest);
  v8 = MEMORY[0x1E696ACC8];
  v9 = [(WFRemoteExecutionDialogRequest *)self dialogRequest];
  v18 = 0;
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v18];
  v11 = v18;

  if (v10)
  {
    [(WFREPBDialogRequest *)v7 setDialogRequestData:v10];
    v12 = [(WFRemoteExecutionDialogRequest *)self runRequestIdentifier];
    [(WFREPBDialogRequest *)v7 setRunRequestIdentifier:v12];

    [(WFREPBDialogRequest *)v7 writeTo:v6];
    v13 = [v6 immutableData];
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

    if (a4)
    {
      v15 = v11;
      v13 = 0;
      *a4 = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)readMessageFromData:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  v7 = a3;
  v8 = [[v6 alloc] initWithData:v7];

  v9 = objc_alloc_init(WFREPBDialogRequest);
  v37 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v37];
  v11 = v37;
  if (v10)
  {
    v34 = a4;
    v35 = v8;
    v12 = [(WFREPBDialogRequest *)v9 runRequestIdentifier];
    runRequestIdentifier = self->_runRequestIdentifier;
    self->_runRequestIdentifier = v12;

    v14 = [(WFREPBDialogRequest *)v9 dialogRequestData];
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
    v23 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v22 fromData:v14 error:&v36];
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

      if (v34)
      {
        v29 = v24;
        *v34 = v24;
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

    if (a4)
    {
      v31 = v11;
      v27 = 0;
      *a4 = v11;
    }

    else
    {
      v27 = 0;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v27;
}

- (WFRemoteExecutionDialogRequest)initWithDialogRequest:(id)a3 runRequestIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionDialogRequest.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"dialogRequest"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionDialogRequest.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"runRequestIdentifier"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFRemoteExecutionDialogRequest;
  v10 = [(WFRemoteExecutionRequest *)&v17 init];
  if (v10)
  {
    v11 = [v7 requestByCompactingRequest];
    dialogRequest = v10->_dialogRequest;
    v10->_dialogRequest = v11;

    objc_storeStrong(&v10->_runRequestIdentifier, a4);
    v13 = v10;
  }

  return v10;
}

- (WFRemoteExecutionDialogRequest)initWithData:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = WFRemoteExecutionDialogRequest;
  return [(WFRemoteExecutionRequest *)&v5 initWithData:a3 error:a4];
}

@end