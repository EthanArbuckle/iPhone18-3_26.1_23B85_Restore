@interface TUSimulatedIDSBatchIDQueryController
- (IDSBatchIDQueryControllerDelegate)delegate;
- (TUSimulatedIDSBatchIDQueryController)initWithService:(id)service delegate:(id)delegate queue:(id)queue;
- (void)setDestinations:(id)destinations;
@end

@implementation TUSimulatedIDSBatchIDQueryController

- (TUSimulatedIDSBatchIDQueryController)initWithService:(id)service delegate:(id)delegate queue:(id)queue
{
  serviceCopy = service;
  delegateCopy = delegate;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = TUSimulatedIDSBatchIDQueryController;
  v12 = [(TUSimulatedIDSBatchIDQueryController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceName, service);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v13->_queue = queueCopy;
  }

  return v13;
}

- (void)setDestinations:(id)destinations
{
  destinationsCopy = destinations;
  queue = [(TUSimulatedIDSBatchIDQueryController *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__TUSimulatedIDSBatchIDQueryController_setDestinations___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = destinationsCopy;
  v6 = destinationsCopy;
  dispatch_async(queue, v7);
}

void __56__TUSimulatedIDSBatchIDQueryController_setDestinations___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = _validDictionaryForDestinations(*(a1 + 40));
  v4 = [*(a1 + 32) serviceName];
  [v5 batchQueryController:v2 updatedDestinationsStatus:v3 onService:v4 error:0];
}

- (IDSBatchIDQueryControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end