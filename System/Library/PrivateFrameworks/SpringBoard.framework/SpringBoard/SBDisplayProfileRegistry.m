@interface SBDisplayProfileRegistry
- (id)_modifyParameters:(id)a3 orientation:(int64_t)a4 interfaceOrientationMode:(int64_t)a5 chamoisEnabled:(BOOL)a6;
- (uint64_t)activate;
- (void)_registerEmbeddedDisplayProfile;
- (void)_registerExtendedProfile;
- (void)_registerMirroringProfile;
- (void)embeddedFactory:(id)a3 modifyInitialSceneParameters:(id)a4;
- (void)initWithStartupOrientation:(void *)a1;
- (void)windowingModeForDisplay:(void *)a1;
@end

@implementation SBDisplayProfileRegistry

- (void)embeddedFactory:(id)a3 modifyInitialSceneParameters:(id)a4
{
  v9 = a4;
  startupEmbeddedOrientation = self->_startupEmbeddedOrientation;
  v6 = +[SBDefaults localDefaults];
  v7 = [v6 appSwitcherDefaults];
  v8 = -[SBDisplayProfileRegistry _modifyParameters:orientation:interfaceOrientationMode:chamoisEnabled:](self, "_modifyParameters:orientation:interfaceOrientationMode:chamoisEnabled:", v9, startupEmbeddedOrientation, 100, [v7 chamoisWindowingEnabled]);
}

- (void)_registerEmbeddedDisplayProfile
{
  v3 = [[SBEmbeddedDisplayProfileFactory alloc] initWithDelegate:?];
  embeddedDisplayProfileFactory = self->_embeddedDisplayProfileFactory;
  self->_embeddedDisplayProfileFactory = v3;

  v5 = [(SBEmbeddedDisplayProfileFactory *)self->_embeddedDisplayProfileFactory createProfile];
  NSMapInsert(self->_profileToWindowingMode, v5, 1);
  [(SSKDisplayProfileRegistry *)self->_displayProfileRegistry registerDisplayProfile:v5];
}

- (void)_registerExtendedProfile
{
  v3 = [SBExtendedDisplayProfileFactory alloc];
  v4 = +[SBDefaults localDefaults];
  v5 = [v4 externalDisplayDefaults];
  v6 = [(SBExtendedDisplayProfileFactory *)&v3->super.isa initWithDefaults:v5 delegate:self];
  extendedDisplayProfileFactory = self->_extendedDisplayProfileFactory;
  self->_extendedDisplayProfileFactory = v6;

  v8 = [(SBExtendedDisplayProfileFactory *)self->_extendedDisplayProfileFactory createProfile];
  NSMapInsert(self->_profileToWindowingMode, v8, 1);
  [(SSKDisplayProfileRegistry *)self->_displayProfileRegistry registerDisplayProfile:v8];
}

- (void)_registerMirroringProfile
{
  v3 = objc_alloc_init(SBMirroringDisplayProfileFactory);
  mirroringDisplayProfileFactory = self->_mirroringDisplayProfileFactory;
  self->_mirroringDisplayProfileFactory = v3;

  v5 = [(SBMirroringDisplayProfileFactory *)self->_mirroringDisplayProfileFactory createProfile];
  NSMapInsert(self->_profileToWindowingMode, v5, 0);
  [(SSKDisplayProfileRegistry *)self->_displayProfileRegistry registerDisplayProfile:v5];
}

- (id)_modifyParameters:(id)a3 orientation:(int64_t)a4 interfaceOrientationMode:(int64_t)a5 chamoisEnabled:(BOOL)a6
{
  v9 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__SBDisplayProfileRegistry__modifyParameters_orientation_interfaceOrientationMode_chamoisEnabled___block_invoke;
  v12[3] = &__block_descriptor_41_e33_v16__0__FBSMutableSceneSettings_8l;
  v12[4] = a5;
  v13 = a6;
  [v9 updateSettingsWithBlock:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__SBDisplayProfileRegistry__modifyParameters_orientation_interfaceOrientationMode_chamoisEnabled___block_invoke_2;
  v11[3] = &__block_descriptor_40_e39_v16__0__FBSMutableSceneClientSettings_8l;
  v11[4] = a4;
  [v9 updateClientSettingsWithBlock:v11];

  return v9;
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

- (void)initWithStartupOrientation:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v13.receiver = a1;
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

- (void)windowingModeForDisplay:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    value = 0;
    if (!NSMapMember(*(a1 + 7), v3, 0, &value))
    {
      v4 = [*(a1 + 1) displayProfileForIdentity:v3];
      if (v4)
      {
        value = NSMapGet(*(a1 + 6), v4);
        NSMapInsert(*(a1 + 7), v3, value);
      }
    }

    a1 = value;
  }

  return a1;
}

@end