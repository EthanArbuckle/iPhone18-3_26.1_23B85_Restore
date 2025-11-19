@interface SFRemoteTextInputClient
- (NSDictionary)currentPayload;
- (RTIInputSystemSourceSession)sourceSession;
- (SFRemoteTextInputClient)init;
- (void)_cleanup;
- (void)_fireEventHandlerWithPayload:(id)a3;
- (void)_handleSessionEvent:(int64_t)a3 forSession:(id)a4;
- (void)activate;
- (void)currentPayload;
- (void)dealloc;
- (void)fireEventHandlerWithPayload:(id)a3;
- (void)handleTextActionPayload:(id)a3;
- (void)handleTextInputData:(id)a3;
- (void)handleUsername:(id)a3 password:(id)a4;
- (void)inputSystemService:(id)a3 didCreateInputSession:(id)a4;
- (void)inputSystemService:(id)a3 inputSessionDidBegin:(id)a4;
- (void)inputSystemService:(id)a3 inputSessionDidDie:(id)a4;
- (void)inputSystemService:(id)a3 inputSessionDidEnd:(id)a4;
- (void)inputSystemService:(id)a3 inputSessionDidPause:(id)a4 withReason:(id)a5;
- (void)inputSystemService:(id)a3 inputSessionDidUnpause:(id)a4 withReason:(id)a5;
- (void)inputSystemService:(id)a3 inputSessionDocumentDidChange:(id)a4;
- (void)invalidate;
- (void)performTextOperations:(id)a3;
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
  v3 = [(RTIInputSystemService *)self->_rtiService currentSession];
  v4 = [v3 currentDataPayload];

  if (!self->_activateCalled || self->_invalidateCalled)
  {
    [(SFRemoteTextInputClient *)&v11 currentPayload];
    v6 = 0;
    v7 = v10;
  }

  else
  {
    if (self->_rtiService && v4)
    {
      v5 = SFTextInputDataForRTIDataPayload(v4);
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

- (void)handleTextInputData:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (gLogCategory_SFRemoteTextInputClient <= 30)
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v12, v5))
    {
      [SFRemoteTextInputClient handleTextInputData:v4];
      v4 = v12;
    }
  }

  v6 = SFRTIDataPayloadForData(v4);
  if (v6)
  {
    p_rtiService = &self->_rtiService;
    v8 = [(RTIInputSystemService *)self->_rtiService currentSession];
    if (v8)
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

    v9 = [(RTIInputSystemService *)*p_rtiService currentSession];

    if (v9)
    {
      if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteTextInputClient handleTextInputData:?];
      }

      v10 = [(RTIInputSystemService *)*p_rtiService currentSession];
      [v10 handleTextActionPayload:v6];

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

- (void)handleUsername:(id)a3 password:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(RTIInputSystemService *)self->_rtiService currentSession];
  v9 = v15;
  if (!v8)
  {
    [SFRemoteTextInputClient handleUsername:password:];
    goto LABEL_11;
  }

  if (!(v15 | v6))
  {
    [SFRemoteTextInputClient handleUsername:gLogCategory_SFRemoteTextInputClient password:?];
    goto LABEL_11;
  }

  if (gLogCategory_SFRemoteTextInputClient <= 30)
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || (v10 = _LogCategory_Initialize(), v9 = v15, v10))
    {
      [SFRemoteTextInputClient handleUsername:password:];
      if (!v15)
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
    [v7 setObject:v15 forKeyedSubscript:v11];
  }

LABEL_8:
  if (v6)
  {
    v12 = getTIKeyboardOutputInfoTypePasswordStr();
    [v7 setObject:v6 forKeyedSubscript:v12];
  }

  v13 = [v8 textOperations];
  v14 = [v13 keyboardOutput];
  [v14 setCustomInfo:v7];

  [v8 setSessionDelegate:self->_rtiService];
  [v8 flushOperations];
LABEL_11:
}

- (void)fireEventHandlerWithPayload:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SFRemoteTextInputClient_fireEventHandlerWithPayload___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_fireEventHandlerWithPayload:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v6 = SFTextInputDataForRTIDataPayload(v5);

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

- (void)_handleSessionEvent:(int64_t)a3 forSession:(id)a4
{
  v20 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [v20 documentTraits];
  v7 = [v6 autofillMode];

  if (gLogCategory_SFRemoteTextInputClient >= 31)
  {
    v8 = v7 == 1;
  }

  else
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize())
    {
      [SFRemoteTextInputClient _handleSessionEvent:forSession:];
    }

    v8 = v7 == 1;
    if (gLogCategory_SFRemoteTextInputClient <= 30 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteTextInputClient _handleSessionEvent:a3 forSession:?];
    }
  }

  v9 = [v20 documentTraits];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [v9 associatedDomains];
    [v10 setObject:v11 forKeyedSubscript:@"remoteAssociatedDomains"];

    v12 = [v9 bundleId];
    [v10 setObject:v12 forKeyedSubscript:@"remoteBundleID"];

    v13 = [v9 localizedAppName];
    [v10 setObject:v13 forKeyedSubscript:@"remoteLocalizedAppName"];

    v14 = [v9 appName];
    [v10 setObject:v14 forKeyedSubscript:@"remoteUnlocalizedAppName"];
  }

  else
  {
    v10 = 0;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
LABEL_31:
      v15 = 0;
      goto LABEL_36;
    }

    if (a3 == 5)
    {
      v15 = 0;
      self->_paused = 1;
      goto LABEL_36;
    }

    if (a3 != 6)
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
    switch(a3)
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
  v18 = [v20 currentDataPayload];
  v19 = v18;
  if ((v15 & 1) != 0 || !v18)
  {
    if (gLogCategory_SFRemoteTextInputClient <= 60 && (gLogCategory_SFRemoteTextInputClient != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteTextInputClient _handleSessionEvent:forSession:];
    }
  }

  else
  {
    [(SFRemoteTextInputClient *)self fireEventHandlerWithPayload:v18];
  }
}

- (void)performTextOperations:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (gLogCategory_SFRemoteTextInputClient <= 30)
  {
    v6 = v3;
    if (gLogCategory_SFRemoteTextInputClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [SFRemoteTextInputClient performTextOperations:];
      v4 = v6;
    }
  }
}

- (void)inputSystemService:(id)a3 didCreateInputSession:(id)a4
{
  v5 = a3;
  v6 = a4;
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

- (void)inputSystemService:(id)a3 inputSessionDidBegin:(id)a4
{
  v5 = a4;
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
  v10 = v5;
  v8 = v5;
  dispatch_async(dispatchQueue, v9);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)a3 inputSessionDidEnd:(id)a4
{
  v5 = a4;
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
  v10 = v5;
  v8 = v5;
  dispatch_async(dispatchQueue, v9);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)a3 inputSessionDidDie:(id)a4
{
  v5 = a4;
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
  v10 = v5;
  v8 = v5;
  dispatch_async(dispatchQueue, v9);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)a3 inputSessionDidPause:(id)a4 withReason:(id)a5
{
  v6 = a4;
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
  v11 = v6;
  v9 = v6;
  dispatch_async(dispatchQueue, v10);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)a3 inputSessionDidUnpause:(id)a4 withReason:(id)a5
{
  v6 = a4;
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
  v11 = v6;
  v9 = v6;
  dispatch_async(dispatchQueue, v10);

  os_activity_scope_leave(&state);
}

- (void)inputSystemService:(id)a3 inputSessionDocumentDidChange:(id)a4
{
  v5 = a4;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__SFRemoteTextInputClient_inputSystemService_inputSessionDocumentDidChange___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(dispatchQueue, v8);
}

- (void)handleTextActionPayload:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (gLogCategory_SFRemoteTextInputClient <= 30)
  {
    if (gLogCategory_SFRemoteTextInputClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [SFRemoteTextInputClient handleTextActionPayload:];
      v4 = v6;
    }
  }

  [(SFRemoteTextInputClient *)self fireEventHandlerWithPayload:v4];
}

- (void)currentPayload
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