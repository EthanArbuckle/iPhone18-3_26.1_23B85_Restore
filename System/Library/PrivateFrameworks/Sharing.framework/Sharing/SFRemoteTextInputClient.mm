@interface SFRemoteTextInputClient
- (NSDictionary)currentPayload;
- (RTIInputSystemSourceSession)sourceSession;
- (SFRemoteTextInputClient)init;
- (void)_cleanup;
- (void)_fireEventHandlerWithPayload:(id)payload;
- (void)_handleSessionEvent:(int64_t)event forSession:(id)session;
- (void)activate;
- (void)currentPayload;
- (void)dealloc;
- (void)fireEventHandlerWithPayload:(id)payload;
- (void)handleTextActionPayload:(id)payload;
- (void)handleTextInputData:(id)data;
- (void)handleUsername:(id)username password:(id)password;
- (void)inputSystemService:(id)service didCreateInputSession:(id)session;
- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin;
- (void)inputSystemService:(id)service inputSessionDidDie:(id)die;
- (void)inputSystemService:(id)service inputSessionDidEnd:(id)end;
- (void)inputSystemService:(id)service inputSessionDidPause:(id)pause withReason:(id)reason;
- (void)inputSystemService:(id)service inputSessionDidUnpause:(id)unpause withReason:(id)reason;
- (void)inputSystemService:(id)service inputSessionDocumentDidChange:(id)change;
- (void)invalidate;
- (void)performTextOperations:(id)operations;
@end

@implementation SFRemoteTextInputClient

- (SFRemoteTextInputClient)init
{
  v7.receiver = self;
  v7.super_class = SFRemoteTextInputClient;
  v2 = [(SFRemoteTextInputClient *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SFRemoteAutoFillService dealloc];
    [(SFRemoteTextInputClient *)v3 activate];
  }

  else
  {
    [(SFRemoteTextInputClient *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFRemoteTextInputClient;
    [(SFRemoteTextInputClient *)&v5 dealloc];
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFRemoteTextInputClient_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SFRemoteTextInputClient_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
  {
    __35__SFRemoteTextInputClient_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  *(*(a1 + 32) + 10) = 0;
  v2 = objc_alloc(getRTIInputSystemServiceClass());
  v3 = getRTIServiceSharingName();
  v4 = [v2 initWithMachName:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;

  [*(*(a1 + 32) + 16) setDelegate:?];
  [*(*(a1 + 32) + 16) setEnabled:1];
  v7 = objc_alloc_init(getRTIInputSystemSourceSessionClass());
  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = v7;

  v10 = *(*(a1 + 32) + 24);

  return [v10 setPayloadDelegate:?];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFRemoteTextInputClient_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFRemoteTextInputClient_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
  {
    __37__SFRemoteTextInputClient_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 9) = 1;
  *(*(a1 + 32) + 10) = 0;
  [*(*(a1 + 32) + 16) setDelegate:0];
  [*(*(a1 + 32) + 16) setEnabled:0];
  [*(*(a1 + 32) + 24) setPayloadDelegate:0];
  v2 = *(a1 + 32);

  return [v2 _cleanup];
}

- (void)_cleanup
{
  eventHandler = self->_eventHandler;
  self->_eventHandler = 0;

  self->_paused = 0;
  rtiService = self->_rtiService;
  self->_rtiService = 0;

  rtiSourceSession = self->_rtiSourceSession;
  self->_rtiSourceSession = 0;

  textInputDidBegin = self->_textInputDidBegin;
  self->_textInputDidBegin = 0;

  textInputDidEnd = self->_textInputDidEnd;
  self->_textInputDidEnd = 0;
}

- (NSDictionary)currentPayload
{
  v12[1] = *MEMORY[0x1E69E9840];
  currentSession = [(RTIInputSystemService *)self->_rtiService currentSession];
  currentDataPayload = [currentSession currentDataPayload];

  if (!self->_activateCalled || self->_invalidateCalled)
  {
    [(SFRemoteTextInputClient *)&v11 currentPayload];
    v6 = 0;
    v7 = v10;
  }

  else
  {
    if (self->_rtiService && currentDataPayload)
    {
      v5 = SFTextInputDataForRTIDataPayload(currentDataPayload);
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        goto LABEL_12;
      }

      v7 = NSErrorWithOSStatusF();
      if (v7 && gLogCategory_SFRemoteTextInputClient <= 60 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
      {
        [(SFRemoteTextInputClient *)v7 currentPayload];
      }
    }

    else
    {
      v7 = NSErrorWithOSStatusF();
    }

    v6 = 0;
  }

LABEL_12:

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (RTIInputSystemSourceSession)sourceSession
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    return self->_rtiSourceSession;
  }

  else
  {
    return 0;
  }
}

- (void)handleTextInputData:(id)data
{
  dataCopy = data;
  v12 = dataCopy;
  if (gLogCategory_SFRemoteTextInputClient <= 30)
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || (v5 = _LogCategory_Initialize(), dataCopy = v12, v5))
    {
      [SFRemoteTextInputClient handleTextInputData:dataCopy];
      dataCopy = v12;
    }
  }

  v6 = SFRTIDataPayloadForData(dataCopy);
  if (v6)
  {
    p_rtiService = &self->_rtiService;
    currentSession = [(RTIInputSystemService *)self->_rtiService currentSession];
    if (currentSession)
    {
    }

    else if (self->_rtiSourceSession)
    {
      if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteTextInputClient handleTextInputData:];
      }

      [(RTIInputSystemSourceSession *)self->_rtiSourceSession handleTextActionPayload:v6];
      goto LABEL_17;
    }

    currentSession2 = [(RTIInputSystemService *)*p_rtiService currentSession];

    if (currentSession2)
    {
      if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteTextInputClient handleTextInputData:?];
      }

      currentSession3 = [(RTIInputSystemService *)*p_rtiService currentSession];
      [currentSession3 handleTextActionPayload:v6];

LABEL_17:
      v11 = 0;
      goto LABEL_18;
    }

    if (gLogCategory_SFRemoteTextInputClient <= 60 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteTextInputClient handleTextInputData:];
    }
  }

  v11 = NSErrorWithOSStatusF();
  if (v11 && gLogCategory_SFRemoteTextInputClient <= 60 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteTextInputClient handleTextInputData:v11];
  }

LABEL_18:
}

- (void)handleUsername:(id)username password:(id)password
{
  usernameCopy = username;
  passwordCopy = password;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  currentSession = [(RTIInputSystemService *)self->_rtiService currentSession];
  v9 = usernameCopy;
  if (!currentSession)
  {
    [SFRemoteTextInputClient handleUsername:password:];
    goto LABEL_11;
  }

  if (!(usernameCopy | passwordCopy))
  {
    [SFRemoteTextInputClient handleUsername:gLogCategory_SFRemoteTextInputClient password:?];
    goto LABEL_11;
  }

  if (gLogCategory_SFRemoteTextInputClient <= 30)
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || (v10 = _LogCategory_Initialize(), v9 = usernameCopy, v10))
    {
      [SFRemoteTextInputClient handleUsername:password:];
      if (!usernameCopy)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  if (v9)
  {
LABEL_7:
    v11 = getTIKeyboardOutputInfoTypeUsernameStr();
    [v7 setObject:usernameCopy forKeyedSubscript:v11];
  }

LABEL_8:
  if (passwordCopy)
  {
    v12 = getTIKeyboardOutputInfoTypePasswordStr();
    [v7 setObject:passwordCopy forKeyedSubscript:v12];
  }

  textOperations = [currentSession textOperations];
  keyboardOutput = [textOperations keyboardOutput];
  [keyboardOutput setCustomInfo:v7];

  [currentSession setSessionDelegate:self->_rtiService];
  [currentSession flushOperations];
LABEL_11:
}

- (void)fireEventHandlerWithPayload:(id)payload
{
  payloadCopy = payload;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SFRemoteTextInputClient_fireEventHandlerWithPayload___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = payloadCopy;
  v6 = payloadCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_fireEventHandlerWithPayload:(id)payload
{
  v12[1] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  payloadCopy = payload;
  dispatch_assert_queue_V2(dispatchQueue);
  v6 = SFTextInputDataForRTIDataPayload(payloadCopy);

  if (v6)
  {
    if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteTextInputClient _fireEventHandlerWithPayload:v6];
    }

    eventHandler = self->_eventHandler;
    if (eventHandler)
    {
      eventHandler[2](eventHandler, v6);
    }

    v8 = 0;
  }

  else
  {
    [(SFRemoteTextInputClient *)&v11 _fireEventHandlerWithPayload:v12, &v10];
    v8 = v10;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_handleSessionEvent:(int64_t)event forSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  documentTraits = [sessionCopy documentTraits];
  autofillMode = [documentTraits autofillMode];

  if (gLogCategory_SFRemoteTextInputClient >= 31)
  {
    v8 = autofillMode == 1;
  }

  else
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize())
    {
      [SFRemoteTextInputClient _handleSessionEvent:forSession:];
    }

    v8 = autofillMode == 1;
    if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteTextInputClient _handleSessionEvent:event forSession:?];
    }
  }

  documentTraits2 = [sessionCopy documentTraits];
  if (documentTraits2)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    associatedDomains = [documentTraits2 associatedDomains];
    [v10 setObject:associatedDomains forKeyedSubscript:@"remoteAssociatedDomains"];

    bundleId = [documentTraits2 bundleId];
    [v10 setObject:bundleId forKeyedSubscript:@"remoteBundleID"];

    localizedAppName = [documentTraits2 localizedAppName];
    [v10 setObject:localizedAppName forKeyedSubscript:@"remoteLocalizedAppName"];

    appName = [documentTraits2 appName];
    [v10 setObject:appName forKeyedSubscript:@"remoteUnlocalizedAppName"];
  }

  else
  {
    v10 = 0;
  }

  if (event > 3)
  {
    if (event == 4)
    {
LABEL_31:
      v15 = 0;
      goto LABEL_36;
    }

    if (event == 5)
    {
      v15 = 0;
      self->_paused = 1;
      goto LABEL_36;
    }

    if (event != 6)
    {
LABEL_23:
      if (gLogCategory_SFRemoteTextInputClient <= 60 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteTextInputClient _handleSessionEvent:forSession:];
      }

      goto LABEL_31;
    }

    v15 = 0;
    self->_paused = 0;
  }

  else
  {
    switch(event)
    {
      case 1:
        self->_paused = 0;
        textInputDidBegin = self->_textInputDidBegin;
        if (textInputDidBegin)
        {
          textInputDidBegin[2](textInputDidBegin, v8, v10);
        }

        goto LABEL_31;
      case 2:
        if (self->_paused)
        {
          if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
          {
            [SFRemoteTextInputClient _handleSessionEvent:forSession:];
          }

          goto LABEL_31;
        }

        break;
      case 3:
        break;
      default:
        goto LABEL_23;
    }

    textInputDidEnd = self->_textInputDidEnd;
    if (textInputDidEnd)
    {
      textInputDidEnd[2](textInputDidEnd, v8, v10);
    }

    v15 = 1;
  }

LABEL_36:
  currentDataPayload = [sessionCopy currentDataPayload];
  v19 = currentDataPayload;
  if ((v15 & 1) != 0 || !currentDataPayload)
  {
    if (gLogCategory_SFRemoteTextInputClient <= 60 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteTextInputClient _handleSessionEvent:forSession:];
    }
  }

  else
  {
    [(SFRemoteTextInputClient *)self fireEventHandlerWithPayload:currentDataPayload];
  }
}

- (void)performTextOperations:(id)operations
{
  operationsCopy = operations;
  v4 = operationsCopy;
  if (gLogCategory_SFRemoteTextInputClient <= 30)
  {
    v6 = operationsCopy;
    if (gLogCategory_SFRemoteTextInputClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [SFRemoteTextInputClient performTextOperations:];
      v4 = v6;
    }
  }
}

- (void)inputSystemService:(id)service didCreateInputSession:(id)session
{
  serviceCopy = service;
  sessionCopy = session;
  v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteTextInputClient/didCreateInputSession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin
{
  beginCopy = begin;
  v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteTextInputClient/inputSessionDidBegin", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  dispatchQueue = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__SFRemoteTextInputClient_inputSystemService_inputSessionDidBegin___block_invoke;
  v9[3] = &unk_1E788A658;
  v9[4] = self;
  v10 = beginCopy;
  v8 = beginCopy;
  dispatch_async(dispatchQueue, v9);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)service inputSessionDidEnd:(id)end
{
  endCopy = end;
  v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteTextInputClient/inputSessionDidEnd", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  dispatchQueue = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__SFRemoteTextInputClient_inputSystemService_inputSessionDidEnd___block_invoke;
  v9[3] = &unk_1E788A658;
  v9[4] = self;
  v10 = endCopy;
  v8 = endCopy;
  dispatch_async(dispatchQueue, v9);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)service inputSessionDidDie:(id)die
{
  dieCopy = die;
  v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteTextInputClient/inputSessionDidDie", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  dispatchQueue = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__SFRemoteTextInputClient_inputSystemService_inputSessionDidDie___block_invoke;
  v9[3] = &unk_1E788A658;
  v9[4] = self;
  v10 = dieCopy;
  v8 = dieCopy;
  dispatch_async(dispatchQueue, v9);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)service inputSessionDidPause:(id)pause withReason:(id)reason
{
  pauseCopy = pause;
  v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteTextInputClient/inputSessionDidPause", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__SFRemoteTextInputClient_inputSystemService_inputSessionDidPause_withReason___block_invoke;
  v10[3] = &unk_1E788A658;
  v10[4] = self;
  v11 = pauseCopy;
  v9 = pauseCopy;
  dispatch_async(dispatchQueue, v10);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)service inputSessionDidUnpause:(id)unpause withReason:(id)reason
{
  unpauseCopy = unpause;
  v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteTextInputClient/inputSessionDidUnpause", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__SFRemoteTextInputClient_inputSystemService_inputSessionDidUnpause_withReason___block_invoke;
  v10[3] = &unk_1E788A658;
  v10[4] = self;
  v11 = unpauseCopy;
  v9 = unpauseCopy;
  dispatch_async(dispatchQueue, v10);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)service inputSessionDocumentDidChange:(id)change
{
  changeCopy = change;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__SFRemoteTextInputClient_inputSystemService_inputSessionDocumentDidChange___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_async(dispatchQueue, v8);
}

- (void)handleTextActionPayload:(id)payload
{
  payloadCopy = payload;
  v6 = payloadCopy;
  if (gLogCategory_SFRemoteTextInputClient <= 30)
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || (v5 = _LogCategory_Initialize(), payloadCopy = v6, v5))
    {
      [SFRemoteTextInputClient handleTextActionPayload:];
      payloadCopy = v6;
    }
  }

  [(SFRemoteTextInputClient *)self fireEventHandlerWithPayload:payloadCopy];
}

- (void)currentPayload
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  *self = *MEMORY[0x1E696A578];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v9 = v8;
  v10 = @"?";
  if (v8)
  {
    v10 = v8;
  }

  *a2 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a2 forKeys:self count:1];
  *a3 = [v6 errorWithDomain:v7 code:-6709 userInfo:v11];
}

- (void)handleTextInputData:(void *)a1 .cold.1(void *a1)
{
  v1 = SFTextInputDataLogString(a1);
  LogPrintF();
}

- (void)handleTextInputData:(id *)a1 .cold.3(id *a1)
{
  v1 = [*a1 currentSession];
  LogPrintF();
}

- (void)handleTextInputData:(void *)a1 .cold.5(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF();
}

- (uint64_t)handleUsername:(uint64_t)result password:(int)a2 .cold.2(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 != -1)
    {
      return OUTLINED_FUNCTION_2_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_2_1();
    }
  }

  return result;
}

- (void)handleUsername:password:.cold.3()
{
  if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_1();
  }
}

- (void)_fireEventHandlerWithPayload:(void *)a1 .cold.1(void *a1)
{
  v1 = SFTextInputDataLogString(a1);
  LogPrintF();
}

- (void)_fireEventHandlerWithPayload:(void *)a3 .cold.2(void *a1, __CFString **a2, void *a3)
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  *a1 = *MEMORY[0x1E696A578];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v9 = v8;
  v10 = @"?";
  if (v8)
  {
    v10 = v8;
  }

  *a2 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a2 forKeys:a1 count:1];
  v12 = [v6 errorWithDomain:v7 code:-6720 userInfo:v11];

  if (v12 && gLogCategory_SFRemoteTextInputClient <= 60 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
  {
    v13 = [v12 localizedDescription];
    LogPrintF();
  }

  *a3 = v12;
}

- (uint64_t)_handleSessionEvent:(uint64_t)a1 forSession:.cold.2(uint64_t a1)
{
  if ((a1 - 1) <= 5)
  {
    v1 = *(&off_1E788DAB8 + a1 - 1);
  }

  return LogPrintF();
}

@end