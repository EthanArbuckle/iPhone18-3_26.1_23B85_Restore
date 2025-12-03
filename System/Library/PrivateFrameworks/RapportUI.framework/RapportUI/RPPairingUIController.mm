@interface RPPairingUIController
- (RPPairingUIController)init;
- (void)_cleanup;
- (void)activate;
- (void)invalidate;
- (void)promptWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
@end

@implementation RPPairingUIController

- (RPPairingUIController)init
{
  v5.receiver = self;
  v5.super_class = RPPairingUIController;
  v2 = [(RPPairingUIController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
  }

  return v3;
}

- (void)_cleanup
{
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = 0;

  tryPINHandler = self->_tryPINHandler;
  self->_tryPINHandler = 0;
}

- (void)activate
{
  if (gLogCategory_RPPairingUIController <= 30 && (gLogCategory_RPPairingUIController != -1 || _LogCategory_Initialize()))
  {
    [RPPairingUIController activate];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__RPPairingUIController_invalidate__block_invoke;
  block[3] = &unk_279AEC5E0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__RPPairingUIController_invalidate__block_invoke(uint64_t a1)
{
  if (gLogCategory_RPPairingUIController <= 30 && (gLogCategory_RPPairingUIController != -1 || _LogCategory_Initialize()))
  {
    __35__RPPairingUIController_invalidate__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3)
  {
    (*(v3 + 16))(v2[2]);
    v2 = *(a1 + 32);
  }

  return [v2 _cleanup];
}

- (void)promptWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RPPairingUIController_promptWithFlags_throttleSeconds___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  flagsCopy = flags;
  secondsCopy = seconds;
  dispatch_async(dispatchQueue, block);
}

uint64_t __57__RPPairingUIController_promptWithFlags_throttleSeconds___block_invoke(uint64_t result)
{
  if (gLogCategory_RPPairingUIController <= 30)
  {
    v1 = result;
    if (gLogCategory_RPPairingUIController != -1)
    {
      return __57__RPPairingUIController_promptWithFlags_throttleSeconds___block_invoke_cold_1(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __57__RPPairingUIController_promptWithFlags_throttleSeconds___block_invoke_cold_1(v1);
    }
  }

  return result;
}

uint64_t __57__RPPairingUIController_promptWithFlags_throttleSeconds___block_invoke_cold_1(uint64_t a1)
{
  v3 = *(a1 + 36);
  v2 = *(a1 + 32);
  return LogPrintF();
}

@end