@interface SBHLibraryPodZoomSettings
+ (id)_defaultCentralAnimationSettings;
+ (id)_defaultCrossfadeSettings;
+ (id)_defaultInnerFolderZoomAnimationSettings;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHLibraryPodZoomSettings

- (void)setDefaultValues
{
  v2.receiver = self;
  v2.super_class = SBHLibraryPodZoomSettings;
  [(SBHFolderZoomSettings *)&v2 setDefaultValues];
}

+ (id)_defaultCrossfadeSettings
{
  v2 = [objc_alloc(MEMORY[0x1E69D3F98]) initWithDefaultValues];
  [v2 setAnimationType:0];
  [v2 setDuration:0.2];
  [v2 setCurve:0x10000];

  return v2;
}

+ (id)_defaultInnerFolderZoomAnimationSettings
{
  v2 = [objc_alloc(MEMORY[0x1E69D3F98]) initWithDefaultValues];
  [v2 setAnimationType:1];
  [v2 setMass:1.0];
  [v2 setStiffness:246.74];
  [v2 setDamping:31.42];
  [v2 setCurve:196608];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v2 setFrameRateRange:1114123 highFrameRateReason:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];

  return v2;
}

+ (id)_defaultCentralAnimationSettings
{
  v2 = [objc_alloc(MEMORY[0x1E69D3F98]) initWithDefaultValues];
  [v2 setAnimationType:1];
  [v2 setMass:1.0];
  [v2 setStiffness:157.91];
  [v2 setDamping:25.13];
  [v2 setCurve:196608];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v2 setFrameRateRange:1114123 highFrameRateReason:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];

  return v2;
}

+ (id)settingsControllerModule
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___SBHLibraryPodZoomSettings;
  v3 = objc_msgSendSuper2(&v15, sel_settingsControllerModule);
  v4 = [v2 submoduleWithModule:v3 childSettingsKeyPath:0];

  v5 = MEMORY[0x1E69C6638];
  v6 = [MEMORY[0x1E69D3F98] _moduleWithSectionTitle:@"Inner Folder Edge Zoom" delay:1 frameRate:1];
  v7 = [v5 submoduleWithModule:v6 childSettingsKeyPath:@"innerFolderEdgeZoomSettings"];

  v8 = MEMORY[0x1E69C6638];
  v9 = [MEMORY[0x1E69D3F98] _moduleWithSectionTitle:@"Inner Folder Center Zoom" delay:1 frameRate:1];
  v10 = [v8 submoduleWithModule:v9 childSettingsKeyPath:@"innerFolderCenterZoomSettings"];

  v11 = MEMORY[0x1E69C6638];
  v16[0] = v7;
  v16[1] = v10;
  v16[2] = v4;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  v13 = [v11 moduleWithTitle:0 contents:v12];

  return v13;
}

@end