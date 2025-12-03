@interface WFRemoteExecutionAceCommandRequestResponse
- (BOOL)readMessageFromData:(id)data error:(id *)error;
- (WFRemoteExecutionAceCommandRequestResponse)initWithData:(id)data error:(id *)error;
- (WFRemoteExecutionAceCommandRequestResponse)initWithOriginatingRequestIdentifier:(id)identifier aceCommandResponseDictionary:(id)dictionary error:(id)error;
- (id)writeMessageToWriter:(id)writer error:(id *)error;
@end

@implementation WFRemoteExecutionAceCommandRequestResponse

- (id)writeMessageToWriter:(id)writer error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  writerCopy = writer;
  v7 = objc_alloc_init(WFREPBAceCommandRequestResponse);
  originatingRequestIdentifier = [(WFRemoteExecutionAceCommandRequestResponse *)self originatingRequestIdentifier];
  [(WFREPBAceCommandRequestResponse *)v7 setOriginatingRequestIdentifier:originatingRequestIdentifier];

  v9 = MEMORY[0x1E696ACC8];
  aceCommandResponseDictionary = [(WFRemoteExecutionAceCommandRequestResponse *)self aceCommandResponseDictionary];
  v29 = 0;
  v11 = [v9 archivedDataWithRootObject:aceCommandResponseDictionary requiringSecureCoding:1 error:&v29];
  v12 = v29;

  if ([v11 length])
  {
    [(WFREPBAceCommandRequestResponse *)v7 setAceCommandResponseData:v11];
    error = [(WFRemoteExecutionAceCommandRequestResponse *)self error];

    if (error)
    {
      v14 = objc_alloc_init(WFREPBError);
      error2 = [(WFRemoteExecutionAceCommandRequestResponse *)self error];
      domain = [error2 domain];
      [(WFREPBError *)v14 setDomain:domain];

      error3 = [(WFRemoteExecutionAceCommandRequestResponse *)self error];
      -[WFREPBError setCode:](v14, "setCode:", [error3 code]);

      error4 = [(WFRemoteExecutionAceCommandRequestResponse *)self error];
      userInfo = [error4 userInfo];
      v20 = [userInfo objectForKey:*MEMORY[0x1E696A578]];
      [(WFREPBError *)v14 setLocalizedDescription:v20];

      error5 = [(WFRemoteExecutionAceCommandRequestResponse *)self error];
      userInfo2 = [error5 userInfo];
      v23 = [userInfo2 objectForKey:*MEMORY[0x1E696A588]];
      [(WFREPBError *)v14 setLocalizedFailureReason:v23];

      [(WFREPBAceCommandRequestResponse *)v7 setError:v14];
    }

    [(WFREPBAceCommandRequestResponse *)v7 writeTo:writerCopy];
    immutableData = [writerCopy immutableData];
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
  v58 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  dataCopy = data;
  v8 = [[v6 alloc] initWithData:dataCopy];

  v9 = objc_alloc_init(WFREPBAceCommandRequestResponse);
  v53 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v53];
  v11 = v53;
  if (v10)
  {
    originatingRequestIdentifier = [(WFREPBAceCommandRequestResponse *)v9 originatingRequestIdentifier];
    originatingRequestIdentifier = self->_originatingRequestIdentifier;
    self->_originatingRequestIdentifier = originatingRequestIdentifier;

    aceCommandResponseData = [(WFREPBAceCommandRequestResponse *)v9 aceCommandResponseData];
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
    v52 = 0;
    v19 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v18 fromData:aceCommandResponseData error:&v52];
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

      if (error)
      {
        v28 = v20;
        *error = v20;
      }

      goto LABEL_22;
    }

    objc_storeStrong(&self->_aceCommandResponseDictionary, v19);
    error = [(WFREPBAceCommandRequestResponse *)v9 error];

    if (!error)
    {
LABEL_22:

      goto LABEL_23;
    }

    v49 = v20;
    v51 = aceCommandResponseData;
    error2 = [(WFREPBAceCommandRequestResponse *)v9 error];
    localizedFailureReason = [error2 localizedFailureReason];
    v50 = v18;
    if (localizedFailureReason)
    {
    }

    else
    {
      error3 = [(WFREPBAceCommandRequestResponse *)v9 error];
      localizedDescription = [error3 localizedDescription];

      if (!localizedDescription)
      {
        v40 = 0;
LABEL_21:
        v41 = MEMORY[0x1E696ABC0];
        error4 = [(WFREPBAceCommandRequestResponse *)v9 error];
        domain = [error4 domain];
        error5 = [(WFREPBAceCommandRequestResponse *)v9 error];
        v45 = [v41 errorWithDomain:domain code:objc_msgSend(error5 userInfo:{"code"), v40}];
        error = self->_error;
        self->_error = v45;

        v18 = v50;
        aceCommandResponseData = v51;
        v20 = v49;
        v21 = v19 != 0;
        goto LABEL_22;
      }
    }

    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    error6 = [(WFREPBAceCommandRequestResponse *)v9 error];
    localizedFailureReason2 = [error6 localizedFailureReason];

    if (localizedFailureReason2)
    {
      error7 = [(WFREPBAceCommandRequestResponse *)v9 error];
      localizedFailureReason3 = [error7 localizedFailureReason];
      [v31 setObject:localizedFailureReason3 forKey:*MEMORY[0x1E696A588]];
    }

    error8 = [(WFREPBAceCommandRequestResponse *)v9 error];
    localizedDescription2 = [error8 localizedDescription];

    if (localizedDescription2)
    {
      error9 = [(WFREPBAceCommandRequestResponse *)v9 error];
      localizedDescription3 = [error9 localizedDescription];
      [v31 setObject:localizedDescription3 forKey:*MEMORY[0x1E696A578]];
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

  if (error)
  {
    v26 = v11;
    v21 = 0;
    *error = v11;
  }

  else
  {
    v21 = 0;
  }

LABEL_23:

  v47 = *MEMORY[0x1E69E9840];
  return v21;
}

- (WFRemoteExecutionAceCommandRequestResponse)initWithOriginatingRequestIdentifier:(id)identifier aceCommandResponseDictionary:(id)dictionary error:(id)error
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  errorCopy = error;
  v16.receiver = self;
  v16.super_class = WFRemoteExecutionAceCommandRequestResponse;
  v12 = [(WFRemoteExecutionRequest *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_originatingRequestIdentifier, identifier);
    objc_storeStrong(&v13->_aceCommandResponseDictionary, dictionary);
    objc_storeStrong(&v13->_error, error);
    v14 = v13;
  }

  return v13;
}

- (WFRemoteExecutionAceCommandRequestResponse)initWithData:(id)data error:(id *)error
{
  v5.receiver = self;
  v5.super_class = WFRemoteExecutionAceCommandRequestResponse;
  return [(WFRemoteExecutionRequest *)&v5 initWithData:data error:error];
}

@end