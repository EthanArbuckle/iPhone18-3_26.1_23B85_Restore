@interface SVXVirtualDeviceManager
- (SVXVirtualDeviceManager)initWithRemoraVirtualDeviceManager:(id)a3;
- (SVXVirtualDeviceManager)initWithRemoraVirtualDeviceManager:(id)a3 hostVirtualDevice:(id)a4;
- (void)getVirtualDeviceForActivationContext:(id)a3 completion:(id)a4;
- (void)getVirtualDeviceForInstanceInfo:(id)a3 completion:(id)a4;
@end

@implementation SVXVirtualDeviceManager

- (void)getVirtualDeviceForInstanceInfo:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, self->_hostVirtualDevice);
  }
}

- (void)getVirtualDeviceForActivationContext:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    if ([v8 source] == 11)
    {
      v7 = [v8 deviceID];
      if (v7)
      {
      }
    }

    v6[2](v6, self->_hostVirtualDevice);
  }
}

- (SVXVirtualDeviceManager)initWithRemoraVirtualDeviceManager:(id)a3 hostVirtualDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SVXVirtualDeviceManager;
  v9 = [(SVXVirtualDeviceManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoraVirtualDeviceManager, a3);
    objc_storeStrong(&v10->_hostVirtualDevice, a4);
  }

  return v10;
}

- (SVXVirtualDeviceManager)initWithRemoraVirtualDeviceManager:(id)a3
{
  v4 = a3;
  v5 = [SVXVirtualDevice alloc];
  v6 = [MEMORY[0x277CEF2C8] defaultContext];
  v7 = [(SVXVirtualDevice *)v5 initWithInstanceContext:v6];

  v8 = [(SVXVirtualDeviceManager *)self initWithRemoraVirtualDeviceManager:v4 hostVirtualDevice:v7];
  return v8;
}

@end