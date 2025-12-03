@interface SASProximitySession
- (CUMessageSession)sharingMessageSession;
- (SASProximitySession)init;
- (id)actionFromData:(id)data;
- (id)sendAction:(id)action;
- (void)activate;
- (void)handleAction:(id)action;
- (void)invalidate;
- (void)receivedAction:(id)action response:(id)response;
- (void)setSharingMessageSession:(id)session;
@end

@implementation SASProximitySession

- (SASProximitySession)init
{
  v5.receiver = self;
  v5.super_class = SASProximitySession;
  v2 = [(SASProximitySession *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Action Queue", 0);
    [(SASProximitySession *)v2 setActionQueue:v3];
  }

  return v2;
}

- (void)activate
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v6, &location);
  v3 = [(SASProximitySession *)self transport:v5];
  [v3 setReceivedDataBlock:&v5];

  transport = [(SASProximitySession *)self transport];
  [transport activate];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __31__SASProximitySession_activate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained receivedAction:v6 response:v5];
}

- (void)invalidate
{
  transport = [(SASProximitySession *)self transport];
  [transport invalidate];
}

- (void)setSharingMessageSession:(id)session
{
  sessionCopy = session;
  v5 = [[SASProximitySessionSharingTransport alloc] initWithMessageSession:sessionCopy];

  [(SASProximitySession *)self setTransport:v5];
}

- (CUMessageSession)sharingMessageSession
{
  transport = [(SASProximitySession *)self transport];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    transport2 = [(SASProximitySession *)self transport];
    messageSession = [transport2 messageSession];
  }

  else
  {
    messageSession = 0;
  }

  return messageSession;
}

- (void)receivedAction:(id)action response:(id)response
{
  v26 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v7 = [(SASProximitySession *)self actionFromData:action];
  v8 = +[SASLogging facility];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    actionID = [objc_opt_class() actionID];
    _os_log_impl(&dword_22E4D7000, v8, OS_LOG_TYPE_DEFAULT, "Received action from remote device (type %ld)", buf, 0xCu);
  }

  v9 = dispatch_get_global_queue(0, 0);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __47__SASProximitySession_receivedAction_response___block_invoke;
  v19 = &unk_278846070;
  selfCopy = self;
  v10 = v7;
  v21 = v10;
  dispatch_async(v9, &v16);

  if ([v10 hasResponse])
  {
    if (responseCopy)
    {
      responsePayload = [v10 responsePayload];
      if (!responsePayload)
      {
        responsePayload = [MEMORY[0x277CBEA90] data];
      }

      v12 = +[SASLogging facility];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22E4D7000, v12, OS_LOG_TYPE_DEFAULT, "Responding to remote device...", buf, 2u);
      }

      v22 = @"data";
      v23 = responsePayload;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      responseCopy[2](responseCopy, v13);
    }

    else
    {
      responsePayload = +[SASLogging facility];
      if (os_log_type_enabled(responsePayload, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22E4D7000, responsePayload, OS_LOG_TYPE_DEFAULT, "Unable to send response for action; no response handler!", buf, 2u);
      }
    }
  }

  else if (responseCopy)
  {
    v14 = +[SASLogging facility];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E4D7000, v14, OS_LOG_TYPE_DEFAULT, "Sending empty response to remote device...", buf, 2u);
    }

    responseCopy[2](responseCopy, MEMORY[0x277CBEC10]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)sendAction:(id)action
{
  actionCopy = action;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  if ([(SASProximitySession *)self isConnected])
  {
    actionQueue = [(SASProximitySession *)self actionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__SASProximitySession_sendAction___block_invoke;
    block[3] = &unk_2788460C0;
    v9 = actionCopy;
    selfCopy = self;
    v11 = &v12;
    dispatch_sync(actionQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SASProximityErrorDomain" code:-1 userInfo:0];
  }

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __34__SASProximitySession_sendAction___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  [v2 setObject:v3 forKeyedSubscript:@"Version"];

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "actionID")}];
  [v2 setObject:v5 forKeyedSubscript:@"Action"];

  v6 = [*(a1 + 32) requestPayload];
  if (v6)
  {
    [v2 setObject:v6 forKeyedSubscript:@"Payload"];
    v7 = dispatch_semaphore_create(0);
    v8 = +[SASLogging facility];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    *buf = 134217984;
    v22 = [objc_opt_class() actionID];
    v10 = "Sending action (type %ld) with payload...";
  }

  else
  {
    v7 = dispatch_semaphore_create(0);
    v8 = +[SASLogging facility];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v11 = *(a1 + 32);
    *buf = 134217984;
    v22 = [objc_opt_class() actionID];
    v10 = "Sending action (type %ld)...";
  }

  _os_log_impl(&dword_22E4D7000, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
LABEL_7:

  v12 = [*(a1 + 40) transport];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __34__SASProximitySession_sendAction___block_invoke_22;
  v17[3] = &unk_278846098;
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v18 = v13;
  v20 = v14;
  v15 = v7;
  v19 = v15;
  [v12 sendData:v2 response:v17];

  if ([*(a1 + 32) hasResponse])
  {
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __34__SASProximitySession_sendAction___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SASLogging facility];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_22E4D7000, v7, OS_LOG_TYPE_DEFAULT, "Receiving action response with error: %@", &v14, 0xCu);
  }

  if (v5)
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = v5;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v10 = [v6 objectForKeyedSubscript:@"data"];
    v11 = +[SASLogging facility];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22E4D7000, v11, OS_LOG_TYPE_DEFAULT, "Received response from remote device", &v14, 2u);
      }

      [*(a1 + 32) setResponseFromData:v10];
    }

    else
    {
      if (v12)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22E4D7000, v11, OS_LOG_TYPE_DEFAULT, "Received null response from remote device", &v14, 2u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v13 = *MEMORY[0x277D85DE8];
}

- (id)actionFromData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = [dataCopy objectForKeyedSubscript:@"Action"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v6 = [dataCopy objectForKeyedSubscript:@"Payload"];

  if (unsignedIntegerValue > 5)
  {
    if (unsignedIntegerValue <= 7)
    {
      if (unsignedIntegerValue == 6)
      {
        v7 = SASProximityBackupAction;
      }

      else
      {
        v7 = SASProximityPasscodeValidationAction;
      }

      goto LABEL_22;
    }

    switch(unsignedIntegerValue)
    {
      case 8:
        v7 = SASProximityFinishedAction;
        goto LABEL_22;
      case 9:
        v7 = SASProximityMigrationTransferPreparationAction;
        goto LABEL_22;
      case 10:
        v7 = SASProximityMigrationStartAction;
LABEL_22:
        v8 = [(__objc2_class *)v7 actionFromDictionary:v6];
        goto LABEL_23;
    }
  }

  else
  {
    if (unsignedIntegerValue > 2)
    {
      if (unsignedIntegerValue == 3)
      {
        v7 = SASProximityInformationAction;
      }

      else if (unsignedIntegerValue == 4)
      {
        v7 = SASProximityCompanionAuthRequestAction;
      }

      else
      {
        v7 = SASProximityAnisetteRequestAction;
      }

      goto LABEL_22;
    }

    if (unsignedIntegerValue == 1)
    {
      v7 = SASProximityReadyAction;
      goto LABEL_22;
    }

    if (unsignedIntegerValue == 2)
    {
      v7 = SASProximityHandshakeAction;
      goto LABEL_22;
    }
  }

  v11 = +[SASLogging facility];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = unsignedIntegerValue;
    _os_log_impl(&dword_22E4D7000, v11, OS_LOG_TYPE_DEFAULT, "Received unknown action of type: %lu", &v12, 0xCu);
  }

  v8 = 0;
LABEL_23:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)handleAction:(id)action
{
  actionCopy = action;
  if ([objc_opt_class() actionID] == 1)
  {
    delegate = [(SASProximitySession *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(SASProximitySession *)self delegate];
      [delegate2 ready];
    }
  }

  if ([objc_opt_class() actionID] == 6)
  {
    delegate3 = [(SASProximitySession *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate4 = [(SASProximitySession *)self delegate];
      [delegate4 receivedBackupAction:actionCopy];
    }
  }

  if ([objc_opt_class() actionID] == 8)
  {
    delegate5 = [(SASProximitySession *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate6 = [(SASProximitySession *)self delegate];
      [delegate6 finishedWithError:0];
    }
  }

  if ([objc_opt_class() actionID] == 9)
  {
    v13 = actionCopy;
    delegate7 = [(SASProximitySession *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate8 = [(SASProximitySession *)self delegate];
      deviceName = [v13 deviceName];
      [delegate8 prepareForMigrationToDevice:deviceName];
    }
  }

  if ([objc_opt_class() actionID] == 10)
  {
    delegate9 = [(SASProximitySession *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      delegate10 = [(SASProximitySession *)self delegate];
      [delegate10 startMigration];
    }
  }
}

@end