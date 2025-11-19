@interface WFRemoteExecutionAceCommandRequestResponse
- (BOOL)readMessageFromData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionAceCommandRequestResponse)initWithData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionAceCommandRequestResponse)initWithOriginatingRequestIdentifier:(id)a3 aceCommandResponseDictionary:(id)a4 error:(id)a5;
- (id)writeMessageToWriter:(id)a3 error:(id *)a4;
@end

@implementation WFRemoteExecutionAceCommandRequestResponse

- (id)writeMessageToWriter:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(WFREPBAceCommandRequestResponse);
  v8 = [(WFRemoteExecutionAceCommandRequestResponse *)self originatingRequestIdentifier];
  [(WFREPBAceCommandRequestResponse *)v7 setOriginatingRequestIdentifier:v8];

  v9 = MEMORY[0x1E696ACC8];
  v10 = [(WFRemoteExecutionAceCommandRequestResponse *)self aceCommandResponseDictionary];
  v29 = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v29];
  v12 = v29;

  if ([v11 length])
  {
    [(WFREPBAceCommandRequestResponse *)v7 setAceCommandResponseData:v11];
    v13 = [(WFRemoteExecutionAceCommandRequestResponse *)self error];

    if (v13)
    {
      v14 = objc_alloc_init(WFREPBError);
      v15 = [(WFRemoteExecutionAceCommandRequestResponse *)self error];
      v16 = [v15 domain];
      [(WFREPBError *)v14 setDomain:v16];

      v17 = [(WFRemoteExecutionAceCommandRequestResponse *)self error];
      -[WFREPBError setCode:](v14, "setCode:", [v17 code]);

      v18 = [(WFRemoteExecutionAceCommandRequestResponse *)self error];
      v19 = [v18 userInfo];
      v20 = [v19 objectForKey:*MEMORY[0x1E696A578]];
      [(WFREPBError *)v14 setLocalizedDescription:v20];

      v21 = [(WFRemoteExecutionAceCommandRequestResponse *)self error];
      v22 = [v21 userInfo];
      v23 = [v22 objectForKey:*MEMORY[0x1E696A588]];
      [(WFREPBError *)v14 setLocalizedFailureReason:v23];

      [(WFREPBAceCommandRequestResponse *)v7 setError:v14];
    }

    [(WFREPBAceCommandRequestResponse *)v7 writeTo:v6];
    v24 = [v6 immutableData];
  }

  else
  {
    v25 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v31 = "[WFRemoteExecutionAceCommandRequestResponse writeMessageToWriter:error:]";
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s Unable to write ace command response dictionary as data: %{public}@", buf, 0x16u);
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
  v58 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  v7 = a3;
  v8 = [[v6 alloc] initWithData:v7];

  v9 = objc_alloc_init(WFREPBAceCommandRequestResponse);
  v53 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v53];
  v11 = v53;
  if (v10)
  {
    v12 = [(WFREPBAceCommandRequestResponse *)v9 originatingRequestIdentifier];
    originatingRequestIdentifier = self->_originatingRequestIdentifier;
    self->_originatingRequestIdentifier = v12;

    v14 = [(WFREPBAceCommandRequestResponse *)v9 aceCommandResponseData];
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
    v52 = 0;
    v19 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v18 fromData:v14 error:&v52];
    v20 = v52;
    v21 = v19 != 0;
    if (!v19)
    {
      v27 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v55 = "[WFRemoteExecutionAceCommandRequestResponse readMessageFromData:error:]";
        v56 = 2114;
        v57 = v20;
        _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_FAULT, "%s Unable to unarchive ace command response dictionary from protobuf: %{public}@", buf, 0x16u);
      }

      if (a4)
      {
        v28 = v20;
        *a4 = v20;
      }

      goto LABEL_22;
    }

    objc_storeStrong(&self->_aceCommandResponseDictionary, v19);
    v22 = [(WFREPBAceCommandRequestResponse *)v9 error];

    if (!v22)
    {
LABEL_22:

      goto LABEL_23;
    }

    v49 = v20;
    v51 = v14;
    v23 = [(WFREPBAceCommandRequestResponse *)v9 error];
    v24 = [v23 localizedFailureReason];
    v50 = v18;
    if (v24)
    {
    }

    else
    {
      v29 = [(WFREPBAceCommandRequestResponse *)v9 error];
      v30 = [v29 localizedDescription];

      if (!v30)
      {
        v40 = 0;
LABEL_21:
        v41 = MEMORY[0x1E696ABC0];
        v42 = [(WFREPBAceCommandRequestResponse *)v9 error];
        v43 = [v42 domain];
        v44 = [(WFREPBAceCommandRequestResponse *)v9 error];
        v45 = [v41 errorWithDomain:v43 code:objc_msgSend(v44 userInfo:{"code"), v40}];
        error = self->_error;
        self->_error = v45;

        v18 = v50;
        v14 = v51;
        v20 = v49;
        v21 = v19 != 0;
        goto LABEL_22;
      }
    }

    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v32 = [(WFREPBAceCommandRequestResponse *)v9 error];
    v33 = [v32 localizedFailureReason];

    if (v33)
    {
      v34 = [(WFREPBAceCommandRequestResponse *)v9 error];
      v35 = [v34 localizedFailureReason];
      [v31 setObject:v35 forKey:*MEMORY[0x1E696A588]];
    }

    v36 = [(WFREPBAceCommandRequestResponse *)v9 error];
    v37 = [v36 localizedDescription];

    if (v37)
    {
      v38 = [(WFREPBAceCommandRequestResponse *)v9 error];
      v39 = [v38 localizedDescription];
      [v31 setObject:v39 forKey:*MEMORY[0x1E696A578]];
    }

    v40 = v31;
    goto LABEL_21;
  }

  v25 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v55 = "[WFRemoteExecutionAceCommandRequestResponse readMessageFromData:error:]";
    v56 = 2114;
    v57 = v11;
    _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s Failed to read ace command request response protobuf, %{public}@", buf, 0x16u);
  }

  if (a4)
  {
    v26 = v11;
    v21 = 0;
    *a4 = v11;
  }

  else
  {
    v21 = 0;
  }

LABEL_23:

  v47 = *MEMORY[0x1E69E9840];
  return v21;
}

- (WFRemoteExecutionAceCommandRequestResponse)initWithOriginatingRequestIdentifier:(id)a3 aceCommandResponseDictionary:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = WFRemoteExecutionAceCommandRequestResponse;
  v12 = [(WFRemoteExecutionRequest *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_originatingRequestIdentifier, a3);
    objc_storeStrong(&v13->_aceCommandResponseDictionary, a4);
    objc_storeStrong(&v13->_error, a5);
    v14 = v13;
  }

  return v13;
}

- (WFRemoteExecutionAceCommandRequestResponse)initWithData:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = WFRemoteExecutionAceCommandRequestResponse;
  return [(WFRemoteExecutionRequest *)&v5 initWithData:a3 error:a4];
}

@end