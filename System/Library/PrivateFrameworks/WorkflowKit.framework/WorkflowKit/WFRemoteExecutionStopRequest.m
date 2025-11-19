@interface WFRemoteExecutionStopRequest
- (BOOL)readMessageFromData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionStopRequest)initWithRequestIdentifier:(id)a3;
- (id)writeMessageToWriter:(id)a3 error:(id *)a4;
@end

@implementation WFRemoteExecutionStopRequest

- (id)writeMessageToWriter:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(WFREPBStopRequest);
  v7 = [(WFRemoteExecutionStopRequest *)self requestIdentifier];
  [(WFREPBStopRequest *)v6 setRequestIdentifier:v7];

  [(WFREPBStopRequest *)v6 writeTo:v5];
  v8 = [v5 immutableData];

  return v8;
}

- (BOOL)readMessageFromData:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  v7 = a3;
  v8 = [[v6 alloc] initWithData:v7];

  v9 = objc_alloc_init(WFREPBStopRequest);
  v18 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = [(WFREPBStopRequest *)v9 requestIdentifier];
    requestIdentifier = self->_requestIdentifier;
    self->_requestIdentifier = v12;
  }

  else
  {
    v14 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v20 = "[WFRemoteExecutionStopRequest readMessageFromData:error:]";
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Failed to read stop request protobuf, %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v15 = v11;
      *a4 = v11;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (WFRemoteExecutionStopRequest)initWithRequestIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionStopRequest.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"requestIdentifier"}];
  }

  v7 = [(WFRemoteExecutionRequest *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_requestIdentifier, a3);
    v9 = v8;
  }

  return v8;
}

@end