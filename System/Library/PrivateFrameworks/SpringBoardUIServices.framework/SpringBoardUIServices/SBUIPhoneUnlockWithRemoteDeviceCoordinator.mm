@interface SBUIPhoneUnlockWithRemoteDeviceCoordinator
+ (id)sharedInstance;
- (BOOL)isPhoneUnlockEnabledAndRequirementsMet;
- (SBUIPhoneUnlockWithRemoteDeviceCoordinator)init;
- (void)biometricResource:(id)resource observeEvent:(unint64_t)event;
- (void)handleScreenOff:(BOOL)off;
- (void)removeRemoteUnlockHandler:(id)handler;
- (void)setBiometricResource:(id)resource;
@end

@implementation SBUIPhoneUnlockWithRemoteDeviceCoordinator

uint64_t __80__SBUIPhoneUnlockWithRemoteDeviceCoordinator_attemptPhoneUnlockWithRemoteDevice__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 attemptUnlock];
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[SBUIPhoneUnlockWithRemoteDeviceCoordinator sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_3;

  return v3;
}

uint64_t __60__SBUIPhoneUnlockWithRemoteDeviceCoordinator_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBUIPhoneUnlockWithRemoteDeviceCoordinator);
  v1 = sharedInstance___sharedInstance_3;
  sharedInstance___sharedInstance_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SBUIPhoneUnlockWithRemoteDeviceCoordinator)init
{
  v6.receiver = self;
  v6.super_class = SBUIPhoneUnlockWithRemoteDeviceCoordinator;
  v2 = [(SBUIPhoneUnlockWithRemoteDeviceCoordinator *)&v6 init];
  if (v2)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    remoteUnlockHandlers = v2->_remoteUnlockHandlers;
    v2->_remoteUnlockHandlers = weakObjectsPointerArray;
  }

  return v2;
}

- (void)setBiometricResource:(id)resource
{
  resourceCopy = resource;
  biometricResource = self->_biometricResource;
  v8 = resourceCopy;
  if (biometricResource != resourceCopy)
  {
    [(SBUIBiometricResource *)biometricResource removeObserver:self];
    objc_storeStrong(&self->_biometricResource, resource);
    v7 = self->_biometricResource;
    if (v7)
    {
      [(SBUIBiometricResource *)v7 addObserver:self];
    }
  }
}

- (BOOL)isPhoneUnlockEnabledAndRequirementsMet
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__SBUIPhoneUnlockWithRemoteDeviceCoordinator_isPhoneUnlockEnabledAndRequirementsMet__block_invoke;
  v4[3] = &unk_1E789F628;
  v4[4] = &v5;
  _SBUIPhoneUnlockWithRemoteDeviceEnumerateHandlers(self, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __84__SBUIPhoneUnlockWithRemoteDeviceCoordinator_isPhoneUnlockEnabledAndRequirementsMet__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isPhoneUnlockEnabledAndRequirementsMet];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)handleScreenOff:(BOOL)off
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__SBUIPhoneUnlockWithRemoteDeviceCoordinator_handleScreenOff___block_invoke;
  v3[3] = &__block_descriptor_33_e54_v24__0___SBUIPhoneUnlockWithRemoteDeviceHandler__8_B16l;
  offCopy = off;
  _SBUIPhoneUnlockWithRemoteDeviceEnumerateHandlers(self, v3);
}

- (void)removeRemoteUnlockHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [(NSPointerArray *)self->_remoteUnlockHandlers count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while ([(NSPointerArray *)self->_remoteUnlockHandlers pointerAtIndex:v6]!= handlerCopy)
    {
      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    [(NSPointerArray *)self->_remoteUnlockHandlers removePointerAtIndex:v6];
  }

LABEL_7:
}

- (void)biometricResource:(id)resource observeEvent:(unint64_t)event
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__SBUIPhoneUnlockWithRemoteDeviceCoordinator_biometricResource_observeEvent___block_invoke;
  v4[3] = &__block_descriptor_40_e54_v24__0___SBUIPhoneUnlockWithRemoteDeviceHandler__8_B16l;
  v4[4] = event;
  _SBUIPhoneUnlockWithRemoteDeviceEnumerateHandlers(self, v4);
}

uint64_t __77__SBUIPhoneUnlockWithRemoteDeviceCoordinator_biometricResource_observeEvent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 handleBiometricEvent:*(a1 + 32)];
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

@end