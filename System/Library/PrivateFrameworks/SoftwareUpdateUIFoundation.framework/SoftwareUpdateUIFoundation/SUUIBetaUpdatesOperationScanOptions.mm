@interface SUUIBetaUpdatesOperationScanOptions
- (SDDevice)currentSeedingDevice;
- (SUUIBetaUpdatesOperationScanOptions)init;
- (void)setCurrentSeedingDevice:(id)device;
@end

@implementation SUUIBetaUpdatesOperationScanOptions

- (SDDevice)currentSeedingDevice
{
  selfCopy = self;
  v4[2] = a2;
  v4[0] = 2;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  v6 = MEMORY[0x277D82BE0](selfCopy->_currentSeedingDevice);
  v9 = v4;
  os_unfair_lock_unlock(p_lock);
  v2 = v6;

  return v2;
}

- (void)setCurrentSeedingDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  v3 = 2;
  p_lock = &selfCopy->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v4 = p_lock;
  objc_storeStrong(&selfCopy->_currentSeedingDevice, location[0]);
  v9 = &v3;
  os_unfair_lock_unlock(v4);
  objc_storeStrong(location, 0);
}

- (SUUIBetaUpdatesOperationScanOptions)init
{
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = SUUIBetaUpdatesOperationScanOptions;
  v4 = [(SUUIBetaUpdatesOperationScanOptions *)&v5 init];
  v7 = v4;
  objc_storeStrong(&v7, v4);
  if (v4)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  v3 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v3;
}

@end