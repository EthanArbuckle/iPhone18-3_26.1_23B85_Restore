@interface WFRemoteExecutionStopRequest
- (BOOL)readMessageFromData:(id)data error:(id *)error;
- (WFRemoteExecutionStopRequest)initWithRequestIdentifier:(id)identifier;
- (id)writeMessageToWriter:(id)writer error:(id *)error;
@end

@implementation WFRemoteExecutionStopRequest

- (id)writeMessageToWriter:(id)writer error:(id *)error
{
  writerCopy = writer;
  v6 = objc_alloc_init(WFREPBStopRequest);
  requestIdentifier = [(WFRemoteExecutionStopRequest *)self requestIdentifier];
  [(WFREPBStopRequest *)v6 setRequestIdentifier:requestIdentifier];

  [(WFREPBStopRequest *)v6 writeTo:writerCopy];
  immutableData = [writerCopy immutableData];

  return immutableData;
}

- (BOOL)readMessageFromData:(id)data error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  dataCopy = data;
  v8 = [[v6 alloc] initWithData:dataCopy];

  v9 = objc_alloc_init(WFREPBStopRequest);
  v18 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v18];
  v11 = v18;
  if (v10)
  {
    requestIdentifier = [(WFREPBStopRequest *)v9 requestIdentifier];
    requestIdentifier = self->_requestIdentifier;
    self->_requestIdentifier = requestIdentifier;
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

    if (error)
    {
      v15 = v11;
      *error = v11;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (WFRemoteExecutionStopRequest)initWithRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionStopRequest.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"requestIdentifier"}];
  }

  v7 = [(WFRemoteExecutionRequest *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_requestIdentifier, identifier);
    v9 = v8;
  }

  return v8;
}

@end