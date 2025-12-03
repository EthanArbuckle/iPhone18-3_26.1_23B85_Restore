@interface WFRemoteExecutionIncomingRunRequestSession
- (void)finish;
- (void)finishWithError:(id)error;
- (void)handleIncomingFileForRemoteExecutionWithURL:(id)l withIdentifier:(id)identifier metadata:(id)metadata destinations:(id)destinations options:(id)options;
- (void)handleIncomingProtobuf:(id)protobuf destinations:(id)destinations options:(id)options;
- (void)handleTimeout;
- (void)handleUnsupportedVersionForRequestData:(id)data error:(id)error destinations:(id)destinations options:(id)options;
- (void)sendResponse:(id)response toDestinations:(id)destinations options:(id)options;
@end

@implementation WFRemoteExecutionIncomingRunRequestSession

- (void)finishWithError:(id)error
{
  errorCopy = error;
  [(WFRemoteExecutionIncomingRunRequestSession *)self finish];
  lastKnownDestinations = [(WFRemoteExecutionIncomingRunRequestSession *)self lastKnownDestinations];
  if (lastKnownDestinations)
  {
    v5 = lastKnownDestinations;
    request = [(WFRemoteExecutionSession *)self request];

    if (request)
    {
      v7 = [WFRemoteExecutionRunRequestResponse alloc];
      request2 = [(WFRemoteExecutionSession *)self request];
      identifier = [request2 identifier];
      v10 = [(WFRemoteExecutionRunRequestResponse *)v7 initWithRunRequestIdentifier:identifier variables:0 output:0 error:errorCopy];

      lastKnownDestinations2 = [(WFRemoteExecutionIncomingRunRequestSession *)self lastKnownDestinations];
      lastKnownOptions = [(WFRemoteExecutionIncomingRunRequestSession *)self lastKnownOptions];
      [(WFRemoteExecutionIncomingRunRequestSession *)self sendResponse:v10 toDestinations:lastKnownDestinations2 options:lastKnownOptions];
    }
  }
}

- (void)finish
{
  controller = [(WFRemoteExecutionIncomingRunRequestSession *)self controller];
  [controller stop];

  [(WFRemoteExecutionIncomingRunRequestSession *)self setController:0];
  v4.receiver = self;
  v4.super_class = WFRemoteExecutionIncomingRunRequestSession;
  [(WFRemoteExecutionSession *)&v4 finish];
}

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:203];

  [(WFRemoteExecutionIncomingRunRequestSession *)self finish];
}

- (void)handleIncomingFileForRemoteExecutionWithURL:(id)l withIdentifier:(id)identifier metadata:(id)metadata destinations:(id)destinations options:(id)options
{
  lCopy = l;
  identifierCopy = identifier;
  destinationsCopy = destinations;
  optionsCopy = options;
  metadataCopy = metadata;
  [(WFRemoteExecutionIncomingRunRequestSession *)self setLastKnownDestinations:destinationsCopy];
  [(WFRemoteExecutionIncomingRunRequestSession *)self setLastKnownOptions:optionsCopy];
  v16 = [metadataCopy objectForKey:@"version"];

  if (+[WFRemoteExecutionOutgoingFileSession supportsVersion:](WFRemoteExecutionOutgoingFileSession, "supportsVersion:", [v16 integerValue]))
  {
    controller = [(WFRemoteExecutionIncomingRunRequestSession *)self controller];
    [(WFRemoteExecutionRunRequestResponse *)controller handleIncomingFileForRemoteExecutionWithURL:lCopy withIdentifier:identifierCopy];
  }

  else
  {
    [(WFRemoteExecutionSession *)self setState:2];
    v18 = [WFRemoteExecutionRunRequestResponse alloc];
    request = [(WFRemoteExecutionSession *)self request];
    identifier = [request identifier];
    v21 = +[(WFRemoteExecutionRequest *)WFRemoteExecutionRunRequestResponse];
    controller = [(WFRemoteExecutionRunRequestResponse *)v18 initWithRunRequestIdentifier:identifier variables:0 output:0 error:v21];

    [(WFRemoteExecutionIncomingRunRequestSession *)self sendResponse:controller toDestinations:destinationsCopy options:optionsCopy];
  }
}

- (void)sendResponse:(id)response toDestinations:(id)destinations options:(id)options
{
  v37 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  destinationsCopy = destinations;
  optionsCopy = options;
  [(WFRemoteExecutionSession *)self setState:201];
  v11 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v30 = 0;
  v12 = [responseCopy writeTo:v11 error:&v30];
  v13 = v30;
  if (v12)
  {
    v14 = objc_alloc(MEMORY[0x1E69A5388]);
    immutableData = [v11 immutableData];
    v16 = [v14 initWithProtobufData:immutableData type:2 isResponse:0];

    [(WFRemoteExecutionSession *)self restartTimeout];
    service = [(WFRemoteExecutionSession *)self service];
    v28 = 0;
    v29 = 0;
    v18 = destinationsCopy;
    v27 = optionsCopy;
    v19 = [service sendProtobuf:v16 toDestinations:destinationsCopy priority:300 options:optionsCopy identifier:&v29 error:&v28];
    v20 = v29;
    v21 = v28;

    if (v19)
    {
      [(WFRemoteExecutionSession *)self setIdsIdentifier:v20];
      v22 = 202;
    }

    else
    {
      v25 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "[WFRemoteExecutionIncomingRunRequestSession sendResponse:toDestinations:options:]";
        v33 = 2114;
        selfCopy = self;
        v35 = 2114;
        v36 = v21;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_ERROR, "%s %{public}@ failed to send with error: %{public}@", buf, 0x20u);
      }

      v22 = 1;
    }

    destinationsCopy = v18;
    [(WFRemoteExecutionSession *)self setState:v22];
    [(WFRemoteExecutionIncomingRunRequestSession *)self finish];

    optionsCopy = v27;
  }

  else
  {
    v23 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      identifier = [responseCopy identifier];
      *buf = 136315650;
      v32 = "[WFRemoteExecutionIncomingRunRequestSession sendResponse:toDestinations:options:]";
      v33 = 2114;
      selfCopy = identifier;
      v35 = 2114;
      v36 = v13;
      _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionIncomingRunRequestSession *)self finish];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)handleUnsupportedVersionForRequestData:(id)data error:(id)error destinations:(id)destinations options:(id)options
{
  v23 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  destinationsCopy = destinations;
  optionsCopy = options;
  if (data)
  {
    v18 = 0;
    v13 = [WFRemoteExecutionRequest identifierFromData:data error:&v18];
    v14 = v18;
    v15 = getWFRemoteExecutionLogObject();
    v16 = v15;
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[WFRemoteExecutionIncomingRunRequestSession handleUnsupportedVersionForRequestData:error:destinations:options:]";
        v21 = 2114;
        v22 = v13;
        _os_log_impl(&dword_1CA256000, &v16->super.super, OS_LOG_TYPE_DEFAULT, "%s Sending unsupported version error back for request with identifier %{public}@", buf, 0x16u);
      }

      v16 = [[WFRemoteExecutionRunRequestResponse alloc] initWithRunRequestIdentifier:v13 variables:0 output:0 error:errorCopy];
      [(WFRemoteExecutionIncomingRunRequestSession *)self sendResponse:v16 toDestinations:destinationsCopy options:optionsCopy];
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v20 = "[WFRemoteExecutionIncomingRunRequestSession handleUnsupportedVersionForRequestData:error:destinations:options:]";
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_1CA256000, &v16->super.super, OS_LOG_TYPE_FAULT, "%s Unable to read identifier from base request: %@, so unable to send unsupported version error back", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleIncomingProtobuf:(id)protobuf destinations:(id)destinations options:(id)options
{
  v30 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  destinationsCopy = destinations;
  optionsCopy = options;
  [(WFRemoteExecutionIncomingRunRequestSession *)self setLastKnownDestinations:destinationsCopy];
  [(WFRemoteExecutionIncomingRunRequestSession *)self setLastKnownOptions:optionsCopy];
  [(WFRemoteExecutionSession *)self restartTimeout];
  [(WFRemoteExecutionSession *)self setState:200];
  v11 = [WFRemoteExecutionRunRequest alloc];
  data = [protobufCopy data];
  v25 = 0;
  v13 = [(WFRemoteExecutionRunRequest *)v11 initWithData:data error:&v25];
  v14 = v25;

  if (v13)
  {
    [(WFRemoteExecutionSession *)self setRequest:v13];
    v15 = [objc_alloc(MEMORY[0x1E69E0C20]) initWithEnvironment:4 runningContext:0 presentationMode:0];
    [v15 setDelegate:self];
    data2 = [protobufCopy data];
    v24 = 0;
    [v15 runActionWithRunRequestData:data2 error:&v24];
    v17 = v24;

    objc_storeStrong(&self->_controller, v15);
    if (v17)
    {
      v18 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v27 = "[WFRemoteExecutionIncomingRunRequestSession handleIncomingProtobuf:destinations:options:]";
        v28 = 2114;
        v29 = v17;
        _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_FAULT, "%s failed to start running in the out of process controller: %{public}@", buf, 0x16u);
      }

      [(WFRemoteExecutionSession *)self setState:1];
      [(WFRemoteExecutionIncomingRunRequestSession *)self finish];
    }
  }

  else
  {
    v19 = [WFRemoteExecutionRequest isUnsupportedVersionError:v14];
    v20 = getWFRemoteExecutionLogObject();
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v27 = "[WFRemoteExecutionIncomingRunRequestSession handleIncomingProtobuf:destinations:options:]";
        _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_ERROR, "%s Encountered unsupported version of run request", buf, 0xCu);
      }

      [(WFRemoteExecutionSession *)self setState:2];
      data3 = [protobufCopy data];
      [(WFRemoteExecutionIncomingRunRequestSession *)self handleUnsupportedVersionForRequestData:data3 error:v14 destinations:destinationsCopy options:optionsCopy];
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v27 = "[WFRemoteExecutionIncomingRunRequestSession handleIncomingProtobuf:destinations:options:]";
        v28 = 2114;
        v29 = v14;
        _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_FAULT, "%s failed to read run request from data, error: %{public}@", buf, 0x16u);
      }

      [(WFRemoteExecutionSession *)self setState:1];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

@end