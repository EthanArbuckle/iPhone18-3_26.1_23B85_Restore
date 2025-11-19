@interface WFRemoteExecutionOutgoingAskEachTimeSession
- (WFRemoteExecutionOutgoingAskEachTimeSession)initWithService:(id)a3 request:(id)a4 completion:(id)a5;
- (void)finish;
- (void)finishWithError:(id)a3;
- (void)finishWithoutCallingCompletion;
- (void)handleIncomingProtobuf:(id)a3;
- (void)handleTimeout;
- (void)sendToDestinations:(id)a3 options:(id)a4;
@end

@implementation WFRemoteExecutionOutgoingAskEachTimeSession

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(WFRemoteExecutionOutgoingAskEachTimeSession *)self completion];

  if (v5)
  {
    v6 = [(WFRemoteExecutionOutgoingAskEachTimeSession *)self completion];
    (v6)[2](v6, 1, 0, v4);

    [(WFRemoteExecutionOutgoingAskEachTimeSession *)self setCompletion:0];
  }

  v7.receiver = self;
  v7.super_class = WFRemoteExecutionOutgoingAskEachTimeSession;
  [(WFRemoteExecutionSession *)&v7 finish];
}

- (void)finish
{
  v3 = [(WFRemoteExecutionOutgoingAskEachTimeSession *)self completion];

  if (v3)
  {
    v4 = [(WFRemoteExecutionOutgoingAskEachTimeSession *)self completion];
    v4[2](v4, 1, 0, 0);

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

- (void)handleIncomingProtobuf:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(WFRemoteExecutionSession *)self setState:102];
  v5 = [WFRemoteExecutionAskEachTimeRequestResponse alloc];
  v6 = [v4 data];

  v29 = 0;
  v7 = [(WFRemoteExecutionAskEachTimeRequestResponse *)v5 initWithData:v6 error:&v29];
  v8 = v29;

  if (v7)
  {
    v9 = [(WFRemoteExecutionAskEachTimeRequestResponse *)v7 originatingRequestIdentifier];
    v10 = [(WFRemoteExecutionSession *)self request];
    v11 = [v10 identifier];
    v12 = [v9 isEqualToString:v11];

    if (v12)
    {
      [(WFRemoteExecutionSession *)self setState:103];
      v13 = +[WFActionRegistry sharedRegistry];
      v14 = [(WFRemoteExecutionSession *)self request];
      v15 = [v14 actionIdentifier];
      v16 = [(WFRemoteExecutionSession *)self request];
      v17 = [v16 actionSerializedParameters];
      v18 = [v13 createActionWithIdentifier:v15 serializedParameters:v17];

      [(WFRemoteExecutionAskEachTimeRequestResponse *)v7 inflateInputtedStatesWithAction:v18];
      v19 = [(WFRemoteExecutionOutgoingAskEachTimeSession *)self completion];
      v20 = [(WFRemoteExecutionAskEachTimeRequestResponse *)v7 inputtedStates];
      v21 = [(WFRemoteExecutionAskEachTimeRequestResponse *)v7 error];
      (v19)[2](v19, 0, v20, v21);

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
    v26 = [(WFRemoteExecutionOutgoingAskEachTimeSession *)self completion];
    (v26)[2](v26, 0, 0, v8);

    [(WFRemoteExecutionOutgoingAskEachTimeSession *)self setCompletion:0];
    v28.receiver = self;
    v28.super_class = WFRemoteExecutionOutgoingAskEachTimeSession;
    [(WFRemoteExecutionSession *)&v28 finish];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)sendToDestinations:(id)a3 options:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = WFRemoteExecutionOutgoingAskEachTimeSession;
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
    v14 = [v12 initWithProtobufData:v13 type:5 isResponse:0];

    v15 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(WFRemoteExecutionSession *)self request];
      v17 = [v16 identifier];
      *buf = 136315394;
      v32 = "[WFRemoteExecutionOutgoingAskEachTimeSession sendToDestinations:options:]";
      v33 = 2114;
      v34 = v17;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s <%{public}@> sending ask each time request", buf, 0x16u);
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
        v32 = "[WFRemoteExecutionOutgoingAskEachTimeSession sendToDestinations:options:]";
        v33 = 2114;
        v34 = self;
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
      v23 = [(WFRemoteExecutionSession *)self request];
      v24 = [v23 identifier];
      *buf = 136315650;
      v32 = "[WFRemoteExecutionOutgoingAskEachTimeSession sendToDestinations:options:]";
      v33 = 2114;
      v34 = v24;
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionOutgoingAskEachTimeSession *)self finish];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExecutionOutgoingAskEachTimeSession)initWithService:(id)a3 request:(id)a4 completion:(id)a5
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
    [v19 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAskEachTimeSession.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAskEachTimeSession.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"service"}];

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
  [v20 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAskEachTimeSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = WFRemoteExecutionOutgoingAskEachTimeSession;
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