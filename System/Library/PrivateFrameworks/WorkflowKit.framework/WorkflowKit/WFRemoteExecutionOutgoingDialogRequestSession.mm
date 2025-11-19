@interface WFRemoteExecutionOutgoingDialogRequestSession
- (WFRemoteExecutionOutgoingDialogRequestSession)initWithService:(id)a3 request:(id)a4 completion:(id)a5;
- (void)finishWithError:(id)a3;
- (void)handleIncomingProtobuf:(id)a3;
- (void)handleTimeout;
- (void)sendToDestinations:(id)a3 options:(id)a4;
@end

@implementation WFRemoteExecutionOutgoingDialogRequestSession

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(WFRemoteExecutionOutgoingDialogRequestSession *)self completion];

  if (v5)
  {
    v6 = [(WFRemoteExecutionOutgoingDialogRequestSession *)self completion];
    (v6)[2](v6, 0, v4);

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

- (void)handleIncomingProtobuf:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(WFRemoteExecutionSession *)self setState:102];
  v5 = [WFRemoteExecutionDialogRequestResponse alloc];
  v6 = [v4 data];

  v22 = 0;
  v7 = [(WFRemoteExecutionDialogRequestResponse *)v5 initWithData:v6 error:&v22];
  v8 = v22;

  if (v7)
  {
    v9 = [(WFRemoteExecutionDialogRequestResponse *)v7 originatingRequestIdentifier];
    v10 = [(WFRemoteExecutionSession *)self request];
    v11 = [v10 identifier];
    v12 = [v9 isEqualToString:v11];

    if (v12)
    {
      v13 = [(WFRemoteExecutionOutgoingDialogRequestSession *)self completion];
      v14 = [(WFRemoteExecutionDialogRequestResponse *)v7 error];
      (v13)[2](v13, v7, v14);

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
    v20 = [(WFRemoteExecutionOutgoingDialogRequestSession *)self completion];
    (v20)[2](v20, 0, v8);

    [(WFRemoteExecutionOutgoingDialogRequestSession *)self setCompletion:0];
    [(WFRemoteExecutionOutgoingDialogRequestSession *)self finishWithError:v8];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)sendToDestinations:(id)a3 options:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = WFRemoteExecutionOutgoingDialogRequestSession;
  [(WFRemoteExecutionSession *)&v30 sendToDestinations:v6 options:v7];
  [(WFRemoteExecutionSession *)self setState:100];
  v8 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v9 = [(WFRemoteExecutionSession *)self request];
  v29 = 0;
  v10 = [v9 writeTo:v8 error:&v29];
  v11 = v29;

  if (v10)
  {
    v12 = objc_alloc(MEMORY[0x1E69A5388]);
    v13 = [v8 immutableData];
    v14 = [v12 initWithProtobufData:v13 type:10 isResponse:0];

    v15 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(WFRemoteExecutionSession *)self request];
      v17 = [v16 identifier];
      *buf = 136315394;
      v32 = "[WFRemoteExecutionOutgoingDialogRequestSession sendToDestinations:options:]";
      v33 = 2114;
      v34 = v17;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s <%{public}@> sending dialog request", buf, 0x16u);
    }

    [(WFRemoteExecutionSession *)self restartTimeout];
    v18 = [(WFRemoteExecutionSession *)self service];
    v27 = 0;
    v28 = 0;
    v19 = [v18 sendProtobuf:v14 toDestinations:v6 priority:300 options:v7 identifier:&v28 error:&v27];
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
        v34 = self;
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
      v23 = [(WFRemoteExecutionSession *)self request];
      v24 = [v23 identifier];
      *buf = 136315650;
      v32 = "[WFRemoteExecutionOutgoingDialogRequestSession sendToDestinations:options:]";
      v33 = 2114;
      v34 = v24;
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionOutgoingDialogRequestSession *)self finishWithError:v11];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExecutionOutgoingDialogRequestSession)initWithService:(id)a3 request:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingDialogRequestSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingDialogRequestSession.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"service"}];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingDialogRequestSession.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = WFRemoteExecutionOutgoingDialogRequestSession;
  v12 = [(WFRemoteExecutionSession *)&v21 initWithService:v9];
  v13 = v12;
  if (v12)
  {
    [(WFRemoteExecutionSession *)v12 setRequest:v10];
    v14 = _Block_copy(v11);
    completion = v13->_completion;
    v13->_completion = v14;

    v16 = v13;
  }

  return v13;
}

@end