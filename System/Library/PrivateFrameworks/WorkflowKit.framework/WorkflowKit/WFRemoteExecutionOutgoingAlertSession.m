@interface WFRemoteExecutionOutgoingAlertSession
- (WFRemoteExecutionOutgoingAlertSession)initWithService:(id)a3 request:(id)a4 completion:(id)a5;
- (void)finishWithError:(id)a3;
- (void)handleIncomingProtobuf:(id)a3;
- (void)handleTimeout;
- (void)sendToDestinations:(id)a3 options:(id)a4;
@end

@implementation WFRemoteExecutionOutgoingAlertSession

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(WFRemoteExecutionOutgoingAlertSession *)self completion];

  if (v5)
  {
    v6 = [(WFRemoteExecutionOutgoingAlertSession *)self completion];
    (v6)[2](v6, 0, v4);
  }

  v7.receiver = self;
  v7.super_class = WFRemoteExecutionOutgoingAlertSession;
  [(WFRemoteExecutionSession *)&v7 finish];
}

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:104];
  v3 = [(WFRemoteExecutionSession *)self sessionTimedOutError];
  [(WFRemoteExecutionOutgoingAlertSession *)self finishWithError:v3];
}

- (void)handleIncomingProtobuf:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(WFRemoteExecutionSession *)self setState:102];
  v5 = objc_alloc(MEMORY[0x1E69C65B8]);
  v6 = [v4 data];

  v7 = [v5 initWithData:v6];
  v8 = objc_alloc_init(WFRemoteExecutionAlertRequestResponse);
  v27 = 0;
  v9 = [(WFRemoteExecutionRequest *)v8 readFrom:v7 error:&v27];
  v10 = v27;
  if (v9)
  {
    v11 = [(WFRemoteExecutionAlertRequestResponse *)v8 requestIdentifier];
    v12 = [(WFRemoteExecutionSession *)self request];
    v13 = [v12 identifier];
    v14 = [v11 isEqualToString:v13];

    if (v14)
    {
      v15 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [(WFRemoteExecutionRequest *)v8 identifier];
        v17 = [(WFRemoteExecutionAlertRequestResponse *)v8 requestIdentifier];
        *buf = 136315650;
        v29 = "[WFRemoteExecutionOutgoingAlertSession handleIncomingProtobuf:]";
        v30 = 2114;
        v31 = v16;
        v32 = 2114;
        v33 = v17;
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s <%{public}@> Received response for alert: %{public}@", buf, 0x20u);
      }

      v18 = [(WFRemoteExecutionOutgoingAlertSession *)self completion];
      v19 = [(WFRemoteExecutionAlertRequestResponse *)v8 selectedButton];
      v20 = [(WFRemoteExecutionAlertRequestResponse *)v8 error];
      (v18)[2](v18, v19, v20);

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

- (void)sendToDestinations:(id)a3 options:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = WFRemoteExecutionOutgoingAlertSession;
  [(WFRemoteExecutionSession *)&v32 sendToDestinations:v6 options:v7];
  [(WFRemoteExecutionSession *)self setState:100];
  v8 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(WFRemoteExecutionSession *)self request];
    v10 = [v9 identifier];
    *buf = 136315394;
    v34 = "[WFRemoteExecutionOutgoingAlertSession sendToDestinations:options:]";
    v35 = 2114;
    v36 = v10;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s <%{public}@> Sending alert", buf, 0x16u);
  }

  v11 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v12 = [(WFRemoteExecutionSession *)self request];
  v31 = 0;
  v13 = [v12 writeTo:v11 error:&v31];
  v14 = v31;

  if (v13)
  {
    v15 = objc_alloc(MEMORY[0x1E69A5388]);
    v16 = [v11 immutableData];
    v17 = [v15 initWithProtobufData:v16 type:3 isResponse:0];

    [(WFRemoteExecutionSession *)self restartTimeout];
    v18 = [(WFRemoteExecutionSession *)self service];
    v29 = 0;
    v30 = 0;
    v19 = [v18 sendProtobuf:v17 toDestinations:v6 priority:300 options:v7 identifier:&v30 error:&v29];
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
        v28 = [(WFRemoteExecutionSession *)self request];
        v26 = [v28 identifier];
        *buf = 136315650;
        v34 = "[WFRemoteExecutionOutgoingAlertSession sendToDestinations:options:]";
        v35 = 2114;
        v36 = v26;
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
      v23 = [(WFRemoteExecutionSession *)self request];
      v24 = [v23 identifier];
      *buf = 136315650;
      v34 = "[WFRemoteExecutionOutgoingAlertSession sendToDestinations:options:]";
      v35 = 2114;
      v36 = v24;
      v37 = 2114;
      v38 = v14;
      _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionOutgoingAlertSession *)self finishWithError:v14];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExecutionOutgoingAlertSession)initWithService:(id)a3 request:(id)a4 completion:(id)a5
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
    [v19 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAlertSession.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAlertSession.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"service"}];

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
  [v20 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingAlertSession.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = WFRemoteExecutionOutgoingAlertSession;
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