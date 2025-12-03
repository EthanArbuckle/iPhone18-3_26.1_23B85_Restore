@interface SVXRemoraVirtualDeviceManager
- (SVXRemoraVirtualDeviceManager)initWithRunningObserver:(id)observer;
- (SVXRemoraVirtualDeviceManager)initWithRunningObserver:(id)observer mainQueuePerformer:(id)performer virtualDeviceFactory:(id)factory;
@end

@implementation SVXRemoraVirtualDeviceManager

- (SVXRemoraVirtualDeviceManager)initWithRunningObserver:(id)observer mainQueuePerformer:(id)performer virtualDeviceFactory:(id)factory
{
  observerCopy = observer;
  performerCopy = performer;
  factoryCopy = factory;
  v15.receiver = self;
  v15.super_class = SVXRemoraVirtualDeviceManager;
  v12 = [(SVXRemoraVirtualDeviceManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mainQueuePerformer, performer);
    objc_storeStrong(&v13->_runningObserver, observer);
    objc_storeStrong(&v13->_virtualDeviceFactory, factory);
  }

  return v13;
}

- (SVXRemoraVirtualDeviceManager)initWithRunningObserver:(id)observer
{
  observerCopy = observer;
  v5 = +[SVXQueuePerformer sharedMainQueuePerformer];
  v6 = objc_alloc_init(SVXVirtualDeviceFactory);
  v7 = [(SVXRemoraVirtualDeviceManager *)self initWithRunningObserver:observerCopy mainQueuePerformer:v5 virtualDeviceFactory:v6];

  return v7;
}

@end