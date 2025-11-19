@interface WFRemoteExecutionIncomingAlertSession
- (void)finishWithError:(id)a3;
- (void)handleIncomingProtobuf:(id)a3 currentlyActiveSessions:(id)a4 responseDestinations:(id)a5 options:(id)a6;
- (void)handleTimeout;
- (void)sendSelectedButton:(id)a3 forAlertWithIdentifier:(id)a4 error:(id)a5 destinations:(id)a6 options:(id)a7;
@end

@implementation WFRemoteExecutionIncomingAlertSession

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:203];

  [(WFRemoteExecutionSession *)self finish];
}

- (void)finishWithError:(id)a3
{
  v9 = a3;
  [(WFRemoteExecutionSession *)self finish];
  v4 = [(WFRemoteExecutionIncomingAlertSession *)self lastKnownDestinations];

  if (v4)
  {
    v5 = [(WFRemoteExecutionSession *)self request];
    v6 = [v5 identifier];
    v7 = [(WFRemoteExecutionIncomingAlertSession *)self lastKnownDestinations];
    v8 = [(WFRemoteExecutionIncomingAlertSession *)self lastKnownOptions];
    [(WFRemoteExecutionIncomingAlertSession *)self sendSelectedButton:0 forAlertWithIdentifier:v6 error:v9 destinations:v7 options:v8];
  }
}

- (void)sendSelectedButton:(id)a3 forAlertWithIdentifier:(id)a4 error:(id)a5 destinations:(id)a6 options:(id)a7
{
  v51 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v39 = a7;
  if (v14)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAlertSession.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v35 = [MEMORY[0x1E696AAA8] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAlertSession.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];

LABEL_3:
  [(WFRemoteExecutionSession *)self setState:201];
  v17 = [[WFRemoteExecutionAlertRequestResponse alloc] initWithSelectedButton:v13 requestIdentifier:v14 error:v15];
  v18 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v42 = 0;
  v19 = [(WFRemoteExecutionRequest *)v17 writeTo:v18 error:&v42];
  v20 = v42;
  if (v19)
  {
    v37 = v15;
    v21 = objc_alloc(MEMORY[0x1E69A5388]);
    v22 = [v18 immutableData];
    v23 = [v21 initWithProtobufData:v22 type:4 isResponse:0];

    v24 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [(WFRemoteExecutionRequest *)v17 identifier];
      *buf = 136315906;
      v44 = "[WFRemoteExecutionIncomingAlertSession sendSelectedButton:forAlertWithIdentifier:error:destinations:options:]";
      v45 = 2114;
      v46 = v25;
      v47 = 2114;
      v48 = v14;
      v49 = 2114;
      v50 = v13;
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_INFO, "%s <%{public}@> sending response for alert (%{public}@) with selected button: %{public}@", buf, 0x2Au);
    }

    v38 = v13;

    [(WFRemoteExecutionSession *)self restartTimeout];
    v26 = [(WFRemoteExecutionSession *)self service];
    v40 = 0;
    v41 = 0;
    v36 = v23;
    v27 = [v26 sendProtobuf:v23 toDestinations:v16 priority:300 options:v39 identifier:&v41 error:&v40];
    v28 = v41;
    v29 = v40;

    if (v27)
    {
      [(WFRemoteExecutionSession *)self setIdsIdentifier:v28];
      [(WFRemoteExecutionSession *)self setState:202];
      [(WFRemoteExecutionSession *)self finish];
    }

    else
    {
      v31 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        v32 = [(WFRemoteExecutionRequest *)v17 identifier];
        *buf = 136315650;
        v44 = "[WFRemoteExecutionIncomingAlertSession sendSelectedButton:forAlertWithIdentifier:error:destinations:options:]";
        v45 = 2114;
        v46 = v32;
        v47 = 2114;
        v48 = v29;
        _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_FAULT, "%s <%{public}@> Failed to send alert response: %{public}@", buf, 0x20u);
      }

      [(WFRemoteExecutionSession *)self setState:1];
    }

    v15 = v37;
    v13 = v38;
  }

  else
  {
    v30 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v44 = "[WFRemoteExecutionIncomingAlertSession sendSelectedButton:forAlertWithIdentifier:error:destinations:options:]";
      v45 = 2114;
      v46 = v20;
      _os_log_impl(&dword_1CA256000, v30, OS_LOG_TYPE_FAULT, "%s failed to write alert response protobuf: %{public}@", buf, 0x16u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)handleIncomingProtobuf:(id)a3 currentlyActiveSessions:(id)a4 responseDestinations:(id)a5 options:(id)a6
{
  v76 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(WFRemoteExecutionIncomingAlertSession *)self setLastKnownDestinations:v12];
  [(WFRemoteExecutionIncomingAlertSession *)self setLastKnownOptions:v13];
  v55 = self;
  [(WFRemoteExecutionSession *)self setState:200];
  v14 = objc_alloc(MEMORY[0x1E69C65B8]);
  v15 = [v10 data];
  v16 = [v14 initWithData:v15];

  v66 = 0;
  v57 = objc_alloc_init(WFRemoteExecutionAlertRequest);
  LOBYTE(v14) = [(WFRemoteExecutionRequest *)v57 readFrom:v16 error:&v66];
  v17 = v66;
  if (v14)
  {
    goto LABEL_6;
  }

  v18 = [WFRemoteExecutionRequest isUnsupportedVersionError:v17];
  v19 = getWFRemoteExecutionLogObject();
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v69 = "[WFRemoteExecutionIncomingAlertSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:options:]";
      _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s Encountered unsupported version of an alert request", buf, 0xCu);
    }

    [(WFRemoteExecutionSession *)v55 setState:2];
LABEL_6:
    v54 = v17;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v21 = v11;
    v22 = [v21 countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (!v22)
    {

      goto LABEL_25;
    }

    v23 = v22;
    v53 = v16;
    v50 = v13;
    v51 = v12;
    v52 = v11;
    v56 = 0;
    v24 = *v63;
LABEL_8:
    v25 = 0;
    while (1)
    {
      if (*v63 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v62 + 1) + 8 * v25);
      v27 = objc_opt_class();
      v28 = v26;
      if (!v28)
      {
        goto LABEL_19;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v29 = [v28 request];
      v30 = [v29 identifier];
      v31 = [(WFRemoteExecutionAlertRequest *)v57 associatedRunRequestIdentifier];
      v32 = [v30 isEqualToString:v31];

      if (v32)
      {
        v33 = v28;
        v28 = v56;
        v56 = v33;
LABEL_18:

        v28 = v33;
      }

LABEL_19:

      if (v23 == ++v25)
      {
        v23 = [v21 countByEnumeratingWithState:&v62 objects:v67 count:16];
        if (!v23)
        {

          v11 = v52;
          v13 = v50;
          v12 = v51;
          v16 = v53;
          v37 = v56;
          if (v56)
          {
            v17 = v54;
            if ([(WFRemoteExecutionSession *)v55 state]== 2)
            {
              [v56 finishWithError:v54];
            }

            else if (VCIsDeviceLocked())
            {
              [(WFRemoteExecutionSession *)v55 setState:1];
              v38 = getWFRemoteExecutionLogObject();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v69 = "[WFRemoteExecutionIncomingAlertSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:options:]";
                _os_log_impl(&dword_1CA256000, v38, OS_LOG_TYPE_ERROR, "%s Found a outgoing run request session to show the alert in, but the device is locked", buf, 0xCu);
              }

              v39 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
              [v56 finishWithError:v39];
            }

            else
            {
              v58[0] = MEMORY[0x1E69E9820];
              v58[1] = 3221225472;
              v58[2] = __117__WFRemoteExecutionIncomingAlertSession_handleIncomingProtobuf_currentlyActiveSessions_responseDestinations_options___block_invoke;
              v58[3] = &unk_1E8377D48;
              v58[4] = v55;
              v40 = v57;
              v59 = v40;
              v41 = v51;
              v60 = v41;
              v42 = v50;
              v61 = v42;
              [(WFRemoteExecutionAlertRequest *)v40 inflateAlertWithBlock:v58];
              [(WFRemoteExecutionSession *)v55 setRequest:v40];
              v43 = [v56 userInterface];
              v44 = [v43 isRunningWithSiriUI];

              if (v44)
              {
                v45 = [(WFRemoteExecutionRequest *)v40 identifier];
                v46 = [MEMORY[0x1E696ABC0] userCancelledError];
                [(WFRemoteExecutionIncomingAlertSession *)v55 sendSelectedButton:0 forAlertWithIdentifier:v45 error:v46 destinations:v41 options:v42];

                v47 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
                v37 = v56;
                [v56 finishWithError:v47];
              }

              else
              {
                v37 = v56;
                v47 = [v56 userInterface];
                v48 = [(WFRemoteExecutionAlertRequest *)v40 alert];
                [v47 presentAlert:v48];
              }

              v16 = v53;
            }

            goto LABEL_38;
          }

LABEL_25:
          [(WFRemoteExecutionSession *)v55 setState:-420];
          v17 = v54;
          goto LABEL_38;
        }

        goto LABEL_8;
      }
    }

    v34 = getWFGeneralLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      v35 = objc_opt_class();
      *buf = 136315906;
      v69 = "WFEnforceClass";
      v70 = 2114;
      v71 = v28;
      v72 = 2114;
      v73 = v35;
      v74 = 2114;
      v75 = v27;
      v36 = v35;
      _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_FAULT, "%s Encountered unsupported version of an alert request", buf, 0x2Au);
    }

    v33 = 0;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v69 = "[WFRemoteExecutionIncomingAlertSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:options:]";
    v70 = 2114;
    v71 = v17;
    _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, "%s failed to read alert request: %{public}@", buf, 0x16u);
  }

LABEL_38:
  v49 = *MEMORY[0x1E69E9840];
}

id __117__WFRemoteExecutionIncomingAlertSession_handleIncomingProtobuf_currentlyActiveSessions_responseDestinations_options___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:{objc_msgSend(v3, "preferredStyle")}];
  v5 = [v3 title];
  [v4 setTitle:v5];

  v6 = [v3 message];
  v20 = v4;
  [v4 setMessage:v6];

  v23 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = v3;
  obj = [v3 buttons];
  v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = MEMORY[0x1E6996C78];
        v13 = [v11 title];
        v14 = [v11 style];
        v15 = [v11 preferred];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __117__WFRemoteExecutionIncomingAlertSession_handleIncomingProtobuf_currentlyActiveSessions_responseDestinations_options___block_invoke_2;
        v24[3] = &unk_1E837C910;
        v16 = *(a1 + 40);
        v24[4] = *(a1 + 32);
        v24[5] = v11;
        v25 = v16;
        v26 = *(a1 + 48);
        v27 = *(a1 + 56);
        v17 = [v12 buttonWithTitle:v13 style:v14 preferred:v15 handler:v24];

        [v23 addObject:v17];
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  [v20 setButtons:v23];
  v18 = *MEMORY[0x1E69E9840];

  return v20;
}

void __117__WFRemoteExecutionIncomingAlertSession_handleIncomingProtobuf_currentlyActiveSessions_responseDestinations_options___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) title];
  v3 = [*(a1 + 48) identifier];
  [v2 sendSelectedButton:v4 forAlertWithIdentifier:v3 error:0 destinations:*(a1 + 56) options:*(a1 + 64)];
}

@end