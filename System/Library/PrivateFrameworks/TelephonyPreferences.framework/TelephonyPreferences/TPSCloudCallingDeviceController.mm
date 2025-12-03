@interface TPSCloudCallingDeviceController
- (TPSCloudCallingDeviceController)init;
- (TPSCloudCallingDeviceControllerDelegate)delegate;
- (void)didChangeCloudCallingDevices;
- (void)setDevices:(id)devices;
@end

@implementation TPSCloudCallingDeviceController

- (TPSCloudCallingDeviceController)init
{
  v7.receiver = self;
  v7.super_class = TPSCloudCallingDeviceController;
  v2 = [(TPSCloudCallingDeviceController *)&v7 init];
  if (v2)
  {
    cloudCallingDevices = [MEMORY[0x277D6EDE8] cloudCallingDevices];
    v4 = [cloudCallingDevices copy];
    devices = v2->_devices;
    v2->_devices = v4;

    [MEMORY[0x277D6EDE8] addDelegate:v2 queue:MEMORY[0x277D85CD0]];
  }

  return v2;
}

- (void)setDevices:(id)devices
{
  devicesCopy = devices;
  p_devices = &self->_devices;
  if (self->_devices != devicesCopy)
  {
    v10 = devicesCopy;
    objc_storeStrong(p_devices, devices);
    delegate = [(TPSCloudCallingDeviceController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(TPSCloudCallingDeviceController *)self delegate];
      [delegate2 cloudCallingDeviceController:self didChangeDevices:v10];
    }
  }

  MEMORY[0x2821F9730](p_devices);
}

- (void)didChangeCloudCallingDevices
{
  v3 = TPSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "Cloud calling devices have changed. Refreshing cached list of devices.", v6, 2u);
  }

  cloudCallingDevices = [MEMORY[0x277D6EDE8] cloudCallingDevices];
  v5 = [cloudCallingDevices copy];
  [(TPSCloudCallingDeviceController *)self setDevices:v5];
}

- (TPSCloudCallingDeviceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end