@interface PUPosterSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (PUPosterSettings)initWithDefaultValues;
- (id)reparentedRootSettings;
- (void)createChildren;
- (void)setDefaultValues;
@end

@implementation PUPosterSettings

- (id)reparentedRootSettings
{
  v5[1] = *MEMORY[0x1E69E9840];
  _photosUICoreSettings = [objc_opt_class() _photosUICoreSettings];
  v5[0] = _photosUICoreSettings;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PUPosterSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PUPosterSettings *)self setRecalculateLayoutProperties:1];
}

- (void)createChildren
{
  initWithDefaultValues = [(PTSettings *)[PUPosterHeadroomSettings alloc] initWithDefaultValues];
  headroomSettings = self->_headroomSettings;
  self->_headroomSettings = initWithDefaultValues;

  MEMORY[0x1EEE66BB8](initWithDefaultValues, headroomSettings);
}

- (PUPosterSettings)initWithDefaultValues
{
  v5.receiver = self;
  v5.super_class = PUPosterSettings;
  initWithDefaultValues = [(PTSettings *)&v5 initWithDefaultValues];
  v3 = initWithDefaultValues;
  if (initWithDefaultValues)
  {
    [(PTSettings *)initWithDefaultValues _setObservationEnabled:1];
  }

  return v3;
}

+ (id)settingsControllerModule
{
  v23[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A8];
  v4 = NSStringFromSelector(sel_recalculateLayoutProperties);
  v5 = [v3 rowWithTitle:@"Recalculate Layout" valueKeyPath:v4];
  v23[0] = v5;
  v6 = MEMORY[0x1E69C6610];
  v7 = NSStringFromSelector(sel_headroomSettings);
  v8 = [v6 rowWithTitle:@"Headroom" childSettingsKeyPath:v7];
  v23[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v10 = [v2 sectionWithRows:v9];

  v11 = MEMORY[0x1E69C6638];
  v12 = MEMORY[0x1E69C65E8];
  v13 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v14 = [v12 rowWithTitle:@"Restore Defaults" action:v13];
  v22 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v16 = [v11 sectionWithRows:v15];

  v17 = MEMORY[0x1E69C6638];
  v21[0] = v10;
  v21[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v19 = [v17 moduleWithTitle:@"Photos Poster" contents:v18];

  return v19;
}

+ (id)sharedInstance
{
  os_unfair_lock_lock(MEMORY[0x1E69C4148]);
  if (!sharedInstance_sharedInstance_90993)
  {
    createSharedInstance = [self createSharedInstance];
    v4 = sharedInstance_sharedInstance_90993;
    sharedInstance_sharedInstance_90993 = createSharedInstance;
  }

  os_unfair_lock_unlock(MEMORY[0x1E69C4148]);
  v5 = sharedInstance_sharedInstance_90993;

  return v5;
}

@end