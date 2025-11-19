@interface PXConcreteAVResourceReclamationController
- (PXConcreteAVResourceReclamationController)init;
- (id)observationWithWeakTarget:(id)a3 selector:(SEL)a4;
- (void)_enumerateObservers:(id)a3;
- (void)registerObserver:(id)a3;
- (void)setMostRecentReclamationEvent:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation PXConcreteAVResourceReclamationController

- (PXConcreteAVResourceReclamationController)init
{
  v10.receiver = self;
  v10.super_class = PXConcreteAVResourceReclamationController;
  v2 = [(PXConcreteAVResourceReclamationController *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);

    v7 = dispatch_queue_create("com.apple.PXConcreteAVResourceReclamationController.observers", v6);
    observersQueue = v2->_observersQueue;
    v2->_observersQueue = v7;
  }

  return v2;
}

- (void)_enumerateObservers:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__PXConcreteAVResourceReclamationController__enumerateObservers___block_invoke;
  block[3] = &unk_279A29078;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(observersQueue, block);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v17[5];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if (*(*(&v11 + 1) + 8 * v9))
        {
          v4[2](v4);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v16, 8);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __65__PXConcreteAVResourceReclamationController__enumerateObservers___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setMostRecentReclamationEvent:(id)a3
{
  v5 = a3;
  if (self->_mostRecentReclamationEvent != v5)
  {
    objc_storeStrong(&self->_mostRecentReclamationEvent, a3);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __75__PXConcreteAVResourceReclamationController_setMostRecentReclamationEvent___block_invoke;
    v6[3] = &unk_279A29050;
    v7 = v5;
    [(PXConcreteAVResourceReclamationController *)self _enumerateObservers:v6];
  }
}

- (id)observationWithWeakTarget:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = [[PXResourceReclamationObservation alloc] initWithController:self weakTarget:v6 selector:a4];

  return v7;
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  observersQueue = self->_observersQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PXConcreteAVResourceReclamationController_unregisterObserver___block_invoke;
  v7[3] = &unk_279A29028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(observersQueue, v7);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  observersQueue = self->_observersQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__PXConcreteAVResourceReclamationController_registerObserver___block_invoke;
  v7[3] = &unk_279A29028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(observersQueue, v7);
}

@end