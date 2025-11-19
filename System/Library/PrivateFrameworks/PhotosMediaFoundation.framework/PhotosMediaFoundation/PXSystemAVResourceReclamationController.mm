@interface PXSystemAVResourceReclamationController
- (PXSystemAVResourceReclamationController)init;
- (id)takeAssertionPreventingResourceReclamationWithReason:(id)a3;
- (void)_handleMediaServicesWereResetNotification:(id)a3;
@end

@implementation PXSystemAVResourceReclamationController

- (PXSystemAVResourceReclamationController)init
{
  v17.receiver = self;
  v17.super_class = PXSystemAVResourceReclamationController;
  v2 = [(PXConcreteAVResourceReclamationController *)&v17 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277CB80A0];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __47__PXSystemAVResourceReclamationController_init__block_invoke;
    v14 = &unk_279A290A0;
    objc_copyWeak(&v15, &location);
    v5 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:&v11];

    v6 = [MEMORY[0x277CE6600] defaultController];
    systemController = v2->_systemController;
    v2->_systemController = v6;

    if (MEMORY[0x25F8BAC40]())
    {
      [(AVResourceReclamationController *)v2->_systemController permitReclamationWhileSuspended];
    }

    v8 = [(AVResourceReclamationController *)v2->_systemController addReclamationEventObserver:v2];
    observerToken = v2->_observerToken;
    v2->_observerToken = v8;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)takeAssertionPreventingResourceReclamationWithReason:(id)a3
{
  v4 = a3;
  v5 = [(PXSystemAVResourceReclamationController *)self systemController];
  v6 = [v5 takeAssertionPreventingResourceReclamationWithReason:v4];

  return v6;
}

- (void)_handleMediaServicesWereResetNotification:(id)a3
{
  ++_handleMediaServicesWereResetNotification__mediaServicesResetCount;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [v4 initWithFormat:@"AVMediaServicesReset-%d", _handleMediaServicesWereResetNotification__mediaServicesResetCount];
  [(PXConcreteAVResourceReclamationController *)self reclamationEventDidOccur:v5];
}

void __47__PXSystemAVResourceReclamationController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMediaServicesWereResetNotification:v3];
}

@end