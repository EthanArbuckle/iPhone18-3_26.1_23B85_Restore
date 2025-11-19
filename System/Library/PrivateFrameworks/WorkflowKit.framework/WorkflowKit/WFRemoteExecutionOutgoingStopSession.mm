@interface WFRemoteExecutionOutgoingStopSession
- (BOOL)sendToDestinations:(id)a3 options:(id)a4 error:(id *)a5;
- (WFRemoteExecutionOutgoingStopSession)initWithService:(id)a3 request:(id)a4;
@end

@implementation WFRemoteExecutionOutgoingStopSession

- (BOOL)sendToDestinations:(id)a3 options:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionOutgoingStopSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];
  }

  [(WFRemoteExecutionSession *)self setState:100];
  v11 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v12 = [(WFRemoteExecutionSession *)self request];
  v37 = 0;
  v13 = [v12 writeTo:v11 error:&v37];
  v14 = v37;

  if (v13)
  {
    v34 = a5;
    v15 = objc_alloc(MEMORY[0x1E69A5388]);
    v16 = [v11 immutableData];
    v17 = [v15 initWithProtobufData:v16 type:7 isResponse:0];

    v18 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [(WFRemoteExecutionSession *)self request];
      v20 = [v19 identifier];
      *buf = 136315394;
      v39 = "[WFRemoteExecutionOutgoingStopSession sendToDestinations:options:error:]";
      v40 = 2114;
      v41 = v20;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, "%s <%{public}@> sending stop request", buf, 0x16u);
    }

    v21 = [(WFRemoteExecutionSession *)self service];
    v35 = 0;
    v36 = 0;
    v22 = [v21 sendProtobuf:v17 toDestinations:v9 priority:300 options:v10 identifier:&v36 error:&v35];
    v23 = v36;
    v24 = v35;

    if (v22)
    {
      [(WFRemoteExecutionSession *)self setIdsIdentifier:v23];
      [(WFRemoteExecutionSession *)self setState:103];
    }

    else
    {
      v29 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v39 = "[WFRemoteExecutionOutgoingStopSession sendToDestinations:options:error:]";
        v40 = 2114;
        v41 = self;
        v42 = 2114;
        v43 = v24;
        _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_ERROR, "%s %{public}@ failed to send with error: %{public}@", buf, 0x20u);
      }

      [(WFRemoteExecutionSession *)self setState:1];
      if (v34)
      {
        v30 = v14;
        *v34 = v14;
      }
    }

    [(WFRemoteExecutionSession *)self finish];
  }

  else
  {
    v25 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      v26 = [(WFRemoteExecutionSession *)self request];
      v27 = [v26 identifier];
      *buf = 136315650;
      v39 = "[WFRemoteExecutionOutgoingStopSession sendToDestinations:options:error:]";
      v40 = 2114;
      v41 = v27;
      v42 = 2114;
      v43 = v14;
      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    if (a5)
    {
      v28 = v14;
      *a5 = v14;
    }

    [(WFRemoteExecutionSession *)self finish];
    v22 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v22;
}

- (WFRemoteExecutionOutgoingStopSession)initWithService:(id)a3 request:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = WFRemoteExecutionOutgoingStopSession;
  v7 = [(WFRemoteExecutionSession *)&v11 initWithService:a3];
  v8 = v7;
  if (v7)
  {
    [(WFRemoteExecutionSession *)v7 setRequest:v6];
    v9 = v8;
  }

  return v8;
}

@end