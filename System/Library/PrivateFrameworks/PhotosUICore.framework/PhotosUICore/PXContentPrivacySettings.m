@interface PXContentPrivacySettings
+ (PXContentPrivacySettings)sharedInstance;
+ (id)settingsControllerModule;
- (BOOL)contentPrivacyEnabled;
- (void)setDefaultValues;
@end

@implementation PXContentPrivacySettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXContentPrivacySettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXContentPrivacySettings *)self setSimulationMode:0];
  [(PXContentPrivacySettings *)self setSimulatedAuthenticationType:0];
  [(PXContentPrivacySettings *)self setShouldAlwaysShowUnlockButtonInContentUnavailableViews:0];
  [(PXContentPrivacySettings *)self setAuthenticationBehaviorUponAppearing:0];
}

- (BOOL)contentPrivacyEnabled
{
  if ([(PXContentPrivacySettings *)self simulationMode])
  {
    return [(PXContentPrivacySettings *)self simulationMode]== 1;
  }

  return PLIsContentPrivacyEnabled();
}

+ (PXContentPrivacySettings)sharedInstance
{
  if (sharedInstance_onceToken_163843 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_163843, &__block_literal_global_163844);
  }

  v3 = sharedInstance_sharedInstance_163845;

  return v3;
}

void __42__PXContentPrivacySettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 contentPrivacySettings];
  v1 = sharedInstance_sharedInstance_163845;
  sharedInstance_sharedInstance_163845 = v0;
}

+ (id)settingsControllerModule
{
  v32[4] = *MEMORY[0x1E69E9840];
  v26 = MEMORY[0x1E69C6670];
  v2 = MEMORY[0x1E69C6668];
  v29 = NSStringFromSelector(sel_simulationMode);
  v28 = [v2 rowWithTitle:@"Enablement Simulation" valueKeyPath:v29];
  v3 = [v28 possibleValues:&unk_1F19119F8 titles:&unk_1F1911A10];
  v32[0] = v3;
  v4 = MEMORY[0x1E69C6668];
  v5 = NSStringFromSelector(sel_simulatedAuthenticationType);
  v6 = [v4 rowWithTitle:@"Auth Type Simulation" valueKeyPath:v5];
  v7 = [v6 possibleValues:&unk_1F1911A28 titles:&unk_1F1911A40];
  v32[1] = v7;
  v8 = MEMORY[0x1E69C6668];
  v9 = NSStringFromSelector(sel_authenticationBehaviorUponAppearing);
  v10 = [v8 rowWithTitle:@"Authentication on Appearance" valueKeyPath:v9];
  v11 = [v10 possibleValues:&unk_1F1911A58 titles:&unk_1F1911A70];
  v32[2] = v11;
  v12 = MEMORY[0x1E69C6688];
  v13 = NSStringFromSelector(sel_shouldAlwaysShowUnlockButtonInContentUnavailableViews);
  v14 = [v12 rowWithTitle:@"Always show Unlock Button" valueKeyPath:v13];
  v32[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  v27 = [v26 sectionWithRows:v15 title:@"General"];

  v16 = MEMORY[0x1E69C6638];
  v17 = MEMORY[0x1E69C65E8];
  v18 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v19 = [v17 rowWithTitle:@"Restore Defaults" action:v18];
  v31 = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v21 = [v16 sectionWithRows:v20];

  v22 = MEMORY[0x1E69C6638];
  v30[0] = v27;
  v30[1] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v24 = [v22 moduleWithTitle:@"Content Privacy" contents:v23];

  return v24;
}

@end