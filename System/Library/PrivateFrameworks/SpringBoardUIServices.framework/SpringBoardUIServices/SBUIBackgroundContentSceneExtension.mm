@interface SBUIBackgroundContentSceneExtension
+ (id)clientSettingsExtensions;
+ (id)settingsExtensions;
@end

@implementation SBUIBackgroundContentSceneExtension

+ (id)clientSettingsExtensions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = [MEMORY[0x1E699FC88] extensionForProtocol:&unk_1F1E256A0];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)settingsExtensions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = [MEMORY[0x1E699FC88] extensionForProtocol:&unk_1F1E25700];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end