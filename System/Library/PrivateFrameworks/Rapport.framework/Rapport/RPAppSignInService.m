@interface RPAppSignInService
- (RPAppSignInService)init;
- (id)description;
- (void)_activate;
- (void)_invalidate;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
@end

@implementation RPAppSignInService

- (RPAppSignInService)init
{
  v6.receiver = self;
  v6.super_class = RPAppSignInService;
  v2 = [(RPAppSignInService *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (id)description
{
  NSAppendPrintF();

  return 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__RPAppSignInService_activate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __30__RPAppSignInService_activate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    v3 = result;
    *(v2 + 8) = 1;
    if (gLogCategory_RPAppSignInService <= 30 && (gLogCategory_RPAppSignInService != -1 || _LogCategory_Initialize()))
    {
      __30__RPAppSignInService_activate__block_invoke_cold_1();
    }

    v4 = *(v3 + 32);

    return [v4 _activate];
  }

  return result;
}

- (void)_activate
{
  if (gLogCategory_RPAppSignInService <= 30 && (gLogCategory_RPAppSignInService != -1 || _LogCategory_Initialize()))
  {
    [RPAppSignInService _activate];
  }

  v3 = objc_alloc_init(getSFServiceClass[0]());
  objc_storeStrong(&self->_bleAdvertiser, v3);
  [v3 setDeviceActionType:28];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];
  [v3 setIdentifier:v5];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__RPAppSignInService__activate__block_invoke;
  v7[3] = &unk_1E7C92D10;
  v8 = v3;
  v9 = self;
  v6 = v3;
  [v6 activateWithCompletion:v7];
}

void __31__RPAppSignInService__activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 16))
  {
    if (v3)
    {
      v8 = v3;
      if (gLogCategory_RPAppSignInService <= 30 && (gLogCategory_RPAppSignInService != -1 || _LogCategory_Initialize()))
      {
        __31__RPAppSignInService__activate__block_invoke_cold_1();
      }

      [*(*(a1 + 40) + 16) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 16);
      *(v5 + 16) = 0;

      goto LABEL_7;
    }

    if (gLogCategory_RPAppSignInService <= 30)
    {
      v8 = 0;
      if (gLogCategory_RPAppSignInService != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
      {
        __31__RPAppSignInService__activate__block_invoke_cold_2();
LABEL_7:
        v4 = v8;
      }
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__RPAppSignInService_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __32__RPAppSignInService_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    if (gLogCategory_RPAppSignInService <= 30 && (gLogCategory_RPAppSignInService != -1 || _LogCategory_Initialize()))
    {
      __32__RPAppSignInService_invalidate__block_invoke_cold_1();
    }

    v4 = *(v3 + 32);

    return [v4 _invalidate];
  }

  return result;
}

- (void)_invalidate
{
  if (self->_bleAdvertiser)
  {
    if (gLogCategory_RPAppSignInService <= 30 && (gLogCategory_RPAppSignInService != -1 || _LogCategory_Initialize()))
    {
      [RPAppSignInService _invalidate];
    }

    [(SFService *)self->_bleAdvertiser invalidate];
    bleAdvertiser = self->_bleAdvertiser;
    self->_bleAdvertiser = 0;
  }

  [(RPAppSignInService *)self _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    if (gLogCategory_RPAppSignInService <= 30 && (gLogCategory_RPAppSignInService != -1 || _LogCategory_Initialize()))
    {
      [RPAppSignInService _invalidated];
    }
  }
}

@end