@interface SBDisplayProfileRegistry
- (id)_modifyParameters:(id)parameters orientation:(int64_t)orientation interfaceOrientationMode:(int64_t)mode chamoisEnabled:(BOOL)enabled;
- (uint64_t)activate;
- (void)_registerEmbeddedDisplayProfile;
- (void)_registerExtendedProfile;
- (void)_registerMirroringProfile;
- (void)embeddedFactory:(id)factory modifyInitialSceneParameters:(id)parameters;
- (void)initWithStartupOrientation:(void *)orientation;
- (void)windowingModeForDisplay:(void *)display;
@end

@implementation SBDisplayProfileRegistry

- (void)embeddedFactory:(id)factory modifyInitialSceneParameters:(id)parameters
{
  parametersCopy = parameters;
  startupEmbeddedOrientation = self->_startupEmbeddedOrientation;
  v6 = +[SBDefaults localDefaults];
  appSwitcherDefaults = [v6 appSwitcherDefaults];
  v8 = -[SBDisplayProfileRegistry _modifyParameters:orientation:interfaceOrientationMode:chamoisEnabled:](self, "_modifyParameters:orientation:interfaceOrientationMode:chamoisEnabled:", parametersCopy, startupEmbeddedOrientation, 100, [appSwitcherDefaults chamoisWindowingEnabled]);
}

- (void)_registerEmbeddedDisplayProfile
{
  v3 = [[SBEmbeddedDisplayProfileFactory alloc] initWithDelegate:?];
  embeddedDisplayProfileFactory = self->_embeddedDisplayProfileFactory;
  self->_embeddedDisplayProfileFactory = v3;

  createProfile = [(SBEmbeddedDisplayProfileFactory *)self->_embeddedDisplayProfileFactory createProfile];
  NSMapInsert(self->_profileToWindowingMode, createProfile, 1);
  [(SSKDisplayProfileRegistry *)self->_displayProfileRegistry registerDisplayProfile:createProfile];
}

- (void)_registerExtendedProfile
{
  v3 = [SBExtendedDisplayProfileFactory alloc];
  v4 = +[SBDefaults localDefaults];
  externalDisplayDefaults = [v4 externalDisplayDefaults];
  v6 = [(SBExtendedDisplayProfileFactory *)&v3->super.isa initWithDefaults:externalDisplayDefaults delegate:self];
  extendedDisplayProfileFactory = self->_extendedDisplayProfileFactory;
  self->_extendedDisplayProfileFactory = v6;

  createProfile = [(SBExtendedDisplayProfileFactory *)self->_extendedDisplayProfileFactory createProfile];
  NSMapInsert(self->_profileToWindowingMode, createProfile, 1);
  [(SSKDisplayProfileRegistry *)self->_displayProfileRegistry registerDisplayProfile:createProfile];
}

- (void)_registerMirroringProfile
{
  v3 = objc_alloc_init(SBMirroringDisplayProfileFactory);
  mirroringDisplayProfileFactory = self->_mirroringDisplayProfileFactory;
  self->_mirroringDisplayProfileFactory = v3;

  createProfile = [(SBMirroringDisplayProfileFactory *)self->_mirroringDisplayProfileFactory createProfile];
  NSMapInsert(self->_profileToWindowingMode, createProfile, 0);
  [(SSKDisplayProfileRegistry *)self->_displayProfileRegistry registerDisplayProfile:createProfile];
}

- (id)_modifyParameters:(id)parameters orientation:(int64_t)orientation interfaceOrientationMode:(int64_t)mode chamoisEnabled:(BOOL)enabled
{
  parametersCopy = parameters;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__SBDisplayProfileRegistry__modifyParameters_orientation_interfaceOrientationMode_chamoisEnabled___block_invoke;
  v12[3] = &__block_descriptor_41_e33_v16__0__FBSMutableSceneSettings_8l;
  v12[4] = mode;
  enabledCopy = enabled;
  [parametersCopy updateSettingsWithBlock:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__SBDisplayProfileRegistry__modifyParameters_orientation_interfaceOrientationMode_chamoisEnabled___block_invoke_2;
  v11[3] = &__block_descriptor_40_e39_v16__0__FBSMutableSceneClientSettings_8l;
  v11[4] = orientation;
  [parametersCopy updateClientSettingsWithBlock:v11];

  return parametersCopy;
}

void __98__SBDisplayProfileRegistry__modifyParameters_orientation_interfaceOrientationMode_chamoisEnabled___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 setInterfaceOrientation:1];
  if ([v7 isUISubclass])
  {
    v3 = v7;
    [v3 setTargetOfEventDeferringEnvironments:0];
    [v3 setInterfaceOrientationMode:*(a1 + 32)];
    v4 = [SBApp userInterfaceStyleProviderForDisplay:0];
    [v3 setUserInterfaceStyle:{objc_msgSend(v4, "currentStyle")}];

    v5 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
    [v5 sb_applyDisplayEdgeInfoToSceneSettings:v3];
    [v3 setEnhancedWindowingEnabled:*(a1 + 40)];
  }

  v6 = [v7 ignoreOcclusionReasons];
  [v6 addObject:@"SystemApp"];
}

void __98__SBDisplayProfileRegistry__modifyParameters_orientation_interfaceOrientationMode_chamoisEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isUISubclass])
  {
    v3 = *(a1 + 32);
    v4 = v5;
    [v4 setInterfaceOrientation:v3];
    [v4 setStatusBarStyle:0];
  }
}

- (void)initWithStartupOrientation:(void *)orientation
{
  if (!orientation)
  {
    return 0;
  }

  v13.receiver = orientation;
  v13.super_class = SBDisplayProfileRegistry;
  v3 = objc_msgSendSuper2(&v13, sel_init);
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D54FA0]);
    v5 = +[SBDisplayTransformerRegistry sharedInstance];
    v6 = [v4 initWithDisplayTransformerRegistry:v5];
    v7 = v3[1];
    v3[1] = v6;

    v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:1282 capacity:4];
    v9 = v3[6];
    v3[6] = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:1282 capacity:4];
    v11 = v3[7];
    v3[7] = v10;

    v3[5] = a2;
    [v3 _registerEmbeddedDisplayProfile];
    [v3 _registerMirroringProfile];
    [v3 _registerExtendedProfile];
  }

  return v3;
}

- (uint64_t)activate
{
  if (result)
  {
    return [*(result + 8) activate];
  }

  return result;
}

- (void)windowingModeForDisplay:(void *)display
{
  v3 = a2;
  if (display)
  {
    value = 0;
    if (!NSMapMember(*(display + 7), v3, 0, &value))
    {
      v4 = [*(display + 1) displayProfileForIdentity:v3];
      if (v4)
      {
        value = NSMapGet(*(display + 6), v4);
        NSMapInsert(*(display + 7), v3, value);
      }
    }

    display = value;
  }

  return display;
}

@end