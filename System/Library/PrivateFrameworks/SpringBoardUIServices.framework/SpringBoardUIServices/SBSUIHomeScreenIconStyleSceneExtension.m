@interface SBSUIHomeScreenIconStyleSceneExtension
+ (id)clientComponents;
+ (id)settingsExtensions;
@end

@implementation SBSUIHomeScreenIconStyleSceneExtension

+ (id)settingsExtensions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = [MEMORY[0x1E699FC88] extensionForProtocol:&unk_1F1E24F20];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)clientComponents
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end