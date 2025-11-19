@interface RPHIDSession
- (RPHIDSession)init;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
@end

@implementation RPHIDSession

- (RPHIDSession)init
{
  v6.receiver = self;
  v6.super_class = RPHIDSession;
  v2 = [(RPHIDSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = v5;
  if (!v5)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__RPHIDSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

void __39__RPHIDSession_activateWithCompletion___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    if (gLogCategory_RPHIDSession <= 30 && (gLogCategory_RPHIDSession != -1 || _LogCategory_Initialize()))
    {
      __39__RPHIDSession_activateWithCompletion___block_invoke_cold_1();
    }

    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }

  else
  {
    v4 = RPErrorF();
    v7 = v4;
    if (gLogCategory_RPHIDSession <= 90)
    {
      if (gLogCategory_RPHIDSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        __39__RPHIDSession_activateWithCompletion___block_invoke_cold_2();
        v4 = v7;
      }
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v7);
      v4 = v7;
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__RPHIDSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __26__RPHIDSession_invalidate__block_invoke(uint64_t a1)
{
  if (gLogCategory_RPHIDSession <= 30 && (gLogCategory_RPHIDSession != -1 || _LogCategory_Initialize()))
  {
    __26__RPHIDSession_invalidate__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

uint64_t __52__RPHIDSession_hidCommand_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

uint64_t __64__RPHIDSession_hidCommand_buttonState_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

@end