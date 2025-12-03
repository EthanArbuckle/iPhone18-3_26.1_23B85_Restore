@interface WFRemoteExecutionOutgoingAceCommandSession
- (WFRemoteExecutionOutgoingAceCommandSession)initWithService:(id)service request:(id)request completion:(id)completion;
- (void)finishWithError:(id)error;
- (void)handleIncomingProtobuf:(id)protobuf;
- (void)sendToDestinations:(id)destinations options:(id)options;
@end

@implementation WFRemoteExecutionOutgoingAceCommandSession

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completion = [(WFRemoteExecutionOutgoingAceCommandSession *)self completion];

  if (completion)
  {
    completion2 = [(WFRemoteExecutionOutgoingAceCommandSession *)self completion];
    (completion2)[2](completion2, 0, errorCopy);

    [(WFRemoteExecutionOutgoingAceCommandSession *)self setCompletion:0];
  }

  v7.receiver = self;
  v7.super_class = WFRemoteExecutionOutgoingAceCommandSession;
  [(WFRemoteExecutionSession *)&v7 finish];
}

- (void)handleIncomingProtobuf:(id)protobuf
{
  v27 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  [(WFRemoteExecutionSession *)self setState:102];
  v5 = [WFRemoteExecutionAceCommandRequestResponse alloc];
  data = [protobufCopy data];

  v22 = 0;
  v7 = [(WFRemoteExecutionAceCommandRequestResponse *)v5 initWithData:data error:&v22];
  v8 = v22;

  if (v7)
  {
    originatingRequestIdentifier = [(WFRemoteExecutionAceCommandRequestResponse *)v7 originatingRequestIdentifier];
    request = [(WFRemoteExecutionSession *)self request];
    identifier = [request identifier];
    v12 = [originatingRequestIdentifier isEqualToString:identifier];

    if (v12)
    {
      completion = [(WFRemoteExecutionOutgoingAceCommandSession *)self completion];
      aceCommandResponseDictionary = [(WFRemoteExecutionAceCommandRequestResponse *)v7 aceCommandResponseDictionary];
      error = [(WFRemoteExecutionAceCommandRequestResponse *)v7 error];
      (completion)[2](completion, aceCommandResponseDictionary, error);

      [(WFRemoteExecutionOutgoingAceCommandSession *)self setCompletion:0];
      [(WFRemoteExecutionOutgoingAceCommandSession *)self finish];
      v16 = 103;
    }

    else
    {
      v16 = -420;
    }

    [(WFRemoteExecutionSession *)self setState:v16];
  }

  else
  {
    v17 = [WFRemoteExecutionRequest isUnsupportedVersionError:v8];
    v18 = getWFRemoteExecutionLogObject();
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "[WFRemoteExecutionOutgoingAceCommandSession handleIncomingProtobuf:]";
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Encountered unsupported version of ace command request response", buf, 0xCu);
      }

      v20 = 2;
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v24 = "[WFRemoteExecutionOutgoingAceCommandSession handleIncomingProtobuf:]";
        v25 = 2114;
        v26 = v8;
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_FAULT, "%s Failed to read ace command response: %{public}@", buf, 0x16u);
      }

      v20 = 1;
    }

    [(WFRemoteExecutionSession *)self setState:v20];
    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionOutgoingAceCommandSession *)self finishWithError:v8];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)sendToDestinations:(id)destinations options:(id)options
{
  v37 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  optionsCopy = options;
  v30.receiver = self;
  v30.super_class = WFRemoteExecutionOutgoingAceCommandSession;
  [(WFRemoteExecutionSession *)&v30 sendToDestinations:destinationsCopy options:optionsCopy];
  [(WFRemoteExecutionSession *)self setState:100];
  v8 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  request = [(WFRemoteExecutionSession *)self request];
  v29 = 0;
  v10 = [request writeTo:v8 error:&v29];
  v11 = v29;

  if (v10)
  {
    v12 = objc_alloc(MEMORY[0x1E69A5388]);
    immutableData = [v8 immutableData];
    v14 = [v12 initWithProtobufData:immutableData type:8 isResponse:0];

    v15 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      request2 = [(WFRemoteExecutionSession *)self request];
      identifier = [request2 identifier];
      *buf = 136315394;
      v32 = "[WFRemoteExecutionOutgoingAceCommandSession sendToDestinations:options:]";
      v33 = 2114;
      selfCopy = identifier;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s <%{public}@> sending ace command", buf, 0x16u);
    }

    service = [(WFRemoteExecutionSession *)self service];
    v27 = 0;
    v28 = 0;
    v19 = [service sendProtobuf:v14 toDestinations:destinationsCopy priority:300 options:optionsCopy identifier:&v28 error:&v27];
    v20 = v28;
    v21 = v27;

    if (v19)
    {
      [(WFRemoteExecutionSession *)self setIdsIdentifier:v20];
      [(WFRemoteExecutionSession *)self setState:101];
    }

    else
    {
      [(WFRemoteExecutionSession *)self setState:1];
      v25 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "[WFRemoteExecutionOutgoingAceCommandSession sendToDestinations:options:]";
        v33 = 2114;
        selfCopy = self;
        v35 = 2114;
        v36 = v21;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_ERROR, "%s %{public}@ failed to send with error: %{public}@", buf, 0x20u);
      }

      [(WFRemoteExecutionOutgoingAceCommandSession *)self finishWithError:v21];
    }
  }

  else
  {
    v22 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      request3 = [(WFRemoteExecutionSession *)self request];
      identifier2 = [request3 identifier];
      *buf = 136315650;
      v32 = "[WFRemoteExecutionOutgoingAceCommandSession sendToDestinations:options:]";
      v33 = 2114;
      selfCopy = identifier2;
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionOutgoingAceCommandSession *)self finishWithError:v11];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExecutionOutgoingAceCommandSession)initWithService:(id)service request:(id)request completion:(id)completion
{
  serviceCopy = service;
  requestCopy = request;
  completionCopy = completion;
  if (serviceCopy)
  {
    if (requestCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAceCommandSession.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAceCommandSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"service"}];

  if (!requestCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAceCommandSession.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = WFRemoteExecutionOutgoingAceCommandSession;
  v12 = [(WFRemoteExecutionSession *)&v21 initWithService:serviceCopy];
  v13 = v12;
  if (v12)
  {
    [(WFRemoteExecutionSession *)v12 setRequest:requestCopy];
    v14 = _Block_copy(completionCopy);
    completion = v13->_completion;
    v13->_completion = v14;

    v16 = v13;
  }

  return v13;
}

@end