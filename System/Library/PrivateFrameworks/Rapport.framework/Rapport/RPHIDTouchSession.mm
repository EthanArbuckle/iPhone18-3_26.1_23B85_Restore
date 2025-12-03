@interface RPHIDTouchSession
- (CGSize)screenSize;
- (RPHIDTouchSession)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_invalidateWithCompletion:(id)completion;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)invalidateWithCompletion:(id)completion;
- (void)sendTouchEvent:(id)event completion:(id)completion;
@end

@implementation RPHIDTouchSession

- (RPHIDTouchSession)init
{
  v6.receiver = self;
  v6.super_class = RPHIDTouchSession;
  v2 = [(RPHIDTouchSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_screenSize = vdupq_n_s64(0x408F400000000000uLL);
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
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__RPHIDTouchSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

- (void)_activateWithCompletion:(id)completion
{
  v15[3] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = self->_messenger;
  if (!v5)
  {
    v10 = RPErrorF();
    if (gLogCategory_RPHIDTouchSession <= 90 && (gLogCategory_RPHIDTouchSession != -1 || _LogCategory_Initialize()))
    {
      [RPHIDTouchSession _activateWithCompletion:];
      if (!completionCopy)
      {
        goto LABEL_11;
      }
    }

    else if (!completionCopy)
    {
LABEL_11:

      goto LABEL_12;
    }

    completionCopy[2](completionCopy, v10);
    goto LABEL_11;
  }

  if (gLogCategory_RPHIDTouchSession <= 30 && (gLogCategory_RPHIDTouchSession != -1 || _LogCategory_Initialize()))
  {
    [RPHIDTouchSession _activateWithCompletion:?];
  }

  v14[0] = @"_tFl";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_flags];
  v15[0] = v6;
  v14[1] = @"_height";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_screenSize.height];
  v15[1] = v7;
  v14[2] = @"_width";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_screenSize.width];
  v15[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__RPHIDTouchSession__activateWithCompletion___block_invoke;
  v12[3] = &unk_1E7C94750;
  v12[4] = self;
  v13 = completionCopy;
  [(RPMessageable *)v5 sendRequestID:@"_touchStart" request:v9 destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:v12];

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
}

void __45__RPHIDTouchSession__activateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (gLogCategory_RPHIDTouchSession <= 90 && (gLogCategory_RPHIDTouchSession != -1 || _LogCategory_Initialize()))
    {
      __45__RPHIDTouchSession__activateWithCompletion___block_invoke_cold_1();
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v8);
    }
  }

  else
  {
    v10 = NSDictionaryGetNSNumber();
    if (v10)
    {
      objc_storeStrong((*(a1 + 32) + 16), v10);
      if (gLogCategory_RPHIDTouchSession <= 30 && (gLogCategory_RPHIDTouchSession != -1 || _LogCategory_Initialize()))
      {
        __45__RPHIDTouchSession__activateWithCompletion___block_invoke_cold_2();
      }

      v11 = *(a1 + 40);
      if (v11)
      {
        (*(v11 + 16))(v11, 0);
      }
    }

    else
    {
      v12 = RPErrorF();
      if (gLogCategory_RPHIDTouchSession <= 90 && (gLogCategory_RPHIDTouchSession != -1 || _LogCategory_Initialize()))
      {
        __45__RPHIDTouchSession__activateWithCompletion___block_invoke_cold_1();
      }

      v13 = *(a1 + 40);
      if (v13)
      {
        (*(v13 + 16))(v13, v12);
      }
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__RPHIDTouchSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__RPHIDTouchSession_invalidateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_invalidateWithCompletion:(id)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (gLogCategory_RPHIDTouchSession <= 30 && (gLogCategory_RPHIDTouchSession != -1 || _LogCategory_Initialize()))
  {
    [RPHIDTouchSession _invalidateWithCompletion:];
  }

  touchSessionID = self->_touchSessionID;
  if (touchSessionID)
  {
    v15 = @"_i";
    v16[0] = touchSessionID;
    v6 = MEMORY[0x1E695DF20];
    v7 = touchSessionID;
    v8 = [v6 dictionaryWithObjects:v16 forKeys:&v15 count:1];
    messenger = self->_messenger;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__RPHIDTouchSession__invalidateWithCompletion___block_invoke;
    v13[3] = &unk_1E7C93780;
    v14 = completionCopy;
    [(RPMessageable *)messenger sendRequestID:@"_touchStop" request:v8 destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:v13];
    v10 = self->_touchSessionID;
    self->_touchSessionID = 0;
  }

  v11 = self->_messenger;
  self->_messenger = 0;

  v12 = *MEMORY[0x1E69E9840];
}

void __47__RPHIDTouchSession__invalidateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (gLogCategory_RPHIDTouchSession <= 90 && (gLogCategory_RPHIDTouchSession != -1 || _LogCategory_Initialize()))
    {
      __47__RPHIDTouchSession__invalidateWithCompletion___block_invoke_cold_1();
    }
  }

  else if (gLogCategory_RPHIDTouchSession <= 30 && (gLogCategory_RPHIDTouchSession != -1 || _LogCategory_Initialize()))
  {
    __47__RPHIDTouchSession__invalidateWithCompletion___block_invoke_cold_2();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }
}

- (void)sendTouchEvent:(id)event completion:(id)completion
{
  v22[5] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  completionCopy = completion;
  v8 = self->_messenger;
  if (v8)
  {
    [eventCopy location];
    v10 = (v9 * self->_screenSize.width);
    v12 = (v11 * self->_screenSize.height);
    [eventCopy timestampSeconds];
    v21[0] = @"_ns";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(v13 * 1000000000.0)];
    v22[0] = v14;
    v21[1] = @"_tFg";
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(eventCopy, "finger")}];
    v22[1] = v15;
    v21[2] = @"_tPh";
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(eventCopy, "phase")}];
    v22[2] = v16;
    v21[3] = @"_cx";
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v10];
    v22[3] = v17;
    v21[4] = @"_cy";
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v12];
    v22[4] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];

    [(RPMessageable *)v8 sendEventID:@"_hidT" event:v19 destinationID:@"rapport:rdid:DirectPeer" options:0 completion:completionCopy];
  }

  else if (gLogCategory_RPHIDTouchSession <= 90 && (gLogCategory_RPHIDTouchSession != -1 || _LogCategory_Initialize()))
  {
    [RPHIDTouchSession sendTouchEvent:completion:];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (CGSize)screenSize
{
  width = self->_screenSize.width;
  height = self->_screenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (uint64_t)_activateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v4 = *(a1 + 24);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  return LogPrintF();
}

@end