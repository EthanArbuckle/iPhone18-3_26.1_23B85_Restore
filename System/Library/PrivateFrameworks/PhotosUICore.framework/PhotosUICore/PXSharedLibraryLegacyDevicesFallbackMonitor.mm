@interface PXSharedLibraryLegacyDevicesFallbackMonitor
+ (id)legacyDevicesFallbackMonitorIfEnabledWithSharedLibraryOrPreviewPresent:(BOOL)present;
- (PXSharedLibraryLegacyDevicesFallbackMonitor)init;
- (id)_init;
- (void)_updateLegacyDevices:(id)devices error:(id)error;
- (void)setDevices:(id)devices;
- (void)setState:(int64_t)state;
@end

@implementation PXSharedLibraryLegacyDevicesFallbackMonitor

- (void)_updateLegacyDevices:(id)devices error:(id)error
{
  devicesCopy = devices;
  v6 = [devicesCopy count];
  v7 = 1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PXSharedLibraryLegacyDevicesFallbackMonitor__updateLegacyDevices_error___block_invoke;
  v9[3] = &unk_1E77499B0;
  if (v6)
  {
    v7 = 2;
  }

  v10 = devicesCopy;
  v11 = v7;
  v9[4] = self;
  v8 = devicesCopy;
  [(PXSharedLibraryLegacyDevicesFallbackMonitor *)self performChanges:v9];
}

uint64_t __74__PXSharedLibraryLegacyDevicesFallbackMonitor__updateLegacyDevices_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setState:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setDevices:v3];
}

- (void)setDevices:(id)devices
{
  devicesCopy = devices;
  devices = self->_devices;
  if (devices != devicesCopy)
  {
    v9 = devicesCopy;
    v6 = [(NSArray *)devices isEqual:devicesCopy];
    devicesCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_devices;
      self->_devices = v7;

      devicesCopy = v9;
    }
  }
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(PXSharedLibraryLegacyDevicesFallbackMonitor *)self signalChange:1];
  }
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = PXSharedLibraryLegacyDevicesFallbackMonitor;
  v2 = [(PXSharedLibraryLegacyDevicesFallbackMonitor *)&v7 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52__PXSharedLibraryLegacyDevicesFallbackMonitor__init__block_invoke;
    v4[3] = &unk_1E773D710;
    objc_copyWeak(&v5, &location);
    PXSharedLibraryFetchLegacyDevices(v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __52__PXSharedLibraryLegacyDevicesFallbackMonitor__init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLegacyDevices:v6 error:v5];
}

- (PXSharedLibraryLegacyDevicesFallbackMonitor)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryLegacyDevicesFallbackMonitor.m" lineNumber:28 description:{@"%s is not available as initializer", "-[PXSharedLibraryLegacyDevicesFallbackMonitor init]"}];

  abort();
}

+ (id)legacyDevicesFallbackMonitorIfEnabledWithSharedLibraryOrPreviewPresent:(BOOL)present
{
  v4 = _os_feature_enabled_impl();
  _init = 0;
  if (v4 && !present)
  {
    _init = [[PXSharedLibraryLegacyDevicesFallbackMonitor alloc] _init];
  }

  return _init;
}

@end