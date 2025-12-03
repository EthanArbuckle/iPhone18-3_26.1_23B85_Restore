@interface WFRemoteExecutionOutgoingAskEachTimeSession
- (WFRemoteExecutionOutgoingAskEachTimeSession)initWithService:(id)service request:(id)request completion:(id)completion;
- (void)finish;
- (void)finishWithError:(id)error;
- (void)finishWithoutCallingCompletion;
- (void)handleIncomingProtobuf:(id)protobuf;
- (void)handleTimeout;
- (void)sendToDestinations:(id)destinations options:(id)options;
@end

@implementation WFRemoteExecutionOutgoingAskEachTimeSession

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completion = [(WFRemoteExecutionOutgoingAskEachTimeSession *)self completion];

  if (completion)
  {
    completion2 = [(WFRemoteExecutionOutgoingAskEachTimeSession *)self completion];
    (completion2)[2](completion2, 1, 0, errorCopy);

    [(WFRemoteExecutionOutgoingAskEachTimeSession *)self setCompletion:0];
  }

  v7.receiver = self;
  v7.super_class = WFRemoteExecutionOutgoingAskEachTimeSession;
  [(WFRemoteExecutionSession *)&v7 finish];
}

- (void)finish
{
  completion = [(WFRemoteExecutionOutgoingAskEachTimeSession *)self completion];

  if (completion)
  {
    completion2 = [(WFRemoteExecutionOutgoingAskEachTimeSession *)self completion];
    completion2[2](completion2, 1, 0, 0);

    [(WFRemoteExecutionOutgoingAskEachTimeSession *)self setCompletion:0];
  }

  v5.receiver = self;
  v5.super_class = WFRemoteExecutionOutgoingAskEachTimeSession;
  [(WFRemoteExecutionSession *)&v5 finish];
}

- (void)finishWithoutCallingCompletion
{
  v2.receiver = self;
  v2.super_class = WFRemoteExecutionOutgoingAskEachTimeSession;
  [(WFRemoteExecutionSession *)&v2 finish];
}

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:104];

  [(WFRemoteExecutionOutgoingAskEachTimeSession *)self finish];
}

- (void)handleIncomingProtobuf:(id)protobuf
{
  v34 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  [(WFRemoteExecutionSession *)self setState:102];
  v5 = [WFRemoteExecutionAskEachTimeRequestResponse alloc];
  data = [protobufCopy data];

  v29 = 0;
  v7 = [(WFRemoteExecutionAskEachTimeRequestResponse *)v5 initWithData:data error:&v29];
  v8 = v29;

  if (v7)
  {
    originatingRequestIdentifier = [(WFRemoteExecutionAskEachTimeRequestResponse *)v7 originatingRequestIdentifier];
    request = [(WFRemoteExecutionSession *)self request];
    identifier = [request identifier];
    v12 = [originatingRequestIdentifier isEqualToString:identifier];

    if (v12)
    {
      [(WFRemoteExecutionSession *)self setState:103];
      v13 = +[WFActionRegistry sharedRegistry];
      request2 = [(WFRemoteExecutionSession *)self request];
      actionIdentifier = [request2 actionIdentifier];
      request3 = [(WFRemoteExecutionSession *)self request];
      actionSerializedParameters = [request3 actionSerializedParameters];
      v18 = [v13 createActionWithIdentifier:actionIdentifier serializedParameters:actionSerializedParameters];

      [(WFRemoteExecutionAskEachTimeRequestResponse *)v7 inflateInputtedStatesWithAction:v18];
      completion = [(WFRemoteExecutionOutgoingAskEachTimeSession *)self completion];
      inputtedStates = [(WFRemoteExecutionAskEachTimeRequestResponse *)v7 inputtedStates];
      error = [(WFRemoteExecutionAskEachTimeRequestResponse *)v7 error];
      (completion)[2](completion, 0, inputtedStates, error);

      [(WFRemoteExecutionOutgoingAskEachTimeSession *)self setCompletion:0];
      [(WFRemoteExecutionOutgoingAskEachTimeSession *)self finishWithoutCallingCompletion];
    }

    else
    {
      [(WFRemoteExecutionSession *)self setState:-420];
    }
  }

  else
  {
    v22 = [WFRemoteExecutionRequest isUnsupportedVersionError:v8];
    v23 = getWFRemoteExecutionLogObject();
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v31 = "[WFRemoteExecutionOutgoingAskEachTimeSession handleIncomingProtobuf:]";
        _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_ERROR, "%s Encountered unsupported version of ask each time request response", buf, 0xCu);
      }

      v25 = 2;
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v31 = "[WFRemoteExecutionOutgoingAskEachTimeSession handleIncomingProtobuf:]";
        v32 = 2114;
        v33 = v8;
        _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s Failed to read ask each time request response: %{public}@", buf, 0x16u);
      }

      v25 = 1;
    }

    [(WFRemoteExecutionSession *)self setState:v25];
    completion2 = [(WFRemoteExecutionOutgoingAskEachTimeSession *)self completion];
    (completion2)[2](completion2, 0, 0, v8);

    [(WFRemoteExecutionOutgoingAskEachTimeSession *)self setCompletion:0];
    v28.receiver = self;
    v28.super_class = WFRemoteExecutionOutgoingAskEachTimeSession;
    [(WFRemoteExecutionSession *)&v28 finish];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)sendToDestinations:(id)destinations options:(id)options
{
  v37 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  optionsCopy = options;
  v30.receiver = self;
  v30.super_class = WFRemoteExecutionOutgoingAskEachTimeSession;
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
    v14 = [v12 initWithProtobufData:immutableData type:5 isResponse:0];

    v15 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      request2 = [(WFRemoteExecutionSession *)self request];
      identifier = [request2 identifier];
      *buf = 136315394;
      v32 = "[WFRemoteExecutionOutgoingAskEachTimeSession sendToDestinations:options:]";
      v33 = 2114;
      selfCopy = identifier;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s <%{public}@> sending ask each time request", buf, 0x16u);
    }

    [(WFRemoteExecutionSession *)self restartTimeout];
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
        v32 = "[WFRemoteExecutionOutgoingAskEachTimeSession sendToDestinations:options:]";
        v33 = 2114;
        selfCopy = self;
        v35 = 2114;
        v36 = v21;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_ERROR, "%s %{public}@ failed to send with error: %{public}@", buf, 0x20u);
      }

      [(WFRemoteExecutionOutgoingAskEachTimeSession *)self finish];
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
      v32 = "[WFRemoteExecutionOutgoingAskEachTimeSession sendToDestinations:options:]";
      v33 = 2114;
      selfCopy = identifier2;
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionOutgoingAskEachTimeSession *)self finish];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExecutionOutgoingAskEachTimeSession)initWithService:(id)service request:(id)request completion:(id)completion
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAskEachTimeSession.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAskEachTimeSession.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"service"}];

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
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAskEachTimeSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = WFRemoteExecutionOutgoingAskEachTimeSession;
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