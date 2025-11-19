@interface WFRemoteExecutionIncomingStopSession
- (void)handleIncomingProtobuf:(id)a3 currentlyActiveSessions:(id)a4;
@end

@implementation WFRemoteExecutionIncomingStopSession

- (void)handleIncomingProtobuf:(id)a3 currentlyActiveSessions:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(WFRemoteExecutionSession *)self setState:200];
  v8 = objc_alloc(MEMORY[0x1E69C65B8]);
  v9 = [v6 data];
  v10 = [v8 initWithData:v9];

  v11 = objc_alloc_init(WFRemoteExecutionStopRequest);
  v37 = 0;
  LOBYTE(v8) = [(WFRemoteExecutionRequest *)v11 readFrom:v10 error:&v37];
  v12 = v37;
  if (v8)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v28 = v12;
      v29 = v10;
      v30 = self;
      v31 = v7;
      v32 = v6;
      v16 = *v34;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          v19 = [v18 request];
          v20 = [v19 identifier];
          v21 = [(WFRemoteExecutionStopRequest *)v11 requestIdentifier];
          v22 = [v20 isEqualToString:v21];

          if (v22)
          {
            v23 = getWFRemoteExecutionLogObject();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v40 = "[WFRemoteExecutionIncomingStopSession handleIncomingProtobuf:currentlyActiveSessions:]";
              v41 = 2112;
              v42 = v18;
              _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_DEFAULT, "%s Found a match for the stop request; stopping session: %@", buf, 0x16u);
            }

            [v18 finish];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v15);
      v7 = v31;
      v6 = v32;
      v10 = v29;
      self = v30;
      v12 = v28;
    }

    v24 = 202;
  }

  else
  {
    v25 = [WFRemoteExecutionRequest isUnsupportedVersionError:v12];
    v26 = getWFRemoteExecutionLogObject();
    v13 = v26;
    if (v25)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v40 = "[WFRemoteExecutionIncomingStopSession handleIncomingProtobuf:currentlyActiveSessions:]";
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Encountered unsupported version of stop request response", buf, 0xCu);
      }

      v24 = 2;
    }

    else
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v40 = "[WFRemoteExecutionIncomingStopSession handleIncomingProtobuf:currentlyActiveSessions:]";
        v41 = 2114;
        v42 = v12;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s failed to read stop request: %{public}@", buf, 0x16u);
      }

      v24 = 1;
    }
  }

  [(WFRemoteExecutionSession *)self setState:v24];
  v27 = *MEMORY[0x1E69E9840];
}

@end