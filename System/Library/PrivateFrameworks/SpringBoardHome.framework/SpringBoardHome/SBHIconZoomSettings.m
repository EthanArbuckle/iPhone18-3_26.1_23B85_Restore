@interface SBHIconZoomSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHIconZoomSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHIconZoomSettings;
  [(SBHIconAnimationSettings *)&v3 setDefaultValues];
  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:1];
}

+ (id)settingsControllerModule
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69D3F98] _moduleWithSectionTitle:@"Icon Zoom Animation" delay:0 frameRate:0];
  v4 = [v2 submoduleWithModule:v3 childSettingsKeyPath:@"centralAnimationSettings"];

  v5 = MEMORY[0x1E69C6638];
  v6 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Label alpha on zoom spring" valueKeyPath:@"labelAlphaWithZoom"];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [v5 sectionWithRows:v7];

  v9 = MEMORY[0x1E69C6638];
  v13[0] = v4;
  v13[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v11 = [v9 moduleWithTitle:0 contents:v10];

  return v11;
}

@end