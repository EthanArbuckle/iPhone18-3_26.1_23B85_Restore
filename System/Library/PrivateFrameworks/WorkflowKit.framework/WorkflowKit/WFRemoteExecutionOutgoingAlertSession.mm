@interface WFRemoteExecutionOutgoingAlertSession
- (WFRemoteExecutionOutgoingAlertSession)initWithService:(id)service request:(id)request completion:(id)completion;
- (void)finishWithError:(id)error;
- (void)handleIncomingProtobuf:(id)protobuf;
- (void)handleTimeout;
- (void)sendToDestinations:(id)destinations options:(id)options;
@end

@implementation WFRemoteExecutionOutgoingAlertSession

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completion = [(WFRemoteExecutionOutgoingAlertSession *)self completion];

  if (completion)
  {
    completion2 = [(WFRemoteExecutionOutgoingAlertSession *)self completion];
    (completion2)[2](completion2, 0, errorCopy);
  }

  v7.receiver = self;
  v7.super_class = WFRemoteExecutionOutgoingAlertSession;
  [(WFRemoteExecutionSession *)&v7 finish];
}

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:104];
  sessionTimedOutError = [(WFRemoteExecutionSession *)self sessionTimedOutError];
  [(WFRemoteExecutionOutgoingAlertSession *)self finishWithError:sessionTimedOutError];
}

- (void)handleIncomingProtobuf:(id)protobuf
{
  v34 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  [(WFRemoteExecutionSession *)self setState:102];
  v5 = objc_alloc(MEMORY[0x1E69C65B8]);
  data = [protobufCopy data];

  v7 = [v5 initWithData:data];
  v8 = objc_alloc_init(WFRemoteExecutionAlertRequestResponse);
  v27 = 0;
  v9 = [(WFRemoteExecutionRequest *)v8 readFrom:v7 error:&v27];
  v10 = v27;
  if (v9)
  {
    requestIdentifier = [(WFRemoteExecutionAlertRequestResponse *)v8 requestIdentifier];
    request = [(WFRemoteExecutionSession *)self request];
    identifier = [request identifier];
    v14 = [requestIdentifier isEqualToString:identifier];

    if (v14)
    {
      v15 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        identifier2 = [(WFRemoteExecutionRequest *)v8 identifier];
        requestIdentifier2 = [(WFRemoteExecutionAlertRequestResponse *)v8 requestIdentifier];
        *buf = 136315650;
        v29 = "[WFRemoteExecutionOutgoingAlertSession handleIncomingProtobuf:]";
        v30 = 2114;
        v31 = identifier2;
        v32 = 2114;
        v33 = requestIdentifier2;
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s <%{public}@> Received response for alert: %{public}@", buf, 0x20u);
      }

      completion = [(WFRemoteExecutionOutgoingAlertSession *)self completion];
      selectedButton = [(WFRemoteExecutionAlertRequestResponse *)v8 selectedButton];
      error = [(WFRemoteExecutionAlertRequestResponse *)v8 error];
      (completion)[2](completion, selectedButton, error);

      v26.receiver = self;
      v26.super_class = WFRemoteExecutionOutgoingAlertSession;
      [(WFRemoteExecutionSession *)&v26 finish];
    }

    else
    {
      [(WFRemoteExecutionSession *)self setState:-420];
    }
  }

  else
  {
    v21 = [WFRemoteExecutionRequest isUnsupportedVersionError:v10];
    v22 = getWFRemoteExecutionLogObject();
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v29 = "[WFRemoteExecutionOutgoingAlertSession handleIncomingProtobuf:]";
        _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s Encountered unsupported version of alert request response", buf, 0xCu);
      }

      v24 = 2;
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v29 = "[WFRemoteExecutionOutgoingAlertSession handleIncomingProtobuf:]";
        v30 = 2114;
        v31 = v10;
        _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_FAULT, "%s failed to read response protobuf: %{public}@", buf, 0x16u);
      }

      v24 = 1;
    }

    [(WFRemoteExecutionSession *)self setState:v24];
    [(WFRemoteExecutionOutgoingAlertSession *)self finishWithError:v10];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)sendToDestinations:(id)destinations options:(id)options
{
  v39 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  optionsCopy = options;
  v32.receiver = self;
  v32.super_class = WFRemoteExecutionOutgoingAlertSession;
  [(WFRemoteExecutionSession *)&v32 sendToDestinations:destinationsCopy options:optionsCopy];
  [(WFRemoteExecutionSession *)self setState:100];
  v8 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    request = [(WFRemoteExecutionSession *)self request];
    identifier = [request identifier];
    *buf = 136315394;
    v34 = "[WFRemoteExecutionOutgoingAlertSession sendToDestinations:options:]";
    v35 = 2114;
    v36 = identifier;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s <%{public}@> Sending alert", buf, 0x16u);
  }

  v11 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  request2 = [(WFRemoteExecutionSession *)self request];
  v31 = 0;
  v13 = [request2 writeTo:v11 error:&v31];
  v14 = v31;

  if (v13)
  {
    v15 = objc_alloc(MEMORY[0x1E69A5388]);
    immutableData = [v11 immutableData];
    v17 = [v15 initWithProtobufData:immutableData type:3 isResponse:0];

    [(WFRemoteExecutionSession *)self restartTimeout];
    service = [(WFRemoteExecutionSession *)self service];
    v29 = 0;
    v30 = 0;
    v19 = [service sendProtobuf:v17 toDestinations:destinationsCopy priority:300 options:optionsCopy identifier:&v30 error:&v29];
    v20 = v30;
    v21 = v29;

    if (v19)
    {
      [(WFRemoteExecutionSession *)self setIdsIdentifier:v20];
      [(WFRemoteExecutionSession *)self setState:101];
    }

    else
    {
      v25 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        request3 = [(WFRemoteExecutionSession *)self request];
        identifier2 = [request3 identifier];
        *buf = 136315650;
        v34 = "[WFRemoteExecutionOutgoingAlertSession sendToDestinations:options:]";
        v35 = 2114;
        v36 = identifier2;
        v37 = 2114;
        v38 = v21;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
      }

      [(WFRemoteExecutionSession *)self setState:1];
      [(WFRemoteExecutionOutgoingAlertSession *)self finishWithError:v21];
    }
  }

  else
  {
    v22 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      request4 = [(WFRemoteExecutionSession *)self request];
      identifier3 = [request4 identifier];
      *buf = 136315650;
      v34 = "[WFRemoteExecutionOutgoingAlertSession sendToDestinations:options:]";
      v35 = 2114;
      v36 = identifier3;
      v37 = 2114;
      v38 = v14;
      _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionOutgoingAlertSession *)self finishWithError:v14];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExecutionOutgoingAlertSession)initWithService:(id)service request:(id)request completion:(id)completion
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAlertSession.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAlertSession.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"service"}];

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
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAlertSession.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = WFRemoteExecutionOutgoingAlertSession;
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