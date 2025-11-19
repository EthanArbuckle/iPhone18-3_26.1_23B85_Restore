@interface WFRemoteExecutionOutgoingRunRequestResponseSession
- (WFRemoteExecutionOutgoingRunRequestResponseSession)initWithService:(id)a3 responseData:(id)a4;
- (void)handleTimeout;
- (void)sendToDestinations:(id)a3 options:(id)a4;
@end

@implementation WFRemoteExecutionOutgoingRunRequestResponseSession

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:104];

  [(WFRemoteExecutionSession *)self finish];
}

- (void)sendToDestinations:(id)a3 options:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = WFRemoteExecutionOutgoingRunRequestResponseSession;
  v6 = a4;
  v7 = a3;
  [(WFRemoteExecutionSession *)&v20 sendToDestinations:v7 options:v6];
  [(WFRemoteExecutionSession *)self setState:100];
  v8 = objc_alloc(MEMORY[0x1E69A5388]);
  v9 = [(WFRemoteExecutionOutgoingRunRequestResponseSession *)self responseData];
  v10 = [v8 initWithProtobufData:v9 type:2 isResponse:0];

  v11 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v22 = "[WFRemoteExecutionOutgoingRunRequestResponseSession sendToDestinations:options:]";
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_INFO, "%s sending run request response", buf, 0xCu);
  }

  [(WFRemoteExecutionSession *)self restartTimeout];
  v12 = [(WFRemoteExecutionSession *)self service];
  v18 = 0;
  v19 = 0;
  v13 = [v12 sendProtobuf:v10 toDestinations:v7 priority:300 options:v6 identifier:&v19 error:&v18];

  v14 = v19;
  v15 = v18;

  if (v13)
  {
    [(WFRemoteExecutionSession *)self setIdsIdentifier:v14];
    [(WFRemoteExecutionSession *)self setState:103];
  }

  else
  {
    v16 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[WFRemoteExecutionOutgoingRunRequestResponseSession sendToDestinations:options:]";
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s failed to send run request response with error: %{public}@", buf, 0x16u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionSession *)self finish];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExecutionOutgoingRunRequestResponseSession)initWithService:(id)a3 responseData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestResponseSession.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"service"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingRunRequestResponseSession.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"responseData"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = WFRemoteExecutionOutgoingRunRequestResponseSession;
  v10 = [(WFRemoteExecutionSession *)&v16 initWithService:v7];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_responseData, a4);
    v12 = v11;
  }

  return v11;
}

@end