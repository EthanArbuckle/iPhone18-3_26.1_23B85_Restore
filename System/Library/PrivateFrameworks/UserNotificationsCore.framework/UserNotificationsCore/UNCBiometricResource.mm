@interface UNCBiometricResource
- (UNCBiometricResource)init;
- (void)_initializeBiometricKit;
- (void)_registerForBKEnrollmentChange;
- (void)_registerForBiometricUnlockAllowedChange;
- (void)_registerForPasscodeChange;
- (void)_unregisterForBKEnrollmentChange;
- (void)_unregisterForBiometricUnlockAllowedChange;
- (void)_updateHasEnrolledPearlIdentities;
- (void)_updateIsBiometricUnlockAllowed;
- (void)_updateIsPasscodeSet;
- (void)dealloc;
@end

@implementation UNCBiometricResource

- (UNCBiometricResource)init
{
  v7.receiver = self;
  v7.super_class = UNCBiometricResource;
  v2 = [(UNCBiometricResource *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.usernotifications.UNCBiometricResource", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    [(UNCBiometricResource *)v2 _updateIsPasscodeSet];
    [(UNCBiometricResource *)v2 _updateIsBiometricUnlockAllowed];
    [(UNCBiometricResource *)v2 _initializeBiometricKit];
    [(UNCBiometricResource *)v2 _registerForBiometricUnlockAllowedChange];
    [(UNCBiometricResource *)v2 _registerForPasscodeChange];
  }

  return v2;
}

- (void)_initializeBiometricKit
{
  v23 = *MEMORY[0x1E69E9840];
  pearlDevice = self->_pearlDevice;
  self->_pearlDevice = 0;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [MEMORY[0x1E698F388] availableDevices];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = NSClassFromString(&cfstr_Bkdevice.isa);
        v17 = 0;
        v11 = [(objc_class *)v10 deviceWithDescriptor:v9 error:&v17];
        v12 = v17;
        v13 = [v11 descriptor];
        if ([v13 type] == 2)
        {
          NSClassFromString(&cfstr_Bkdevicepearl.isa);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_10;
          }

          v15 = v11;
          v13 = self->_pearlDevice;
          self->_pearlDevice = v15;
        }

LABEL_10:
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [(UNCBiometricResource *)self _updateHasEnrolledPearlIdentities];
  if (self->_pearlDevice)
  {
    [(UNCBiometricResource *)self _registerForBKEnrollmentChange];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(UNCBiometricResource *)self _unregisterForBKEnrollmentChange];
  [(UNCBiometricResource *)self _unregisterForBiometricUnlockAllowedChange];
  v3.receiver = self;
  v3.super_class = UNCBiometricResource;
  [(UNCBiometricResource *)&v3 dealloc];
}

- (void)_registerForBKEnrollmentChange
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleBKEnrollmentChange, @"com.apple.BiometricKit.enrollmentChanged", 0, 0);
}

- (void)_unregisterForBKEnrollmentChange
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.BiometricKit.enrollmentChanged", 0);
}

- (void)_registerForBiometricUnlockAllowedChange
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__updateIsBiometricUnlockAllowed name:*MEMORY[0x1E69ADD68] object:0];
}

- (void)_unregisterForBiometricUnlockAllowedChange
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69ADD68] object:0];
}

- (void)_registerForPasscodeChange
{
  out_token = 0;
  v3 = [*MEMORY[0x1E69ADFA0] cStringUsingEncoding:4];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__UNCBiometricResource__registerForPasscodeChange__block_invoke;
  v5[3] = &unk_1E85D70A0;
  v5[4] = self;
  notify_register_dispatch(v3, &out_token, queue, v5);
}

- (void)_updateIsPasscodeSet
{
  v3 = [MEMORY[0x1E69ADFB8] sharedConnection];
  self->_isPasscodeSet = [v3 isPasscodeSet];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"BBBiometricResourceStateChanged" object:self userInfo:0];
}

- (void)_updateIsBiometricUnlockAllowed
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__UNCBiometricResource__updateIsBiometricUnlockAllowed__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_async(queue, block);
}

void __55__UNCBiometricResource__updateIsBiometricUnlockAllowed__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  *(*(a1 + 32) + 9) = [v2 isFingerprintUnlockAllowed];

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"BBBiometricResourceStateChanged" object:*(a1 + 32) userInfo:0];
}

- (void)_updateHasEnrolledPearlIdentities
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__UNCBiometricResource__updateHasEnrolledPearlIdentities__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_async(queue, block);
}

void __57__UNCBiometricResource__updateHasEnrolledPearlIdentities__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 10) = 0;
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v6 = 0;
    v3 = [v2 identitiesWithError:&v6];
    v4 = v6;
    if ([v3 count])
    {
      *(*(a1 + 32) + 10) = 1;
    }
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"BBBiometricResourceStateChanged" object:*(a1 + 32) userInfo:0];
}

@end