@interface WFRemoteExecutionCoordinator
+ (id)sharedCoordinator;
- (BOOL)hasPairedDevice;
- (BOOL)messageCameFromPairedDevice:(id)a3;
- (BOOL)sendStopRequest:(id)a3 error:(id *)a4;
- (BOOL)shouldDropMessageDueToStaleness:(id)a3;
- (IDSService)service;
- (NSString)pairedDeviceModelIdentifier;
- (id)defaultIDSOptions;
- (id)initAndAllowRunRequests:(BOOL)a3;
- (id)pairedDevice;
- (id)sessionFromRequestIdentifier:(id)a3;
- (id)sessionsOfClass:(Class)a3;
- (id)unknownRequestError;
- (id)unknownRequestMessageWithIdentifier:(id)a3;
- (void)cancelAllSessions;
- (void)cancelPendingFileTransfers;
- (void)cancelRequest:(id)a3;
- (void)cancelSessions:(id)a3;
- (void)finishSessionWithRequest:(id)a3;
- (void)handleAceCommandResponse:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handleAlertRequest:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handleAlertRequestResponse:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handleAskWhenRunRequest:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handleAskWhenRunRequestResponse:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handleDialogRequest:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handleDialogRequestResponse:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handleIncomingAceCommand:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handleRunRequest:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handleRunRequestResponse:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handleStopRequest:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handleUnknownRequestMessage:(id)a3;
- (void)mapSelectorsForIncomingProtobuf;
- (void)sendAceCommandDictionary:(id)a3 completion:(id)a4;
- (void)sendAlertRequest:(id)a3 completion:(id)a4;
- (void)sendAskWhenRunRequest:(id)a3 completion:(id)a4;
- (void)sendDialogRequest:(id)a3 completion:(id)a4;
- (void)sendFileAtURL:(id)a3 transferIdentifier:(id)a4 requestIdentifier:(id)a5 error:(id *)a6;
- (void)sendRunRequest:(id)a3 userInterface:(id)a4 parameterInputProvider:(id)a5 completionHandler:(id)a6;
- (void)sendRunRequestResponse:(id)a3 completion:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)sessionDidFinish:(id)a3;
@end

@implementation WFRemoteExecutionCoordinator

- (IDSService)service
{
  service = self->_service;
  if (service)
  {
    goto LABEL_4;
  }

  v4 = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:@"com.apple.private.alloy.shortcuts"];
  v5 = self->_service;
  self->_service = v4;

  if (self->_service)
  {
    [(WFRemoteExecutionCoordinator *)self mapSelectorsForIncomingProtobuf];
    v6 = self->_service;
    v7 = [(WFRemoteExecutionCoordinator *)self queue];
    [(IDSService *)v6 addDelegate:self queue:v7];

    service = self->_service;
LABEL_4:
    v8 = service;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (void)mapSelectorsForIncomingProtobuf
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(WFRemoteExecutionCoordinator *)self service];
  [v3 setProtobufAction:sel_handleRunRequestResponse_service_account_fromID_context_ forIncomingRequestsOfType:2];

  v4 = [(WFRemoteExecutionCoordinator *)self service];
  [v4 setProtobufAction:sel_handleAlertRequest_service_account_fromID_context_ forIncomingRequestsOfType:3];

  v5 = [(WFRemoteExecutionCoordinator *)self service];
  [v5 setProtobufAction:sel_handleAlertRequestResponse_service_account_fromID_context_ forIncomingRequestsOfType:4];

  v6 = [(WFRemoteExecutionCoordinator *)self service];
  [v6 setProtobufAction:sel_handleAskWhenRunRequest_service_account_fromID_context_ forIncomingRequestsOfType:5];

  v7 = [(WFRemoteExecutionCoordinator *)self service];
  [v7 setProtobufAction:sel_handleAskWhenRunRequestResponse_service_account_fromID_context_ forIncomingRequestsOfType:6];

  v8 = [(WFRemoteExecutionCoordinator *)self service];
  [v8 setProtobufAction:sel_handleAceCommandResponse_service_account_fromID_context_ forIncomingRequestsOfType:9];

  v9 = [(WFRemoteExecutionCoordinator *)self service];
  [v9 setProtobufAction:sel_handleStopRequest_service_account_fromID_context_ forIncomingRequestsOfType:7];

  v10 = [(WFRemoteExecutionCoordinator *)self service];
  [v10 setProtobufAction:sel_handleDialogRequest_service_account_fromID_context_ forIncomingRequestsOfType:10];

  v11 = [(WFRemoteExecutionCoordinator *)self service];
  [v11 setProtobufAction:sel_handleDialogRequestResponse_service_account_fromID_context_ forIncomingRequestsOfType:11];

  if ([(WFRemoteExecutionCoordinator *)self allowRunRequests])
  {
    v12 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[WFRemoteExecutionCoordinator mapSelectorsForIncomingProtobuf]";
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s Started listening for run requests", &v16, 0xCu);
    }

    v13 = [(WFRemoteExecutionCoordinator *)self service];
    [v13 setProtobufAction:sel_handleRunRequest_service_account_fromID_context_ forIncomingRequestsOfType:1];

    v14 = [(WFRemoteExecutionCoordinator *)self service];
    [v14 setProtobufAction:sel_handleIncomingAceCommand_service_account_fromID_context_ forIncomingRequestsOfType:8];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)defaultIDSOptions
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A47D8];
  v6[0] = *MEMORY[0x1E69A4B58];
  v6[1] = v2;
  v7[0] = MEMORY[0x1E695E118];
  v7[1] = &unk_1F4A9A210;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v49 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a7;
  v12 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v42 = "[WFRemoteExecutionCoordinator service:account:identifier:didSendWithSuccess:error:]";
    v43 = 2114;
    v44 = v10;
    v45 = 1024;
    v46 = v8;
    v47 = 2114;
    v48 = v11;
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s <%{public}@> Sent with success: %i, %{public}@", buf, 0x26u);
  }

  if (v8)
  {
    v13 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = [v18 idsIdentifier];
          v20 = [v10 isEqualToString:v19];

          if (v20)
          {
            [v18 fileSentWithSuccess:1 error:v11];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v21 = [(WFRemoteExecutionCoordinator *)self activeSessions];
    v22 = [v21 copy];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = v22;
    v23 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v36;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v13);
          }

          v27 = *(*(&v35 + 1) + 8 * j);
          v28 = [v27 idsIdentifier];
          v29 = [v28 isEqualToString:v10];

          if (v29)
          {
            [v27 finishWithError:v11];
          }
        }

        v24 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v24);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (NSString)pairedDeviceModelIdentifier
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(WFRemoteExecutionCoordinator *)self service];
  v3 = [v2 devices];
  v4 = [v3 reverseObjectEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isLocallyPaired] && (objc_msgSend(v8, "isActive") & 1) != 0)
        {
          v5 = [v8 modelIdentifier];
          goto LABEL_12;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)pairedDevice
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [(WFRemoteExecutionCoordinator *)self service];
  v3 = [v2 devices];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 isLocallyPaired] && objc_msgSend(v9, "isActive"))
        {
          v10 = MEMORY[0x1E695DFD8];
          v11 = IDSCopyIDForDevice();
          v12 = [v10 setWithObject:v11];

          v6 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)hasPairedDevice
{
  v2 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)shouldDropMessageDueToStaleness:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (shouldDropMessageDueToStaleness__onceToken != -1)
  {
    dispatch_once(&shouldDropMessageDueToStaleness__onceToken, &__block_literal_global_223);
  }

  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [shouldDropMessageDueToStaleness__calendar components:64 fromDate:v3 toDate:v4 options:0];
  v6 = [v5 minute];
  if (v6 >= 2)
  {
    v7 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 136315650;
      v11 = "[WFRemoteExecutionCoordinator shouldDropMessageDueToStaleness:]";
      v12 = 2114;
      v13 = v3;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s Dropping message because it was sent more than one minute ago. server received message at %{public}@, it is currently: %{public}@", &v10, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6 > 1;
}

void __64__WFRemoteExecutionCoordinator_shouldDropMessageDueToStaleness___block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] currentCalendar];
  v1 = shouldDropMessageDueToStaleness__calendar;
  shouldDropMessageDueToStaleness__calendar = v0;
}

- (BOOL)messageCameFromPairedDevice:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFRemoteExecutionCoordinator *)self service];
  v6 = [v5 deviceForFromID:v4];

  if ([v6 isLocallyPaired] && (objc_msgSend(v6, "isActive") & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[WFRemoteExecutionCoordinator messageCameFromPairedDevice:]";
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Dropping message as it did not come from a paired device", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)finishSessionWithRequest:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFRemoteExecutionCoordinator *)self activeSessions];
  v6 = [v5 copy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 request];
        v14 = [v13 identifier];
        v15 = [v4 identifier];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          v17 = v12;
          if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v17 finishWithError:0];
          }

          else
          {

            [v17 finish];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)sessionDidFinish:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[WFRemoteExecutionCoordinator sessionDidFinish:]";
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s %{public}@", &v11, 0x16u);
  }

  v6 = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [v6 removeObject:v4];

  v7 = [(WFRemoteExecutionCoordinator *)self completionsForSessions];
  v8 = [v7 objectForKey:v4];

  v9 = [(WFRemoteExecutionCoordinator *)self completionsForSessions];
  [v9 removeObjectForKey:v4];

  if (v8)
  {
    v8[2](v8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)sessionsOfClass:(Class)a3
{
  v4 = [(WFRemoteExecutionCoordinator *)self activeSessions];
  v5 = [v4 objectsMatchingClass:a3];

  return v5;
}

- (void)handleUnknownRequestMessage:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKey:@"identifier"];
  v5 = [(WFRemoteExecutionCoordinator *)self sessionFromRequestIdentifier:v4];
  v6 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v5 request];
    v11 = 136315394;
    v12 = "[WFRemoteExecutionCoordinator handleUnknownRequestMessage:]";
    v13 = 2112;
    v14 = objc_opt_class();
    v8 = v14;
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Remote device did not understand request of class: %@", &v11, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [(WFRemoteExecutionCoordinator *)self unknownRequestError];
    [v5 finishWithError:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)unknownRequestError
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v3 = WFLocalizedString(@"While running your shortcut remotely, we encountered an unknown request. Please update your device.");
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:@"WFRemoteExecutionCoordinatorErrorDomain" code:1 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a5;
  v8 = [v9 objectForKey:@"messageType"];
  if ([v8 isEqualToString:@"unknownRequest"])
  {
    [(WFRemoteExecutionCoordinator *)self handleUnknownRequestMessage:v9];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  if ([v9 type] != 1 && objc_msgSend(v9, "type") != 8)
  {
    v11 = [v9 data];
    v25 = 0;
    v12 = [WFRemoteExecutionRequest identifierFromData:v11 error:&v25];
    v13 = v25;

    v14 = getWFRemoteExecutionLogObject();
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = [v9 data];
        v17 = [v9 type];
        *buf = 136315650;
        v27 = "[WFRemoteExecutionCoordinator service:account:incomingUnhandledProtobuf:fromID:context:]";
        v28 = 2114;
        v29 = v16;
        v30 = 1024;
        v31 = v17;
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Received unknown request with data: %{public}@, message type: %i", buf, 0x1Cu);
      }

      v15 = [(WFRemoteExecutionCoordinator *)self unknownRequestMessageWithIdentifier:v12];
      v18 = [MEMORY[0x1E695DFD8] setWithObject:v10];
      v19 = [(WFRemoteExecutionCoordinator *)self service];
      v20 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
      v24 = 0;
      v21 = [v19 sendMessage:v15 toDestinations:v18 priority:300 options:v20 identifier:0 error:&v24];

      if ((v21 & 1) == 0)
      {
        v22 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v27 = "[WFRemoteExecutionCoordinator service:account:incomingUnhandledProtobuf:fromID:context:]";
          _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s Received unknown request but failed to send the unknown identifier back to the originating device", buf, 0xCu);
        }
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v27 = "[WFRemoteExecutionCoordinator service:account:incomingUnhandledProtobuf:fromID:context:]";
      v28 = 2114;
      v29 = v13;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_FAULT, "%s Received unknown request but failed to read the identifier from it. %{public}@", buf, 0x16u);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)unknownRequestMessageWithIdentifier:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"messageType";
  v8[1] = @"identifier";
  v9[0] = @"unknownRequest";
  v9[1] = a3;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v65 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [v12 objectForKey:@"transferIdentifier"];
  v15 = [v12 objectForKey:@"requestIdentifier"];
  v16 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v60 = "[WFRemoteExecutionCoordinator service:account:incomingResourceAtURL:metadata:fromID:context:]";
    v61 = 2114;
    v62 = v15;
    v63 = 2114;
    v64 = v14;
    _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_INFO, "%s <%{public}@> Received file with id: %{public}@", buf, 0x20u);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:v13])
  {
    v45 = v15;
    v44 = [v11 lastPathComponent];
    v17 = [MEMORY[0x1E6996F68] proposedSharedTemporaryFileURLForFilename:?];
    v18 = [v17 URLByDeletingLastPathComponent];
    v19 = [MEMORY[0x1E696AC08] defaultManager];
    v56 = 0;
    v43 = v18;
    [v19 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v56];
    v20 = v56;

    if (v20)
    {
      v21 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v60 = "[WFRemoteExecutionCoordinator service:account:incomingResourceAtURL:metadata:fromID:context:]";
        v61 = 2114;
        v22 = v43;
        v62 = v43;
        v63 = 2114;
        v64 = v20;
        _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_FAULT, "%s Unable to create directory at URL: %{public}@ for incoming file. error: %{public}@", buf, 0x20u);
        v23 = v44;
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      v24 = [MEMORY[0x1E696AC08] defaultManager];
      v55 = 0;
      [v24 copyItemAtURL:v11 toURL:v17 error:&v55];
      v20 = v55;

      if (v20)
      {
        v21 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v60 = "[WFRemoteExecutionCoordinator service:account:incomingResourceAtURL:metadata:fromID:context:]";
          v61 = 2114;
          v62 = v20;
          _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_FAULT, "%s Unable to move incoming file from ids URL to temporary URL with error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v46 = v17;
        v25 = v14;
        v26 = v12;
        v41 = v13;
        v42 = v11;
        v21 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v27 = [v21 countByEnumeratingWithState:&v51 objects:v58 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v52;
          do
          {
            v30 = v21;
            for (i = 0; i != v28; ++i)
            {
              if (*v52 != v29)
              {
                objc_enumerationMutation(v30);
              }

              v32 = *(*(&v51 + 1) + 8 * i);
              v33 = [(WFRemoteExecutionCoordinator *)self pairedDevice:v41];
              v34 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
              [v32 handleIncomingFileForRemoteExecutionWithURL:v46 withIdentifier:v25 metadata:v26 destinations:v33 options:v34];
            }

            v21 = v30;
            v28 = [v30 countByEnumeratingWithState:&v51 objects:v58 count:16];
          }

          while (v28);
        }

        v35 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v36 = [v35 countByEnumeratingWithState:&v47 objects:v57 count:16];
        v13 = v41;
        v11 = v42;
        v12 = v26;
        v14 = v25;
        v17 = v46;
        if (v36)
        {
          v37 = v36;
          v38 = *v48;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v48 != v38)
              {
                objc_enumerationMutation(v35);
              }

              [*(*(&v47 + 1) + 8 * j) handleIncomingFileForRemoteExecutionWithURL:v46 withIdentifier:v14 metadata:{v12, v41, v42}];
            }

            v37 = [v35 countByEnumeratingWithState:&v47 objects:v57 count:16];
          }

          while (v37);
        }

        v20 = 0;
      }
    }

    v23 = v44;
    v15 = v45;
    v22 = v43;
    goto LABEL_26;
  }

LABEL_27:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)sendFileAtURL:(id)a3 transferIdentifier:(id)a4 requestIdentifier:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [WFRemoteExecutionOutgoingFileSession alloc];
  v14 = [(WFRemoteExecutionCoordinator *)self service];
  v17 = [(WFRemoteExecutionOutgoingFileSession *)v13 initWithService:v14 fileURL:v12 transferIdentifier:v11 requestIdentifier:v10];

  [(WFRemoteExecutionSession *)v17 setDelegate:self];
  v15 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  v16 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingFileSession *)v17 sendToDestinations:v15 options:v16 error:a6];
}

- (void)handleDialogRequest:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a7;
  v12 = a6;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v25 = 136315138;
    v26 = "[WFRemoteExecutionCoordinator handleDialogRequest:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming dialog request", &v25, 0xCu);
  }

  v14 = [(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:v12];
  if (v14)
  {
    v15 = [v11 serverReceivedTime];
    v16 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:v15];

    if (!v16)
    {
      v17 = [WFRemoteExecutionIncomingDialogRequestSession alloc];
      v18 = [(WFRemoteExecutionCoordinator *)self service];
      v19 = [(WFRemoteExecutionSession *)v17 initWithService:v18];

      [(WFRemoteExecutionSession *)v19 setDelegate:self];
      v20 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      v21 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
      v22 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
      [(WFRemoteExecutionIncomingDialogRequestSession *)v19 handleIncomingProtobuf:v10 currentlyActiveSessions:v20 destinations:v21 options:v22];

      v23 = [(WFRemoteExecutionCoordinator *)self activeSessions];
      [v23 addObject:v19];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)handleIncomingAceCommand:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a7;
  v12 = a6;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v24 = 136315138;
    v25 = "[WFRemoteExecutionCoordinator handleIncomingAceCommand:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming ace command", &v24, 0xCu);
  }

  v14 = [(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:v12];
  if (v14)
  {
    v15 = [v11 serverReceivedTime];
    v16 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:v15];

    if (!v16)
    {
      v17 = [WFRemoteExecutionIncomingAceCommandSession alloc];
      v18 = [(WFRemoteExecutionCoordinator *)self service];
      v19 = [(WFRemoteExecutionSession *)v17 initWithService:v18];

      [(WFRemoteExecutionSession *)v19 setDelegate:self];
      v20 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
      v21 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
      [(WFRemoteExecutionIncomingAceCommandSession *)v19 handleIncomingProtobuf:v10 destinations:v20 options:v21];

      v22 = [(WFRemoteExecutionCoordinator *)self activeSessions];
      [v22 addObject:v19];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)handleAskWhenRunRequestResponse:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[WFRemoteExecutionCoordinator handleAskWhenRunRequestResponse:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming ask each time response", buf, 0xCu);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:v11])
  {
    v14 = [v12 serverReceivedTime];
    v15 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:v14];

    if (!v15)
    {
      v16 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      v17 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v30 = "[WFRemoteExecutionCoordinator handleAskWhenRunRequestResponse:service:account:fromID:context:]";
        v31 = 2114;
        v32 = v16;
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Has active sessions: %{public}@", buf, 0x16u);
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v25;
        do
        {
          v22 = 0;
          do
          {
            if (*v25 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v24 + 1) + 8 * v22++) handleIncomingProtobuf:{v10, v24}];
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v20);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)sendAskWhenRunRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [WFRemoteExecutionOutgoingAskEachTimeSession alloc];
  v9 = [(WFRemoteExecutionCoordinator *)self service];
  v13 = [(WFRemoteExecutionOutgoingAskEachTimeSession *)v8 initWithService:v9 request:v7 completion:v6];

  [(WFRemoteExecutionSession *)v13 setDelegate:self];
  v10 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  v11 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingAskEachTimeSession *)v13 sendToDestinations:v10 options:v11];

  v12 = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [v12 addObject:v13];
}

- (void)handleStopRequest:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a7;
  v12 = a6;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v22 = 136315138;
    v23 = "[WFRemoteExecutionCoordinator handleStopRequest:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming stop request", &v22, 0xCu);
  }

  v14 = [(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:v12];
  if (v14)
  {
    v15 = [v11 serverReceivedTime];
    v16 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:v15];

    if (!v16)
    {
      v17 = [WFRemoteExecutionIncomingStopSession alloc];
      v18 = [(WFRemoteExecutionCoordinator *)self service];
      v19 = [(WFRemoteExecutionSession *)v17 initWithService:v18];

      v20 = [(WFRemoteExecutionCoordinator *)self activeSessions];
      [(WFRemoteExecutionIncomingStopSession *)v19 handleIncomingProtobuf:v10 currentlyActiveSessions:v20];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)handleAlertRequestResponse:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[WFRemoteExecutionCoordinator handleAlertRequestResponse:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming alert response", buf, 0xCu);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:v11])
  {
    v14 = [v12 serverReceivedTime];
    v15 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:v14];

    if (!v15)
    {
      v16 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      v17 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v30 = "[WFRemoteExecutionCoordinator handleAlertRequestResponse:service:account:fromID:context:]";
        v31 = 2114;
        v32 = v16;
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Has active sessions: %{public}@", buf, 0x16u);
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v25;
        do
        {
          v22 = 0;
          do
          {
            if (*v25 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v24 + 1) + 8 * v22++) handleIncomingProtobuf:{v10, v24}];
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v20);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)sendAlertRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [WFRemoteExecutionOutgoingAlertSession alloc];
  v9 = [(WFRemoteExecutionCoordinator *)self service];
  v13 = [(WFRemoteExecutionOutgoingAlertSession *)v8 initWithService:v9 request:v7 completion:v6];

  [(WFRemoteExecutionSession *)v13 setDelegate:self];
  v10 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  v11 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingAlertSession *)v13 sendToDestinations:v10 options:v11];

  v12 = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [v12 addObject:v13];
}

- (void)sendRunRequestResponse:(id)a3 completion:(id)a4
{
  aBlock = a4;
  v6 = a3;
  v7 = [WFRemoteExecutionOutgoingRunRequestResponseSession alloc];
  v8 = [(WFRemoteExecutionCoordinator *)self service];
  v9 = [(WFRemoteExecutionOutgoingRunRequestResponseSession *)v7 initWithService:v8 responseData:v6];

  [(WFRemoteExecutionSession *)v9 setDelegate:self];
  v10 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  v11 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingRunRequestResponseSession *)v9 sendToDestinations:v10 options:v11];

  v12 = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [v12 addObject:v9];

  if (aBlock)
  {
    v13 = [(WFRemoteExecutionCoordinator *)self completionsForSessions];
    v14 = _Block_copy(aBlock);
    [v13 setObject:v14 forKey:v9];
  }
}

- (void)handleRunRequest:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v46 = "[WFRemoteExecutionCoordinator handleRunRequest:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming run request", buf, 0xCu);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:v11])
  {
    v14 = [v12 serverReceivedTime];
    v15 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:v14];

    if (!v15)
    {
      v39 = v12;
      v16 = [WFRemoteExecutionRunRequest alloc];
      v17 = [v10 data];
      v18 = [(WFRemoteExecutionRunRequest *)v16 initWithData:v17 error:0];

      v40 = v18;
      if (v18)
      {
        v19 = [(WFRemoteExecutionRequest *)v18 identifier];

        if (v19)
        {
          v37 = v11;
          v38 = v10;
          [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v20 = v44 = 0u;
          v21 = [(WFRemoteExecutionIncomingRunRequestSession *)v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v42;
            while (2)
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v42 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v41 + 1) + 8 * i);
                v26 = [v25 request];
                v27 = [v26 identifier];
                v28 = [(WFRemoteExecutionRequest *)v40 identifier];
                v29 = [v27 isEqualToString:v28];

                if (v29)
                {
                  v35 = getWFRemoteExecutionLogObject();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v46 = "[WFRemoteExecutionCoordinator handleRunRequest:service:account:fromID:context:]";
                    v47 = 2112;
                    v48 = v25;
                    _os_log_impl(&dword_1CA256000, v35, OS_LOG_TYPE_DEFAULT, "%s Received an incoming run request, however, there is an existing session with the same identifier (%@). Dropping this request.", buf, 0x16u);
                  }

                  v32 = v20;
                  v11 = v37;
                  v10 = v38;
                  goto LABEL_20;
                }
              }

              v22 = [(WFRemoteExecutionIncomingRunRequestSession *)v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v11 = v37;
          v10 = v38;
        }
      }

      v30 = [WFRemoteExecutionIncomingRunRequestSession alloc];
      v31 = [(WFRemoteExecutionCoordinator *)self service];
      v32 = [(WFRemoteExecutionSession *)v30 initWithService:v31];

      [(WFRemoteExecutionSession *)v32 setDelegate:self];
      v33 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
      v34 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
      [(WFRemoteExecutionIncomingRunRequestSession *)v32 handleIncomingProtobuf:v10 destinations:v33 options:v34];

      v20 = [(WFRemoteExecutionCoordinator *)self activeSessions];
      [(WFRemoteExecutionIncomingRunRequestSession *)v20 addObject:v32];
LABEL_20:
      v12 = v39;
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)handleDialogRequestResponse:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v31 = "[WFRemoteExecutionCoordinator handleDialogRequestResponse:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming dialog request response", buf, 0xCu);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:v11])
  {
    v14 = [v12 serverReceivedTime];
    v15 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:v14];

    if (!v15)
    {
      v16 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      v17 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v31 = "[WFRemoteExecutionCoordinator handleDialogRequestResponse:service:account:fromID:context:]";
        v32 = 2114;
        v33 = v16;
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Has active sessions: %{public}@", buf, 0x16u);
      }

      if (![v16 count])
      {
        v18 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v31 = "[WFRemoteExecutionCoordinator handleDialogRequestResponse:service:account:fromID:context:]";
          _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, "%s No matching session, dropping message", buf, 0xCu);
        }
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v26;
        do
        {
          v23 = 0;
          do
          {
            if (*v26 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v25 + 1) + 8 * v23++) handleIncomingProtobuf:{v10, v25}];
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v21);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)sendDialogRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [WFRemoteExecutionOutgoingDialogRequestSession alloc];
  v9 = [(WFRemoteExecutionCoordinator *)self service];
  v13 = [(WFRemoteExecutionOutgoingDialogRequestSession *)v8 initWithService:v9 request:v7 completion:v6];

  [(WFRemoteExecutionSession *)v13 setDelegate:self];
  v10 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  v11 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingDialogRequestSession *)v13 sendToDestinations:v10 options:v11];

  v12 = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [v12 addObject:v13];
}

- (void)handleAceCommandResponse:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v31 = "[WFRemoteExecutionCoordinator handleAceCommandResponse:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming ace command response", buf, 0xCu);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:v11])
  {
    v14 = [v12 serverReceivedTime];
    v15 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:v14];

    if (!v15)
    {
      v16 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      v17 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v31 = "[WFRemoteExecutionCoordinator handleAceCommandResponse:service:account:fromID:context:]";
        v32 = 2114;
        v33 = v16;
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Has active sessions: %{public}@", buf, 0x16u);
      }

      if (![v16 count])
      {
        v18 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v31 = "[WFRemoteExecutionCoordinator handleAceCommandResponse:service:account:fromID:context:]";
          _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, "%s No matching session, dropping message", buf, 0xCu);
        }
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v26;
        do
        {
          v23 = 0;
          do
          {
            if (*v26 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v25 + 1) + 8 * v23++) handleIncomingProtobuf:{v10, v25}];
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v21);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)sendAceCommandDictionary:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v14 = [[WFRemoteExecutionAceCommandRequest alloc] initWithAceCommandDictionary:v7];

  v8 = [WFRemoteExecutionOutgoingAceCommandSession alloc];
  v9 = [(WFRemoteExecutionCoordinator *)self service];
  v10 = [(WFRemoteExecutionOutgoingAceCommandSession *)v8 initWithService:v9 request:v14 completion:v6];

  [(WFRemoteExecutionSession *)v10 setDelegate:self];
  v11 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  v12 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingAceCommandSession *)v10 sendToDestinations:v11 options:v12];

  v13 = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [v13 addObject:v10];
}

- (void)handleAskWhenRunRequest:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a7;
  v12 = a6;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v25 = 136315138;
    v26 = "[WFRemoteExecutionCoordinator handleAskWhenRunRequest:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming ask each time to display", &v25, 0xCu);
  }

  v14 = [(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:v12];
  if (v14)
  {
    v15 = [v11 serverReceivedTime];
    v16 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:v15];

    if (!v16)
    {
      v17 = [WFRemoteExecutionIncomingAskEachTimeSession alloc];
      v18 = [(WFRemoteExecutionCoordinator *)self service];
      v19 = [(WFRemoteExecutionSession *)v17 initWithService:v18];

      [(WFRemoteExecutionSession *)v19 setDelegate:self];
      v20 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      v21 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
      v22 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
      [(WFRemoteExecutionIncomingAskEachTimeSession *)v19 handleIncomingProtobuf:v10 currentlyActiveSessions:v20 responseDestinations:v21 responseOptions:v22];

      v23 = [(WFRemoteExecutionCoordinator *)self activeSessions];
      [v23 addObject:v19];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendStopRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [WFRemoteExecutionOutgoingStopSession alloc];
  v8 = [(WFRemoteExecutionCoordinator *)self service];
  v9 = [(WFRemoteExecutionOutgoingStopSession *)v7 initWithService:v8 request:v6];

  [(WFRemoteExecutionSession *)v9 setDelegate:self];
  v10 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  v11 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  LOBYTE(a4) = [(WFRemoteExecutionOutgoingStopSession *)v9 sendToDestinations:v10 options:v11 error:a4];

  v12 = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [v12 addObject:v9];

  return a4;
}

- (void)handleAlertRequest:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a7;
  v12 = a6;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v25 = 136315138;
    v26 = "[WFRemoteExecutionCoordinator handleAlertRequest:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming alert to display", &v25, 0xCu);
  }

  v14 = [(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:v12];
  if (v14)
  {
    v15 = [v11 serverReceivedTime];
    v16 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:v15];

    if (!v16)
    {
      v17 = [WFRemoteExecutionIncomingAlertSession alloc];
      v18 = [(WFRemoteExecutionCoordinator *)self service];
      v19 = [(WFRemoteExecutionSession *)v17 initWithService:v18];

      [(WFRemoteExecutionSession *)v19 setDelegate:self];
      v20 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      v21 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
      v22 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
      [(WFRemoteExecutionIncomingAlertSession *)v19 handleIncomingProtobuf:v10 currentlyActiveSessions:v20 responseDestinations:v21 options:v22];

      v23 = [(WFRemoteExecutionCoordinator *)self activeSessions];
      [v23 addObject:v19];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)handleRunRequestResponse:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v31 = "[WFRemoteExecutionCoordinator handleRunRequestResponse:service:account:fromID:context:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received incoming run request response", buf, 0xCu);
  }

  if ([(WFRemoteExecutionCoordinator *)self messageCameFromPairedDevice:v11])
  {
    v14 = [v12 serverReceivedTime];
    v15 = [(WFRemoteExecutionCoordinator *)self shouldDropMessageDueToStaleness:v14];

    if (!v15)
    {
      v16 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
      v17 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v31 = "[WFRemoteExecutionCoordinator handleRunRequestResponse:service:account:fromID:context:]";
        v32 = 2114;
        v33 = v16;
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Has active sessions: %{public}@", buf, 0x16u);
      }

      if (![v16 count])
      {
        v18 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v31 = "[WFRemoteExecutionCoordinator handleRunRequestResponse:service:account:fromID:context:]";
          _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, "%s No matching session, dropping message", buf, 0xCu);
        }
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v26;
        do
        {
          v23 = 0;
          do
          {
            if (*v26 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v25 + 1) + 8 * v23++) handleIncomingProtobuf:{v10, v25}];
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v21);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)sendRunRequest:(id)a3 userInterface:(id)a4 parameterInputProvider:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [WFRemoteExecutionOutgoingRunRequestSession alloc];
  v15 = [(WFRemoteExecutionCoordinator *)self service];
  v19 = [(WFRemoteExecutionOutgoingRunRequestSession *)v14 initWithService:v15 request:v13 userInterface:v12 parameterInputProvider:v11 coordinator:self completion:v10];

  [(WFRemoteExecutionSession *)v19 setDelegate:self];
  v16 = [(WFRemoteExecutionCoordinator *)self pairedDevice];
  v17 = [(WFRemoteExecutionCoordinator *)self defaultIDSOptions];
  [(WFRemoteExecutionOutgoingRunRequestSession *)v19 sendToDestinations:v16 options:v17];

  v18 = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [v18 addObject:v19];
}

- (id)sessionFromRequestIdentifier:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFRemoteExecutionCoordinator *)self activeSessions];
  v6 = [v5 copy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 request];
        v15 = [v14 identifier];
        v16 = [v15 isEqualToString:v4];

        if (v16)
        {
          v17 = v13;

          v10 = v17;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)cancelRequest:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [a3 identifier];
    v5 = [(WFRemoteExecutionCoordinator *)self sessionFromRequestIdentifier:v4];

    if (v5)
    {
      v8[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      [(WFRemoteExecutionCoordinator *)self cancelSessions:v6];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)cancelSessions:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    *&v6 = 136315650;
    v18 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = [(WFRemoteExecutionCoordinator *)self completionsForSessions];
        [v11 removeObjectForKey:v10];

        v12 = [(WFRemoteExecutionCoordinator *)self service];
        v13 = [v10 idsIdentifier];
        v19 = 0;
        v14 = [v12 cancelIdentifier:v13 error:&v19];
        v15 = v19;

        if ((v14 & 1) == 0)
        {
          v16 = getWFRemoteExecutionLogObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = v18;
            v25 = "[WFRemoteExecutionCoordinator cancelSessions:]";
            v26 = 2114;
            v27 = v10;
            v28 = 2114;
            v29 = v15;
            _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_INFO, "%s Cancelling session: %{public}@ failed with error: %{public}@", buf, 0x20u);
          }
        }

        [v10 finish];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)cancelPendingFileTransfers
{
  v3 = [(WFRemoteExecutionCoordinator *)self sessionsOfClass:objc_opt_class()];
  [(WFRemoteExecutionCoordinator *)self cancelSessions:v3];
}

- (void)cancelAllSessions
{
  v3 = [(WFRemoteExecutionCoordinator *)self activeSessions];
  [(WFRemoteExecutionCoordinator *)self cancelSessions:v3];
}

- (id)initAndAllowRunRequests:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = WFRemoteExecutionCoordinator;
  v4 = [(WFRemoteExecutionCoordinator *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_allowRunRequests = a3;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);

    v8 = dispatch_queue_create("com.apple.shortcuts.remote-execution", v7);
    queue = v5->_queue;
    v5->_queue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeSessions = v5->_activeSessions;
    v5->_activeSessions = v10;

    v12 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    completionsForSessions = v5->_completionsForSessions;
    v5->_completionsForSessions = v12;

    v14 = [(WFRemoteExecutionCoordinator *)v5 service];
    v15 = v5;
  }

  return v5;
}

+ (id)sharedCoordinator
{
  if (sharedCoordinator_onceToken != -1)
  {
    dispatch_once(&sharedCoordinator_onceToken, &__block_literal_global_14470);
  }

  v3 = sharedCoordinator_sharedCoordinator;

  return v3;
}

void __49__WFRemoteExecutionCoordinator_sharedCoordinator__block_invoke()
{
  v0 = [[WFRemoteExecutionCoordinator alloc] initAndAllowRunRequests:0];
  v1 = sharedCoordinator_sharedCoordinator;
  sharedCoordinator_sharedCoordinator = v0;
}

@end