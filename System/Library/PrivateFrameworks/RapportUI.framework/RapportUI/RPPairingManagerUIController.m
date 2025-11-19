@interface RPPairingManagerUIController
- (RPPairingManagerUIController)init;
- (void)_cleanup;
- (void)invalidate;
@end

@implementation RPPairingManagerUIController

- (RPPairingManagerUIController)init
{
  v5.receiver = self;
  v5.super_class = RPPairingManagerUIController;
  v2 = [(RPPairingManagerUIController *)&v5 init];
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
}

void __40__RPPairingManagerUIController_activate__block_invoke()
{
  if (gLogCategory_RPPairingManagerUIController <= 30 && (gLogCategory_RPPairingManagerUIController != -1 || _LogCategory_Initialize()))
  {
    __40__RPPairingManagerUIController_activate__block_invoke_cold_1();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__RPPairingManagerUIController_invalidate__block_invoke;
  block[3] = &unk_279AEC5E0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __42__RPPairingManagerUIController_invalidate__block_invoke(uint64_t a1)
{
  if (gLogCategory_RPPairingManagerUIController <= 30 && (gLogCategory_RPPairingManagerUIController != -1 || _LogCategory_Initialize()))
  {
    __42__RPPairingManagerUIController_invalidate__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = v2[5];
  if (v3)
  {
    (*(v3 + 16))(v2[5]);
    v2 = *(a1 + 32);
  }

  return [v2 _cleanup];
}

@end