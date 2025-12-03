@interface TVRCTextInputSession
- (TVRCTextInputSession)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_handleTextInputChange:(id)change started:(BOOL)started;
- (void)_handleTextInputStarted:(id)started;
- (void)_handleTextInputStopped:(id)stopped;
- (void)_invalidate;
- (void)activateWithCompletion:(id)completion;
- (void)handleTextActionPayload:(id)payload;
- (void)invalidate;
- (void)performDocumentRequest:(id)request completion:(id)completion;
@end

@implementation TVRCTextInputSession

- (TVRCTextInputSession)init
{
  v6.receiver = self;
  v6.super_class = TVRCTextInputSession;
  v2 = [(TVRCTextInputSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = dispatchQueue;
  if (!dispatchQueue)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_dispatchQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__TVRCTextInputSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_279D82568;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

- (void)_activateWithCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = self->_messenger;
  if (v5)
  {
    v6 = _TVRCRemoteTextInputLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Activate\n", buf, 2u);
    }

    v19 = *MEMORY[0x277D442E8];
    v20 = &unk_287E66A00;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    messenger = self->_messenger;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__TVRCTextInputSession__activateWithCompletion___block_invoke;
    v18[3] = &unk_279D82590;
    v18[4] = self;
    [(RPMessageable *)messenger registerEventID:@"_tiStarted" options:v7 handler:v18];
    v9 = self->_messenger;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__TVRCTextInputSession__activateWithCompletion___block_invoke_2;
    v17[3] = &unk_279D82590;
    v17[4] = self;
    [(RPMessageable *)v9 registerEventID:@"_tiStopped" options:v7 handler:v17];
    v10 = self->_messenger;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __48__TVRCTextInputSession__activateWithCompletion___block_invoke_3;
    v16[3] = &unk_279D82590;
    v16[4] = self;
    [(RPMessageable *)v10 registerEventID:@"_tiC" options:v7 handler:v16];
    self->_started = 1;
    v11 = *MEMORY[0x277D44228];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__TVRCTextInputSession__activateWithCompletion___block_invoke_4;
    v14[3] = &unk_279D825B8;
    v14[4] = self;
    v15 = completionCopy;
    [(RPMessageable *)v5 sendRequestID:@"_tiStart" request:MEMORY[0x277CBEC10] destinationID:v11 options:0 responseHandler:v14];
  }

  else
  {
    v7 = RPErrorF();
    v12 = _TVRCRemoteTextInputLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEFAULT, "### Activate failed: %@\n", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v7);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __48__TVRCTextInputSession__activateWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _TVRCRemoteTextInputLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "### TextInputStart failed: %@\n", &v16, 0xCu);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = *(v12 + 16);
LABEL_10:
      v13();
    }
  }

  else
  {
    if (v11)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "TextInputStarted\n", &v16, 2u);
    }

    [*(a1 + 32) _handleTextInputChange:v7 started:1];
    v14 = *(a1 + 40);
    if (v14)
    {
      v13 = *(v14 + 16);
      goto LABEL_10;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__TVRCTextInputSession_invalidate__block_invoke;
  block[3] = &unk_279D825E0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  v3 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate\n", v7, 2u);
  }

  [(RPMessageable *)self->_messenger deregisterEventID:@"_tiStarted"];
  [(RPMessageable *)self->_messenger deregisterEventID:@"_tiStopped"];
  [(RPMessageable *)self->_messenger deregisterEventID:@"_tiC"];
  if (self->_started)
  {
    self->_started = 0;
    [(RPMessageable *)self->_messenger sendRequestID:@"_tiStop" request:MEMORY[0x277CBEC10] destinationID:*MEMORY[0x277D44228] options:0 responseHandler:&__block_literal_global_1];
  }

  messenger = self->_messenger;
  self->_messenger = 0;

  [(RTIInputSystemSourceSession *)self->_rtiSession setPayloadDelegate:0];
  rtiSession = self->_rtiSession;
  self->_rtiSession = 0;

  rtiUpdatedHandler = self->_rtiUpdatedHandler;
  self->_rtiUpdatedHandler = 0;
}

void __35__TVRCTextInputSession__invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = _TVRCRemoteTextInputLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v11 = 138412290;
      v12 = v4;
      v7 = "### TextInputStop failed: %@\n";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    }
  }

  else if (v6)
  {
    LOWORD(v11) = 0;
    v7 = "TextInputStopped\n";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleTextInputStarted:(id)started
{
  v9 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  CFDataGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  v6 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = [v5 length];
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "RTI Started: %d bytes\n", v8, 8u);
  }

  [(TVRCTextInputSession *)self _handleTextInputChange:startedCopy started:1];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleTextInputStopped:(id)stopped
{
  v4 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "RTI Stopped\n", v9, 2u);
  }

  if (self->_rtiSession)
  {
    v5 = [MEMORY[0x277D46158] payloadWithData:0];
    [(RTIInputSystemSourceSession *)self->_rtiSession handleTextActionPayload:v5];
    [(RTIInputSystemSourceSession *)self->_rtiSession setPayloadDelegate:0];
    rtiSession = self->_rtiSession;
    self->_rtiSession = 0;

    v7 = MEMORY[0x26D6B0B70](self->_rtiUpdatedHandler);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 16))(v7);
    }
  }
}

- (void)handleTextActionPayload:(id)payload
{
  payloadCopy = payload;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__TVRCTextInputSession_handleTextActionPayload___block_invoke;
  v7[3] = &unk_279D82648;
  v8 = payloadCopy;
  selfCopy = self;
  v6 = payloadCopy;
  dispatch_async(dispatchQueue, v7);
}

void __48__TVRCTextInputSession_handleTextActionPayload___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) data];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "version")}];
    [v2 setObject:v5 forKeyedSubscript:@"_tiV"];
  }

  if (v3)
  {
    [v2 setObject:v3 forKeyedSubscript:@"_tiD"];
  }

  v6 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = [v3 length];
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "RTI event: %d bytes\n", v8, 8u);
  }

  [*(*(a1 + 40) + 24) sendEventID:@"_tiC" event:v2 destinationID:*MEMORY[0x277D44228] options:0 completion:&__block_literal_global_38];
  v7 = *MEMORY[0x277D85DE8];
}

void __48__TVRCTextInputSession_handleTextActionPayload___block_invoke_35(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _TVRCRemoteTextInputLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "### RTI send text change failed: %@\n", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)performDocumentRequest:(id)request completion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = requestCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "No implementation for performDocumentRequest: %@\n", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleTextInputChange:(id)change started:(BOOL)started
{
  v18 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  CFDataGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if (v7)
  {
    v8 = [MEMORY[0x277D46158] payloadWithData:v7 version:CFDictionaryGetInt64Ranged()];
    if (v8)
    {
      if (!started)
      {
        v9 = _TVRCRemoteTextInputLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v17[0] = 67109120;
          v17[1] = [v7 length];
          _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "RTI Change remote: %d bytes\n", v17, 8u);
        }
      }

      rtiSession = self->_rtiSession;
      if (!rtiSession)
      {
        v11 = objc_alloc_init(MEMORY[0x277D46178]);
        v12 = self->_rtiSession;
        self->_rtiSession = v11;

        [(RTIInputSystemSourceSession *)self->_rtiSession setPayloadDelegate:self];
        v13 = MEMORY[0x26D6B0B70](self->_rtiUpdatedHandler);
        v14 = v13;
        if (v13)
        {
          (*(v13 + 16))(v13);
        }

        rtiSession = self->_rtiSession;
      }

      [(RTIInputSystemSourceSession *)rtiSession handleTextActionPayload:v8];
    }

    else
    {
      v16 = _TVRCRemoteTextInputLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17[0]) = 0;
        _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "### TextInput change bad data\n", v17, 2u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end