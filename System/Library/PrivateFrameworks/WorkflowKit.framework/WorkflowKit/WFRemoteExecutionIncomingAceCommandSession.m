@interface WFRemoteExecutionIncomingAceCommandSession
- (void)handleIncomingProtobuf:(id)a3 destinations:(id)a4 options:(id)a5;
- (void)sendResponseWithOriginatingRequestIdentifier:(id)a3 aceCommandResponseDictionary:(id)a4 error:(id)a5 destinations:(id)a6 options:(id)a7;
- (void)sendToDestinations:(id)a3 options:(id)a4;
@end

@implementation WFRemoteExecutionIncomingAceCommandSession

- (void)sendResponseWithOriginatingRequestIdentifier:(id)a3 aceCommandResponseDictionary:(id)a4 error:(id)a5 destinations:(id)a6 options:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[WFRemoteExecutionAceCommandRequestResponse alloc] initWithOriginatingRequestIdentifier:v16 aceCommandResponseDictionary:v15 error:v14];

  [(WFRemoteExecutionIncomingAceCommandSession *)self setResponse:v17];
  [(WFRemoteExecutionIncomingAceCommandSession *)self sendToDestinations:v13 options:v12];
}

- (void)sendToDestinations:(id)a3 options:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = WFRemoteExecutionIncomingAceCommandSession;
  [(WFRemoteExecutionSession *)&v31 sendToDestinations:v6 options:v7];
  v8 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v9 = [(WFRemoteExecutionIncomingAceCommandSession *)self response];
  v30 = 0;
  v10 = [v9 writeTo:v8 error:&v30];
  v11 = v30;

  if (v10)
  {
    v12 = objc_alloc(MEMORY[0x1E69A5388]);
    v13 = [v8 immutableData];
    v14 = [v12 initWithProtobufData:v13 type:9 isResponse:0];

    v15 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(WFRemoteExecutionIncomingAceCommandSession *)self response];
      v17 = [v16 identifier];
      *buf = 136315394;
      v33 = "[WFRemoteExecutionIncomingAceCommandSession sendToDestinations:options:]";
      v34 = 2114;
      v35 = v17;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s <%{public}@> sending ace command response", buf, 0x16u);
    }

    v18 = [(WFRemoteExecutionSession *)self service];
    v28 = 0;
    v29 = 0;
    v19 = [v18 sendProtobuf:v14 toDestinations:v6 priority:300 options:v7 identifier:&v29 error:&v28];
    v20 = v29;
    v21 = v28;

    if (v19)
    {
      [(WFRemoteExecutionSession *)self setIdsIdentifier:v20];
      v22 = 202;
    }

    else
    {
      v26 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v33 = "[WFRemoteExecutionIncomingAceCommandSession sendToDestinations:options:]";
        v34 = 2114;
        v35 = self;
        v36 = 2114;
        v37 = v21;
        _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_ERROR, "%s %{public}@ failed to send with error: %{public}@", buf, 0x20u);
      }

      v22 = 1;
    }

    [(WFRemoteExecutionSession *)self setState:v22];
    [(WFRemoteExecutionSession *)self finish];
  }

  else
  {
    v23 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v24 = [(WFRemoteExecutionIncomingAceCommandSession *)self response];
      v25 = [v24 identifier];
      *buf = 136315650;
      v33 = "[WFRemoteExecutionIncomingAceCommandSession sendToDestinations:options:]";
      v34 = 2114;
      v35 = v25;
      v36 = 2114;
      v37 = v11;
      _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)handleIncomingProtobuf:(id)a3 destinations:(id)a4 options:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(WFRemoteExecutionSession *)self setState:200];
  v11 = [WFRemoteExecutionAceCommandRequest alloc];
  v12 = [v8 data];
  v35 = 0;
  v13 = [(WFRemoteExecutionAceCommandRequest *)v11 initWithData:v12 error:&v35];
  v14 = v35;

  if (v13)
  {
    v15 = MEMORY[0x1E69C76D8];
    v16 = [(WFRemoteExecutionAceCommandRequest *)v13 aceCommandDictionary];
    v17 = [v15 aceObjectWithDictionary:v16];

    if (v17)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __90__WFRemoteExecutionIncomingAceCommandSession_handleIncomingProtobuf_destinations_options___block_invoke;
      v30[3] = &unk_1E837F9B0;
      v30[4] = self;
      v31 = v13;
      v32 = v9;
      v33 = v10;
      WFPerformACECommand(v17, 0, v30);
    }

    else
    {
      v26 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v37 = "[WFRemoteExecutionIncomingAceCommandSession handleIncomingProtobuf:destinations:options:]";
        _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_FAULT, "%s unable to create ace command from dictionary representation", buf, 0xCu);
      }

      [(WFRemoteExecutionSession *)self setState:1];
      v27 = [(WFRemoteExecutionRequest *)v13 identifier];
      v28 = [(WFRemoteExecutionSession *)self invalidAceCommandError];
      [(WFRemoteExecutionIncomingAceCommandSession *)self sendResponseWithOriginatingRequestIdentifier:v27 aceCommandResponseDictionary:0 error:v28 destinations:v9 options:v10];

      [(WFRemoteExecutionSession *)self finish];
    }
  }

  else
  {
    v18 = [WFRemoteExecutionRequest isUnsupportedVersionError:v14];
    v19 = getWFRemoteExecutionLogObject();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
    if (v18)
    {
      if (v20)
      {
        *buf = 136315138;
        v37 = "[WFRemoteExecutionIncomingAceCommandSession handleIncomingProtobuf:destinations:options:]";
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_FAULT, "%s Encountered unsupported version of ace command request", buf, 0xCu);
      }

      [(WFRemoteExecutionSession *)self setState:2];
      v21 = [v8 data];
      v34 = 0;
      v22 = [WFRemoteExecutionRequest identifierFromData:v21 error:&v34];
      v23 = v34;

      v24 = getWFRemoteExecutionLogObject();
      v25 = v24;
      if (v22)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v37 = "[WFRemoteExecutionIncomingAceCommandSession handleIncomingProtobuf:destinations:options:]";
          _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_DEFAULT, "%s Sending unsupported ace command request error back", buf, 0xCu);
        }

        [(WFRemoteExecutionIncomingAceCommandSession *)self sendResponseWithOriginatingRequestIdentifier:v22 aceCommandResponseDictionary:0 error:v14 destinations:v9 options:v10];
      }

      else
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v37 = "[WFRemoteExecutionIncomingAceCommandSession handleIncomingProtobuf:destinations:options:]";
          v38 = 2112;
          v39 = v23;
          _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s Unable to read identifier from base request: %@, so unable to send unsupported version error back", buf, 0x16u);
        }
      }
    }

    else
    {
      if (v20)
      {
        *buf = 136315394;
        v37 = "[WFRemoteExecutionIncomingAceCommandSession handleIncomingProtobuf:destinations:options:]";
        v38 = 2114;
        v39 = v14;
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_FAULT, "%s failed to read incoming ace command request from data, error: %{public}@", buf, 0x16u);
      }

      [(WFRemoteExecutionSession *)self setState:1];
      [(WFRemoteExecutionSession *)self finish];
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __90__WFRemoteExecutionIncomingAceCommandSession_handleIncomingProtobuf_destinations_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  [v6 setState:201];
  v9 = *(a1 + 32);
  v11 = [*(a1 + 40) identifier];
  v10 = [v8 dictionary];

  [v9 sendResponseWithOriginatingRequestIdentifier:v11 aceCommandResponseDictionary:v10 error:v7 destinations:*(a1 + 48) options:*(a1 + 56)];
}

@end