@interface WFRemoteExecutionIncomingDialogRequestSession
- (void)finishWithError:(id)a3;
- (void)handleIncomingProtobuf:(id)a3 currentlyActiveSessions:(id)a4 destinations:(id)a5 options:(id)a6;
- (void)handleTimeout;
- (void)sendResponseWithOriginatingRequestIdentifier:(id)a3 dialogResponse:(id)a4 error:(id)a5 destinations:(id)a6 options:(id)a7;
- (void)sendToDestinations:(id)a3 options:(id)a4;
@end

@implementation WFRemoteExecutionIncomingDialogRequestSession

- (void)sendToDestinations:(id)a3 options:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = WFRemoteExecutionIncomingDialogRequestSession;
  [(WFRemoteExecutionSession *)&v31 sendToDestinations:v6 options:v7];
  v8 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v9 = [(WFRemoteExecutionIncomingDialogRequestSession *)self response];
  v30 = 0;
  v10 = [v9 writeTo:v8 error:&v30];
  v11 = v30;

  if (v10)
  {
    v12 = objc_alloc(MEMORY[0x1E69A5388]);
    v13 = [v8 immutableData];
    v14 = [v12 initWithProtobufData:v13 type:11 isResponse:0];

    v15 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(WFRemoteExecutionIncomingDialogRequestSession *)self response];
      v17 = [v16 identifier];
      *buf = 136315394;
      v33 = "[WFRemoteExecutionIncomingDialogRequestSession sendToDestinations:options:]";
      v34 = 2114;
      v35 = v17;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s <%{public}@> sending dialog request response", buf, 0x16u);
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
        v33 = "[WFRemoteExecutionIncomingDialogRequestSession sendToDestinations:options:]";
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
      v24 = [(WFRemoteExecutionIncomingDialogRequestSession *)self response];
      v25 = [v24 identifier];
      *buf = 136315650;
      v33 = "[WFRemoteExecutionIncomingDialogRequestSession sendToDestinations:options:]";
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

- (void)sendResponseWithOriginatingRequestIdentifier:(id)a3 dialogResponse:(id)a4 error:(id)a5 destinations:(id)a6 options:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[WFRemoteExecutionDialogRequestResponse alloc] initWithOriginatingRequestIdentifier:v16 dialogResponse:v15 error:v14];

  [(WFRemoteExecutionIncomingDialogRequestSession *)self setResponse:v17];
  [(WFRemoteExecutionIncomingDialogRequestSession *)self sendToDestinations:v13 options:v12];
}

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:203];

  [(WFRemoteExecutionSession *)self finish];
}

- (void)finishWithError:(id)a3
{
  [(WFRemoteExecutionSession *)self setState:202];

  [(WFRemoteExecutionSession *)self finish];
}

- (void)handleIncomingProtobuf:(id)a3 currentlyActiveSessions:(id)a4 destinations:(id)a5 options:(id)a6
{
  v94 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = [MEMORY[0x1E696AAA8] currentHandler];
    [v65 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingDialogRequestSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"protobuf"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v66 = [MEMORY[0x1E696AAA8] currentHandler];
  [v66 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingDialogRequestSession.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"responseDestinations"}];

LABEL_3:
  [(WFRemoteExecutionSession *)self setState:200];
  v15 = [WFRemoteExecutionDialogRequest alloc];
  v16 = [v11 data];
  v84 = 0;
  v17 = [(WFRemoteExecutionDialogRequest *)v15 initWithData:v16 error:&v84];
  v18 = v84;

  if (v17)
  {
    v72 = v18;
    v73 = v14;
    v71 = self;
    [(WFRemoteExecutionSession *)self setRequest:v17];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v19 = v12;
    v20 = [v19 countByEnumeratingWithState:&v79 objects:v85 count:16];
    if (!v20)
    {

      goto LABEL_33;
    }

    v21 = v20;
    v68 = v11;
    v69 = v13;
    v67 = v12;
    v74 = 0;
    v22 = *v80;
    v23 = off_1E836F000;
LABEL_6:
    v24 = 0;
    v75 = v21;
    while (1)
    {
      if (*v80 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v79 + 1) + 8 * v24);
      v26 = v23[10];
      v27 = objc_opt_class();
      v28 = v25;
      if (!v28)
      {
        goto LABEL_18;
      }

      if (objc_opt_isKindOfClass())
      {
        v29 = v23;
        v30 = v19;
        v31 = [v28 request];
        v32 = [v31 identifier];
        v33 = v17;
        v34 = [(WFRemoteExecutionDialogRequest *)v17 runRequestIdentifier];
        v35 = [v32 isEqualToString:v34];

        if (!v35)
        {
          v17 = v33;
          v19 = v30;
          v23 = v29;
          v21 = v75;
          goto LABEL_18;
        }

        v36 = v28;
        v28 = v74;
        v74 = v36;
        v17 = v33;
        v19 = v30;
        v23 = v29;
        v21 = v75;
      }

      else
      {
        v37 = getWFGeneralLogObject();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          v38 = objc_opt_class();
          *buf = 136315906;
          v87 = "WFEnforceClass";
          v88 = 2114;
          v89 = v28;
          v90 = 2114;
          v91 = v38;
          v92 = 2114;
          v93 = v27;
          v39 = v38;
          _os_log_impl(&dword_1CA256000, v37, OS_LOG_TYPE_FAULT, "%s Encountered unsupported version of dialog request", buf, 0x2Au);
        }

        v36 = 0;
      }

      v28 = v36;
LABEL_18:

      if (v21 == ++v24)
      {
        v21 = [v19 countByEnumeratingWithState:&v79 objects:v85 count:16];
        if (!v21)
        {

          v12 = v67;
          v11 = v68;
          v13 = v69;
          v40 = v74;
          if (v74)
          {
            v18 = v72;
            if (VCIsDeviceLocked())
            {
              [(WFRemoteExecutionSession *)v71 setState:1];
              v41 = getWFRemoteExecutionLogObject();
              v14 = v73;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v87 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
                _os_log_impl(&dword_1CA256000, v41, OS_LOG_TYPE_ERROR, "%s Found a outgoing run request session to show the alert in, but the device is locked", buf, 0xCu);
              }

              v42 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
              [v74 finishWithError:v42];
            }

            else
            {
              v51 = [v74 userInterface];
              v52 = objc_opt_respondsToSelector();

              v14 = v73;
              if (v52)
              {
                v53 = [v74 userInterface];
                v54 = [v53 dialogTransformer];

                v55 = [v54 userInterfacePresenter];

                if (v55)
                {
                  [v54 userInterfacePresenter];
                  v57 = v56 = v17;
                  v58 = [(WFRemoteExecutionDialogRequest *)v56 dialogRequest];
                  v59 = [v54 runningContext];
                  v76[0] = MEMORY[0x1E69E9820];
                  v76[1] = 3221225472;
                  v76[2] = __117__WFRemoteExecutionIncomingDialogRequestSession_handleIncomingProtobuf_currentlyActiveSessions_destinations_options___block_invoke;
                  v76[3] = &unk_1E83771B0;
                  v76[4] = v71;
                  v77 = v69;
                  v78 = v73;
                  [v57 showDialogRequest:v58 runningContext:v59 completionHandler:v76];

                  v17 = v56;
                  v40 = v74;
                }

                else
                {
                  v62 = getWFRemoteExecutionLogObject();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    v87 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
                    _os_log_impl(&dword_1CA256000, v62, OS_LOG_TYPE_DEFAULT, "%s Unable to handle dialog request locally, need to handoff", buf, 0xCu);
                  }

                  v63 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
                  [v74 finishWithError:v63];

                  [(WFRemoteExecutionSession *)v71 finish];
                }
              }

              else
              {
                v60 = getWFRemoteExecutionLogObject();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v87 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
                  _os_log_impl(&dword_1CA256000, v60, OS_LOG_TYPE_DEFAULT, "%s Unable to handle dialog request locally, need to handoff", buf, 0xCu);
                }

                v61 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
                [v74 finishWithError:v61];

                [(WFRemoteExecutionSession *)v71 finish];
              }
            }

            goto LABEL_52;
          }

LABEL_33:
          [(WFRemoteExecutionSession *)v71 setState:-420];
          [(WFRemoteExecutionSession *)v71 finish];
          v18 = v72;
          v14 = v73;
          goto LABEL_52;
        }

        goto LABEL_6;
      }
    }
  }

  v43 = [WFRemoteExecutionRequest isUnsupportedVersionError:v18];
  v44 = getWFRemoteExecutionLogObject();
  v45 = os_log_type_enabled(v44, OS_LOG_TYPE_FAULT);
  if (v43)
  {
    v70 = v13;
    if (v45)
    {
      *buf = 136315138;
      v87 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
      _os_log_impl(&dword_1CA256000, v44, OS_LOG_TYPE_FAULT, "%s Encountered unsupported version of dialog request", buf, 0xCu);
    }

    [(WFRemoteExecutionSession *)self setState:2];
    v46 = [v11 data];
    v83 = 0;
    v47 = [WFRemoteExecutionRequest identifierFromData:v46 error:&v83];
    v48 = v83;

    v49 = getWFRemoteExecutionLogObject();
    v50 = v49;
    if (v47)
    {
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v87 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
        _os_log_impl(&dword_1CA256000, v50, OS_LOG_TYPE_DEFAULT, "%s Sending unsupported dialog request error back", buf, 0xCu);
      }

      v13 = v70;
      [(WFRemoteExecutionIncomingDialogRequestSession *)self sendResponseWithOriginatingRequestIdentifier:v47 dialogResponse:0 error:v18 destinations:v70 options:v14];
    }

    else
    {
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v87 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
        v88 = 2112;
        v89 = v48;
        _os_log_impl(&dword_1CA256000, v50, OS_LOG_TYPE_FAULT, "%s Unable to read identifier from base request: %@, so unable to send unsupported version error back", buf, 0x16u);
      }

      [(WFRemoteExecutionSession *)self finish];
      v13 = v70;
    }

    v17 = 0;
  }

  else
  {
    if (v45)
    {
      *buf = 136315394;
      v87 = "[WFRemoteExecutionIncomingDialogRequestSession handleIncomingProtobuf:currentlyActiveSessions:destinations:options:]";
      v88 = 2114;
      v89 = v18;
      _os_log_impl(&dword_1CA256000, v44, OS_LOG_TYPE_FAULT, "%s failed to read incoming dialog request from data, error: %{public}@", buf, 0x16u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
    [(WFRemoteExecutionSession *)self finish];
  }

LABEL_52:

  v64 = *MEMORY[0x1E69E9840];
}

void __117__WFRemoteExecutionIncomingDialogRequestSession_handleIncomingProtobuf_currentlyActiveSessions_destinations_options___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  v9 = [v5 request];
  v8 = [v9 identifier];
  [v5 sendResponseWithOriginatingRequestIdentifier:v8 dialogResponse:v7 error:v6 destinations:a1[5] options:a1[6]];
}

@end