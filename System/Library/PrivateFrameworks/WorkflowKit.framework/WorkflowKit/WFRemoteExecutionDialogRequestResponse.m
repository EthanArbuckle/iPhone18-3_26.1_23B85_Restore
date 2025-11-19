@interface WFRemoteExecutionDialogRequestResponse
- (BOOL)readMessageFromData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionDialogRequestResponse)initWithData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionDialogRequestResponse)initWithOriginatingRequestIdentifier:(id)a3 dialogResponse:(id)a4 error:(id)a5;
- (id)writeMessageToWriter:(id)a3 error:(id *)a4;
@end

@implementation WFRemoteExecutionDialogRequestResponse

- (id)writeMessageToWriter:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(WFREPBDialogRequestResponse);
  v8 = [(WFRemoteExecutionDialogRequestResponse *)self originatingRequestIdentifier];
  [(WFREPBDialogRequestResponse *)v7 setOriginatingRequestIdentifier:v8];

  v9 = MEMORY[0x1E696ACC8];
  v10 = [(WFRemoteExecutionDialogRequestResponse *)self dialogResponse];
  v29 = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v29];
  v12 = v29;

  if ([v11 length])
  {
    [(WFREPBDialogRequestResponse *)v7 setDialogRequestResponseData:v11];
    v13 = [(WFRemoteExecutionDialogRequestResponse *)self error];

    if (v13)
    {
      v14 = objc_alloc_init(WFREPBError);
      v15 = [(WFRemoteExecutionDialogRequestResponse *)self error];
      v16 = [v15 domain];
      [(WFREPBError *)v14 setDomain:v16];

      v17 = [(WFRemoteExecutionDialogRequestResponse *)self error];
      -[WFREPBError setCode:](v14, "setCode:", [v17 code]);

      v18 = [(WFRemoteExecutionDialogRequestResponse *)self error];
      v19 = [v18 userInfo];
      v20 = [v19 objectForKey:*MEMORY[0x1E696A578]];
      [(WFREPBError *)v14 setLocalizedDescription:v20];

      v21 = [(WFRemoteExecutionDialogRequestResponse *)self error];
      v22 = [v21 userInfo];
      v23 = [v22 objectForKey:*MEMORY[0x1E696A588]];
      [(WFREPBError *)v14 setLocalizedFailureReason:v23];

      [(WFREPBDialogRequestResponse *)v7 setError:v14];
    }

    [(WFREPBDialogRequestResponse *)v7 writeTo:v6];
    v24 = [v6 immutableData];
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

    if (a4)
    {
      v26 = v12;
      v24 = 0;
      *a4 = v12;
    }

    else
    {
      v24 = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];

  return v24;
}

- (BOOL)readMessageFromData:(id)a3 error:(id *)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  v7 = a3;
  v8 = [[v6 alloc] initWithData:v7];

  v9 = objc_alloc_init(WFREPBDialogRequestResponse);
  v60 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v60];
  v11 = v60;
  v12 = v11;
  if (v10)
  {
    v57 = v11;
    v58 = v8;
    v13 = [(WFREPBDialogRequestResponse *)v9 originatingRequestIdentifier];
    originatingRequestIdentifier = self->_originatingRequestIdentifier;
    self->_originatingRequestIdentifier = v13;

    v15 = [(WFREPBDialogRequestResponse *)v9 dialogRequestResponseData];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v54 = v20;
    v22 = v15;
    v23 = [v16 setWithObjects:{v17, v18, v19, v54, v21, objc_opt_class(), 0}];
    v24 = [v23 mutableCopy];

    [v24 addObject:objc_opt_class()];
    v59 = 0;
    v25 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v24 fromData:v15 error:&v59];
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

      if (a4)
      {
        v34 = v26;
        *a4 = v26;
      }

      goto LABEL_22;
    }

    objc_storeStrong(&self->_dialogResponse, v25);
    v28 = [(WFREPBDialogRequestResponse *)v9 error];

    if (!v28)
    {
LABEL_22:

      v12 = v57;
      v8 = v58;
      goto LABEL_23;
    }

    v55 = v22;
    v56 = v26;
    v29 = [(WFREPBDialogRequestResponse *)v9 error];
    v30 = [v29 localizedFailureReason];
    if (v30)
    {
    }

    else
    {
      v35 = [(WFREPBDialogRequestResponse *)v9 error];
      v36 = [v35 localizedDescription];

      if (!v36)
      {
        v37 = 0;
LABEL_21:
        v46 = MEMORY[0x1E696ABC0];
        v47 = [(WFREPBDialogRequestResponse *)v9 error];
        v48 = [v47 domain];
        v49 = [(WFREPBDialogRequestResponse *)v9 error];
        v50 = [v46 errorWithDomain:v48 code:objc_msgSend(v49 userInfo:{"code"), v37}];
        error = self->_error;
        self->_error = v50;

        v22 = v55;
        v26 = v56;
        goto LABEL_22;
      }
    }

    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v38 = [(WFREPBDialogRequestResponse *)v9 error];
    v39 = [v38 localizedFailureReason];

    if (v39)
    {
      v40 = [(WFREPBDialogRequestResponse *)v9 error];
      v41 = [v40 localizedFailureReason];
      [v37 setObject:v41 forKey:*MEMORY[0x1E696A588]];
    }

    v42 = [(WFREPBDialogRequestResponse *)v9 error];
    v43 = [v42 localizedDescription];

    if (v43)
    {
      v44 = [(WFREPBDialogRequestResponse *)v9 error];
      v45 = [v44 localizedDescription];
      [v37 setObject:v45 forKey:*MEMORY[0x1E696A578]];
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

  if (a4)
  {
    v32 = v12;
    v27 = 0;
    *a4 = v12;
  }

  else
  {
    v27 = 0;
  }

LABEL_23:

  v52 = *MEMORY[0x1E69E9840];
  return v27;
}

- (WFRemoteExecutionDialogRequestResponse)initWithOriginatingRequestIdentifier:(id)a3 dialogResponse:(id)a4 error:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionDialogRequestResponse.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"originatingRequestIdentifier"}];
  }

  v18.receiver = self;
  v18.super_class = WFRemoteExecutionDialogRequestResponse;
  v13 = [(WFRemoteExecutionRequest *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_originatingRequestIdentifier, a3);
    objc_storeStrong(&v14->_dialogResponse, a4);
    objc_storeStrong(&v14->_error, a5);
    v15 = v14;
  }

  return v14;
}

- (WFRemoteExecutionDialogRequestResponse)initWithData:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = WFRemoteExecutionDialogRequestResponse;
  return [(WFRemoteExecutionRequest *)&v5 initWithData:a3 error:a4];
}

@end