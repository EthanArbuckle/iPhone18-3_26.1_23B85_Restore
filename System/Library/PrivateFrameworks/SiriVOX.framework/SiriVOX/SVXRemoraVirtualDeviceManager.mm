@interface SVXRemoraVirtualDeviceManager
- (SVXRemoraVirtualDeviceManager)initWithRunningObserver:(id)a3;
- (SVXRemoraVirtualDeviceManager)initWithRunningObserver:(id)a3 mainQueuePerformer:(id)a4 virtualDeviceFactory:(id)a5;
@end

@implementation SVXRemoraVirtualDeviceManager

- (SVXRemoraVirtualDeviceManager)initWithRunningObserver:(id)a3 mainQueuePerformer:(id)a4 virtualDeviceFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SVXRemoraVirtualDeviceManager;
  v12 = [(SVXRemoraVirtualDeviceManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mainQueuePerformer, a4);
    objc_storeStrong(&v13->_runningObserver, a3);
    objc_storeStrong(&v13->_virtualDeviceFactory, a5);
  }

  return v13;
}

- (SVXRemoraVirtualDeviceManager)initWithRunningObserver:(id)a3
{
  v4 = a3;
  v5 = +[SVXQueuePerformer sharedMainQueuePerformer];
  v6 = objc_alloc_init(SVXVirtualDeviceFactory);
  v7 = [(SVXRemoraVirtualDeviceManager *)self initWithRunningObserver:v4 mainQueuePerformer:v5 virtualDeviceFactory:v6];

  return v7;
}

@end