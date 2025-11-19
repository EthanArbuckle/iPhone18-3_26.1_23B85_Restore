@interface _UIScreenEdgePanRecognizerSettings
+ (id)settingsControllerModule;
@end

@implementation _UIScreenEdgePanRecognizerSettings

+ (id)settingsControllerModule
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C6610] rowWithTitle:@"Edge Swipe" childSettingsKeyPath:@"edgeSettings"];
  v12[0] = v2;
  v3 = [MEMORY[0x1E69C6610] rowWithTitle:@"Corner Swipe" childSettingsKeyPath:@"cornerSettings"];
  v12[1] = v3;
  v4 = [MEMORY[0x1E69C6610] rowWithTitle:@"Press-and-Hold" childSettingsKeyPath:@"dwellSettings"];
  v12[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  v6 = [MEMORY[0x1E69C6638] sectionWithRows:v5];
  v7 = MEMORY[0x1E69C6638];
  v11 = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v9 = [v7 moduleWithTitle:@"Edge Swipe" contents:v8];

  return v9;
}

@end