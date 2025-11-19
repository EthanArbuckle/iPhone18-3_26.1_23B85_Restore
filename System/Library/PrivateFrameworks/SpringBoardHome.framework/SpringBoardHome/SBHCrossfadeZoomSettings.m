@interface SBHCrossfadeZoomSettings
+ (id)settingsControllerModule;
- (id)effectiveMorphAnimationSettings;
- (void)setDefaultValues;
@end

@implementation SBHCrossfadeZoomSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHCrossfadeZoomSettings;
  [(SBHScaleZoomSettings *)&v3 setDefaultValues];
  [(SBHCrossfadeZoomSettings *)self setMorphWithZoom:1];
  [(SBHScaleZoomSettings *)self setFadesIconGrid:1];
}

+ (id)settingsControllerModule
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = +[SBHScaleZoomSettings settingsControllerModule];
  v4 = [v2 submoduleWithModule:v3 childSettingsKeyPath:0];

  v5 = MEMORY[0x1E69C6638];
  v6 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Morph on zoom spring" valueKeyPath:@"morphWithZoom"];
  v18[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v8 = [v5 sectionWithRows:v7];

  v9 = MEMORY[0x1E69C6638];
  v10 = [MEMORY[0x1E69D3F98] _moduleWithSectionTitle:@"Morph Animation" delay:1 frameRate:1];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"morphWithZoom == NO"];
  v12 = [v9 submoduleWithModule:v10 childSettingsKeyPath:@"morphSettings" condition:v11];

  v13 = MEMORY[0x1E69C6638];
  v17[0] = v4;
  v17[1] = v8;
  v17[2] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v15 = [v13 moduleWithTitle:@"Crossfade Zoom" contents:v14];

  return v15;
}

- (id)effectiveMorphAnimationSettings
{
  if ([(SBHCrossfadeZoomSettings *)self morphWithZoom])
  {
    [(SBHIconAnimationSettings *)self centralAnimationSettings];
  }

  else
  {
    [(SBHCrossfadeZoomSettings *)self morphSettings];
  }
  v3 = ;

  return v3;
}

@end