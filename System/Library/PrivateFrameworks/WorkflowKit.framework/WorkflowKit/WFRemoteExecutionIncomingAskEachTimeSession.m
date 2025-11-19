@interface WFRemoteExecutionIncomingAskEachTimeSession
- (id)missingParameterError;
- (void)finishWithError:(id)a3;
- (void)handleIncomingProtobuf:(id)a3 currentlyActiveSessions:(id)a4 responseDestinations:(id)a5 responseOptions:(id)a6;
- (void)handleTimeout;
- (void)sendResponse:(id)a3 destinations:(id)a4 options:(id)a5;
@end

@implementation WFRemoteExecutionIncomingAskEachTimeSession

- (id)missingParameterError
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v9[0] = *MEMORY[0x1E696A588];
  v3 = WFLocalizedString(@"Could Not Run Action");
  v10[0] = v3;
  v9[1] = *MEMORY[0x1E696A578];
  v4 = WFLocalizedString(@"An error occurred while executing an action on your iPhone");
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = [v2 errorWithDomain:@"WFRemoteExecutionCoordinatorErrorDomain" code:3 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)finishWithError:(id)a3
{
  v13 = a3;
  [(WFRemoteExecutionSession *)self finish];
  v4 = [(WFRemoteExecutionIncomingAskEachTimeSession *)self lastKnownDestinations];
  if (v4)
  {
    v5 = v4;
    v6 = [(WFRemoteExecutionSession *)self request];

    if (v6)
    {
      v7 = [WFRemoteExecutionAskEachTimeRequestResponse alloc];
      v8 = [(WFRemoteExecutionSession *)self request];
      v9 = [v8 identifier];
      v10 = [(WFRemoteExecutionAskEachTimeRequestResponse *)v7 initWithOriginatingRequestIdentifier:v9 inputtedStates:0 error:v13];

      v11 = [(WFRemoteExecutionIncomingAskEachTimeSession *)self lastKnownDestinations];
      v12 = [(WFRemoteExecutionIncomingAskEachTimeSession *)self lastKnownOptions];
      [(WFRemoteExecutionIncomingAskEachTimeSession *)self sendResponse:v10 destinations:v11 options:v12];
    }
  }
}

- (void)handleTimeout
{
  [(WFRemoteExecutionSession *)self setState:203];

  [(WFRemoteExecutionSession *)self finish];
}

- (void)sendResponse:(id)a3 destinations:(id)a4 options:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAskEachTimeSession.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"response"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAskEachTimeSession.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];

LABEL_3:
  [(WFRemoteExecutionIncomingAskEachTimeSession *)self setLastKnownDestinations:v10];
  [(WFRemoteExecutionIncomingAskEachTimeSession *)self setLastKnownOptions:v11];
  v12 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v32 = 0;
  v13 = [v9 writeTo:v12 error:&v32];
  v14 = v32;
  v15 = v14;
  if (v13)
  {
    v29 = v14;
    v16 = objc_alloc(MEMORY[0x1E69A5388]);
    v17 = [v12 immutableData];
    v18 = [v16 initWithProtobufData:v17 type:6 isResponse:0];

    v19 = [(WFRemoteExecutionSession *)self service];
    v30 = 0;
    v31 = 0;
    v20 = [v19 sendProtobuf:v18 toDestinations:v10 priority:300 options:v11 identifier:&v31 error:&v30];
    v21 = v31;
    v22 = v30;

    if (v20)
    {
      [(WFRemoteExecutionSession *)self setIdsIdentifier:v21];
      v23 = 202;
    }

    else
    {
      v25 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v34 = "[WFRemoteExecutionIncomingAskEachTimeSession sendResponse:destinations:options:]";
        v35 = 2114;
        v36 = v22;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s Failed to send ask each time request response: %{public}@", buf, 0x16u);
      }

      v23 = 1;
    }

    v15 = v29;
    [(WFRemoteExecutionSession *)self setState:v23];
  }

  else
  {
    v24 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v34 = "[WFRemoteExecutionIncomingAskEachTimeSession sendResponse:destinations:options:]";
      v35 = 2114;
      v36 = v15;
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s Failed to write response for ask each time request: %{public}@", buf, 0x16u);
    }

    [(WFRemoteExecutionSession *)self setState:1];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)handleIncomingProtobuf:(id)a3 currentlyActiveSessions:(id)a4 responseDestinations:(id)a5 responseOptions:(id)a6
{
  v132 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v91 = [MEMORY[0x1E696AAA8] currentHandler];
    [v91 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAskEachTimeSession.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"protobuf"}];

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_69:
    v92 = [MEMORY[0x1E696AAA8] currentHandler];
    [v92 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionIncomingAskEachTimeSession.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];

    goto LABEL_3;
  }

  if (!v13)
  {
    goto LABEL_69;
  }

LABEL_3:
  [(WFRemoteExecutionIncomingAskEachTimeSession *)self setLastKnownDestinations:v13];
  [(WFRemoteExecutionIncomingAskEachTimeSession *)self setLastKnownOptions:v14];
  [(WFRemoteExecutionSession *)self setState:200];
  v15 = [WFRemoteExecutionAskEachTimeRequest alloc];
  v16 = [v11 data];
  v120 = 0;
  v17 = [(WFRemoteExecutionAskEachTimeRequest *)v15 initWithData:v16 error:&v120];
  v18 = v120;

  v101 = v17;
  if (!v17)
  {
    v69 = [WFRemoteExecutionRequest isUnsupportedVersionError:v18];
    v70 = getWFRemoteExecutionLogObject();
    v71 = v70;
    if (v69)
    {
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v125 = "[WFRemoteExecutionIncomingAskEachTimeSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:responseOptions:]";
        _os_log_impl(&dword_1CA256000, v71, OS_LOG_TYPE_ERROR, "%s Encountered unsupported version of ask each time request", buf, 0xCu);
      }

      [(WFRemoteExecutionSession *)self setState:2];
      v72 = [v11 data];
      v119 = 0;
      v73 = [WFRemoteExecutionRequest identifierFromData:v72 error:&v119];
      v74 = v119;

      v75 = getWFRemoteExecutionLogObject();
      v76 = v75;
      if (v73)
      {
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v125 = "[WFRemoteExecutionIncomingAskEachTimeSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:responseOptions:]";
          _os_log_impl(&dword_1CA256000, v76, OS_LOG_TYPE_DEFAULT, "%s Sending unsupported version of ask each time request back", buf, 0xCu);
        }

        v77 = [[WFRemoteExecutionAskEachTimeRequestResponse alloc] initWithOriginatingRequestIdentifier:v73 inputtedStates:0 error:v18];
        [(WFRemoteExecutionIncomingAskEachTimeSession *)self sendResponse:v77 destinations:v13 options:v14];
      }

      else
      {
        if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v125 = "[WFRemoteExecutionIncomingAskEachTimeSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:responseOptions:]";
          v126 = 2112;
          v127 = v74;
          _os_log_impl(&dword_1CA256000, v76, OS_LOG_TYPE_FAULT, "%s Unable to read identifier from base request: %@, so unable to send unsupported version error back", buf, 0x16u);
        }

        [(WFRemoteExecutionSession *)self finish];
      }
    }

    else
    {
      if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v125 = "[WFRemoteExecutionIncomingAskEachTimeSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:responseOptions:]";
        v126 = 2114;
        v127 = v18;
        _os_log_impl(&dword_1CA256000, v71, OS_LOG_TYPE_FAULT, "%s Failed to read incoming ask each time protobuf: %{public}@", buf, 0x16u);
      }

      [(WFRemoteExecutionSession *)self setState:1];
    }

    goto LABEL_67;
  }

  v94 = v18;
  v95 = v14;
  v96 = v13;
  v97 = v12;
  v98 = v11;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v19 = v12;
  v20 = [v19 countByEnumeratingWithState:&v115 objects:v123 count:16];
  if (!v20)
  {

    goto LABEL_52;
  }

  v21 = v20;
  v93 = self;
  v100 = 0;
  v22 = *v116;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v116 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v115 + 1) + 8 * i);
      v25 = objc_opt_class();
      v26 = v24;
      if (v26)
      {
        if (objc_opt_isKindOfClass())
        {
          v27 = [v26 request];
          v28 = [v27 identifier];
          v29 = [v101 associatedRunRequestIdentifier];
          v30 = [v28 isEqualToString:v29];

          if (!v30)
          {
            goto LABEL_17;
          }

          v31 = v26;
          v26 = v100;
          v100 = v31;
        }

        else
        {
          v32 = getWFGeneralLogObject();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            v33 = objc_opt_class();
            *buf = 136315906;
            v125 = "WFEnforceClass";
            v126 = 2114;
            v127 = v26;
            v128 = 2114;
            v129 = v33;
            v130 = 2114;
            v131 = v25;
            v34 = v33;
            _os_log_impl(&dword_1CA256000, v32, OS_LOG_TYPE_FAULT, "%s Encountered unsupported version of ask each time request", buf, 0x2Au);
          }

          v31 = 0;
        }

        v26 = v31;
      }

LABEL_17:
    }

    v21 = [v19 countByEnumeratingWithState:&v115 objects:v123 count:16];
  }

  while (v21);

  if (!v100)
  {
LABEL_52:
    [(WFRemoteExecutionSession *)self setState:-420];
    [(WFRemoteExecutionSession *)self finish];
    v12 = v97;
    v11 = v98;
    v14 = v95;
    v13 = v96;
    goto LABEL_66;
  }

  [(WFRemoteExecutionSession *)self setRequest:v101];
  v35 = +[WFActionRegistry sharedRegistry];
  v36 = [v101 actionIdentifier];
  v37 = [v101 actionSerializedParameters];
  v38 = [v35 createActionWithIdentifier:v36 serializedParameters:v37];

  [v38 initializeParametersIfNecessary];
  [v101 inflateParameterStatesWithAction:v38];
  v39 = [v101 parameterKeys];
  v40 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v41 = v39;
  v42 = [v41 countByEnumeratingWithState:&v111 objects:v122 count:16];
  obj = v41;
  if (v42)
  {
    v43 = v42;
    v44 = *v112;
    while (2)
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v112 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v111 + 1) + 8 * j);
        v47 = [v38 parameterForKey:v46];
        v48 = [v101 possibleStatesByParameterKey];
        v49 = [v48 allKeys];
        v50 = [v49 containsObject:v46];

        if (v50)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v51 = v47;
            v52 = [v101 possibleStatesByParameterKey];
            v53 = [v52 objectForKey:v46];
            [v51 setPossibleStatesFromRemoteSource:v53];
          }
        }

        if (!v47)
        {
          v78 = getWFRemoteExecutionLogObject();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            v79 = [v38 parameters];
            *buf = 136315650;
            v125 = "[WFRemoteExecutionIncomingAskEachTimeSession handleIncomingProtobuf:currentlyActiveSessions:responseDestinations:responseOptions:]";
            v126 = 2114;
            v127 = v46;
            v128 = 2114;
            v129 = v79;
            _os_log_impl(&dword_1CA256000, v78, OS_LOG_TYPE_ERROR, "%s Ask Each Time request needs to resolve parameter (%{public}@) but the parameter is nil. action parameters: %{public}@", buf, 0x20u);
          }

          [(WFRemoteExecutionSession *)v93 setState:1];
          v80 = [WFRemoteExecutionAskEachTimeRequestResponse alloc];
          v81 = [v101 identifier];
          v82 = [(WFRemoteExecutionIncomingAskEachTimeSession *)v93 missingParameterError];
          v83 = [(WFRemoteExecutionAskEachTimeRequestResponse *)v80 initWithOriginatingRequestIdentifier:v81 inputtedStates:0 error:v82];

          v14 = v95;
          v13 = v96;
          [(WFRemoteExecutionIncomingAskEachTimeSession *)v93 sendResponse:v83 destinations:v96 options:v95];

          v11 = v98;
          v84 = obj;
          v56 = obj;
          v12 = v97;
          v68 = v100;
          goto LABEL_65;
        }

        [v40 addObject:v47];
      }

      v41 = obj;
      v43 = [obj countByEnumeratingWithState:&v111 objects:v122 count:16];
      if (v43)
      {
        continue;
      }

      break;
    }
  }

  [(WFRemoteExecutionSession *)v93 setState:201];
  v54 = [v100 userInterface];
  v55 = [v54 isRunningWithSiriUI];

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v56 = v40;
  v57 = [v56 countByEnumeratingWithState:&v107 objects:v121 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v108;
    while (2)
    {
      for (k = 0; k != v58; ++k)
      {
        if (*v108 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v107 + 1) + 8 * k);
        v62 = [v100 parameterInputProvider];
        LOBYTE(v61) = v55 | ~[v62 action:v38 canProvideInputForParameter:v61];

        if (v61)
        {
          v85 = [WFRemoteExecutionAskEachTimeRequestResponse alloc];
          v86 = [v101 identifier];
          v87 = [MEMORY[0x1E696ABC0] userCancelledError];
          v88 = [(WFRemoteExecutionAskEachTimeRequestResponse *)v85 initWithOriginatingRequestIdentifier:v86 inputtedStates:0 error:v87];

          v14 = v95;
          v13 = v96;
          [(WFRemoteExecutionIncomingAskEachTimeSession *)v93 sendResponse:v88 destinations:v96 options:v95];
          v89 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
          v68 = v100;
          [v100 finishWithError:v89];

          goto LABEL_64;
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v107 objects:v121 count:16];
      if (v58)
      {
        continue;
      }

      break;
    }
  }

  v63 = [v100 parameterInputProvider];
  v64 = [v101 parameterKeysAndStates];
  v65 = v64;
  v66 = MEMORY[0x1E695E0F8];
  if (v64)
  {
    v67 = v64;
  }

  else
  {
    v67 = MEMORY[0x1E695E0F8];
  }

  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __131__WFRemoteExecutionIncomingAskEachTimeSession_handleIncomingProtobuf_currentlyActiveSessions_responseDestinations_responseOptions___block_invoke;
  v102[3] = &unk_1E837B800;
  v103 = v101;
  v104 = v93;
  v13 = v96;
  v105 = v96;
  v106 = v95;
  [v63 action:v38 provideInputForParameters:v56 withDefaultStates:v67 prompts:v66 completionHandler:v102];

  v14 = v95;
  v68 = v100;

  v56 = v103;
LABEL_64:
  v12 = v97;
  v11 = v98;
  v84 = obj;
LABEL_65:

LABEL_66:
  v18 = v94;
LABEL_67:

  v90 = *MEMORY[0x1E69E9840];
}

void __131__WFRemoteExecutionIncomingAskEachTimeSession_handleIncomingProtobuf_currentlyActiveSessions_responseDestinations_responseOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [WFRemoteExecutionAskEachTimeRequestResponse alloc];
  v8 = [*(a1 + 32) identifier];
  v9 = [(WFRemoteExecutionAskEachTimeRequestResponse *)v7 initWithOriginatingRequestIdentifier:v8 inputtedStates:v6 error:v5];

  [*(a1 + 40) sendResponse:v9 destinations:*(a1 + 48) options:*(a1 + 56)];
}

@end