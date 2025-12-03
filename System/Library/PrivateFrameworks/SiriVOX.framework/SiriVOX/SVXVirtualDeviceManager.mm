@interface SVXVirtualDeviceManager
- (SVXVirtualDeviceManager)initWithRemoraVirtualDeviceManager:(id)manager;
- (SVXVirtualDeviceManager)initWithRemoraVirtualDeviceManager:(id)manager hostVirtualDevice:(id)device;
- (void)getVirtualDeviceForActivationContext:(id)context completion:(id)completion;
- (void)getVirtualDeviceForInstanceInfo:(id)info completion:(id)completion;
@end

@implementation SVXVirtualDeviceManager

- (void)getVirtualDeviceForInstanceInfo:(id)info completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, self->_hostVirtualDevice);
  }
}

- (void)getVirtualDeviceForActivationContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([contextCopy source] == 11)
    {
      deviceID = [contextCopy deviceID];
      if (deviceID)
      {
      }
    }

    completionCopy[2](completionCopy, self->_hostVirtualDevice);
  }
}

- (SVXVirtualDeviceManager)initWithRemoraVirtualDeviceManager:(id)manager hostVirtualDevice:(id)device
{
  managerCopy = manager;
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = SVXVirtualDeviceManager;
  v9 = [(SVXVirtualDeviceManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoraVirtualDeviceManager, manager);
    objc_storeStrong(&v10->_hostVirtualDevice, device);
  }

  return v10;
}

- (SVXVirtualDeviceManager)initWithRemoraVirtualDeviceManager:(id)manager
{
  managerCopy = manager;
  v5 = [SVXVirtualDevice alloc];
  defaultContext = [MEMORY[0x277CEF2C8] defaultContext];
  v7 = [(SVXVirtualDevice *)v5 initWithInstanceContext:defaultContext];

  v8 = [(SVXVirtualDeviceManager *)self initWithRemoraVirtualDeviceManager:managerCopy hostVirtualDevice:v7];
  return v8;
}

@end