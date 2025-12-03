@interface SBHScaleZoomSettings
+ (id)settingsControllerModule;
- (id)effectiveCrossfadeAnimationSettings;
- (void)setDefaultValues;
@end

@implementation SBHScaleZoomSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHScaleZoomSettings;
  [(SBHIconZoomSettings *)&v3 setDefaultValues];
  [(SBHScaleZoomSettings *)self setCrossfadeWithZoom:0];
  [(SBHScaleZoomSettings *)self setFadesIconGrid:0];
}

+ (id)settingsControllerModule
{
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v26.receiver = self;
  v26.super_class = &OBJC_METACLASS___SBHScaleZoomSettings;
  v3 = objc_msgSendSuper2(&v26, sel_settingsControllerModule);
  v4 = [v2 submoduleWithModule:v3 childSettingsKeyPath:0];

  v5 = MEMORY[0x1E69C6638];
  v6 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Crossfade on zoom spring" valueKeyPath:@"crossfadeWithZoom"];
  v29[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v8 = [v5 sectionWithRows:v7];

  v9 = MEMORY[0x1E69C6638];
  v10 = [MEMORY[0x1E69D3F98] _moduleWithSectionTitle:@"Crossfade Animation" delay:1 frameRate:0];
  v11 = [v9 submoduleWithModule:v10 childSettingsKeyPath:@"crossfadeSettings"];

  v12 = MEMORY[0x1E69C6638];
  v13 = [MEMORY[0x1E69D3F98] _moduleWithSectionTitle:@"Outer Folder Fade" delay:1 frameRate:0];
  v14 = [v12 submoduleWithModule:v13 childSettingsKeyPath:@"outerFolderFadeSettings"];

  v15 = MEMORY[0x1E69C6638];
  v16 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Fade Icon Grid" valueKeyPath:@"fadesIconGrid"];
  v28 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v18 = [v15 sectionWithRows:v17];

  v19 = MEMORY[0x1E69C6638];
  v20 = [MEMORY[0x1E69D3F98] _moduleWithSectionTitle:@"Icon Grid Fade Animation" delay:1 frameRate:0];
  v21 = [v19 submoduleWithModule:v20 childSettingsKeyPath:@"iconGridFadeSettings"];

  v22 = MEMORY[0x1E69C6638];
  v27[0] = v4;
  v27[1] = v8;
  v27[2] = v11;
  v27[3] = v14;
  v27[4] = v18;
  v27[5] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:6];
  v24 = [v22 moduleWithTitle:@"Crossfade Zoom" contents:v23];

  return v24;
}

- (id)effectiveCrossfadeAnimationSettings
{
  if ([(SBHScaleZoomSettings *)self crossfadeWithZoom])
  {
    [(SBHIconAnimationSettings *)self centralAnimationSettings];
  }

  else
  {
    [(SBHScaleZoomSettings *)self crossfadeSettings];
  }
  v3 = ;

  return v3;
}

@end