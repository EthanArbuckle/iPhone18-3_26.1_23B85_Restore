@interface WFRemoteExecutionIncomingAlertSession
- (void)finishWithError:(id)error;
- (void)handleIncomingProtobuf:(id)protobuf currentlyActiveSessions:(id)sessions responseDestinations:(id)destinations options:(id)options;
- (void)handleTimeout;
- (void)sendSelectedButton:(id)button forAlertWithIdentifier:(id)identifier error:(id)error destinations:(id)destinations options:(id)options;
@end

@implementation WFRemoteExecutionIncomingAlertSession

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:203];

  [(WFRemoteExecutionSession *)self finish];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  [(WFRemoteExecutionSession *)self finish];
  lastKnownDestinations = [(WFRemoteExecutionIncomingAlertSession *)self lastKnownDestinations];

  if (lastKnownDestinations)
  {
    request = [(WFRemoteExecutionSession *)self request];
    identifier = [request identifier];
    lastKnownDestinations2 = [(WFRemoteExecutionIncomingAlertSession *)self lastKnownDestinations];
    lastKnownOptions = [(WFRemoteExecutionIncomingAlertSession *)self lastKnownOptions];
    [(WFRemoteExecutionIncomingAlertSession *)self sendSelectedButton:0 forAlertWithIdentifier:identifier error:errorCopy destinations:lastKnownDestinations2 options:lastKnownOptions];
  }
}

- (void)sendSelectedButton:(id)button forAlertWithIdentifier:(id)identifier error:(id)error destinations:(id)destinations options:(id)options
{
  v51 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  identifierCopy = identifier;
  errorCopy = error;
  destinationsCopy = destinations;
  optionsCopy = options;
  if (identifierCopy)
  {
    if (destinationsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAlertSession.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (destinationsCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAlertSession.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];

LABEL_3:
  [(WFRemoteExecutionSession *)self setState:201];
  v17 = [[WFRemoteExecutionAlertRequestResponse alloc] initWithSelectedButton:buttonCopy requestIdentifier:identifierCopy error:errorCopy];
  v18 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v42 = 0;
  v19 = [(WFRemoteExecutionRequest *)v17 writeTo:v18 error:&v42];
  v20 = v42;
  if (v19)
  {
    v37 = errorCopy;
    v21 = objc_alloc(MEMORY[0x1E69A5388]);
    immutableData = [v18 immutableData];
    v23 = [v21 initWithProtobufData:immutableData type:4 isResponse:0];

    v24 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      identifier = [(WFRemoteExecutionRequest *)v17 identifier];
      *buf = 136315906;
      v44 = "[WFRemoteExecutionIncomingAlertSession sendSelectedButton:forAlertWithIdentifier:error:destinations:options:]";
      v45 = 2114;
      v46 = identifier;
      v47 = 2114;
      v48 = identifierCopy;
      v49 = 2114;
      v50 = buttonCopy;
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_INFO, "%s <%{public}@> sending response for alert (%{public}@) with selected button: %{public}@", buf, 0x2Au);
    }

    v38 = buttonCopy;

    [(WFRemoteExecutionSession *)self restartTimeout];
    service = [(WFRemoteExecutionSession *)self service];
    v40 = 0;
    v41 = 0;
    v36 = v23;
    v27 = [service sendProtobuf:v23 toDestinations:destinationsCopy priority:300 options:optionsCopy identifier:&v41 error:&v40];
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
        identifier2 = [(WFRemoteExecutionRequest *)v17 identifier];
        *buf = 136315650;
        v44 = "[WFRemoteExecutionIncomingAlertSession sendSelectedButton:forAlertWithIdentifier:error:destinations:options:]";
        v45 = 2114;
        v46 = identifier2;
        v47 = 2114;
        v48 = v29;
        _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_FAULT, "%s <%{public}@> Failed to send alert response: %{public}@", buf, 0x20u);
      }

      [(WFRemoteExecutionSession *)self setState:1];
    }

    errorCopy = v37;
    buttonCopy = v38;
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

- (void)handleIncomingProtobuf:(id)protobuf currentlyActiveSessions:(id)sessions responseDestinations:(id)destinations options:(id)options
{
  v76 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  sessionsCopy = sessions;
  destinationsCopy = destinations;
  optionsCopy = options;
  [(WFRemoteExecutionIncomingAlertSession *)self setLastKnownDestinations:destinationsCopy];
  [(WFRemoteExecutionIncomingAlertSession *)self setLastKnownOptions:optionsCopy];
  selfCopy = self;
  [(WFRemoteExecutionSession *)self setState:200];
  v14 = objc_alloc(MEMORY[0x1E69C65B8]);
  data = [protobufCopy data];
  v16 = [v14 initWithData:data];

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

    [(WFRemoteExecutionSession *)selfCopy setState:2];
LABEL_6:
    v54 = v17;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v21 = sessionsCopy;
    v22 = [v21 countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (!v22)
    {

      goto LABEL_25;
    }

    v23 = v22;
    v53 = v16;
    v50 = optionsCopy;
    v51 = destinationsCopy;
    v52 = sessionsCopy;
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

      request = [v28 request];
      identifier = [request identifier];
      associatedRunRequestIdentifier = [(WFRemoteExecutionAlertRequest *)v57 associatedRunRequestIdentifier];
      v32 = [identifier isEqualToString:associatedRunRequestIdentifier];

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

          sessionsCopy = v52;
          optionsCopy = v50;
          destinationsCopy = v51;
          v16 = v53;
          v37 = v56;
          if (v56)
          {
            v17 = v54;
            if ([(WFRemoteExecutionSession *)selfCopy state]== 2)
            {
              [v56 finishWithError:v54];
            }

            else if (VCIsDeviceLocked())
            {
              [(WFRemoteExecutionSession *)selfCopy setState:1];
              v38 = getWFRemoteExecutionLogObject();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v69 = "[WFRemoteExecutionIncomingAlertSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:options:]";
                _os_log_impl(&dword_1CA256000, v38, OS_LOG_TYPE_ERROR, "%s Found a outgoing run request session to show the alert in, but the device is locked", buf, 0xCu);
              }

              wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
              [v56 finishWithError:wfUnsupportedUserInterfaceError];
            }

            else
            {
              v58[0] = MEMORY[0x1E69E9820];
              v58[1] = 3221225472;
              v58[2] = __117__WFRemoteExecutionIncomingAlertSession_handleIncomingProtobuf_currentlyActiveSessions_responseDestinations_options___block_invoke;
              v58[3] = &unk_1E8377D48;
              v58[4] = selfCopy;
              v40 = v57;
              v59 = v40;
              v41 = v51;
              v60 = v41;
              v42 = v50;
              v61 = v42;
              [(WFRemoteExecutionAlertRequest *)v40 inflateAlertWithBlock:v58];
              [(WFRemoteExecutionSession *)selfCopy setRequest:v40];
              userInterface = [v56 userInterface];
              isRunningWithSiriUI = [userInterface isRunningWithSiriUI];

              if (isRunningWithSiriUI)
              {
                identifier2 = [(WFRemoteExecutionRequest *)v40 identifier];
                userCancelledError = [MEMORY[0x1E696ABC0] userCancelledError];
                [(WFRemoteExecutionIncomingAlertSession *)selfCopy sendSelectedButton:0 forAlertWithIdentifier:identifier2 error:userCancelledError destinations:v41 options:v42];

                wfUnsupportedUserInterfaceError2 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
                v37 = v56;
                [v56 finishWithError:wfUnsupportedUserInterfaceError2];
              }

              else
              {
                v37 = v56;
                wfUnsupportedUserInterfaceError2 = [v56 userInterface];
                alert = [(WFRemoteExecutionAlertRequest *)v40 alert];
                [wfUnsupportedUserInterfaceError2 presentAlert:alert];
              }

              v16 = v53;
            }

            goto LABEL_38;
          }

LABEL_25:
          [(WFRemoteExecutionSession *)selfCopy setState:-420];
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