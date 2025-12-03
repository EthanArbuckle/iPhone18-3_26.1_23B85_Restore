@interface WFRemoteExecutionOutgoingStopSession
- (BOOL)sendToDestinations:(id)destinations options:(id)options error:(id *)error;
- (WFRemoteExecutionOutgoingStopSession)initWithService:(id)service request:(id)request;
@end

@implementation WFRemoteExecutionOutgoingStopSession

- (BOOL)sendToDestinations:(id)destinations options:(id)options error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  optionsCopy = options;
  if (!destinationsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingStopSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];
  }

  [(WFRemoteExecutionSession *)self setState:100];
  v11 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  request = [(WFRemoteExecutionSession *)self request];
  v37 = 0;
  v13 = [request writeTo:v11 error:&v37];
  v14 = v37;

  if (v13)
  {
    errorCopy = error;
    v15 = objc_alloc(MEMORY[0x1E69A5388]);
    immutableData = [v11 immutableData];
    v17 = [v15 initWithProtobufData:immutableData type:7 isResponse:0];

    v18 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      request2 = [(WFRemoteExecutionSession *)self request];
      identifier = [request2 identifier];
      *buf = 136315394;
      v39 = "[WFRemoteExecutionOutgoingStopSession sendToDestinations:options:error:]";
      v40 = 2114;
      selfCopy = identifier;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, "%s <%{public}@> sending stop request", buf, 0x16u);
    }

    service = [(WFRemoteExecutionSession *)self service];
    v35 = 0;
    v36 = 0;
    v22 = [service sendProtobuf:v17 toDestinations:destinationsCopy priority:300 options:optionsCopy identifier:&v36 error:&v35];
    v23 = v36;
    v24 = v35;

    if (v22)
    {
      [(WFRemoteExecutionSession *)self setIdsIdentifier:v23];
      [(WFRemoteExecutionSession *)self setState:103];
    }

    else
    {
      v29 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v39 = "[WFRemoteExecutionOutgoingStopSession sendToDestinations:options:error:]";
        v40 = 2114;
        selfCopy = self;
        v42 = 2114;
        v43 = v24;
        _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_ERROR, "%s %{public}@ failed to send with error: %{public}@", buf, 0x20u);
      }

      [(WFRemoteExecutionSession *)self setState:1];
      if (errorCopy)
      {
        v30 = v14;
        *errorCopy = v14;
      }
    }

    [(WFRemoteExecutionSession *)self finish];
  }

  else
  {
    v25 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      request3 = [(WFRemoteExecutionSession *)self request];
      identifier2 = [request3 identifier];
      *buf = 136315650;
      v39 = "[WFRemoteExecutionOutgoingStopSession sendToDestinations:options:error:]";
      v40 = 2114;
      selfCopy = identifier2;
      v42 = 2114;
      v43 = v14;
      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    if (error)
    {
      v28 = v14;
      *error = v14;
    }

    [(WFRemoteExecutionSession *)self finish];
    v22 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v22;
}

- (WFRemoteExecutionOutgoingStopSession)initWithService:(id)service request:(id)request
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = WFRemoteExecutionOutgoingStopSession;
  v7 = [(WFRemoteExecutionSession *)&v11 initWithService:service];
  v8 = v7;
  if (v7)
  {
    [(WFRemoteExecutionSession *)v7 setRequest:requestCopy];
    v9 = v8;
  }

  return v8;
}

@end