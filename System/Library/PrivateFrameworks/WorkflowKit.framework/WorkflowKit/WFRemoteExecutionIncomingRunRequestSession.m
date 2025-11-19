@interface WFRemoteExecutionIncomingRunRequestSession
- (void)finish;
- (void)finishWithError:(id)a3;
- (void)handleIncomingFileForRemoteExecutionWithURL:(id)a3 withIdentifier:(id)a4 metadata:(id)a5 destinations:(id)a6 options:(id)a7;
- (void)handleIncomingProtobuf:(id)a3 destinations:(id)a4 options:(id)a5;
- (void)handleTimeout;
- (void)handleUnsupportedVersionForRequestData:(id)a3 error:(id)a4 destinations:(id)a5 options:(id)a6;
- (void)sendResponse:(id)a3 toDestinations:(id)a4 options:(id)a5;
@end

@implementation WFRemoteExecutionIncomingRunRequestSession

- (void)finishWithError:(id)a3
{
  v13 = a3;
  [(WFRemoteExecutionIncomingRunRequestSession *)self finish];
  v4 = [(WFRemoteExecutionIncomingRunRequestSession *)self lastKnownDestinations];
  if (v4)
  {
    v5 = v4;
    v6 = [(WFRemoteExecutionSession *)self request];

    if (v6)
    {
      v7 = [WFRemoteExecutionRunRequestResponse alloc];
      v8 = [(WFRemoteExecutionSession *)self request];
      v9 = [v8 identifier];
      v10 = [(WFRemoteExecutionRunRequestResponse *)v7 initWithRunRequestIdentifier:v9 variables:0 output:0 error:v13];

      v11 = [(WFRemoteExecutionIncomingRunRequestSession *)self lastKnownDestinations];
      v12 = [(WFRemoteExecutionIncomingRunRequestSession *)self lastKnownOptions];
      [(WFRemoteExecutionIncomingRunRequestSession *)self sendResponse:v10 toDestinations:v11 options:v12];
    }
  }
}

- (void)finish
{
  v3 = [(WFRemoteExecutionIncomingRunRequestSession *)self controller];
  [v3 stop];

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

- (void)handleIncomingFileForRemoteExecutionWithURL:(id)a3 withIdentifier:(id)a4 metadata:(id)a5 destinations:(id)a6 options:(id)a7
{
  v22 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = a5;
  [(WFRemoteExecutionIncomingRunRequestSession *)self setLastKnownDestinations:v13];
  [(WFRemoteExecutionIncomingRunRequestSession *)self setLastKnownOptions:v14];
  v16 = [v15 objectForKey:@"version"];

  if (+[WFRemoteExecutionOutgoingFileSession supportsVersion:](WFRemoteExecutionOutgoingFileSession, "supportsVersion:", [v16 integerValue]))
  {
    v17 = [(WFRemoteExecutionIncomingRunRequestSession *)self controller];
    [(WFRemoteExecutionRunRequestResponse *)v17 handleIncomingFileForRemoteExecutionWithURL:v22 withIdentifier:v12];
  }

  else
  {
    [(WFRemoteExecutionSession *)self setState:2];
    v18 = [WFRemoteExecutionRunRequestResponse alloc];
    v19 = [(WFRemoteExecutionSession *)self request];
    v20 = [v19 identifier];
    v21 = +[(WFRemoteExecutionRequest *)WFRemoteExecutionRunRequestResponse];
    v17 = [(WFRemoteExecutionRunRequestResponse *)v18 initWithRunRequestIdentifier:v20 variables:0 output:0 error:v21];

    [(WFRemoteExecutionIncomingRunRequestSession *)self sendResponse:v17 toDestinations:v13 options:v14];
  }
}

- (void)sendResponse:(id)a3 toDestinations:(id)a4 options:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(WFRemoteExecutionSession *)self setState:201];
  v11 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v30 = 0;
  v12 = [v8 writeTo:v11 error:&v30];
  v13 = v30;
  if (v12)
  {
    v14 = objc_alloc(MEMORY[0x1E69A5388]);
    v15 = [v11 immutableData];
    v16 = [v14 initWithProtobufData:v15 type:2 isResponse:0];

    [(WFRemoteExecutionSession *)self restartTimeout];
    v17 = [(WFRemoteExecutionSession *)self service];
    v28 = 0;
    v29 = 0;
    v18 = v9;
    v27 = v10;
    v19 = [v17 sendProtobuf:v16 toDestinations:v9 priority:300 options:v10 identifier:&v29 error:&v28];
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
        v34 = self;
        v35 = 2114;
        v36 = v21;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_ERROR, "%s %{public}@ failed to send with error: %{public}@", buf, 0x20u);
      }

      v22 = 1;
    }

    v9 = v18;
    [(WFRemoteExecutionSession *)self setState:v22];
    [(WFRemoteExecutionIncomingRunRequestSession *)self finish];

    v10 = v27;
  }

  else
  {
    v23 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v24 = [v8 identifier];
      *buf = 136315650;
      v32 = "[WFRemoteExecutionIncomingRunRequestSession sendResponse:toDestinations:options:]";
      v33 = 2114;
      v34 = v24;
      v35 = 2114;
      v36 = v13;
      _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_FAULT, "%s <%{public}@> failed to write protobuf with error: %{public}@", buf, 0x20u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionIncomingRunRequestSession *)self finish];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)handleUnsupportedVersionForRequestData:(id)a3 error:(id)a4 destinations:(id)a5 options:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (a3)
  {
    v18 = 0;
    v13 = [WFRemoteExecutionRequest identifierFromData:a3 error:&v18];
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

      v16 = [[WFRemoteExecutionRunRequestResponse alloc] initWithRunRequestIdentifier:v13 variables:0 output:0 error:v10];
      [(WFRemoteExecutionIncomingRunRequestSession *)self sendResponse:v16 toDestinations:v11 options:v12];
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

- (void)handleIncomingProtobuf:(id)a3 destinations:(id)a4 options:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(WFRemoteExecutionIncomingRunRequestSession *)self setLastKnownDestinations:v9];
  [(WFRemoteExecutionIncomingRunRequestSession *)self setLastKnownOptions:v10];
  [(WFRemoteExecutionSession *)self restartTimeout];
  [(WFRemoteExecutionSession *)self setState:200];
  v11 = [WFRemoteExecutionRunRequest alloc];
  v12 = [v8 data];
  v25 = 0;
  v13 = [(WFRemoteExecutionRunRequest *)v11 initWithData:v12 error:&v25];
  v14 = v25;

  if (v13)
  {
    [(WFRemoteExecutionSession *)self setRequest:v13];
    v15 = [objc_alloc(MEMORY[0x1E69E0C20]) initWithEnvironment:4 runningContext:0 presentationMode:0];
    [v15 setDelegate:self];
    v16 = [v8 data];
    v24 = 0;
    [v15 runActionWithRunRequestData:v16 error:&v24];
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
      v22 = [v8 data];
      [(WFRemoteExecutionIncomingRunRequestSession *)self handleUnsupportedVersionForRequestData:v22 error:v14 destinations:v9 options:v10];
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