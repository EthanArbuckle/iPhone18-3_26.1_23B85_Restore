@interface WFRemoteExecutionOutgoingDialogRequestSession
- (WFRemoteExecutionOutgoingDialogRequestSession)initWithService:(id)service request:(id)request completion:(id)completion;
- (void)finishWithError:(id)error;
- (void)handleIncomingProtobuf:(id)protobuf;
- (void)handleTimeout;
- (void)sendToDestinations:(id)destinations options:(id)options;
@end

@implementation WFRemoteExecutionOutgoingDialogRequestSession

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completion = [(WFRemoteExecutionOutgoingDialogRequestSession *)self completion];

  if (completion)
  {
    completion2 = [(WFRemoteExecutionOutgoingDialogRequestSession *)self completion];
    (completion2)[2](completion2, 0, errorCopy);

    [(WFRemoteExecutionOutgoingDialogRequestSession *)self setCompletion:0];
  }

  v7.receiver = self;
  v7.super_class = WFRemoteExecutionOutgoingDialogRequestSession;
  [(WFRemoteExecutionSession *)&v7 finish];
}

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:104];

  [(WFRemoteExecutionOutgoingDialogRequestSession *)self finish];
}

- (void)handleIncomingProtobuf:(id)protobuf
{
  v27 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  [(WFRemoteExecutionSession *)self setState:102];
  v5 = [WFRemoteExecutionDialogRequestResponse alloc];
  data = [protobufCopy data];

  v22 = 0;
  v7 = [(WFRemoteExecutionDialogRequestResponse *)v5 initWithData:data error:&v22];
  v8 = v22;

  if (v7)
  {
    originatingRequestIdentifier = [(WFRemoteExecutionDialogRequestResponse *)v7 originatingRequestIdentifier];
    request = [(WFRemoteExecutionSession *)self request];
    identifier = [request identifier];
    v12 = [originatingRequestIdentifier isEqualToString:identifier];

    if (v12)
    {
      completion = [(WFRemoteExecutionOutgoingDialogRequestSession *)self completion];
      error = [(WFRemoteExecutionDialogRequestResponse *)v7 error];
      (completion)[2](completion, v7, error);

      [(WFRemoteExecutionOutgoingDialogRequestSession *)self setCompletion:0];
      [(WFRemoteExecutionOutgoingDialogRequestSession *)self finish];
      v15 = 103;
    }

    else
    {
      v15 = -420;
    }

    [(WFRemoteExecutionSession *)self setState:v15];
  }

  else
  {
    v16 = [WFRemoteExecutionRequest isUnsupportedVersionError:v8];
    v17 = getWFRemoteExecutionLogObject();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "[WFRemoteExecutionOutgoingDialogRequestSession handleIncomingProtobuf:]";
        _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s Encountered unsupported version of dialog request response", buf, 0xCu);
      }

      v19 = 2;
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v24 = "[WFRemoteExecutionOutgoingDialogRequestSession handleIncomingProtobuf:]";
        v25 = 2114;
        v26 = v8;
        _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_FAULT, "%s Failed to read dialog response: %{public}@", buf, 0x16u);
      }

      v19 = 1;
    }

    [(WFRemoteExecutionSession *)self setState:v19];
    completion2 = [(WFRemoteExecutionOutgoingDialogRequestSession *)self completion];
    (completion2)[2](completion2, 0, v8);

    [(WFRemoteExecutionOutgoingDialogRequestSession *)self setCompletion:0];
    [(WFRemoteExecutionOutgoingDialogRequestSession *)self finishWithError:v8];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)sendToDestinations:(id)destinations options:(id)options
{
  v37 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  optionsCopy = options;
  v30.receiver = self;
  v30.super_class = WFRemoteExecutionOutgoingDialogRequestSession;
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
    v14 = [v12 initWithProtobufData:immutableData type:10 isResponse:0];

    v15 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      request2 = [(WFRemoteExecutionSession *)self request];
      identifier = [request2 identifier];
      *buf = 136315394;
      v32 = "[WFRemoteExecutionOutgoingDialogRequestSession sendToDestinations:options:]";
      v33 = 2114;
      selfCopy = identifier;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s <%{public}@> sending dialog request", buf, 0x16u);
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
        v32 = "[WFRemoteExecutionOutgoingDialogRequestSession sendToDestinations:options:]";
        v33 = 2114;
        selfCopy = self;
        v35 = 2114;
        v36 = v21;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_ERROR, "%s %{public}@ failed to send with error: %{public}@", buf, 0x20u);
      }

      [(WFRemoteExecutionOutgoingDialogRequestSession *)self finishWithError:v21];
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
      v32 = "[WFRemoteExecutionOutgoingDialogRequestSession sendToDestinations:options:]";
      v33 = 2114;
      selfCopy = identifier2;
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionOutgoingDialogRequestSession *)self finishWithError:v11];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExecutionOutgoingDialogRequestSession)initWithService:(id)service request:(id)request completion:(id)completion
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingDialogRequestSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingDialogRequestSession.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"service"}];

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
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingDialogRequestSession.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = WFRemoteExecutionOutgoingDialogRequestSession;
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