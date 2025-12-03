@interface WFRemoteExecutionOutgoingRunRequestSession
- (WFRemoteExecutionCoordinator)coordinator;
- (WFRemoteExecutionFileCoordinator)fileCoordinator;
- (WFRemoteExecutionOutgoingRunRequestSession)initWithService:(id)service request:(id)request userInterface:(id)interface parameterInputProvider:(id)provider coordinator:(id)coordinator completion:(id)completion;
- (void)finishWithError:(id)error;
- (void)handleIncomingFileForRemoteExecutionWithURL:(id)l withIdentifier:(id)identifier metadata:(id)metadata;
- (void)handleIncomingProtobuf:(id)protobuf;
- (void)handleTimeout;
- (void)sendToDestinations:(id)destinations options:(id)options;
@end

@implementation WFRemoteExecutionOutgoingRunRequestSession

- (WFRemoteExecutionCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

- (WFRemoteExecutionFileCoordinator)fileCoordinator
{
  fileCoordinator = self->_fileCoordinator;
  if (!fileCoordinator)
  {
    v4 = objc_opt_new();
    v5 = self->_fileCoordinator;
    self->_fileCoordinator = v4;

    fileCoordinator = self->_fileCoordinator;
  }

  return fileCoordinator;
}

- (void)finishWithError:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[WFRemoteExecutionOutgoingRunRequestSession finishWithError:]";
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s finishWithError: %@", buf, 0x16u);
  }

  if ([(WFRemoteExecutionSession *)self state]== 101)
  {
    request = [(WFRemoteExecutionSession *)self request];

    if (request)
    {
      v7 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v22 = "[WFRemoteExecutionOutgoingRunRequestSession finishWithError:]";
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s Sending stop...", buf, 0xCu);
      }

      v8 = [WFRemoteExecutionStopRequest alloc];
      request2 = [(WFRemoteExecutionSession *)self request];
      identifier = [request2 identifier];
      v11 = [(WFRemoteExecutionStopRequest *)v8 initWithRequestIdentifier:identifier];

      coordinator = [(WFRemoteExecutionOutgoingRunRequestSession *)self coordinator];
      v20 = 0;
      LOBYTE(identifier) = [coordinator sendStopRequest:v11 error:&v20];
      request = v20;

      if ((identifier & 1) == 0)
      {
        [(WFRemoteExecutionSession *)self setState:1];
        v13 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v22 = "[WFRemoteExecutionOutgoingRunRequestSession finishWithError:]";
          v23 = 2114;
          v24 = request;
          _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s Failed to send stop request: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    request = 0;
  }

  completion = [(WFRemoteExecutionOutgoingRunRequestSession *)self completion];

  if (completion)
  {
    completion2 = [(WFRemoteExecutionOutgoingRunRequestSession *)self completion];
    v16 = completion2;
    if (errorCopy)
    {
      v17 = errorCopy;
    }

    else
    {
      v17 = request;
    }

    (*(completion2 + 16))(completion2, 0, v17);

    [(WFRemoteExecutionOutgoingRunRequestSession *)self setCompletion:0];
  }

  [(WFRemoteExecutionSession *)self setState:103];
  v19.receiver = self;
  v19.super_class = WFRemoteExecutionOutgoingRunRequestSession;
  [(WFRemoteExecutionSession *)&v19 finish];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:104];
  sessionTimedOutError = [(WFRemoteExecutionSession *)self sessionTimedOutError];
  [(WFRemoteExecutionOutgoingRunRequestSession *)self finishWithError:sessionTimedOutError];
}

- (void)handleIncomingFileForRemoteExecutionWithURL:(id)l withIdentifier:(id)identifier metadata:(id)metadata
{
  lCopy = l;
  identifierCopy = identifier;
  v9 = [metadata objectForKey:@"version"];
  if (+[WFRemoteExecutionOutgoingFileSession supportsVersion:](WFRemoteExecutionOutgoingFileSession, "supportsVersion:", [v9 integerValue]))
  {
    fileCoordinator = [(WFRemoteExecutionOutgoingRunRequestSession *)self fileCoordinator];
    [fileCoordinator handleFile:lCopy withIdentifier:identifierCopy];
  }

  else
  {
    [(WFRemoteExecutionSession *)self setState:2];
    fileCoordinator = +[(WFRemoteExecutionRequest *)WFRemoteExecutionRunRequestResponse];
    [(WFRemoteExecutionOutgoingRunRequestSession *)self finishWithError:fileCoordinator];
  }
}

- (void)handleIncomingProtobuf:(id)protobuf
{
  v25 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  [(WFRemoteExecutionSession *)self setState:102];
  v5 = [WFRemoteExecutionRunRequestResponse alloc];
  data = [protobufCopy data];

  v20 = 0;
  v7 = [(WFRemoteExecutionRunRequestResponse *)v5 initWithData:data error:&v20];
  v8 = v20;

  if (v7)
  {
    runRequestIdentifier = [(WFRemoteExecutionRunRequestResponse *)v7 runRequestIdentifier];
    request = [(WFRemoteExecutionSession *)self request];
    identifier = [request identifier];
    v12 = [runRequestIdentifier isEqualToString:identifier];

    if (v12)
    {
      fileCoordinator = [(WFRemoteExecutionOutgoingRunRequestSession *)self fileCoordinator];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __69__WFRemoteExecutionOutgoingRunRequestSession_handleIncomingProtobuf___block_invoke;
      v19[3] = &unk_1E8378958;
      v19[4] = self;
      [(WFRemoteExecutionRunRequestResponse *)v7 inflateWithFileCoordinator:fileCoordinator completion:v19];
    }

    else
    {
      [(WFRemoteExecutionSession *)self setState:-420];
    }
  }

  else
  {
    v14 = [WFRemoteExecutionRequest isUnsupportedVersionError:v8];
    v15 = getWFRemoteExecutionLogObject();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "[WFRemoteExecutionOutgoingRunRequestSession handleIncomingProtobuf:]";
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Encountered unsupported version of run request response", buf, 0xCu);
      }

      v17 = 2;
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v22 = "[WFRemoteExecutionOutgoingRunRequestSession handleIncomingProtobuf:]";
        v23 = 2114;
        v24 = v8;
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_FAULT, "%s Failed to read run request response: %{public}@", buf, 0x16u);
      }

      v17 = 1;
    }

    [(WFRemoteExecutionSession *)self setState:v17];
    [(WFRemoteExecutionOutgoingRunRequestSession *)self finishWithError:v8];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __69__WFRemoteExecutionOutgoingRunRequestSession_handleIncomingProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) setState:103];
  v4 = [*(a1 + 32) completion];

  if (v4)
  {
    v5 = [*(a1 + 32) completion];
    v6 = [v3 error];
    (v5)[2](v5, v3, v6);

    [*(a1 + 32) setCompletion:0];
  }

  else
  {
    v7 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "[WFRemoteExecutionOutgoingRunRequestSession handleIncomingProtobuf:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s completion is nil in handleIncomingProtobuf:", buf, 0xCu);
    }
  }

  v9.receiver = *(a1 + 32);
  v9.super_class = WFRemoteExecutionOutgoingRunRequestSession;
  objc_msgSendSuper2(&v9, sel_finish);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)sendToDestinations:(id)destinations options:(id)options
{
  v39 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  optionsCopy = options;
  v32.receiver = self;
  v32.super_class = WFRemoteExecutionOutgoingRunRequestSession;
  [(WFRemoteExecutionSession *)&v32 sendToDestinations:destinationsCopy options:optionsCopy];
  [(WFRemoteExecutionSession *)self setState:100];
  v8 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  coordinator = [(WFRemoteExecutionOutgoingRunRequestSession *)self coordinator];
  request = [(WFRemoteExecutionSession *)self request];
  [request setCoordinator:coordinator];

  request2 = [(WFRemoteExecutionSession *)self request];
  v31 = 0;
  v12 = [request2 writeTo:v8 error:&v31];
  v13 = v31;

  if (v12)
  {
    v14 = objc_alloc(MEMORY[0x1E69A5388]);
    immutableData = [v8 immutableData];
    v16 = [v14 initWithProtobufData:immutableData type:1 isResponse:0];

    v17 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      request3 = [(WFRemoteExecutionSession *)self request];
      identifier = [request3 identifier];
      *buf = 136315394;
      v34 = "[WFRemoteExecutionOutgoingRunRequestSession sendToDestinations:options:]";
      v35 = 2114;
      selfCopy = identifier;
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s <%{public}@> sending run request", buf, 0x16u);
    }

    [(WFRemoteExecutionSession *)self restartTimeout];
    service = [(WFRemoteExecutionSession *)self service];
    v29 = 0;
    v30 = 0;
    v21 = [service sendProtobuf:v16 toDestinations:destinationsCopy priority:300 options:optionsCopy identifier:&v30 error:&v29];
    v22 = v30;
    v23 = v29;

    if (v21)
    {
      [(WFRemoteExecutionSession *)self setIdsIdentifier:v22];
      [(WFRemoteExecutionSession *)self setState:101];
    }

    else
    {
      v27 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v34 = "[WFRemoteExecutionOutgoingRunRequestSession sendToDestinations:options:]";
        v35 = 2114;
        selfCopy = self;
        v37 = 2114;
        v38 = v23;
        _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_ERROR, "%s %{public}@ failed to send with error: %{public}@", buf, 0x20u);
      }

      [(WFRemoteExecutionSession *)self setState:1];
      [(WFRemoteExecutionOutgoingRunRequestSession *)self finishWithError:v23];
    }
  }

  else
  {
    v24 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      request4 = [(WFRemoteExecutionSession *)self request];
      identifier2 = [request4 identifier];
      *buf = 136315650;
      v34 = "[WFRemoteExecutionOutgoingRunRequestSession sendToDestinations:options:]";
      v35 = 2114;
      selfCopy = identifier2;
      v37 = 2114;
      v38 = v13;
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionOutgoingRunRequestSession *)self finishWithError:v13];
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExecutionOutgoingRunRequestSession)initWithService:(id)service request:(id)request userInterface:(id)interface parameterInputProvider:(id)provider coordinator:(id)coordinator completion:(id)completion
{
  serviceCopy = service;
  requestCopy = request;
  interfaceCopy = interface;
  providerCopy = provider;
  coordinatorCopy = coordinator;
  completionCopy = completion;
  if (serviceCopy)
  {
    if (requestCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestSession.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"service"}];

    if (requestCopy)
    {
LABEL_3:
      if (interfaceCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestSession.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"request"}];

  if (interfaceCopy)
  {
LABEL_4:
    if (coordinatorCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestSession.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"coordinator"}];

    if (completionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestSession.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"userInterface"}];

  if (!coordinatorCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (completionCopy)
  {
    goto LABEL_6;
  }

LABEL_13:
  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestSession.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_6:
  v32.receiver = self;
  v32.super_class = WFRemoteExecutionOutgoingRunRequestSession;
  v21 = [(WFRemoteExecutionSession *)&v32 initWithService:serviceCopy];
  v22 = v21;
  if (v21)
  {
    [(WFRemoteExecutionSession *)v21 setRequest:requestCopy];
    objc_storeStrong(&v22->_userInterface, interface);
    objc_storeStrong(&v22->_parameterInputProvider, provider);
    v23 = [completionCopy copy];
    completion = v22->_completion;
    v22->_completion = v23;

    objc_storeWeak(&v22->_coordinator, coordinatorCopy);
    v25 = v22;
  }

  return v22;
}

@end