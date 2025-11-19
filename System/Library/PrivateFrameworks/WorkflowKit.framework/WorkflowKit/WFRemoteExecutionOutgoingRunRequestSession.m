@interface WFRemoteExecutionOutgoingRunRequestSession
- (WFRemoteExecutionCoordinator)coordinator;
- (WFRemoteExecutionFileCoordinator)fileCoordinator;
- (WFRemoteExecutionOutgoingRunRequestSession)initWithService:(id)a3 request:(id)a4 userInterface:(id)a5 parameterInputProvider:(id)a6 coordinator:(id)a7 completion:(id)a8;
- (void)finishWithError:(id)a3;
- (void)handleIncomingFileForRemoteExecutionWithURL:(id)a3 withIdentifier:(id)a4 metadata:(id)a5;
- (void)handleIncomingProtobuf:(id)a3;
- (void)handleTimeout;
- (void)sendToDestinations:(id)a3 options:(id)a4;
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

- (void)finishWithError:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[WFRemoteExecutionOutgoingRunRequestSession finishWithError:]";
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s finishWithError: %@", buf, 0x16u);
  }

  if ([(WFRemoteExecutionSession *)self state]== 101)
  {
    v6 = [(WFRemoteExecutionSession *)self request];

    if (v6)
    {
      v7 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v22 = "[WFRemoteExecutionOutgoingRunRequestSession finishWithError:]";
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s Sending stop...", buf, 0xCu);
      }

      v8 = [WFRemoteExecutionStopRequest alloc];
      v9 = [(WFRemoteExecutionSession *)self request];
      v10 = [v9 identifier];
      v11 = [(WFRemoteExecutionStopRequest *)v8 initWithRequestIdentifier:v10];

      v12 = [(WFRemoteExecutionOutgoingRunRequestSession *)self coordinator];
      v20 = 0;
      LOBYTE(v10) = [v12 sendStopRequest:v11 error:&v20];
      v6 = v20;

      if ((v10 & 1) == 0)
      {
        [(WFRemoteExecutionSession *)self setState:1];
        v13 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v22 = "[WFRemoteExecutionOutgoingRunRequestSession finishWithError:]";
          v23 = 2114;
          v24 = v6;
          _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s Failed to send stop request: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = [(WFRemoteExecutionOutgoingRunRequestSession *)self completion];

  if (v14)
  {
    v15 = [(WFRemoteExecutionOutgoingRunRequestSession *)self completion];
    v16 = v15;
    if (v4)
    {
      v17 = v4;
    }

    else
    {
      v17 = v6;
    }

    (*(v15 + 16))(v15, 0, v17);

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
  v3 = [(WFRemoteExecutionSession *)self sessionTimedOutError];
  [(WFRemoteExecutionOutgoingRunRequestSession *)self finishWithError:v3];
}

- (void)handleIncomingFileForRemoteExecutionWithURL:(id)a3 withIdentifier:(id)a4 metadata:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = [a5 objectForKey:@"version"];
  if (+[WFRemoteExecutionOutgoingFileSession supportsVersion:](WFRemoteExecutionOutgoingFileSession, "supportsVersion:", [v9 integerValue]))
  {
    v10 = [(WFRemoteExecutionOutgoingRunRequestSession *)self fileCoordinator];
    [v10 handleFile:v11 withIdentifier:v8];
  }

  else
  {
    [(WFRemoteExecutionSession *)self setState:2];
    v10 = +[(WFRemoteExecutionRequest *)WFRemoteExecutionRunRequestResponse];
    [(WFRemoteExecutionOutgoingRunRequestSession *)self finishWithError:v10];
  }
}

- (void)handleIncomingProtobuf:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(WFRemoteExecutionSession *)self setState:102];
  v5 = [WFRemoteExecutionRunRequestResponse alloc];
  v6 = [v4 data];

  v20 = 0;
  v7 = [(WFRemoteExecutionRunRequestResponse *)v5 initWithData:v6 error:&v20];
  v8 = v20;

  if (v7)
  {
    v9 = [(WFRemoteExecutionRunRequestResponse *)v7 runRequestIdentifier];
    v10 = [(WFRemoteExecutionSession *)self request];
    v11 = [v10 identifier];
    v12 = [v9 isEqualToString:v11];

    if (v12)
    {
      v13 = [(WFRemoteExecutionOutgoingRunRequestSession *)self fileCoordinator];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __69__WFRemoteExecutionOutgoingRunRequestSession_handleIncomingProtobuf___block_invoke;
      v19[3] = &unk_1E8378958;
      v19[4] = self;
      [(WFRemoteExecutionRunRequestResponse *)v7 inflateWithFileCoordinator:v13 completion:v19];
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

- (void)sendToDestinations:(id)a3 options:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = WFRemoteExecutionOutgoingRunRequestSession;
  [(WFRemoteExecutionSession *)&v32 sendToDestinations:v6 options:v7];
  [(WFRemoteExecutionSession *)self setState:100];
  v8 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v9 = [(WFRemoteExecutionOutgoingRunRequestSession *)self coordinator];
  v10 = [(WFRemoteExecutionSession *)self request];
  [v10 setCoordinator:v9];

  v11 = [(WFRemoteExecutionSession *)self request];
  v31 = 0;
  v12 = [v11 writeTo:v8 error:&v31];
  v13 = v31;

  if (v12)
  {
    v14 = objc_alloc(MEMORY[0x1E69A5388]);
    v15 = [v8 immutableData];
    v16 = [v14 initWithProtobufData:v15 type:1 isResponse:0];

    v17 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [(WFRemoteExecutionSession *)self request];
      v19 = [v18 identifier];
      *buf = 136315394;
      v34 = "[WFRemoteExecutionOutgoingRunRequestSession sendToDestinations:options:]";
      v35 = 2114;
      v36 = v19;
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s <%{public}@> sending run request", buf, 0x16u);
    }

    [(WFRemoteExecutionSession *)self restartTimeout];
    v20 = [(WFRemoteExecutionSession *)self service];
    v29 = 0;
    v30 = 0;
    v21 = [v20 sendProtobuf:v16 toDestinations:v6 priority:300 options:v7 identifier:&v30 error:&v29];
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
        v36 = self;
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
      v25 = [(WFRemoteExecutionSession *)self request];
      v26 = [v25 identifier];
      *buf = 136315650;
      v34 = "[WFRemoteExecutionOutgoingRunRequestSession sendToDestinations:options:]";
      v35 = 2114;
      v36 = v26;
      v37 = 2114;
      v38 = v13;
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionOutgoingRunRequestSession *)self finishWithError:v13];
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExecutionOutgoingRunRequestSession)initWithService:(id)a3 request:(id)a4 userInterface:(id)a5 parameterInputProvider:(id)a6 coordinator:(id)a7 completion:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestSession.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"service"}];

    if (v16)
    {
LABEL_3:
      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestSession.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"request"}];

  if (v17)
  {
LABEL_4:
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_12:
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestSession.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"coordinator"}];

    if (v20)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestSession.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"userInterface"}];

  if (!v19)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v20)
  {
    goto LABEL_6;
  }

LABEL_13:
  v31 = [MEMORY[0x1E696AAA8] currentHandler];
  [v31 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestSession.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_6:
  v32.receiver = self;
  v32.super_class = WFRemoteExecutionOutgoingRunRequestSession;
  v21 = [(WFRemoteExecutionSession *)&v32 initWithService:v15];
  v22 = v21;
  if (v21)
  {
    [(WFRemoteExecutionSession *)v21 setRequest:v16];
    objc_storeStrong(&v22->_userInterface, a5);
    objc_storeStrong(&v22->_parameterInputProvider, a6);
    v23 = [v20 copy];
    completion = v22->_completion;
    v22->_completion = v23;

    objc_storeWeak(&v22->_coordinator, v19);
    v25 = v22;
  }

  return v22;
}

@end