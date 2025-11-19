@interface PUCompositeVideoSettings
+ (PUCompositeVideoSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PUCompositeVideoSettings

- (void)setDefaultValues
{
  [(PUCompositeVideoSettings *)self setUseFrameBlending:0];
  [(PUCompositeVideoSettings *)self setCropMode:0];
  [(PUCompositeVideoSettings *)self setStitchingFadeDuration:0.25];

  [(PUCompositeVideoSettings *)self setNonStitchingFadeDuration:0.5];
}

+ (id)settingsControllerModule
{
  v28[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6670];
  v3 = [MEMORY[0x1E69C6680] rowWithTitle:@"Stitch Fade" valueKeyPath:@"stitchingFadeDuration"];
  v4 = [v3 minValue:0.0 maxValue:1.0];
  v28[0] = v4;
  v5 = [MEMORY[0x1E69C6680] rowWithTitle:@"Concat Fade" valueKeyPath:@"nonStitchingFadeDuration"];
  v6 = [v5 minValue:0.0 maxValue:1.0];
  v28[1] = v6;
  v7 = [MEMORY[0x1E69C6668] rowWithTitle:@"Crop Mode" valueKeyPath:@"cropMode"];
  v8 = [v7 possibleValues:&unk_1F2B7D778 titles:&unk_1F2B7D790];
  v28[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v10 = [v2 sectionWithRows:v9 title:@"Rendering"];

  v11 = MEMORY[0x1E69C6670];
  v12 = [MEMORY[0x1E69C6688] rowWithTitle:@"Use Frame Blending In Preview" valueKeyPath:@"useFrameBlending"];
  v27 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v14 = [v11 sectionWithRows:v13 title:@"Playback"];

  v15 = MEMORY[0x1E69C6638];
  v16 = MEMORY[0x1E69C65E8];
  v17 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v18 = [v16 rowWithTitle:@"Restore Defaults" action:v17];
  v26 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v20 = [v15 sectionWithRows:v19];

  v21 = MEMORY[0x1E69C6638];
  v25[0] = v10;
  v25[1] = v14;
  v25[2] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v23 = [v21 moduleWithTitle:@"Composite Video" contents:v22];

  return v23;
}

+ (PUCompositeVideoSettings)sharedInstance
{
  if (sharedInstance_onceToken_84095 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_84095, &__block_literal_global_84096);
  }

  v3 = sharedInstance_sharedInstance_84097;

  return v3;
}

void __42__PUCompositeVideoSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 compositeVideoSettings];
  v1 = sharedInstance_sharedInstance_84097;
  sharedInstance_sharedInstance_84097 = v0;
}

@end