@interface WFRemoteExecutionIncomingAceCommandSession
- (void)handleIncomingProtobuf:(id)protobuf destinations:(id)destinations options:(id)options;
- (void)sendResponseWithOriginatingRequestIdentifier:(id)identifier aceCommandResponseDictionary:(id)dictionary error:(id)error destinations:(id)destinations options:(id)options;
- (void)sendToDestinations:(id)destinations options:(id)options;
@end

@implementation WFRemoteExecutionIncomingAceCommandSession

- (void)sendResponseWithOriginatingRequestIdentifier:(id)identifier aceCommandResponseDictionary:(id)dictionary error:(id)error destinations:(id)destinations options:(id)options
{
  optionsCopy = options;
  destinationsCopy = destinations;
  errorCopy = error;
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v17 = [[WFRemoteExecutionAceCommandRequestResponse alloc] initWithOriginatingRequestIdentifier:identifierCopy aceCommandResponseDictionary:dictionaryCopy error:errorCopy];

  [(WFRemoteExecutionIncomingAceCommandSession *)self setResponse:v17];
  [(WFRemoteExecutionIncomingAceCommandSession *)self sendToDestinations:destinationsCopy options:optionsCopy];
}

- (void)sendToDestinations:(id)destinations options:(id)options
{
  v38 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  optionsCopy = options;
  v31.receiver = self;
  v31.super_class = WFRemoteExecutionIncomingAceCommandSession;
  [(WFRemoteExecutionSession *)&v31 sendToDestinations:destinationsCopy options:optionsCopy];
  v8 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  response = [(WFRemoteExecutionIncomingAceCommandSession *)self response];
  v30 = 0;
  v10 = [response writeTo:v8 error:&v30];
  v11 = v30;

  if (v10)
  {
    v12 = objc_alloc(MEMORY[0x1E69A5388]);
    immutableData = [v8 immutableData];
    v14 = [v12 initWithProtobufData:immutableData type:9 isResponse:0];

    v15 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      response2 = [(WFRemoteExecutionIncomingAceCommandSession *)self response];
      identifier = [response2 identifier];
      *buf = 136315394;
      v33 = "[WFRemoteExecutionIncomingAceCommandSession sendToDestinations:options:]";
      v34 = 2114;
      selfCopy = identifier;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s <%{public}@> sending ace command response", buf, 0x16u);
    }

    service = [(WFRemoteExecutionSession *)self service];
    v28 = 0;
    v29 = 0;
    v19 = [service sendProtobuf:v14 toDestinations:destinationsCopy priority:300 options:optionsCopy identifier:&v29 error:&v28];
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
        selfCopy = self;
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
      response3 = [(WFRemoteExecutionIncomingAceCommandSession *)self response];
      identifier2 = [response3 identifier];
      *buf = 136315650;
      v33 = "[WFRemoteExecutionIncomingAceCommandSession sendToDestinations:options:]";
      v34 = 2114;
      selfCopy = identifier2;
      v36 = 2114;
      v37 = v11;
      _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)handleIncomingProtobuf:(id)protobuf destinations:(id)destinations options:(id)options
{
  v40 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  destinationsCopy = destinations;
  optionsCopy = options;
  [(WFRemoteExecutionSession *)self setState:200];
  v11 = [WFRemoteExecutionAceCommandRequest alloc];
  data = [protobufCopy data];
  v35 = 0;
  v13 = [(WFRemoteExecutionAceCommandRequest *)v11 initWithData:data error:&v35];
  v14 = v35;

  if (v13)
  {
    v15 = MEMORY[0x1E69C76D8];
    aceCommandDictionary = [(WFRemoteExecutionAceCommandRequest *)v13 aceCommandDictionary];
    v17 = [v15 aceObjectWithDictionary:aceCommandDictionary];

    if (v17)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __90__WFRemoteExecutionIncomingAceCommandSession_handleIncomingProtobuf_destinations_options___block_invoke;
      v30[3] = &unk_1E837F9B0;
      v30[4] = self;
      v31 = v13;
      v32 = destinationsCopy;
      v33 = optionsCopy;
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
      identifier = [(WFRemoteExecutionRequest *)v13 identifier];
      invalidAceCommandError = [(WFRemoteExecutionSession *)self invalidAceCommandError];
      [(WFRemoteExecutionIncomingAceCommandSession *)self sendResponseWithOriginatingRequestIdentifier:identifier aceCommandResponseDictionary:0 error:invalidAceCommandError destinations:destinationsCopy options:optionsCopy];

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
      data2 = [protobufCopy data];
      v34 = 0;
      v22 = [WFRemoteExecutionRequest identifierFromData:data2 error:&v34];
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

        [(WFRemoteExecutionIncomingAceCommandSession *)self sendResponseWithOriginatingRequestIdentifier:v22 aceCommandResponseDictionary:0 error:v14 destinations:destinationsCopy options:optionsCopy];
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